package com.BcFan.biz;

import com.BcFan.entity.Users;

public interface UserBiz {
	//����¼
	public Users checkLogin(String telOrName,String password);
	//�����û������û�
	public Users getUsersByUsername(String username);
	//���ݵ绰���û�
	public Users getUsersByTel(String tel);
	//����û�
	public void addUser(Users u,String bcNum);
	//�޸��û�����
	public void modifyUser(Users u);
	//�޸��û�������Ϣ
	public void modifyUserInfo(Users u);
}
