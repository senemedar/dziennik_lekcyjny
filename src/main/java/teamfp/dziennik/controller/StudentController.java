package teamfp.dziennik.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import teamfp.dziennik.service.StudentService;

@Controller
public class StudentController {
	private StudentService studentService;

	public StudentController(StudentService studentService) {
		this.studentService = studentService;
	}


	@GetMapping(value = {"/addStudent"})
	public String registerNewTeacher() {
		return "/student/studentRegistration";
	}


}
