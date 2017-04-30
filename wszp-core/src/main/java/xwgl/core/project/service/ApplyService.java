package xwgl.core.project.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xwgl.common.service.SimpleCurdService;
import xwgl.core.project.entity.Apply;
import xwgl.core.project.entity.FrontUser;
import xwgl.core.project.repository.ApplyRepository;

@Service
public class ApplyService extends SimpleCurdService<Apply, Long> {
	
	@Autowired
	private ApplyRepository applyRepository;

	public List<Apply> findByUser(FrontUser user) {
		return this.applyRepository.findByUser(user);
	}
	
	
}
