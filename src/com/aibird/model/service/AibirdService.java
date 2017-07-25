package com.aibird.model.service;

import java.util.Date;
import java.util.List;

import com.aibird.model.entity.Aibird;

public interface AibirdService {
	    //������˻��ķ���λ��
		int add(Aibird aibird);
		
		//����aibirdid��ѯ��̨���˻���λ����Ϣ
		Aibird selectById(Integer aibirdid);
		
		//����userphone��ѯ�������˻�����Ϣ
		Aibird selectByPhone(String userphone);
		
		//����userphone��ѯ��̨���˻�������������Ϣ
		List<Aibird> selectByUserphone(String userphone);
		
		//����aibirdidɾ���ɵ����˻��ķ�����Ϣ
		int deleteByPrimaryKey(Integer aibirdid);
		
		List<Aibird> selectAll();
}
