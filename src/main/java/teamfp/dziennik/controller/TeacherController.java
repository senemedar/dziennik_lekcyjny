package teamfp.dziennik.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TeacherController {
    @RequestMapping(value = {"/teacherRegistration"}, method = RequestMethod.GET)
    public String index() {
        return "static/teacherRegistration";
    }
}
