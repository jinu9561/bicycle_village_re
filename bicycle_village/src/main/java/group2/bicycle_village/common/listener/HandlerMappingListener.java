package group2.bicycle_village.common.listener;

import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;

import group2.bicycle_village.controller.Controller;
import group2.bicycle_village.controller.RestController;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
/*
@WebListener
public class HandlerMappingListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        Map<String, RestController> map = new HashMap<String, RestController>();
        Map<String, Class<?> > clzMap = new HashMap<String, Class<?>>();

        ResourceBundle rb = ResourceBundle.getBundle("restController");

        try {
            for(String key : rb.keySet()) {
                String value = rb.getString(key);
                Class<?> className = Class.forName(value);
                RestController controller = (RestController)className.getDeclaredConstructor().newInstance();
                map.put(key, controller);
                clzMap.put(key, className);
            }
        }catch (Exception ex) {
            ex.printStackTrace();
        }

        //모든 영역에서 map을 사용할수 있도록 ServletContext영역에 저장한다.
        ServletContext application = sce.getServletContext();
        application.setAttribute("restMap", map);
        application.setAttribute("restClzMap", clzMap);


    }
*/

@WebListener
public class HandlerMappingListener implements ServletContextListener {
	//was구동.png 그림에서 봤을 때 4)Listener로딩과 5)Servlet생성 사이에
	//@Filter를 생성한다.

    public void contextDestroyed(ServletContextEvent sce)  { }

	
    public void contextInitialized(ServletContextEvent e)  { 
    	
    	
    	//생성해야하는 객체들의 정보를 가지고있는 ~.properties파일을 로딩!
    	ServletContext application = e.getServletContext();
    	
    	ResourceBundle rb =
    			ResourceBundle.getBundle("actionMapping"); //actionMapping.properties 로딩

    	try {
    		
    		Map<String, Controller> map = new HashMap<String, Controller>();
    		Map<String, Class<?> > clzMap = new HashMap<String, Class<?>>();
    		
	    	for( String key :  rb.keySet() ){
	    		String value = rb.getString(key);
	    		Class<?> className = Class.forName(value);
	    		Controller con = (Controller)className.getDeclaredConstructor().newInstance();
	    		map.put(key, con);
	    		clzMap.put(key, className);
	    		
	    		System.out.println(key +" = " + con);
	    	}
	    	
	    	//현재 프로젝트의 모든 영역에서 map을 사용할수 있도록 ServletContext영역에 저정한다.
	    	application.setAttribute("map", map);
	    	application.setAttribute("clzMap", clzMap);
	    	application.setAttribute("path",  application.getContextPath() ); //${path}
	    	
    	}catch (Exception ex) {
			ex.printStackTrace();
		}
    	
    	
    	
    }//methodEnd
}
