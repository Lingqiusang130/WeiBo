package domain.core.webservice;

public class LoginInfo extends WeiboObject{
	private String strUserID;
	
	private String strPassword;

	public String getStrUserID() {
		return strUserID;
	}

	public void setStrUserID(String strUserID) {
		this.strUserID = strUserID;
	}

	public String getStrPassword() {
		return strPassword;
	}

	public void setStrPassword(String strPassword) {
		this.strPassword = strPassword;
	}
	
}
