package com.my.megabox.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@RequestMapping("Membermain")
	public String Membermain() {
		return "member/Membermain";
	}
}
