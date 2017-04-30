
package xwgl.core.project.service;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import xwgl.common.service.SimpleCurdService;
import xwgl.core.project.entity.Job;
import xwgl.core.project.repository.JobRepository;
/***
 * 
 * @author qq:263608237
 *
 */
@Service
public class JobService extends SimpleCurdService< Job, Long>{
     
	@Autowired
	private JobRepository  jobRepository;
	
	public List<Job> findAll(final String name,final String cash,final String scale,final String year,final String nature,final String edu){
         	Specification<Job> spec = new Specification<Job>() {
              public Predicate toPredicate(Root<Job> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (!StringUtils.isBlank(name)) {
                   predicate.getExpressions().add(cb.like(root.get("name").as(String.class), "%"+name+"%"));
              }
              if (!StringUtils.isBlank(cash)) {
                  predicate.getExpressions().add(cb.equal(root.get("cash").as(String.class),cash));
              }
              if (!StringUtils.isBlank(scale)) {
                  predicate.getExpressions().add(cb.equal(root.get("scale").as(String.class),scale));
              }
              if (!StringUtils.isBlank(year)) {
                  predicate.getExpressions().add(cb.equal(root.get("year").as(String.class),year));
              }
              if (!StringUtils.isBlank(nature)) {
                  predicate.getExpressions().add(cb.equal(root.get("nature").as(String.class),nature));
              }
              if (!StringUtils.isBlank(edu)) {
                  predicate.getExpressions().add(cb.equal(root.get("edu").as(String.class),edu));
              }
              return predicate;
              }
         };
         	return  jobRepository.findAll(spec);
     	}
}