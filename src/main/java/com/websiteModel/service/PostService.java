package com.websiteModel.service;

import com.websiteModel.entity.Post;
import com.websiteModel.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

@Service
public class PostService {

    @Autowired
    private PostRepository postRepository;

    public void saveInDatabase(Post post)
    {
        post.setId(postRepository.count()+ 1 + countHoles());
        post.setDate(new Date());
        postRepository.save(post);
    }

    public List<Post> findAll()
    {
        return postRepository.findAll();
    }

    public Post findById(Long id)
    {
        return  postRepository.findOne(id);
    }

    public void deletePost(Long id) {
        postRepository.delete(id);
    }

    public Boolean exist(Long id)
    {
        return postRepository.exists(id);
    }

    public Long countHoles()
    {
        Long holes =0L;
      for(long i=1L; i<=postRepository.count();i++)
      {
          if(!postRepository.exists(i))
              holes = holes + 1;
      }
        return holes;
    }

    public void update(Post post, Long id)
    {
        post.setId(id);
        post.setAuthor(postRepository.findOne(id).getAuthor());
        post.setDate(postRepository.findOne(id).getDate());
        post.setEditDate(new Date());
        postRepository.save(post);
    }

    public List<Post> paginate(Long id, int postCount)
    {
        List<Post> posts = postRepository.findAll();
        List<Post> paginatePosts = new ArrayList<Post>();
        int counter = 1;
        Collections.reverse(posts);
        for (Post post: posts
             ) {
            if(counter >= (id*postCount-postCount+1) && counter < ((id*postCount-postCount+1)+postCount))
            paginatePosts.add(post);
            counter++;
        }
        return paginatePosts;
    }

    public List<Post> firstPosts(int postCount)
    {
        List<Post> posts = postRepository.findAll();
        List<Post> paginatePosts = new ArrayList<Post>();
        int counter = 1;
        Collections.reverse(posts);
        for (Post post: posts
                ) {
            if(counter <= postCount)
                paginatePosts.add(post);
            counter++;
        }
        return paginatePosts;
        }

    public Long count()
    {
        return postRepository.count();
    }

    public Long countPages(Long postCount)
    {
        Long countPage = postRepository.count()/postCount;
        if(postRepository.count()%postCount != 0)
            countPage++;

        return countPage;
    }
}

