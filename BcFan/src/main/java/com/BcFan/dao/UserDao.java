package com.BcFan.dao;

import java.util.List;

import com.BcFan.entity.Users;
import com.BcFan.util.PageBean;

public interface UserDao {
	//�����û�������������ֻ��ź��û�����ѯ�û�
	public Users selectUserByUsernameAndPwd(String telOrName,String password);
	//���ݸ����û�id��ѯ��¼״̬
	public int selectStateByUid(int uid);
	//�����û�id�ı��û�״̬
	public void updateStateByUid(int uid,int status);
	//�����û������û�
	public Users selectByUsername(String username);
	//���ݵ绰���û�
	public Users selectByTel(String tel);
	//����û�
	public void insertUser(Users u);
	//�޸��û�ͨ������
	public void updateUser(Users u);
	//�����ǳ�,��������,�Ա�,����޸��û�
	public void updateUserByUnameAndBirthdayAndSexAndSign(Users u);
	//�޸�ͷ��
	public void updatePicPath(Users u);
	//��ѯ��˿
	public List<Users> queryFansNumByUid(Users u);
	//��ѯ�Լ���ע����
	public List<Users> queryfocusUser(Users u);
	//ģ����ѯ�����û���ҳ
	public PageBean queryUserListByData(String data);
}