package com.aibird.model.tool;

import java.util.ArrayList;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import com.aibird.model.entity.Aibird;

public class XML2List {

    public static List<Aibird> ReadXMLFile(String userphone,String path){
        /*//创建一个新的字符串
        StringReader read=new StringReader(path);
        //创建新的输入源SAX 解析器将使用InputSource对象来确定如何读取xml输入
        InputSource source=new InputSource(read);
        //创建一个新的SAXBuilder
        SAXBuilder sb=new SAXBuilder();
        //通过输入源构造一个Document
        try {
            Document doc=sb.build(source);
            //取的根元素
            Element root=doc.getRootElement();
            //得到根元素所有子元素的集合
            List<Aibird> Aibirds=root.getChildren();
            return Aibirds;
            //获得XML中的命名空间
            Namespace ns=root.getNamespace();
            Element et=null;
            for(int i=0;i<Aibirds.size();i++){
                et=(Element) Aibirds.get(i);
                entity.put()
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;*/
    	
    	/*
    	 * 按照userphone进行查询
    	 * @param userphone path
    	 * @return
    	*/
    	
    	/*
    	 *得到Document
    	 *给出xpath表达式
    	 *调用document的方法进行xpath查询，得到Element
    	 *把Element转化为Aibird对象
    	*/
    	
    	/*1、得到Document
    	*/
    	//创建解析器
    	SAXReader reader=new SAXReader();
    	//调用读方法，得到Document
    	try {
			Document doc=reader.read(path);
			/*
			 * 2、准备xpath
			 *开头表示没有深的限制，可以在文档查询子元素、子元素的子元素
			 *[]中放的叫谓语，其实就是查询条件
			 *@userphone为查询条件
			*/
			String xpath="//aibird[@userPhone='"+userphone+"']";
			//调用document方法完成查询
			List<Element> aibirdEle=(List<Element>) doc.selectNodes(xpath);
			if(aibirdEle==null){
				return null;
			}
			//把元素转化为Aibird对象，并返回
			List<Aibird> aList=new ArrayList<Aibird>();
			for(int i=0;i<aibirdEle.size();i++){
				Aibird aibird=new Aibird();
				String userphone0=aibirdEle.get(i).attributeValue("userPhone");
				aibird.setUserphone(userphone0);
				String startx=aibirdEle.get(i).attributeValue("startx");
				aibird.setStartx(startx);
				String starty=aibirdEle.get(i).attributeValue("starty");
				aibird.setStarty(starty);
				String createTime=aibirdEle.get(i).attributeValue("createTime");
				aibird.setCreatetime(createTime);
				aList.add(aibird);
			}
			return aList;
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
    	return null;
    }
}

