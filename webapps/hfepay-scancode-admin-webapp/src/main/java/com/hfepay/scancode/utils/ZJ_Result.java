package com.hfepay.scancode.utils;

import java.io.Serializable;
import java.util.List;

import com.alibaba.fastjson.JSON;

/**
 * @Description: 返回对象实体
 * @author zf
 * @date 2019-7-18 10:54:23
 */
public class ZJ_Result<T> implements Serializable {

	private static final long serialVersionUID = 3758864789222317092L;

	public int code;

	private String msg;

	private T data;
	


	public ZJ_Result<T> setCode(ZJ_Code retCode) {
		this.code = retCode.code;
		return this;
	}

	public int getCode() {
		return code;
	}

	public ZJ_Result<T> setCode(int code) {
		this.code = code;
		return this;
	}

	public String getMsg() {
		return msg;
	}

	public ZJ_Result<T> setMsg(String msg) {
		this.msg = msg;
		return this;
	}

	public T getData() {
		return data;
	}

	public ZJ_Result<T> setData(T data) {
		this.data = data;
		return this;
	}

	@Override
	public String toString() {
		return JSON.toJSONString(this);
	}
	
	

}