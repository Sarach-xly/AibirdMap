package com.aibird.model.tool;

import java.io.PrintWriter;
import java.io.Writer;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import com.aibird.model.entity.Aibird;

public class Java2XML {
	
	public static boolean BuildXmlDoc(Aibird aibird){
		try{
			//�õ�document
			//����������
			SAXReader reader=new SAXReader();
			//���ø÷����õ�document
			Document doc=reader.read("D:/Aibirds.xml");
			//�õ���Ԫ��
			Element root=doc.getRootElement();
			//������Ԫ�أ���������ӵ�Ԫ�أ���root�����һ��aibirdԪ�أ����������Ԫ��
			Element aibirdElement=root.addElement("aibird");
			String createTime=aibird.getCreatetime()+"";
			//����aibirdElement������
			aibirdElement.addAttribute("userPhone", aibird.getUserphone());
			aibirdElement.addAttribute("createTime", createTime);
			aibirdElement.addAttribute("startx", aibird.getStartx());
			aibirdElement.addAttribute("starty", aibird.getStarty());
			
			//ע�⣺������Aibirds.xmlҪ�ĳ�UTF-8�ı����ʽ
			//����Ŀ�������������Ҫ��xml�ļ���
			Writer out=new PrintWriter("D:/Aibirds.xml","UTF-8");
			//������ʽ����
			OutputFormat format=new OutputFormat("\t",true);
			format.setTrimText(true);//�ȸɵ�ԭ���Ŀհף�\t,���кͿհ�)
			//����XMLWriter
			XMLWriter writer=new XMLWriter(out,format);
			//��������д��������document����д�뵽out����
			writer.write(doc);
			//�ر���
			out.close();
			writer.close();
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

}
