package teamfp.dziennik.service;

import org.springframework.stereotype.Service;
import teamfp.dziennik.model.Parent;
import teamfp.dziennik.repository.ParentRepository;

import java.util.List;

@Service
public class ParentService {
    private final ParentRepository parentRepository;

    public ParentService(ParentRepository parentRepository) {
        this.parentRepository = parentRepository;
    }

    public List<Parent> getParentsList() {
        return parentRepository.findAll();
    }



}
