package com.example.test.notice.service;

import java.util.List;

import com.example.test.notice.domain.Notice;
import com.example.test.notice.mapper.NoticeMapper;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class NoticeServiceImpl implements NoticeService {

	private final NoticeMapper mapper;

	@Override
	public void noticeRegister(Notice notice) throws Exception {
		mapper.noticeRegister(notice);
	}

	@Override
	public Notice noticeRead(Integer noticeNo) throws Exception {
		return mapper.noticeRead(noticeNo);
	}

	@Override
	public void noticeModify(Notice notice) throws Exception {
		mapper.noticeModify(notice);
	}

	@Override
	public void remove(Integer noticeNo) throws Exception {
		mapper.delete(noticeNo);
	}

	@Override
	public List<Notice> noticeList() throws Exception {
		return mapper.noticeList();
	}

}
