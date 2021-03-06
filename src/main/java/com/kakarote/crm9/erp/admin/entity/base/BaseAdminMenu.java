package com.kakarote.crm9.erp.admin.entity.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseAdminMenu<M extends BaseAdminMenu<M>> extends Model<M> implements IBean {

	public void setMenuId(Integer menuId) {
		set("menu_id", menuId);
	}

	public Integer getMenuId() {
		return getInt("menu_id");
	}

	public void setParentId(Integer parentId) {
		set("parent_id", parentId);
	}

	public Integer getParentId() {
		return getInt("parent_id");
	}

	public void setMenuName(String menuName) {
		set("menu_name", menuName);
	}

	public String getMenuName() {
		return getStr("menu_name");
	}

	public void setRealm(String realm) {
		set("realm", realm);
	}

	public String getRealm() {
		return getStr("realm");
	}

	public void setMenuType(Integer menuType) {
		set("menu_type", menuType);
	}

	public Integer getMenuType() {
		return getInt("menu_type");
	}

	public void setSort(Long sort) {
		set("sort", sort);
	}

	public Long getSort() {
		return getLong("sort");
	}

	public void setStatus(Integer status) {
		set("status", status);
	}

	public Integer getStatus() {
		return getInt("status");
	}

	public void setRemarks(String remarks) {
		set("remarks", remarks);
	}

	public String getRemarks() {
		return getStr("remarks");
	}

}
