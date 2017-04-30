package xwgl.admin.web.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import xwgl.common.web.AbstractBaseCURDController;
import xwgl.core.project.entity.Job;

@Controller
@RequestMapping("job")
public class JobController  extends AbstractBaseCURDController<Job,Long> {

	@Autowired
	private xwgl.core.sys.service.DeptmentService deptmentService;
	@Override
	protected String getBasePath() {
		
		return "job";
	}
	
	@ModelAttribute
	public void preget(Model model) {
		model.addAttribute("deptments",this.deptmentService.findAll());
	}
	
	
}
