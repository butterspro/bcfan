package com.BcFan.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.BcFan.biz.UserBiz;
import com.BcFan.entity.Users;
import com.BcFan.util.ToolUtil;
import com.opensymphony.xwork2.ActionContext;

@Controller("updatepicaction")
public class UpdatePicAction {
	@Autowired
	private UserBiz userBiz;
	private File head_img;
	private String head_imgFileName;
	
	public File getHead_img() {
		return head_img;
	}

	public void setHead_img(File head_img) {
		this.head_img = head_img;
	}

	public String getHead_imgFileName() {
		return head_imgFileName;
	}

	public void setHead_imgFileName(String head_imgFileName) {
		this.head_imgFileName = head_imgFileName;
	}

	public UserBiz getUserBiz() {
		return userBiz;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	@SuppressWarnings("resource")
	public String UpdatePic() throws Exception {
		String path = ServletActionContext.getServletContext().getRealPath("\\") + "upload\\UsersImg";
		File newFile = null;
		FileChannel in = null;
		FileChannel out = null;

		try {
			Map<String, Object> session = ActionContext.getContext().getSession();
			String img_name=ToolUtil.getNewFileName(head_imgFileName);
			
			newFile = new File(path,img_name);
			in = new FileInputStream(head_img).getChannel();
			out = new FileOutputStream(newFile).getChannel();
			in.transferTo(0, in.size(), out);			
			Users u = (Users) session.get("loginUser");
			u.setPicPath("upload//UsersImg//"+img_name);
			userBiz.updateUserPic(u);
			session.put("loginUser", u);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			in.close();
			out.close();
		}

		return "success";

	}

}
