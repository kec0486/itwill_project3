package com.iticket.app.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.support.WebApplicationContextUtils;

@WebListener
public class EventSessionListener implements HttpSessionListener {
	@Autowired
	//private VisitCountService visitCountService;
	private static Logger logger = LoggerFactory.getLogger(EventSessionListener.class);

	// 총 접속자 수
	public static int count;

	public static int getCount() {
		return count;
	}

	@Override
	public void sessionCreated(HttpSessionEvent event) {

		// 세션이 생성될 때 세션객체를 꺼내옴.
		HttpSession session = event.getSession();
		count++;
		logger.error("\n\tSESSION CREATED : {}, TOTAL ACCESSER : {}", session.getId(), count);
		/*
		 * WebApplicationContext wac =
		 * WebApplicationContextUtils.getRequiredWebApplicationContext(session.
		 * getServletContext()); //등록되어있는 빈을 사용할수 있도록 설정해준다 System.out.println(wac);
		 * //request를 파라미터에 넣지 않고도 사용할수 있도록 설정 VisitCountMapper visitCountMapper =
		 * (VisitCountMapper)wac.getBean("VisitCountMapper");
		 * System.out.println(visitCountMapper); VisitCountVo vo = new VisitCountVo();
		 * vo.setVisit_ip(req.getRemoteAddr());
		 * vo.setVisit_agent(req.getHeader("User-Agent"));//브라우저 정보
		 * vo.setVisit_refer(req.getHeader("referer"));//접속 전 사이트 정보
		 * visitCountMapper.insert(vo);
		 */

		ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(session.getServletContext());
		//visitCountService = (VisitCountService) context.getBean("visitCountService");
		HttpServletRequest req = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes())
				.getRequest();
		String agent = req.getHeader("User-Agent");
		String browser = null;

		if (agent.indexOf("Trident") > -1 || agent.indexOf("MSIE") > -1) { // IE

			if (agent.indexOf("Trident/7") > -1) {
				browser = "IE 11";
			} else if (agent.indexOf("Trident/6") > -1) {
				browser = "IE 10";
			} else if (agent.indexOf("Trident/5") > -1) {
				browser = "IE 9";
			} else if (agent.indexOf("Trident/4") > -1) {
				browser = "IE 8";
			} else if (agent.indexOf("edge") > -1) {
				browser = "IE edge";
			}
		} else if (agent.indexOf("Chrome") > -1) {
			browser = "Chrome";
		} else if (agent.indexOf("Opera") > -1) {
			browser = "Opera";
		} else if (agent.indexOf("whale") > -1) {
			browser = "NAVER Whale";
		} else if (agent.indexOf("iPhone") > -1 && agent.indexOf("Mobile") > -1) {
			browser = "iPhone";
		} else if (agent.indexOf("Android") > -1 && agent.indexOf("Mobile") > -1) {
			browser = "Android";
		}

		String os = null;

		if (agent.indexOf("NT 6.0") != -1)
			os = "Windows Vista/Server 2008";
		else if (agent.indexOf("NT 5.2") != -1)
			os = "Windows Server 2003";
		else if (agent.indexOf("NT 5.1") != -1)
			os = "Windows XP";
		else if (agent.indexOf("NT 5.0") != -1)
			os = "Windows 2000";
		else if (agent.indexOf("NT") != -1)
			os = "Windows NT";
		else if (agent.indexOf("9x 4.90") != -1)
			os = "Windows Me";
		else if (agent.indexOf("98") != -1)
			os = "Windows 98";
		else if (agent.indexOf("95") != -1)
			os = "Windows 95";
		else if (agent.indexOf("Win16") != -1)
			os = "Windows 3.x";
		else if (agent.indexOf("Windows") != -1)
			os = "Windows";
		else if (agent.indexOf("Linux") != -1)
			os = "Linux";
		else if (agent.indexOf("Macintosh") != -1)
			os = "Macintosh";
		else
			os = "";
		System.out.println(os);
		//VisitCountVo vo = new VisitCountVo(0, req.getRemoteAddr(), null, req.getHeader("REFERER"), browser, os);
		//session.setAttribute(name, value);
		try {
			//visitCountService.insert(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		/*
		 * vo.setVisit_ip(req.getRemoteAddr());
		 * vo.setVisit_agent(req.getHeader("User-Agent"));//브라우저 정보
		 * vo.setVisit_refer(req.getHeader("Referrer"));//접속 전 사이트 정보 try {
		 * visitCountService.insert(vo); } catch (Exception e) { e.printStackTrace(); }
		 */
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent event) {
		// 세션이 소멸될 때
		count--;
		if (count < 0)
			count = 0;

		HttpSession session = event.getSession();
		logger.error("\n\tSESSION DESTROYED : {}, TOTAL ACCESSER : {}", session.getId(), count);
	}

}