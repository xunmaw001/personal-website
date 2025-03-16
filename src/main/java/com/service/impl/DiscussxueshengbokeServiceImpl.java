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


import com.dao.DiscussxueshengbokeDao;
import com.entity.DiscussxueshengbokeEntity;
import com.service.DiscussxueshengbokeService;
import com.entity.vo.DiscussxueshengbokeVO;
import com.entity.view.DiscussxueshengbokeView;

@Service("discussxueshengbokeService")
public class DiscussxueshengbokeServiceImpl extends ServiceImpl<DiscussxueshengbokeDao, DiscussxueshengbokeEntity> implements DiscussxueshengbokeService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussxueshengbokeEntity> page = this.selectPage(
                new Query<DiscussxueshengbokeEntity>(params).getPage(),
                new EntityWrapper<DiscussxueshengbokeEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussxueshengbokeEntity> wrapper) {
		  Page<DiscussxueshengbokeView> page =new Query<DiscussxueshengbokeView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussxueshengbokeVO> selectListVO(Wrapper<DiscussxueshengbokeEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussxueshengbokeVO selectVO(Wrapper<DiscussxueshengbokeEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussxueshengbokeView> selectListView(Wrapper<DiscussxueshengbokeEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussxueshengbokeView selectView(Wrapper<DiscussxueshengbokeEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
