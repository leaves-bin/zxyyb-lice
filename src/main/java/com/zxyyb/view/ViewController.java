package com.zxyyb.view;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zxyyb.entry.LiceBean;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

@WebServlet(urlPatterns = { "/lice" }, loadOnStartup = 1)
public class ViewController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			PrintWriter out = resp.getWriter();

			Configuration config = new Configuration(Configuration.VERSION_2_3_23);
			config.setClassForTemplateLoading(this.getClass(), "/");
			config.setDefaultEncoding("UTF-8");
			Template template = config.getTemplate("lice.ftl");

			Map<String, Object> map = new HashMap<String, Object>();
			List<LiceBean> liceList = new ArrayList<LiceBean>();
			for(int i=0;i<10;i++) {
				liceList.add(new LiceBean("127.0.0."+i));
			}
			map.put("liceList", liceList);
			map.put("title", "已注册列表");
			map.put("desc", "");

			template.process(map, out);

		} catch (TemplateException e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		System.out.println(name);
		
		String path=Thread.currentThread().getContextClassLoader().getResource("").getPath();
        path=path.replace('/', '\\'); // 将/换成\    
        path=path.replace("file:", ""); //去掉file:    
        path=path.substring(1); //去掉第一个\,
        if(path.endsWith("\\"))
        	path= path.substring(0, path.lastIndexOf("\\"));
        
        path = path.substring(0,path.lastIndexOf("\\")+1);
        path+="lic.xml";    
        System.out.println(path);  
        
	}

}
