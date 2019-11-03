package bean;

public class Sender1 {

	public static void main(String[] args) {
		String id = "root";
		String pw = "1234";
		String name = "youth";
		String tel = "010";
		
		Data data = new Data();
		data.get(id, pw, name, tel);
	}

}
