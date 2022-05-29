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
	public void register(Notice notice) throws Exception {
		mapper.create(notice);
	}

	@Override
	public Notice read(Integer noticeNo) throws Exception {
		return mapper.read(noticeNo);
	}

	@Override
	public void modify(Notice notice) throws Exception {
		mapper.update(notice);
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
