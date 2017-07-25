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
        /*//����һ���µ��ַ���
        StringReader read=new StringReader(path);
        //�����µ�����ԴSAX ��������ʹ��InputSource������ȷ����ζ�ȡxml����
        InputSource source=new InputSource(read);
        //����һ���µ�SAXBuilder
        SAXBuilder sb=new SAXBuilder();
        //ͨ������Դ����һ��Document
        try {
            Document doc=sb.build(source);
            //ȡ�ĸ�Ԫ��
            Element root=doc.getRootElement();
            //�õ���Ԫ��������Ԫ�صļ���
            List<Aibird> Aibirds=root.getChildren();
            return Aibirds;
            //���XML�е������ռ�
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
    	 * ����userphone���в�ѯ
    	 * @param userphone path
    	 * @return
    	*/
    	
    	/*
    	 *�õ�Document
    	 *����xpath���ʽ
    	 *����document�ķ�������xpath��ѯ���õ�Element
    	 *��Elementת��ΪAibird����
    	*/
    	
    	/*1���õ�Document
    	*/
    	//����������
    	SAXReader reader=new SAXReader();
    	//���ö��������õ�Document
    	try {
			Document doc=reader.read(path);
			/*
			 * 2��׼��xpath
			 *��ͷ��ʾû��������ƣ��������ĵ���ѯ��Ԫ�ء���Ԫ�ص���Ԫ��
			 *[]�зŵĽ�ν���ʵ���ǲ�ѯ����
			 *@userphoneΪ��ѯ����
			*/
			String xpath="//aibird[@userPhone='"+userphone+"']";
			//����document������ɲ�ѯ
			List<Element> aibirdEle=(List<Element>) doc.selectNodes(xpath);
			if(aibirdEle==null){
				return null;
			}
			//��Ԫ��ת��ΪAibird���󣬲�����
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
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}
    	return null;
    }
}

