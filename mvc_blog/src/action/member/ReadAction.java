package action.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import model.member.MemberDAO;
import model.member.MemberDTO;

public class ReadAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		//관리자가 list에서 id클릭하고 사용자 상세정보보기
		String id = request.getParameter("id");
		//일반사용자가 로그인 후 메뉴 목록에서 나의 정보 메뉴를 클릭하고 본인 정보 확인.
		String grade = (String)session.getAttribute("grade");
		if (id == null) {//관리자가 아닌 때
			id = (String)session.getAttribute("id");
		}
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.read(id);
		request.setAttribute("id", id);
		request.setAttribute("grade", grade);
		request.setAttribute("dto", dto);
		return "/views/member/read.jsp";
	}

}
