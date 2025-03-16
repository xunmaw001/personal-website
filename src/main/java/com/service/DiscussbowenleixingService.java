package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussbowenleixingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussbowenleixingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussbowenleixingView;


/**
 * 博文类型评论表
 *
 * @author 
 * @email 
 * @date 2021-03-16 09:50:11
 */
public interface DiscussbowenleixingService extends IService<DiscussbowenleixingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussbowenleixingVO> selectListVO(Wrapper<DiscussbowenleixingEntity> wrapper);
   	
   	DiscussbowenleixingVO selectVO(@Param("ew") Wrapper<DiscussbowenleixingEntity> wrapper);
   	
   	List<DiscussbowenleixingView> selectListView(Wrapper<DiscussbowenleixingEntity> wrapper);
   	
   	DiscussbowenleixingView selectView(@Param("ew") Wrapper<DiscussbowenleixingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussbowenleixingEntity> wrapper);
   	
}

