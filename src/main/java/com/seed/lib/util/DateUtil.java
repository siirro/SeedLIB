package com.seed.lib.util;

import java.sql.Date;
import java.text.SimpleDateFormat;

import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class DateUtil {

	// Date타입을 String으로 바꿔주는 객체생성
	private static SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	public static Date parseDate(String dateStr)throws Exception{
		// .getTime은 util의 Date를 sql의 Date로 변경해줌
		Date date = new Date(formatter.parse(dateStr).getTime());
		
		return date;
	}
	
	// 매개변수로 Date타입이 왔을때 String으로 바꿔주는 메서드
	public static String formatDate(Date date) {
		// String 변수 초기화
		String dateStr = null;
		
		if(date != null) {
			dateStr = formatter.format(date);
		}
		
		return dateStr;
	}
	
}
