package cn.wxj.web.action;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.wxj.domain.SaleVisit;
import cn.wxj.domain.User;
import cn.wxj.service.SaleVisitService;
import cn.wxj.utils.PageBean;

public class SaleVisitAction extends ActionSupport implements ModelDriven<SaleVisit> {
	private SaleVisit saleVisit =new SaleVisit();
	private SaleVisitService svs;
	
	
	
	
	
	//添加客户拜访记录
	public String add() throws Exception {
		//0取出登陆用户，放入SaleVisit实体，表达关系
		User u = (User) ActionContext.getContext().getSession().get("user");
		saleVisit.setUser(u);
		//1调用Service保存客户拜访记录
		svs.save(saleVisit);
		//重定向到拜访记录列表Action
		return "toList";
		
	}
	private Integer currentPage;
	private Integer pageSize;
	public String list() throws Exception {
		//封装离线查询对象
		DetachedCriteria dc = DetachedCriteria.forClass(SaleVisit.class);
		//判断并封装参数
		if(saleVisit.getCustomer()!=null&&saleVisit.getCustomer().getCust_id()!=null){
			dc.add(Restrictions.eq("customer.cust_id", saleVisit.getCustomer().getCust_id()));
		}
		
		//1 调用Service查询分页数据(PageBean)
		PageBean pb = svs.getPageBean(dc,currentPage,pageSize);
		//2 将PageBean放入request域,转发到列表页面显示
		ActionContext.getContext().put("pageBean", pb);
		return "list";
	}
		//去往编辑页面回显
	public String toEdit() throws Exception{
		//1调用service根据id查询客户拜访对象
		SaleVisit sv=svs.getById(saleVisit.getVisit_id());
		//2将对象放入request域
		ActionContext.getContext().put("saleVisit", sv);
		//3转发到add.jsp
		return "add";
	}

	public String delete() {
		svs.delete(saleVisit.getVisit_id());
		return "toList";
	}
	





	public Integer getCurrentPage() {
		return currentPage;
	}





	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}





	public Integer getPageSize() {
		return pageSize;
	}





	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}





	@Override
	public SaleVisit getModel() {
		// TODO Auto-generated method stub
		return saleVisit;
	}






	public void setSvs(SaleVisitService svs) {
		this.svs = svs;
	}

}
