package ui.viewmodel.common;

import domain.core.webservice.util.Page;



public class PageViewModel<T> {

	private int currentPage = 1;// ��Ҫ��ʾ�ĵ�ǰҳ
	private Page<T> page = new Page<T>();// ҳ�����Ҫ����
	private String pageAction = null;// ��ת��action��ַ
	private String pram1;// ����1
	private String pram2;// ����2
	private String pram3;// ����3
	private String pram4;// ����4
	private Long pram5;// ����5
	//�����¼����
	private String ioUserType;
	private String ioEnterExit;
	private String ioKeywords;
	private String ioBeginDate;
	private String ioEndDate;
	//�ڹ�ʱ��ͳ��
	private String workHourUserType;
	private String workHourKeywords;
	private String workHourBeginDate;
	private String workHourEndDate;
	private float sumhours;
	
	public float getSumhours() {
		return sumhours;
	}

	public void setSumhours(float sumhours) {
		this.sumhours = sumhours;
	}

	public String getWorkHourUserType() {
		return workHourUserType;
	}

	public void setWorkHourUserType(String workHourUserType) {
		this.workHourUserType = workHourUserType;
	}

	public String getWorkHourKeywords() {
		return workHourKeywords;
	}

	public void setWorkHourKeywords(String workHourKeywords) {
		this.workHourKeywords = workHourKeywords;
	}

	public String getWorkHourBeginDate() {
		return workHourBeginDate;
	}

	public void setWorkHourBeginDate(String workHourBeginDate) {
		this.workHourBeginDate = workHourBeginDate;
	}

	public String getWorkHourEndDate() {
		return workHourEndDate;
	}

	public void setWorkHourEndDate(String workHourEndDate) {
		this.workHourEndDate = workHourEndDate;
	}

	public String getPram2() {
		return pram2;
	}

	public void setPram2(String pram2) {
		this.pram2 = pram2;
	}

	public String getPram3() {
		return pram3;
	}

	public void setPram3(String pram3) {
		this.pram3 = pram3;
	}

	public String getPram4() {
		return pram4;
	}

	public void setPram4(String pram4) {
		this.pram4 = pram4;
	}



	public String getPram1() {
		return pram1;
	}

	public void setPram1(String pram1) {
		this.pram1 = pram1;
	}

	

	/**
	 * @return the currentPage
	 */
	public int getCurrentPage() {
		return currentPage;
	}

	/**
	 * @param currentPage
	 *            the currentPage to set
	 */
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	/**
	 * @return the page
	 */
	public Page<T> getPage() {
		return page;
	}

	/**
	 * @param page
	 *            the page to set
	 */
	public void setPage(Page<T> page) {
		this.page = page;
	}

	/**
	 * @return the pageAction
	 */
	public String getPageAction() {
		return pageAction;
	}

	/**
	 * @param pageAction
	 *            the pageAction to set
	 */
	public void setPageAction(String pageAction) {
		this.pageAction = pageAction;
	}

	public Long getPram5() {
		return pram5;
	}

	public void setPram5(Long pram5) {
		this.pram5 = pram5;
	}

	public String getIoUserType() {
		return ioUserType;
	}

	public void setIoUserType(String ioUserType) {
		this.ioUserType = ioUserType;
	}

	public String getIoEnterExit() {
		return ioEnterExit;
	}

	public void setIoEnterExit(String ioEnterExit) {
		this.ioEnterExit = ioEnterExit;
	}

	public String getIoKeywords() {
		return ioKeywords;
	}

	public void setIoKeywords(String ioKeywords) {
		this.ioKeywords = ioKeywords;
	}

	public String getIoBeginDate() {
		return ioBeginDate;
	}

	public void setIoBeginDate(String ioBeginDate) {
		this.ioBeginDate = ioBeginDate;
	}

	public String getIoEndDate() {
		return ioEndDate;
	}

	public void setIoEndDate(String ioEndDate) {
		this.ioEndDate = ioEndDate;
	}

	

//	public void setPram5(String pram5) {
//		System.out.println("pram5::"+pram5);
//		this.pram5 = Long.parseLong(pram5);
//	}

	

}