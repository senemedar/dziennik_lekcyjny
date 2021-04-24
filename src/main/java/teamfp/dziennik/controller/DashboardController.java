package teamfp.dziennik.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import teamfp.dziennik.model.Subject;
import teamfp.dziennik.model.Teacher;
import teamfp.dziennik.service.ClassroomService;
import teamfp.dziennik.service.StudentService;
import teamfp.dziennik.service.SubjectService;
import teamfp.dziennik.service.TeacherService;

import java.util.ArrayList;
import java.util.List;

@Controller
public class DashboardController {
	private final TeacherService teacherService;
	private final ClassroomService classroomService;
	private final StudentService studentService;
	private final SubjectService subjectService;

	public DashboardController(TeacherService teacherService, ClassroomService classroomService, StudentService studentService, SubjectService subjectService) {
		this.teacherService = teacherService;
		this.classroomService = classroomService;
		this.studentService = studentService;
		this.subjectService = subjectService;
	}

	@GetMapping(value = {"/dashboard/{teacherId}"})
	public String getTeacherById(Model model, @PathVariable String teacherId) {

		Teacher teacher = teacherService.getTeacher(Long.parseLong(teacherId));
		if (teacher == null) {
			model.addAttribute("teacher", teacherService.getTeachersList());
			return "teachers/teacherList";
		} else {
			model.addAttribute("teacherList", teacherService.getTeachersList());
			model.addAttribute("teacher", teacher);
			model.addAttribute("classroomList", classroomService.getClassroomList());
			model.addAttribute("studentList", studentService.getStudentList());
			model.addAttribute("subjectList", subjectService.getSubjectList(teacher));

			List<Subject> list = subjectService.getSubjectList();
			for (Subject subject : list) {
				System.out.println(subject.getTeacher());

			}

			return "dashboard/dashboard";
		}
	}

}
