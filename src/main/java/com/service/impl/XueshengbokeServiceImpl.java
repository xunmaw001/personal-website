package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.XueshengbokeDao;
import com.entity.XueshengbokeEntity;
import com.service.XueshengbokeService;
import com.entity.vo.XueshengbokeVO;
import com.entity.view.XueshengbokeView;

@Service("xueshengbokeService")
public class XueshengbokeServiceImpl extends ServiceImpl<XueshengbokeDao, XueshengbokeEntity> implements XueshengbokeService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XueshengbokeEntity> page = this.selectPage(
                new Query<XueshengbokeEntity>(params).getPage(),
                new EntityWrapper<XueshengbokeEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XueshengbokeEntity> wrapper) {
		  Page<XueshengbokeView> page =new Query<XueshengbokeView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XueshengbokeVO> selectListVO(Wrapper<XueshengbokeEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XueshengbokeVO selectVO(Wrapper<XueshengbokeEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XueshengbokeView> selectListView(Wrapper<XueshengbokeEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XueshengbokeView selectView(Wrapper<XueshengbokeEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
