package teamfp.dziennik.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;
import teamfp.dziennik.model.Teacher;
import teamfp.dziennik.repository.TeacherRepository;
import teamfp.dziennik.service.TeacherService;

import java.util.List;

@Controller
public class TeacherController {
	private final TeacherService teacherService;

	@Autowired
	TeacherRepository teacherRepository;

	public TeacherController(TeacherService teacherService) {
		this.teacherService = teacherService;
	}

	@GetMapping(value = {"/teacherRegistration"})
    public String index() {
        return "teachers/teacherRegistration";
    }

    @GetMapping(value = "/teachers")
	public String getTeachersList(Model model) {
		List<Teacher> teacherList = teacherRepository.findAll();
		model.addAttribute("teacher", teacherList);
		return "teachers/teacherList";
	}

    @PostMapping(value = {"/addTeacher"})
	public RedirectView postSaveTeacher(@ModelAttribute Teacher newTeacher) {
    	teacherRepository.save(newTeacher);

    	return new RedirectView("/teachers");
	}
}
