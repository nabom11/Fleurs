package com.example.test.notice.service;

import java.util.List;

import com.example.test.notice.domain.Notice;

public interface NoticeService {

	public void noticeRegister(Notice notice) throws Exception;

	public Notice noticeRead(Integer noticeNo) throws Exception;

	public void noticeModify(Notice notice) throws Exception;

	public void noticeRemove(Integer noticeNo) throws Exception;

	public List<Notice> noticeList() throws Exception;

}
