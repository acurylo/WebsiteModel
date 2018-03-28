package com.websiteModel.controller;

import com.websiteModel.entity.Track;
import com.websiteModel.service.AlbumService;
import com.websiteModel.service.TrackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TrackController {

    @Autowired
    TrackService trackService;

    @Autowired
    AlbumService albumService;

    @ModelAttribute("trackForm")
    public Track builder() { return new Track(); }

    @ModelAttribute("trackUpdateForm")
    public Track updateBuilder() { return new Track(); }

    @RequestMapping(value = "/add_track", method = RequestMethod.GET)
    public String addingTrack(Model model)
    {
        model.addAttribute("albums", albumService.findAll());
        return "add_track";
    }

    @RequestMapping(value = "/add_track", method = RequestMethod.POST)
    public String processAddingTrack(@ModelAttribute("trackForm") Track track)
    {
        trackService.saveInDatabase(track);
        return "redirect:admin";
    }

//    @RequestMapping(value = "/track")
//    public String track(Model model) {
//        model.addAttribute("tracks", trackService.findAll());
//        return "tracks";
//    }

    @RequestMapping(value = "/track/{id}")
    public String showTrack(Model model, @PathVariable Long id)
    {
        model.addAttribute("track", trackService.findById(id));
        if(trackService.exist(id) )
            return "track";
        else
            return "track_error";
    }

    @RequestMapping(value = "/track/{id}/delete")
    public String item(@PathVariable Long id) {
        if(trackService.exist(id)) {
            trackService.deleteTrack(id);
            return "redirect:/admin";
        }
        else
            return "admin_error";
    }

    @RequestMapping(value = "/track/{id}/update", method = RequestMethod.GET)
    public String update(@PathVariable Long id, Model model)
    {
        model.addAttribute("track", trackService.findById(id));
        model.addAttribute("albums", albumService.findAll());
        if(trackService.exist(id))
             return "update_track";
        else
            return "admin_error";
    }

    @RequestMapping(value = "/track/{id}/update", method = RequestMethod.POST)
    public String processTrackUpdating(@PathVariable Long id, @ModelAttribute("trackUpdateForm") Track track)
    {
        trackService.update(track,id);
        return "redirect:/admin";
    }

}
