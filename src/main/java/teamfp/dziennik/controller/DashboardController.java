package teamfp.dziennik.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import teamfp.dziennik.service.ClassroomService;
import teamfp.dziennik.service.TeacherService;

@Controller
public class DashboardController {
	private final TeacherService teacherService;
	private final ClassroomService classroomService;

	public DashboardController(TeacherService teacherService, ClassroomService classroomService) {
		this.teacherService = teacherService;
		this.classroomService = classroomService;
	}


	@GetMapping(value = {"/dashboard/{id}"})
	public String getTeacherById(Model model, @PathVariable String id) {
		model.addAttribute("teacher", teacherService.getTeacher(Long.parseLong(id)));
		model.addAttribute("teacherList", teacherService.getTeachersList());
		model.addAttribute("classroomList", classroomService.getClassroomList());

		return "teachers/dashboard";
	}

}
