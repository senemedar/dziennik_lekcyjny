package teamfp.dziennik.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;
import teamfp.dziennik.model.Classroom;
import teamfp.dziennik.model.Student;
import teamfp.dziennik.model.Teacher;
import teamfp.dziennik.repository.ClassroomRepository;
import teamfp.dziennik.service.ClassroomService;
import teamfp.dziennik.service.StudentService;
import teamfp.dziennik.service.TeacherService;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ClassroomController {
	private final ClassroomService classroomService;
	private final TeacherService teacherService;
	private final StudentService studentService;

	public ClassroomController(ClassroomService classroomService, TeacherService teacherService, StudentService studentService) {
		this.classroomService = classroomService;
		this.teacherService = teacherService;
		this.studentService = studentService;
	}

	@GetMapping(value = {"/addClassroom/{id}"})
	public String getAddClassroom(Model model, @PathVariable String id) {

		Teacher teacher = teacherService.getTeacher(Long.parseLong(id));
		List<Teacher> teacherList = teacherService.getTeachersList();
		List<Student> studentList = studentService.getStudentsList();

		model.addAttribute(teacher);
		model.addAttribute(teacherList);
		model.addAttribute(studentList);

		return "classroom/addClassroom";
	}

	@PostMapping(value = {"/addClassroom"})
	public RedirectView postSaveClassroom(@ModelAttribute Classroom newClassroom) {
		classroomService.saveClassroom(newClassroom);

		return new RedirectView("/teachers");
	}

}
