package com.seed.lib.util;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class DateUtil {

	// String타입의 숫자를 Date타입의 패턴으로 만들어줌 => String 리턴
	//private static SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	// String타입의 숫자를 Date 타입으로 변환해주는 메서드
	public static Date parseDate(String dateStr)throws Exception{
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		// parse()는 String으로 받음 
		// getTime()은 util의 Date를 sql의 Date으로 들어갈 수 있게 Long으로 변경해줌
		//Date date = new Date(formatter.parse(dateStr).getTime());
		Date date = new Date(format.parse(dateStr).getTime());
		
		
		// Date타입을 리턴
		return date;
	}
	
	// 매개변수로 Date타입이 왔을때 String으로 바꿔주는 메서드
	public static String formatDate(Date date) {
		
		// String 변수 초기화
		String dateStr = null;
		
		// 만약 date가 null이 아니라면
		if(date != null) {
			// format()은 Date 타입을 String으로 변환
			//dateStr = formatter.format(date);
		}
		
		// String을 리턴
		return dateStr;
	}

	
}
