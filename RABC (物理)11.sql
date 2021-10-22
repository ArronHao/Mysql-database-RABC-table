CREATE TABLE `authorities`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `authority` varchar(50) NULL COMMENT '权限名称',
  `creator` varchar(50) NULL COMMENT '创建者',
  `modifier` varchar(50) NULL COMMENT '修改者',
  `update_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  INDEX `INDEX_AUTHORITY_NAME`(`authority`) USING BTREE COMMENT 'authoritie索引'
) COMMENT = '权限表';

CREATE TABLE `files`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `file_name` varchar(50) NULL COMMENT '菜单名称',
  `file_url` varchar(500) NULL COMMENT '编码后的URI资源链接',
  `creator` varchar(50) NULL COMMENT '创建者',
  `modifier` varchar(50) NULL COMMENT '修改者',
  `update_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COMMENT = '菜单表';

CREATE TABLE `files_authorities_association`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT ' 主键',
  `file_id` bigint NOT NULL COMMENT '文件表ID',
  `authority_id` bigint NOT NULL COMMENT '权限ID',
  `creator` varchar(50) NULL COMMENT '创建者',
  `modifier` varchar(50) NULL COMMENT '修改者',
  `update_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COMMENT = '权限和文件关联表';

CREATE TABLE `groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT ' 主键',
  `pid` bigint NULL DEFAULT 0 COMMENT '父ID',
  `group_name` varchar(50) NOT NULL COMMENT '组名称',
  `creator` varchar(50) NULL COMMENT '创建者',
  `modifier` varchar(50) NULL COMMENT '修改者',
  `update_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COMMENT = '用户组表';

CREATE TABLE `groups_roles_association`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT ' 主键',
  `group_id` bigint NOT NULL COMMENT '用户组ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `creator` varchar(50) NULL COMMENT '创建者',
  `modifier` varchar(50) NULL COMMENT '修改者',
  `update_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COMMENT = '用户组和角色关联表';

CREATE TABLE `groups_users_association`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT ' 主键',
  `group_id` bigint NOT NULL COMMENT '用户组ID',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `creator` varchar(50) NULL COMMENT '创建者',
  `modifier` varchar(50) NULL COMMENT '修改者',
  `update_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COMMENT = '用户组和用户关联表';

CREATE TABLE `menus`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` bigint NOT NULL COMMENT '父ID',
  `menu_name` varchar(50) NULL COMMENT '菜单名称',
  `menu_url` varchar(500) NOT NULL COMMENT '菜单URL链接',
  `creator` varchar(50) NULL COMMENT '创建者',
  `modifier` varchar(50) NULL COMMENT '修改者',
  `update_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COMMENT = '菜单表';

CREATE TABLE `menus_authorities_association`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT ' 主键',
  `menu_id` bigint NOT NULL COMMENT '菜单表ID',
  `authority_id` bigint NOT NULL COMMENT '权限ID',
  `creator` varchar(50) NULL COMMENT '创建者',
  `modifier` varchar(50) NULL COMMENT '修改者',
  `update_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COMMENT = '权限和菜单关联表';

CREATE TABLE `operations`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` bigint NOT NULL COMMENT '父ID',
  `operation_name` varchar(50) NULL COMMENT '权限名称',
  `operation_code` varchar(500) NULL COMMENT '操作编码',
  `creator` varchar(50) NULL COMMENT '创建者',
  `modifier` varchar(50) NULL COMMENT '修改者',
  `update_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COMMENT = '功能操作表';

CREATE TABLE `operations_authorities_association`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT ' 主键',
  `operation_id` bigint NOT NULL COMMENT '操作功能ID',
  `authority_id` bigint NOT NULL COMMENT '权限ID',
  `creator` varchar(50) NULL COMMENT '创建者',
  `modifier` varchar(50) NULL COMMENT '修改者',
  `update_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COMMENT = '权限和功能操作关联表';

CREATE TABLE `pages`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `page_code` varchar(500) NULL COMMENT '编码后的页面资源路径URI',
  `creator` varchar(50) NULL COMMENT '创建者',
  `modifier` varchar(50) NULL COMMENT '修改者',
  `update_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COMMENT = '菜单表';

