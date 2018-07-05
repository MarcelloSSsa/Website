package com.dhtmlx.booking.controller;
 
import com.dhtmlx.planner.DHXEvent;
 
public class Event extends DHXEvent {
 
           	public String contacts;
           	public String notes;
           	public String table;
 
 
           	public String getContacts() {
                          	return contacts;
           	}
           	public void setContacts(String contacts) {
                          	this.contacts = contacts;
           	}
 
           	public String getTable() {
                          	return table;
           	}
           	public void setTable(String table) {
                          	this.table = table;
           	}
 
 
           	public String getNotes() {
                          	return notes;
           	}
           	public void setNotes(String notes) {
                          	this.notes = notes;
           	}
}
