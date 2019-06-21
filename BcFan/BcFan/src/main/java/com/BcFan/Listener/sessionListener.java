package com.BcFan.Listener;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.apache.catalina.User;

import com.BcFan.entity.Users;

public class sessionListener implements HttpSessionAttributeListener{
	private Map<Integer, HttpSession> userMap=new HashMap<Integer, HttpSession>();//���ߵ��˵�map����
	public void attributeAdded(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		if(event.getName().equals("loginUser")) {
			HttpSession session = event.getSession();//��ȡ�û���ǰ��session
			session.removeAttribute("error");
			int uid=((Users)event.getValue()).getUid();//��ȡ��ǰ�û���uid
			/*System.out.println("uid"+uid);*/
			if(userMap.containsKey(uid)) {//���û��Ѿ��ڱ𴦵�¼
				//��֮ǰ��sessionȥ��
				HttpSession oldSession=userMap.get(uid);
				oldSession.setAttribute("sessionId",oldSession.getId());
				oldSession.setAttribute("error","����˺��ڱ𴦵�¼,���ѱ�������");
				oldSession.removeAttribute("loginUser");
				userMap.remove(uid);		
			}
			//���û����뵽map����
			userMap.put(uid,session);
		}
		
	}

	public void attributeRemoved(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub

	}

	public void attributeReplaced(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		
	}
	

}
