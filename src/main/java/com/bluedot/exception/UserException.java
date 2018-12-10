package com.bluedot.exception;
/** 
* @author 作者 zg
* @version 创建时间：2018年11月27日 下午4:11:58 
*/
public class UserException extends Exception {

	public UserException() {
		super();
	}

	public UserException(String message) {
		super(message);
	}
    public static String getMsg(String msg) {
    	return msg;
    }
	
	

}
