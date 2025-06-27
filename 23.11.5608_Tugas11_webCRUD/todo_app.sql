-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2025 at 07:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-21 13:37:09', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `property`
--
CREATE DATABASE IF NOT EXISTS `property` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `property`;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branch_no` varchar(10) NOT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(15) NOT NULL,
  `postal_code` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `staff_no` varchar(10) NOT NULL,
  `first_name` varchar(10) NOT NULL,
  `last_name` varchar(10) NOT NULL,
  `position` char(8) NOT NULL,
  `gender` char(1) NOT NULL,
  `date_of_birth` date NOT NULL,
  `salary` int(11) DEFAULT NULL,
  `branch_no` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branch_no`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`staff_no`),
  ADD KEY `branch_no` (`branch_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `staffs`
--
ALTER TABLE `staffs`
  ADD CONSTRAINT `staffs_ibfk_1` FOREIGN KEY (`branch_no`) REFERENCES `branches` (`branch_no`);
--
-- Database: `property_rental`
--
CREATE DATABASE IF NOT EXISTS `property_rental` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `property_rental`;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branch_no` varchar(10) NOT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(15) NOT NULL,
  `postal_code` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branch_no`, `street`, `city`, `postal_code`) VALUES
('B002', 'Jl. E', 'Sleman', '55584'),
('B003', 'Jl. C', 'Sukoharjo', '55581'),
('B004', 'Jl. D', 'Muntilan', '55580'),
('B005', 'Jl. A', 'Sleman', '55584'),
('B007', 'Jl. B', 'Klaten', '55582');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_no` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `preference_type` char(8) DEFAULT NULL,
  `max_rent` int(11) DEFAULT NULL,
  `email` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `owner_no` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` char(8) NOT NULL,
  `email` tinytext NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`owner_no`, `name`, `phone`, `address`, `email`, `password`) VALUES
('CO40', 'Owner C', '081234567892', 'Jl. C', '', ''),
('CO46', 'Owner A', '081234567890', 'Jl. A', '', ''),
('CO87', 'Owner B', '081234567891', 'Jl. B', '', ''),
('CO93', 'Owner D', '081234567893', 'Jl. D', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `property_no` int(11) NOT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(15) NOT NULL,
  `postal_code` char(8) NOT NULL,
  `type` char(10) NOT NULL,
  `rooms` int(11) NOT NULL,
  `rent` int(11) NOT NULL,
  `branch_no` varchar(10) DEFAULT NULL,
  `staff_no` varchar(10) DEFAULT NULL,
  `owner_no` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`property_no`, `street`, `city`, `postal_code`, `type`, `rooms`, `rent`, `branch_no`, `staff_no`, `owner_no`) VALUES
(1, '16 Holhead', 'Aberdeen', 'AB7 5SU', 'House', 6, 650, 'B007', 'SA9', 'CO46'),
(2, '6 Argyll St', 'London', 'NW2', 'Flat', 4, 400, 'B005', 'SL41', 'CO87'),
(3, '6 Lawrence St', 'Glasgow', 'G11 9QX', 'Flat', 3, 350, 'B003', 'SL21', 'CO40'),
(4, '2 Manor Rd', 'Glasgow', 'G32 4QX', 'Flat', 3, 375, 'B003', 'SG37', 'CO93'),
(5, '18 Dale Rd', 'Glasgow', 'G12', 'House', 5, 600, 'B003', 'SG37', 'CO87'),
(6, '5 Novar Dr', 'Glasgow', 'G12 9AX', 'Flat', 4, 450, 'B003', 'SG14', 'CO93'),
(14, '16 Holhead', 'Aberdeen', 'AB7 5SU', 'House', 6, 650, 'B007', 'SA9', 'CO46'),
(15, '6 Argyll St', 'London', 'NW2', 'Flat', 4, 400, 'B005', 'SL41', 'CO87'),
(16, '6 Lawrence St', 'Glasgow', 'G11 9QX', 'Flat', 3, 350, 'B003', 'SL21', 'CO40'),
(17, '2 Manor Rd', 'Glasgow', 'G32 4QX', 'Flat', 3, 375, 'B003', 'SG37', 'CO93'),
(18, '18 Dale Rd', 'Glasgow', 'G12', 'House', 5, 600, 'B003', 'SG37', 'CO87'),
(19, '5 Novar Dr', 'Glasgow', 'G12 9AX', 'Flat', 4, 450, 'B003', 'SG14', 'CO93');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `staff_no` varchar(10) NOT NULL,
  `first_name` varchar(10) NOT NULL,
  `last_name` varchar(10) NOT NULL,
  `position` varchar(20) DEFAULT NULL,
  `gender` char(1) NOT NULL,
  `date_of_birth` date NOT NULL,
  `salary` int(11) DEFAULT NULL,
  `branch_no` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`staff_no`, `first_name`, `last_name`, `position`, `gender`, `date_of_birth`, `salary`, `branch_no`) VALUES
('SA9', 'Temporary', 'Staff', 'Clerk', 'M', '1980-01-01', 10000, 'B007'),
('SG14', 'David', 'Ford', 'Manager', 'M', '1958-03-24', 18000, 'B003'),
('SG37', 'Ann', 'Beech', 'Assistant', 'F', '1960-11-10', 12000, 'B003'),
('SL21', 'John', 'White', 'Manager', 'M', '1945-10-01', 30000, 'B005'),
('SL41', 'Temporary', 'Staff', 'Clerk', 'F', '1980-01-01', 10000, 'B005');

-- --------------------------------------------------------

--
-- Table structure for table `viewing`
--

CREATE TABLE `viewing` (
  `client_no` varchar(10) NOT NULL,
  `property_no` int(11) DEFAULT NULL,
  `view_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branch_no`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_no`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`owner_no`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`property_no`),
  ADD KEY `branch_no` (`branch_no`),
  ADD KEY `staff_no` (`staff_no`),
  ADD KEY `FK_OwnerNO` (`owner_no`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`staff_no`),
  ADD KEY `branch_no` (`branch_no`);

