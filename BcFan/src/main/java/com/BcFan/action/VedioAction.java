package com.BcFan.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.catalina.User;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.BcFan.biz.VedioBiz;
import com.BcFan.entity.Users;
import com.BcFan.entity.Vedio;
import com.BcFan.entity.VedioType;
import com.opensymphony.xwork2.ActionContext;

@Controller("vedioAction")
public class VedioAction implements SessionAware{
	@Autowired
	private VedioBiz vedioBiz;
	private File upload_vedio;
	private File upload_vedio_img;
	private String upload_vedioFileName;
	private String upload_vedio_imgFileName;
	private String upload_veido_title;
	private int upload_vedio_fenqu;
	private String upload_vedio_textarea;
	private Map<String, Object> session;

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getUpload_vedio_imgFileName() {
		return upload_vedio_imgFileName;		
	}

	public void setUpload_vedio_imgFileName(String upload_vedio_imgFileName) {
		this.upload_vedio_imgFileName = upload_vedio_imgFileName;
	}

	public String getUpload_veido_title() {
		return upload_veido_title;
	}

	public void setUpload_veido_title(String upload_veido_title) {
		this.upload_veido_title = upload_veido_title;
	}
	public int getUpload_vedio_fenqu() {
		return upload_vedio_fenqu;
	}

	public void setUpload_vedio_fenqu(int upload_vedio_fenqu) {
		this.upload_vedio_fenqu = upload_vedio_fenqu;
	}

	public String getUpload_vedio_textarea() {
		return upload_vedio_textarea;
	}

	public void setUpload_vedio_textarea(String upload_vedio_textarea) {
		this.upload_vedio_textarea = upload_vedio_textarea;
	}

	public String getUpload_vedioFileName() {
		return upload_vedioFileName;
	}

	public void setUpload_vedioFileName(String upload_vedioFileName) {
		this.upload_vedioFileName = upload_vedioFileName;
	}

	public File getUpload_vedio() {
		return upload_vedio;
	}

	public void setUpload_vedio(File upload_vedio) {
		this.upload_vedio = upload_vedio;
	}

	public File getUpload_vedio_img() {
		return upload_vedio_img;
	}

	public void setUpload_vedio_img(File upload_vedio_img) {
		this.upload_vedio_img = upload_vedio_img;
	}

	public VedioBiz getVedioBiz() {
		return vedioBiz;
	}

	public void setVedioBiz(VedioBiz vedioBiz) {
		this.vedioBiz = vedioBiz;
	}
	
	
	
	@SuppressWarnings("resource")
	public String insertVedioAction() throws Exception {
		String path=ServletActionContext.getServletContext().getRealPath("\\")+"upload\\vedio";
		String img_path=ServletActionContext.getServletContext().getRealPath("\\")+"upload\\vedioImg"; 
		System.out.println(path);
		File newFile=null;
		FileChannel in=null;
		FileChannel out=null;
		try {		 
			 newFile=new File(img_path, upload_vedio_imgFileName);
			 in=new FileInputStream(upload_vedio_img).getChannel();
			 out=new FileOutputStream(newFile).getChannel();
			 in.transferTo(0, in.size(), out);
			 
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Vedio vedio=new Vedio(); 	
			vedio.setVedioIntroduce(upload_vedio_textarea);
			vedio.setTitle(upload_veido_title);
			vedio.setImgPath(img_path);
			vedio.setVedioPath(path);
			Date date=df.parse(df.format(new Date()));
			vedio.setUpLoadTime(date);	
			//还差个uid
			int uid=((Users)session.get("loginUser")).getUid();
			vedioBiz.CheckVedio(vedio,upload_vedio_fenqu,uid);
			
			
		     
		     
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			in.close();
			out.close();
		}
		
		
		
		return "success";
	}
}