package com.seed.lib.studyroom;


import java.util.List;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.response.AccessToken;
import com.siot.IamportRestClient.response.IamportResponse;


@Service
public class LockerService {

	@Value("${locker.rest.api}")
	private String restKey;
	
	@Value("${locker.api.secret}")
	private String restSecret;

	private IamportClient client;
	
	@Autowired
	private LockerMapper mapper;
		
		public List<LockerVO> getLockerCount() throws Exception{
			return mapper.getLockerCount(); 
		}
		

		public int getUseLocker(LockerVO lockerVO) throws Exception{
			return mapper.getUseLocker(lockerVO);
		}


		public int getOverlapLocker(LockerVO lockerVO) throws Exception{
			return mapper.getOverlapLocker(lockerVO);
		}

		public int checkLocker(LockerVO lockerVO) throws Exception{
			//사용중인 사물함인지 확인하기
			int result = mapper.getUseLocker(lockerVO); 
			if(result>0) {
				return 111;
			}else {
				//중복 신청인지 확인하기
				result = mapper.getOverlapLocker(lockerVO);
				if(result>0) {
					return 222;
				}else {
					return result;
				}
			}
		}
		
		public int setMyLocker(LockerVO lockerVO) throws Exception{
					return mapper.setMyLocker(lockerVO);
		}
		
		public List<LockerVO> getLockerHistory(String userName) throws Exception{
			return mapper.getLockerHistory(userName);
		}
		
		public int getLockerPrice(String merchant_uid) throws Exception{
			return mapper.getLockerPrice(merchant_uid);
		}
		
		public int exitMyLocker(String merchant_uid) throws Exception{
			return mapper.exitMyLocker(merchant_uid);
		}
		
		public int setLockerCancelOne(LockerCancelVO cancelVO) throws Exception{
			return mapper.setLockerCancelOne(cancelVO);
		}

		public IamportClient getClient() {
			this.client = new IamportClient(restKey, restSecret);
			return client;
		}
		
		//token
		public IamportResponse<AccessToken> getToken() throws Exception {
			//client 생성
			IamportClient client = getClient();
			
			//토큰 발급
			IamportResponse<AccessToken> token = client.getAuth();
			return token;
		}	
		
		//아임포트 서버에서 전액 환불 진행
		public String setLockerCancel(IamportResponse<AccessToken> token, String checksum, String reason, String merchant_uid) throws Exception{
			RestTemplate restTemplate = new RestTemplate();
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", "application/json");
			headers.add("Authorization", token.getResponse().getToken());
			
			MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
			
			params.add("reason", reason);
			params.add("imp_uid", merchant_uid);
			params.add("checksum", checksum);
			
			HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<MultiValueMap<String,String>>(params,headers);
			
			String response = restTemplate.postForObject("http://api.iamport.kr/payments/cancel", request, String.class);
			System.out.println("response: "+response);
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObject = (JSONObject)jsonParser.parse(response);
			String code = jsonObject.get("code").toString();

			return code;
		}
}
