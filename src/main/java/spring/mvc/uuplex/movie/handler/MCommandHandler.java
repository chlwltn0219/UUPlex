package spring.mvc.uuplex.movie.handler;

import java.text.ParseException;

import org.springframework.ui.Model;

public interface MCommandHandler {
	
	String process(Model model) throws ParseException;

}
