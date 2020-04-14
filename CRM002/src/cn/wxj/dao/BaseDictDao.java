package cn.wxj.dao;

import java.util.List;

import cn.wxj.domain.BaseDict;

public interface BaseDictDao extends BaseDao<BaseDict> {
	//根据类型获得数据字典列表
	List<BaseDict> getListByTypeCode(String dict_type_code);

}
