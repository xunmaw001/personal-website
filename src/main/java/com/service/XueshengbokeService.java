package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XueshengbokeEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XueshengbokeVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XueshengbokeView;


/**
 * 学生博客
 *
 * @author 
 * @email 
 * @date 2021-03-16 09:50:11
 */
public interface XueshengbokeService extends IService<XueshengbokeEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XueshengbokeVO> selectListVO(Wrapper<XueshengbokeEntity> wrapper);
   	
   	XueshengbokeVO selectVO(@Param("ew") Wrapper<XueshengbokeEntity> wrapper);
   	
   	List<XueshengbokeView> selectListView(Wrapper<XueshengbokeEntity> wrapper);
   	
   	XueshengbokeView selectView(@Param("ew") Wrapper<XueshengbokeEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XueshengbokeEntity> wrapper);
   	
}

