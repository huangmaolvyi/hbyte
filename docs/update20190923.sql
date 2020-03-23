-- ----------------------------
-- Table structure for 72crm_crm_customer_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_customer_setting`;
CREATE TABLE `72crm_crm_customer_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `setting_name` varchar(255) DEFAULT NULL COMMENT '��������',
  `customer_num` int(11) DEFAULT NULL COMMENT '��ӵ�пͻ�����',
  `customer_deal` int(1) DEFAULT '0' COMMENT '�ɽ��ͻ��Ƿ�ռ������ 0 ��ռ�� 1 ռ��',
  `type` int(1) DEFAULT NULL COMMENT '���� 1 ӵ�пͻ������� 2 �����ͻ�������',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COMMENT='Ա��ӵ���Լ������ͻ�������';

-- ----------------------------
-- Table structure for 72crm_crm_customer_settinguser
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_customer_settinguser`;
CREATE TABLE `72crm_crm_customer_settinguser` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `setting_id` int(11) NOT NULL COMMENT '�ͻ���������ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '�û�id',
  `dept_id` int(11) DEFAULT NULL COMMENT '����ID',
  `type` int(1) DEFAULT NULL COMMENT '1 Ա�� 2 ����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COMMENT='Ա��ӵ���Լ������ͻ�Ա��������';

ALTER TABLE `72crm_crm_business_product`
MODIFY COLUMN `discount`  decimal(10,2) NOT NULL COMMENT '�ۿ�' AFTER `num`;

ALTER TABLE `72crm_admin_user`
MODIFY COLUMN `parent_id`  bigint(20) NULL DEFAULT NULL COMMENT 'ֱ���ϼ�ID' AFTER `status`;

UPDATE `72crm_admin_role` SET `remark` = 'project',`role_type` = 8 WHERE `role_name` = '��Ŀ����Ա';
UPDATE `72crm_admin_role` SET `remark` = 'admin' WHERE `role_name` = '��������Ա' AND `role_id` = 1;
alter table 72crm_admin_role modify column role_type int(1) comment '0���Զ����ɫ1�������ɫ 2���ͻ������ɫ 3�����½�ɫ 4�������ɫ 5����Ŀ��ɫ 6����Ŀ�Զ����ɫ 7���칫��ɫ 8����Ŀ�����ɫ';
UPDATE `72crm_admin_role` SET `role_type` = 2 WHERE `role_type` IN (0,3,4);
UPDATE `72crm_admin_role` SET `role_type` = 7 WHERE `role_id` = 7;
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 100 AND `realm` = 'product';
UPDATE `72crm_admin_menu` SET `menu_id`='101', `parent_id`='2', `menu_name`='Ա��ҵ������', `realm`='contract', `menu_type`='1', `sort`='0', `status`='1', `remarks`=NULL WHERE (`menu_id`='101');
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 105 AND `realm` = 'read';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 111 AND `realm` = 'customer';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 112 AND `realm` = 'read';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 113 AND `realm` = 'funnel';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 114 AND `realm` = 'read';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 115 AND `realm` = 'receivables';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 116 AND `realm` = 'read';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 119 AND `realm` = 'performance';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 120 AND `realm` = 'read';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 121 AND `realm` = 'employe';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 122 AND `realm` = 'read';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 91 AND `realm` = 'crm';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 92 AND `realm` = 'examineFlow';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 93 AND `realm` = 'oa';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 94 AND `realm` = 'permission';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 95 AND `realm` = 'system';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 96 AND `realm` = 'user';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 37 AND `realm` = 'pool';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 38 AND `realm` = 'distribute';
DELETE FROM `72crm_admin_menu` WHERE `menu_id` = 39 AND `realm` = 'receive';
UPDATE `72crm_admin_menu` SET `menu_id`='1', `parent_id`='0', `menu_name`='�ͻ�����', `realm`='crm', `menu_type`='0', `sort`='0', `status`='1', `remarks`=NULL WHERE (`menu_id`='1');
DELETE FROM `72crm_admin_role_menu` WHERE `menu_id` NOT IN (SELECT `menu_id` FROM `72crm_admin_menu`);
DELETE FROM `72crm_admin_role_menu` WHERE `menu_id` IN (2,3,146,147);
UPDATE `72crm_admin_menu` SET `menu_id`='1', `parent_id`='0', `menu_name`='ȫ��', `realm`='crm', `menu_type`='0', `sort`='0', `status`='1', `remarks`=NULL WHERE (`menu_id`='1');
UPDATE `72crm_admin_menu` SET `menu_id`='2', `parent_id`='0', `menu_name`='ȫ��', `realm`='bi', `menu_type`='0', `sort`='0', `status`='1', `remarks`=NULL WHERE (`menu_id`='2');
UPDATE `72crm_admin_menu` SET `menu_id`='3', `parent_id`='0', `menu_name`='ȫ��', `realm`='manage', `menu_type`='0', `sort`='0', `status`='1', `remarks`=NULL WHERE (`menu_id`='3');
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('148', '0', 'ȫ��', 'oa', '0', '0', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('149', '0', 'ȫ��', 'project', '0', '0', '1', '��Ŀ�����ɫȨ��');
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('150', '148', 'ͨѶ¼', 'book', '1', '1', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('151', '150', '�鿴', 'read', '3', '0', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('152', '149', '��Ŀ����', 'projectManage', '1', '1', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('153', '152', '�½���Ŀ', 'save', '3', '2', '1', 'projectSave');
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('160', '3', '��ҵ��ҳ', 'system', '1', '1', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('161', '160', '�鿴', 'read', '3', '1', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('162', '160', '�༭', 'update', '3', '2', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('163', '3', 'Ӧ�ù���', 'configSet', '1', '2', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('164', '163', '�鿴', 'read', '3', '1', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('165', '163', 'ͣ��/����', 'update', '3', '2', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('166', '3', 'Ա���벿�Ź���', 'users', '1', '3', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('167', '166', '����/Ա���鿴', 'read', '3', '1', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('168', '166', 'Ա���½�', 'userSave', '3', '2', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('169', '166', 'Ա������/����', 'userEnables', '3', '3', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('170', '166', 'Ա������', 'userUpdate', '3', '4', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('171', '166', '�����½�', 'deptSave', '3', '5', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('172', '166', '���ű༭', 'deptUpdate', '3', '6', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('173', '166', '����ɾ��', 'deptDelete', '3', '7', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('174', '3', '��ɫȨ�޹���', 'permission', '1', '4', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('175', '174', '��ɫȨ������', 'update', '3', '1', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('176', '3', '����̨����', 'oa', '1', '5', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('177', '176', '�칫��������', 'examine', '3', '1', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('178', '3', '�������̹���', 'examineFlow', '1', '6', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('179', '178', '�������̹���', 'update', '3', '1', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('180', '3', '�ͻ���������', 'crm', '1', '7', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('181', '180', '�Զ����ֶ�����', 'field', '3', '1', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('182', '180', '�ͻ���������', 'pool', '3', '2', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('183', '180', 'ҵ���������', 'setting', '3', '3', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('184', '180', 'ҵ��Ŀ������', 'achievement', '3', '4', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('185', '3', '��Ŀ��������', 'work', '1', '8', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('186', '185', '��Ŀ����', 'update', '3', '1', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('187', '148', '����', 'announcement', '1', '2', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('188', '187', '�½�', 'save', '3', '1', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('189', '187', '�༭', 'update', '3', '2', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('190', '187', 'ɾ��', 'delete', '3', '3', '1', NULL);
INSERT INTO `72crm_admin_menu` (`menu_id`, `parent_id`, `menu_name`, `realm`, `menu_type`, `sort`, `status`, `remarks`) VALUES ('191', '10', '���óɽ�״̬', 'dealStatus', '3', '0', '1', NULL);
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('3', '166');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('3', '167');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('3', '168');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('3', '169');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('3', '170');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('3', '171');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('3', '172');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('3', '173');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('4', '178');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('4', '179');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('5', '176');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('5', '177');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('6', '180');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('6', '181');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('6', '182');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('6', '183');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('6', '184');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('7', '187');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('7', '188');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('7', '189');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('7', '190');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '3');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '160');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '161');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '162');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '163');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '164');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '165');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '166');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '167');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '168');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '169');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '170');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '171');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '172');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '173');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '174');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '175');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '176');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '177');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '178');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '179');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '180');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '181');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '182');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '183');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '184');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '185');
INSERT INTO `72crm_admin_role_menu` (`role_id`, `menu_id`) VALUES ('2', '186');

INSERT INTO `72crm_admin_config` VALUES (null, '1', 'putInPoolRemindDays', '2', null);
INSERT INTO `72crm_admin_config` VALUES (null, '1', 'oa', '1', '�칫����');
INSERT INTO `72crm_admin_config` VALUES (null, '1', 'crm', '1', '�ͻ�����');
INSERT INTO `72crm_admin_config` VALUES (null, '1', 'project', '1', '��Ŀ����');
INSERT INTO `72crm_admin_config` VALUES (null, '0', 'hrm', '2', '������Դ����');
INSERT INTO `72crm_admin_config` VALUES (null, '0', 'jxc', '2', '���������');

DELETE FROM 72crm_admin_field WHERE field_name = 'deal_status' AND name = '�ɽ�״̬' AND label = 2;

UPDATE 72crm_admin_field SET field_name = 'end_time' WHERE field_name = 'end_tme';