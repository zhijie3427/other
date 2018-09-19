package com.lqq.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lqq.dao.DeptMapper;
import com.lqq.dao.DocumentMapper;
import com.lqq.dao.EmployeeMapper;
import com.lqq.dao.JobMapper;
import com.lqq.dao.NoticeMapper;
import com.lqq.dao.UserMapper;
import com.lqq.entity.Dept;
import com.lqq.entity.Document;
import com.lqq.entity.Employee;
import com.lqq.entity.Job;
import com.lqq.entity.Notice;
import com.lqq.entity.User;
import com.lqq.service.HbrService;

@Transactional
@Service("hbrService")
public class HbrServiceImpl implements HbrService {

	@Autowired
	private UserMapper userMapper;

	@Autowired
	private DeptMapper deptMapper;

	@Autowired
	private JobMapper jobMapper;

	@Autowired
	private EmployeeMapper employeeMapper;

	@Autowired
	private DocumentMapper documentMapper;

	@Autowired
	private NoticeMapper noticeMapper;

	public User login(String loginName, String password) {

		return userMapper.selectUserByLoginNameAndPassword(loginName, password);
	}

	public User findUserById(Integer id) {

		return userMapper.selectUserById(id);
	}

	public List<User> findUserByParam(Map<String, Object> params) {

		return userMapper.selectUserByParam(params);
	}

	public boolean updateUser(User user) {

		return userMapper.updateUser(user);
	}

	public boolean deleteUser(Integer id) {

		return userMapper.deleteUserById(id);
	}

	public boolean addUser(User user) {

		return userMapper.insertUser(user);
	}

	public Integer selectUserCount(Map<String, Object> params) {

		return userMapper.count(params);
	}

	public List<Employee> selectEmployeeByParams(Map<String, Object> params) {

		return employeeMapper.selectByParams(params);
	}

	public Integer selectEmployeeCount(Map<String, Object> params) {

		return employeeMapper.count(params);
	}

	public boolean addEmployee(Employee employee) {

		return employeeMapper.insert(employee);
	}

	public boolean updateEmployee(Employee employee) {

		return employeeMapper.update(employee);
	}

	public Employee selectEmployeeById(Integer id) {

		return employeeMapper.selectById(id);
	}

	public boolean deleteEmployee(Integer id) {

		return employeeMapper.delete(id);
	}

	public List<Job> selectJobByParams(Map<String, Object> params) {

		return jobMapper.selectJobByParams(params);
	}

	public Job selectJobById(Integer id) {

		return jobMapper.selectById(id);
	}

	public Integer selectJobCount(Map<String, Object> params) {

		return jobMapper.count(params);
	}

	public boolean deleteJob(Integer id) {

		return jobMapper.delete(id);
	}

	public boolean addJob(Job job) {

		return jobMapper.insert(job);
	}

	public boolean updateJob(Job job) {

		return jobMapper.update(job);
	}

	public List<Dept> selectDeptByParams(Map<String, Object> params) {

		return deptMapper.selectDeptByParams(params);
	}

	public Integer selectDeptCount(Map<String, Object> params) {

		return deptMapper.count(params);
	}

	public Dept selectDeptById(Integer id) {

		return deptMapper.selectById(id);
	}

	public boolean deleteDept(Integer id) {

		return deptMapper.deleteDept(id);
	}

	public boolean addDept(Dept dept) {

		return deptMapper.insert(dept);
	}

	public boolean updateDept(Dept dept) {

		return deptMapper.update(dept);
	}

	public List<Notice> selectNoticeByParams(Map<String, Object> params) {

		return noticeMapper.selectByParams(params);
	}

	public Integer selectNoticeCount(Map<String, Object> params) {

		return noticeMapper.count(params);
	}

	public Notice selecNoticetById(Integer id) {

		return noticeMapper.selectById(id);
	}

	public boolean updateNotice(Notice notice) {

		return noticeMapper.update(notice);
	}

	public boolean addNotice(Notice notice) {

		return noticeMapper.insert(notice);
	}

	public List<Document> selectDocumentByParams(Map<String, Object> params) {

		return documentMapper.selectByParams(params);
	}

	public Integer selectDocumentCount(Map<String, Object> params) {

		return documentMapper.count(params);
	}

	public Document selecDocumentById(Integer id) {

		return documentMapper.selectById(id);
	}

	public boolean deleteDocumentById(Integer id) {

		return documentMapper.deleteById(id);
	}

	public boolean addDocument(Document document) {
		return documentMapper.insert(document);
	}

	public boolean updateDocument(Document document) {
		return documentMapper.update(document);
	}

	public boolean deleteNotice(Integer id) {
		return noticeMapper.deleteById(id);
	}

}
