package com.aibird.model.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aibird.model.dao.AibirdMapper;
import com.aibird.model.entity.Aibird;
import com.aibird.model.service.AibirdService;

@Service
@Transactional
public class AibirdServiceImpl implements AibirdService{
      
	@Autowired
	private AibirdMapper aibirdMapper;

	@Override
	public int add(Aibird aibird) {
		// TODO �Զ����ɵķ������
		return aibirdMapper.add(aibird);
	}

	@Override
	public Aibird selectById(Integer aibirdid) {
		// TODO �Զ����ɵķ������
		return aibirdMapper.selectById(aibirdid);
	}

	@Override
	public Aibird selectByPhone(String userphone) {
		// TODO �Զ����ɵķ������
		return aibirdMapper.selectByPhone(userphone);
	}

	@Override
	public List<Aibird> selectByUserphone(String userphone) {
		// TODO �Զ����ɵķ������
		return aibirdMapper.selectByUserphone(userphone);
	}

	@Override
	public int deleteByPrimaryKey(Integer aibirdid) {
		// TODO �Զ����ɵķ������
		return aibirdMapper.deleteByPrimaryKey(aibirdid);
	}

	@Override
	public List<Aibird> selectAll() {
		// TODO �Զ����ɵķ������
		return aibirdMapper.selectAll();
	}
	
	
}
