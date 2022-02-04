package jspbook.ch04;

public class Calc {
	
	//멤버 변수
	int result = 0;
	
	// 생성자 오버로딩
	public Calc(int num1, int num2, String op) {

		if (op.equals("+")) {
			result = num1 + num2;
		} else if (op.equals("-")) {
			result = num1 - num2;
		} else if (op.equals("*")) {
			result = num1 * num2;
		} else if (op.equals("/")) {
			result = num1 / num2;
		}
	}
	
	// 계산 결과값
	public int getResult() {
		return result;
	}
	
}
