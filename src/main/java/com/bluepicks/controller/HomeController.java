package com.bluepicks.controller;

import com.bluepicks.repository.PostRepository;
import com.bluepicks.service.PostService;
import com.bluepicks.service.TrackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @Autowired
    PostService postService;

    @Autowired
    TrackService trackService;

    @RequestMapping(value = "/")
    public String home(Model model) {
        model.addAttribute("id",1);
        model.addAttribute("posts",postService.firstPosts(3));
        model.addAttribute("tracks", trackService.latestTracks());
        model.addAttribute("lastPage",postService.countPages(3L));
        return "home"; }

    @RequestMapping(value = "/{id}")
    public String pagination(Model model, @PathVariable Long id)
    {
        model.addAttribute("id",id);
        model.addAttribute("posts",postService.paginate(id,3));
        model.addAttribute("tracks", trackService.latestTracks());
        model.addAttribute("lastPage",postService.countPages(3L));
        if(id<0 || id > postService.countPages(3L) )
            return "error_page" ;
        else
            return "home";
    }
}
