package spring.mvc.uuplex.movie.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.MovieDAO;

@Service
public class AddReviewHandler implements MCommandHandler {

	@Autowired
	MovieDAO dao;

	@Override
	public String process(Model model) {
		// TODO Auto-generated method stub
		return null;
	}

}
