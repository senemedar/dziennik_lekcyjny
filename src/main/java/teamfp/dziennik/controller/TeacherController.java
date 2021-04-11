package teamfp.dziennik.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class TeacherController {
    @RequestMapping(value = {"/teacherRegistration"}, method = RequestMethod.GET)
    public String index() {
        return "static/teacherRegistration";
    }
}
