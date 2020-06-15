-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.19 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour mydocta
CREATE DATABASE IF NOT EXISTS `mydocta` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mydocta`;

-- Export de la structure de la table mydocta. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Export de données de la table mydocta.migrations : ~7 rows (environ)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(6, '2016_06_01_000004_create_oauth_clients_table', 1),
	(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Export de la structure de la table mydocta. oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Export de données de la table mydocta.oauth_access_tokens : ~31 rows (environ)
DELETE FROM `oauth_access_tokens`;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('09770e6fc16879a8587da6b7467167eba9a4853bbc80e2a9e91605672f7afcdcf99f334f6b6061c3', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 14:09:23', '2020-04-11 14:09:23', '2020-04-11 15:09:23'),
	('097c536a0ef69b0762c68720dc679f9f74f6135d6d35572533e8dd03341130a26de095b543a93057', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:27:54', '2020-04-11 15:27:54', '2020-04-11 16:27:54'),
	('1af185f55843abde30a38a666371d664db9e4343c4347d6a3784cb503fe8c786ed7308fe7dadc777', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 14:12:59', '2020-04-11 14:12:59', '2020-04-11 15:12:59'),
	('22e5200d5b203af9bc371d95723bb6004c05938aeefef1883a45fcb020028b1fdd3829a92c2e5290', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:43:38', '2020-04-11 15:43:38', '2020-04-11 16:43:38'),
	('27e93211a4496e38f3674b48593649787d07fed151c1bed0c32930ae0a54cc15dcc7d561e65bd135', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 16:02:02', '2020-04-11 16:02:02', '2020-04-11 17:02:03'),
	('2ec1ca2240894a6645e6e1edd69a1949cd4dda8d3ec48ac8c0d8c1310200da6d649263fa4f4aa645', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:13:01', '2020-04-11 15:13:01', '2020-04-11 16:13:02'),
	('3c0288aaf1016877f1ccc269884cb9b328a574d2d61b1cb0836fb6be7e35d2174777a8193b9a6ce5', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:06:43', '2020-04-11 15:06:43', '2020-04-11 16:06:52'),
	('3d6f8511e212c9434cec6eb574c85522c3d6fee54296d1530ea50f78f83fa1127fb7186a76a763f9', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:08:48', '2020-04-11 15:08:48', '2020-04-11 16:08:48'),
	('3ffdc25e9827b95091cf8daeec95bbfda3648910a75ba2b24f242d7982e899feb6bcf07f6512148e', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:53:06', '2020-04-11 15:53:06', '2020-04-11 16:53:07'),
	('4af3b6769831e120f8e98a8638e573f81f3586b41cf795d3286b479499cee4bd0855dcd3dfc677f3', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:15:45', '2020-04-11 15:15:45', '2020-04-11 16:15:46'),
	('70bbc023481632b63fdf720e164c8e2b9ba4784ef5c63d46458a0fc0432e2a4fdd74c643687769de', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 14:04:57', '2020-04-11 14:04:57', '2020-04-11 15:04:57'),
	('716a4f1c9068d84363829214e38454888d05cd092fdaef869072e3775680505220d09bce18431524', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:13:46', '2020-04-11 15:13:46', '2020-04-11 16:13:47'),
	('9e6997162ddbc260e2fd319c30312226f205953e5525736735fd6dbb9b625036f9a0323a61f72246', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 13:51:53', '2020-04-11 13:51:53', '2020-04-11 14:51:55'),
	('a010bda320d2ec44409f421a567eeed49b3e7a2b76fa319da91f901b3b5563d2e54b640d773ab458', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 14:11:31', '2020-04-11 14:11:31', '2020-04-11 15:11:31'),
	('a031a9e77ce18eb70c0e1ad100048360910ddc776c95dfbe7465a56e2c1df60716018cac445951f7', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:15:47', '2020-04-11 15:15:47', '2020-04-11 16:15:47'),
	('a5c32f01075a51a33e52efe100fe2f6ec66d31d151587b4980a23d443b88675700e522a0ae593b8f', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:57:29', '2020-04-11 15:57:29', '2020-04-11 16:57:29'),
	('ac8c3a823a5ac1cb10773e30dacca0fe7e4ccd168875c085dd2f098f6e25d280e6a8caf08257453f', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 14:03:02', '2020-04-11 14:03:02', '2020-04-11 15:03:04'),
	('b941454b32a370228847d45d4ebe85bb0325a8f869ce2d1a9399028c928a82c0ab7c9abb0b716476', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 13:26:28', '2020-04-11 13:26:28', '2020-04-18 13:26:28'),
	('bbc1fe327c8a1798f6b7ff386f96aa3a86823b0a1d13400d5a2b276596053ceb066ef1a2f0b6131c', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 13:22:33', '2020-04-11 13:22:33', '2020-04-18 13:22:36'),
	('bfdbfb1b029cf7743161fea211fcb64972b8ebd4fb4aa49b59141f86ed8302aa4f4083a209fe161d', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:24:50', '2020-04-11 15:24:50', '2020-04-11 16:24:50'),
	('c2ea8c994fc3eda8f2f4b3ea5b23cdc661dec5446f2c0240175e8dc1e429cad9e7b3e603616ce22d', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:34:05', '2020-04-11 15:34:05', '2020-04-11 16:34:06'),
	('c44e477d19a18d438f5ad8b6ea154912c3e1e77f0a9f74cd66f7a3dcf03a4ec4a6528a2db2147d95', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:12:09', '2020-04-11 15:12:09', '2020-04-11 16:12:09'),
	('c6af639d78348bbe0f7ced6baebf75e7a206165705215e685fe35630ef954d60df1331cbc9b352e0', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:07:07', '2020-04-11 15:07:07', '2020-04-11 16:07:08'),
	('cfdd60ff74714cbdefabc02f55895ea72967f65f1cdba7d4610786262d405aa79b198848f1aa9fc7', 1, 1, 'Personal Access Token', '[]', 1, '2020-02-12 06:52:27', '2020-02-12 06:52:27', '2020-02-19 06:52:28'),
	('d2666a74021b06140f3a1906c6836398fcbf929d1b8d6b2529b8010e0da226ad1e9d8dcdcafc1f18', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:54:53', '2020-04-11 15:54:53', '2020-04-11 16:54:53'),
	('d3c7096a96e13774f8cbab6629bdf26889f5fc1e3fd097c41a48640ebe50a58ff12a534b148ab488', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 14:10:17', '2020-04-11 14:10:17', '2020-04-11 15:10:17'),
	('e07a2e88ecd5e8a79701cc0876d0139c04f472bfa2d68f3e7ec2aa9b824385d52d78a58ec83966fc', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:36:55', '2020-04-11 15:36:55', '2020-04-11 16:36:56'),
	('e2bbc061122cce4d0310ab982795ca7375e4e729584dbdfe608dcc5d17ac284697ac154976aefe46', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:59:24', '2020-04-11 15:59:24', '2020-04-11 16:59:25'),
	('e32701d1c6307d366f7dbb664d35aa4fb81e646694cea9d44aaec092c38a2021e49a7d75eb5e7760', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 16:01:05', '2020-04-11 16:01:05', '2020-04-11 17:01:05'),
	('e93c119dc67a66b01b33a8d0bab5ae9d113f4333ba7fbaea7fc97baf74d5394e5e08fe4ba43e4b55', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:32:07', '2020-04-11 15:32:07', '2020-04-11 16:32:09'),
	('e9979ea525b4460c219f423a75e4bbf5bd70d1a4e504b2d69ba066ec37fe1e211dada169b45a2d3b', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 15:44:47', '2020-04-11 15:44:47', '2020-04-11 16:44:47'),
	('ff1dfbd0d1fa054291d708010733b8b063fc1fbc184f70d6186852aed98867a209a6973b3e25b8d6', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-11 14:14:46', '2020-04-11 14:14:46', '2020-04-11 15:14:47');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Export de la structure de la table mydocta. oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Export de données de la table mydocta.oauth_auth_codes : ~0 rows (environ)
DELETE FROM `oauth_auth_codes`;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Export de la structure de la table mydocta. oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Export de données de la table mydocta.oauth_clients : ~2 rows (environ)
DELETE FROM `oauth_clients`;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'mydocta-api Personal Access Client', 'IRpGD1ekGNkDD6bD0ANgJbNfEDervj5YcXrsJvnU', 'http://localhost', 1, 0, 0, '2020-02-12 06:51:17', '2020-02-12 06:51:17'),
	(2, NULL, 'mydocta-api Password Grant Client', 'KwDIvS35DK0Gv8IMTxOhgjfIWqIVgtmukvBH2s8E', 'http://localhost', 0, 1, 0, '2020-02-12 06:51:17', '2020-02-12 06:51:17');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Export de la structure de la table mydocta. oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Export de données de la table mydocta.oauth_personal_access_clients : ~0 rows (environ)
DELETE FROM `oauth_personal_access_clients`;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2020-02-12 06:51:17', '2020-02-12 06:51:17');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Export de la structure de la table mydocta. oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Export de données de la table mydocta.oauth_refresh_tokens : ~0 rows (environ)
DELETE FROM `oauth_refresh_tokens`;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Export de la structure de la table mydocta. password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Export de données de la table mydocta.password_resets : ~0 rows (environ)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Export de la structure de la table mydocta. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Export de données de la table mydocta.users : ~0 rows (environ)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `phone`, `role`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'mahmoud', '00237697326904', 5, 'mahmoudnjoya99@gmail.com', '$2y$10$dAFizUprpCqicnTYAlkMc.mS6c/qXOWmXEE7O/uGabx/e4VkHicXe', NULL, '2020-02-12 06:48:59', '2020-02-12 06:48:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