--
-- Indexes for table `viewing`
--
ALTER TABLE `viewing`
  ADD PRIMARY KEY (`client_no`),
  ADD KEY `property_no` (`property_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `property_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `FK_OwnerNO` FOREIGN KEY (`owner_no`) REFERENCES `owners` (`owner_no`),
  ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`branch_no`) REFERENCES `branches` (`branch_no`),
  ADD CONSTRAINT `properties_ibfk_2` FOREIGN KEY (`staff_no`) REFERENCES `staffs` (`staff_no`);

--
-- Constraints for table `staffs`
--
ALTER TABLE `staffs`
  ADD CONSTRAINT `staffs_ibfk_1` FOREIGN KEY (`branch_no`) REFERENCES `branches` (`branch_no`);

--
-- Constraints for table `viewing`
--
ALTER TABLE `viewing`
  ADD CONSTRAINT `viewing_ibfk_1` FOREIGN KEY (`property_no`) REFERENCES `properties` (`property_no`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` char(6) NOT NULL,
  `explanation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `explanation`) VALUES
('CG-001', 'Fashions & Accessories'),
('CG-002', 'Clothes'),
('CG-003', 'Beauty'),
('CG-004', 'Health'),
('CG-005', 'Household'),
('CG-006', 'Kitchen'),
('CG-007', 'Baby Care'),
('CG-008', 'Handphone & Tablet'),
('CG-009', 'Laptop & Accessories'),
('CG-010', 'Computer & Accessories'),
('CG-011', 'Electronic'),
('CG-012', 'Camera, Photo & Video'),
('CG-013', 'Otomotif'),
('CG-014', 'Sports'),
('CG-015', 'Office & Stationery'),
('CG-016', 'Souvenirs & Gifts'),
('CG-017', 'Books'),
('CG-018', 'Softwares'),
('CG-019', 'Films, Musics & Games'),
('CG-020', 'Toys & Hobbies'),
('CG-021', 'Foods & Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` char(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `region_id` varchar(5) DEFAULT NULL,
  `year_of_birth` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `address`, `region_id`, `year_of_birth`) VALUES
