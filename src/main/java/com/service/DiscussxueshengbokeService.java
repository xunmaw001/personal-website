package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussxueshengbokeEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussxueshengbokeVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussxueshengbokeView;


/**
 * 学生博客评论表
 *
 * @author 
 * @email 
 * @date 2021-03-16 09:50:11
 */
public interface DiscussxueshengbokeService extends IService<DiscussxueshengbokeEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussxueshengbokeVO> selectListVO(Wrapper<DiscussxueshengbokeEntity> wrapper);
   	
   	DiscussxueshengbokeVO selectVO(@Param("ew") Wrapper<DiscussxueshengbokeEntity> wrapper);
   	
   	List<DiscussxueshengbokeView> selectListView(Wrapper<DiscussxueshengbokeEntity> wrapper);
   	
   	DiscussxueshengbokeView selectView(@Param("ew") Wrapper<DiscussxueshengbokeEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussxueshengbokeEntity> wrapper);
   	
}

