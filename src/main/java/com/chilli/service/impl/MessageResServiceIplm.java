package com.chilli.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chilli.model.MessageRes;
import com.chilli.repository.MessageResRepository;
import com.chilli.service.MessageResService;

@Service
/**
 * Process data from SQL of Message
 * @author This Mr.Ly
 * @version 1.0 2020-09-09
 *
 */
public class MessageResServiceIplm implements MessageResService {

  /* MessageResRepository */
  @Autowired
  MessageResRepository msgRepo;
  
  
  /**
   * Get object massage
   * @param strMsgId
   * @return Message
   */
  @Override
  public MessageRes getMessageById(String strMsgId) {
    // find message By Id
    MessageRes msgRes = msgRepo.findOne(strMsgId);
    
    return msgRes;
  }
}
