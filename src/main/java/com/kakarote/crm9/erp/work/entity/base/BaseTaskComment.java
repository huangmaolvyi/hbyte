package com.kakarote.crm9.erp.work.entity.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseTaskComment<M extends BaseTaskComment<M>> extends Model<M> implements IBean {

	public void setCommentId(Integer commentId) {
		set("comment_id", commentId);
	}

	public Integer getCommentId() {
		return getInt("comment_id");
	}

	public void setUserId(Integer userId) {
		set("user_id", userId);
	}

	public Integer getUserId() {
		return getInt("user_id");
	}

	public void setContent(String content) {
		set("content", content);
	}

	public String getContent() {
		return getStr("content");
	}

	public void setCreateTime(java.util.Date createTime) {
		set("create_time", createTime);
	}

	public java.util.Date getCreateTime() {
		return get("create_time");
	}

	public void setMainId(Integer mainId) {
		set("main_id", mainId);
	}

	public Integer getMainId() {
		return getInt("main_id");
	}

	public void setPid(Integer pid) {
		set("pid", pid);
	}

	public Integer getPid() {
		return getInt("pid");
	}

	public void setStatus(Integer status) {
		set("status", status);
	}

	public Integer getStatus() {
		return getInt("status");
	}

	public void setTypeId(Integer typeId) {
		set("type_id", typeId);
	}

	public Integer getTypeId() {
		return getInt("type_id");
	}

	public void setFavour(Integer favour) {
		set("favour", favour);
	}

	public Integer getFavour() {
		return getInt("favour");
	}

	public void setType(Integer type) {
		set("type", type);
	}

	public Integer getType() {
		return getInt("type");
	}

}
