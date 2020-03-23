package com.kakarote.crm9.erp.oa.entity.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseOaLog<M extends BaseOaLog<M>> extends Model<M> implements IBean {

	public void setLogId(Integer logId) {
		set("log_id", logId);
	}

	public Integer getLogId() {
		return getInt("log_id");
	}

	public void setCategoryId(Integer categoryId) {
		set("category_id", categoryId);
	}

	public Integer getCategoryId() {
		return getInt("category_id");
	}

	public void setTitle(String title) {
		set("title", title);
	}

	public String getTitle() {
		return getStr("title");
	}

	public void setContent(String content) {
		set("content", content);
	}

	public String getContent() {
		return getStr("content");
	}

	public void setTomorrow(String tomorrow) {
		set("tomorrow", tomorrow);
	}

	public String getTomorrow() {
		return getStr("tomorrow");
	}

	public void setQuestion(String question) {
		set("question", question);
	}

	public String getQuestion() {
		return getStr("question");
	}

	public void setCreateUserId(Integer createUserId) {
		set("create_user_id", createUserId);
	}

	public Integer getCreateUserId() {
		return getInt("create_user_id");
	}

	public void setCreateTime(java.util.Date createTime) {
		set("create_time", createTime);
	}

	public java.util.Date getCreateTime() {
		return get("create_time");
	}

	public void setUpdateTime(java.util.Date updateTime) {
		set("update_time", updateTime);
	}

	public java.util.Date getUpdateTime() {
		return get("update_time");
	}

	public void setSendUserIds(String sendUserIds) {
		set("send_user_ids", sendUserIds);
	}

	public String getSendUserIds() {
		return getStr("send_user_ids");
	}

	public void setSendDeptIds(String sendDeptIds) {
		set("send_dept_ids", sendDeptIds);
	}

	public String getSendDeptIds() {
		return getStr("send_dept_ids");
	}

	public void setBatchId(java.lang.String batchId) {
		set("batch_id", batchId);
	}

	public java.lang.String getBatchId() {
		return getStr("batch_id");
	}

	public String getReadUserIds(){
	    return getStr("read_user_ids");
    }
    public void setReadUserIds(String readUserIds){
	    set("read_user_ids",readUserIds);
    }


}