('CUS-000001', 'Bagus Nur Hakim', 'Jakarta', 'WL001', 2010),
('CUS-000002', 'Putri Kharisma', 'Yogyakarta', 'WL002', 2009),
('CUS-000003', 'Aliany Milawaty', 'Yogyakarta', 'WL002', 2010),
('CUS-000004', 'Yudha Adisaputra', 'Solo', 'WL005', 2006),
('CUS-000005', 'Nurafni Oktaviani', 'Surabaya', 'WL003', 2010),
('CUS-000006', 'Meilia', 'Bandung', 'WL004', 2007),
('CUS-000007', 'Aulia Luthfi Anna', 'Jakarta', 'WL001', 2008),
('CUS-000008', 'Ichzam Rusmana', 'Medan', 'WL007', 2009),
('CUS-000009', 'Tri Yulianti', 'Makasar', 'WL006', 2000),
('CUS-000010', 'Ervina Jayanti', 'Surabaya', 'WL003', 2007),
('CUS-000011', 'Desi Wulandari', 'Yogyakarta', 'WL002', 2008),
('CUS-000012', 'Sukma Tri Setia', 'Medan', 'WL007', 2009),
('CUS-000013', 'Abinaya Basupati', 'Jakarta', 'WL001', 2009),
('CUS-000014', 'Hadrian Gustin Alvaro', 'Jakarta', 'WL001', 2011),
('CUS-000015', 'Nathania Earline', 'Surabaya', 'WL003', 2011);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` char(15) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `purchasing_price` int(11) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `category_id` char(6) NOT NULL,
  `supplier_id` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `name`, `stock`, `purchasing_price`, `selling_price`, `category_id`, `supplier_id`) VALUES
('CG-001-IT000001', 'Snapback Hat NY', 50, 135000, 140000, 'CG-001', 'SUP-000001'),
('CG-001-IT000002', 'Roberto Cavalli Sunglass', 100, 160000, 165000, 'CG-001', 'SUP-000001'),
('CG-001-IT000003', 'Porsche Design Sunglass', 25, 265000, 275000, 'CG-001', 'SUP-000001'),
('CG-001-IT000004', 'Giorgio Agneli Wallet', 50, 145000, 150000, 'CG-001', 'SUP-000002'),
('CG-001-IT000005', 'Levis Design Walet', 50, 160000, 175000, 'CG-001', 'SUP-000002'),
('CG-001-IT000006', 'Swarovski JAQ-001', 15, 243000, 250000, 'CG-001', 'SUP-000003'),
('CG-001-IT000007', 'Vintage Models NCK', 35, 130000, 135000, 'CG-001', 'SUP-000003'),
('CG-001-IT000008', 'Rossy Net Silver NCK', 30, 140000, 150000, 'CG-001', 'SUP-000003'),
('CG-001-IT000009', 'Bohemian Blue Saphire NCK', 50, 240000, 245000, 'CG-001', 'SUP-000003'),
('CG-001-IT000010', 'Lady Crystal NCK', 25, 165000, 170000, 'CG-001', 'SUP-000003'),
('CG-002-IT000011', 'Black Gray Long SLeeved Shirt', 100, 100000, 103000, 'CG-002', 'SUP-000007'),
('CG-002-IT000012', 'Hoddies Auntumn Coat', 50, 150000, 160000, 'CG-002', 'SUP-000007'),
('CG-002-IT000013', 'Sweater Tribal Gazilo', 100, 90000, 105000, 'CG-002', 'SUP-000007'),
('CG-002-IT000014', 'Jogger Sport Addidas', 50, 145000, 150000, 'CG-002', 'SUP-000008'),
('CG-002-IT000015', 'Hoddie Nike E01', 50, 185000, 190000, 'CG-002', 'SUP-000008'),
('CG-002-IT000016', 'Hoddie Zipper Marine', 50, 170000, 175000, 'CG-002', 'SUP-000008'),
('CG-002-IT000017', 'Jadore Blouse', 25, 150000, 159000, 'CG-002', 'SUP-000008'),
('CG-002-IT000018', 'Pieter Sweater', 20, 135000, 140000, 'CG-002', 'SUP-000010'),
('CG-002-IT000019', 'Line Long Tunik Blouse', 35, 105000, 120000, 'CG-002', 'SUP-000010'),
('CG-002-IT000020', 'Poland Tile Dress', 50, 125000, 130000, 'CG-002', 'SUP-000010'),
('CG-003-IT000021', 'Babyliss Pro Curl', 10, 675000, 689000, 'CG-003', 'SUP-000011'),
('CG-003-IT000022', 'NXY Soft Matte Lip Cream', 50, 125000, 130000, 'CG-003', 'SUP-000012'),
('CG-003-IT000023', 'Manicure Set 777', 20, 195000, 199000, 'CG-003', 'SUP-000011'),
('CG-003-IT000024', 'Rosemary Essential Oil', 50, 55000, 60000, 'CG-003', 'SUP-000013'),
('CG-003-IT000025', 'Naked 3 Palette', 50, 235000, 245000, 'CG-003', 'SUP-000012'),
('CG-004-IT000026', 'Bepathen First Aid', 50, 95000, 100000, 'CG-004', 'SUP-000013'),
('CG-004-IT000027', 'MSI Bio Spray', 50, 165000, 175000, 'CG-004', 'SUP-000013'),
('CG-004-IT000028', 'Medical Pro Bags', 20, 2000000, 2090000, 'CG-004', 'SUP-000013'),
('CG-005-IT000029', 'Minimalis Sofa L', 10, 2000000, 2100000, 'CG-005', 'SUP-000014'),
('CG-005-IT000030', 'Bellin Desk Pink', 10, 900000, 949000, 'CG-005', 'SUP-000014'),
('CG-005-IT000031', 'Prada Prem Curtain', 10, 1000000, 1100000, 'CG-005', 'SUP-000015'),
('CG-005-IT000032', 'Shoes Hanging', 50, 135000, 140000, 'CG-005', 'SUP-000015'),
('CG-005-IT000033', 'Lady American Mattress Protector', 50, 280000, 290000, 'CG-005', 'SUP-000016'),
('CG-005-IT000034', 'Waterproof Sprei Big', 50, 150000, 155000, 'CG-005', 'SUP-000016'),
('CG-006-IT000035', 'Tupperware Blossom Series', 40, 545000, 6320000, 'CG-006', 'SUP-000017'),
('CG-006-IT000036', 'Oxone Juicer OX-965', 25, 1750000, 1850000, 'CG-006', 'SUP-000014'),
('CG-006-IT000037', 'Happycall Double Pan 32cm', 10, 1135000, 1140000, 'CG-006', 'SUP-000014'),
('CG-006-IT000038', 'Vicenza Dining Set', 50, 439000, 450000, 'CG-006', 'SUP-000014'),
('CG-006-IT000039', 'Sport Bottle 600ml', 35, 65000, 680000, 'CG-006', 'SUP-000017');

-- --------------------------------------------------------

--
-- Table structure for table `productlines`
--

CREATE TABLE `productlines` (
  `product_line` varchar(50) NOT NULL,
  `text_desc` text DEFAULT NULL,
  `html_desc` mediumtext DEFAULT NULL,
  `image` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `productlines`
--

INSERT INTO `productlines` (`product_line`, `text_desc`, `html_desc`, `image`) VALUES
('GN01', 'Sheet Mask', '<p>Sheet Mask</p>', NULL),
('GN02', 'Serum', '<p>Serum</p>', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_code` varchar(15) NOT NULL,
  `name` varchar(70) NOT NULL,
  `product_line` varchar(50) DEFAULT NULL,
  `vendor` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `quantity_in_stock` smallint(6) NOT NULL,
  `buy_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_code`, `name`, `product_line`, `vendor`, `description`, `quantity_in_stock`, `buy_price`) VALUES
