package com.websiteModel.service;

import com.websiteModel.entity.Track;
import com.websiteModel.repository.TrackRepository;

import org.hibernate.mapping.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.List;

@Service
public class TrackService {

    @Autowired
    TrackRepository trackRepository;

    @Autowired
    AlbumService albumService;

    public void saveInDatabase(Track track)
    {
        track.setId(trackRepository.count()+1 + countHoles());
        track.setDate(new Date());
        trackRepository.save(track);
    }

    public List<Track> findAll()
    {
        return trackRepository.findAll();
    }

    public Track findById(Long id)
    {
        return trackRepository.findOne(id);
    }

    public Boolean exist(Long id)
    {
        return trackRepository.exists(id);
    }

    public void deleteTrack(Long id) {
        trackRepository.delete(id);
    }

    public Long countHoles()
    {
        Long holes =0L;
        for(long i=1L; i<=trackRepository.count();i++)
        {
            if(!trackRepository.exists(i))
                holes = holes + 1;
        }
        return holes;
    }

    public void update(Track track, Long id)
    {
        track.setId(id);
        track.setDate(trackRepository.findOne(id).getDate());
        track.setEditDate(new Date());
        trackRepository.save(track);
    }

    public List<Track> latestTracks()
    {
        List<Track> tracks = new ArrayList<Track>();
        List<Track> allTracks = trackRepository.findAll();
        Collections.reverse(allTracks);
        int counter =1;
        for (Track track : allTracks
             ) {
            if(counter==5)
                break;
            tracks.add(track);
            counter++;
        }
        return tracks;
    }

    public List<Track> getTrackFromAlbum(Long albumId)
    {
        List<Track> tracks = new ArrayList<Track>();
        List<Track> allTracks = trackRepository.findAll();
        for (Track track: allTracks
             )
        {
            if(track.getAlbumId().equals(albumId))
                tracks.add(track);
        }
        Collections.reverse(tracks);
        return tracks;
    }
}
