package teamfp.dziennik.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import teamfp.dziennik.service.SubjectService;
import teamfp.dziennik.service.TeacherService;

@Controller
public class SubjectController {
	private final SubjectService subjectService;
	private final TeacherService teacherService;

	public SubjectController(SubjectService subjectService, TeacherService teacherService) {
		this.subjectService = subjectService;
		this.teacherService = teacherService;
	}

	@GetMapping(value = {"/addSubject/{teacherId}"})
	public String addNewSubject(Model model, @PathVariable String teacherId) {
		model.addAttribute("teacher", teacherService.getTeacher(Long.parseLong(teacherId)));
		model.addAttribute("subjectList", subjectService.getSubjectNames());

		return "subject/addSubject";
	}
}
