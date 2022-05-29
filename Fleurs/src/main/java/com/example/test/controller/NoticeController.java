package com.example.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.test.notice.service.NoticeService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RequestMapping("/notice")
@Controller
public class NoticeController {
	
	private final NoticeService service;
	
	/*
	 * @RequestMapping("/notice/list") public String list() { return "/notice/list";
	 * }
	 */
	
	@GetMapping("/list")
	public void list(Model model) throws Exception {
		model.addAttribute("noticeList", service.noticeList());
	}
}
