package com.hbr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.mapping.FetchType;

import static com.hbr.util.common.HbrConstants.DOCUMENT_TABLE;

import com.hbr.dao.provider.DocumentDynaSqlProvider;
import com.hbr.entity.Document;

public interface DocumentMapper {

	// 根据条件查询
	@SelectProvider(type = DocumentDynaSqlProvider.class, method = "selectByParams")
	@Results({
			@Result(column = "user_id", property = "user", one = @One(select = "com.hbr.dao.UserMapper.selectUserById", fetchType = FetchType.EAGER)) })
	List<Document> selectByParams(Map<String, Object> params);

	// 根据条件查询数量
	Integer count(Map<String, Object> params);

	// 根据id查询
	@Select("select * from " + DOCUMENT_TABLE + " where id = #{id}")
	@Results({
			@Result(column = "user_id", property = "user", one = @One(select = "com.hbr.dao.UserMapper.selectUserById", fetchType = FetchType.EAGER)) })
	Document selectById(Integer id);

	// 删除
	@Delete("delete from " + DOCUMENT_TABLE + " where id = #{id}")
	boolean deleteById(Integer id);

	// 动态插入
	@InsertProvider(type = DocumentDynaSqlProvider.class, method = "insert")
	boolean insert(Document document);

	// 动态修改
	@UpdateProvider(type = DocumentDynaSqlProvider.class, method = "update")
	boolean update(Document document);

}