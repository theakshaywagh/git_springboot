package com.ServiceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.Dao.DaoInterface;
import com.Model.Uservo;
import com.Service.ServiceInterface;

//@Transactionalss

@Service
public class ServiceImplement implements ServiceInterface
{
	
	@Autowired
	DaoInterface di;

	@Override
	public int addUser(Uservo uservo) 
	{
		System.out.println("In Services");
		
		Uservo u=di.save(uservo);
		int n=0;
		if(u!=null)
		{
			n=1;
		}
		return n;
	}

	@Override
	public List<Uservo> checkLogin(String username, String password) 
	{
		Uservo uservo=di.findAllByUsernameAndPassword(username,password);
		List<Uservo> list=null;
		if(uservo!=null)
		{
			list=getAllData();
		}
		return list;
	}

	@Override
	public List<Uservo> edit(int uid) 
	{
		Uservo uservo=di.findAllByUid(uid);
		List<Uservo> list=new ArrayList<Uservo>();
		list.add(uservo);
		return list;
	}

	@Override
	public List<Uservo> delete(int uid) 
	{
		di.delete(uid);
		return getAllData();
	}

	@Override
	public List<Uservo> update(Uservo uservo)
	{
		di.save(uservo);
		return getAllData();
	}
	
	public List<Uservo> getAllData()
	{
		List<Uservo> list=(List<Uservo>) di.findAll();
		return list;
	}

}
