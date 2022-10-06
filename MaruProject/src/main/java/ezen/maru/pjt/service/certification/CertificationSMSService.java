package ezen.maru.pjt.service.certification;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service("cert_sms")
public class CertificationSMSService implements CertificationService {

	public void certifiedPhoneNumber(String phoneNumber, String cerNum) {
		String api_key = "NCS1UI7YZGFFVQS4";
		String api_secret = "1VOEL0CRABSIUDDOJKRJPVYNC190RVAK";
		Message coolsms = new Message(api_key, api_secret);
		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", phoneNumber); // 수신전화번호
		params.put("from", "01080106050"); // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
		params.put("type", "SMS");
		params.put("text", "[마루] 회원 가입을 위한 휴대폰 인증번호는" + " [" + cerNum + "] " + "입니다.");
		params.put("app_version", "test app 1.2"); // application name and version
		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
	}

}
