package com.chilli.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Message
 * 
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 * 
 */
@Entity
@Table(name = "message")
public class MessageRes implements Serializable {
  private static final long serialVersionUID = 1L;
  
  /* message Id */
  @Id
  @Column(name = "MESSAGE_ID")
  private String msgId;
  
  /* Message Result */
  @Column(name = "MESSAGE_RST")
  private String msgResult;
  
  /* Message Content */
  @Column(name = "MESSAGE_CONTENT")
  private String msgContent;

  /* Description */
  @Column(name = "MESSAGE_DESCRIPTION")
  private String msgDescription;

  /**
   * get Message Id
   * @return message Id
   */
  public String getMsgId() {
    return msgId;
  }

  /**
   * Set msg Id
   * @param msgId
   */
  public void setMsgId(String msgId) {
    this.msgId = msgId;
  }

/**
   * Get Message Content
   * @return msgContent
   */
  public String getMsgContent() {
    return msgContent;
  }

  /**
   * get msg result
   * @return
   */
  public String getMsgResult() {
    return msgResult;
  }

  /**
   * set msg result
   * @param msgResult
   */
  public void setMsgResult(String msgResult) {
    this.msgResult = msgResult;
  }
  
  /**
   * Set msg Content
   * @param msgContent
   */
  public void setMsgContent(String msgContent) {
    this.msgContent = msgContent;
  }

  /**
   * Get Description
   * @return msgDescription
   */
  public String getMsgDescription() {
    return msgDescription;
  }

  /**
   * Set msg Description
   * @param msgDescription
   */
  public void setMsgDescription(String msgDescription) {
    this.msgDescription = msgDescription;
  }

}
