/**
 * 
 */
package ui.interceptor.common;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

/**
 * @author Administrator
 *
 */
public class AuthenticationInterceptor implements Interceptor {

	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.interceptor.Interceptor#destroy()
	 */

	public void destroy() {
		// TODO Auto-generated method stub

	}

	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.interceptor.Interceptor#init()
	 */

	public void init() {
		// TODO Auto-generated method stub

	}

	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.interceptor.Interceptor#intercept(com.opensymphony.xwork2.ActionInvocation)
	 */
	public String intercept(ActionInvocation actionInvoke) throws Exception {
		
		Map<String,Object> session=actionInvoke.getInvocationContext().getSession();
		
		String userID=(String)session.get("AF4MB_AdminID");
		
		boolean isAuthenticated = null!=userID?true:false;

		
		if(isAuthenticated) 
		{
			 return actionInvoke.invoke();
		}
		else
			 return "toLoginPage";
		
		
	}

}
