package com.polling.config;

public class PollDTO {
	public Boolean opt1;
	public Boolean opt2;
	
	public Boolean getOpt1() {
		return opt1;
	}
	public void setOpt1(Boolean opt1) {
		this.opt1 = opt1;
	}
	public Boolean getOpt2() {
		return opt2;
	}
	public void setOpt2(Boolean opt2) {
		this.opt2 = opt2;
	}
	public PollDTO(Boolean opt1, Boolean opt2) {
		super();
		this.opt1 = opt1;
		this.opt2 = opt2;
	}
	public PollDTO() {
		super();
	}
	@Override
	public String toString() {
		return "PollDTO [opt1=" + opt1 + ", opt2=" + opt2 + "]";
	}
	
	
}
