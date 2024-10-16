package com.polling.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.polling.config.PollDTO;
import com.polling.entity.Poll;
import com.polling.service.PollServiceImpl;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class PollController {

	@Autowired
	private PollServiceImpl pollService;

	@GetMapping("/")
	public String getMethodName() {
		return "index";
	}

	@GetMapping("/createPoll")
	public ModelAndView getPoll() {
		ModelAndView mv = new ModelAndView("createPoll");
		mv.addObject("poll", new Poll());
		return mv;
	}

	@PostMapping(value="/createPoll")
	public ModelAndView createPoll(Poll poll) {
		boolean saved = pollService.createPoll(poll);
		ModelAndView mv = new ModelAndView("index");
		if (saved) {
			mv.addObject("msg", "Poll Created Successfully");
		} else {
			mv.addObject("msg", "failed to created");
		}
		return mv;
	}

	@GetMapping("/pollList")
	public ModelAndView pollList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pollList");
		List<Poll> pollList = pollService.pollList();
		request.setAttribute("list", pollList);
		return mv;

	}
	
	@GetMapping("/vote")
	public ModelAndView getVote(@RequestParam Integer id,HttpServletRequest request) {
		Poll poll = pollService.findById(id);
		ModelAndView mv = new ModelAndView("pollDetail");
		mv.addObject("pollDto", new PollDTO());
		request.setAttribute("poll", poll);
		return mv;
	}
	
	@PostMapping("/saveVote")
	public String saveVote(@RequestParam Integer id,HttpServletRequest request) {
		Poll poll = pollService.findById(id);
		Boolean opt1 = Boolean.parseBoolean(request.getParameter("opt1"));
		Boolean opt2 = Boolean.parseBoolean(request.getParameter("opt2"));
		if (opt1!=null&&opt1) {
			poll.setOpt1Count(poll.getOpt1Count()+1);
		} else if(opt2!=null&&opt2){
			poll.setOpt2Count(poll.getOpt2Count()+1);
		}
		pollService.createPoll(poll);
		return "voteConfirm";
	}
	

}
