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
		// TODO 自动生成的方法存根
		return aibirdMapper.add(aibird);
	}

	@Override
	public Aibird selectById(Integer aibirdid) {
		// TODO 自动生成的方法存根
		return aibirdMapper.selectById(aibirdid);
	}

	@Override
	public Aibird selectByPhone(String userphone) {
		// TODO 自动生成的方法存根
		return aibirdMapper.selectByPhone(userphone);
	}

	@Override
	public List<Aibird> selectByUserphone(String userphone) {
		// TODO 自动生成的方法存根
		return aibirdMapper.selectByUserphone(userphone);
	}

	@Override
	public int deleteByPrimaryKey(Integer aibirdid) {
		// TODO 自动生成的方法存根
		return aibirdMapper.deleteByPrimaryKey(aibirdid);
	}

	@Override
	public List<Aibird> selectAll() {
		// TODO 自动生成的方法存根
		return aibirdMapper.selectAll();
	}
	
	
}
