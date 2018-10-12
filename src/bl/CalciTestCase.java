package bl;

import static org.junit.Assert.*;

import java.util.Arrays;
import java.util.Collection;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;

import jdk.nashorn.internal.ir.annotations.Ignore;

@RunWith(Parameterized.class)
public class CalciTestCase {

	Calculator obj = new Calculator();
	int first,second,eanswer;
	
	
	
	public CalciTestCase(int a,int b,int c) {
		this.first = a;
		this.second = b;
		this.eanswer = c;
	}
	
	@BeforeClass
	public static void fun1() {
		System.out.println("Hello b4 class");
	}
	
	@Before
	public void fun() {
		System.out.println("Hello");
	}

	@Test
	public void test() {
		int ret = obj.add(first, second);
		
		assertEquals(eanswer, ret);
		//fail("Not yet implemented");
	}
	@Test(timeout=1000)
	@Ignore
	public void test1() {
		int ret = obj.sub(1000, 100);
		
		assertEquals(900, ret);
		//fail("Not yet implemented");
	}
	
	@Parameters
	public static Collection mydata() {
		
		Object obj [][] = {
				{10,2,12},
				{100,900,1000},
				{1,1,2},
				{-1,-2,-3},
				{7,7,14},
				{900,0,900}
		};
		return Arrays.asList(obj);
	}
	
	
	
	
	
	

}
