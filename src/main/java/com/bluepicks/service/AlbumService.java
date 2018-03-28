package com.bluepicks.service;


import com.bluepicks.entity.Album;
import com.bluepicks.repository.AlbumRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AlbumService {

    @Autowired
    AlbumRepository albumRepository;

    public void saveInDatabase(Album album)
    {
        album.setId(albumRepository.count()+ 1 + countHoles());
        albumRepository.save(album);
    }

    public Long countHoles()
    {
        Long holes =0L;
        for(long i=1L; i<=albumRepository.count();i++)
        {
            if(!albumRepository.exists(i))
                holes = holes + 1;
        }
        return holes;
    }

    public void deleteAlbum(Long id) {
        albumRepository.delete(id);
    }

    public void update(Album album, Long id)
    {
        album.setId(id);
        albumRepository.save(album);
    }

    public Album findById(Long id)
    {
        return albumRepository.findOne(id);
    }

    public List<Album> findAll(){
        return albumRepository.findAll();
    }

    public Boolean exist(Long id)
    {
        return albumRepository.exists(id);
    }

}
