package com.lqq.controller;

import static com.lqq.util.common.HbrConstants.MAP_DEPT;
import static com.lqq.util.common.HbrConstants.PAGE_DEFAULT_SIZE;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lqq.entity.Dept;
import com.lqq.service.HbrService;

@Controller
public class DeptController {

	@Autowired
	@Qualifier("hbrService")
	private HbrService hbrService;

	@RequestMapping("/dept/deptSearchIndex")
	public String searchIndex() {
		return "manager/dept/dept_search";
	}

	@RequestMapping("/dept/deptSearch")
	public String search(String name, HttpServletRequest request, Integer curPage) {
		Map<String, Object> params = new HashMap<String, Object>();
		if (curPage == null) {
			curPage = 1;
		}
		Dept dept = new Dept();
		dept.setName(name);
		params.put(MAP_DEPT, dept);
		PageHelper.startPage(curPage, PAGE_DEFAULT_SIZE);
		List<Dept> list = hbrService.selectDeptByParams(params);
		PageInfo<Dept> pageInfo = new PageInfo<Dept>(list);
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("dept_list", list);
		return "manager/dept/dept_search";
	}

	@RequestMapping("/dept/deptAddIndex")
	public String addDeptIndex(Model model) {
		Dept dept = new Dept();
		model.addAttribute("dept", dept);
		return "manager/dept/dept_add";
	}

	@RequestMapping("/dept/deptAdd")
	public String addDept(@Valid @ModelAttribute Dept dept, Errors errors, HttpServletRequest request) {
		if (errors.hasErrors()) {
			return "manager/dept/dept_add";
		}
		request.setAttribute("title", "添加状态");
		if (hbrService.addDept(dept)) {
			request.setAttribute("message", "添加部门成功!");
			return "manager/dept/dept_add_result";
		} else {
			request.setAttribute("message", "添加部门出错!");
			return "manager/dept/dept_add";
		}
	}

	@RequestMapping("/dept/deptModifyIndex")
	public String modifyIndex(Integer id, Model model) {
		Dept dept = hbrService.selectDeptById(id);
		model.addAttribute("dept", dept);
		return "manager/dept/dept_modify";
	}

	@RequestMapping("/dept/deptModify")
	public String modify(@Valid @ModelAttribute Dept dept, Errors errors, HttpServletRequest request) {
		if (errors.hasErrors()) {
			return "manager/dept/dept_modfiy";
		}
		request.setAttribute("title", "修改状态");
		if (hbrService.updateDept(dept)) {
			request.setAttribute("message", "修改部门信息成功!");
			return "manager/dept/dept_add_result";
		} else {
			request.setAttribute("message", "修改部门信息出错!");
			return "manager/dept/dept_add_result";
		}
	}

	@RequestMapping("/dept/deptDelete")
	public void delete(Integer id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (hbrService.deleteDept(id)) {
			request.setAttribute("title", "删除状态");
			request.setAttribute("message", "删除部门成功!");
			response.getWriter().write("OK");
		} else {
			request.setAttribute("title", "删除状态");
			request.setAttribute("message", "删除部门成功!");
			response.getWriter().write("FALSE");
		}
	}

}
