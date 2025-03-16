package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.XueshengbokeEntity;
import com.entity.view.XueshengbokeView;

import com.service.XueshengbokeService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 学生博客
 * 后端接口
 * @author 
 * @email 
 * @date 2021-03-16 09:50:11
 */
@RestController
@RequestMapping("/xueshengboke")
public class XueshengbokeController {
    @Autowired
    private XueshengbokeService xueshengbokeService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,XueshengbokeEntity xueshengboke, 
		HttpServletRequest request){
    	if(!request.getSession().getAttribute("role").toString().equals("管理员")) {
    		xueshengboke.setUserid((Long)request.getSession().getAttribute("userId"));
    	}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("xuesheng")) {
			xueshengboke.setXuehao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<XueshengbokeEntity> ew = new EntityWrapper<XueshengbokeEntity>();
    	PageUtils page = xueshengbokeService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xueshengboke), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,XueshengbokeEntity xueshengboke, HttpServletRequest request){
        EntityWrapper<XueshengbokeEntity> ew = new EntityWrapper<XueshengbokeEntity>();
    	PageUtils page = xueshengbokeService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xueshengboke), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( XueshengbokeEntity xueshengboke){
       	EntityWrapper<XueshengbokeEntity> ew = new EntityWrapper<XueshengbokeEntity>();
      	ew.allEq(MPUtil.allEQMapPre( xueshengboke, "xueshengboke")); 
        return R.ok().put("data", xueshengbokeService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(XueshengbokeEntity xueshengboke){
        EntityWrapper< XueshengbokeEntity> ew = new EntityWrapper< XueshengbokeEntity>();
 		ew.allEq(MPUtil.allEQMapPre( xueshengboke, "xueshengboke")); 
		XueshengbokeView xueshengbokeView =  xueshengbokeService.selectView(ew);
		return R.ok("查询学生博客成功").put("data", xueshengbokeView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        XueshengbokeEntity xueshengboke = xueshengbokeService.selectById(id);
		xueshengboke.setClicknum(xueshengboke.getClicknum()+1);
		xueshengbokeService.updateById(xueshengboke);
        return R.ok().put("data", xueshengboke);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        XueshengbokeEntity xueshengboke = xueshengbokeService.selectById(id);
		xueshengboke.setClicknum(xueshengboke.getClicknum()+1);
		xueshengbokeService.updateById(xueshengboke);
        return R.ok().put("data", xueshengboke);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody XueshengbokeEntity xueshengboke, HttpServletRequest request){
    	xueshengboke.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xueshengboke);
    	xueshengboke.setUserid((Long)request.getSession().getAttribute("userId"));

        xueshengbokeService.insert(xueshengboke);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody XueshengbokeEntity xueshengboke, HttpServletRequest request){
    	xueshengboke.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xueshengboke);

        xueshengbokeService.insert(xueshengboke);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody XueshengbokeEntity xueshengboke, HttpServletRequest request){
        //ValidatorUtils.validateEntity(xueshengboke);
        xueshengbokeService.updateById(xueshengboke);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        xueshengbokeService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<XueshengbokeEntity> wrapper = new EntityWrapper<XueshengbokeEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}
		if(!request.getSession().getAttribute("role").toString().equals("管理员")) {
    		wrapper.eq("userid", (Long)request.getSession().getAttribute("userId"));
    	}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("xuesheng")) {
			wrapper.eq("xuehao", (String)request.getSession().getAttribute("username"));
		}

		int count = xueshengbokeService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	


}
