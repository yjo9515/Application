package test;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class testAdmin {

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
		test2 tst = new test2();
		assertTrue(tst.login("ddk", ""));
		assertTrue(tst.login("", ""));
		assertTrue(tst.login("yjo9515", "1234"));
	}

}
