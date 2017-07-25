package com.aibird.web.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aibird.model.entity.Aibird;
import com.aibird.model.service.AibirdService;
import com.aibird.model.tool.Java2XML;
import com.aibird.model.tool.XML2List;

@Controller
@RequestMapping("aibird")
public class AibirdController {

	@Autowired
	private AibirdService aibirdService;
	
	
	@RequestMapping(value="ad_index_center",produces={"application/json;charset=UTF-8"})
	public String ad_index_center(){
		return "ad_index_center";
	}
	
	@RequestMapping(value="ad_index_left",produces={"application/json;charset=UTF-8"})
	public String ad_index_left(){
		return "ad_index_left";
	}
	
	@RequestMapping(value="webindex_top",produces={"application/json;charset=UTF-8"})
	public String webindex_top(){
		return "webindex_top";
	}
	
	@RequestMapping(value="AllAibird",produces={"application/json;charset=UTF-8"})
	public String AllAibird(){
		return "AllAibird";
	}
	@RequestMapping(value="AibirdGPS",produces={"application/json;charset=UTF-8"})
	public String AibirdGPS(){
		return "AibirdGPS";
	}
	
	@RequestMapping(value="Aibird",produces={"application/json;charset=UTF-8"})
	public String Aibird(){
		return "Aibird";
	}
	
	@RequestMapping(value="AllAibirdInfo",produces={"application/json;charset=UTF-8"})
	public String AllAibirdInfo(){
		return "AllAibirdInfo";
	}
	
	@RequestMapping(value="AibirdInfo",produces={"application/json;charset=UTF-8"})
	public String AibirdInfo(){
		return "AibirdInfo";
	}
	
	@RequestMapping(value="uoplay",produces={"application/json;charset=UTF-8"})
	public String uoplay(){
		return "uoplay";
	}
	
	@RequestMapping(value="top",produces={"application/json;charset=UTF-8"})
	public String top(){
		return "top";
	}
	
	@RequestMapping(value="footer",produces={"application/json;charset=UTF-8"})
	public String footer(){
		return "footer";
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="add",produces={"application/json;charset=UTF-8"})
	public Object add(Aibird aibird){
		Map map=new HashMap();
		/*String startx=aibird.getStartx();
		String starty=aibird.getStarty();
		if(startx.contains("°")){
			String[] index0={};
			String[] index1={};
			String[] index2={};
			Integer i0=0;
			float i1=0;
			float i2=0;
			index0=startx.split("\\°");
			if(index0.length>1) index1=index0[1].split("\\′");
			if(index1.length>1) index2=index1[1].split("\"");
			if(index0.length>0) i0=Integer.parseInt(index0[0]);
			if(index1.length>0) i1=Float.parseFloat(index1[0]);
			if(index2.length>0) i2=Float.parseFloat(index2[0]);
			String s=i0+i1/60+i2/(60*60)+"";
			if(s.length()>9) s=s.substring(0, 8);
			aibird.setStartx(s);
		}
		if(starty.contains("°")){
			String[] index3={};
			String[] index4={};
			String[] index5={};
			Integer i3=0;
			float i4=0;
			float i5=0;
			index3=starty.split("\\°");
			if(index3.length>1) index4=index3[1].split("\\′");
			if(index4.length>1) index5=index4[1].split("\"");
			if(index3.length>0) i3=Integer.parseInt(index3[0]);
			if(index4.length>0) i4=Float.parseFloat(index4[0]);
			if(index5.length>0) i5=Float.parseFloat(index5[0]);
			String s1=i3+i4/60+i5/(60*60)+"";
			if(s1.length()>8) s1=s1.substring(0, 7);
			aibird.setStarty(s1);
		}*/
		if(aibirdService.add(aibird)!=0){
			String userphone=aibird.getUserphone();
			List<Aibird> aibirds=aibirdService.selectByUserphone(userphone);
			if(aibirds.size()>1){
				Aibird aibird0=aibirds.get(0);
				if(Java2XML.BuildXmlDoc(aibird0)){
					int aibirdid=aibird0.getAibirdid();
					if(aibirdService.deleteByPrimaryKey(aibirdid)!=0){
						Aibird aibird1=aibirds.get(1);
						map.put("result", "add success");
						return map;
					}else{
						map.put("result", "delete fail");
						return map;
					}
				}else{
					map.put("result", "write to xml fail");
					return map;
				}
			}else{
				map.put("result", "the first fly");
				return map;
			}
		}else{
			map.put("result", "add fail");
			return map;
		}
	}
	
	//根据userphone查询单个无人机的飞行信息
	@ResponseBody
	@RequestMapping(value="selectByPhone",produces={"application/json;charset=UTF-8"})
	public Object selectByPhone(String userphone){
		Map map=new HashMap();
		Aibird aibird=aibirdService.selectByPhone(userphone);
		if(aibird!=null){
			map.put("result", "select success");
			map.put("Aibird", aibird);
		}else{
			map.put("result", "select fail");
			map.put("Aibird", null);
		}
		return map;
	}
	
