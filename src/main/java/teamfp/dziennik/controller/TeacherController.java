package teamfp.dziennik.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;
import teamfp.dziennik.model.Subject;
import teamfp.dziennik.model.Teacher;
import teamfp.dziennik.model.User;
import teamfp.dziennik.service.SubjectService;
import teamfp.dziennik.service.TeacherService;

import java.util.List;

@Controller
public class TeacherController {
	private final TeacherService teacherService;
	private final SubjectService subjectService;

//	@Autowired
//	TeacherRepository teacherRepository;

	public TeacherController(TeacherService teacherService, SubjectService subjectService) {
		this.teacherService = teacherService;
		this.subjectService = subjectService;
	}

	@GetMapping(value = {"/teacherRegistration"})
	public String registerTeacher(Model model) {
		model.addAttribute("password", User.generatePassword(12));
		model.addAttribute("subjectNamesList", subjectService.getSubjectNames());

		return "teachers/registerTeacher";
	}

	@GetMapping(value = {"/teachers", "teachers/{credentials}"})
	public String getTeachersList(Model model, @PathVariable(required = false) String credentials) {
		List<Teacher> teacherList = teacherService.getTeachersList();
		if (credentials == null) {
			credentials = "pass";
		}
		model.addAttribute("teacher", teacherList);
		model.addAttribute("credentials");
		return "teachers/teacherList";
	}

	@PostMapping(value = {"/addTeacher"})
	public RedirectView postSaveTeacher(
			@ModelAttribute Teacher newTeacher,
			@RequestParam("stringSubjectList") List<String> stringSubjectList
			) {

		List<Subject> subjectList = teacherService.createSubjectList(stringSubjectList);

		newTeacher.setSubjectList(subjectList);
		teacherService.saveTeacher(newTeacher);

		for (Subject subject : subjectList) {
			subject.setTeacher(newTeacher);
			subjectService.editSubject(subject, newTeacher);
		}

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

}
