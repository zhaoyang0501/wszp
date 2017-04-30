package xwgl.core.project.repository;

import java.util.List;

import xwgl.common.repository.SimpleCurdRepository;
import xwgl.core.project.entity.Apply;
import xwgl.core.project.entity.FrontUser;

public interface ApplyRepository   extends SimpleCurdRepository< Apply ,Long>{
	public List<Apply> findByJobname(String job);
	
	public List<Apply> findByUser(FrontUser user);
	
}
