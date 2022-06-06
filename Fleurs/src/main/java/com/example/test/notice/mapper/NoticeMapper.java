package com.example.test.notice.mapper;

import java.util.List;

import com.example.test.notice.domain.Notice;

public interface NoticeMapper {

	public void noticeRegister(Notice notice) throws Exception;

	public Notice noticeRead(Integer noticeNo) throws Exception;

	public void noticeModify(Notice notice) throws Exception;

	public void delete(Integer noticeNo) throws Exception;

	public List<Notice> noticeList() throws Exception;

}
