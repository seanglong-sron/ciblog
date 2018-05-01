-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2018 at 02:36 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(2, 'Technology', '2018-04-27 02:48:26'),
(3, 'Health', '2018-04-27 02:48:39'),
(4, 'Entertainment', '2018-04-27 02:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) NOT NULL,
  `category_id` int(10) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `body` text,
  `post_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(13, 4, 'Super Post', 'Super-Post', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute iruredolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '1.jpg', '2018-04-28 16:55:11'),
(14, 4, 'Dark Knight Post', 'Dark-Knight-Post', '<p>Quam laboriosam temporibus voluptates reprehenderit iusto cupiditate molestiae optio natus. Consequuntur, asperiores dolorum quasi facilis fugiat dicta voluptates molestias?</p>\r\n\r\n<p>Voluptatem incidunt est quos dolore molestiae earum? Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse, repellendus? Sunt quod qui temporibus inventore tempora explicabo! Autem, delectus aliquam! Reprehenderit, omnis odio veniam consequuntur corrupti voluptatum voluptatem similique assumenda possimus excepturi nostrum iusto, sed ipsam, atque laudantium animi iste soluta maiores delectus minus? Error blanditiis dolorem minus exercitationem aut harum. Architecto eum ea ab magni qui animi commodi doloremque similique facilis voluptatum hic, necessitatibus maiores dolore sed fugiat voluptate expedita saepe assumenda? Ipsum earum fuga a quos vel nam molestiae nostrum dolore provident harum iusto ullam sit recusandae, assumenda sunt ratione eos beatae autem? Explicabo molestias voluptates natus laudantium labore perspiciatis illum consequatur excepturi facere accusantium perferendis maxime quo ea, veritatis minus soluta molestiae debitis nobis! Itaque earum harum dolor nemo officia et, autem obcaecati eaque velit saepe rerum deleniti? Blanditiis harum corrupti tenetur assumenda quae eum eius quia quaerat doloremque illum tempora hic ipsam repudiandae dolores nobis omnis aliquid, ullam excepturi quibusdam odio voluptas doloribus commodi consequatur. Quasi animi voluptatibus repellendus exercitationem nesciunt beatae optio ullam sequi, quos, corporis illum ea accusantium.</p>\r\n', '2.png', '2018-04-28 16:57:50'),
(15, 3, 'Captain Post', 'Captain-Post', '<p>Quo, minus officia ut laboriosam nesciunt iusto quis ab ipsam fugiat odio eos accusamus! Consectetur facere officiis earum suscipit sequi libero natus tempora in ad! Impedit expedita culpa accusamus, a totam mollitia ullam labore deleniti molestias corrupti ipsam exercitationem nulla asperiores sequi fuga nesciunt animi doloremque hic dicta iure. Illo eius a eveniet illum perspiciatis facilis aspernatur quia aliquam voluptatibus sapiente, quasi, totam sit quisquam! Dolore ipsam consectetur ducimus impedit explicabo qui, unde tempora iure?</p>\r\n\r\n<p>Architecto, magni commodi officia in voluptate aspernatur tempora ut! Laboriosam, ducimus explicabo, facilis possimus temporibus sint consequatur delectus nihil placeat eaque, enim doloremque aut illo ea inventore tempora pariatur nam?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae, expedita. Repellendus, minus! Esse doloribus ex, labore pariatur sed ullam inventore totam saepe quis reprehenderit aut?</p>\r\n', '3.jpg', '2018-04-28 16:59:30'),
(16, 4, 'Fast Post', 'Fast-Post', '<p>Consequatur sequi officia officiis dolorem accusamus quas molestias at, quis in vero quae esse iste veniam magnam eum nostrum fugit mollitia iure ipsum cupiditate itaque pariatur suscipit error similique? Reprehenderit facere pariatur repellat, rem dolorum ratione cupiditate ad autem dolorem quibusdam eius doloremque quae harum laudantium atque molestiae alias? Laborum minus a natus ratione harum et reiciendis corporis iste, eum eveniet totam. Hic eos sapiente doloremque? Facilis sit id labore beatae.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nesciunt, explicabo sed fugit perferendis neque quibusdam, saepe deserunt error veritatis sit cumque id molestiae delectus qui at fugiat illo doloribus recusandae accusantium, consequatur iure ratione! Assumenda eius dolorem ullam itaque eaque adipisci sit. Illum, quam qui tempore dignissimos facere consectetur error, pariatur optio quidem iusto ipsam laborum perspiciatis labore et. Fuga neque eius rem. Ipsa dolor recusandae numquam asperiores minima adipisci ratione fuga facilis architecto temporibus sed et accusamus atque nemo quod fugiat molestias nulla aut cum, quam aliquid inventore obcaecati laudantium. Deleniti et saepe numquam sunt illum maxime, voluptatem odit quaerat reprehenderit perspiciatis modi cum obcaecati voluptatum impedit tenetur?</p>\r\n', NULL, '2018-04-30 00:51:49'),
(17, 4, 'Avengers Assemble Post', 'Avengers-Assemble-Post', '<p>Thanos is coimg!!!. ipsum dolor sit amet, consectetur adipisicing elit. Minus delectus quasi, possimus illum distinctio nostrum vero enim tempore non deserunt ex nesciunt consequatur impedit ratione voluptates ipsa magnam voluptate asperiores ad itaque?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Optio, sint quia corporis, modi voluptates laboriosam alias sunt repudiandae totam in tempora repellat, atque ut. Quis, fuga explicabo dignissimos debitis sint odio nihil expedita nostrum dolorem itaque ab voluptates perspiciatis veniam nulla repellat vero magni dicta commodi cumque eligendi illo. Explicabo consectetur suscipit maxime doloribus, adipisci commodi?</p>\r\n', '5.png', '2018-04-28 17:07:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
