package com.dao;

import com.entity.DiscussbowenleixingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussbowenleixingVO;
import com.entity.view.DiscussbowenleixingView;


/**
 * 博文类型评论表
 * 
 * @author 
 * @email 
 * @date 2021-03-16 09:50:11
 */
public interface DiscussbowenleixingDao extends BaseMapper<DiscussbowenleixingEntity> {
	
	List<DiscussbowenleixingVO> selectListVO(@Param("ew") Wrapper<DiscussbowenleixingEntity> wrapper);
	
	DiscussbowenleixingVO selectVO(@Param("ew") Wrapper<DiscussbowenleixingEntity> wrapper);
	
	List<DiscussbowenleixingView> selectListView(@Param("ew") Wrapper<DiscussbowenleixingEntity> wrapper);

	List<DiscussbowenleixingView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussbowenleixingEntity> wrapper);
	
	DiscussbowenleixingView selectView(@Param("ew") Wrapper<DiscussbowenleixingEntity> wrapper);
	
}
