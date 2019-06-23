package com.BcFan.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.BcFan.biz.UserBiz;
import com.BcFan.entity.Users;
import com.BcFan.util.SmsUtil;

@Controller("userAction")
public class UserAction implements SessionAware {
	@Autowired
	private UserBiz userBiz;
	private Users u;
	private String telOrName;// �ֻ��Ż����û���
	private String message;// ��Ϣ
	private Map<String, Object> session;
	private String password;
	private String sessionId;
	private String code;
	private String invitation;
	// ����¼
	public String checkLogin() {
		System.out.println(telOrName+"  "+u.getUpassword());
		session.remove("message");
		u = userBiz.checkLogin(telOrName, u.getUpassword());
		if(u==null) {//�û�������
			message = "�û������������";
			System.out.println("�û������������");
			session.put("message", message);
			return "login";
		}
		session.put("loginUser", u);

		return "success";
	}
	//����¼״̬
	public String checkLoginStatus() {
		/*Users u= (Users) session.get("loginUser");
		String error=(String) session.get("error");*/
		sessionId=(String) session.get("sessionId");
		/*if(u==null&&error!=null) {//��������
			message="logout";
		}*/
		return "success";
	}
	
	// �˳���¼
	public String logout() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session2 = request.getSession();
		long lastAccessedTime1 = ((HttpSession) session2).getLastAccessedTime();
		System.out.println("��һ��"+lastAccessedTime1);
		try {
			Thread.sleep(2000);
			long lastAccessedTime2 = ((HttpSession) session2).getLastAccessedTime();
			
			System.out.println("�ڶ���"+lastAccessedTime2);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "success";
	}
	//����û����Ƿ�Ϸ�
	public String checkUsername() {
		Users users = userBiz.getUsersByUsername(u.getUname());
		if(users!=null) {
			message="exist";
		}else {
			message="";
		}
		return "success";
	}
	//���绰�Ƿ�Ϸ�
	public String checkTel() {
		Users users = userBiz.getUsersByTel(u.getTel());
		if(users!=null) {
			message="exist";
		}else {
			message="";
		}
		return "success";
	}
	//�����ֻ���֤��
	public String sendYzm() {
		/*String tel=u.getTel();*/
		code=SmsUtil.getRandomSMSCode(6, true);
		System.out.println("��֤��"+code);
		//������֤��
		/*try {
			SmsUtil.sendSms(tel, code);
		} catch (ClientException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		return "success";
	}
	//�û�ע��
	public String register() {
		//u.setTid(1);
		userBiz.addUser(u,invitation);
		return "success";
	}
	//�û��޸�����
	public String updatePwd() {
		Users users=userBiz.getUsersByTel(u.getTel());
		u.setUid(users.getUid());
		userBiz.modifyUser(u);
		return "success";
	}
	//�޸��û���Ϣ
	public String modifyUser() {
		Users users = (Users) session.get("loginUser");
		u.setUid(users.getUid());
		userBiz.modifyUserInfo(u);
		return "success";
	}
	public UserBiz getUserBiz() {
		return userBiz;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	public Users getU() {
		return u;
	}

	public void setU(Users u) {
		this.u = u;
	}

	public String getTelOrName() {
		return telOrName;
	}

	public void setTelOrName(String telOrName) {
		this.telOrName = telOrName;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String getSessionId() {
		return sessionId;
	}
	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getInvitation() {
		return invitation;
	}
	public void setInvitation(String invitation) {
		this.invitation = invitation;
	}
	
}