package com.Dao;


import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Model.Uservo;

@Repository
@Transactional
public interface DaoInterface extends CrudRepository<Uservo, Integer>
{

	public Uservo findAllByUsernameAndPassword(String username, String password);

	public Uservo findAllByUid(int uid);
	
}


