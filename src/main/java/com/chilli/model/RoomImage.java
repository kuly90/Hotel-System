package com.chilli.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "roomImage")
public class RoomImage implements Serializable {
  private static final long serialVersionUID = 1L;

  /* room image detail Id */
  @Id
  @Column(name = "ROOM_IMAGE_ID")
  private String roomImgId;

  /* room image detail path */
  @Column(name = "ROOM_IMAGE_URL")
  private String roomImgUrl;

  /* language */
  @Column(name = "LANGUAGE")
  private String language;

  /* Content */
  @Column(name = "ROOM_IMAGE_CONTENT")
  private String content;

  /* type */
  @Column(name = "ROOM_IMAGE_TYPE")
  private String type;

  /* City */
  @ManyToOne
  @JoinColumn(name = "ROOM_ID")
  private Room room;

  /**
   * get room image id
   * 
   * @return roomImgId String
   */
  public String getRoomImgId() {
    return roomImgId;
  }

  /**
   * set room image id
   * 
   * @param roomImgId String
   */
  public void setRoomImgId(String roomImgId) {
    this.roomImgId = roomImgId;
  }

  /**
   * get room image url
   * 
   * @return roomImgUrl String
   */
  public String getRoomImgUrl() {
    return roomImgUrl;
  }

  /**
   * set room image url
   * 
   * @param roomImgUrl String
   */
  public void setRoomImgUrl(String roomImgUrl) {
    this.roomImgUrl = roomImgUrl;
  }

  /**
   * get language
   * 
   * @return language String
   */
  public String getLanguage() {
    return language;
  }

  /**
   * set language
   * 
   * @param language String
   */
  public void setLanguage(String language) {
    this.language = language;
  }

  /**
   * get content
   * 
   * @return String
   */
  public String getContent() {
    return content;
  }

  /**
   * set content
   * 
   * @param content
   */
  public void setContent(String content) {
    this.content = content;
  }

  /**
   * get type
   * 
   * @return tpye String
   */
  public String getType() {
    return type;
  }

  /**
   * Set type
   * 
   * @param type String
   */
  public void setType(String type) {
    this.type = type;
  }

  /**
   * get Room
   * 
   * @return Room
   */
  public Room getRoom() {
    return room;
  }

  /**
   * set Room
   * 
   * @param Room Room
   */
  public void setRoom(Room room) {
    this.room = room;
  }

}
