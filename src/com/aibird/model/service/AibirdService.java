package com.aibird.model.service;

import java.util.Date;
import java.util.List;

import com.aibird.model.entity.Aibird;

public interface AibirdService {
	    //添加无人机的飞行位置
		int add(Aibird aibird);
		
		//根据aibirdid查询单台无人机的位置信息
		Aibird selectById(Integer aibirdid);
		
		//根据userphone查询单个无人机的信息
		Aibird selectByPhone(String userphone);
		
		//根据userphone查询单台无人机的最新两条信息
		List<Aibird> selectByUserphone(String userphone);
		
		//根据aibirdid删除旧的无人机的飞行信息
		int deleteByPrimaryKey(Integer aibirdid);
		
		List<Aibird> selectAll();
}
