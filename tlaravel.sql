-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 28 2016 г., 13:45
-- Версия сервера: 5.5.45
-- Версия PHP: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `tlaravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'alias',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `articles_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=59 ;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `name`, `text`, `img`, `created_at`, `updated_at`, `alias`, `deleted_at`, `user_id`) VALUES
(4, '0', 'Hello world', 'pic4.jpg', '2016-03-16 16:28:58', '2016-05-12 16:09:36', 'alias', NULL, 2),
(24, 'NEW TEXT', '{"key":"hello world"}', '', NULL, '2016-05-12 21:40:31', 'alias', NULL, 2),
(25, 'Blog post', '<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>', 'pic1.jpg', NULL, NULL, 'alias', NULL, 2),
(31, 'Hello world', '', '', '2016-03-23 16:55:47', '2016-05-12 16:09:36', 'alias', NULL, 2),
(32, 'New Article 11111', 'Some text', '', '2016-05-09 13:54:01', '2016-05-23 16:19:22', 'alias', NULL, 6),
(33, 'New Article', 'Some text', '', '2016-05-09 13:54:12', '2016-05-12 16:09:36', 'alias', NULL, 2),
(34, 'New Article', 'Some text', '', '2016-05-09 13:54:42', '2016-05-12 16:09:36', 'alias', NULL, 2),
(35, 'New Article1', 'Some text1', '', '2016-05-09 13:56:07', '2016-05-12 16:09:36', 'alias', NULL, 2),
(36, 'New Article1', 'Some text1', '', '2016-05-09 13:59:12', '2016-05-12 16:09:36', 'alias', NULL, 2),
(37, 'New Article2', 'Some text2', '', '2016-05-09 13:59:12', '2016-05-12 16:09:36', 'alias', NULL, 2),
(38, 'New Article3', 'Some text3', '', '2016-05-09 13:59:12', '2016-05-12 16:09:36', 'alias', NULL, 2),
(48, 'Новый материал2пвап', 'Редактирование материалаThis is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.', 'изображение', '2016-05-22 14:36:48', '2016-05-25 16:08:15', 'alias', NULL, 6),
(49, 'вапвап', 'апвап', 'вапв', '2016-05-22 14:37:06', '2016-05-22 14:37:06', 'alias', NULL, 6),
(50, 'апрап', 'рапр', 'рапрап', '2016-05-22 14:39:58', '2016-05-22 14:39:58', 'alias', NULL, 6),
(51, 'fghfgh', 'fghfgh', 'fghfh', '2016-05-22 14:43:50', '2016-05-22 14:43:50', 'alias', NULL, 6),
(52, 'Новый материал', 'fsdf', 'sdfsd', '2016-05-22 14:45:49', '2016-05-22 14:45:49', 'alias', NULL, 6),
(55, 'Тестовая запись', 'тест', 'тест', '2016-05-23 16:10:47', '2016-05-23 16:10:47', 'alias', NULL, 6),
(56, 'Тестовая запись № 2', 'тест', 'тест', '2016-05-25 15:37:54', '2016-05-25 15:37:54', 'alias', NULL, 6),
(57, 'Тестовая запись №3', 'тест', 'тест', '2016-05-25 15:44:28', '2016-05-25 15:44:28', 'alias', NULL, 6),
(58, 'Тестовая запись №4', 'аыва', 'ываыв', '2016-05-25 15:53:52', '2016-05-25 15:53:52', 'alias', NULL, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `countries_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Ukraine', 2, NULL, '2016-05-12 16:04:54');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_03_14_180749_create_articles_table', 1),
('2016_03_14_184343_change_articles_table', 1),
('2016_03_14_190126_change_articles_table2', 2),
('2016_03_17_150714_create_table_pages', 3),
('2016_03_23_191847_change_article_table_soft', 4),
('2016_03_19_204458_create_countrys_table', 5),
('2016_03_19_185508_add_articles_user_table', 6),
('2016_03_20_155443_create_roles_table', 7),
('2016_03_20_155518_create_role_user_table', 7),
('2016_05_28_121745_create_sessions_table', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `name`, `text`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'About our company', '<p class=''blog-post-meta''>January 1, 2014 by <a href=''#''>Mark</a></p>\n\n							            <p>This blog post shows a few different types of content that''s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\n							            <hr>\n							            <p>Cum sociis natoque penatibus et magnis <a href=''#''>dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\n							            <blockquote>\n							              <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\n							            </blockquote>\n							            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\n							            <h2>Heading</h2>\n							            <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\n							            <h3>Sub-heading</h3>\n							            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n							            <pre><code>Example code block</code></pre>\n							            <p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\n							            <h3>Sub-heading</h3>\n							            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\n							            <ul>\n							              <li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\n							              <li>Donec id elit non mi porta gravida at eget metus.</li>\n							              <li>Nulla vitae elit libero, a pharetra augue.</li>\n							            </ul>\n							            <p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\n							            <ol>\n							              <li>Vestibulum id ligula porta felis euismod semper.</li>\n							              <li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\n							              <li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\n							            </ol>\n							            <p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>', 'about', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Moderator', NULL, NULL),
(3, 'quest', '2016-05-09 14:02:24', '2016-05-09 14:02:24');

-- --------------------------------------------------------

--
-- Структура таблицы `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1',
  `role_id` int(10) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 6, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('84d6fa73c8b682cab3b6d951b980937f4ded30e3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMTNVYnNoRHYzS3hzc0VpeTRJV2tEVFNyQlMwU2l2VWRPdWpkVGxMWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly90bGFyYXZlbC5sb2MvY29udGFjdCI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDY0NDI3NTA4O3M6MToiYyI7aToxNDY0NDI3NTA4O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1464427508);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `login` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `login`) VALUES
(1, 'Viktor', 'admin@mail.ru', 'admin', NULL, NULL, NULL, ''),
(2, 'User2', 'user2@mail.ru', 'user', NULL, NULL, NULL, ''),
(3, 'Viktor', 'email@mail.ru', '$2y$10$NxP.Iyr6BLhqGhs7trssH.kcgllzxDcPL38sIkVGN7ZaNe7zmFsVm', '4CJt0NL0pRLnn6dQDxEe8P3qtaHvwclagKMhBtyhqHPUZqOLyCW7iJQMm8iD', '2016-05-19 16:42:58', '2016-05-20 15:33:32', ''),
(4, 'User3', 'user3@mail.ru', '$2y$10$jEOjzzu9.UwfBTgC8rlYauL1OXwrIXbyqDX/Kl3K2w//nKczNOiQu', 'U6aKBTISNbpndaMph3xShpAM2uQRgYOiTD28oL8vYdTnrpTKMNzJ4zpd5eAq', '2016-05-20 15:45:38', '2016-05-20 15:46:04', ''),
(6, 'User4', 'user4@mail.ru', '$2y$10$u4Ecwj./xZjE3.AzbVw8negBMt9H2Ajt6gZC9eIE3lNB7krvpH9nC', 'essggXu6jzeUaK4GdE4YTaginiQREGVNKJSakON9bYYWW7Eik1ZbsT6YvIPC', '2016-05-21 03:45:23', '2016-05-28 09:23:53', 'User4');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
