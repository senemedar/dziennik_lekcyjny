package teamfp.dziennik.service;

import org.springframework.stereotype.Service;
import teamfp.dziennik.model.Classroom;
import teamfp.dziennik.repository.ClassroomRepository;

import java.util.List;

@Service
public class ClassroomService {
	private final ClassroomRepository classroomRepository;

	public ClassroomService(ClassroomRepository classroomRepository) {
		this.classroomRepository = classroomRepository;
	}

	public List<Classroom> getClassroomList() {
		return classroomRepository.findAll();
	}

	public void saveClassroom(Classroom newClassroom) {
		classroomRepository.save(newClassroom);
	}

	//todo: nie zwracamy null-a
	public Classroom getClassroom(Long id) {
		return classroomRepository.findById(id).orElse(null);
	}

	//todo: throws IllegalArgumentException - łapać?
	public void deleteClassroom(Long id) {
		classroomRepository.deleteById(id);
	}

//	public void editClassroom(Classroom classroom, Long id) {
//		Classroom editedClassroom = new Classroom(
//				id,
//				classroom.getClassroomName(),
//				classroom.getStudentList(),
//				classroom.getTeacher()
//		);
//
//		classroomRepository.save(editedClassroom);
//	}

}
