package teamfp.dziennik.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import teamfp.dziennik.service.ClassroomService;
import teamfp.dziennik.service.StudentService;
import teamfp.dziennik.service.TeacherService;

@Controller
public class StudentController {
	private final StudentService studentService;
	private final TeacherService teacherService;
	private final ClassroomService classroomService;

	public StudentController(StudentService studentService, TeacherService teacherService, ClassroomService classroomService) {
		this.studentService = studentService;
		this.teacherService = teacherService;
		this.classroomService = classroomService;
	}


	@GetMapping(value = {"/addStudent/{teacherId}"})
	public String registerNewTeacher(Model model, @PathVariable String teacherId) {
		model.addAttribute("teacher", teacherService.getTeacher(Long.parseLong(teacherId)));
		model.addAttribute("studentList", studentService.getStudentList());
		model.addAttribute("classroomList", classroomService.getClassroomList());
//		model.addAttribute("classroomList", new ArrayList<>());
		model.addAttribute("password", studentService.generatePassword(5));

		return "/student/studentRegistration";
	}

}
