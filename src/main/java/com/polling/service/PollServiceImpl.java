package com.polling.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.polling.config.PollDTO;
import com.polling.entity.Poll;
import com.polling.repo.PollRepo;

@Service
public class PollServiceImpl {
	
	@Autowired
	private PollRepo pollRepo;
	
	
	public boolean createPoll(Poll poll) {
		return pollRepo.save(poll)!=null;
	}
	
	public List<Poll> pollList() {
		return pollRepo.findAll();
	}
	
	public Poll updatePollById(Integer id, Boolean opt1, Boolean opt2) {
		Optional<Poll> pollOpt = pollRepo.findById(id);
		
		if(pollOpt.isPresent()) {
			Poll pollObject = pollOpt.get();
			if(Boolean.TRUE.equals(opt1)) {
				pollObject.setOpt1Count(pollObject.getOpt1Count()+1);
			} else if(Boolean.TRUE.equals(opt2)){
				pollObject.setOpt2Count(pollObject.getOpt2Count()+1);
			} else {
				return null;
			}
			//update and return
			return pollRepo.save(pollObject);
		} else {
			return null;
		}
	}

	public Poll findById(Integer id) {
		return pollRepo.findById(id).get();
	}
	
	public Poll updatePollById(Integer id, PollDTO dto) {
		return updatePollById(id,dto.getOpt1(),dto.getOpt2());
	}
}
