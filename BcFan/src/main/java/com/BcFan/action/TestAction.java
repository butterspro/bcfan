package com.BcFan.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.BcFan.util.ToolUtil;
import com.opensymphony.xwork2.ActionContext;
@Controller("testaction")
public class TestAction {
	private File fileToUpload;
	private String fileToUploadFileName;
	public File getFileToUpload() {
		return fileToUpload;
	}

	public void setFileToUpload(File fileToUpload) {
		this.fileToUpload = fileToUpload;
	}

	public String getFileToUploadFileName() {
		return fileToUploadFileName;
	}

	public void setFileToUploadFileName(String fileToUploadFileName) {
		this.fileToUploadFileName = fileToUploadFileName;
	}

	@SuppressWarnings("resource")
	public String test() {
		String path=ServletActionContext.getServletContext().getRealPath("\\")+"upload\\vedio";
		File newFile=null;
		FileChannel in1=null;
		FileChannel out1=null;
		Map<String, Object> session = ActionContext.getContext().getSession();
		try {
			String newFileName=ToolUtil.getNewFileName(fileToUploadFileName);
			 newFile=new File(path, newFileName);
			 session.put("VedioFileName", newFileName);
			 in1=new FileInputStream(fileToUpload).getChannel();
			 out1=new FileOutputStream(newFile).getChannel();
			 in1.transferTo(0, in1.size(), out1);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "success";
	}
}
