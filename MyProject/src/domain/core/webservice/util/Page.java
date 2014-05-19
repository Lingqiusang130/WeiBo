package domain.core.webservice.util;


import java.util.List;


public class Page<T> {

	private List<T> list;//ҳ����Ϣ��ϸ
	private int allRow;//���м�¼
	private int totalPage;//��ҳ��
	private int currentPage;//��ǰҳ
	private int pageSize=15;//ҳ��size
	
	/**
	 * @return the list
	 */
	public List<T> getList() {
		return list;
	}
	/**
	 * @param list the list to set
	 */
	public void setList(List<T> list) {
		this.list = list;
	}
	/**
	 * @return the allRow
	 */
	public int getAllRow() {
		return allRow;
	}
	/**
	 * @param allRow the allRow to set
	 */
	public void setAllRow(int allRow) {
		this.allRow = allRow;
	}
	/**
	 * @return the totalPage
	 */
	public int getTotalPage() {
		return totalPage;
	}
	/**
	 * @param totalPage the totalPage to set
	 */
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	/**
	 * @return the currentPage
	 */
	public int getCurrentPage() {
		return currentPage;
	}
	/**
	 * @param currentPage the currentPage to set
	 */
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	/**
	 * @return the pageSize
	 */
	public int getPageSize() {
		return pageSize;
	}
	/**
	 * @param pageSize the pageSize to set
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	   public static int countTotalPage(final int pageSize,final int allRow){
			  int totalPage = allRow % pageSize == 0 ? allRow/pageSize : allRow/pageSize+1;
			    return totalPage;
			    }


}
