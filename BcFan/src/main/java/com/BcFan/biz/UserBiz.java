package com.BcFan.biz;

import com.BcFan.entity.Users;
import com.BcFan.util.PageBean;

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
	//根据搜索的信息得到用户的分页信息
	public PageBean getUsersListBySearchData(PageBean p,String searchData);
	//修改用户头像
	public void updateUserPic(Users u);
}
