package xwgl.admin.web.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import xwgl.common.dto.json.ObjectResponse;
import xwgl.common.dto.json.Response;
import xwgl.common.web.AbstractBaseCURDController;
import xwgl.core.project.entity.Apply;
import xwgl.core.project.service.ResumeService;

@Controller
@RequestMapping("apply")
public class ApplyController  extends AbstractBaseCURDController<Apply,Long> {

	@Autowired
	private xwgl.core.sys.service.DeptmentService deptmentService;
	
	@Autowired
	private ResumeService resumeService;
	@Override
	protected String getBasePath() {
		
		return "apply";
	}
	
	@RequestMapping("getresume")
	@ResponseBody
	public Response getresume(Long id) {
		Apply apply = this.simpleCurdService.find(id);
		apply.setState("已查看");
		this.simpleCurdService.save(apply);
		return new ObjectResponse<Apply>(apply);
	}
	
}
