package com.dhtmlx.booking.controller;
 
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dhtmlx.planner.DHXPlanner;
import com.dhtmlx.planner.DHXSkin;
import com.dhtmlx.planner.controls.DHXLightboxSelect;
import com.dhtmlx.planner.controls.DHXLightboxText;
import com.dhtmlx.planner.controls.DHXLightboxTime;
import com.dhtmlx.planner.controls.DHXTimelineView;
import com.dhtmlx.planner.controls.DHXTimelineView.RenderModes;
import com.dhtmlx.planner.controls.DHXTimelineView.XScaleUnits;
import com.dhtmlx.planner.data.DHXDataFormat;
import com.dhtmlx.planner.extensions.DHXExtension;
 
 
@Controller
public class DemoController {
	
	@RequestMapping("/events")
	@ResponseBody public String events(HttpServletRequest request) {
	   CustomEventsManager evs = new CustomEventsManager(request);
	   return evs.run();
	}

	
	@RequestMapping("/")
	public ModelAndView scheduler(HttpServletRequest request) throws Exception {
	   DHXPlanner s = new DHXPlanner("./codebase/", DHXSkin.TERRACE);
	   s.setWidth(1000);
	   s.setHeight(126);
	   s.setInitialDate(2013, 3, 8);
	   s.setInitialView("timeline");
 
	   DHXTimelineView view = new DHXTimelineView("timeline", "table", "Booking");
       view.setRenderMode(RenderModes.TREE);
	   view.setXScaleUnit(XScaleUnits.MINUTE);
	   view.setXStep(60);
	   view.setXSize(12);
	   view.setSectionAutoheight(false);
	   view.setXStart(11);
	   view.setXLength(24);
	   view.setDx(110);
	   view.setDy(46);
	   view.setFolderDy(20);
	   view.setEventDy(41);
	   view.setServerList("tables_tree");
	   view.setTabClass("dhx_cal_tab_standalone");
	   s.views.clear();
	   s.views.add(view);
	   view.setTabPosition(10);
 
	   // clear default lightbox fields
	   s.lightbox.clear();
	   // contact details field
	   DHXLightboxText contacts = new DHXLightboxText("contacts", "Contact details");
	   contacts.setHeight(40);
	   contacts.setFocus(true);
	   s.lightbox.add(contacts);
	   // contact details field
	   DHXLightboxText notes = new DHXLightboxText("notes", "Notes");
	   notes.setHeight(40);
	   s.lightbox.add(notes);
	   // table field
	   DHXLightboxSelect table = new DHXLightboxSelect("table", "Table");
	   table.setServerList("tables");
	   s.lightbox.add(table);
	   // time field
	   DHXLightboxTime time = new DHXLightboxTime("time", "Time period");
	   s.lightbox.add(time);
 
 
	   // configuring templates
	   s.templates.setTimelineDate("{date1:date(%j %F %Y)}");
 
	   // configuring sizes and times
	   s.xy.setBarHeight(76);
	   s.config.setFixTabPosition(false);
	   s.config.setTimeStep(60);
	   s.config.setFirstHour(10);
	   s.config.setLastHour(24);
	   s.config.setLimitTimeSelect(true);
 
	   s.calendars.attachMiniCalendar();
	   s.extensions.add(DHXExtension.COLLISION);
	   s.extensions.add(DHXExtension.CONTAINER_AUTORESIZE);
 
	   // loading and saving data
	   s.load("events", DHXDataFormat.JSON);
	   s.data.dataprocessor.setURL("events");
	  
	   // creating required view
	   ModelAndView mnv = new ModelAndView("layout");
         	mnv.addObject("body", s.render());
 
    	return mnv;
	}
}
