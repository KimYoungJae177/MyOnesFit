package osf.spring.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringJUnit4ClassRunner.class)
//테스트코드를 실행할때 웹을 흉내내는 서버 실행
@WebAppConfiguration
//서버 구축하기 위한 필요한 설정 가져오기
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
public class TestClient {

	private static final Logger logger = LoggerFactory.getLogger(TestClient.class);
	//출력되는 곳을 콘솔뿐만이 아니라 다른 매체에 출력할수 있도록 돌려주는 기능	

	@Autowired
	private WebApplicationContext wac; //웹 환경 구성 역할의 인스턴스
	private MockMvc mockMvc;

	@Before
	//테스트 코드보다 먼저 실행되는 어노테이션
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build();
	}

	/*
	@Test
	public void BuyList() {
		try {
			mockMvc.perform(MockMvcRequestBuilders.post("/admin/buyList")).andDo(MockMvcResultHandlers.print())
					.andExpect(MockMvcResultMatchers.status().is(200));

			logger.info("테스트 성공");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.error("테스트 실패 : " + e.getMessage());
			e.printStackTrace();
		}
	}
	*/

	
	@Test
	public void BuyListUpdate() {
		try {
			mockMvc.perform(MockMvcRequestBuilders.post("/admin/BuyListUpdate").param("bseq", "1").param("status", "").param("send_money_yn", "")
					.param("send_number", "")).andDo(MockMvcResultHandlers.print()).andExpect(MockMvcResultMatchers.status().is(200));

			logger.info("테스트 성공");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.error("테스트 실패 : " + e.getMessage());
			e.printStackTrace();
		}
	}

	@Test
	public void buyListDelete() {
		try {
			mockMvc.perform(MockMvcRequestBuilders.post("/admin/buyListDelete").param("bseq", "1")).andDo(MockMvcResultHandlers.print())
					.andExpect(MockMvcResultMatchers.status().is(200));

			logger.info("테스트 성공");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.error("테스트 실패 : " + e.getMessage());
			e.printStackTrace();
		}
	}

	@Test
	public void question() {
		try {
			mockMvc.perform(MockMvcRequestBuilders.post("/admin/question")).andDo(MockMvcResultHandlers.print())
					.andExpect(MockMvcResultMatchers.status().is(200));

			logger.info("테스트 성공");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.error("테스트 실패 : " + e.getMessage());
			e.printStackTrace();
		}
	}

	@Test
	public void AnswerInput() {
		try {
			mockMvc.perform(MockMvcRequestBuilders.post("/admin/AnswerInput").param("bno", "").param("aInput", ""))
					.andDo(MockMvcResultHandlers.print()).andExpect(MockMvcResultMatchers.status().is(200));

			logger.info("테스트 성공");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.error("테스트 실패 : " + e.getMessage());
			e.printStackTrace();
		}
	}

	@Test
	public void popup() {
		try {
			mockMvc.perform(MockMvcRequestBuilders.post("/admin/popup")).andDo(MockMvcResultHandlers.print())
					.andExpect(MockMvcResultMatchers.status().is(200));

			logger.info("테스트 성공");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.error("테스트 실패 : " + e.getMessage());
			e.printStackTrace();
		}
	}

	@Test
	public void popupInput() {
		try {
			mockMvc.perform(MockMvcRequestBuilders.post("/admin/popupInput").param("pdto", "").param("file", "")).andDo(MockMvcResultHandlers.print())
					.andExpect(MockMvcResultMatchers.status().is(200));

			logger.info("테스트 성공");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.error("테스트 실패 : " + e.getMessage());
			e.printStackTrace();
		}
	}

	@Test
	public void popupShow() {
		try {
			mockMvc.perform(MockMvcRequestBuilders.post("/admin/popupShow").param("popup_seq", "").param("show_yn", ""))
					.andDo(MockMvcResultHandlers.print()).andExpect(MockMvcResultMatchers.status().is(200));

			logger.info("테스트 성공");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.error("테스트 실패 : " + e.getMessage());
			e.printStackTrace();
		}
	}

	@Test
	public void pupupDelete() {
		try {
			mockMvc.perform(MockMvcRequestBuilders.post("/admin/pupupDelete").param("popup_seq", "")).andDo(MockMvcResultHandlers.print())
					.andExpect(MockMvcResultMatchers.status().is(200));

			logger.info("테스트 성공");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.error("테스트 실패 : " + e.getMessage());
			e.printStackTrace();
		}
	}

}
