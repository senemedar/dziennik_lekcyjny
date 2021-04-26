package teamfp.dziennik.service;

import org.springframework.stereotype.Service;
import teamfp.dziennik.model.Subject;
import teamfp.dziennik.model.Teacher;
import teamfp.dziennik.repository.SubjectRepository;
import teamfp.dziennik.repository.TeacherRepository;

import java.util.ArrayList;
import java.util.List;

@Service
public class TeacherService {
    private final TeacherRepository teacherRepository;
    private final SubjectRepository subjectRepository;

    public TeacherService(TeacherRepository teacherRepository, SubjectRepository subjectRepository) {
        this.teacherRepository = teacherRepository;
		this.subjectRepository = subjectRepository;
	}

    public List<Teacher> getTeachersList() {
        return teacherRepository.findAll();
    }

    //todo: nie zwracamy null-a
    public Teacher getTeacher(Long id) {
        return teacherRepository.findById(id).orElse(null);
    }

    //todo: throws IllegalArgumentException - łapać?
    public void deleteTeacher(Long id) {
        teacherRepository.deleteById(id);
    }

    public void saveTeacher(Teacher teacher) {
    	teacherRepository.save(teacher);
	}

    public void editTeacher(Teacher teacher, Long id) {
        Teacher editedTeacher = new Teacher(
                id,
                teacher.getFirstName(),
                teacher.getLastName(),
                teacher.getEmail(),
                teacher.getPassword(),
                teacher.getSubjectList(),
                teacher.getClassroomList()
        );
        teacherRepository.save(editedTeacher);
    }

    public boolean loginTeacher(Long id, String password) {
    	return this.getTeacher(id).getPassword().equals(password);
	}

	public List<Subject> createSubjectList(List<String> stringList) {
    	List<Subject> subjectList = new ArrayList<>();
    	for (String s : stringList) {
    		Subject newSubject = new Subject(s);
    		subjectRepository.save(newSubject);
			subjectList.add(newSubject);
		}

		return subjectList;
	}

//	public List<Subject> getSubjectList(Teacher teacher) {
//    	return teacher.getSubjectList();
//	}
}