	//查询所有正在天上飞行的无人机飞行记录
	@ResponseBody
	@RequestMapping(value="getAllAibirdGps",produces={"application/json;charset=UTF-8"})
	public Object  getAllAibirdGps(HttpSession session,HttpServletRequest request,HttpServletResponse response){
		Map map=new HashMap();
		List<Aibird> aibirds=aibirdService.selectAll();
		if(aibirds.size()>0){
			session.setAttribute("num", aibirds.size());
			for(int i=0;i<aibirds.size();i++){
				session.setAttribute("startx"+i, aibirds.get(i).getStartx());
				session.setAttribute("starty"+i, aibirds.get(i).getStarty());
				session.setAttribute("userphone"+i, aibirds.get(i).getUserphone());
				session.setAttribute("aibirdid"+i, aibirds.get(i).getAibirdid());
			}
			String path=request.getContextPath();
			String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
			try {
				response.sendRedirect(basePath+"aibird/AibirdGPS");
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				map.put("result", "skip fail");
				return map;
			}
		}else{
			map.put("result", "no aibird in the sky");
			return map;
		}
 		return map;
	}
	
	
	//获取单台在空中飞行的无人机飞行记录
	@ResponseBody
	@RequestMapping(value="getAibirdGPS",produces={"application/json;charset=UTF-8"})
	public Object getAibirdGPS(Integer aibirdid,HttpSession session,HttpServletRequest request,HttpServletResponse response){
		Map map=new HashMap();
		Aibird aibird=aibirdService.selectById(aibirdid);
		String userphone=aibird.getUserphone();
		String path="D:/Aibirds.xml";
		List<Aibird> aList=XML2List.ReadXMLFile(userphone, path);
		if(aList.size()!=0){
			session.setAttribute("num0", aList.size());
			session.setAttribute("userphone0", aList.get(0).getUserphone());
			for(int i=0;i<aList.size();i++){
				session.setAttribute("startx0"+i, aList.get(i).getStartx());
				session.setAttribute("starty0"+i, aList.get(i).getStarty());
				session.setAttribute("createtime0"+i, aList.get(i).getCreatetime());
			}
			String path1=request.getContextPath();
			String realPath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path1+"/";
			try {
				response.sendRedirect(realPath+"aibird/Aibird");
			} catch (IOException e) {
				// TODO 自动生成的 catch 块
				map.put("result", "skip fail");
				return map;
			}
		}else{
			map.put("result", "select fail");
			return map;
		}
		return map;
	}
	
	
	//获取所有现在在陆上的无人机的飞行信息
	@ResponseBody
	@RequestMapping(value="getAllAibirdInfo",produces={"application/json;charset=UTF-8"})
	public Object getAllAibirdInfo(HttpSession session,HttpServletRequest request,HttpServletResponse response){
		Map map=new HashMap();
		long createtime=new Date().getTime();
		List<Aibird> aibirds=aibirdService.selectAll();
		if(aibirds.size()!=0){
			session.setAttribute("num0", aibirds.size());
			for(int i=0;i<aibirds.size();i++){
				session.setAttribute("startx1"+i, aibirds.get(i).getStartx());
				session.setAttribute("starty1"+i, aibirds.get(i).getStarty());
				session.setAttribute("userphone1"+i, aibirds.get(i).getUserphone());
				session.setAttribute("aibirdid1"+i, aibirds.get(i).getAibirdid());
			}
			String path=request.getContextPath();
			String realPath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
			try {
				response.sendRedirect(realPath+"aibird/AllAibirdInfo");
			} catch (IOException e) {
				// TODO 自动生成的 catch 块
				map.put("result", "skip fail");
				return map;
			}
		}
		return map;
	}
	
	//查询单个在陆上的无人机的飞行历史
	@ResponseBody
	@RequestMapping(value="getAibirdInfo",produces={"application/json;charset=UTF-8"})
	public Object getAibirdInfo(Integer aibirdid,HttpSession session,HttpServletRequest request,HttpServletResponse response){
		Map map=new HashMap();
		Aibird aibird=aibirdService.selectById(aibirdid);
		String userphone=aibird.getUserphone();
		String path="D:/Aibirds.xml";
		List<Aibird> aibirds=XML2List.ReadXMLFile(userphone, path);
		if(aibirds.size()!=0){
			session.setAttribute("userphone1", aibirds.get(0).getUserphone());
			session.setAttribute("num1", aibirds.size());
			for(int i=0;i<aibirds.size();i++){
				session.setAttribute("startx2"+i, aibirds.get(i).getStartx());
				session.setAttribute("starty2"+i, aibirds.get(i).getStarty());
				session.setAttribute("createtime2"+i, aibirds.get(i).getCreatetime());
			}
			String path1=request.getContextPath();
			String realPath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path1+"/";
			try {
				response.sendRedirect(realPath+"aibird/AibirdInfo");
			} catch (IOException e) {
				// TODO 自动生成的 catch 块
				map.put("result", "skip fail");
				return map;
			}
		}else{
			map.put("result", "no aibird in the sky");
			return map;
		}
		return map;
	}
}
