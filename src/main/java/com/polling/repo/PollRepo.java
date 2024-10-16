package com.polling.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.polling.entity.Poll;

@Repository
public interface PollRepo extends JpaRepository<Poll, Integer>{

}
