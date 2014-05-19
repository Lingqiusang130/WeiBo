package domain.core.webservice.util;


public class WsResult {

	// 0��ʾ�����ɹ���1��ʾ����ʧ��
	private int errCode;
	private String errMsg = "";

	public WsResult() {
		this.errCode = ErrorCode.ERRORCODE_SUCCESS;
		this.errMsg = "";
	}

	public WsResult(int errCode, String errMsg) {
		this.errCode = errCode;
		this.errMsg = errMsg;
	}

	public int getErrCode() {
		return errCode;
	}

	public void setErrCode(int errCode) {
		this.errCode = errCode;
	}

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

}
