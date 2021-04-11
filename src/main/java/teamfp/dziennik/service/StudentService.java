package teamfp.dziennik.service;

import org.springframework.stereotype.Service;
import teamfp.dziennik.model.Student;
import teamfp.dziennik.repository.StudentRepository;

import java.util.List;

@Service
public class StudentService {
    private final StudentRepository studentRepository;

    public StudentService(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    public List<Student> getStudentsList() {
        return studentRepository.findAll();
    }

    //todo: nie zwracamy null-a
    public Student getStudent(Long id) {
        return studentRepository.findById(id).orElse(null);
    }

    //todo: throws IllegalArgumentException - łapać?
    public void deleteStudent(Long id) {
        studentRepository.deleteById(id);
    }

    public void editStudent(Student student, Long id) {
        Student editedStudent = new Student(
                id,
                student.getFirstName(),
                student.getSurname(),
                student.getEmail(),
                student.getPassword(),
                student.getClassroom(),
                student.getSubjectList(),
                student.getParent()
        );
        studentRepository.save(editedStudent);
    }

}