('GNP01001', 'Sheet Mask Purple', 'GN01', 'PT Rinos Academy', NULL, 300, 19000.00),
('GNP01002', 'Sheet Mask Orange', 'GN01', 'PT Nosin Chemical', NULL, 233, 23000.00),
('GNP02001', 'Anti Wrinkle Serum', 'GN02', 'PT Beauty Pharma', NULL, 450, 229000.00),
('GNP02002', 'Anti Acne Serum', 'GN02', 'PT Skincare House', NULL, 190, 217000.00);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `purchase_id` char(14) NOT NULL,
  `customer_id` char(10) NOT NULL,
  `salesman_id` varchar(10) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`purchase_id`, `customer_id`, `salesman_id`, `date`) VALUES
('20160301-00001', 'CUS-000002', 'SLM-000001', '2016-03-01'),
('20160301-00002', 'CUS-000005', 'SLM-000003', '2016-03-01'),
('20160301-00003', 'CUS-000001', 'SLM-000001', '2016-03-01'),
('20160302-00001', 'CUS-000004', 'SLM-000002', '2016-03-02'),
('20160302-00002', 'CUS-000010', 'SLM-000006', '2016-03-02'),
('20160303-00001', 'CUS-000007', 'SLM-000004', '2016-03-03'),
('20160304-00001', 'CUS-000003', 'SLM-000004', '2016-03-04'),
('20160304-00002', 'CUS-000008', 'SLM-000005', '2016-03-04'),
('20160305-00001', 'CUS-000006', 'SLM-000009', '2016-03-05'),
('20160306-00001', 'CUS-000009', 'SLM-000002', '2016-03-06'),
('20160306-00002', 'CUS-000012', 'SLM-000010', '2016-03-06'),
('20160307-00001', 'CUS-000015', 'SLM-000007', '2016-03-07'),
('20160308-00001', 'CUS-000005', 'SLM-000004', '2016-03-08'),
('20160308-00002', 'CUS-000013', 'SLM-000008', '2016-03-08'),
('20160309-00001', 'CUS-000010', 'SLM-000010', '2016-03-09'),
('20160309-00002', 'CUS-000007', 'SLM-000003', '2016-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `purchase_id` char(14) NOT NULL,
  `item_id` char(15) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `purchasing_price` int(11) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`purchase_id`, `item_id`, `amount`, `purchasing_price`, `selling_price`) VALUES
