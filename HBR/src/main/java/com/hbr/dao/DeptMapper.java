package com.hbr.dao;

import java.util.List;
import java.util.Map;
import static com.hbr.util.common.HbrConstants.*;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.UpdateProvider;

import com.hbr.dao.provider.DeptDynaSqlProvider;
import com.hbr.entity.Dept;

public interface DeptMapper {

	// 根据条件动态查询dept
	@SelectProvider(type = DeptDynaSqlProvider.class, method = "selectByParams")
	List<Dept> selectDeptByParams(Map<String, Object> params);

	// 动态查询数量
	@SelectProvider(type = DeptDynaSqlProvider.class, method = "count")
	Integer count(Map<String, Object> params);

	// 根据id查询dept
	@Select("select * from " + DEPT_TABLE + " where id = #{id}")
	Dept selectById(Integer id);

	// 根据id删除部门
	@Delete("delete from " + DEPT_TABLE + " where id = #{id}")
	boolean deleteDept(Integer id);

	// 动态插入部门
	@InsertProvider(type = DeptDynaSqlProvider.class, method = "insert")
	boolean insert(Dept dept);

	// 动态修改部门
	@UpdateProvider(type = DeptDynaSqlProvider.class, method = "update")
	boolean update(Dept dept);

}