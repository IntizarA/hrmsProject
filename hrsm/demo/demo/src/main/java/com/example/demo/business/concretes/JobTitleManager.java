package com.example.demo.business.concretes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.business.abstracts.JobTitleService;
import com.example.demo.dataAccess.abstracts.JobTitleDao;
import com.example.demo.entity.concretes.JobTitle;

@Service
public class JobTitleManager implements JobTitleService {
	private JobTitleDao jobTitleDao;

	@Autowired
	public JobTitleManager(JobTitleDao jobTitleDao) {
		super();
		this.jobTitleDao = jobTitleDao;
	}

	@Override
	public List<JobTitle> getAll() {

		return this.jobTitleDao.findAll();
	}

}
