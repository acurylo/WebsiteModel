package com.websiteModel.controller;

import com.websiteModel.entity.Album;
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
public class AlbumController {

    @Autowired
    AlbumService albumService;

    @Autowired
    TrackService trackService;

    @ModelAttribute("albumForm")
    public Album builder() {
        return new Album();
    }


    @ModelAttribute("albumUpdateForm")
    public  Album updateBuilder() { return new Album(); }


    @RequestMapping(value = "/albums")
    public String albums(Model model){
        model.addAttribute("albums",albumService.findAll());
        return "albums";
    }

    @RequestMapping(value = "/add_album", method = RequestMethod.GET)
    public String addAlbum(){
        return "add_album";
    }

    @RequestMapping(value = "/add_album", method = RequestMethod.POST)
    public String addAlbumProcessing(@ModelAttribute("albumForm")Album album){
        albumService.saveInDatabase(album);
        return "redirect:admin";
    }

    @RequestMapping(value = "/album/{id}/delete")
    public String deleteAlbum(@PathVariable Long id) {
        if(albumService.exist(id)) {
           albumService.deleteAlbum(id);
            return "redirect:/admin";
        }
        else
            return "admin_error";
    }

    @RequestMapping(value = "/album/{id}/update", method = RequestMethod.GET)
    public String update(@PathVariable Long id, Model model)
    {
        model.addAttribute("album", albumService.findById(id));
        if(albumService.exist(id))
            return "update_album";
        else
            return "admin_error";
    }

    @RequestMapping(value = "/album/{id}/update", method = RequestMethod.POST)
    public String processAlbumUpdating(@PathVariable Long id, @ModelAttribute("albumUpdateForm") Album album)
    {
        albumService.update(album,id);
        return "redirect:/admin";
    }

    @RequestMapping(value = "/album/{id}", method = RequestMethod.GET)
    public String album(@PathVariable Long id, Model model)
    {
        model.addAttribute("tracks", trackService.getTrackFromAlbum(id));
        if(albumService.exist(id))
            return "tracks";
        else
            return "error_page";
    }


}
