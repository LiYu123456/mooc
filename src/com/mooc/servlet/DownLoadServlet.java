package com.mooc.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.db;

public class DownLoadServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		db d=new db();
		String sql="select * from xuexishipin where id='"+id+"'";
		ResultSet result=d.executeQuery(sql);
		File file=null;
		try {
			while(result.next()) {
				String fileName=result.getString("wenjian").replace("/", "\\");
				String filePath=req.getServletContext().getRealPath("/");
				file=new File(filePath+fileName);
			}
			if(file!=null&&file.exists()) {
				FileInputStream fis=new FileInputStream(file);
				String filename=URLEncoder.encode(file.getName(),"utf-8");
				resp.setCharacterEncoding("UTF-8");
				resp.setHeader("Content-Disposition","attachment; filename="+filename+"");
				byte[] b=new byte[1024*1024];
				ServletOutputStream sos=resp.getOutputStream();
				int k=0;
				while((k=fis.read(b))!=-1) {
					sos.write(b,0,k);
					sos.flush();
				}
				sos.close();
				fis.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if(result!=null) {
				try {
					result.close();
					d.closeConnection();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
