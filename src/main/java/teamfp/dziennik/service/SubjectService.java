package teamfp.dziennik.service;

import org.springframework.stereotype.Service;
import teamfp.dziennik.model.Student;
import teamfp.dziennik.model.Subject;
import teamfp.dziennik.model.Teacher;
import teamfp.dziennik.model.enums.SubjectName;
import teamfp.dziennik.repository.SubjectRepository;

import java.util.ArrayList;
import java.util.List;

@Service
public class SubjectService {
	private final SubjectRepository subjectRepository;

	public SubjectService(SubjectRepository subjectRepository) {
		this.subjectRepository = subjectRepository;
	}

	public List<Subject> getSubjectList() {
		return subjectRepository.findAll();
	}

    public void editSubject(Subject subject, Teacher teacher) {
        Subject editedSubject = new Subject(
                subject.getId(),
				subject.getGradeList(),
				subject.getStudent(),
				teacher,
				subject.getAttendance(),
				subject.getSubjectName()
        );
        subjectRepository.save(editedSubject);
    }

	public List<Subject> getSubjectList(Teacher teacher) {

		return teacher.getSubjectList();
	}

	public List<String> getSubjectNames() {
		List<String> subjectNames = new ArrayList<>();
		for (SubjectName name : SubjectName.values()) {
			subjectNames.add(name.getSubjectName());
		}

		return subjectNames;
	}

}
