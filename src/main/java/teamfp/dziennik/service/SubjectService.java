package teamfp.dziennik.service;

import org.springframework.stereotype.Service;
import teamfp.dziennik.model.Student;
import teamfp.dziennik.model.Subject;
import teamfp.dziennik.repository.SubjectRepository;

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

}
