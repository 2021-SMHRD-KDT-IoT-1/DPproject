package com.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.model.sensorDAO;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@WebServlet("/sensor_test")
public class sensor_test extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String a = request.getParameter("a");
		String[] arr = a.split(":");
	
		String gasstring = arr[0];
		String firestring = arr[1];
		String tempstring = arr[2];
		
		int gas = Integer.parseInt(gasstring);
		int fire = Integer.parseInt(firestring);
		int temp = Integer.parseInt(tempstring);
		
		if((temp>=50 && gas>=300)||(fire==0)) {
			
			String api_key = "NCSZUQHX5AATV356";
		    String api_secret = "309PHKAGAYUPZB8UBEHY2YVA46AHLOWB";
		    Message coolsms = new Message(api_key, api_secret);

		    // 4 params(to, from, type, text) are mandatory. must be filled
		    HashMap<String, String> params = new HashMap<String, String>();
		    params.put("to", "01068111022");
		    params.put("from", "01068111022");
		    params.put("type", "SMS");
		    params.put("text", "아아아아앙아아아아앙");
		    params.put("app_version", "test app 1.2"); // application name and version

		    try {
		      JSONObject obj = (JSONObject) coolsms.send(params);
		      System.out.println(obj.toString());
		    } catch (CoolsmsException e) {
		      System.out.println(e.getMessage());
		      System.out.println(e.getCode());
		    }
					
		}
		
		
		
		sensorDAO sen = new sensorDAO();
		int cnt = sen.sensor_update(a);
		
		if(cnt>0) {
			System.out.println("센서값 저장 성공");
			response.sendRedirect("sensor_test.jsp");
		}else {
			System.out.println("센서값 저장 실패");
		}
	}

}
