package com.dao;

import com.entity.XueshengbokeEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XueshengbokeVO;
import com.entity.view.XueshengbokeView;


/**
 * 学生博客
 * 
 * @author 
 * @email 
 * @date 2021-03-16 09:50:11
 */
public interface XueshengbokeDao extends BaseMapper<XueshengbokeEntity> {
	
	List<XueshengbokeVO> selectListVO(@Param("ew") Wrapper<XueshengbokeEntity> wrapper);
	
	XueshengbokeVO selectVO(@Param("ew") Wrapper<XueshengbokeEntity> wrapper);
	
	List<XueshengbokeView> selectListView(@Param("ew") Wrapper<XueshengbokeEntity> wrapper);

	List<XueshengbokeView> selectListView(Pagination page,@Param("ew") Wrapper<XueshengbokeEntity> wrapper);
	
	XueshengbokeView selectView(@Param("ew") Wrapper<XueshengbokeEntity> wrapper);
	
}
