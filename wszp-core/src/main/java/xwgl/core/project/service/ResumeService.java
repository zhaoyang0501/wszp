package xwgl.core.project.service;
import java.util.List;

import org.apache.commons.collections4.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xwgl.common.service.SimpleCurdService;
import xwgl.core.project.entity.FrontUser;
import xwgl.core.project.entity.Resume;
import xwgl.core.project.repository.ResumeRepository;

@Service
public class ResumeService extends SimpleCurdService<Resume, Long> {
	
	@Autowired
	private ResumeRepository resumeRepository;
	
	public Resume getByUser(FrontUser user){
		List<Resume> list =this.resumeRepository.findByUser(user);
		if(CollectionUtils.isEmpty(list))
			return new Resume();
		else
			return list.get(0);
	}
}
