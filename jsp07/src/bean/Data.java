package bean;

public class Data {
	public void get(MemberDTO m_dto) {
		System.out.println("받은 id : " + m_dto.getId());
		System.out.println("받은 pw : " + m_dto.getPw());
		System.out.println("받은 name : " + m_dto.getName());
		System.out.println("받은 tel : " + m_dto.getTel());
	}
	
	public void get(String id, String pw, String name, String tel) {
		System.out.println("받은 id : " + id);
		System.out.println("받은 pw : " + pw);
		System.out.println("받은 name : " + name);
		System.out.println("받은 tel : " + tel);
	}
}