('20160301-00001', 'CG-001-IT000007', 1, 130000, 135000),
('20160301-00001', 'CG-003-IT000023', 1, 195000, 199000),
('20160301-00001', 'CG-003-IT000025', 1, 235000, 245000),
('20160301-00002', 'CG-005-IT000032', 1, 135000, 140000),
('20160301-00003', 'CG-001-IT000005', 1, 160000, 175000),
('20160301-00003', 'CG-006-IT000039', 1, 65000, 680000),
('20160302-00001', 'CG-002-IT000018', 1, 135000, 140000),
('20160302-00002', 'CG-006-IT000038', 1, 439000, 450000),
('20160303-00001', 'CG-003-IT000021', 1, 675000, 689000),
('20160303-00001', 'CG-003-IT000022', 2, 125000, 130000),
('20160303-00001', 'CG-003-IT000024', 1, 55000, 60000),
('20160304-00001', 'CG-002-IT000013', 1, 90000, 105000),
('20160304-00001', 'CG-002-IT000017', 1, 150000, 159000),
('20160304-00002', 'CG-001-IT000002', 1, 160000, 165000),
('20160305-00001', 'CG-001-IT000008', 1, 140000, 150000),
('20160305-00001', 'CG-001-IT000010', 1, 165000, 170000),
('20160306-00001', 'CG-002-IT000019', 2, 105000, 120000),
('20160306-00002', 'CG-002-IT000015', 1, 185000, 190000),
('20160306-00002', 'CG-002-IT000017', 1, 150000, 159000),
('20160307-00001', 'CG-001-IT000003', 1, 265000, 275000),
('20160308-00001', 'CG-002-IT000011', 1, 100000, 103000),
('20160308-00001', 'CG-002-IT000012', 1, 150000, 160000),
('20160308-00002', 'CG-001-IT000004', 1, 145000, 150000),
('20160308-00002', 'CG-002-IT000014', 1, 145000, 150000),
('20160309-00001', 'CG-005-IT000033', 1, 280000, 290000),
('20160309-00002', 'CG-006-IT000036', 1, 1750000, 1850000);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` char(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `name`, `address`) VALUES
('SUP-000001', 'G&R Collection', 'Semarang'),
('SUP-000002', 'Mollersz', 'Jakarta'),
('SUP-000003', 'Tamza Accessories', 'Surabaya'),
('SUP-000004', 'Wallette', 'Medan'),
('SUP-000005', 'The Watch Gallery', 'Surabaya'),
('SUP-000006', 'Bags Collection', 'Medan'),
('SUP-000007', 'Couple9', 'Jakarta'),
('SUP-000008', 'Swag Corner', 'Surabaya'),
('SUP-000009', 'Kiss_OS', 'Jakarta'),
('SUP-000010', 'YsN', 'Makasar'),
('SUP-000011', 'Legnarose Beauty', 'Jakarta'),
('SUP-000012', 'Mutiara Cosmetics', 'Surabaya'),
('SUP-000013', 'Essential Store', 'Jakarta'),
('SUP-000014', 'Homy Collections', 'Medan'),
('SUP-000015', 'Viventi Living', 'Surabaya'),
('SUP-000016', 'Orion Bed', 'Jakarta'),
('SUP-000017', 'Tupperware ID', 'Makasar'),
('SUP-000018', 'Utama Mega', 'Jakarta'),
('SUP-000019', 'Mavely Baby', 'Jakarta'),
('SUP-000020', 'Sciabuna Store', 'Yogyakarta'),
('SUP-000021', 'Kenzie Baby', 'Surabaya'),
('SUP-000022', 'Chios CK', 'Yogyakarta'),
('SUP-000023', 'JT Shop Indo', 'Jakarta'),
('SUP-000024', 'Saga Case ID', 'Medan'),
('SUP-000025', 'Graha Baru', 'Surabaya'),
('SUP-000026', 'Parttop ID', 'Medan'),
('SUP-000027', 'Alfa Tech', 'Jakarta'),
('SUP-000028', 'King Spycam', 'Jakarta'),
('SUP-000029', 'Glories ID', 'Jakarta'),
('SUP-000030', 'Budget Gadget', 'Jakarta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `productlines`
--
ALTER TABLE `productlines`
  ADD PRIMARY KEY (`product_line`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_code`),
  ADD KEY `product_line` (`product_line`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD KEY `item_id` (`item_id`),
  ADD KEY `purchase_id` (`purchase_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`),
  ADD CONSTRAINT `supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_line`) REFERENCES `productlines` (`product_line`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`),
  ADD CONSTRAINT `purchase_items_ibfk_2` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`purchase_id`);
--
-- Database: `todo_app`
--
CREATE DATABASE IF NOT EXISTS `todo_app` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `todo_app`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`) VALUES
(1, 'Kuliah'),
(2, 'Kerja'),
(5, 'kerkom');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` enum('pending','onprogress','completed') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
--
-- Database: `toko_5566`
--
CREATE DATABASE IF NOT EXISTS `toko_5566` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `toko_5566`;

-- --------------------------------------------------------

--
-- Table structure for table `gudang_5566`
--

CREATE TABLE `gudang_5566` (
  `kode_gudang` char(6) NOT NULL,
  `nama_gudang` varchar(25) NOT NULL,
  `alamat_gudang` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gudang_5566`
