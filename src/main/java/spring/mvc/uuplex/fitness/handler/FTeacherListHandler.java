package spring.mvc.uuplex.fitness.handler;

public class FTeacherListHandler implements FCommandHandler {

	@Override
	public String execute() {
		
		String viewPage = "fitness/manage/teacher_list";
		
		return viewPage;
	}

}
