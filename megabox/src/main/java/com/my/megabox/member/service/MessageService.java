package com.my.megabox.member.service;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class MessageService {
	/**
	 * @class ExampleSend
	 * @brief This sample code demonstrate how to send sms through CoolSMS Rest API PHP
	 */
	public void sendMessage(String toNumber, String randomNumber) {
		String api_key = "NCSSFUXBFE4DG43X";
	    String api_secret = "BDEP6BVTK6WXDB0KJUXUKKNX0ZHFE1QQ";
	    String fromNumber = "01023381814";
		Message coolsms = new Message(api_key, api_secret);

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", toNumber);
		params.put("from", fromNumber);
		params.put("type", "SMS");
		params.put("text", "[Megabox] 인증번호 "+randomNumber+" 를 입력하세요.");
		params.put("app_version", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println("뭐지");
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println("문자인증 실패");
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
	}
	
}
