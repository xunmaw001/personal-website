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


import com.dao.DiscussbowenleixingDao;
import com.entity.DiscussbowenleixingEntity;
import com.service.DiscussbowenleixingService;
import com.entity.vo.DiscussbowenleixingVO;
import com.entity.view.DiscussbowenleixingView;

@Service("discussbowenleixingService")
public class DiscussbowenleixingServiceImpl extends ServiceImpl<DiscussbowenleixingDao, DiscussbowenleixingEntity> implements DiscussbowenleixingService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussbowenleixingEntity> page = this.selectPage(
                new Query<DiscussbowenleixingEntity>(params).getPage(),
                new EntityWrapper<DiscussbowenleixingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussbowenleixingEntity> wrapper) {
		  Page<DiscussbowenleixingView> page =new Query<DiscussbowenleixingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussbowenleixingVO> selectListVO(Wrapper<DiscussbowenleixingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussbowenleixingVO selectVO(Wrapper<DiscussbowenleixingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussbowenleixingView> selectListView(Wrapper<DiscussbowenleixingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussbowenleixingView selectView(Wrapper<DiscussbowenleixingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
