package com.BcFan.util;

import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.http.HttpServlet;

public class QueryCookie extends HttpServlet implements Runnable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void run() {
		// TODO Auto-generated method stub
		final Timer timer=new Timer(true);
		timer.schedule(new TimerTask() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				System.out.println("ss");
				/*boolean flag=false;//假设用户信息不存在
				for(Cookie c:cookies) {
					if(c.getName().equals("userId")) {//存在
						flag=true;
					}
				}
				if(!flag) {//不存在删除在线列表的值
					System.out.println("用户已下线");
					timer.cancel();
				}*/
			}
		}, 0,3000);
	}

}
