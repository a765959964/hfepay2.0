package com.hfepay.scancode.utils;

/**
 * @Description: 响应码枚举，参考HTTP状态码的语义
 * @author zf
 * @date 2019-7-18 10:56:39
 */
public enum ZJ_Code {

	// 成功
	SUCCESS(200),

	// 失败
	FAIL(400),

	// 未认证（签名错误）
	UNAUTHORIZED(401),

	/** 未登录 */
	UNAUTHEN(4401),

	/** 未授权，拒绝访问 */
	UNAUTHZ(4403),

	// 服务器内部错误
	INTERNAL_SERVER_ERROR(500);

	public int code;

	ZJ_Code(int code) {
		this.code = code;
	}
}
