package com.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.Model.Uservo;

public interface ServiceInterface
{
	
	
	public int addUser(Uservo uservo);
	public List<Uservo> checkLogin(String username,String password);
	public List<Uservo> edit(int uid);
	public List<Uservo> delete(int uid);
	public List<Uservo> update(Uservo uservo);
	
}
