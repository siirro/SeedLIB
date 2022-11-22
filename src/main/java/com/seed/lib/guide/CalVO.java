//package com.seed.lib.guide;
//
//import java.text.SimpleDateFormat;
//import java.util.Calendar;
//import java.util.HashMap;
//import java.util.Map;
//
//import lombok.Data;
//import lombok.ToString;
//
//@Data 
//@ToString
//public class CalVO {
//
//	
//  private String year=""; 
//  private String month=""; 
//  private String date=""; 
//  private String value="";
//  
//  
//  private String startDate="";
//  private String endDate="";
//  
//  
// ScheduleVO[] scheduleVOs= new ScheduleVO[4];
//
//public Map<String, Integer> todayMap(CalVO calVO){
//	
//	Map<String, Integer> todayData = new HashMap<String, Integer>();
//	Calendar cal = Calendar.getInstance();
//	
//	cal.set(Integer.parseInt(calVO.getYear()),Integer.parseInt(calVO.getMonth()),1);
//	
//	int startDay= cal.getMinimum(java.util.Calendar.DATE);
//	int endDay=cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
//	int start = cal.get(java.util.Calendar.DAY_OF_WEEK);
//	
//	
//	Calendar todatCal= Calendar.getInstance();
//	SimpleDateFormat ysdf = new SimpleDateFormat("yyy");
//	SimpleDateFormat msdf =new SimpleDateFormat("m");
//	
//	int todayYear= Integer.parseInt(ysdf.format(todatCal.getTime()));
//	int todayMonth= Integer.parseInt(msdf.format(todatCal.getTime()));
//	
//	
//	int searchYear= Integer.parseInt(calVO.getYear());
//	int searchMonth= Integer.parseInt(calVO.getMonth())+1;
//	
//	int today= -1;
//	
//	if(todayYear==searchYear && todayMonth==searchMonth) {
//		SimpleDateFormat dsdf= new SimpleDateFormat("dd");
//		today = Integer.parseInt(dsdf.format(todatCal.getTime()));
//	}
//	
//	searchMonth= searchMonth-1;
//	
//	
//	
//Map<String, Integer> beforeAfterCalendar= beforeAfterCalendar(searchYear,searchMonth); 
//
//todayData.put("start", start);
//todayData.put("startDay",startDay);
//todayData.put("endDay",endDay);
//todayData.put("today",today);
//todayData.put("searchYear",searchYear);
//todayData.put("searchMonth",searchMonth+1);
//todayData.put("beforeYear", beforeAfterCalendar.get("beforeYear"));
//todayData.put("beforeMonth",beforeAfterCalendar.get("beforeMonth"));
//todayData.put("afterYear",beforeAfterCalendar.get("afterYear"));
//todayData.put("afterMonth",beforeAfterCalendar.get("afterMonth"));
//
//
//}
//
//private Map<String, Integer> beforeAfterCalendar(int searchYear, int searchMonth) {
//	// TODO Auto-generated method stub
//	return null;
//}
//
//
//
//}
//
//
//
//
//
//
//
//
