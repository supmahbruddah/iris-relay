CREATE TABLE IF NOT EXISTS `access_token` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `key` varchar(64) NOT NULL UNIQUE,
  `expiration` BIGINT(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `access_user_idx` (`user_id`),
  CONSTRAINT `access_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `target` (`id`)
);

CREATE TABLE IF NOT EXISTS `refresh_token` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `key` varchar(64) NOT NULL UNIQUE,
  `expiration` BIGINT(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refresh_user_idx` (`user_id`),
  CONSTRAINT `refresh_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `target` (`id`)
);