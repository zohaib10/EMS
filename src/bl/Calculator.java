package bl;

public class Calculator {
	public int add(int a, int b) {
		return a+b;
	}
	public int sub(int a, int b) {
		return a-b;
	}
	
	public static void main(String [] args) {
		Calculator obj = new Calculator();
		int ret = obj.add(10, 20);
		if(ret == 30) {
			System.out.println("Test Case Passed");
		}else {
			System.out.println("Test Case Failed");
		}
	}
}
