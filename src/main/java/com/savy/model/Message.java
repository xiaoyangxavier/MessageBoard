package com.savy.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;
import java.util.List;

public class Message {
    private int messageId;//消息编号
    private String typeName;
    private int superMessageId;//父消息编号
    private String messageContent;//消息内容
    private String imageUrl;//图片地址
    private String voiceUrl;//音频地址
    private String videoUrl;//视频地址
    private int userId;//用户编号
    private double messageGrade;//用户评分
    private boolean isReplay;//是否是管理员回复的内容
    private boolean exitReplay;//是否被管理员回复
    private int typeId;
    private String messageTitle;
    private String userName;
    @JsonFormat(pattern="yyyy-MM-dd  HH:mm:ss")
    private Date messageDate;//消息发布日期
    //private Date messageTime;//消息发布时间

    public int getMessageId() {
        return messageId;
    }

    public void setMessageId(int messageId) {
        this.messageId = messageId;
    }

    public int getSuperMessageId() {
        return superMessageId;
    }

    public void setSuperMessageId(int superMessageId) {
        this.superMessageId = superMessageId;
    }

    public String getMessageContent() {
        return messageContent;
    }

    public void setMessageContent(String messageContent) {
        this.messageContent = messageContent;
    }

    @JsonFormat(pattern="yy-MM-dd",timezone = "GMT+8")
    public Date getMessageDate() {
        return messageDate;
    }

    public void setMessageDate(Date messageDate) {
        this.messageDate = messageDate;
    }

    @JsonFormat(pattern="HH:mm:ss",timezone = "GMT+8")
    public Date getMessageTime() {
        return messageDate;
    }

    //public void setMessageTime(Date messageTime) {
    //    this.messageTime = messageTime;
   // }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getVoiceUrl() {
        return voiceUrl;
    }

    public void setVoiceUrl(String voiceUrl) {
        this.voiceUrl = voiceUrl;
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public double getMessageGrade() {
        return messageGrade;
    }

    public void setMessageGrade(double messageGrade) {
        this.messageGrade = messageGrade;
    }

    public boolean isReplay() {
        return isReplay;
    }

    public void setReplay(boolean replay) {
        isReplay = replay;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public String getMessageTitle() {
        return messageTitle;
    }

    public void setMessageTitle(String messageTitle) {
        this.messageTitle = messageTitle;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public boolean isExitReplay() {
        return exitReplay;
    }

    public void setExitReplay(boolean exitReplay) {
        this.exitReplay = exitReplay;
    }

    @Override
    public String toString() {
        return "Message{" +
                "messageId=" + messageId +
                ", typeName='" + typeName + '\'' +
                ", superMessageId=" + superMessageId +
                ", messageContent='" + messageContent + '\'' +
                ", imageUrl='" + imageUrl + '\'' +
                ", voiceUrl='" + voiceUrl + '\'' +
                ", videoUrl='" + videoUrl + '\'' +
                ", userId=" + userId +
                ", messageGrade=" + messageGrade +
                ", isReplay=" + isReplay +
                ", exitReplay=" + exitReplay +
                ", typeId=" + typeId +
                ", messageTitle='" + messageTitle + '\'' +
                ", userName='" + userName + '\'' +
                ", messageDate=" + messageDate +
                '}';
    }
}
