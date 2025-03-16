package com.dao;

import com.entity.DiscussxueshengbokeEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussxueshengbokeVO;
import com.entity.view.DiscussxueshengbokeView;


/**
 * 学生博客评论表
 * 
 * @author 
 * @email 
 * @date 2021-03-16 09:50:11
 */
public interface DiscussxueshengbokeDao extends BaseMapper<DiscussxueshengbokeEntity> {
	
	List<DiscussxueshengbokeVO> selectListVO(@Param("ew") Wrapper<DiscussxueshengbokeEntity> wrapper);
	
	DiscussxueshengbokeVO selectVO(@Param("ew") Wrapper<DiscussxueshengbokeEntity> wrapper);
	
	List<DiscussxueshengbokeView> selectListView(@Param("ew") Wrapper<DiscussxueshengbokeEntity> wrapper);

	List<DiscussxueshengbokeView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussxueshengbokeEntity> wrapper);
	
	DiscussxueshengbokeView selectView(@Param("ew") Wrapper<DiscussxueshengbokeEntity> wrapper);
	
}
