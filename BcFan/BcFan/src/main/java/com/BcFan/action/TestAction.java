package com.BcFan.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;
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
		try {
			 newFile=new File(path, fileToUploadFileName);
			 in1=new FileInputStream(fileToUpload).getChannel();
			 out1=new FileOutputStream(newFile).getChannel();
			 in1.transferTo(0, in1.size(), out1);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "success";
	}
}