--

INSERT INTO `gudang_5566` (`kode_gudang`, `nama_gudang`, `alamat_gudang`) VALUES
('GDG001', 'Gudang Pusat', 'Jl. Raya Utama No. 123'),
('GDG002', 'Gudang Cabang', 'Jl. Mawar No. 45');

-- --------------------------------------------------------

--
-- Table structure for table `produk_5566`
--

CREATE TABLE `produk_5566` (
  `kode_produk` char(6) NOT NULL,
  `kode_gudang` char(6) DEFAULT NULL,
  `nama_produk` varchar(25) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `deskripsi_produk` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk_5566`
--

INSERT INTO `produk_5566` (`kode_produk`, `kode_gudang`, `nama_produk`, `harga_produk`, `deskripsi_produk`) VALUES
('PRD001', 'GDG001', 'Laptop Asus', 8500000, 'Laptop gaming terbaru'),
('PRD002', 'GDG002', 'Smartphone Samsung', 4200000, 'Smartphone flagship 2025');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gudang_5566`
--
ALTER TABLE `gudang_5566`
  ADD PRIMARY KEY (`kode_gudang`);

--
-- Indexes for table `produk_5566`
--
ALTER TABLE `produk_5566`
  ADD PRIMARY KEY (`kode_produk`),
  ADD KEY `kode_gudang` (`kode_gudang`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk_5566`
--
ALTER TABLE `produk_5566`
  ADD CONSTRAINT `produk_5566_ibfk_1` FOREIGN KEY (`kode_gudang`) REFERENCES `gudang_5566` (`kode_gudang`);
--
-- Database: `toko_5608`
--
CREATE DATABASE IF NOT EXISTS `toko_5608` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `toko_5608`;

-- --------------------------------------------------------

--
-- Table structure for table `gudang_5608`
--

CREATE TABLE `gudang_5608` (
  `kode_gudang` char(6) NOT NULL,
  `nama_gudang` varchar(25) NOT NULL,
  `alamat_gudang` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gudang_5608`
--

INSERT INTO `gudang_5608` (`kode_gudang`, `nama_gudang`, `alamat_gudang`) VALUES
('GD001', 'Gudang Besar', 'Jl. Sigma No.0'),
('GD002', 'Gudang Kecil', 'Jl. Mewing No.1');

-- --------------------------------------------------------

--
-- Table structure for table `produk_5608`
--

CREATE TABLE `produk_5608` (
  `kode_produk` char(6) NOT NULL,
  `kode_gudang` char(6) DEFAULT NULL,
  `nama_produk` varchar(25) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `deskripsi_produk` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk_5608`
--

INSERT INTO `produk_5608` (`kode_produk`, `kode_gudang`, `nama_produk`, `harga_produk`, `deskripsi_produk`) VALUES
('PR001', 'GD001', 'Tws +999999', 8500000, 'Tws Untuk Orang Beraura'),
('PR002', 'GD002', 'Headset Mewing', 150000, 'Headset Untuk Mewing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gudang_5608`
--
ALTER TABLE `gudang_5608`
  ADD PRIMARY KEY (`kode_gudang`);

--
-- Indexes for table `produk_5608`
--
ALTER TABLE `produk_5608`
  ADD PRIMARY KEY (`kode_produk`),
  ADD KEY `kode_gudang` (`kode_gudang`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk_5608`
--
ALTER TABLE `produk_5608`
  ADD CONSTRAINT `produk_5608_ibfk_1` FOREIGN KEY (`kode_gudang`) REFERENCES `gudang_5608` (`kode_gudang`);
--
-- Database: `uts`
--
CREATE DATABASE IF NOT EXISTS `uts` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `uts`;

-- --------------------------------------------------------

--
-- Table structure for table `bengkel`
--

CREATE TABLE `bengkel` (
  `id_bengkel` int(11) NOT NULL,
  `nama_bengkel` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `status` enum('aktif','nonaktif') DEFAULT 'aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `role` enum('user','admin') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bengkel`
--
ALTER TABLE `bengkel`
  ADD PRIMARY KEY (`id_bengkel`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bengkel`
--
ALTER TABLE `bengkel`
  MODIFY `id_bengkel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `velocity_service`
--
CREATE DATABASE IF NOT EXISTS `velocity_service` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `velocity_service`;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `video_path` varchar(255) NOT NULL,
  `thumbnail_path` varchar(255) DEFAULT NULL,
  `vehicle_type` enum('motor','mobil') NOT NULL,
  `problem_type` varchar(100) NOT NULL,
  `duration` int(11) DEFAULT NULL COMMENT 'Duration in seconds',
  `views` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `video_id` (`video_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE;
--
-- Database: `velocity_service_real`
--
CREATE DATABASE IF NOT EXISTS `velocity_service_real` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `velocity_service_real`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` enum('motor','mobil') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`) VALUES
(1, 'Mesin', 'motor'),
(2, 'Kelistrikan', 'motor'),
(3, 'Rangka', 'motor'),
(4, 'Mesin', 'mobil'),
(5, 'Kelistrikan', 'mobil'),
(6, 'Suspensi', 'mobil');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'uebfhubwuhfbh', 'frbfbryf@gmail.com', 'jnjibrfbrfb', 'ejibefbeufbwuf', '2025-06-27 03:39:34'),
(2, 'huefeuhfubfirbf', 'nfurbbfbrbwyr@gmail.com', 'fhuhfurhgr', 'rffurburhugrug', '2025-06-27 03:39:52'),
(3, 'ifnfnknfnefn', 'hfehifhehfeh@gmail.com', 'efienfiehfuhf', 'gnisjgihrsughsrughur', '2025-06-27 03:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `search_history`
--

CREATE TABLE `search_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `query` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `search_history`
--

INSERT INTO `search_history` (`id`, `user_id`, `query`, `created_at`) VALUES
(1, 4, 'rgetethrhng,', '2025-06-16 16:46:49'),
(2, 5, 'mjghg', '2025-06-17 02:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE `tutorials` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `difficulty` enum('pemula','menengah','mahir') NOT NULL,
  `duration` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(2, 'admin', 'admin@velocity.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', '2025-06-16 15:34:49'),
(3, 'tedy', 'muhamadfauzan0401@gmail.com', '$2y$10$ltFznv6uUAvk8AmoyJR5quXfIdGw7FFmTx2wzD2Q5y9u0Q/piSEtu', 'user', '2025-06-16 16:44:35'),
(4, 'rafi', '123@gmail.com', '$2y$10$P9YDeaM3wViaE0LEOaS26OiIOT17CT3eul7/d59njqZMDPpFvvscy', 'user', '2025-06-16 16:46:08'),
(5, 'fauzanganteng', 'fauzan@gmail.com', '$2y$10$L08flAKG8IUDAeN9JJm/XuQfQvgzz2PstymPOTScd5GVtMoHdLWa2', 'user', '2025-06-17 02:33:15'),
(6, 'siu', 'siu@gmail.com', '$2y$10$ElcLldXkG3b1JxYpQXJv8.pAnKqT93jPa62UBGbHee0ikG2Y9vs/O', 'user', '2025-06-17 13:46:32'),
(7, 'tedyyyyy', 'tedyyyyy@gmail.com', '$2y$10$hqula.3roVEpPfI89gKZV.vPHvTS25ikHDfdy/jfRIOH5BRtXsoCC', 'user', '2025-06-27 03:59:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_history`
--
ALTER TABLE `search_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `search_history`
--
ALTER TABLE `search_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `search_history`
--
ALTER TABLE `search_history`
  ADD CONSTRAINT `search_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD CONSTRAINT `tutorials_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
--
-- Database: `velo_tedy`
--
CREATE DATABASE IF NOT EXISTS `velo_tedy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `velo_tedy`;

-- --------------------------------------------------------

--
-- Table structure for table `balasan`
--

CREATE TABLE `balasan` (
  `id` int(11) NOT NULL,
  `masukan_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `dibuat_pada` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deskripsi`
--

CREATE TABLE `deskripsi` (
  `id` int(11) NOT NULL,
  `video_id` int(11) DEFAULT NULL,
  `langkah` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `masukan`
--

CREATE TABLE `masukan` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `dibuat_pada` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masukan`
--

INSERT INTO `masukan` (`id`, `user_id`, `isi`, `dibuat_pada`) VALUES
(1, 3, 'ewdwadwda', '2025-06-27 11:56:07'),
(2, 3, 'ewdwadwda', '2025-06-27 12:07:37'),
(3, 3, 'ewdwadwda', '2025-06-27 12:07:41'),
(4, 3, 'tuuuuuy', '2025-06-27 12:07:46'),
(5, 3, 'tuuuuuy', '2025-06-27 12:08:16'),
(6, 3, 'tuuuuuy', '2025-06-27 12:08:20'),
(7, 3, 'wwdwdwadawdwa', '2025-06-27 12:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `role`) VALUES
(1, 'Arsa', 'a@gmail.com', '$2y$10$FRt7goNTfAQAXph2yNePw.o9XdolUa69EpT0NxHVAA.s3rh27LeE6', 'user'),
(3, 'Arsa', 'ab@gmail.com', '$2y$10$EyQ6txdnG72RuSJCaLhg6OnTpo493Q.6J6ez.Po5bADTPmXYIxg7O', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `video_tutorial`
--

CREATE TABLE `video_tutorial` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `nama_file` varchar(255) DEFAULT NULL,
  `dibuat_pada` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balasan`
--
ALTER TABLE `balasan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `masukan_id` (`masukan_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `deskripsi`
--
ALTER TABLE `deskripsi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_id` (`video_id`);

--
-- Indexes for table `masukan`
--
ALTER TABLE `masukan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `video_tutorial`
--
ALTER TABLE `video_tutorial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balasan`
--
ALTER TABLE `balasan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deskripsi`
--
ALTER TABLE `deskripsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masukan`
--
ALTER TABLE `masukan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `video_tutorial`
--
ALTER TABLE `video_tutorial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `balasan`
--
ALTER TABLE `balasan`
  ADD CONSTRAINT `balasan_ibfk_1` FOREIGN KEY (`masukan_id`) REFERENCES `masukan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `balasan_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deskripsi`
--
ALTER TABLE `deskripsi`
  ADD CONSTRAINT `deskripsi_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `video_tutorial` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `masukan`
--
ALTER TABLE `masukan`
  ADD CONSTRAINT `masukan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
