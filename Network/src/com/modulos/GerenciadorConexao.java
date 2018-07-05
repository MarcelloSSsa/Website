package com.modulos;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.AsyncResult;
import org.springframework.stereotype.Service;

@Service
public class GerenciadorConexao implements InitializingBean {
	
	public void init(){
		
		try {
		
			for (int i = 0; i < 100; i++) {
				System.out.println(i);				
				Thread.sleep(2000);	
			}
		
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void destroy()
	{
		System.out.println("Bean Destroy");
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		// TODO Auto-generated method stub
		
	}

}
