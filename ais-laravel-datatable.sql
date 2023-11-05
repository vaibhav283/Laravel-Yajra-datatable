-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2023 at 11:46 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ais-laravel-datatable`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Active','In-Active') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Candace Kris', 'Active', '2023-11-04 03:27:28', '2023-11-04 03:27:28'),
(2, 'Verna Toy', 'Active', '2023-11-04 03:27:28', '2023-11-04 03:27:28'),
(3, 'Flavio Hegmann', 'Active', '2023-11-04 03:27:28', '2023-11-04 03:27:28'),
(4, 'Melvina Quigley', 'Active', '2023-11-04 03:27:28', '2023-11-04 03:27:28'),
(5, 'Miss Roxanne Okuneva', 'Active', '2023-11-04 03:27:28', '2023-11-04 03:27:28'),
(6, 'Mona Friesen PhD', 'Active', '2023-11-04 03:27:28', '2023-11-04 03:27:28'),
(7, 'Dr. Payton Treutel PhD', 'Active', '2023-11-04 03:27:28', '2023-11-04 03:27:28'),
(8, 'Ethel Grady', 'Active', '2023-11-04 03:27:28', '2023-11-04 03:27:28'),
(9, 'Mrs. Creola Schmeler', 'Active', '2023-11-04 03:27:28', '2023-11-04 03:27:28'),
(10, 'Aidan Schneider', 'Active', '2023-11-04 03:27:28', '2023-11-04 03:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_04_070258_create_products_table', 1),
(6, '2023_11_04_070347_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('Active','In-Active') NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `status`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Horacio Kemmer III', 'Sint tempora debitis consectetur sed quia autem. Libero fugit aut quisquam. Omnis iure totam dolores repellendus. Id assumenda quis qui illum quis sint. Quia minus vel ut atque corrupti et.', '71E+oh38ZqL._AC_UL640_QL65_.jpg', 'Active', 8, '2023-11-04 03:27:28', '2023-11-05 01:31:55'),
(2, 'Prof. Darby Buckridge', 'Aut soluta asperiores laborum modi tempore. Porro omnis et non qui consectetur. Ut minima ut dolorem maxime quia.', '61EPT-oMLrL._AC_UY436_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:28', '2023-11-04 03:27:28'),
(3, 'Malvina Klein DVM', 'Soluta porro dolorem officiis sit qui laborum tenetur quo. Ipsum laborum dolorem cupiditate ex sint mollitia error quaerat. Laudantium sed possimus repellendus praesentium eligendi sit sed.', '710VzyXGVsL._AC_UY436_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:28', '2023-11-04 03:27:28'),
(5, 'Ernie Lockman', 'Unde nostrum minus delectus non accusantium aspernatur qui quasi. Sed aut saepe quia animi enim provident qui. Optio et eum qui odio. Esse quidem laboriosam quis labore quia quae labore. Est quod et sint vitae.', '71E+oh38ZqL._AC_UL640_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:28', '2023-11-04 03:27:28'),
(6, 'Nicholas Marquardt', 'Molestias qui impedit sint reprehenderit. Odit iure reiciendis iste vero tempora illum.', '61c1QC4lF-L._AC_UY436_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:28', '2023-11-04 03:27:28'),
(7, 'Deondre Upton', 'Aspernatur tenetur nesciunt dolore magni et iusto non veniam. Illum qui aut aut natus quisquam nesciunt.', '61ghDjhS8vL._AC_UY436_QL65_.jpg', 'Active', 1, '2023-11-04 03:27:28', '2023-11-04 03:27:28'),
(8, 'Cindy Reynolds MD', 'Officiis et deserunt dolorem ut accusamus aut excepturi. Tempora nesciunt facilis nemo. Dignissimos quia beatae voluptatem dolorum tempora sed.', '71cVOgvystL._AC_UL640_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:28', '2023-11-04 03:27:28'),
(9, 'Garland Funk', 'Quia quia facere et illum sunt necessitatibus voluptate. Id qui nesciunt minus voluptate ea deserunt consequatur. Voluptatem provident voluptate sint rem.', '71nDK2Q8HAL._AC_UL640_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(10, 'Adrienne Howell', 'Nam cumque alias praesentium rem rerum quibusdam nesciunt consequatur. Enim nobis vel accusantium esse id et. Rerum aliquam et et commodi.', '71E+oh38ZqL._AC_UL640_QL65_.jpg', 'Active', 1, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(14, 'Ms. Zora Gleason', 'Ipsam velit dolorem ut esse. Minima at sed ex non debitis esse ipsam. Quis aut rerum laborum omnis culpa consequuntur.', '71r3ktfakgL._AC_UY436_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(15, 'Anibal Pagac', 'Labore beatae et corporis aut voluptas. Totam molestiae nihil ut eos minus rerum cupiditate. Animi explicabo deserunt rerum sit.', '41WpqIvJWRL._AC_UY436_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(16, 'Dr. Anya Watsica', 'Blanditiis et vero repellat. Sit asperiores eum eos ut. Eaque totam vel voluptates ut. Quas aliquid earum error velit.', '61uSHBgUGhL._AC_UL640_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(17, 'Rigoberto Lemke', 'Quod eos ad voluptate sit quos harum. Ut minima eos saepe quam et. Animi excepturi sit qui commodi doloribus et. Perspiciatis temporibus officiis culpa non officia eligendi ut.', '61ghDjhS8vL._AC_UY436_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(18, 'Mr. Theodore Eichmann Jr.', 'Rerum alias pariatur voluptatem voluptatem. Dolorum ut dolor reiciendis labore totam et est sunt. Sit quod blanditiis ducimus totam similique illo voluptates sed.', '71r3ktfakgL._AC_UY436_QL65_.jpg', 'Active', 1, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(19, 'Terrence Champlin', 'Possimus aut temporibus eligendi quam non voluptate. Aut qui corrupti ipsam. Voluptatem nisi qui numquam commodi odit consequuntur vel. Deserunt nulla debitis doloribus mollitia sapiente.', '71r3ktfakgL._AC_UY436_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(20, 'Lexie Rempel', 'Nulla nulla quibusdam voluptatum cum. Commodi dicta enim ipsa cumque inventore. Nam quis sapiente placeat. Soluta soluta reprehenderit est quia repellat corrupti. Voluptas asperiores nobis odio fugit eveniet.', '61c1QC4lF-L._AC_UY436_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(21, 'Lavon Bernier', 'Tempore vel quia explicabo possimus. Quae et placeat laudantium aut dolore est. Magni eligendi hic ut eveniet rerum architecto quasi.', '71r3ktfakgL._AC_UY436_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(22, 'Pinkie Greenholt DVM', 'Quam distinctio autem minus unde maxime in. Rerum aut aut ex enim voluptatibus. Consequatur reiciendis ducimus est ipsa debitis.', '61EPT-oMLrL._AC_UY436_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(23, 'Prof. Cornelius Champlin II', 'Enim numquam quisquam quas alias temporibus dolorem. Rerum facere voluptatibus vero explicabo nihil. Atque exercitationem rem quia numquam mollitia consequatur consequatur illo. Porro nisi doloribus molestiae ab quaerat.', '61CqYq+xwNL._AC_UL640_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(24, 'Miracle Stroman', 'Ab dolorem culpa est corrupti doloribus accusamus est soluta. Atque enim autem assumenda modi. Saepe rem voluptatem ullam sunt at. Aut natus ipsa mollitia repellendus quod dolore.', '71E+oh38ZqL._AC_UL640_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(25, 'Christelle Pfeffer', 'Soluta id harum ea. Molestiae voluptatem voluptas numquam provident aperiam. Aut rem saepe dolores quia suscipit. Soluta laboriosam reiciendis odit ut.', '61c1QC4lF-L._AC_UY436_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(26, 'Dr. Sanford Runolfsdottir DDS', 'Eos accusantium cumque et. Quisquam quibusdam blanditiis reiciendis doloremque eius. Magnam facere et explicabo aut maxime ipsam veniam.', '41WpqIvJWRL._AC_UY436_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(27, 'Humberto O\'Kon', 'Repellendus quia explicabo eos aut. Commodi veniam porro atque ratione. Reiciendis dolores rerum ut quaerat qui nihil. Id totam aut itaque eos iure ea hic.', '61uSHBgUGhL._AC_UL640_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(28, 'Katarina Veum II', 'Laudantium neque odit amet dolorem qui. In animi aliquam exercitationem dolorum accusantium corrupti. Quae voluptates illo voluptas similique. Et cumque dolorem sit alias maxime.', '71cVOgvystL._AC_UL640_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(29, 'Casey Sauer', 'Quod quo et dolores voluptas modi iusto. Omnis ab iusto enim sunt. Sed tempore nemo aut voluptates. Quia maiores voluptates quasi quae.', '41WpqIvJWRL._AC_UY436_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(30, 'Dr. Jackeline Koelpin', 'Deleniti atque fugiat culpa at. Fugiat voluptatibus numquam ipsa illum est voluptate nam. Omnis quia et alias saepe praesentium neque. Et sit accusamus enim quas provident. Optio doloribus omnis voluptates animi iure ducimus enim.', '41WpqIvJWRL._AC_UY436_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(31, 'Gay Stamm', 'Placeat illo ex expedita porro consequuntur ullam. Asperiores sit fugit delectus id facilis. Corporis magni reprehenderit culpa.', '61CqYq+xwNL._AC_UL640_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(32, 'Lupe Weissnat', 'Dicta error similique maiores nihil hic accusantium labore. Aut alias modi qui itaque autem. Eum temporibus ratione illo earum commodi voluptate suscipit.', '61ghDjhS8vL._AC_UY436_QL65_.jpg', 'Active', 1, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(33, 'Graciela Weimann', 'Tempora numquam consequuntur qui quasi. Et laboriosam voluptate dolorem ut. Laboriosam ut voluptas sit. A amet doloribus qui ipsam ut.', '61uSHBgUGhL._AC_UL640_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(34, 'Alisa Hintz', 'Possimus voluptatem neque ullam animi. Omnis ipsa qui molestiae maiores laboriosam ipsa illum. Dolores veniam tenetur excepturi tenetur quis excepturi. Quos dolore et rerum. Fugit aut iusto adipisci cupiditate et voluptas dolores.', '61c1QC4lF-L._AC_UY436_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(35, 'Cheyenne Mills III', 'Voluptas maxime consectetur repellendus sapiente voluptatem dolorem temporibus adipisci. Pariatur ipsa autem commodi. Veritatis qui culpa similique eius. Incidunt ut cupiditate hic.', '71cVOgvystL._AC_UL640_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(36, 'Prof. Maximus Barrows', 'Rerum minus iusto illum hic cum qui. Est perspiciatis eum harum quidem. Aut aliquam praesentium suscipit ut placeat. Magnam culpa molestiae asperiores debitis.', '61ghDjhS8vL._AC_UY436_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(37, 'Brittany Schmeler Sr.', 'Non quidem quae illum voluptates. Temporibus est provident autem tenetur sit ut. Velit ex perspiciatis voluptatum natus doloribus. Voluptatem sint quia et omnis qui repellat.', '71r3ktfakgL._AC_UY436_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(38, 'Garth Keeling', 'Nihil quae repudiandae magnam dolorum quae ut voluptatem. Soluta non voluptatem voluptas minus voluptatem odit.', '71cVOgvystL._AC_UL640_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(39, 'Adrien Zboncak DVM', 'Illum laudantium dicta voluptatem dolores. Nihil fugiat autem modi eum.', '710VzyXGVsL._AC_UY436_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(40, 'Dino Conn', 'Esse quia soluta veniam molestiae. Explicabo illum voluptas ipsa aliquam molestias. Unde voluptates omnis culpa deserunt voluptas.', '71r3ktfakgL._AC_UY436_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(41, 'Winona Reichel', 'Corporis assumenda nesciunt est. Minima eum asperiores consequuntur quisquam. Cum assumenda et id et quia quam cumque. Molestiae rerum sit voluptatem animi sequi aut.', '710VzyXGVsL._AC_UY436_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(42, 'Rebekah White DDS', 'Qui inventore iste est animi optio. Laboriosam molestias eos est laborum omnis quia voluptatem. Voluptatibus ex id voluptatem voluptates aut tempora dignissimos. Exercitationem totam saepe officiis omnis sint.', '61uSHBgUGhL._AC_UL640_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(43, 'Jaida Weissnat III', 'Id id nisi consectetur quisquam. Ea itaque similique rerum beatae. Nihil consequatur dicta qui blanditiis ex magnam nulla velit. Et consectetur quam pariatur odit atque sit vel sit.', '61ghDjhS8vL._AC_UY436_QL65_.jpg', 'Active', 1, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(44, 'Norma Schuppe', 'Corrupti sed esse dignissimos vel. Laborum voluptatum molestiae nulla unde consequatur dolore aut.', '71nDK2Q8HAL._AC_UL640_QL65_.jpg', 'Active', 1, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(45, 'Ms. Mayra Sanford', 'Quibusdam consequatur aut vel qui sapiente fugiat neque ipsa. Quasi tempora ut at cumque consequatur aliquid illum.', '71nDK2Q8HAL._AC_UL640_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(46, 'Marisa Grant', 'Quis voluptates dolor neque optio. Dolorem non voluptatem magni quibusdam recusandae explicabo. Accusamus voluptas molestias saepe nihil. Culpa culpa blanditiis natus ducimus aut repudiandae.', '710VzyXGVsL._AC_UY436_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(47, 'Ms. Mabel Thiel V', 'Aut sequi optio soluta non quaerat. Reprehenderit pariatur atque id ut quam nobis qui voluptate.', '71nDK2Q8HAL._AC_UL640_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(48, 'Yessenia Predovic DDS', 'Recusandae repellendus ut iste cupiditate fuga architecto soluta. Eum architecto ex blanditiis dolorem voluptas. At quasi qui placeat laudantium doloribus enim labore. Totam ut nobis rerum quia illo.', '61c1QC4lF-L._AC_UY436_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(49, 'Alysa Reynolds MD', 'Aut aut et quo voluptates. Autem in similique autem sunt commodi atque. Reprehenderit vitae praesentium in hic dolorem ut odio. Enim et expedita ut.', '61ghDjhS8vL._AC_UY436_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(50, 'Mrs. Katlynn Rutherford Sr.', 'Veritatis sed mollitia dolor consequuntur et. Animi quaerat placeat quasi deleniti debitis doloribus asperiores officiis. Itaque cumque qui et maiores.', '61uSHBgUGhL._AC_UL640_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(51, 'Forrest Larson', 'Sequi quo tenetur voluptas sed distinctio libero animi. Maiores eos voluptatem debitis est veritatis. Vitae non molestiae non dolorum magnam fuga.', '61ghDjhS8vL._AC_UY436_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(52, 'Demetrius Green', 'Odit delectus et omnis beatae. Explicabo aut cum nobis ipsa quia aut non. Labore at non quos quod veniam. Vitae ut delectus dignissimos qui voluptates.', '61uSHBgUGhL._AC_UL640_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(53, 'Mr. Lorenza Russel', 'Aliquid fugit et ut velit itaque quisquam. Quas animi pariatur est sit. Inventore incidunt deserunt veniam aliquid. Voluptatem voluptas sint et cupiditate.', '61uSHBgUGhL._AC_UL640_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(54, 'Dr. Donato Torp', 'Reiciendis et praesentium similique unde et rerum sequi explicabo. Exercitationem facilis maiores culpa sit sed tenetur consectetur. Dolores sit quam voluptatem nobis sint nihil. Autem alias odio totam et. Cum sunt perspiciatis porro veritatis quia autem et.', '61EPT-oMLrL._AC_UY436_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(55, 'Madie Kunze Jr.', 'Nihil molestiae voluptatem ullam. Est est totam provident libero illo aut aut. Sequi quia aliquid laboriosam nostrum voluptatem repellat. Quia aut occaecati aspernatur consequatur natus. Illum id voluptatem aut.', '61uSHBgUGhL._AC_UL640_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(56, 'Ronny Armstrong', 'Rerum aliquid dolorum quibusdam rem sed non. Vel sequi consequatur non enim sed. Modi ex ullam consequatur.', '61ghDjhS8vL._AC_UY436_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(57, 'Kolby Abernathy V', 'Esse soluta voluptas et sed omnis facilis totam numquam. Et qui illo at et sint. Expedita sit non consectetur cupiditate optio.', '61ghDjhS8vL._AC_UY436_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(58, 'Mr. Ezekiel Hettinger', 'Sed animi repellat est dolorem. Qui ab omnis qui non. Laboriosam quo voluptatem tempora ullam similique assumenda optio. Quis itaque rerum culpa laborum.', '61c1QC4lF-L._AC_UY436_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(59, 'Jalyn Nikolaus', 'Molestiae ut dolor excepturi. Accusantium eum sit debitis corporis nobis corrupti. Dolores impedit quis ipsam voluptas. Voluptates eaque distinctio eos distinctio ab blanditiis est minus. Eum alias modi veniam harum.', '61CqYq+xwNL._AC_UL640_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(60, 'Mandy Schroeder', 'Et atque rerum tempora omnis voluptatibus totam dolorum omnis. Quis facere tempora iusto accusantium eius reiciendis omnis. Distinctio fugit quisquam laboriosam nihil occaecati. Magnam et et adipisci et in sit quasi.', '61CqYq+xwNL._AC_UL640_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(61, 'Wilbert Schowalter', 'Hic quas sit ipsa unde quasi sint dolores. Voluptatem suscipit dignissimos et quos. Ipsum sed voluptatem aliquid sint accusamus deserunt sit et.', '71cVOgvystL._AC_UL640_QL65_.jpg', 'Active', 1, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(62, 'Olga Jaskolski', 'Non provident et nobis qui. Sunt et nostrum possimus ut cupiditate occaecati voluptatem. Rem sed ipsa doloremque perspiciatis.', '61EPT-oMLrL._AC_UY436_QL65_.jpg', 'Active', 1, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(63, 'Olin Leffler', 'Id optio rerum ea quam et fugit. Quibusdam dolores soluta voluptas illum sed. Voluptatibus alias et nisi eos sapiente quia. Animi sit impedit minus nam molestias laborum.', '61EPT-oMLrL._AC_UY436_QL65_.jpg', 'Active', 1, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(64, 'Theresia Jenkins', 'Dignissimos est aut iste eos natus voluptas. Est id quos ut. Expedita voluptas maiores repellendus. Dolor voluptas porro ipsa tenetur eveniet voluptas.', '71cVOgvystL._AC_UL640_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(65, 'Chyna Conroy', 'Ipsam voluptas sunt quas consequatur nisi sunt consequuntur sapiente. Est eaque aut omnis porro error voluptas repellat aut. Quas modi mollitia modi in sint officiis. Saepe quod minima accusamus ut.', '71E+oh38ZqL._AC_UL640_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(66, 'Mrs. Viva Emmerich', 'Et eum quas sed. Fugiat accusamus modi magni voluptate ut a. Eum quibusdam voluptates dolore nisi enim odit. Dolor ea earum ut alias officiis vel.', '61CqYq+xwNL._AC_UL640_QL65_.jpg', 'Active', 1, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(67, 'Reggie Wisozk', 'Non expedita eius consectetur beatae et officiis sapiente. Omnis quis voluptatem fugiat rerum et veritatis pariatur. Possimus a esse voluptas tenetur enim.', '71E+oh38ZqL._AC_UL640_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(68, 'Nikki Willms', 'Maiores et ut quod incidunt. Aut architecto laboriosam repellat ipsa neque. Voluptatem qui dolorum quis consequatur deleniti blanditiis mollitia. Corporis odio laborum distinctio eum dolorem.', '61uSHBgUGhL._AC_UL640_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(69, 'Georgiana Wiza', 'Ut voluptatem qui nostrum fugiat ratione similique dolorem. Odio fugiat reiciendis distinctio ipsam doloribus repellendus unde. Dolores sint ut vitae pariatur nobis necessitatibus alias vitae. Amet aut sint impedit tempora consequatur enim ullam similique.', '41WpqIvJWRL._AC_UY436_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(70, 'Samir West', 'Dolorum natus consectetur blanditiis repudiandae soluta voluptatibus vel. Animi non aut magnam voluptates sit dolorem et. Quia maxime tenetur vel perferendis in.', '41WpqIvJWRL._AC_UY436_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(71, 'Garrick Koch', 'Facere dolores praesentium ex aut odio ut. Aspernatur atque tenetur consequuntur quo atque. Cum exercitationem adipisci velit velit tempore. Ut molestiae ipsa quasi voluptatem dignissimos sunt.', '71nDK2Q8HAL._AC_UL640_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(72, 'Verda Schaefer', 'Earum at illum minima non temporibus possimus. Voluptatem qui dolorum nam consequatur sit. Rerum quos assumenda tempore itaque qui. Omnis neque exercitationem ex facilis voluptas ut excepturi.', '41WpqIvJWRL._AC_UY436_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(73, 'Camryn Strosin', 'In vero odio et placeat repellat. Quis odit omnis ipsam occaecati. Ex omnis quidem voluptas temporibus aut animi dolores. Magnam ut quam sint in delectus voluptatem distinctio.', '61c1QC4lF-L._AC_UY436_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(74, 'Nicolette Conn', 'Et suscipit impedit et temporibus illo. Blanditiis id alias ut molestias nisi omnis. Facilis delectus minus quod inventore et earum est. Maxime sed et aliquid quia.', '61uSHBgUGhL._AC_UL640_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(75, 'Aileen Cartwright', 'Adipisci suscipit laudantium molestias placeat earum ducimus. Iste aut sunt provident ut. Id sit labore rerum illo quis numquam perspiciatis.', '710VzyXGVsL._AC_UY436_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(76, 'Mrs. Athena Parisian MD', 'Explicabo doloribus rerum voluptas quibusdam iure maiores. Corrupti consequuntur dolor possimus sit id deleniti. Vero sunt minima quo tenetur.', '71r3ktfakgL._AC_UY436_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(77, 'Ms. Euna Bashirian', 'Aspernatur perspiciatis dolor id aspernatur fugiat. Quis modi perferendis eius. Accusamus occaecati natus esse ut. Voluptas dolorem quos quaerat veniam recusandae eos quod quos.', '41WpqIvJWRL._AC_UY436_QL65_.jpg', 'Active', 1, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(78, 'Aileen Feest', 'Sed accusantium accusantium quia libero excepturi est ab. Est magnam aut voluptatibus vel quis similique libero.', '710VzyXGVsL._AC_UY436_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(79, 'Idella Hintz', 'Minus quidem eaque voluptates eos itaque. Enim et accusantium dolores sapiente. Pariatur sequi quam beatae unde cumque nihil. Reiciendis ut qui est.', '61c1QC4lF-L._AC_UY436_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(80, 'Lafayette Hane', 'Earum placeat sit perferendis quia sapiente dolore corporis. Explicabo sint ut sapiente impedit esse placeat totam. Dolor perspiciatis voluptatem voluptatem tenetur dolorum.', '710VzyXGVsL._AC_UY436_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(81, 'Ariel Howell', 'Ut autem tenetur earum aut velit ratione alias. Aliquid dolorem veritatis eius neque maxime ea quia. Amet asperiores ullam exercitationem ab tempora voluptas est corporis.', '61CqYq+xwNL._AC_UL640_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(82, 'Miss Tatyana Bahringer', 'Repudiandae ea molestiae unde iure. Quae odio perferendis omnis debitis molestiae sint. Error repellendus culpa corrupti voluptates est.', '61CqYq+xwNL._AC_UL640_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(83, 'Bud West', 'Quae fugiat praesentium odit culpa officiis. Explicabo voluptatum consequuntur et autem. Vel sunt ut itaque et consequatur. Officia blanditiis sit in quasi reprehenderit porro.', '71cVOgvystL._AC_UL640_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(84, 'Colton Thompson', 'Molestias quis ex laborum. Recusandae ut alias illum minima quas velit. Rem vero et quos a eaque.', '71E+oh38ZqL._AC_UL640_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(85, 'Tracey Shanahan', 'Voluptas rerum nostrum molestiae delectus id. Hic tenetur voluptatem ipsum a non libero modi. Velit ea et adipisci non magnam rerum. Aliquam dolores similique non cupiditate reprehenderit non.', '61c1QC4lF-L._AC_UY436_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(86, 'Kay Casper PhD', 'Consectetur tempore illum deserunt inventore id necessitatibus nobis. Accusantium est quibusdam ducimus est nihil possimus. Id ipsa nesciunt et optio harum et in. Enim molestias tempore rerum deserunt tempore in.', '71nDK2Q8HAL._AC_UL640_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(87, 'Liam Prosacco', 'Et quis quod porro hic atque iste repellat id. Officiis est fugit doloribus enim autem inventore distinctio. Iure accusantium eveniet iure veritatis odit assumenda sit.', '61c1QC4lF-L._AC_UY436_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(88, 'Albert Armstrong IV', 'Saepe quas ut voluptatibus accusamus. Aliquam sit harum est dolores ea aspernatur. Rerum eum explicabo qui ea explicabo maxime aut. Tempora veritatis minima nihil tenetur ab illum molestiae.', '71E+oh38ZqL._AC_UL640_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(89, 'Kameron Hirthe', 'Magnam sit et voluptas aut assumenda. Maiores repellat voluptates mollitia aut natus pariatur.', '61CqYq+xwNL._AC_UL640_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(90, 'Briana Veum', 'Dolor adipisci expedita dolor dignissimos laborum veniam. Nisi unde voluptatem odio at odit. Nihil dolorem et tempore aut.', '710VzyXGVsL._AC_UY436_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(91, 'Deshaun Hill', 'Veniam ipsam quae praesentium vel. Qui sed cum quisquam cum. Qui ex accusamus cumque natus repellendus est quam ea. Porro quas nemo ipsum ut aperiam ut ea. Maiores blanditiis aut molestias ipsum iste quia sed.', '71cVOgvystL._AC_UL640_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(92, 'Prof. Mallory Goyette DVM', 'Exercitationem consectetur nesciunt velit quo. Eligendi omnis maiores repellendus debitis numquam sapiente itaque. Velit veniam rerum cumque ut totam expedita quia aspernatur.', '41WpqIvJWRL._AC_UY436_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(93, 'Mr. Muhammad Altenwerth', 'Tempore aut debitis facere. Id accusantium minus veritatis enim. Iste ipsa ipsam dolor quos repudiandae. Similique autem voluptate cupiditate cum dolor sit dolore. Autem ut optio voluptatem.', '71nDK2Q8HAL._AC_UL640_QL65_.jpg', 'Active', 3, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(94, 'Pearlie Kovacek', 'Quia impedit non commodi iure culpa laboriosam. Et molestiae at qui cupiditate. Dolore reiciendis illo cumque quo vitae facilis. Ut est doloremque voluptatibus non ad et. Ducimus ipsam quaerat sint rerum maxime mollitia iusto.', '61ghDjhS8vL._AC_UY436_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(95, 'Terrence Rutherford', 'Possimus voluptatem explicabo in repellat velit praesentium. Est porro commodi eaque officia. Laudantium autem ut nihil aut ut.', '61ghDjhS8vL._AC_UY436_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(96, 'Mr. Jerome Corkery', 'Aperiam nostrum quasi tenetur optio. Minus ex et voluptas quaerat non. Sit nesciunt fugiat voluptas quia.', '41WpqIvJWRL._AC_UY436_QL65_.jpg', 'Active', 2, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(97, 'Damian Welch', 'Natus et ea qui necessitatibus architecto sed. Et ipsam quia recusandae quidem tenetur repudiandae. Facilis voluptates dolorem est accusantium. Voluptatem vero nisi est sapiente facilis nesciunt.', '61EPT-oMLrL._AC_UY436_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(98, 'Mitchell Maggio', 'Qui sit voluptas dignissimos dolorem esse. Veritatis molestias commodi distinctio cum repellat. Ut autem quis provident. Minima veniam qui aut nihil.', '71E+oh38ZqL._AC_UL640_QL65_.jpg', 'Active', 1, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(99, 'Davon Lind', 'Libero libero eum distinctio voluptate ullam ipsa. Consequatur voluptatem perspiciatis consectetur soluta. Temporibus non et laborum tempore.', '61c1QC4lF-L._AC_UY436_QL65_.jpg', 'Active', 5, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(100, 'Dr. Mathias Farrell', 'Incidunt maiores accusantium enim qui iusto. Veniam qui ut ullam illo tenetur. Doloribus cum ut qui dignissimos qui tempore nesciunt nemo.', '710VzyXGVsL._AC_UY436_QL65_.jpg', 'Active', 4, '2023-11-04 03:27:29', '2023-11-04 03:27:29'),
(101, 'Test product 1', 'Test product 1Test product 1Test product 1Test product 1Test product 1Test product 1Test product 1', 'product_img/zwySp1DG8FpDP1DTPEfTdeMiVulkhX6cz1TVNZdN.png', 'Active', 1, '2023-11-04 13:50:41', '2023-11-04 13:50:41'),
(102, 'Testing product 222', 'Testing product 222Testing product 222Testing product 222Testing product 222', 'product_img/WjYO7BPzF3SP86YffcVEDiuHcK2daK0CZI9KVdbZ.jpg', 'Active', 1, '2023-11-04 23:59:28', '2023-11-05 05:15:21'),
(103, 'Testing product 333', 'Testing product 333Testing product 333Testing product 333Testing product 333', 'product_img/aTKpjoiClQ8pxxWpVCS3S4wGIyqhfxrJVCpieUdl.jpg', 'Active', 10, '2023-11-05 00:27:45', '2023-11-05 05:15:05'),
(104, 'vaibhav', 'This iis edit operation', 'product_img/MmZYChLZeJFTYTE0uBxk2EsaRIt2hmHSdyJDqPzq.jpg', 'Active', 1, '2023-11-05 00:33:23', '2023-11-05 05:07:07'),
(105, 'testing product 444', 'testing product 444testing product 444testing product 444testing product 444', 'product_img/xcHL82mt0yxLkoX7RMl04OkIduwgFy7nGSvDTPJ5.png', 'Active', 1, '2023-11-05 05:05:21', '2023-11-05 05:05:21'),
(106, 'Samsung Mobile M51 5G', 'Samsung Mobile M51Samsung Mobile M51Samsung Mobile M51Samsung Mobile M51Samsung Mobile M51', 'product_img/y8EXEL7VTuSvuFVovvV3C3JO4Z4LQ92kq5v24evn.jpg', 'Active', 8, '2023-11-05 05:14:16', '2023-11-05 05:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
