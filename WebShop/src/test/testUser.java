package test;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class testUser {

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		System.out.println("테스트전");
	}

	@After
	public void tearDown() throws Exception {
		System.out.println("테스트완료!");
	}

	@Test
	public void test() {
		test1 tst = new test1();
		assertTrue(tst.join("", "", "", ""));
		assertTrue(tst.join("kk1234", "1234", "kim", ""));
		assertTrue(tst.join("yjo9515", "1234", "윤준오", "yjo123@naver.com"));
	}

}
