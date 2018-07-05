<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    	<link rel="stylesheet" type="text/css" href="./codebase/demo.css" />
	<title>Table Booking System</title>
</head>
<body>
    	<div class="content">
             	<div class="scheduler" id="scheduler">${body}</div>
    	</div>
    	<script>
             	scheduler.templates.timeline_scale_label = function(section_id, section_label, section_options){
                     	if (section_options.level > 0)
                              	return "<div class='table " + (section_options.smoking ? "smoking" : "no-smoking") + "'></div><div class='tablename'>" + section_options.name + "</div>";
                     	else
                              	return section_options.name;
             	};
             	scheduler.templates.event_bar_text = function(start, end, ev) {
                     	return "<strong>Reserved</strong><br>" + (ev.contacts || "") + "";
             	};
 
             	// adding empty contacts to show them in event template
             	scheduler.attachEvent("onEventCreated", function(id){
                     	var ev = scheduler.getEvent(id);
                     	ev.contacts = "";
                     	return true;
             	});
             	
             	// message about reserved tables
             	scheduler.attachEvent("onEventCollision", function() {
             		dhtmlx.message("Time for selected table is already reserved.<br>Please, select another table or time.", "error")
             		return true;
             	});
             	
             	
             	
             	
             	
             	
             	scheduler.form_blocks["time"]={
                     	render:function(sns) {
                              	var time = "";
                              	time += "<select>";
                              	for (var i = 10; i < 24; i++) {
                                      	var hour = i + ":00";
                                      	time+="<option value='"+i+"'>"+hour+"</option>";
                              	}
                              	time += "</select>";
 
                              	return "<div class='dhx_cal_ltext'>"+time+"<strong> &nbsp;&dash;&nbsp; </strong>"+time+"<input type='hidden' value='' /></div>";
                     	},
                     	set_value:function(node,value,ev,config){
                              	var selects = node.getElementsByTagName("select");
                              	var select_start = selects[0];
                              	var select_end = selects[1];
 
                              	var start = ev.start_date.getHours();
                              	for (var i = 0; i < select_start.options.length; i++) {
                                      	if (start == select_start.options[i].value) {
                                               	select_start.selectedIndex = i;
                                               	break;
                                      	}
                              	}
 
                              	var end = ev.end_date.getHours();
                              	for (var i = 0; i < select_end.options.length; i++) {
                                      	if (end == select_end.options[i].value) {
                                               	select_end.selectedIndex = i;
                                               	break;
                                      	}
                              	}
 
                              	var date = node.getElementsByTagName("input")[0];
                              	date.value = scheduler.date.day_start(ev.start_date).getTime();
                     	},
                     	get_value:function(node, ev, config) {
                              	var selects = node.getElementsByTagName("select");
                              	var date = node.getElementsByTagName("input")[0];
 
                              	ev.start_date = new Date();
                              	ev.start_date.setTime(date.value);
                     	    	ev.start_date.setHours(selects[0].options[selects[0].selectedIndex].value);
                              	
                              	ev.end_date = new Date();
                              	ev.end_date.setTime(date.value);
                              	ev.end_date.setHours(selects[1].options[selects[1].selectedIndex].value);
 
                              	if (ev.end_date<=ev.start_date)
                              	    	ev.end_date=scheduler.date.add(ev.start_date,scheduler.config.time_step,"minute");
 
                              	return {
                                      	start_date: ev.start_date,
                                      	end_date: ev.end_date
                              	};
                     	},
                     	focus:function(node){
                              	scheduler._focus(node.getElementsByTagName("select")[0]);
                     	}
             	}
    	</script>
    	<style>
    	
    	html, body {
  						margin: 0px;
  						padding: 0px;
 						background-color: #67846C;
  						background-image: url('./codebase/demo/bookingtable_bg.png');
				}
             	div.tablename {
                     	float: left;
                     	line-height: 18px;
             	}
             	div.table {
                     	width: 18px;
             	    	height: 18px;
                     	float: left;
                     	margin-right: 7px;
             	}
             	div.table.smoking {
                     	background-image: url('codebase/demo/smoking.png');
                     	background-repeat: no-repeat;
             	}
             	.table.no-smoking {
                     	background-image: url('codebase/demo/no-smoking.png');
                     	background-repeat: no-repeat;
             	}
             	.dhx_cal_navline div.dhx_minical_icon {
                     	left: 90px;
             	}
             	.dhx_cal_event_line {
                     	background-color: #FE7510;
             	}
             	
             	.dhx_matrix_scell.folder,
             	.dhx_data_table.folder .dhx_matrix_cell {
                     	background-color: #e8e5df;
             	}
             	
             	.dhx_cal_light_wide {
                     	width: 540px;
             	}
             	
             	.dhx_cal_light_wide .dhx_cal_larea {
                     	width: 530px;
             	}
             	.dhx_matrix_scell .dhx_scell_level1 {
                     	padding-left: 12px;
             	}
    	</style>
</body>
</html>

