package com.spb.subject.user.service;
 
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spb.subject.user.domain.UserVO;
import com.spb.subject.user.mapper.UserMapper;
 
@Service("com.spb.subject.user.service.UserService")
public class UserService {
 
    @Resource(name="com.spb.subject.user.mapper.UserMapper")
    UserMapper userMapper;
    
    public UserVO userDetailService(int uid) throws Exception{
        
        return userMapper.userDetail(uid);
    }
    
    public UserVO userIdService(String id) throws Exception{
        
        return userMapper.userId(id);
    }
    
    public void userInsertService(UserVO bean) throws Exception{
        
        userMapper.userInsert(bean);
    }
    
    public void userUpdateService(UserVO bean) throws Exception{
        
       userMapper.userUpdate(bean);
    }
    
    public void userDelUpdateService(int uid) throws Exception{
        
         userMapper.userDelUpdate(uid);
    }
}


