package cn.wxj.dao;

import java.util.List;

import cn.wxj.domain.Customer;

public interface CustomerDao extends BaseDao<Customer> {
	//按照行业统计客户数量
	List getIndustryCount();
	//按照来源统计客户数量
	List getSourceCount();
}
