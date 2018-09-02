package com.spb.subject.user.mapper;

import org.springframework.stereotype.Repository;

import com.spb.subject.user.domain.UserVO;

@Repository("com.spb.subject.user.mapper.UserMapper")
public interface UserMapper {
    
    //유저정보

    public UserVO userDetail(int uid) throws Exception;

    public UserVO userId(String id) throws Exception;

    public void userInsert(UserVO bean) throws Exception;

    public void userDelUpdate(int uid) throws Exception;

    public void userUpdate(UserVO bean) throws Exception;

    public int userDelUpdate(UserVO bean) throws Exception;


}
