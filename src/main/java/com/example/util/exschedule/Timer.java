package com.example.util.exschedule;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StopWatch;

 
//@Component
public class Timer {
  
 Logger logger = LoggerFactory.getLogger(this.getClass());
  
  //@PostConstruct
  public void init() {
    // watch.start();
  }
 
  
  //fixedRate 60분마다 실행 -24시간
  //fixedDelay  5000 완료된 시점 5초
  //@Scheduled(fixedRate = 1000*10*10*6*6*24*3)
  //@Scheduled(fixedRate = 5000)
  public void tick_1() throws Exception{	  	  
		
  }
 
  
  //60분마다 실행
  //@Scheduled(fixedRate = 1000*10*10*6*6*24)
  public void tick_2() throws Exception{
	  	
  }
  
  
}


