package com.chilli.service;

import com.chilli.model.MessageRes;

/**
 * get data from SQL of Message
 * 
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 *
 */
public interface MessageResService {

  /**
   * get MessageRes
   * @param msgId
   * @return MessageRes
   */
  public MessageRes getMessageById(String msgId);
}
