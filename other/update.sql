ALTER TABLE `auth_menu`
CHANGE COLUMN `is_menu` `type`  tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否是菜单，1：菜单，2：权限' AFTER `order`,
ADD COLUMN `menu`  varchar(50) NULL COMMENT '菜单编号' AFTER `name`,
ADD COLUMN `url`  varchar(255) NULL COMMENT '菜单请求路径' AFTER `type`,
ADD COLUMN `static_url`  varchar(255) NULL COMMENT '静态资源路径' AFTER `url`;

ALTER TABLE `auth_menu`
  ADD COLUMN `icon`  varchar(255) NULL COMMENT '图标' AFTER `type`;

ALTER TABLE `auth_menu`
  MODIFY COLUMN `menu`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单编号' AFTER `name`;

INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('1', 'user:add', '/user/add', '2017-04-17 22:47:12', '2017-04-27 09:37:45');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('2', 'user:delete', '/user/delete', '2017-04-27 09:38:25', '2017-04-27 09:38:25');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('3', 'user:update', '/user/update', '2017-04-27 09:39:27', '2017-04-27 09:39:27');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('4', 'user:getList', '/user/getList', '2017-04-27 09:40:46', '2017-04-27 10:05:59');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('5', 'role:getList', '/role/getList', '2017-04-27 10:06:29', '2017-04-27 10:06:29');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('6', 'role:add', '/role/add', '2017-04-27 10:06:39', '2017-04-27 10:06:54');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('7', 'role:delete', '/role/delete', '2017-04-27 10:07:09', '2017-04-27 10:07:09');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('8', 'role:update', '/role/update', '2017-04-27 10:07:18', '2017-04-27 10:07:18');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('9', 'permission:getList', '/permission/getList', '2017-04-27 10:07:26', '2017-04-27 10:07:26');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('10', 'permission:add', '/permission/add', '2017-04-27 10:07:34', '2017-04-27 10:07:34');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('11', 'permission:addQuick', '/permission/addQuick', '2017-04-27 10:07:45', '2017-04-27 10:07:45');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('12', 'permission:delete', '/permission/delete', '2017-04-27 10:07:56', '2017-04-27 10:07:56');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('13', 'permission:update', '/permission/update', '2017-04-27 10:08:05', '2017-04-27 10:08:05');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('14', 'menu:getList', '/menu/getList', '2017-04-27 10:08:13', '2017-04-27 10:08:13');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('15', 'menu:add', '/menu/add', '2017-04-27 10:08:21', '2017-04-27 10:08:21');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('16', 'menu:delete', '/menu/delete', '2017-04-27 10:08:30', '2017-04-27 10:08:30');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('17', 'menu:update', '/menu/update', '2017-04-27 10:08:37', '2017-04-27 10:08:37');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('18', 'menu:getMenu', '/menu/getMenu', '2017-04-27 10:08:45', '2017-04-27 10:08:45');
INSERT INTO `asset`.`auth_permission` (`id`, `name`, `url`, `create_time`, `update_time`) VALUES ('19', 'menu:getMapById', '/menu/getMapById', '2017-04-27 10:08:53', '2017-04-27 10:08:53');

INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('1', '首页', 'Home', '1', '0', '1', '1', 'fa-dashboard', '/', '/model/index.vue', NULL, '2017-04-25 21:20:36', '2017-04-27 10:20:12');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('2', '资源管理', 'Asset', '1', '0', '2', '1', 'fa-th-large', '', NULL, NULL, '2017-04-25 21:20:59', '2017-04-26 22:10:34');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('4', '报表分析', 'Report ', '1', '0', '3', '1', 'fa-pie-chart', NULL, NULL, NULL, '2017-04-26 22:11:41', '2017-04-26 22:11:41');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('5', '系统管理', 'System', '1', '0', '99', '1', 'fa-cogs', NULL, NULL, NULL, '2017-04-26 22:12:16', '2017-04-26 22:12:16');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('6', '用户管理', 'User', '2', '5', '1', '1', NULL, '/system/user', '/model/system/user.vue', '4', '2017-04-26 22:13:37', '2017-04-27 10:20:18');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('7', '角色管理', 'Role', '2', '5', '2', '1', NULL, '/system/role', '/model/system/role.vue', '5', '2017-04-26 22:14:32', '2017-04-27 10:20:24');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('8', '权限管理', 'Permission', '2', '5', '3', '1', NULL, '/system/permission', '/model/system/permission.vue', '9', '2017-04-26 22:15:12', '2017-04-27 10:20:28');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('9', '菜单管理', 'Menu', '2', '5', '4', '1', NULL, '/system/menu', '/model/system/menu.vue', '14', '2017-04-26 22:15:43', '2017-04-27 10:20:33');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('10', '用户添加', 'userAdd', '3', '6', '1', '2', NULL, NULL, NULL, '1', '2017-04-27 10:22:43', '2017-04-27 10:22:43');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('11', '用户删除', 'userDel', '3', '6', '2', '2', NULL, NULL, NULL, '2', '2017-04-27 10:23:30', '2017-04-27 10:23:30');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('12', '用户修改', 'userUpdate', '3', '6', '3', '2', NULL, NULL, NULL, '3', '2017-04-27 10:25:45', '2017-04-27 10:25:45');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('13', '角色添加', 'roleAdd', '3', '7', '1', '2', NULL, NULL, NULL, '6', '2017-04-27 14:59:12', '2017-04-27 14:59:12');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('14', '角色删除', 'roleDel', '3', '7', '2', '2', NULL, NULL, NULL, '7', '2017-04-27 14:59:36', '2017-04-27 14:59:36');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('15', '角色修改', 'roleUpdate', '3', '7', '3', '2', NULL, NULL, NULL, '8', '2017-04-27 15:00:39', '2017-04-27 15:00:39');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('16', '权限添加', 'permissionAdd', '3', '8', '1', '2', NULL, NULL, NULL, '10', '2017-04-27 15:01:16', '2017-04-27 15:01:16');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('17', '权限快速添加', 'permissionQuick', '3', '8', '2', '2', NULL, NULL, NULL, '11', '2017-04-27 15:02:00', '2017-04-27 15:02:00');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('18', '权限删除', 'permissionDel', '3', '8', '3', '2', NULL, NULL, NULL, '12', '2017-04-27 15:02:47', '2017-04-27 15:02:47');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('19', '权限修改', 'Permission', '3', '8', '4', '2', NULL, NULL, NULL, '13', '2017-04-27 15:03:48', '2017-04-27 15:03:48');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('20', '菜单添加', 'MenuAdd', '3', '9', '1', '2', NULL, NULL, NULL, '15', '2017-04-27 15:04:34', '2017-04-27 15:04:34');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('21', '菜单删除', 'MenuDel', '3', '9', '2', '2', NULL, NULL, NULL, '16', '2017-04-27 15:05:05', '2017-04-27 15:05:05');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('22', '菜单修改', 'MenuUpdate', '3', '9', '3', '2', NULL, NULL, NULL, '17', '2017-04-27 15:05:42', '2017-04-27 15:05:42');
INSERT INTO `asset`.`auth_menu` (`id`, `name`, `menu`, `level`, `pid`, `order`, `type`, `icon`, `url`, `static_url`, `permission_id`, `create_time`, `update_time`) VALUES ('23', '菜单列表获取', 'MenuGetMenu', '3', '9', '4', '2', NULL, NULL, NULL, '18', '2017-04-27 15:11:40', '2017-04-27 15:52:52');