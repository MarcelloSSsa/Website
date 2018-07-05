package com.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Random;

public class Util {
	
	public String randomString (int length){
		
		char[] chars = "abcdefghijklmnopqrstuvwxyz".toCharArray();
		StringBuilder sb = new StringBuilder();
		Random random = new Random();
		for (int i = 0; i < length; i++) {
			char c = chars[random.nextInt(chars.length)];
			sb.append(c);
		}
		String output = sb.toString();
		
		return output;
		
	}
	
	//read properties
	public static Properties getProp() throws IOException {
		Properties props = new Properties();
		FileInputStream file = new FileInputStream(
				//"./properties/config.properties");
				"C:\\Enacom\\properties\\config.properties");
		props.load(file);
		return props;

	}
	
	public static <E> List<E> duplicateListItens(List<E> list)
	{
		List<E> newList = new ArrayList<E>();
		int i = 0;
		
		for (E obj : list) {
			newList.add(obj);
	
			if(i == list.size()-1){
				break;
			}
	
			if(i == 0){
				i++;
				continue;
			}
			
			newList.add(obj);
			i++;
		}
		
		return newList;		
	}
	
	public static List<Float> duplicateFloatListItens(List<Float> list, boolean invertValue)
	{
		List<Float> newList = new ArrayList<Float>();
		int i = 0;
		
		for (Float obj : list) {
			
			if(i == 0){
				i++;
				newList.add(obj);
				continue;
			}

			if(i == list.size()-1){
				newList.add(obj);
				break;
			}

			if(invertValue) newList.add((float) (obj == 1.0 ? 0 : 1));
			else newList.add(obj);	
		
			
			newList.add(obj);
			
			i++;
		}
		
		return newList;		
	}
	
	private String ligadoOuDesligado (float valor)
	{
		return valor == 1.0 ? "Ligado" : "Desligado";
	}

}
