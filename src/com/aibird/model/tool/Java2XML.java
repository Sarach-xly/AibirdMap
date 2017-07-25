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
			//得到document
			//创建解析器
			SAXReader reader=new SAXReader();
			//调用该方法得到document
			Document doc=reader.read("D:/Aibirds.xml");
			//得到根元素
			Element root=doc.getRootElement();
			//完成添加元素，并返回添加的元素，向root中添加一个aibird元素，并返回这个元素
			Element aibirdElement=root.addElement("aibird");
			String createTime=aibird.getCreatetime()+"";
			//设置aibirdElement的属性
			aibirdElement.addAttribute("userPhone", aibird.getUserphone());
			aibirdElement.addAttribute("createTime", createTime);
			aibirdElement.addAttribute("startx", aibird.getStartx());
			aibirdElement.addAttribute("starty", aibird.getStarty());
			
			//注意：创建的Aibirds.xml要改成UTF-8的编码格式
			//创建目标输出流，它需要与xml文件绑定
			Writer out=new PrintWriter("D:/Aibirds.xml","UTF-8");
			//创建格式化器
			OutputFormat format=new OutputFormat("\t",true);
			format.setTrimText(true);//先干掉原来的空白（\t,换行和空白)
			//创建XMLWriter
			XMLWriter writer=new XMLWriter(out,format);
			//调用它的写方法，把document对象写入到out流中
			writer.write(doc);
			//关闭流
			out.close();
			writer.close();
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

}
