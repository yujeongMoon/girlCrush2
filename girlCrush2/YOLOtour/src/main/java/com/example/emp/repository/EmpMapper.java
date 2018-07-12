package com.example.emp.repository;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.emp.model.Emp;

@Mapper
public interface EmpMapper {
	
	@Insert("INSERT INTO YOLO_EMP(yoloId, email, password) VALUES(ID_YOLO_EMP.NEXTVAL, #{email}, #{password})")
	public int insert(Emp emp);

	@Update("UPDATE YOLO_EMP SET password = #{password} WHERE email = #{email}")
	public int update(Emp emp);

	@Delete("DELETE FROM YOLO_EMP WHERE email = #{email}")
	public int delete(Emp emp);

	@Select("SELECT COUNT(*) FROM YOLO_EMP")
	public int count();

	@Select("SELECT * FROM YOLO_EMP ORDER BY email ASC")
	// 생략이 가능하다. 생략하면 아래 선언이 있는 것처럼 작동한다.
	@ResultType(Emp.class) 
	public List<Emp> selectAll();

	@Select("SELECT * FROM YOLO_EMP WHERE email = #{email}")
	// 선언해 놓으면 다른 메소드에서 @ResultMap("userResultMap") 선언으로 이용할 수 있다.
	@Results(id = "userResultMap", value = { 
			@Result(property = "email", column = "email"),
			@Result(property = "password", column = "password") })
	public Emp selectByEmail(String email);
}
