package com.example.test.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.test.notice.domain.Notice;
import com.example.test.notice.service.NoticeService;
import com.google.gson.JsonObject;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RequestMapping("/notice")
@Controller
public class NoticeController {
	
	private final NoticeService service;
	
	@GetMapping("/register")
	public void registerForm(Notice notice, Model model) throws Exception {
		
	}
	
	@PostMapping("/register")
	public String register(Notice notice, Model model) throws Exception {
		service.noticeRegister(notice);

		return "redirect:/notice/list";
	}
	
	@PostMapping(value="/uploadSummernoteImageFile", produces = "application/json")
	@ResponseBody
	public JsonObject uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile) {
		
		JsonObject jsonObject = new JsonObject();
		
		String fileRoot = "C:\\notice_image\\";	//저장될 외부 파일 경로
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
				
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		
		File targetFile = new File(fileRoot + savedFileName);	
		
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			jsonObject.addProperty("url", "/noticeImage/"+savedFileName);
			jsonObject.addProperty("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		
		return jsonObject;
	}
	
	@GetMapping("/list")
	public void list(Model model) throws Exception {
		model.addAttribute("noticeList", service.noticeList());
	}
	
	@GetMapping("/read")
	public void read(@RequestParam("noticeNo") int noticeNo, Model model) throws Exception {
		model.addAttribute(service.noticeRead(noticeNo));
	}
	
	@GetMapping("/modify")
	public void modifyForm(int noticeNo, Model model) throws Exception {
		model.addAttribute(service.noticeRead(noticeNo));
	}

	@PostMapping("/modify")
	public String modify(Notice notice, Model model) throws Exception {
		service.noticeModify(notice);

		return "/notice/read";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("noticeNo") int noticeNo, Model model) throws Exception {
		service.noticeRemove(noticeNo);

		return "redirect:/notice/list";
	}
}
