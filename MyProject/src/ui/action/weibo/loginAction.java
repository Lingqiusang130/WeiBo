package ui.action.weibo;

import ui.viewmodel.weibo.loginViewModel;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import domain.iservice.systemManage.ISysManager;



public class loginAction  extends ActionSupport implements ModelDriven<loginViewModel>{
	private String UserId;
	private String password;
	private ISysManager sysManager;
	
	public void setSysManager(ISysManager sysManager) {
		this.sysManager = sysManager;
	}



	public String getUserId() {
		return UserId;
	}



	public void setUserId(String userId) {
		UserId = userId;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}

	private loginViewModel model;
		
	
	public void setModel(loginViewModel model) {
		this.model = model;
	}


	public String logout(){
		 
		ActionContext ac=ActionContext.getContext();
	    ac.getSession().remove("AF4MB_AdminID");
	    return "success"; 
		
	}
	
	public String error(){
		return "success";
	}
	public loginAction()
	{
		
	}
	

	
	@Override
	public String execute() throws Exception {

//		//AF4MB_AdminID
		ActionContext ac=ActionContext.getContext();
		System.out.println(model.getUserID()+"=="+model.getPassword());
		if(sysManager.login(model)){
			ac.getSession().put("AF4MB_AdminID", "admin");
			return "getAllAppInfo";
		}
		else{
			return "error";
		}
	}	

	
	public loginViewModel getModel() {
		
		return model;
	}
	
	
}

