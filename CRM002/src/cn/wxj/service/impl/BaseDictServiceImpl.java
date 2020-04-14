package cn.wxj.service.impl;

import java.util.List;

import cn.wxj.dao.BaseDictDao;
import cn.wxj.domain.BaseDict;
import cn.wxj.service.BaseDictService;

public class BaseDictServiceImpl implements BaseDictService {
	
	private BaseDictDao bdd;
	
	@Override
	public List<BaseDict> getListByTypeCode(String dict_type_code) {
		return bdd.getListByTypeCode(dict_type_code);
	}

	public void setBdd(BaseDictDao bdd) {
		this.bdd = bdd;
	}

	
}
