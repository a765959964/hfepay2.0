package com.hfepay.scancode.utils;


import java.util.List;

/**
 * @Description: 将结果转换为封装后的对象
 * @author zf
 * @date 2019-7-18 10:56:48
 */
public class ZJ_Response {

	private final static String SUCCESS = "success";

	public static <T> ZJ_Result<T> makeOKRsp() {
		return new ZJ_Result<T>().setCode(ZJ_Code.SUCCESS).setMsg(SUCCESS);
	}

	public static <T> ZJ_Result<T> makeOKRsp(T data) {
		return new ZJ_Result<T>().setCode(ZJ_Code.SUCCESS).setMsg(SUCCESS).setData(data);
	}


	public static <T> ZJ_Result<T> makeErrRsp(String msg) {
		return new ZJ_Result<T>().setCode(ZJ_Code.FAIL).setMsg(msg);
	}

	public static <T> ZJ_Result<T> makeRsp(int code, String msg) {
		return new ZJ_Result<T>().setCode(code).setMsg(msg);
	}
	
	public static <T> ZJ_Result<T> makeRsp(int code, String msg, T data) {
		return new ZJ_Result<T>().setCode(code).setMsg(msg).setData(data);
	}

}
