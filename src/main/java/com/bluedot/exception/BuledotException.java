package com.bluedot.exception;


 /**
  * 
  * @author : 游斌平
  *
  */
public class BuledotException extends Exception {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//异常信息
	public String message;
	
	public BuledotException(String message){
		super(message);
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	

}
