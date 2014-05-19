package ui.viewmodel.weibo;

import ui.viewmodel.common.PageViewModel;
import domain.core.webservice.LoginInfo;
;

/**
 * @author wjxue
 *
 */
public class loginViewModel {

	private String UserID;

	private String password;
	
	private PageViewModel<LoginInfo> pageView = new PageViewModel<LoginInfo>();

	public void setPageView(PageViewModel<LoginInfo> pageView) {
		this.pageView = pageView;
	}

	public PageViewModel<LoginInfo> getPageView() {
		return pageView;
	}
	public String getUserID() {
		return UserID;
	}

	public void setUserID(String userID) {
		UserID = userID;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	

}
