package hms.student.management.system.service;

import hms.student.management.system.model.Student;
import hms.student.management.system.repository.StudentRepository;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class StudentService {

    private final StudentRepository studentRepository;

    public StudentService(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    public List<Student> getAllStudent() {
        return studentRepository.findAll();
    }

    public Student save(Student student) {
        if (student.getRegistrationId() != 0) {
            throw new RuntimeException("Registration Id should be Zero");
        }
        return studentRepository.save(student);
    }

}
