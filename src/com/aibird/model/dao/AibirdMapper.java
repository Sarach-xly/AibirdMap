package com.aibird.model.dao;

import java.util.Date;
import java.util.List;

import com.aibird.model.entity.Aibird;

public interface AibirdMapper {
    //������˻��ķ���λ��
	int add(Aibird aibird);
	
	//����aibirdid��ѯ��̨���˻���λ����Ϣ
	Aibird selectById(Integer aibirdid);
	
	//����userphone��ѯ�������˻�����Ϣ
	Aibird selectByPhone(String userphone);
	
	//����userphone��ѯ��̨���˻�������������Ϣ
	List<Aibird> selectByUserphone(String userphone);
	
	//����aibirdidɾ�����˻��ɵķ�����Ϣ
	int deleteByPrimaryKey(Integer aibirdid);
	
	List<Aibird> selectAll();
}