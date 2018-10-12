package bl;

import static org.testng.Assert.assertEquals;

import org.testng.annotations.Test;
import bl.Calculator;

public class NewTest {
  @Test
  public void addFunctionTest() {
	  System.out.println("Test case executed");
	  Calculator calci = new Calculator();
	  int ret = calci.add(3, 10);
	  
	  assertEquals(ret, 13);
  }
  
  @Test
  public void subFunctionTest() {
	  System.out.println("Test case executed");
	  Calculator calci = new Calculator();
	  int ret = calci.add(10, 3);
	  
	  assertEquals(ret, 7);
  }
}
