package com.dogpark.dto;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

public class DateData {

	String year = "";
	String month = "";
	String date = "";
	String value = "";
	//異붽��맂 遺�遺�
	String db_startDate = "";
	String db_endDate = "";	
	ScheduleDto[] schedule_data_arr = new ScheduleDto[4];
	s

	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}

	
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}

	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

	
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}

	//異붽��맂 遺�遺�
	public String getDb_startDate() {
		return db_startDate;
	}
	public void setDb_startDate(String db_startDate) {
		this.db_startDate = db_startDate;
	}

	
	public String getDb_endDate() {
		return db_endDate;
	}
	public void setDb_endDate(String db_endDate) {
		this.db_endDate = db_endDate;
	}

	
	public ScheduleDto[] getSchedule_data_arr() {
		return schedule_data_arr;
	}
	public void setSchedule_data_arr(ScheduleDto[] schedule_data_arr) {
		this.schedule_data_arr = schedule_data_arr;
	}
	
	
	// �궇吏쒖뿉 愿��젴�맂 �떖�젰�젙蹂대�� 媛�吏��뒗 硫붿꽌�뱶
	public Map<String, Integer> today_info(DateData dateData) {
		// �궇吏� 罹섎┛�뜑 �븿�닔�뿉 �궫�엯.
		Map<String, Integer> today_Data = new HashMap<String, Integer>();
		Calendar cal = Calendar.getInstance();
		cal.set(Integer.parseInt(dateData.getYear()), Integer.parseInt(dateData.getMonth()), 1);

		int startDay = cal.getMinimum(java.util.Calendar.DATE);
		int endDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
		int start = cal.get(java.util.Calendar.DAY_OF_WEEK);
		
		Calendar todayCal = Calendar.getInstance();
		SimpleDateFormat ysdf = new SimpleDateFormat("yyyy");
		SimpleDateFormat msdf = new SimpleDateFormat("M");

		int today_year = Integer.parseInt(ysdf.format(todayCal.getTime()));
		int today_month = Integer.parseInt(msdf.format(todayCal.getTime()));

		int search_year = Integer.parseInt(dateData.getYear());
		int search_month = Integer.parseInt(dateData.getMonth()) + 1;

		int today = -1;
		if (today_year == search_year && today_month == search_month) {
			SimpleDateFormat dsdf = new SimpleDateFormat("dd");
			today = Integer.parseInt(dsdf.format(todayCal.getTime()));
		}
		
		search_month = search_month-1; 
		
		Map<String, Integer> before_after_calendar = before_after_calendar(search_year,search_month);
		
		//�궇吏� 愿��젴
		System.out.println("search_month : " + search_month);
		// 罹섎┛�뜑 �븿�닔 end
		today_Data.put("start", start);
		today_Data.put("startDay", startDay);
		today_Data.put("endDay", endDay);
		today_Data.put("today", today);
		today_Data.put("search_year", search_year);
		today_Data.put("search_month", search_month+1);
		today_Data.put("before_year", before_after_calendar.get("before_year"));
		today_Data.put("before_month", before_after_calendar.get("before_month"));
		today_Data.put("after_year", before_after_calendar.get("after_year"));
		today_Data.put("after_month", before_after_calendar.get("after_month"));
		
		
		this.db_startDate = String.valueOf(search_year)+"-"+String.valueOf(search_month+1)+"-"+String.valueOf(startDay);
		this.db_endDate = String.valueOf(search_year)+"-"+String.valueOf(search_month+1)+"-"+String.valueOf(endDay);
		return today_Data;
	}
	
	//�씠�쟾�떖 �떎�쓬�떖 諛� �씠�쟾�뀈�룄 �떎�쓬�뀈�룄
	private Map<String, Integer> before_after_calendar(int search_year, int search_month){
		Map<String, Integer> before_after_data = new HashMap<String, Integer>();
		int before_year = search_year;
		int before_month = search_month-1;
		int after_year = search_year;
		int after_month = search_month+1;

		if(before_month<0){
			before_month=11;
			before_year=search_year-1;
		}
		
		if(after_month>11){
			after_month=0;
			after_year=search_year+1;
		}
		
		before_after_data.put("before_year", before_year);
		before_after_data.put("before_month", before_month);
		before_after_data.put("after_year", after_year);
		before_after_data.put("after_month", after_month);
		
		return before_after_data;
	}
	
	// �뒪耳�以� �궗�슜�떆 �궗�슜�맆 �깮�꽦�옄
	
	public DateData(String year, String month, String date, String value, ScheduleDto[] schedule_data_arr) {
		if ((month != null && month != "") && (date != null && date != "")) {
			this.year = year;
			this.month = month;
			this.date = date;
			this.value = value;
			this.schedule_data_arr = schedule_data_arr;
		}

	}

	// �떖�젰留� �궗�슜�떆 �궗�슜�맆 �깮�꽦�옄
	/*
	public DateData(String year, String month, String date, String value) {
		if ((month != null && month != "") && (date != null && date != "")) {
			this.year = year;
			this.month = month;
			this.date = date;
			this.value = value;
		}
	}
*/
	public DateData() {
	}

	@Override
	public String toString() {
		return "DateData [year=" + year + ", month=" + month + ", date=" + date + ", value=" + value + "]";
	}

}
