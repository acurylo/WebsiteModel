package com.websiteModel.service;

import com.websiteModel.entity.Participant;
import com.websiteModel.repository.ParticipantRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ParticipantService {

    @Autowired
    ParticipantRepository participantRepository;

    public void saveInDatabase(Participant participant)
    {
        participant.setId(participantRepository.count()+ 1 + countHoles());
        participantRepository.save(participant);
    }

    public Long countHoles()
    {
        Long holes =0L;
        for(long i=1L; i<=participantRepository.count();i++)
        {
            if(!participantRepository.exists(i))
                holes = holes + 1;
        }
        return holes;
    }

    public void deleteParticipant(Long id) {
        participantRepository.delete(id);
    }

    public void update(Participant participant, Long id)
    {
        participant.setId(id);
        participantRepository.save(participant);
    }

    public Participant findById(Long id)
    {
        return participantRepository.findOne(id);
    }

    public List<Participant> findAll()
    {
        return participantRepository.findAll();
    }

    public List<Participant> paginate(Long id, int participantCount)
    {
        List<Participant> participants = participantRepository.findAll();
        List<Participant> paginateParticipants = new ArrayList<Participant>();
        int counter = 1;
        for (Participant participant: participants
                ) {
            if(counter >= (id*participantCount-participantCount+1) && counter < ((id*participantCount-participantCount+1)+participantCount))
                paginateParticipants.add(participant);
            counter++;
        }
        return paginateParticipants;
    }

    public List<Participant> firstParticipants(int participantCount)
    {
        List<Participant> participants = participantRepository.findAll();
        List<Participant> paginateParticipants = new ArrayList<Participant>();
        int counter = 1;
        for (Participant participant: participants
                ) {
            if(counter <= participantCount)
                paginateParticipants.add(participant);
            counter++;
        }
        return paginateParticipants;
    }


    public Long countPages(Long participantCount)
    {
        Long countPage =participantRepository.count()/participantCount;
        if(participantRepository.count()%participantCount != 0)
            countPage++;

        return countPage;
    }

    public Boolean exist(Long id)
    {
        return participantRepository.exists(id);
    }

}
