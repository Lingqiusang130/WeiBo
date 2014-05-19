package domain.service.sys;

import ui.viewmodel.weiboMgr.LoginViewModel;
import data.dao.IHibernateDataContext;
import domain.core.webservice.LoginInfo;
import domain.iservice.sys.ISysManager;

public class SysManager implements ISysManager{
	private IHibernateDataContext ctx;
	
	public void setCtx(IHibernateDataContext ctx) {
		this.ctx = ctx;
	}

	public boolean login(LoginViewModel model) {
		// TODO Auto-generated method stub
		LoginInfo info = ctx.findById(LoginInfo.class, model.getUserID());
		return info.getStrPassword().equals(model.getPassword())?true:false;
	}

}
