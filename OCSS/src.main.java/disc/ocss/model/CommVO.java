package disc.ocss.model;

import java.util.Date;

public class CommVO{
	
	private int commentId;
	private Date commentDate;
	private String contentDal;
	private String memberId;
	private int carId;
	

	public CommVO() {
		super();
	}
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public Date getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}
	public String getContentDal() {
		return contentDal;
	}
	public void setContentDal(String contentDal) {
		this.contentDal = contentDal;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	
	

}