CREATE TABLE `pages_authorities_association`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT ' 主键',
  `page_id` bigint NOT NULL COMMENT '页面表ID',
  `authority_id` bigint NOT NULL COMMENT '权限ID',
  `creator` varchar(50) NULL COMMENT '创建者',
  `modifier` varchar(50) NULL COMMENT '修改者',
  `update_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COMMENT = '权限和页面关联表';

CREATE TABLE `roles`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT ' 主键',
  `role_name` varchar(50) NOT NULL COMMENT '角色名称',
  `creator` varchar(50) NULL COMMENT '创建者',
  `modifier` varchar(50) NULL COMMENT '修改者',
  `update_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COMMENT = '角色表';

CREATE TABLE `roles_authorities_association`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT ' 主键',
  `authority_id` bigint NOT NULL COMMENT '权限ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `creator` varchar(50) NULL COMMENT '创建者',
  `modifier` varchar(50) NULL COMMENT '修改者',
  `update_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COMMENT = '角色和权限关联表';

CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `enabled` tinyint(1) NOT NULL DEFAULT 1 COMMENT '账户是否开启：0关闭，1开启',
  `avatar` varchar(500) NULL COMMENT '头像',
  `phone` varchar(20) NULL COMMENT '手机',
  `email` varchar(128) NULL COMMENT '邮箱',
  `creator` varchar(50) NULL COMMENT '创建者',
  `modifier` varchar(50) NULL COMMENT '修改者',
  `update_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `INDEX_USERNAME_PASSWORD`(`username`, `password`) COMMENT '用户名、密码索引'
) COMMENT = '用户表';

CREATE TABLE `users_roles_association`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT ' 主键',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `creator` varchar(50) NULL COMMENT '创建者',
  `modifier` varchar(50) NULL COMMENT '修改者',
  `update_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COMMENT = '用户和角色关联表';

ALTER TABLE `files_authorities_association` ADD CONSTRAINT `FK_AF_REF_FILES` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`);
ALTER TABLE `files_authorities_association` ADD CONSTRAINT `FK_AF_REF_AUTHORITIES` FOREIGN KEY (`authority_id`) REFERENCES `authorities` (`id`);
ALTER TABLE `groups_roles_association` ADD CONSTRAINT `FK_GR_REF_GROUPS` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);
ALTER TABLE `groups_roles_association` ADD CONSTRAINT `FK_GR_REF_ROLES` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
ALTER TABLE `groups_users_association` ADD CONSTRAINT `FK_GU_REF_GROUPS` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);
ALTER TABLE `groups_users_association` ADD CONSTRAINT `FK_GU_REF_USERS` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
ALTER TABLE `menus_authorities_association` ADD CONSTRAINT `FK_AM_REF_MENUS` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);
ALTER TABLE `menus_authorities_association` ADD CONSTRAINT `FK_AM_REF_AUTHORITIES` FOREIGN KEY (`authority_id`) REFERENCES `authorities` (`id`);
ALTER TABLE `operations_authorities_association` ADD CONSTRAINT `FK_AO_REF_OPERATIONS` FOREIGN KEY (`operation_id`) REFERENCES `operations` (`id`);
ALTER TABLE `operations_authorities_association` ADD CONSTRAINT `FK_AO_REF_AUTHORITIES` FOREIGN KEY (`authority_id`) REFERENCES `authorities` (`id`);
ALTER TABLE `pages_authorities_association` ADD CONSTRAINT `FK_AP_REF_PAGES` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`);
ALTER TABLE `pages_authorities_association` ADD CONSTRAINT `FK_AP_REF_AUTHORITIES` FOREIGN KEY (`authority_id`) REFERENCES `authorities` (`id`);
ALTER TABLE `roles_authorities_association` ADD CONSTRAINT `FK_RA_REF_AUTHORITIES` FOREIGN KEY (`authority_id`) REFERENCES `authorities` (`id`);
ALTER TABLE `roles_authorities_association` ADD CONSTRAINT `FK_RA_REF_ROLE` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
ALTER TABLE `users_roles_association` ADD CONSTRAINT `FK_UR_REF_USER` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
ALTER TABLE `users_roles_association` ADD CONSTRAINT `FK_UR_REF_ROLE` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

