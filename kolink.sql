/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80035
Source Host           : localhost:3306
Source Database       : kolink

Target Server Type    : MYSQL
Target Server Version : 80035
File Encoding         : 65001

Date: 2023-12-23 09:37:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_reset_tokens_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_06_01_000001_create_oauth_auth_codes_table', '1');
INSERT INTO `migrations` VALUES ('4', '2016_06_01_000002_create_oauth_access_tokens_table', '1');
INSERT INTO `migrations` VALUES ('5', '2016_06_01_000003_create_oauth_refresh_tokens_table', '1');
INSERT INTO `migrations` VALUES ('6', '2016_06_01_000004_create_oauth_clients_table', '1');
INSERT INTO `migrations` VALUES ('7', '2016_06_01_000005_create_oauth_personal_access_clients_table', '1');
INSERT INTO `migrations` VALUES ('8', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('9', '2019_12_14_000001_create_personal_access_tokens_table', '1');
INSERT INTO `migrations` VALUES ('10', '2023_12_22_152539_create_products_table', '2');

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('5f282f6c33579298032787244e5079a5a97c920a34c53542b88af267356ae8a3712957c8e450caa1', '8', '1', 'MyApp', '[]', '0', '2023-12-23 02:36:38', '2023-12-23 02:36:39', '2024-12-23 02:36:38');
INSERT INTO `oauth_access_tokens` VALUES ('80c61ce7051b54d172144d4f515f8725131d34656cafedbd8ea3c419013c4dd9044d284bf37ea80e', '8', '1', 'MyApp', '[]', '0', '2023-12-22 15:43:07', '2023-12-22 15:43:07', '2024-12-22 15:43:07');
INSERT INTO `oauth_access_tokens` VALUES ('bfc7d85688c385628576a82540a3d807294410561a1d4789f692a50989c604ea6361f3dd1b23d475', '8', '1', 'MyApp', '[]', '0', '2023-12-22 15:53:19', '2023-12-22 15:53:20', '2024-12-22 15:53:19');
INSERT INTO `oauth_access_tokens` VALUES ('dac8456ebefbbcda966098cca70c2fe3af16e946e350b25eddeb4b3901dc57d6e9abb339206bacd4', '8', '1', 'MyApp', '[]', '0', '2023-12-22 15:36:33', '2023-12-22 15:36:33', '2024-12-22 15:36:33');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES ('1', null, 'Laravel Personal Access Client', '65hIl14UEWeiBTXyGLkGMBBPsA1DqEiIcYkjoM2A', null, 'http://localhost', '1', '0', '0', '2023-12-22 09:20:57', '2023-12-22 09:20:57');
INSERT INTO `oauth_clients` VALUES ('2', null, 'Laravel Password Grant Client', 'V1GSRI7VFsw4GsFGFyClrTU5eTrPuUm6LhIHdzGl', 'users', 'http://localhost', '0', '1', '0', '2023-12-22 09:20:57', '2023-12-22 09:20:57');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES ('1', '1', '2023-12-22 09:20:57', '2023-12-22 09:20:57');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
INSERT INTO `personal_access_tokens` VALUES ('1', 'App\\Models\\User', '1', 'appToken', 'db4bdaf0e141941b04bcc52f97c0224a8f0cb95b523aae01ec62e70cb0a10fb8', '[\"*\"]', null, null, '2023-12-22 10:47:54', '2023-12-22 10:47:54');
INSERT INTO `personal_access_tokens` VALUES ('2', 'App\\Models\\User', '1', 'appToken', '794cb624cdbb51a0302806c5dcc7b132512bd05039c8c51542d4e86a1aea19bb', '[\"*\"]', null, null, '2023-12-22 10:49:21', '2023-12-22 10:49:21');
INSERT INTO `personal_access_tokens` VALUES ('3', 'App\\Models\\User', '1', 'appToken', '0ff37aee801e5e5b6a28c879feb75fd4ba049ecaab9759d01134dbb9b140dbdc', '[\"*\"]', null, null, '2023-12-22 10:53:02', '2023-12-22 10:53:02');
INSERT INTO `personal_access_tokens` VALUES ('4', 'App\\Models\\User', '1', 'appToken', 'aed8c4b27ac97006e91a05738fee85bda839db2c406639c11c5dc9905804411d', '[\"*\"]', null, null, '2023-12-22 10:53:43', '2023-12-22 10:53:43');
INSERT INTO `personal_access_tokens` VALUES ('5', 'App\\Models\\User', '1', 'appToken', '0930df66f088fab520a4d7a268123f150861a0364eaeefe3d85f302e83a92529', '[\"*\"]', null, null, '2023-12-22 10:56:48', '2023-12-22 10:56:48');
INSERT INTO `personal_access_tokens` VALUES ('6', 'App\\Models\\User', '1', 'appToken', 'a6340462bc4d1fadee6ef2274a5531432eb78097ba7c45e7db074bfbacb2c7cc', '[\"*\"]', null, null, '2023-12-22 11:02:31', '2023-12-22 11:02:31');
INSERT INTO `personal_access_tokens` VALUES ('7', 'App\\Models\\User', '2', 'appToken', '271f89edfadc2e380970b4d8428541f8b7b1bdfd5f83c1fe7f8c0096787c3fe6', '[\"*\"]', null, null, '2023-12-22 11:04:54', '2023-12-22 11:04:54');
INSERT INTO `personal_access_tokens` VALUES ('8', 'App\\Models\\User', '2', 'appToken', 'b8d7611a0fa8d414a700631d3684b65d1e899623e7b4828189a9024b56e1a3de', '[\"*\"]', null, null, '2023-12-22 11:05:38', '2023-12-22 11:05:38');
INSERT INTO `personal_access_tokens` VALUES ('9', 'App\\Models\\User', '2', 'appToken', 'd51b3213a8bd028422a638ee58bce84afa6403abc04ff5f725a49b873cbeedd6', '[\"*\"]', null, null, '2023-12-22 11:07:34', '2023-12-22 11:07:34');
INSERT INTO `personal_access_tokens` VALUES ('10', 'App\\Models\\User', '2', 'appToken', '7a44636c390bc32cbfb9ab729f4baad3ab5e686a238ba7009c283cf37517f48f', '[\"*\"]', null, null, '2023-12-22 11:07:37', '2023-12-22 11:07:37');
INSERT INTO `personal_access_tokens` VALUES ('11', 'App\\Models\\User', '2', 'appToken', '77439bb5d982ffe5ff1acd9168e76d9e6a91fe7d32d9a200531a27755f51316d', '[\"*\"]', null, null, '2023-12-22 11:07:50', '2023-12-22 11:07:50');
INSERT INTO `personal_access_tokens` VALUES ('12', 'App\\Models\\User', '2', 'appToken', '31d0f3235250222dd49d772c730dbf678208bd19bda0455d34ed0a77c9950e82', '[\"*\"]', null, null, '2023-12-22 11:07:52', '2023-12-22 11:07:52');
INSERT INTO `personal_access_tokens` VALUES ('13', 'App\\Models\\User', '2', 'appToken', '15acfa0d04c78389e355ee085b81bebba8e3ae8c48903e528d22e77c39f3e06a', '[\"*\"]', null, null, '2023-12-22 11:09:25', '2023-12-22 11:09:25');
INSERT INTO `personal_access_tokens` VALUES ('14', 'App\\Models\\User', '2', 'appToken', '17de1eebfab20f623c4ea237e02b395b7c11ac878a5559f4b7b4be38674c218a', '[\"*\"]', null, null, '2023-12-22 11:09:26', '2023-12-22 11:09:26');
INSERT INTO `personal_access_tokens` VALUES ('15', 'App\\Models\\User', '2', 'appToken', 'caf4c1897c092fda83d6bc23c185725c1a5637f78d2288f2e372de2f10dc0ff6', '[\"*\"]', null, null, '2023-12-22 11:12:27', '2023-12-22 11:12:27');
INSERT INTO `personal_access_tokens` VALUES ('16', 'App\\Models\\User', '2', 'appToken', '34b01cc950447bf3736d03982c546f9b8abd315b5e0ec49ae9b3bffdd4d0c96d', '[\"*\"]', null, null, '2023-12-22 11:14:46', '2023-12-22 11:14:46');
INSERT INTO `personal_access_tokens` VALUES ('17', 'App\\Models\\User', '3', 'MyApp', 'a289dd5d4af6dd155ce3749b7d99f83847e8eaec5b1963642be1688b40242d97', '[\"*\"]', null, null, '2023-12-22 12:21:49', '2023-12-22 12:21:49');
INSERT INTO `personal_access_tokens` VALUES ('18', 'App\\Models\\User', '6', 'MyApp', '458b8ea7d940bd1423c8fab43164511cc0c2b45efd1144694d62fde415513426', '[\"*\"]', null, null, '2023-12-22 15:34:42', '2023-12-22 15:34:42');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'laptop', 'dell', '2023-12-22 16:32:22', '2023-12-22 16:32:22');
INSERT INTO `products` VALUES ('2', 'laptop', 'dell', '2023-12-22 16:35:58', '2023-12-22 16:35:58');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'dana', 'dana@gmail.com', null, '$2y$12$5BiPoxdB8hPg2kU7.jLs2eEVdtHxFkCX2o3rhalWBDUnwxT7hJUSG', null, '2023-12-22 10:47:54', '2023-12-22 10:47:54');
INSERT INTO `users` VALUES ('2', 'admin', 'admin@gmail.com', null, '$2y$12$BssAer65a3tH93m0cXOeJu4SYJqWV7SHtDpN9WA.HWXTjZg9bppzi', null, '2023-12-22 11:04:54', '2023-12-22 11:04:54');
INSERT INTO `users` VALUES ('3', 'test', 'test@gmail.com', null, '$2y$12$8NkoXbMGsAsIA2gyNJCnKeFsaD25M9x1FgyL47n3wNi0KteXU6gv.', null, '2023-12-22 12:21:49', '2023-12-22 12:21:49');
INSERT INTO `users` VALUES ('6', 'budi', 'budi@gmail.com', null, '$2y$12$gikIFHcd528.cQER6RYEeuWaOpYrWz8yScSGs1fyiIEeXmdtz0myS', null, '2023-12-22 15:34:42', '2023-12-22 15:34:42');
INSERT INTO `users` VALUES ('8', 'budi1', 'budi1@gmail.com', null, '$2y$12$WKw//5lqZcGHnJlAHqx8nuxSnaxf0pSsigLq82NqSiA3fZitvftjG', null, '2023-12-22 15:36:31', '2023-12-22 15:36:31');
