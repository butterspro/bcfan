package com.BcFan.util;

import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

public class QueryCookie extends HttpServlet implements Runnable{

	public void run() {
		// TODO Auto-generated method stub
		final Timer timer=new Timer(true);
		timer.schedule(new TimerTask() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				System.out.println("ss");
				/*boolean flag=false;//�����û���Ϣ������
				for(Cookie c:cookies) {
					if(c.getName().equals("userId")) {//����
						flag=true;
					}
				}
				if(!flag) {//������ɾ�������б��ֵ
					System.out.println("�û�������");
					timer.cancel();
				}*/
			}
		}, 0,3000);
	}

}
