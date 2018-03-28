package com.websiteModel.controller;

import com.websiteModel.entity.Participant;
import com.websiteModel.service.ParticipantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ParticipantController {

    @Autowired
    ParticipantService participantService;

    @ModelAttribute("participantForm")
    public Participant builder() {
        return new Participant();
    }


    @ModelAttribute("participantUpdateForm")
    public  Participant updateBuilder() { return new Participant(); }

    @RequestMapping("/participants")
    public String participants(Model model){
        model.addAttribute("id",1);
        model.addAttribute("participants",participantService.firstParticipants(3));
        model.addAttribute("lastPage",participantService.countPages(3L));
        return "participants";
    }

    @RequestMapping("/participants/{id}")
    public String participantsPaginate (Model model,@PathVariable Long id){
        model.addAttribute("id",id);
        model.addAttribute("participants",participantService.paginate(id,3));
        model.addAttribute("lastPage",participantService.countPages(3L));
        if(id <= 0 || id > participantService.countPages(3L))
            return "error_page";
        else
        return "participants";
    }

    @RequestMapping(value = "/add_participant", method = RequestMethod.GET)
    public String addParticipant(Model model){
        return "add_participant";
    }

    @RequestMapping(value = "/add_participant", method = RequestMethod.POST)
    public String addParticipantProcessing(@ModelAttribute("participantForm") Participant participant){
        participantService.saveInDatabase(participant);
        return "redirect:admin";
    }

    @RequestMapping(value = "/participant/{id}/delete")
    public String deleteParticipant(@PathVariable Long id) {
        if(participantService.exist(id)) {
            participantService.deleteParticipant(id);
            return "redirect:/admin";
        }
        else
            return "admin_error";
    }

    @RequestMapping(value = "/participant/{id}/update", method = RequestMethod.GET)
    public String update(@PathVariable Long id, Model model)
    {
        model.addAttribute("participant", participantService.findById(id));
        if(participantService.exist(id))
            return "update_participant";
        else
            return "admin_error";
    }

    @RequestMapping(value = "/participant/{id}/update", method = RequestMethod.POST)
    public String processParticipantUpdating(@PathVariable Long id, @ModelAttribute("participantUpdateForm") Participant participant)
    {
        participantService.update(participant,id);
        return "redirect:/admin";
    }

}
