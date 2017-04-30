package xwgl.core.project.repository;

import java.util.List;

import xwgl.common.repository.SimpleCurdRepository;
import xwgl.core.project.entity.FrontUser;
import xwgl.core.project.entity.Resume;

public interface ResumeRepository   extends SimpleCurdRepository< Resume ,Long>{
	public List<Resume> findByUser(FrontUser user);
}
