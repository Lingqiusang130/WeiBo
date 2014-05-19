package domain.core.webservice.util;

import net.sf.json.JSONObject;

public class MyJSONObject {
	private JSONObject jsonObject;
	
	public MyJSONObject()
	{
		
	}
	
	public static MyJSONObject fromObject(String strJson)
	{
		MyJSONObject myJsonObj = new MyJSONObject();
		myJsonObj.setJsonObject(JSONObject.fromObject(strJson));
		return myJsonObj;
	}

	public void setJsonObject(JSONObject jsonObject) {
		this.jsonObject = jsonObject;
	}

	public JSONObject getJsonObject() {
		return jsonObject;
	}
	
	public int getInt(String key)
	{
		int iRet = 0;
		try
		{
			iRet = jsonObject.getInt(key);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return iRet;
	}
	
	public String getString(String key)
	{
		String strRet = "";
		try
		{
			strRet = jsonObject.getString(key);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return strRet;
	}
	
	public long getLong(String key)
	{
		long longRet = 0;
		try
		{
			longRet = jsonObject.getLong(key);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return longRet;
	}
}
