package com.dhtmlx.booking.controller;
 
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Session;
 
 
import com.dhtmlx.planner.DHXEv;
import com.dhtmlx.planner.DHXEventsManager;
import com.dhtmlx.planner.DHXStatus;
import com.dhtmlx.planner.data.DHXCollection;
 
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
 
public class CustomEventsManager extends DHXEventsManager {
 
           	public CustomEventsManager(HttpServletRequest request) {
                          	super(request);
           	}
 
           	public Iterable<DHXEv> getEvents() {
                          	Session session = HibernateUtil.getSessionFactory().openSession();
                          	List<DHXEv> evs = new ArrayList<DHXEv>();
                          	try {
                                        	session = HibernateUtil.getSessionFactory().openSession();
                                        	evs = session.createCriteria(Event.class).list();
                          	} catch (RuntimeException e) {
                                        	e.printStackTrace();
                          	} finally{
                                        	session.flush();
                                        	session.close();
                          	}
                          	
	       	return evs;
           	}
 
           	@Override
           	public DHXStatus saveEvent(DHXEv event, DHXStatus status) {
                          	Session session = HibernateUtil.getSessionFactory().openSession();
                          	try {
                                        	session = HibernateUtil.getSessionFactory().openSession();
                                        	session.beginTransaction();
 
                                        	if (status == DHXStatus.UPDATE)
                                                       	session.update(event);
                                        	else if (status == DHXStatus.DELETE)
                                                       	session.delete(event);
                                        	else if (status == DHXStatus.INSERT)
                                                       	session.save(event);
 
                                        	session.getTransaction().commit();
                          	} catch (RuntimeException e) {
                                        	e.printStackTrace();
                          	} finally{
                                        	session.flush();
                                        	session.close();
                          	}
                          	return status;
           	}
 
           	@Override
           	public DHXEv createEvent(String id, DHXStatus status) {
                          	return new Event();
           	}
 
           	@Override
           	public HashMap<String, Iterable<DHXCollection>> getCollections() {
                          	ArrayList<DHXCollection> tables_tree = new ArrayList<DHXCollection>();
                          	Table c1 = new Table("1-2", "1-2 people", 2, true);
                          	Table c2 = new Table("3-6", "3-6 people", 5, true);
 
                          	c1.addChild(new Table("table1", "Table 1", 2, true));
                          	c1.addChild(new Table("table2", "Table 2", 2, true));
                          	c1.addChild(new Table("table3", "Table 3", 2, false));
                          	c1.addChild(new Table("table4", "Table 4", 2, false));
                          	c2.addChild(new Table("table5", "Table 5", 4, true));
                          	c2.addChild(new Table("table6", "Table 6", 4, true));
                          	c2.addChild(new Table("table7", "Table 7", 6, false));
                          	c2.addChild(new Table("table8", "Table 8", 6, false));
 
                          	tables_tree.add(c1);
                          	tables_tree.add(c2);
 
                          	HashMap<String,Iterable<DHXCollection>> c = new HashMap<String,Iterable<DHXCollection>>();
                          	c.put("tables_tree", tables_tree);
 
                          	ArrayList<DHXCollection> table_lightbox = new ArrayList<DHXCollection>();
                          	table_lightbox.add(new Table("table1", "Table 1", 2, false));
                          	table_lightbox.add(new Table("table2", "Table 2", 2, false));
                          	table_lightbox.add(new Table("table3", "Table 3", 2, false));
                          	table_lightbox.add(new Table("table4", "Table 4", 2, true));
                          	table_lightbox.add(new Table("table5", "Table 5", 4, false));
                          	table_lightbox.add(new Table("table6", "Table 6", 4, true));
                          	table_lightbox.add(new Table("table7", "Table 7", 6, false));
                          	table_lightbox.add(new Table("table8", "Table 8", 7, true));
                          	c.put("tables", table_lightbox);
                          	return c;
           	}
}
