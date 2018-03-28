package com.bluepicks.controller;


import com.bluepicks.entity.Post;
import com.bluepicks.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ItemController {

    @Autowired
    PostService postService;

    @ModelAttribute("postUpdateForm")
    public Post builder()
    {
        return new Post();
    }

    @RequestMapping(value = "/post/{id}")
    public String item(Model model, @PathVariable Long id)
    {
        model.addAttribute("post", postService.findById(id));
        if(postService.exist(id))
            return "item";
        else
            return "item_error";
    }
    @RequestMapping(value = "/post/{id}/delete")
    public String processItemRemoving(@PathVariable Long id) {
        if(postService.exist(id)) {
            postService.deletePost(id);
            return "redirect:/admin";
        }
        else
            return "admin_error";
    }

    @RequestMapping(value = "/post/{id}/update", method = RequestMethod.GET)
    public String update(@PathVariable Long id, Model model)
    {
        model.addAttribute("post",postService.findById(id));
        if(postService.exist(id))
            return "update_post";
        else
            return "admin_error";
    }

    @RequestMapping(value = "/post/{id}/update", method = RequestMethod.POST)
    public String processPostUpdating(@PathVariable Long id, @ModelAttribute("postUpdateForm") Post post)
    {
        postService.update(post, id);
        return "redirect:/admin";
    }

}
