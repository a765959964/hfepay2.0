/*
 * Powered By [华付通]
 * Web Site: http://www.huaepay.com/
 * Since 2016 - 2016
 */package com.hfepay.scancode.commons.dao;

import java.util.List;
import java.util.Map;

import com.hfepay.commons.base.annotation.Generated;
import com.hfepay.commons.dao.EntityDAO;
import com.hfepay.scancode.commons.entity.ChannelBase;

@Generated("2016-10-13 15:19:03")
public interface ChannelBaseDAO extends EntityDAO<ChannelBase, String> {

	/**
	 * @Title: updateStatus
	 * @Description: 状态更新
	 * @author: Ricky
	 * @param id
	 * @return: long
	 * @date CreateDate : 2016-10-13 15:19:03
	 */
	long updateStatus(String id,String status);	
	
	
	/**
	 * 自定义查询条件
	 * @param params
	 * @return
	 */
	List selectList(Map params);
}
