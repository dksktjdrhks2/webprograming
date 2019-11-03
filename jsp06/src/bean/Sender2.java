package bean;

public class Sender2 {

	public static void main(String[] args) {
		String id = "root";
		String pw = "1234";
		String name = "youth";
		String tel = "010";
		
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		dto.setPw(pw);
		dto.setName(name);
		dto.setTel(tel);
		
		Data data = new Data();
		data.get(dto);
	}

}


/*
 * DTO (Data Transfer Object), VO (Value Object) 
 * => 웹 프로그램은 각 측마다 데이터 전달이 많다. 
 * => 많은 수의 데이터를 전달 할 때 하나씩 여러개를 넘겨주는게 힘들다.
 * => 여러 데이터를 넣어서 전달하는 용도의 가방역할하는 클래스가 필요.
 * => 값을 넣을 때는 set()메소드를 사용 
 * => 값을 꺼낼 때는 get()메소드를 사용 
 * => DB테이블마다 하나씩 DTO를 만든다.
 */