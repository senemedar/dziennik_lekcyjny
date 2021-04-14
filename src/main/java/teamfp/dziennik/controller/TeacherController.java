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

	@PostMapping(value = {"/loginTeacher"})
	public RedirectView loginTeacher(
			@RequestParam("teacher_id") Long id,
			@RequestParam("password") String password
			) {

//		Teacher teacher = teacherService.getTeacher(id);
//		System.out.println("Teacher from controller: " + teacher.getFirstName());
//		System.out.println("Pass from controller: " + password);
//		System.out.println("Pass from teacher: " + teacher.getPassword());
		System.out.println(teacherService.loginTeacher(id, password));
		return new RedirectView("dashboard/" + id);
	}

	@GetMapping(value = {"/dashboard/{id}"})
	public String getTeacherById(Model model, @PathVariable String id) {
		model.addAttribute("teacher", teacherService.getTeacher(Long.parseLong(id)));
		return "teachers/dashboard";
	}

}
