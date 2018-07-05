package com.conexao.entidades;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import com.conexao.BD;



public class Data {
	String result;
	int seg = 0, ter = 0, qua = 0, qui = 0, sex = 0, sab = 0, dom = 0;
	int[] maior = new int [7];
	
   
	private String data;
	
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	
public ArrayList<Data> ConsultarData(String start_date, String end_date) throws Exception{
		
		ArrayList<Data> lista = new ArrayList<Data>();
		
		try{
			String comandoSQL;
			BD conexao = new BD();
			
			comandoSQL = "SELECT * FROM events WHERE start_date BETWEEN '"+start_date+"' AND '"+end_date+"'";
			
			ResultSet consulta = conexao.execConsulta(comandoSQL);
							
			while(consulta.next()){				
				Data data = new Data();				
				data.setData(consulta.getString("start_date"));	
				data.diaSemana(start_date);
				lista.add(data);
			}
	
			conexao.fechar();
		}
		catch (SQLException e){
			throw new Exception("Erro na leitura das datas.");
	}
		return lista;
}	

public String diaSemana(String d){
	
    
    try{
    	
    	
        Date data = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(d);  
        String data2 = new SimpleDateFormat("yy/MM/dd").format(data);  
    	
            SimpleDateFormat df = new SimpleDateFormat( "yy/MM/dd" );  
            Date dat = df.parse(data2);   
            df.applyPattern( "EEE" );  
            String day = df.format( dat ); 
            
            if(day.compareTo("Sáb") == 0)
            {
            	sab++;
                System.out.println(day);
                result = day;                
            }
            
            if(day.compareTo("Dom")==0)
            {
            	dom++;
                System.out.println(day);
                result = day;               
            }
            
            if(day.compareTo("Seg")==0)
            {
            	seg++;
                System.out.println(day);
                result = day;                
            }
            
            if(day.compareTo("Ter")==0)
            {
            	ter++;
                System.out.println(day);
                result = day;                
            }
            
            if(day.compareTo("Qua")==0)
            {
            	qua++;
                System.out.println(day);
                result = day;                
            }
            
            if(day.compareTo("Qui")==0)
            {
            	qui++;
                System.out.println(day);
                result = day;                
            }
            
            if(day.compareTo("Sex")==0)
            {
            	sex++;
                System.out.println(day);
                result = day;                
            }  
	
	
	
}catch(Exception e){
	e.printStackTrace();
 }	finally{
	 
	 maior[0] = seg;
	 maior[1] = ter;
	 maior[2] = qua;
	 maior[3] = qui;
	 maior[4] = sex;
	 maior[5] = sab;
	 maior[6] = dom;
	 
 }
	return result;
}

public String maiorDia(){
	int count = -999999;
	int aux = -1;
	String DiadaSemana = null;
	for (int i = 0; i < 7; i++)
	{
		System.out.println(maior[i]);
		if (maior[i] > count){
			count =  maior[i];
			aux = i;
		}		
	}
	
	if(aux == 0)
		DiadaSemana = ("Segunda");
	if(aux == 1)
		DiadaSemana = ("Terça");
	if(aux == 2)
		DiadaSemana = ("Quarta");
	if(aux == 3)
		DiadaSemana = ("Quinta");
	if(aux == 4)
		DiadaSemana = ("Sexta");
	if(aux == 5)
		DiadaSemana = ("Sábado");
	if(aux == 6)
		DiadaSemana = ("Domingo");
	
	return DiadaSemana;	
}
}