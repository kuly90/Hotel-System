package com.chilli.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chilli.model.MessageRes;

@Repository
/**
 * Get data of Message
 * 
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 *
 */
public interface MessageResRepository extends CrudRepository<MessageRes, String> {

  // find message By Id
	MessageRes findMessageResByMsgId(String strMsgId);
}
