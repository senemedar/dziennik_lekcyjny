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

	@GetMapping(value = {"/teachers", "teachers/{credentials}"})
	public String getTeachersList(Model model, @PathVariable(required = false) String credentials) {
		List<Teacher> teacherList = teacherRepository.findAll();
		if (credentials == null) {
			credentials = "pass";
		}
		model.addAttribute("teacher", teacherList);
		model.addAttribute("credentials");
		return "teachers/teacherList";
	}

	@PostMapping(value = {"/addTeacher"})
	public RedirectView postSaveTeacher(@ModelAttribute Teacher newTeacher) {
		teacherRepository.save(newTeacher);

		return new RedirectView("/teachers");
	}

	@PostMapping(value = {"/loginTeacher"})
	public RedirectView loginTeacher(
			@RequestParam("teacher_id") Long id,
			@RequestParam("password") String password
	) {
		if (teacherService.loginTeacher(id, password)) {
			return new RedirectView("dashboard/" + id);
		} else {
			return new RedirectView("teachers/fail"); // teachers
		}
	}

	@GetMapping(value = {"/dashboard/{id}"})
	public String getTeacherById(Model model, @PathVariable String id) {
		model.addAttribute("teacher", teacherService.getTeacher(Long.parseLong(id)));
		return "teachers/dashboard";
	}

}
