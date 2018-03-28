package com.bluepicks.service;

import com.bluepicks.entity.About;
import com.bluepicks.entity.Participant;
import com.bluepicks.repository.AboutRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AboutService {

    @Autowired
    AboutRepository aboutRepository;

    public void saveInDatabase(About about)
    {
        about.setId(aboutRepository.count()+ 1 + countHoles());
        aboutRepository.save(about);
    }

    public Long countHoles()
    {
        Long holes =0L;
        for(long i=1L; i<=aboutRepository.count();i++)
        {
            if(!aboutRepository.exists(i))
                holes = holes + 1;
        }
        return holes;
    }

    public void deleteParticipant(Long id) {
        aboutRepository.delete(id);
    }

    public void update(About about, Long id)
    {
       about.setId(id);
       aboutRepository.save(about);
    }

    public About findById(Long id)
    {
        return aboutRepository.findOne(id);
    }

}
