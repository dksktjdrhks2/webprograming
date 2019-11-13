package bean;

import java.io.FileWriter;
import java.io.IOException;

public class HttpTest2 {

	public static void main(String[] args) {
		//외부 자원 연결할 때는 예외 처리 해주어야 한다. (꼭!)
		try {
			FileWriter file = new FileWriter("http2.txt");
			file.write("200\n");
			file.write("\n");
			file.write("자동차 검색 결과 html문서\n");
			file.close();
		} catch (IOException e) {
			System.out.println("에러발생!!");
		}
	}

}
