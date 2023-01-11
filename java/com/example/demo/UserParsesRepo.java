package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;



@Repository
public interface UserParsesRepo extends JpaRepository<UserParses, Integer> {

	@Query("select u From UserParses u WHERE u.id =:n ")
	public List<UserParses> getUserByName(@Param("n")int name);
	
	@Query("select u From UserParses u WHERE u.date =:d ")
	public List<UserParses> getUserByRevenue(@Param("d")String date);
	
	@Query(value="SELECT max(id) FROM user_parses", nativeQuery = true)
	public int getRev();
	@Query(value="SELECT sum(total) FROM user_parses", nativeQuery = true)
	public int getRevenu();
}
