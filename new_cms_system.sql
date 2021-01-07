-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2021 at 08:04 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_cms_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2020_12_13_133546_create_posts_table', 1),
(18, '2020_12_16_071109_create_permissions_table', 1),
(19, '2020_12_16_071142_create_roles_table', 1),
(20, '2020_12_16_071723_create_users_permission_table', 1),
(21, '2020_12_16_071753_create_users_roles_table', 1),
(22, '2020_12_16_071954_create_roles_permissions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'View Dashboard', 'view-dashboard', '2020-12-18 05:38:56', '2020-12-18 05:38:56'),
(2, 'Edit Post', 'edit-post', '2020-12-20 12:23:48', '2020-12-20 12:23:48'),
(3, 'Update Users', 'update-users', '2020-12-20 12:24:29', '2020-12-20 12:24:29'),
(4, 'My permission', 'my-permission', '2020-12-21 05:56:25', '2020-12-21 05:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 2, NULL, NULL),
(3, 16, NULL, NULL),
(4, 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `post_image`, `body`, `created_at`, `updated_at`) VALUES
(8, 1, 'Mollitia et ut doloribus ipsa rem.', 'https://via.placeholder.com/900x300.png/0044bb?text=blanditiis', 'Reiciendis ab quia sed necessitatibus mollitia aperiam. Architecto nemo vero consectetur veritatis.', '2020-12-17 12:05:58', '2020-12-17 12:05:58'),
(9, 1, 'Et est velit quo dolores.', 'https://via.placeholder.com/900x300.png/0077ee?text=eius', 'Atque quibusdam nisi ipsum. Officiis cum fugiat repellat omnis atque et facilis. Sunt fugiat voluptatum architecto laudantium. Aut consequatur quisquam nesciunt saepe. Qui ipsa voluptate magni.', '2020-12-17 12:05:58', '2020-12-17 12:05:58'),
(10, 1, 'Iusto aut molestiae mollitia ut.', 'https://via.placeholder.com/900x300.png/00ffff?text=voluptas', 'Perspiciatis porro ratione magni quis iure commodi aut. Dolorem voluptatem non ratione. Earum numquam corrupti sed omnis velit soluta. Voluptatem repudiandae eum eos corrupti consequatur error. Quibusdam et quas voluptas nisi ex ratione.', '2020-12-17 12:05:58', '2020-12-17 12:05:58'),
(11, 1, 'Incidunt quia provident provident sint modi et.', 'https://via.placeholder.com/900x300.png/007722?text=et', 'Omnis velit animi qui dolorem vero aut. Voluptatum molestiae rem iste repudiandae non excepturi. Enim nihil debitis commodi recusandae accusantium.', '2020-12-17 12:05:58', '2020-12-17 12:05:58'),
(12, 1, 'Architecto aut delectus sint ut.', 'https://via.placeholder.com/900x300.png/0044aa?text=ipsam', 'Fugiat consectetur ratione velit modi. In eius eaque animi ab perspiciatis. Ut debitis velit quo consequatur ullam rem. Eum officia sed voluptates.', '2020-12-17 12:05:58', '2020-12-17 12:05:58'),
(13, 1, 'Fugit ut ut aut sed velit voluptatum est.', 'https://via.placeholder.com/900x300.png/00ddbb?text=sunt', 'Dolorem velit consequatur ipsa nemo eius occaecati. Atque fuga voluptatem ad eum molestiae tempora aut. Ea occaecati eaque aut saepe officia quia. Qui quia dignissimos cupiditate.', '2020-12-17 12:05:58', '2020-12-17 12:05:58'),
(14, 1, 'Minus vel itaque voluptas.', 'https://via.placeholder.com/900x300.png/009933?text=necessitatibus', 'Optio quaerat nihil ut. Quisquam in libero iure necessitatibus natus. Quo ut sequi illo esse unde. Sit molestias eveniet tenetur adipisci fugiat repudiandae omnis.', '2020-12-17 12:05:58', '2020-12-17 12:05:58'),
(15, 1, 'Amet quae eum aspernatur officia eos magnam.', 'https://via.placeholder.com/900x300.png/002266?text=dolor', 'Aliquid aspernatur quod veniam dignissimos vitae expedita voluptatem. Iste possimus quia et. Expedita iste tempora occaecati sunt. Similique doloremque velit odio consequatur. Dolorem quo autem voluptatem qui.', '2020-12-17 12:05:58', '2020-12-17 12:05:58'),
(16, 1, 'Rerum sed reiciendis repudiandae rem sit illum.', 'https://via.placeholder.com/900x300.png/008899?text=sit', 'Ut ipsa ratione et nam est tempore facere. Aut molestias quia sed excepturi impedit officiis ipsum. Tenetur ut totam illum delectus autem. Quod qui minima delectus quo delectus tempora ut.', '2020-12-17 12:05:59', '2020-12-17 12:05:59'),
(17, 1, 'Possimus esse odit architecto non.', 'https://via.placeholder.com/900x300.png/0000dd?text=odit', 'Autem rerum nostrum voluptatibus. Labore non saepe illo aut voluptas. Amet eveniet atque aliquid qui quod.', '2020-12-17 12:05:59', '2020-12-17 12:05:59'),
(18, 1, 'Autem aliquam nesciunt aut vitae iusto.', 'https://via.placeholder.com/900x300.png/00ee22?text=incidunt', 'Placeat architecto vel voluptates voluptatem. Voluptatem nihil assumenda nisi possimus. Aperiam esse ea minima non est.', '2020-12-17 12:05:59', '2020-12-17 12:05:59'),
(19, 1, 'Similique eligendi ut vero iste.', 'https://via.placeholder.com/900x300.png/00ccdd?text=voluptas', 'Cum veritatis fugiat est magni ex qui. Est vitae molestiae et consequuntur aut rerum eveniet. Repudiandae ratione est a dicta error quis quibusdam. Incidunt molestiae et magnam doloribus est voluptas quisquam.', '2020-12-17 12:05:59', '2020-12-17 12:05:59'),
(20, 1, 'Voluptatum dolorem quisquam totam.', 'https://via.placeholder.com/900x300.png/00ffcc?text=nesciunt', 'Consequatur molestiae soluta provident. Odio dolore unde ipsum magnam. Esse magni vero adipisci et voluptas facere.', '2020-12-17 12:05:59', '2020-12-17 12:05:59'),
(21, 1, 'Voluptate alias nihil eum et consequatur autem.', 'https://via.placeholder.com/900x300.png/009900?text=asperiores', 'Nisi fuga et eveniet a voluptas odio. Corrupti dignissimos sunt voluptas.', '2020-12-17 12:05:59', '2020-12-17 12:05:59'),
(24, 5, 'Facere voluptatem voluptate quos iure sed ea enim voluptatem.', 'https://via.placeholder.com/900x300.png/009977?text=sint', 'Enim quis deserunt quia voluptas. Dolor nostrum voluptates quas fugit. Pariatur et architecto asperiores necessitatibus ut. Eligendi sunt laboriosam est et.', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(26, 7, 'Et ex aliquam eum iste culpa consectetur.', 'https://via.placeholder.com/900x300.png/001111?text=alias', 'Laboriosam voluptas ipsa velit quis dolorem. Quia nesciunt nihil rerum modi dolor. Dolorem consequatur dolore beatae sunt.', '2020-12-18 01:45:04', '2020-12-18 01:45:04'),
(27, 8, 'Id facere sed dolor ut.', 'https://via.placeholder.com/900x300.png/000077?text=nihil', 'Nihil consequuntur architecto praesentium perspiciatis saepe pariatur quod. Rem modi maiores beatae fugiat. Voluptas ipsam nisi id quisquam omnis. Ab debitis in accusantium minima provident.', '2020-12-18 01:45:04', '2020-12-18 01:45:04'),
(28, 9, 'Corrupti non laboriosam magnam.', 'https://via.placeholder.com/900x300.png/008899?text=dolorem', 'Officia qui quod sequi et. Nulla laborum quos aut et. Alias laboriosam error minus ea reprehenderit quos maiores veritatis.', '2020-12-18 01:45:04', '2020-12-18 01:45:04'),
(29, 10, 'Dolores laboriosam aperiam vel veniam optio iure id.', 'https://via.placeholder.com/900x300.png/001166?text=magnam', 'Ea reprehenderit et assumenda vel voluptatibus eaque sapiente. Reiciendis et non dolorem. Distinctio mollitia vel veniam error.', '2020-12-18 01:45:04', '2020-12-18 01:45:04'),
(30, 11, 'Impedit aut maxime sequi voluptates suscipit est.', 'https://via.placeholder.com/900x300.png/00cc44?text=id', 'Ullam est dolor atque sed iusto eum. Recusandae porro architecto tempore maiores suscipit maxime dolores. Voluptas et illum sunt mollitia sequi animi qui. Eum voluptas soluta labore est assumenda.', '2020-12-18 01:45:04', '2020-12-18 01:45:04'),
(31, 12, 'Soluta quia placeat consequatur aperiam accusantium eius rerum.', 'https://via.placeholder.com/900x300.png/007700?text=labore', 'Quidem est natus minus sapiente exercitationem rerum quis aut. Rerum autem autem voluptatem et tenetur.', '2020-12-18 01:45:04', '2020-12-18 01:45:04'),
(32, 13, 'Exercitationem est sint ducimus voluptates dolores omnis impedit.', 'https://via.placeholder.com/900x300.png/004411?text=maxime', 'Ipsam vero expedita animi. Qui et sint quo architecto repellendus asperiores natus. Reiciendis delectus soluta distinctio impedit voluptas.', '2020-12-18 01:45:04', '2020-12-18 01:45:04'),
(33, 14, 'Voluptatem quis recusandae veritatis occaecati voluptas.', 'https://via.placeholder.com/900x300.png/005566?text=laudantium', 'Molestiae autem quos voluptatem dolorem quidem vel aliquid. Totam occaecati sequi minus non et eligendi sed. Quis molestiae tempora tempora dolor.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(34, 15, 'Fuga libero illo labore et totam consequatur.', 'https://via.placeholder.com/900x300.png/003333?text=nostrum', 'Ut consequuntur ipsam quis dolor dolor beatae similique. Nemo aut officia adipisci maxime itaque pariatur dolorum earum. Repudiandae neque aut alias in.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(35, 16, 'Quibusdam dignissimos a blanditiis et optio.', 'https://via.placeholder.com/900x300.png/0044aa?text=cumque', 'Ut rerum qui beatae. Reprehenderit aliquam non sit ut nulla inventore. Nisi non et velit doloremque et totam.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(36, 17, 'Et veritatis et illum tempore.', 'https://via.placeholder.com/900x300.png/0044aa?text=et', 'Libero laudantium eaque harum eius et. Aperiam enim quod labore corporis repellat voluptatem et. Qui enim laborum ullam ut sit quaerat.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(37, 18, 'Nemo voluptatem explicabo aut tempore voluptatibus.', 'https://via.placeholder.com/900x300.png/00dd55?text=non', 'Ut voluptatem magnam eos eius dolor. Et natus eligendi et atque in quo laborum. Quod non et distinctio assumenda et nostrum.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(38, 19, 'Mollitia quia accusamus tempora eum sed aperiam exercitationem ea.', 'https://via.placeholder.com/900x300.png/005511?text=et', 'Eum recusandae labore aut eos eius magni vero. Aut ut quasi necessitatibus minima aliquam dolorem. Natus voluptatum eum recusandae fuga. Rem aut eos ut. Qui velit aut consequatur dolorem.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(39, 20, 'Rerum voluptatem amet et saepe cum fuga voluptas.', 'https://via.placeholder.com/900x300.png/00aa77?text=dolores', 'Dolorum quis tenetur sint quia harum. Minus recusandae quae fugit est. Sit ad optio et.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(40, 21, 'Exercitationem rerum quibusdam illo molestiae sit aut dolorum quidem.', 'https://via.placeholder.com/900x300.png/000099?text=cum', 'Suscipit quo fugiat ea maiores. Cum voluptatem sequi nobis velit doloremque tenetur ipsam. Dolorem nam dolores omnis voluptatem. Maxime odio quia neque quisquam.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(41, 22, 'Quia libero voluptatem quis doloribus natus unde.', 'https://via.placeholder.com/900x300.png/0033bb?text=et', 'Aut magni repudiandae modi aut neque doloribus. Nihil autem quaerat nobis facilis vel et. Veniam molestias officiis ratione.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(42, 23, 'Delectus nisi hic non qui quia tenetur modi.', 'https://via.placeholder.com/900x300.png/0099aa?text=nobis', 'Odit eaque repellendus minus sint veritatis. Nostrum quos nisi dolores aut voluptas. Ut consequatur autem dolores qui.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(43, 24, 'Voluptatum omnis dolore aut sunt.', 'https://via.placeholder.com/900x300.png/00bb00?text=sunt', 'Dolor qui quia beatae qui soluta. Voluptatibus velit numquam corporis nesciunt omnis consequatur. Nulla eaque cum et eius.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(44, 25, 'Est quisquam qui dolores et voluptas consequatur animi.', 'https://via.placeholder.com/900x300.png/008822?text=qui', 'Quae ut eveniet sed odio illo rem minima. Aut sunt quaerat consequatur rerum eum.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(45, 26, 'Iste tempora qui iste.', 'https://via.placeholder.com/900x300.png/0088ff?text=est', 'Consequuntur sunt officiis sed reiciendis nihil ut optio non. Ducimus voluptates numquam aliquam. Aut fuga sapiente aperiam suscipit sunt alias omnis.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(46, 27, 'Molestiae corporis beatae deleniti non.', 'https://via.placeholder.com/900x300.png/0022aa?text=doloribus', 'Sunt soluta natus voluptatem itaque. Suscipit pariatur inventore omnis temporibus. Illum et quo doloribus fuga hic. Voluptatem delectus molestias deleniti adipisci provident amet.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(47, 28, 'Expedita enim eveniet ipsa officiis quaerat sunt.', 'https://via.placeholder.com/900x300.png/00ee66?text=nihil', 'Non dolores eos officiis quaerat corporis. Rerum voluptatem nobis voluptatem et quaerat. Quia numquam velit quas rerum mollitia non placeat. Possimus aut cum nihil.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(48, 29, 'Nobis earum velit quia rerum.', 'https://via.placeholder.com/900x300.png/00bbdd?text=magni', 'Incidunt ut odio ipsa molestiae consequatur quia. Ut ea nobis tempora perspiciatis aut. Est est non tempore et sapiente cupiditate.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(49, 30, 'Laboriosam voluptatem quidem nobis minima ut illum rerum.', 'https://via.placeholder.com/900x300.png/00ddbb?text=quidem', 'Eum iure natus hic id ipsum commodi aliquid. Qui dignissimos neque sed quia et. Et culpa quam aliquam molestiae fugiat. Non quisquam placeat libero sed non quasi tenetur expedita.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(50, 31, 'Qui ab molestiae id minus beatae maxime non.', 'https://via.placeholder.com/900x300.png/000033?text=et', 'Mollitia dolorem vel quasi. Nihil qui excepturi ut officiis asperiores. Consequatur sunt odio sed quia soluta. Modi iste et a et quia. Occaecati veniam et officiis quam.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(51, 32, 'Excepturi natus odio qui voluptas non necessitatibus nihil.', 'https://via.placeholder.com/900x300.png/0022ee?text=neque', 'Corporis exercitationem atque quo et eum quia eum. Eaque facilis qui unde assumenda unde cumque. Id labore quia perferendis cum et qui.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(52, 33, 'Et impedit quis aliquam earum suscipit expedita dolores.', 'https://via.placeholder.com/900x300.png/008800?text=voluptas', 'Ut laboriosam voluptatem et pariatur. Provident laboriosam nemo vel totam quia accusantium. Quam sint accusamus quis nesciunt esse. Omnis cumque eos maiores qui.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(53, 34, 'Sunt iusto quia est ab ipsa tempore.', 'https://via.placeholder.com/900x300.png/00ff77?text=quia', 'Id aliquid quae omnis delectus aliquid. At quisquam molestiae repellendus delectus officiis.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(54, 35, 'Quia occaecati laborum minima quidem alias necessitatibus nostrum.', 'https://via.placeholder.com/900x300.png/00cc55?text=ipsa', 'Tempore et ea perferendis officiis necessitatibus. Beatae ab et voluptas eveniet nemo temporibus laborum. Nemo accusantium quo repellendus dolores suscipit eum placeat.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(55, 36, 'Quia distinctio et odit est.', 'https://via.placeholder.com/900x300.png/002266?text=et', 'Dignissimos nostrum molestias natus voluptatem error magni. Sint temporibus dolore aliquam aut eos necessitatibus aut.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(56, 37, 'Corrupti veniam a assumenda qui.', 'https://via.placeholder.com/900x300.png/00ccaa?text=ea', 'Tempora deleniti non aliquid voluptatum. Eligendi nihil natus minus dolorum id repudiandae rem commodi. Ut qui aut iste.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(57, 38, 'Modi consequuntur velit deleniti qui error.', 'https://via.placeholder.com/900x300.png/007799?text=maiores', 'Ducimus tenetur temporibus est fuga est. Debitis aliquid temporibus repellat consequatur est blanditiis. Dolor vel et quo delectus voluptatibus.', '2020-12-18 01:45:05', '2020-12-18 01:45:05'),
(58, 39, 'Necessitatibus rerum dignissimos maxime veritatis reiciendis officia dicta cupiditate.', 'https://via.placeholder.com/900x300.png/0011ff?text=quia', 'Cupiditate corporis aut minus dolorem. Quisquam aliquam enim in. Sed mollitia id voluptatem maiores optio dignissimos consequatur. Voluptas amet sit aut.', '2020-12-18 01:45:06', '2020-12-18 01:45:06'),
(59, 40, 'Deserunt et sed delectus voluptas voluptas incidunt numquam.', 'https://via.placeholder.com/900x300.png/009933?text=et', 'Quo cupiditate accusamus id molestias. Quia quidem quia unde eius quis et. Est molestiae optio vel.', '2020-12-18 01:45:06', '2020-12-18 01:45:06'),
(60, 41, 'Omnis ut ea sed commodi commodi harum corporis enim.', 'https://via.placeholder.com/900x300.png/00ddee?text=laborum', 'Reiciendis quisquam eligendi quia quia natus. Magni magnam ullam dolorem et sunt quis eveniet. Est sequi quibusdam minima qui odio.', '2020-12-18 01:45:06', '2020-12-18 01:45:06'),
(61, 42, 'Et error nesciunt qui dolor temporibus et sapiente.', 'https://via.placeholder.com/900x300.png/00ffbb?text=voluptatem', 'Quia aperiam possimus officiis inventore. Est illo dolor consequatur a. Consequatur at non aperiam commodi rem voluptatum.', '2020-12-18 01:45:06', '2020-12-18 01:45:06'),
(62, 43, 'Ut omnis est ipsa non facere.', 'https://via.placeholder.com/900x300.png/00bb00?text=consectetur', 'Neque natus soluta eum corporis eum placeat. Unde velit natus veritatis officiis nihil. Totam ut velit quaerat consequatur.', '2020-12-18 01:45:06', '2020-12-18 01:45:06'),
(63, 44, 'Voluptate ipsam harum quisquam a vel.', 'https://via.placeholder.com/900x300.png/00ee44?text=et', 'Optio ut asperiores assumenda. Vero voluptatem quam et sunt distinctio eum nisi. Odit dolorem sit quidem repudiandae.', '2020-12-18 01:45:06', '2020-12-18 01:45:06'),
(64, 45, 'Assumenda nisi molestiae sed accusantium libero quasi.', 'https://via.placeholder.com/900x300.png/008800?text=natus', 'Ut omnis vel cupiditate sit quisquam illum. Nisi labore quas quia omnis. Porro hic fuga explicabo praesentium dolor ratione sit.', '2020-12-18 01:45:06', '2020-12-18 01:45:06'),
(65, 46, 'Quidem commodi architecto saepe eveniet incidunt.', 'https://via.placeholder.com/900x300.png/00ff66?text=maiores', 'Commodi inventore consectetur dolor. Est eaque cupiditate occaecati natus non. Expedita sunt voluptatibus distinctio. Ea et quia aut autem provident perspiciatis.', '2020-12-18 01:45:06', '2020-12-18 01:45:06'),
(66, 47, 'Laboriosam non aut dolorum.', 'https://via.placeholder.com/900x300.png/00ee88?text=qui', 'Quam aut ut id quaerat magnam deserunt. Quidem eaque quidem unde quae rerum. Maiores et explicabo voluptas inventore quod hic. Laudantium iure placeat et omnis optio maxime veniam.', '2020-12-18 01:45:07', '2020-12-18 01:45:07'),
(67, 48, 'Voluptatem est exercitationem rerum maxime quasi autem omnis.', 'https://via.placeholder.com/900x300.png/00ffbb?text=dolorum', 'Ex autem et reiciendis aut enim est aperiam. Recusandae ea ipsum eum sed. Dolores dolor tempore in molestiae sunt ut sit.', '2020-12-18 01:45:07', '2020-12-18 01:45:07'),
(68, 49, 'Saepe perferendis molestiae labore voluptatem et officia.', 'https://via.placeholder.com/900x300.png/006622?text=esse', 'Praesentium velit porro sunt sint ducimus hic voluptatem recusandae. Aut reiciendis eveniet nam repellendus delectus dicta.', '2020-12-18 01:45:07', '2020-12-18 01:45:07'),
(69, 50, 'Nobis et et autem totam cum sint illum voluptas.', 'https://via.placeholder.com/900x300.png/00aadd?text=quasi', 'Odit sint necessitatibus sint. Est dolorum possimus et magnam ut quibusdam esse. Voluptatum et sit tempora doloremque culpa dolore.', '2020-12-18 01:45:07', '2020-12-18 01:45:07'),
(70, 51, 'Est est perferendis laborum fugit consequatur et quia.', 'https://via.placeholder.com/900x300.png/001133?text=quae', 'Quam velit repudiandae nemo. Hic repudiandae ex possimus tempore dolor. At eaque et eveniet quos quia velit.', '2020-12-18 01:45:07', '2020-12-18 01:45:07'),
(71, 52, 'Et sunt labore placeat dolorem asperiores.', 'https://via.placeholder.com/900x300.png/0077cc?text=suscipit', 'Est illum maiores ut voluptas quia ut voluptate. Dignissimos error voluptate iure consequuntur earum animi. Totam dolores laudantium dolorum non eum. Dolores id voluptatum aut consectetur.', '2020-12-18 01:45:07', '2020-12-18 01:45:07'),
(72, 53, 'Ut consectetur explicabo libero dolorum.', 'https://via.placeholder.com/900x300.png/00dd77?text=dolorem', 'Quas qui deleniti voluptatem fugit ratione dolor alias repellendus. Praesentium deserunt nesciunt quo ipsum debitis. Voluptates alias magni ducimus neque pariatur laudantium voluptatem.', '2020-12-18 01:45:07', '2020-12-18 01:45:07'),
(73, 54, 'Quibusdam molestiae quia ad ut qui.', 'https://via.placeholder.com/900x300.png/00cc22?text=non', 'Ducimus ea omnis quasi est sunt natus. Delectus maxime labore est sit aspernatur. Labore consequatur ut tenetur aut delectus. Vel qui omnis reiciendis ratione.', '2020-12-18 01:45:07', '2020-12-18 01:45:07'),
(74, 55, 'Iure sit quod rerum et aut facere.', 'https://via.placeholder.com/900x300.png/005544?text=ut', 'Placeat et soluta ullam ut dolor nostrum qui. Odio culpa vero harum illum quo deserunt. Vero non et quis.', '2020-12-18 01:45:07', '2020-12-18 01:45:07'),
(75, 56, 'Aut omnis rerum sequi qui voluptate eveniet quisquam eius.', 'https://via.placeholder.com/900x300.png/00aadd?text=earum', 'Enim reprehenderit ea delectus sit ut doloremque. Molestias ab quo consequatur dolorem. Optio nam nulla recusandae odit praesentium. Porro doloribus magnam aut officia.', '2020-12-18 01:45:07', '2020-12-18 01:45:07'),
(76, 57, 'Voluptatem rerum in consequuntur sed qui nemo repudiandae sed.', 'https://via.placeholder.com/900x300.png/0066ee?text=numquam', 'Delectus adipisci aut ut et. Ad voluptatem quibusdam sint similique et. Modi minima molestias ut molestiae qui. Iusto in qui sit voluptas distinctio.', '2020-12-18 01:45:07', '2020-12-18 01:45:07'),
(77, 58, 'Cum quis molestiae magni ratione sit eum.', 'https://via.placeholder.com/900x300.png/0066ff?text=amet', 'Commodi et qui voluptatem voluptas. Iste quia molestias rerum dignissimos cupiditate. Quos et officiis ipsam est totam.', '2020-12-18 01:45:07', '2020-12-18 01:45:07'),
(78, 59, 'Voluptatum temporibus quibusdam occaecati alias.', 'https://via.placeholder.com/900x300.png/00dd99?text=consequatur', 'In amet sint rerum consequatur culpa ad. Ut deserunt necessitatibus est quo neque nostrum sed. Id aliquid aut distinctio alias nobis ut magnam magni. Ea officiis eius nulla ullam deleniti.', '2020-12-18 01:45:07', '2020-12-18 01:45:07'),
(79, 60, 'Ad voluptatem sunt ducimus amet odio.', 'https://via.placeholder.com/900x300.png/0066ff?text=blanditiis', 'Delectus laborum consequatur quia pariatur. Quibusdam et magni assumenda iste animi quae. Tenetur eius natus et omnis.', '2020-12-18 01:45:07', '2020-12-18 01:45:07'),
(80, 61, 'A et fugit eligendi.', 'https://via.placeholder.com/900x300.png/0099bb?text=architecto', 'Ut qui animi in magni temporibus. Atque provident officiis dignissimos eveniet quidem.', '2020-12-18 01:45:07', '2020-12-18 01:45:07'),
(81, 62, 'Nulla dolorum ea accusantium voluptatem neque laborum eos exercitationem.', 'https://via.placeholder.com/900x300.png/00bb11?text=est', 'Tenetur accusamus quidem voluptas consequuntur. Voluptate facere non dolor nam commodi. Autem et ab unde ut rerum molestiae. Quos nihil molestiae quis.', '2020-12-18 01:45:08', '2020-12-18 01:45:08'),
(82, 63, 'Expedita quia et aut et in recusandae voluptas.', 'https://via.placeholder.com/900x300.png/00eeff?text=facilis', 'Molestiae sit optio quod sunt est eligendi possimus. Suscipit nihil sed consequatur exercitationem quas. Dolor labore dolores et reiciendis quaerat ut voluptatem nostrum. Voluptatum eveniet repellendus laborum ut rerum dolores minima.', '2020-12-18 01:45:08', '2020-12-18 01:45:08'),
(83, 64, 'Quisquam et commodi nihil fuga rem nulla accusantium.', 'https://via.placeholder.com/900x300.png/0055dd?text=omnis', 'Deserunt fugit dolor tenetur ratione. Impedit fugiat incidunt natus cupiditate. Aut perferendis dolorem nulla vero illo quasi quis nostrum.', '2020-12-18 01:45:08', '2020-12-18 01:45:08'),
(84, 65, 'Magni enim eos omnis officiis fuga.', 'https://via.placeholder.com/900x300.png/00ffbb?text=minima', 'Enim voluptatum voluptas sit adipisci ut rerum et tempora. Consequatur nostrum assumenda exercitationem ut odit. Sit cum molestiae ut fuga fuga enim.', '2020-12-18 01:45:08', '2020-12-18 01:45:08'),
(85, 66, 'Aliquam et qui accusantium pariatur.', 'https://via.placeholder.com/900x300.png/00ee66?text=a', 'Dolorem ut quia et earum et qui harum. Impedit velit deleniti sit culpa. Non voluptatem enim et rerum neque nihil. Ipsum labore et dolor.', '2020-12-18 01:45:08', '2020-12-18 01:45:08'),
(86, 67, 'Ullam aperiam explicabo aut iure illum.', 'https://via.placeholder.com/900x300.png/00ff33?text=minus', 'Fuga perferendis aut et provident enim consequuntur. Eius praesentium omnis hic occaecati enim. Suscipit voluptates adipisci aperiam ea. Rerum sint amet mollitia corrupti voluptas autem magni debitis.', '2020-12-18 01:45:08', '2020-12-18 01:45:08'),
(87, 68, 'Ut ut consequatur quisquam ut.', 'https://via.placeholder.com/900x300.png/008899?text=est', 'Sunt laudantium accusamus omnis. Nihil sequi in nihil est eos deserunt sint quas. Porro qui eveniet qui ut ipsam autem. Eum est perspiciatis qui minima.', '2020-12-18 01:45:08', '2020-12-18 01:45:08'),
(88, 69, 'Rem ab rem aut optio repudiandae dolorem omnis.', 'https://via.placeholder.com/900x300.png/00bbee?text=aut', 'Omnis unde ad perferendis ratione pariatur repellendus. Numquam corporis fugit adipisci dolorem quia. Excepturi laboriosam architecto et et quos fuga et.', '2020-12-18 01:45:08', '2020-12-18 01:45:08'),
(89, 70, 'Nisi consequatur quo dicta qui id sed exercitationem.', 'https://via.placeholder.com/900x300.png/0011dd?text=vel', 'Nam inventore inventore eos doloribus eum vero adipisci. Ut architecto quos sint minus accusantium doloremque. Nisi ut voluptatem beatae asperiores sed voluptatem consequuntur natus.', '2020-12-18 01:45:08', '2020-12-18 01:45:08'),
(90, 71, 'Et aut soluta veritatis aut omnis sed voluptatem.', 'https://via.placeholder.com/900x300.png/00ccff?text=optio', 'Harum dolorem molestias accusantium. Iure in autem rerum ex. Dolores quas et voluptatem quae quo. Eius non incidunt sit quia voluptatum magni sint.', '2020-12-18 01:45:08', '2020-12-18 01:45:08'),
(91, 72, 'Quo fugiat quaerat commodi quia maxime omnis.', 'https://via.placeholder.com/900x300.png/004444?text=repellat', 'Ut eius explicabo voluptas ipsum. Adipisci iusto velit aspernatur dignissimos rerum adipisci. Ipsam est exercitationem amet sint in alias similique.', '2020-12-18 01:45:08', '2020-12-18 01:45:08'),
(92, 73, 'Doloremque laborum sapiente quos aperiam eos dignissimos.', 'https://via.placeholder.com/900x300.png/00aaee?text=exercitationem', 'Corporis vero laboriosam reprehenderit quibusdam voluptates quo in. Similique est atque quisquam accusamus. Sed corporis repudiandae eum.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(93, 74, 'Aut odio aspernatur molestiae similique itaque.', 'https://via.placeholder.com/900x300.png/006655?text=fuga', 'Ad dignissimos enim explicabo illo reiciendis. Sit placeat harum eos qui nihil voluptas. Quasi debitis voluptas doloribus praesentium pariatur sapiente ut natus. Labore rem optio dolorem. Ut sit nihil pariatur vero ipsa.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(94, 75, 'Nostrum dolore error voluptatum et maiores.', 'https://via.placeholder.com/900x300.png/00dd99?text=inventore', 'Voluptatem natus asperiores officia perspiciatis. Quis impedit dolorum maiores autem voluptatem aut.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(95, 76, 'Officiis qui quam corrupti nemo labore voluptatem.', 'https://via.placeholder.com/900x300.png/00ffcc?text=illo', 'Possimus velit eos vel maxime qui optio quia sint. Molestiae ducimus inventore hic quisquam hic. Quibusdam et nulla velit culpa maxime.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(96, 77, 'Facilis voluptatem qui laudantium ex enim dolorem.', 'https://via.placeholder.com/900x300.png/00cc88?text=animi', 'Voluptas mollitia laborum illo et libero. Eos placeat sit maiores occaecati quia.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(97, 78, 'Sunt iusto aspernatur consequuntur ex.', 'https://via.placeholder.com/900x300.png/00ff88?text=tempora', 'Vel iure voluptatum perferendis nesciunt. Totam ipsa neque nulla quasi enim. Quia nobis et sapiente odit quia totam. Enim inventore unde cupiditate sit.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(98, 79, 'Consequuntur debitis ab voluptatem quisquam reiciendis.', 'https://via.placeholder.com/900x300.png/008866?text=quod', 'Blanditiis delectus ratione omnis asperiores pariatur magnam. Ut odit voluptatem quo explicabo repudiandae. Ratione sed magni adipisci autem ad ducimus voluptas.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(99, 80, 'Aut aut quasi fugiat eius delectus vel eos.', 'https://via.placeholder.com/900x300.png/007799?text=facere', 'Qui temporibus exercitationem ullam ad. Aperiam eveniet non dolore et. Ut ratione sit molestiae et eius laborum et. Id eligendi quod sed amet rerum aut commodi.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(100, 81, 'Corrupti vel facere quasi est beatae sed.', 'https://via.placeholder.com/900x300.png/00ff44?text=perspiciatis', 'Qui velit voluptatem assumenda rerum. Quaerat deleniti doloribus ut ut sit occaecati sit. Sunt hic qui odio cum reiciendis non sint.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(101, 82, 'Dignissimos officia sint sunt est aliquam.', 'https://via.placeholder.com/900x300.png/00ff33?text=optio', 'Exercitationem laboriosam sapiente magni quaerat rerum. Eos voluptatem voluptatem alias est ut ratione quia. Et ratione nesciunt vel natus nam.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(102, 83, 'Optio aliquid voluptas ea aspernatur ipsum ipsam.', 'https://via.placeholder.com/900x300.png/008855?text=numquam', 'Saepe provident facere consequuntur dicta. Nemo id laudantium fuga excepturi fugiat et doloribus. Dolor dolore vitae reprehenderit ut sequi unde. Quia tempore doloribus aspernatur aspernatur nostrum quia expedita.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(103, 84, 'Aperiam qui amet ipsam qui natus est facere.', 'https://via.placeholder.com/900x300.png/009966?text=temporibus', 'Hic sit neque expedita aut assumenda nihil sit. Nemo fuga sapiente labore officiis enim. Eaque maxime illo corporis vel distinctio optio. Qui vel tempore ipsa dolores ipsam.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(104, 85, 'Quibusdam non cum ipsum ipsa modi aliquam.', 'https://via.placeholder.com/900x300.png/0088cc?text=voluptatem', 'Et ad occaecati deleniti tenetur quo quod illum. Illum ab rerum alias mollitia sequi fugit nihil. Autem labore itaque mollitia distinctio quam voluptatibus beatae itaque.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(105, 86, 'Qui natus explicabo deleniti alias.', 'https://via.placeholder.com/900x300.png/00bb88?text=nisi', 'Provident consequatur sequi et optio minima est autem fugit. Hic sunt voluptates sint laudantium nihil harum. Culpa consequatur tempore laudantium minima odio pariatur quasi quis.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(106, 87, 'Ducimus aperiam magnam ipsa rem animi sit.', 'https://via.placeholder.com/900x300.png/0088dd?text=rem', 'Dicta quod quia facilis deserunt. Voluptas ut odit et incidunt. Deserunt sequi velit ipsam harum. Autem ut placeat dolores placeat.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(107, 88, 'Aut tempore qui consequatur error velit quas.', 'https://via.placeholder.com/900x300.png/0033aa?text=quas', 'At dolorum rerum aut consequatur iste voluptate. Nulla neque voluptatibus sit non itaque. Vel quia explicabo et. Voluptatem quo autem delectus optio impedit.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(108, 89, 'Qui ullam est quia est illum et.', 'https://via.placeholder.com/900x300.png/007711?text=vel', 'Odio ab ut laudantium illum sequi quibusdam quia. Et dolores non cum exercitationem ipsa minima. Numquam impedit non necessitatibus dolorem hic sint. Deserunt fugiat quo qui eos voluptatum tempore quia. Sed non sed corporis qui possimus temporibus rerum.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(109, 90, 'Et voluptas sed ut occaecati.', 'https://via.placeholder.com/900x300.png/0099dd?text=rerum', 'Saepe et voluptas voluptate voluptas fuga tempora ducimus. Rem laboriosam exercitationem amet illum aliquid qui quisquam quia. Adipisci praesentium voluptatem voluptatem placeat debitis est sed vero.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(110, 91, 'Ut ut iste quos et et quia rerum.', 'https://via.placeholder.com/900x300.png/000044?text=ut', 'Nihil facilis aliquid tempore consequatur molestiae. Voluptatem aperiam quo sapiente occaecati. At et ut in accusantium nulla id laboriosam. Id nulla deleniti corporis in.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(111, 92, 'Voluptates rerum eveniet necessitatibus fugiat non ut et.', 'https://via.placeholder.com/900x300.png/00aa33?text=eos', 'Illum omnis vitae omnis voluptas reiciendis doloremque. Iste vitae quis laboriosam fugiat. Corporis rerum assumenda temporibus est laudantium laboriosam eaque. Dicta ducimus aut exercitationem deleniti.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(112, 93, 'Eum enim molestiae repellendus mollitia nostrum nostrum.', 'https://via.placeholder.com/900x300.png/0000bb?text=dolor', 'Accusamus fugiat dolor quam sed possimus. Officiis qui in doloremque rerum.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(113, 94, 'Eum velit cum veniam eum ipsum.', 'https://via.placeholder.com/900x300.png/006655?text=et', 'Voluptas delectus beatae ad illo facilis ut explicabo molestiae. Ad voluptas nihil ab tempore et dolorem assumenda. Molestiae voluptatum aperiam cupiditate beatae dolores ut. Exercitationem quod natus ut quia non rerum.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(114, 95, 'Doloremque nihil qui neque est repudiandae.', 'https://via.placeholder.com/900x300.png/007777?text=quos', 'Corporis alias ipsum pariatur inventore. Corrupti nihil nobis fugiat ut. Voluptatem sint enim sunt distinctio ex a cum sint. Corporis omnis esse nisi tempora aliquid.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(115, 96, 'Veniam magni in incidunt similique molestias optio placeat.', 'https://via.placeholder.com/900x300.png/00ee33?text=adipisci', 'Accusamus amet eius eius dolorem. Non incidunt voluptate qui illo quibusdam maiores explicabo accusantium. Vitae dolore laborum nihil facere illum.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(116, 97, 'Suscipit tempore ut enim velit magni est soluta.', 'https://via.placeholder.com/900x300.png/00ccdd?text=et', 'Molestias laborum sed rerum sequi dolor explicabo. Ipsa hic quos sit maiores est. Recusandae enim et enim.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(117, 98, 'Vitae repudiandae sed odit eum odio vel id iure.', 'https://via.placeholder.com/900x300.png/0011cc?text=et', 'Aperiam ut voluptatem qui voluptates. Dolorum qui perferendis reiciendis. Et vel voluptates ut eum tenetur quidem non id. Voluptatem voluptatem numquam provident sed.', '2020-12-18 01:45:09', '2020-12-18 01:45:09'),
(118, 99, 'Consectetur cum culpa fugit quos provident rerum.', 'https://via.placeholder.com/900x300.png/003366?text=quaerat', 'Voluptates vitae quod officia vitae assumenda. Possimus nemo reiciendis impedit est. Repellendus rem molestias repellat consequatur totam eos asperiores reiciendis.', '2020-12-18 01:45:10', '2020-12-18 01:45:10'),
(119, 100, 'Rerum assumenda repudiandae quis laudantium aut eaque.', 'https://via.placeholder.com/900x300.png/003322?text=quis', 'Non iusto consequatur cupiditate minima. Qui at ut minima alias et fugiat. Autem expedita rem dignissimos ipsam non deserunt.', '2020-12-18 01:45:10', '2020-12-18 01:45:10'),
(120, 101, 'Soluta atque enim accusantium voluptates illum.', 'https://via.placeholder.com/900x300.png/00cc44?text=et', 'Aut maxime fugiat molestias est esse facilis. Et blanditiis autem eum illum velit mollitia. Beatae ipsa delectus eos minima libero qui. Illo id quasi voluptas id et consequatur qui adipisci.', '2020-12-18 01:45:10', '2020-12-18 01:45:10'),
(121, 102, 'Non dolorem quibusdam iure deserunt.', 'https://via.placeholder.com/900x300.png/003333?text=magnam', 'Voluptas quo est fuga deleniti porro et. Qui sapiente possimus cupiditate in alias nemo et. Animi sed voluptas corporis. Aperiam provident eveniet dolorem quaerat nihil illo.', '2020-12-18 01:45:10', '2020-12-18 01:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2020-12-18 05:37:44', '2020-12-18 05:37:44'),
(2, 'My manager', 'my-manager', '2020-12-19 11:53:05', '2020-12-20 07:56:27'),
(3, 'Author', 'author', '2020-12-19 11:53:28', '2020-12-19 11:53:28'),
(4, 'Subsciber', 'subcriber', '2020-12-19 11:53:45', '2020-12-19 11:53:45'),
(16, 'Example32', 'example32', '2020-12-20 06:41:30', '2020-12-20 08:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(5, 2, NULL, NULL),
(8, 2, NULL, NULL),
(8, 3, NULL, NULL),
(8, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'testuser5', 'Dhaval1 Tripathi1', 'images/V7C12gmdmHUyV4o3krV97EBx91EsNJBJgO2NRPKv.jpg', 'dhavaltripathi@gmail.com', NULL, '$2y$10$ah5xvzLGjRNOjlsFea5mnOhsuqw23Mig2hYsnTJrzeJB12NOOdiQ2', NULL, '2020-12-17 02:07:07', '2020-12-17 12:15:16'),
(2, 'testuser2', 'Dhaval Tripathi', NULL, 'dhaval@dhaval.com', NULL, '$2y$10$ah5xvzLGjRNOjlsFea5mnOhsuqw23Mig2hYsnTJrzeJB12NOOdiQ2', NULL, '2020-12-18 00:28:03', '2020-12-18 00:28:03'),
(5, 'kurtis79', 'Prof. Florencio Schroeder MD', NULL, 'grace.davis@example.net', '2020-12-18 01:44:51', '$2y$10$gYAk0mmr2bVAXQo28BmyTOOXU/bOvDmsHUJmv0.QlM.cm6XV1myYa', 'sBfOcQwZap', '2020-12-18 01:44:59', '2020-12-18 01:44:59'),
(7, 'fmckenzie', 'Gianni Hamill DVM', NULL, 'qgutkowski@example.org', '2020-12-18 01:44:51', '$2y$10$QB2bLzH8.862SEixDS5BlOySfkawg2kupPtVJi00rwlZixgMK6wLi', 'qTahsnEyrG', '2020-12-18 01:44:59', '2020-12-18 01:44:59'),
(8, 'monica.brakus', 'Dr. Eleazar Kessler', NULL, 'marvin.joaquin@example.org', '2020-12-18 01:44:51', '$2y$10$.xBafUGAHn.laecZVouhIOmhIkrSX1uyfVplnvPZ4scqZrmnjx8ie', 'gSwzZOdyJN', '2020-12-18 01:44:59', '2020-12-18 01:44:59'),
(9, 'iliana03', 'Jeff Gibson', NULL, 'lonie.labadie@example.org', '2020-12-18 01:44:51', '$2y$10$U0lhRlULF/NMSJ9mCjBI4.JHcFZT88.KDUA7HFBMB35vGvGVBPYWa', 'zbhuc6Lxuc', '2020-12-18 01:44:59', '2020-12-18 01:44:59'),
(10, 'ngrimes', 'Mr. Roel Roob', NULL, 'xhowell@example.org', '2020-12-18 01:44:51', '$2y$10$Ewgc.LZD0NmCUi5NkqNVpuWQqnOib6tf7gm2lptiICe/cv96jgm0q', 'ZV8nSGPh5p', '2020-12-18 01:44:59', '2020-12-18 01:44:59'),
(11, 'wwintheiser', 'Dr. Owen Labadie Jr.', NULL, 'jeffry.mann@example.org', '2020-12-18 01:44:52', '$2y$10$OVlgHjVeOhnMKIFEGv13MOyvpESfuGNz6aktEHCjZw8S5xoiocEgS', 'eFlTKAK0QQ', '2020-12-18 01:44:59', '2020-12-18 01:44:59'),
(12, 'ygoldner', 'Dr. Dashawn Hagenes', NULL, 'wschuppe@example.com', '2020-12-18 01:44:52', '$2y$10$uXrb5fOlzSC8PKOnrjfT6.hO1xvkoFxgcCwjZUhJdnKL1SYYJG3IK', 'e3AskOdHev', '2020-12-18 01:44:59', '2020-12-18 01:44:59'),
(13, 'sophie.jacobs', 'Shanon Johnston', NULL, 'jo.oconner@example.org', '2020-12-18 01:44:52', '$2y$10$lAP/Vj1N80hFVbshoCbIVeNWlQNmVQyxdevwazRoNoAhyQQkhA5wi', 'bDqcNftJOJ', '2020-12-18 01:44:59', '2020-12-18 01:44:59'),
(14, 'roberta.monahan', 'Meaghan Konopelski', NULL, 'alyce.schuppe@example.org', '2020-12-18 01:44:52', '$2y$10$.B2.UB8aZE9lYTUG0e.og.VrjOcOYw758cOYSV2voa0UFAbQ1kZs6', 'xGWaBzqiMH', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(15, 'queen39', 'Florencio Braun', NULL, 'peter.corkery@example.org', '2020-12-18 01:44:52', '$2y$10$tF/e15mivP2ix04mDg6Gv.yOFW0owWLeKQyaDA9WrIIEeAYlao2VO', 'lUwuOLipiK', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(16, 'fjakubowski', 'Hans Frami III', NULL, 'bbrekke@example.com', '2020-12-18 01:44:52', '$2y$10$9FiKjoUPxq8bvry5FXYB9emgrspk.TMDD.p.5fEfDchzcqHgHsNDK', '65EgCkx6F3', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(17, 'tgerlach', 'Prof. Oran Reichel DDS', NULL, 'streich.audie@example.com', '2020-12-18 01:44:52', '$2y$10$OyIENVEmKtU8UKHNDasEieqsCCw5nQfyfAyr1v/o/PhdFdOjg7lQ.', 'Es4yvZGxYJ', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(18, 'heaney.garret', 'Imogene Heidenreich III', NULL, 'ebeier@example.org', '2020-12-18 01:44:52', '$2y$10$jJBwdJ2VnJTbffunn0suq.m05j.YCZx3GahLyaH3F7FmL2H9nQejm', '79upxXXZ3a', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(19, 'rlynch', 'Pearl Glover', NULL, 'ullrich.ophelia@example.com', '2020-12-18 01:44:52', '$2y$10$Lvq5xvDxWygtr9GswMzoiemNJPWkfW4XkV8JHRhsbBC5p7VPotN82', 'cTRiJqXdHu', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(20, 'volkman.brendan', 'Victoria Klocko', NULL, 'marlen82@example.org', '2020-12-18 01:44:52', '$2y$10$T.VeSJ.wYpEBpqHjkfLYJ.EipY/ib0/SBnCh0iYVZk60H07IavK4a', 'Tau0NSEqT3', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(21, 'odooley', 'Reilly Kuhic', NULL, 'halvorson.kenna@example.org', '2020-12-18 01:44:52', '$2y$10$WyPxyKTe7P5ORCd9wbsZseE/w1fxtVSoaAbvkuuG8/Ad3pjiYgEG.', 'zeb0hE2cAG', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(22, 'jaquan66', 'Saul Johnson', NULL, 'lera.schimmel@example.org', '2020-12-18 01:44:52', '$2y$10$H3ppQB51C14ahA6m8o9Da.DfMDdv5T5fL7vZmfRHKvRVR06yIi4EO', 'FLX9sKO3ST', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(23, 'stiedemann.bart', 'Jeff Emard', NULL, 'ischroeder@example.net', '2020-12-18 01:44:53', '$2y$10$cnRhoVY8g48aqfe7Lrk4Zu/Zhr.n.LRBD4KzkDTVT8JRE1JCxtjJW', 'sfjJNDm3rr', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(24, 'ankunding.tania', 'Isai Prohaska', NULL, 'stracke.armand@example.com', '2020-12-18 01:44:53', '$2y$10$FTOcRPj8D.O416HiSNZ/o.Z3YWmhTYmSP3iABNIM7KC8zH5pv6nkq', 'IRecmAMQJ6', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(25, 'omaggio', 'Dr. Jordi Barton PhD', NULL, 'koch.oliver@example.com', '2020-12-18 01:44:53', '$2y$10$GtrF5IVXfAZf4rljSZoPVOdrLRHsPyA5HPKTHUWUmlQ99zoFS6ImK', 'IW61aMIbLh', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(26, 'greenfelder.miles', 'Rudy Toy', NULL, 'kamren.nader@example.org', '2020-12-18 01:44:53', '$2y$10$lhLfeLUYnL2s8aDaeDJuCu93W2mslcj.qrbjsoudxx4QER645JdcS', 'ErcUkdPXwQ', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(27, 'tmcdermott', 'Dr. Kaden Dickinson', NULL, 'turner.collin@example.org', '2020-12-18 01:44:53', '$2y$10$SektPaKTneCIoYx7yndxuOOtkdX/xL6XUxn19cn7/2vLIl66BFYCO', 'EVw3HT3lWp', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(28, 'glover.nella', 'Andre Lakin', NULL, 'renee.halvorson@example.net', '2020-12-18 01:44:53', '$2y$10$FuYJG.Eiw/H8WE4gn9NUeu7nUZJ0.M2CdVMqkJap9K7FHd/cyn8BC', '8IcqP8R9zT', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(29, 'vicente.mckenzie', 'Orlo Hegmann V', NULL, 'ccrooks@example.org', '2020-12-18 01:44:53', '$2y$10$S68hiVoO/OzikuF0OutpnucwnIu1ttX8nktNRsPPe5hNK7qRqr0a6', 'vq3TP7zEPv', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(30, 'larson.jaylen', 'Eunice Lindgren Jr.', NULL, 'herzog.vito@example.org', '2020-12-18 01:44:53', '$2y$10$bdNxu.W3RSQoDGu337dygOs1Fl.cutLhhSHFjVNOElY5xiub5zkEC', '060KHWAbn0', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(31, 'nschoen', 'Ms. Violet Swift MD', NULL, 'ivory.adams@example.net', '2020-12-18 01:44:53', '$2y$10$FzrRGg9cLlMo770D7iEvi.ty18RD5NrkqfebqwBHKAzN3UevzyjWy', 'JrQFqdtzLP', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(32, 'deangelo.lebsack', 'Prof. Henry Conroy', NULL, 'hkreiger@example.net', '2020-12-18 01:44:53', '$2y$10$8lHlyeU1MAzmP.mrSLekNermtfhjq/4rD8HsPPjvo.RFAusRmFeXi', '1vsRd1YA2k', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(33, 'ldickens', 'Prof. Korey Gutmann', NULL, 'schowalter.roderick@example.net', '2020-12-18 01:44:53', '$2y$10$yponY08S.qeMFJ8QEnBBDOEnygrQyDBYgioQs.oN1CmtINoukQ2FW', 'xj1duJ3air', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(34, 'cconnelly', 'Dr. Garret Stoltenberg', NULL, 'torphy.betsy@example.org', '2020-12-18 01:44:53', '$2y$10$oWyV5eH0QS8/etQLBbWxGekI4k9YntSNKibCCqT.f0wSlSqMhmm2C', 'nDnLB1x4VG', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(35, 'wintheiser.lawson', 'Miss Ericka Wehner', NULL, 'jaylan17@example.org', '2020-12-18 01:44:54', '$2y$10$uZAIn9x.U5NYL1p5Tmw0q.SRjhow2uiz00sHZLPR9HL/SCBwH5Xk6', 'qiVqYnzv8a', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(36, 'may.gislason', 'Miss Jadyn Baumbach MD', NULL, 'jadon79@example.org', '2020-12-18 01:44:54', '$2y$10$csqJCiGuYgqa9w2ul1Lk/.6C.XWBgc65Yw.nff0KGxlK9SS4VZsty', 'aV9uoA0dwa', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(37, 'urban.predovic', 'Genevieve Runolfsdottir', NULL, 'elena02@example.org', '2020-12-18 01:44:54', '$2y$10$JEHIpYZ4h.n2IajAHveyAeXThhaVTJsxhrtI9bT7gwrGWTMUIyIuq', 'Gxnk4ed00t', '2020-12-18 01:45:00', '2020-12-18 01:45:00'),
(38, 'kerluke.britney', 'Miss Anastasia Bashirian', NULL, 'flossie.ziemann@example.org', '2020-12-18 01:44:54', '$2y$10$5Y.nLVNMBjDqnK8WRHzjaOAWHErikJRBpK3BF.w8xAg9Uq6WO/lNm', '4TTuOa94UX', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(39, 'wyman.cecil', 'Shanon Purdy', NULL, 'ryan.werner@example.com', '2020-12-18 01:44:54', '$2y$10$Ge9oCSxMgzHnyUGL65X45u/.URfI4uE61db30duZqDgmK4DLgfQVO', 'ZRNyaytnyx', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(40, 'major82', 'Davion Mitchell', NULL, 'ddicki@example.org', '2020-12-18 01:44:54', '$2y$10$1YFUpWC4DIgTTb8XFoPG2ukLyy3brtk2EkrcBvXaiOkc7p5DpoizG', 'D08jdwPooj', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(41, 'zoila78', 'Russell Cremin', NULL, 'kbahringer@example.com', '2020-12-18 01:44:54', '$2y$10$bXJsWNqrrCAnprHPJQbmqeAWrqcWN22GLyZImr2ndQgyqVszWuM7K', '8Cx3ykCtTv', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(42, 'barrows.scotty', 'Prof. Roxanne Hane', NULL, 'tressa.leuschke@example.net', '2020-12-18 01:44:54', '$2y$10$.KS7DA5nd.bQU71uVbPnC.c1MrNlc0UFBRLNHAkSadEHj2HDB7ZHC', 'GHHAK0rLUA', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(43, 'vmertz', 'Ms. Queen Paucek DVM', NULL, 'bethel.ritchie@example.net', '2020-12-18 01:44:54', '$2y$10$viTYA3AdYS3NxDALqIzZwO86i9EychGtSvy1QWJHLAqN64ygJDXJG', '0zpSuqcE1W', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(44, 'hirthe.walter', 'Mr. Lucious Wilderman', NULL, 'halvorson.maximillia@example.org', '2020-12-18 01:44:54', '$2y$10$y/oHdSck9N73X17Z0QocMexPeL4BxxJ5ZqSy6YSGmBDT8.3AyrTSO', '7eih1JBnTx', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(45, 'oconnell.brendon', 'Vilma Boyer', NULL, 'earline.howell@example.org', '2020-12-18 01:44:54', '$2y$10$hCnUsTIDmuxDPZDPT1ncOO4ZlguJskvtTfwk0Tya9fkYJfQWyrqYe', 'dYVWrp5PWU', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(46, 'collins.randall', 'Sonny Greenholt', NULL, 'kayla57@example.net', '2020-12-18 01:44:54', '$2y$10$WT0kep.cQe6mcmbgscMzGu35h/HAYvGdBXcqFqdYuQF8L0k6mQRbG', 'N6LIwRQM2f', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(47, 'wiegand.abigale', 'Malinda Gusikowski', NULL, 'roxane99@example.org', '2020-12-18 01:44:54', '$2y$10$Gcj8l8n6wQ3Jnrzt2vluDuOrmdj7V9IHk2wAu1XWvIa700UJyGQ2u', 'kc4uTiktOT', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(48, 'juanita.blick', 'Miss Freida Deckow', NULL, 'rey58@example.com', '2020-12-18 01:44:55', '$2y$10$wfqzMQAgGE1P8EthgTaiBek0DIXJgHrrt.WTdhqFsMJLImxJt2lY.', 'pjd3Crg4I4', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(49, 'jnader', 'Dr. Alberta Hills', NULL, 'jannie.ziemann@example.net', '2020-12-18 01:44:55', '$2y$10$8xfeZR4FL7H6GCekoeKt5OD/ltquxaQ0UW8QG7KTQ0BH0d8ikA7SK', 'fxp98dvJex', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(50, 'charlene.mills', 'Finn Howell Jr.', NULL, 'zkautzer@example.net', '2020-12-18 01:44:55', '$2y$10$ve0UgbOaew4DwS2cuM/NBOQnqfjIiTq4CWK7cuFSzi.ND2XZc8fCu', 'Msn41TMcw2', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(51, 'zkling', 'Louvenia Marquardt', NULL, 'dedrick14@example.com', '2020-12-18 01:44:55', '$2y$10$2twXi36Jh0ckd6Q8TU6Oee3VsuA.9YwJJ4D/yoPx7GHPDaAXXxPWm', 'f6oCtlvMq4', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(52, 'naomi20', 'Clement Nienow', NULL, 'franecki.ramona@example.org', '2020-12-18 01:44:55', '$2y$10$pJhlTYUKAn3N6ur24JLbF..CU0ACdMP7gHn0KesPbglPj3tjgM1zW', 'piTKl7mvzG', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(53, 'reymundo.frami', 'Vena Haag I', NULL, 'caleb.monahan@example.net', '2020-12-18 01:44:55', '$2y$10$pa76ZqjIGXDtlESE9EO0ZeGhcoZwJLIjbZQnzfR0IDcoZqsbuwue6', 'WcP0KQm5ZB', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(54, 'stephany.veum', 'Prof. Deondre Goyette Sr.', NULL, 'mkilback@example.com', '2020-12-18 01:44:55', '$2y$10$c3XhdUuiFuFrp1XAjnRc8OGiXXnhovbUxcL67KyAj7HE6FVNZRbea', 'nocrdDHoGS', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(55, 'chauncey79', 'Florence Grady', NULL, 'marcelino.wyman@example.net', '2020-12-18 01:44:55', '$2y$10$zd0Ywg6fPJmwQ9NcCzDf7O7SAuvWn1l0.t3nZExKHeJEriyWdEmVC', 'SwfrF64ISe', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(56, 'mckenzie.simeon', 'Dejah Lubowitz', NULL, 'felicita46@example.org', '2020-12-18 01:44:55', '$2y$10$IE4o/TtTt6OosOiB9a0WQuv2hSYo/SNMILiCPz1TcBO0hvnc5nLj.', 'F6iRGIkUQ9', '2020-12-18 01:45:01', '2020-12-18 01:45:01'),
(57, 'ypredovic', 'Selina Altenwerth', NULL, 'okon.hipolito@example.com', '2020-12-18 01:44:55', '$2y$10$025/aHOfJWYYHh5e4FxQmeatqw6Sp2t5QdwZsNt0TW1yZoGzEazRC', 'n74cyVs8Sh', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(58, 'dmarvin', 'Sunny Cartwright', NULL, 'abelardo21@example.net', '2020-12-18 01:44:55', '$2y$10$47gQSKcGAZaQhbpBVyxEreq2AssZQ2Gg06/5XTCoohgRai2otJwYa', 'wS4tgvUKcG', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(59, 'zjacobson', 'Adolphus Collier', NULL, 'addison.morissette@example.org', '2020-12-18 01:44:55', '$2y$10$nJmcR.dSd1/0NXalSSqyg.3NF8tnLlCulTIeUoKo0Z9ro6zUz7/Dy', 'VNHP3IZ5cW', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(60, 'maybelle.pouros', 'Jaqueline Krajcik', NULL, 'pfarrell@example.org', '2020-12-18 01:44:56', '$2y$10$91PjbzNFKRRA/lPxl8IdQuNq.QhJhRVpig81M2H9swcDAv02xqR6y', 'RNnX1nFvhU', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(61, 'kathlyn.welch', 'Lucas Gleichner', NULL, 'koby.glover@example.net', '2020-12-18 01:44:56', '$2y$10$RcE2YkfV461/acbhQ275ueznzSzfcxU1hOSg5C12NYKO4wXGEu1/a', 'IqMoXwgUYP', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(62, 'jefferey.will', 'Jovan Abshire', NULL, 'effertz.estel@example.net', '2020-12-18 01:44:56', '$2y$10$K9pq2dA0GJg0Xv7Z11kD3Od3tlLByaTbLPdJG9b.swP0ipDGDewGe', 'B51Gaelnyd', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(63, 'hope.thompson', 'Dr. Murphy Douglas', NULL, 'adolphus.kreiger@example.org', '2020-12-18 01:44:56', '$2y$10$Lhde0ADTUPpy3seanrC9L.CzEx8Fg.LCUAaWNstNnaeb7pUdyVAuy', 'YXsJtdU29A', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(64, 'bridie.schmitt', 'Eliza Hills', NULL, 'beer.mauricio@example.org', '2020-12-18 01:44:56', '$2y$10$RL1yhYB47OwmmMKgv/PtFeAMfKA6n2SaOlyR//ufNwpQNfkfC8D2S', 'ihfSH1dnER', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(65, 'lexie38', 'Dr. Grayce King', NULL, 'zhaley@example.net', '2020-12-18 01:44:56', '$2y$10$6WKrE9Tof0OYcPTopWLAM.2Y15O1eljBdn7WuU9HzzimocuekppbC', 'j3oBG5e703', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(66, 'annabell.rath', 'Violet Raynor', NULL, 'vcrist@example.net', '2020-12-18 01:44:56', '$2y$10$Cyi4tZsxsAeS/k32RkUC2ur9npLOB8rub01127nt/5KUbqdsh4rqC', 'kDW7ec62VZ', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(67, 'mayer.katharina', 'Marjorie Konopelski', NULL, 'maida92@example.com', '2020-12-18 01:44:56', '$2y$10$zxv9Pn4MBdkc/gl3cctT3OwdbXR2CFsqfBNEPoQCiy4IxfgMxv6h.', 'jISUiGLCbe', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(68, 'towne.darian', 'Vallie Stehr', NULL, 'arlo14@example.org', '2020-12-18 01:44:56', '$2y$10$8VN1UtbttwPmQNCtv34JH.K3SNDl.NPjP/R7rc9ntFfMGXd0N5iG6', 'fzY8lJrXo5', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(69, 'judson.simonis', 'Verla Nitzsche IV', NULL, 'swift.callie@example.net', '2020-12-18 01:44:56', '$2y$10$eM7k.kTZOLUvKf.ZiF9KeOW.Z/9RUDTVhV6mot15r2QuqGyCPNUeK', 'fkbJtr3jMe', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(70, 'khintz', 'Miss Beatrice Powlowski DDS', NULL, 'donato64@example.org', '2020-12-18 01:44:56', '$2y$10$okkWNKOm0FgJB8Ao4Nh3W.F1QhuK/BaowoNM.P7oJAA5yhD/3YdO2', 'YYU4IQ5A8u', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(71, 'okeefe.lamar', 'Delfina Ondricka', NULL, 'osvaldo57@example.net', '2020-12-18 01:44:56', '$2y$10$pvdCdDz/AVq33TwKBH0i8eE94/dDAGf0jCk/WDvyKCJUWH3aACW7S', 'DaJ6nT3IGU', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(72, 'emma.hyatt', 'Mr. Hal Mraz', NULL, 'xvandervort@example.com', '2020-12-18 01:44:57', '$2y$10$.cg.Qgi9UPSnMF3j8jCq5O9NEsTDiMGZ/aiBqyadtorenX.4vG3qS', 'auNcsWYf3t', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(73, 'durgan.jaida', 'Gail Schaden', NULL, 'cordell70@example.org', '2020-12-18 01:44:57', '$2y$10$jkyYpbuIJ9hKA4tLlb8ouOSNLPbptbOmM9vbUisvbpETGwKb2EDr6', 'Npm7AXgfvB', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(74, 'mcummings', 'Prof. Niko Cole V', NULL, 'balistreri.brenden@example.org', '2020-12-18 01:44:57', '$2y$10$ma8XQF1Cp1ZG8MnlwdDp5e8adaMEecCckxnTcwEabjM3WG12SlPmm', 'IR4m7fqVbH', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(75, 'maryam02', 'Leora Hermann', NULL, 'schultz.kenya@example.com', '2020-12-18 01:44:57', '$2y$10$IiZRjVPhEsQxUhB.oJjMguwC4RZawkP3OPX0YnURnUgUEbUn00t42', 'RNCuI0O7Yp', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(76, 'conor02', 'Nathanial Leffler', NULL, 'hank02@example.com', '2020-12-18 01:44:57', '$2y$10$.JlOfz2dPJe1RfiA4mNfnuxX7g2JmUGdn2aQuJ9Vgmi5hn9aiPaHG', 'lr7Li1QNCB', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(77, 'deckow.everardo', 'Sylvan Dach', NULL, 'schowalter.sheila@example.com', '2020-12-18 01:44:57', '$2y$10$AkvbISQYwnpMPvgLRKkCJehYSMStynMRcpZoXlZooOLGj5NumLkPS', 'ImOyvCqQq6', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(78, 'xgrimes', 'Dr. Jayce Abbott III', NULL, 'kyle.considine@example.net', '2020-12-18 01:44:57', '$2y$10$qSHhM.0pVPGXvy9HsngRvO07PuamETk20L0ucLZbLxcVd7pC3t2fm', '1iauqfbpZD', '2020-12-18 01:45:02', '2020-12-18 01:45:02'),
(79, 'ivy.luettgen', 'Kevon Williamson', NULL, 'gertrude03@example.org', '2020-12-18 01:44:57', '$2y$10$2sYWAQS27oxB1lzBinM7W.KIF9sdDrv3I89mqCkpuw.m8P7A0Hc3O', '9h4iY9XKtS', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(80, 'novella92', 'Miss Estell VonRueden', NULL, 'frieda45@example.com', '2020-12-18 01:44:57', '$2y$10$pA8PecoeOmyfk8/ro1qiqe7nnKIW7DlQZCXM0ISYUokwU.EJkagte', 'ofWTk0NhYq', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(81, 'zdubuque', 'Yasmin Ebert', NULL, 'wolff.federico@example.org', '2020-12-18 01:44:57', '$2y$10$rj8EtNW3kNRosFEuzbK61e7P6vZXw.xvBQxSbILhYeG8Z5xUehG0a', '6UGzWtjFVD', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(82, 'sabrina34', 'Elmo Torphy', NULL, 'tristian.johns@example.net', '2020-12-18 01:44:57', '$2y$10$L4DKXL5xY.CbJXfZ/9xz9uczBNFAqGOqjeqLXK7pSWVboJZuH49hu', 'EmgW16ksw3', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(83, 'vpagac', 'Armani Hintz', NULL, 'ndicki@example.org', '2020-12-18 01:44:57', '$2y$10$Je7HItwKBex9IJ3f02XlkOQ.V05OVFeDHuS4bM4DCsadsm/SijP3u', 'ZoqQ9L0Rfn', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(84, 'dkoch', 'Jeremy Raynor', NULL, 'wellington.hand@example.com', '2020-12-18 01:44:57', '$2y$10$nBeT3oLusav/65qL/JNZo.q7xaDQYMynUKHRQwc4BKnmv1hagMjrO', 'gmAflSqDSb', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(85, 'dooley.marianna', 'Berta Russel', NULL, 'larry91@example.net', '2020-12-18 01:44:58', '$2y$10$jWfBC7gazgAAQ/D5e3o0T.yzxsreOpwl.j9qif1gultewZRdrwoqG', 'z8tOAJ4m5T', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(86, 'caleb87', 'Naomie Jacobson', NULL, 'adella96@example.com', '2020-12-18 01:44:58', '$2y$10$BAb/6ljLEtR68PwFMPTajeysatXvP7FZcPpDTqQV2NklbHZYIN0f6', 'MZMMmKXTQT', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(87, 'citlalli84', 'Orlando Pfeffer Jr.', NULL, 'murazik.candice@example.net', '2020-12-18 01:44:58', '$2y$10$d2xwLcfMPY.b5bUxLQiIrehY1PWpsWRbDMN16hepe4zB2hr0Hs38i', '9KK4xnmZdZ', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(88, 'heller.margarette', 'Marlee Pfannerstill', NULL, 'sophie27@example.com', '2020-12-18 01:44:58', '$2y$10$bfsHFgnkzUdS7I9NxXKRUupt2RG7IIhDfaQ247/gg5G6xi.AmG5U.', 'irl2hMVU7K', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(89, 'richmond21', 'Bradley King', NULL, 'aliza18@example.org', '2020-12-18 01:44:58', '$2y$10$3UKfctnLYpgjFH2XTfIf2uNX3ZARxlhww3o0H.Mli9NmLdeUmbBce', 'XURWiAcRrs', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(90, 'amcclure', 'Norris Windler', NULL, 'joe.grant@example.org', '2020-12-18 01:44:58', '$2y$10$BTY9T9BecMyoNQCMGkIpl.TG7sP1klrVwODSHG.ONla0Gx5wcxTtu', 'MZyvKE4uc7', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(91, 'tlakin', 'Mabelle Larkin', NULL, 'mandy.corwin@example.net', '2020-12-18 01:44:58', '$2y$10$4HU8V2qtraYuyp17oexRBuL/YkR9ZV.JWGBvmxaWXWYVCD/k6j5HC', 'UMbqC0aSzV', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(92, 'dixie.treutel', 'Celestino Klocko', NULL, 'ofelia.marquardt@example.com', '2020-12-18 01:44:58', '$2y$10$cbYExk0deQbpx26/TzxUVeVuEn/Vv2X6Ey7dl8Rb5ErXjNjHbSFaK', 'bGXpLbDP7P', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(93, 'xrenner', 'Keon Jenkins', NULL, 'mina55@example.com', '2020-12-18 01:44:58', '$2y$10$jJSBlXY8O1FVw2N.D1kyvOo7toVzH.YWLo6H.plkHFcAXL1NeQVMe', 'zrlrsG9e6e', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(94, 'kcollins', 'Paxton Breitenberg', NULL, 'schuppe.maureen@example.org', '2020-12-18 01:44:58', '$2y$10$KyWcjmknrkAjljFWE6.9HO8aq04hhuLMFGrMKe2V51jC3f3lQGA7e', 'ertAwvTlrB', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(95, 'ustokes', 'Mr. Cordelia Wehner', NULL, 'mkeebler@example.com', '2020-12-18 01:44:58', '$2y$10$0.ArzeeMtCxFMc0xbICjQOkdFeMOo54ItFay8T2ekR4DCVzeUcZ62', 'Q60f8nhIYc', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(96, 'ytoy', 'Junior Schinner', NULL, 'anika64@example.org', '2020-12-18 01:44:58', '$2y$10$fqgJcTGtbtmJKW9ddUCKXe2gLC7xHwdkuEQujigkpBSl0iIOXKrTu', 'Os3CUM59EB', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(97, 'gkuhn', 'Prof. Vivianne Hyatt', NULL, 'eschmitt@example.org', '2020-12-18 01:44:59', '$2y$10$o93V7bQTfQBgQE0JbdMbgutyv3S4nU9ZoRUP9bGDdFmX5lFVAxVci', 'TZ0DstfVTz', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(98, 'bonnie64', 'Marian Yundt DVM', NULL, 'pbergnaum@example.net', '2020-12-18 01:44:59', '$2y$10$f00iaHuqrcwalyLnLKFa6eZubewERM8b3r44rXx/XKSAX/dDMHB6u', 'U6nOmnJGWV', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(99, 'baumbach.makayla', 'Belle Beatty', NULL, 'mae.weissnat@example.com', '2020-12-18 01:44:59', '$2y$10$Ebrada.VTJjQHextp2FcpO1JxO2oR4MIA/CPg4lhzr9vQXG0xRSBm', 'Q6mqb8qfC3', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(100, 'nkoss', 'Tessie Jones', NULL, 'telly.bashirian@example.com', '2020-12-18 01:44:59', '$2y$10$hVupDYKQ1v6TCpQlEGn/FO2ck9I3KVSgq6KJ9lQZi0ExcvbflgXA2', '3KPqyST6jn', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(101, 'sawayn.wilson', 'Easter Kemmer', NULL, 'angeline.gleason@example.net', '2020-12-18 01:44:59', '$2y$10$rCZt7K5r8GnKCWvIFds/eeusYx0jQbfEYCOZmS6/qoiiAe02Kvef6', 'plmwQdPjRr', '2020-12-18 01:45:03', '2020-12-18 01:45:03'),
(102, 'aileen74', 'Janie Russel', NULL, 'xkozey@example.org', '2020-12-18 01:44:59', '$2y$10$qeVC2uwLw9G5hpu3cg36Fecb89VZh1887BmRKyeJyLgO66/wlM7By', 'AjOx6RVvr8', '2020-12-18 01:45:03', '2020-12-18 01:45:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
