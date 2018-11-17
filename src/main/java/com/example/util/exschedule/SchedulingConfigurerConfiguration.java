package com.example.util.exschedule;

import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.SchedulingConfigurer;
import org.springframework.scheduling.concurrent.ThreadPoolTaskScheduler;
import org.springframework.scheduling.config.ScheduledTaskRegistrar;
 
/**
 * @author Choi Jun-Ho(braverokmc79@gmail.com)
   @since 2018. 9. 22. 오전 1:13:05
 */
@Configuration
public class SchedulingConfigurerConfiguration implements SchedulingConfigurer {
 
    @Override
    public void configureTasks(ScheduledTaskRegistrar taskRegistrar) {
        ThreadPoolTaskScheduler taskScheduler = new ThreadPoolTaskScheduler();
        taskScheduler.setPoolSize(100);
        taskScheduler.initialize();
        taskRegistrar.setTaskScheduler(taskScheduler);
    }
}


/*스프링부트를 이용하여 애플리케이션 개발중
@Scheduled 애노테이션을 이용하여 몇개의 스케쥴을 등록했는데,
1004lucifer
겹치는 시간이 발생 시 동시에 2~3개가 실행되는게 아니라
기존 돌고있던 스케쥴이 끝나고 다른 스케쥴이 돌아버리거나 시간이 너무 경과한 경우 돌지 않는 스케쥴도 발생했었다.


원인

 기본적으로 스케쥴러가 사용할 수 있는 Thread 갯수가 1개밖에 없어서 여러개의 스케쥴을 등록해도 기존에 돌고있던게 끝나지 않으면 다른 스케쥴이 동작하지 않았다.


해결방법

XML 설정파일에 pool size 를 설정하는 방법도 있지만
 스프링부트를 사용하면서 가급적 XML 파일 없이 셋팅 하는걸 선호하기에 다른방법을 찾아봤다.
1004lucifer
 application.properties 나 application.yml 파일에 셋팅하는게 없을까 싶었는데 찾지 못하고 JAVA 파일로 설정하는 방법밖에 찾을 수가 없었다.
 (아래의 파일을 추가해서 Pool Size 설정해서 이슈 해결)*/