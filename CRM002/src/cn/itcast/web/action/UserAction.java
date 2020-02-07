package cn.itcast.web.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.itcast.domain.User;
import cn.itcast.service.UserService;
import org.apache.struts2.ServletActionContext;

public class UserAction extends ActionSupport implements ModelDriven<User> {
	private User user = new User();

	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String login() throws Exception {
		// 1 调用Service执行登陆逻辑
		User u = userService.getUserByCodePassword(user);
		// 2 将返回的User对象放入session域
		ActionContext.getContext().getSession().put("user", u);
		// 3 重定向到项目首页
		return "toHome";
	}

	public String regist() throws Exception {
		// 1调用service保存注册用户
		
			try {
				userService.saveUser(user);
			} catch (Exception e) {
				e.printStackTrace();
				ActionContext.getContext().put("error", e.getMessage());
				return "regist";
			}
		
		
		// 2重定向到登录界面

		return "toLogin";
	}
	public String quit(){
		ServletActionContext.getRequest().getSession().invalidate();
		return "toLogin";
	}

	@Override
	public User getModel() {
		return user;
	}

}
