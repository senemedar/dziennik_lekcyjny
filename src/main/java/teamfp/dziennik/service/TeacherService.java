package teamfp.dziennik.service;

import org.springframework.stereotype.Service;
import teamfp.dziennik.model.Teacher;
import teamfp.dziennik.repository.TeacherRepository;

import java.util.List;

@Service
public class TeacherService {
    private final TeacherRepository teacherRepository;

    public TeacherService(TeacherRepository teacherRepository) {
        this.teacherRepository = teacherRepository;
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

    public void editTeacher(Teacher teacher, Long id) {
        Teacher editedTeacher = new Teacher(
                id,
                teacher.getFirstName(),
                teacher.getSurname(),
                teacher.getEmail(),
                teacher.getPassword(),
                teacher.getSubjectList(),
                teacher.getClassroomList()
        );
        teacherRepository.save(editedTeacher);
    }


}
