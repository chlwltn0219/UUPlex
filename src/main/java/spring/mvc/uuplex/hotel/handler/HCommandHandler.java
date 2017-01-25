package spring.mvc.uuplex.hotel.handler;

import javax.servlet.http.HttpServletRequest;
import org.springframework.ui.Model;

public interface HCommandHandler {
	public String process(Model model);
}
