package bean;

import java.io.FileWriter;
import java.io.IOException;

public class HttpTest {

	public static void main(String[] args) {
		//외부 자원 연결할 때는 예외 처리 해주어야 한다. (꼭!)
		try {
			FileWriter file = new FileWriter("http.txt");
			file.write("http://www.naver.com\n");
			file.write("\n");
			file.write("자동차\n");
			file.close();
		} catch (IOException e) {
			System.out.println("에러발생!!");
		}
	}

}
