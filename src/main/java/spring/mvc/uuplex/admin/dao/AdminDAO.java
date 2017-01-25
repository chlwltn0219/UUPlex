package spring.mvc.uuplex.admin.dao;

<<<<<<< HEAD
=======
import java.util.ArrayList;
import java.util.Map;

>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
import spring.mvc.uuplex.admin.dto.MemberDTO;

public interface AdminDAO {
		
<<<<<<< HEAD
	public int idCheck(String memId); // 회원가입
	public int insert(MemberDTO dto); // 회원가입
=======
	public int idCheck(String memId); // id중복확인
	public int insert(MemberDTO dto); // 회원가입
	public Map<String, Object> pwdCheck(Map<String, Object> daoMap); // 로그인
	public int idCode(String memId); // 코드값 가져오기
	
	public ArrayList<MemberDTO> memberList(); // 회원리스트
	public MemberDTO memberView(String memId); // 회원개인정보

>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a

}
