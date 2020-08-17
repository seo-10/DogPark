package com.dogpark.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.CalendarDto;
import com.dogpark.service.DS_CountListService;

public class DS_CountListAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		DS_CountListService selectcount = new DS_CountListService();
		
		ArrayList<String> arr=new ArrayList<String>();
		
		for(int i=1; i<=9; i++) {
		arr.add("2020-08-0"+Integer.toString(i));
		}
		for(int i=10; i<=31; i++) {
			arr.add("2020-08-"+Integer.toString(i));
		 }
		System.out.println(arr);
		String date=arr.get(10);
		System.out.println(arr.get(11));
		List<CalendarDto> countList=new ArrayList<CalendarDto>();
		countList= selectcount.SelectReservationcount();
		
		HashMap<Integer,Integer> countmap=new HashMap<Integer,Integer>();
		for(int i=0; i< countList.size();i++) {
		countmap.put(Integer.parseInt(countList.get(i).getDate()), countList.get(i).getCount());
		}
		System.out.println(countmap);
		System.out.println(countmap.containsKey(11));
		System.out.println(countmap.get(11));
	
		request.setAttribute("countList", countList);
		request.setAttribute("countmap", countmap);
		
		ActionForward forward= new ActionForward();
		forward.setPath("dogpark_calendar.jsp");
		return forward;
		
	}
}
