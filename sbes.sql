-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2017 at 03:11 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sbes`
--

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `GetAllAcquiredItems`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllAcquiredItems` ()  BEGIN
SELECT `rec_acquired_items`.`acqitem_id`,
    `rec_acquired_items`.`acquisition_id`,
    `rec_acquired_items`.`material_id`,
    `rec_acquired_items`.`acqitem_qty`,
    `rec_acquired_items`.`acqitem_price`,
    `rec_acquired_items`.`acqitem_subtotal`,
    `rec_acquired_items`.`acqitem_status`,
    `rec_acquired_items`.`acqitem_dateacquired`
FROM `sbes`.`rec_acquired_items`;
END$$

DROP PROCEDURE IF EXISTS `GetAllAcquisitions`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllAcquisitions` ()  BEGIN
SELECT `rec_acquisitions`.`acquisition_id`,
    `rec_acquisitions`.`project_id`,
    `rec_acquisitions`.`acquisition_ponumber`,
    `rec_acquisitions`.`acquisition_supplier`,
    `rec_acquisitions`.`acquisition_date`,
    `rec_acquisitions`.`acquisition_inserted`
FROM `sbes`.`rec_acquisitions`;
END$$

DROP PROCEDURE IF EXISTS `GetAllAttendance`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllAttendance` ()  BEGIN
SELECT `rec_attendances`.`attendance_id`,
    `rec_attendances`.`employee_id`,
    `rec_attendances`.`attendance_day`,
    `rec_attendances`.`attendance_in`,
    `rec_attendances`.`attendance_out`,
    `rec_attendances`.`attendance_remark`
FROM `sbes`.`rec_attendances`;
END$$

DROP PROCEDURE IF EXISTS `GetAllBIometrics`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllBIometrics` ()  BEGIN
SELECT `rec_empbiometrics`.`empbiometric_id`,
    `rec_empbiometrics`.`employee_id`,
    `rec_empbiometrics`.`empbiometric_data`
FROM `sbes`.`rec_empbiometrics`;
END$$

DROP PROCEDURE IF EXISTS `GetAllBonuses`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllBonuses` ()  BEGIN
SELECT `lib_bonuses`.`bonus_id`,
    `lib_bonuses`.`bonus_name`,
    `lib_bonuses`.`bonus_percent`,
    `lib_bonuses`.`bonus_amount`
FROM `sbes`.`lib_bonuses`;
END$$

DROP PROCEDURE IF EXISTS `GetAllDeductions`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllDeductions` ()  BEGIN
SELECT `lib_deductions`.`deduction_id`,
    `lib_deductions`.`deduction_name`,
    `lib_deductions`.`deduction_percent`,
    `lib_deductions`.`deduction_amount`
FROM `sbes`.`lib_deductions`;
END$$

DROP PROCEDURE IF EXISTS `GetAllDraftMaterialPlans`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllDraftMaterialPlans` ()  BEGIN
SELECT `rec_project_draft_material_plans`.`projdraftmatplan_id`,
    `rec_project_draft_material_plans`.`project_id`,
    `rec_project_draft_material_plans`.`material_id`,
    `rec_project_draft_material_plans`.`projdraftmatplan_qty`
FROM `sbes`.`rec_project_draft_material_plans`;
END$$

DROP PROCEDURE IF EXISTS `GetAllEmployeeBonuses`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllEmployeeBonuses` ()  BEGIN
SELECT `rec_empdeductions`.`empdeduction_id`,
    `rec_empdeductions`.`employee_id`,
    `rec_empdeductions`.`deduction_id`
FROM `sbes`.`rec_empdeductions`;
END$$

DROP PROCEDURE IF EXISTS `GetAllEmployees`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllEmployees` ()  BEGIN
SELECT `rec_employees`.`employee_id`,
    `rec_employees`.`project_id`,
    `rec_employees`.`position_id`,
    `rec_employees`.`employee_fname`,
    `rec_employees`.`employee_mname`,
    `rec_employees`.`employee_lname`,
    `rec_employees`.`employee_imagepath`,
    `rec_employees`.`employee_empstatus`,
    `rec_employees`.`employee_wage`,
    `rec_employees`.`employee_tmonth`,
    `rec_employees`.`employee_status`,
    `rec_employees`.`employee_inserted`,
    `rec_employees`.`employee_lastupdated`
FROM `sbes`.`rec_employees`;
END$$

DROP PROCEDURE IF EXISTS `GetAllEmployeeSchedules`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllEmployeeSchedules` ()  BEGIN
SELECT `rec_empschedules`.`empschedule_id`,
    `rec_empschedules`.`employee_id`,
    `rec_empschedules`.`empschedule_day`,
    `rec_empschedules`.`empschedule_in`,
    `rec_empschedules`.`empschedule_out`,
    `rec_empschedules`.`empschedule_status`
FROM `sbes`.`rec_empschedules`;
END$$

DROP PROCEDURE IF EXISTS `GetAllEmplyeeBonuses`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllEmplyeeBonuses` ()  BEGIN
SELECT `rec_empbonuses`.`empbonus_id`,
    `rec_empbonuses`.`employee_id`,
    `rec_empbonuses`.`bonus_id`
FROM `sbes`.`rec_empbonuses`;
END$$

DROP PROCEDURE IF EXISTS `GetAllForemen`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllForemen` ()  BEGIN
SELECT `rec_project_foremen`.`projectforeman_id`,
    `rec_project_foremen`.`project_id`,
    `rec_project_foremen`.`employee_id`,
    `rec_project_foremen`.`projectforeman_inserted`
FROM `sbes`.`rec_project_foremen`;
END$$

DROP PROCEDURE IF EXISTS `GetAllHolidays`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllHolidays` ()  BEGIN
    SELECT `lib_holidays`.`holiday_id`,
        `lib_holidays`.`holiday_date`,
        `lib_holidays`.`holiday_otrate`,
        `lib_holidays`.`holiday_status`
    FROM `sbes`.`lib_holidays`;
END$$

DROP PROCEDURE IF EXISTS `GetAllInventories`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllInventories` ()  BEGIN
SELECT `rec_inventories`.`inventory_id`,
    `rec_inventories`.`project_id`,
    `rec_inventories`.`material_id`,
    `rec_inventories`.`inventory_qty`,
    `rec_inventories`.`inventory_lastupdated`
FROM `sbes`.`rec_inventories`;
END$$

DROP PROCEDURE IF EXISTS `GetAllIssuances`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllIssuances` ()  BEGIN
SELECT `rec_issuances`.`issuance_id`,
    `rec_issuances`.`project_id`,
    `rec_issuances`.`issuance_issuer`,
    `rec_issuances`.`issuance_recipient`,
    `rec_issuances`.`issuance_date`,
    `rec_issuances`.`issuance_inserted`
FROM `sbes`.`rec_issuances`;
END$$

DROP PROCEDURE IF EXISTS `GetAllIssuedItems`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllIssuedItems` ()  BEGIN
SELECT `rec_issued_items`.`issitem_id`,
    `rec_issued_items`.`issuance_id`,
    `rec_issued_items`.`material_id`,
    `rec_issued_items`.`issitem_qty`,
    `rec_issued_items`.`issitem_status`,
    `rec_issued_items`.`acqitem_dateissued`
FROM `sbes`.`rec_issued_items`;
END$$

DROP PROCEDURE IF EXISTS `GetAllMaterials`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllMaterials` ()  BEGIN
SELECT `lib_materials`.`material_id`,
    `lib_materials`.`material_name`,
    `lib_materials`.`material_metric`,
    `lib_materials`.`material_created`
FROM `sbes`.`lib_materials`;
END$$

DROP PROCEDURE IF EXISTS `GetAllOtherDeductionLogs`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllOtherDeductionLogs` ()  BEGIN
SELECT `rec_other_deduction_logs`.`otherdeductionlog_id`,
    `rec_other_deduction_logs`.`employee_id`,
    `rec_other_deduction_logs`.`otherdeductionlog_description`,
    `rec_other_deduction_logs`.`otherdeductionlog_amount`,
    `rec_other_deduction_logs`.`otherdeductionlog_date`
FROM `sbes`.`rec_other_deduction_logs`;
END$$

DROP PROCEDURE IF EXISTS `GetAllOtherDeductions`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllOtherDeductions` ()  BEGIN
SELECT `rec_other_deductions`.`otherdeduction_id`,
    `rec_other_deductions`.`employee_id`,
    `rec_other_deductions`.`otherdeduction_total`,
    `rec_other_deductions`.`otherdeduction_paid`
FROM `sbes`.`rec_other_deductions`;
END$$

DROP PROCEDURE IF EXISTS `GetAllPayroll`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllPayroll` ()  BEGIN
SELECT `rec_payrolls`.`payroll_id`,
    `rec_payrolls`.`project_id`,
    `rec_payrolls`.`payroll_start`,
    `rec_payrolls`.`payroll_end`,
    `rec_payrolls`.`payroll_status`,
    `rec_payrolls`.`payroll_created`,
    `rec_payrolls`.`Payroll_lastupdated`
FROM `sbes`.`rec_payrolls`;
END$$

DROP PROCEDURE IF EXISTS `GetAllPayrollItemDates`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllPayrollItemDates` ()  BEGIN
SELECT `rec_payroll_item_dates`.`payrollitemdate_id`,
    `rec_payroll_item_dates`.`payrollitem_id`,
    `rec_payroll_item_dates`.`payrollitemdate_day`,
    `rec_payroll_item_dates`.`payrollitemdate_date`,
    `rec_payroll_item_dates`.`payrollitem_hours`
FROM `sbes`.`rec_payroll_item_dates`;
END$$

DROP PROCEDURE IF EXISTS `GetAllPayrollItems`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllPayrollItems` ()  BEGIN
SELECT `rec_payroll_items`.`payrollitem_id`,
    `rec_payroll_items`.`employee_id`,
    `rec_payroll_items`.`bonus_id`,
    `rec_payroll_items`.`deduction_id`,
    `rec_payroll_items`.`payrollitem_timereg`,
    `rec_payroll_items`.`payrollitem_timeot`,
    `rec_payroll_items`.`payrollitem_basic`,
    `rec_payroll_items`.`payrollitem_ot`,
    `rec_payroll_items`.`payrollitem_deminimis`,
    `rec_payroll_items`.`payrollitem_tmonthamount`,
    `rec_payroll_items`.`payrollitem_gross`,
    `rec_payroll_items`.`payrollitem_net`,
    `rec_payroll_items`.`payrollitem_status`,
    `rec_payroll_items`.`payrollitem_lastupdated`
FROM `sbes`.`rec_payroll_items`;
END$$

DROP PROCEDURE IF EXISTS `GetAllProjectDraftForemen`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllProjectDraftForemen` ()  BEGIN
SELECT `rec_project_draft_foremen`.`projdraftforeman_id`,
    `rec_project_draft_foremen`.`project_id`,
    `rec_project_draft_foremen`.`employee_id`
FROM `sbes`.`rec_project_draft_foremen`;
END$$

DROP PROCEDURE IF EXISTS `GetAllProjectDrafts`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllProjectDrafts` ()  BEGIN
SELECT `rec_project_drafts`.`projdraft_id`,
    `rec_project_drafts`.`projdraft_contractnum`,
    `rec_project_drafts`.`projdraft_name`,
    `rec_project_drafts`.`projdraft_description`,
    `rec_project_drafts`.`projdraft_client`,
    `rec_project_drafts`.`projdraft_start`,
    `rec_project_drafts`.`projdraft_end`,
    `rec_project_drafts`.`projdraft_estbudget`,
    `rec_project_drafts`.`projdraft_inserted`,
    `rec_project_drafts`.`projdraft_lastupdated`
FROM `sbes`.`rec_project_drafts`;
END$$

DROP PROCEDURE IF EXISTS `GetAllProjectMaterialPlans`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllProjectMaterialPlans` ()  BEGIN
SELECT `rec_project_material_plans`.`projectmatplan_id`,
    `rec_project_material_plans`.`project_id`,
    `rec_project_material_plans`.`material_id`,
    `rec_project_material_plans`.`projectmatplan_qty`
FROM `sbes`.`rec_project_material_plans`;
END$$

DROP PROCEDURE IF EXISTS `GetAllProjects`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllProjects` ()  BEGIN
SELECT `rec_projects`.`project_id`,
    `rec_projects`.`project_contractnum`,
    `rec_projects`.`project_name`,
    `rec_projects`.`project_description`,
    `rec_projects`.`project_client`,
    `rec_projects`.`project_start`,
    `rec_projects`.`project_end`,
    `rec_projects`.`project_estbudget`,
    `rec_projects`.`project_status`,
    `rec_projects`.`project_inserted`,
    `rec_projects`.`project_lastupdated`
FROM `sbes`.`rec_projects`;
END$$

DROP PROCEDURE IF EXISTS `GetAllSettings`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllSettings` ()  BEGIN
SELECT `lib_settings`.`overtime_rate`,
    `lib_settings`.`deminimis_cap`
FROM `sbes`.`lib_settings`;
END$$

DROP PROCEDURE IF EXISTS `GetAllTransferrals`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllTransferrals` ()  BEGIN
SELECT `rec_transferrals`.`transferral_id`,
    `rec_transferrals`.`transferral_projectfrom`,
    `rec_transferrals`.`transferral_projectto`,
    `rec_transferrals`.`transferral_date`,
    `rec_transferrals`.`transferral_dateinserted`
FROM `sbes`.`rec_transferrals`;
END$$

DROP PROCEDURE IF EXISTS `GetAllTransferredItems`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllTransferredItems` ()  BEGIN
SELECT `rec_transferred_items`.`transitem_id`,
    `rec_transferred_items`.`transferral_id`,
    `rec_transferred_items`.`material_id`,
    `rec_transferred_items`.`transitem_qty`,
    `rec_transferred_items`.`transitem_price`,
    `rec_transferred_items`.`transitem_subtotal`,
    `rec_transferred_items`.`transitem_status`,
    `rec_transferred_items`.`transitem_datetransferred`
FROM `sbes`.`rec_transferred_items`;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `lib_bonuses`
--

DROP TABLE IF EXISTS `lib_bonuses`;
CREATE TABLE IF NOT EXISTS `lib_bonuses` (
  `bonus_id` int(11) NOT NULL AUTO_INCREMENT,
  `bonus_name` varchar(50) NOT NULL,
  `bonus_percent` float NOT NULL,
  `bonus_amount` float NOT NULL,
  PRIMARY KEY (`bonus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lib_deductions`
--

DROP TABLE IF EXISTS `lib_deductions`;
CREATE TABLE IF NOT EXISTS `lib_deductions` (
  `deduction_id` int(11) NOT NULL AUTO_INCREMENT,
  `deduction_name` varchar(50) NOT NULL,
  `deduction_percent` float NOT NULL,
  `deduction_amount` float NOT NULL,
  PRIMARY KEY (`deduction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lib_employee_positions`
--

DROP TABLE IF EXISTS `lib_employee_positions`;
CREATE TABLE IF NOT EXISTS `lib_employee_positions` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(50) NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib_employee_positions`
--

INSERT INTO `lib_employee_positions` (`position_id`, `position_name`) VALUES
(1, 'FOREMAN'),
(2, 'LABORER');

-- --------------------------------------------------------

--
-- Table structure for table `lib_holidays`
--

DROP TABLE IF EXISTS `lib_holidays`;
CREATE TABLE IF NOT EXISTS `lib_holidays` (
  `holiday_id` int(11) NOT NULL AUTO_INCREMENT,
  `holiday_date` date NOT NULL,
  `holiday_otrate` decimal(10,0) NOT NULL,
  `holiday_status` varchar(20) NOT NULL,
  PRIMARY KEY (`holiday_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lib_materials`
--

DROP TABLE IF EXISTS `lib_materials`;
CREATE TABLE IF NOT EXISTS `lib_materials` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_name` varchar(150) NOT NULL,
  `material_metric` varchar(10) NOT NULL,
  `material_created` datetime NOT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib_materials`
--

INSERT INTO `lib_materials` (`material_id`, `material_name`, `material_metric`, `material_created`) VALUES
(1, 'LANSANG', 'pcs', '2017-10-10 00:00:00'),
(2, 'SEMENTO', 'sack(s)', '2017-10-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lib_settings`
--

DROP TABLE IF EXISTS `lib_settings`;
CREATE TABLE IF NOT EXISTS `lib_settings` (
  `overtime_rate` decimal(10,0) NOT NULL,
  `deminimis_cap` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_acquired_items`
--

DROP TABLE IF EXISTS `rec_acquired_items`;
CREATE TABLE IF NOT EXISTS `rec_acquired_items` (
  `acqitem_id` int(11) NOT NULL AUTO_INCREMENT,
  `acquisition_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `acqitem_qty` decimal(10,0) NOT NULL,
  `acqitem_price` float NOT NULL,
  `acqitem_subtotal` float NOT NULL,
  `acqitem_status` varchar(20) NOT NULL,
  `acqitem_dateacquired` datetime NOT NULL,
  PRIMARY KEY (`acqitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_acquisitions`
--

DROP TABLE IF EXISTS `rec_acquisitions`;
CREATE TABLE IF NOT EXISTS `rec_acquisitions` (
  `acquisition_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `acquisition_ponumber` varchar(40) NOT NULL,
  `acquisition_supplier` varchar(150) NOT NULL,
  `acquisition_date` datetime NOT NULL,
  `acquisition_inserted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`acquisition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_attendances`
--

DROP TABLE IF EXISTS `rec_attendances`;
CREATE TABLE IF NOT EXISTS `rec_attendances` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `attendance_day` varchar(5) NOT NULL,
  `attendance_in` datetime NOT NULL,
  `attendance_out` datetime NOT NULL,
  `attendance_remark` varchar(20) NOT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_empbiometrics`
--

DROP TABLE IF EXISTS `rec_empbiometrics`;
CREATE TABLE IF NOT EXISTS `rec_empbiometrics` (
  `empbiometric_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `empbiometric_data` varchar(255) NOT NULL,
  PRIMARY KEY (`empbiometric_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_empbonuses`
--

DROP TABLE IF EXISTS `rec_empbonuses`;
CREATE TABLE IF NOT EXISTS `rec_empbonuses` (
  `empbonus_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `bonus_id` int(11) NOT NULL,
  PRIMARY KEY (`empbonus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_empdeductions`
--

DROP TABLE IF EXISTS `rec_empdeductions`;
CREATE TABLE IF NOT EXISTS `rec_empdeductions` (
  `empdeduction_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `deduction_id` int(11) NOT NULL,
  PRIMARY KEY (`empdeduction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_employees`
--

DROP TABLE IF EXISTS `rec_employees`;
CREATE TABLE IF NOT EXISTS `rec_employees` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `employee_fname` varchar(50) NOT NULL,
  `employee_mname` varchar(50) NOT NULL,
  `employee_lname` varchar(50) NOT NULL,
  `employee_imagepath` varchar(255) NOT NULL,
  `employee_empstatus` varchar(20) NOT NULL,
  `employee_wage` float NOT NULL,
  `employee_tmonth` tinyint(1) NOT NULL,
  `employee_status` varchar(20) NOT NULL,
  `employee_inserted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `employee_lastupdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rec_employees`
--

INSERT INTO `rec_employees` (`employee_id`, `project_id`, `position_id`, `employee_fname`, `employee_mname`, `employee_lname`, `employee_imagepath`, `employee_empstatus`, `employee_wage`, `employee_tmonth`, `employee_status`, `employee_inserted`, `employee_lastupdated`) VALUES
(1, 0, 1, 'SHANE', 'TIO', 'DIGAL', 'BLANK', 'REGULAR', 300, 1, 'SINGLE', '2017-10-24 00:53:18', '2017-11-03 21:20:44'),
(2, 0, 1, 'HARVEY CHARLES', 'MIDDLENAME', 'PIOQUINTO', 'BLANK', 'REGULAR', 300, 1, 'SINGLE', '2017-10-24 00:53:18', '2017-11-08 00:04:36'),
(3, 0, 1, 'CHRISTOPHER', 'YAMAS', 'DOMAUB', 'BLANK', 'REGULAR', 300, 1, 'SINGLE', '2017-10-24 00:53:18', '2017-11-08 22:00:56'),
(4, 0, 2, 'MARIGOLD', 'UMIPIG', 'ANINGAT', 'BLANK', 'REGULAR', 300, 1, 'SINGLE', '2017-10-24 00:53:18', '2017-11-08 22:00:56'),
(5, 0, 1, 'SHANE', 'TIO', 'DIGAL', 'BLANK', 'REGULAR', 300, 1, 'SINGLE', '2017-10-24 00:53:18', '2017-11-03 21:20:44'),
(6, 0, 1, 'HARVEY CHARLES', 'MIDDLENAME', 'PIOQUINTO', 'BLANK', 'REGULAR', 300, 1, 'SINGLE', '2017-10-24 00:53:18', '2017-11-08 22:00:56'),
(7, 0, 1, 'CHRISTOPHER', 'YAMAS', 'DOMAUB', 'BLANK', 'REGULAR', 300, 1, 'SINGLE', '2017-10-24 00:53:18', '2017-11-08 20:41:03'),
(8, 0, 2, 'MARIGOLD', 'UMIPIG', 'ANINGAT', 'BLANK', 'REGULAR', 300, 1, 'SINGLE', '2017-10-24 00:53:18', '2017-11-08 22:00:56'),
(9, 0, 1, 'SHANE', 'TIO', 'DIGAL', 'BLANK', 'REGULAR', 300, 1, 'SINGLE', '2017-10-24 00:53:18', '2017-11-08 20:41:03'),
(10, 73, 1, 'HARVEY CHARLES', 'MIDDLENAME', 'PIOQUINTO', 'BLANK', 'REGULAR', 300, 1, 'SINGLE', '2017-10-24 00:53:18', '2017-11-08 22:02:56'),
(11, 0, 1, 'CHRISTOPHER', 'YAMAS', 'DOMAUB', 'BLANK', 'REGULAR', 300, 1, 'SINGLE', '2017-10-24 00:53:18', '2017-11-06 14:38:37'),
(12, 73, 2, 'MARIGOLD', 'UMIPIG', 'ANINGAT', 'BLANK', 'REGULAR', 300, 1, 'SINGLE', '2017-10-24 00:53:18', '2017-11-08 22:02:56'),
(13, 0, 1, 'SHANE', 'TIO', 'DIGAL', 'BLANK', 'REGULAR', 300, 1, 'SINGLE', '2017-10-24 00:53:18', '2017-11-03 21:20:44'),
(14, 72, 1, 'HARVEY CHARLES', 'MIDDLENAME', 'PIOQUINTO', 'BLANK', 'REGULAR', 300, 1, 'SINGLE', '2017-10-24 00:53:18', '2017-11-08 22:01:44'),
(15, 0, 1, 'CHRISTOPHER', 'YAMAS', 'DOMAUB', 'BLANK', 'REGULAR', 300, 1, 'SINGLE', '2017-10-24 00:53:18', '2017-11-06 14:38:37'),
(16, 72, 2, 'MARIGOLD', 'UMIPIG', 'ANINGAT', 'BLANK', 'REGULAR', 300, 1, 'SINGLE', '2017-10-24 00:53:18', '2017-11-08 22:01:44');

-- --------------------------------------------------------

--
-- Table structure for table `rec_empschedules`
--

DROP TABLE IF EXISTS `rec_empschedules`;
CREATE TABLE IF NOT EXISTS `rec_empschedules` (
  `empschedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `empschedule_day` varchar(5) NOT NULL,
  `empschedule_in` datetime NOT NULL,
  `empschedule_out` datetime NOT NULL,
  `empschedule_status` varchar(20) NOT NULL,
  PRIMARY KEY (`empschedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_inventories`
--

DROP TABLE IF EXISTS `rec_inventories`;
CREATE TABLE IF NOT EXISTS `rec_inventories` (
  `inventory_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `inventory_qty` decimal(10,0) NOT NULL,
  `inventory_lastupdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_issuances`
--

DROP TABLE IF EXISTS `rec_issuances`;
CREATE TABLE IF NOT EXISTS `rec_issuances` (
  `issuance_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `issuance_issuer` varchar(150) NOT NULL,
  `issuance_recipient` varchar(150) NOT NULL,
  `issuance_date` datetime NOT NULL,
  `issuance_inserted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`issuance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_issued_items`
--

DROP TABLE IF EXISTS `rec_issued_items`;
CREATE TABLE IF NOT EXISTS `rec_issued_items` (
  `issitem_id` int(11) NOT NULL AUTO_INCREMENT,
  `issuance_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `issitem_qty` decimal(10,0) NOT NULL,
  `issitem_status` varchar(20) NOT NULL,
  `acqitem_dateissued` datetime NOT NULL,
  PRIMARY KEY (`issitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_other_deductions`
--

DROP TABLE IF EXISTS `rec_other_deductions`;
CREATE TABLE IF NOT EXISTS `rec_other_deductions` (
  `otherdeduction_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `otherdeduction_total` float NOT NULL,
  `otherdeduction_paid` float NOT NULL,
  PRIMARY KEY (`otherdeduction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_other_deduction_logs`
--

DROP TABLE IF EXISTS `rec_other_deduction_logs`;
CREATE TABLE IF NOT EXISTS `rec_other_deduction_logs` (
  `otherdeductionlog_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `otherdeductionlog_description` varchar(50) NOT NULL,
  `otherdeductionlog_amount` float NOT NULL,
  `otherdeductionlog_date` datetime NOT NULL,
  PRIMARY KEY (`otherdeductionlog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_payrolls`
--

DROP TABLE IF EXISTS `rec_payrolls`;
CREATE TABLE IF NOT EXISTS `rec_payrolls` (
  `payroll_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `payroll_start` datetime NOT NULL,
  `payroll_end` datetime NOT NULL,
  `payroll_status` varchar(20) NOT NULL,
  `payroll_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Payroll_lastupdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`payroll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_payroll_items`
--

DROP TABLE IF EXISTS `rec_payroll_items`;
CREATE TABLE IF NOT EXISTS `rec_payroll_items` (
  `payrollitem_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `bonus_id` int(11) NOT NULL,
  `deduction_id` int(11) NOT NULL,
  `payrollitem_timereg` decimal(10,0) NOT NULL,
  `payrollitem_timeot` decimal(10,0) NOT NULL,
  `payrollitem_basic` float NOT NULL,
  `payrollitem_ot` float NOT NULL,
  `payrollitem_deminimis` float NOT NULL,
  `payrollitem_tmonthamount` float NOT NULL,
  `payrollitem_gross` float NOT NULL,
  `payrollitem_net` float NOT NULL,
  `payrollitem_status` varchar(20) NOT NULL,
  `payrollitem_lastupdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`payrollitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_payroll_item_dates`
--

DROP TABLE IF EXISTS `rec_payroll_item_dates`;
CREATE TABLE IF NOT EXISTS `rec_payroll_item_dates` (
  `payrollitemdate_id` int(11) NOT NULL AUTO_INCREMENT,
  `payrollitem_id` int(11) NOT NULL,
  `payrollitemdate_day` varchar(5) NOT NULL,
  `payrollitemdate_date` date NOT NULL,
  `payrollitem_hours` decimal(10,0) NOT NULL,
  PRIMARY KEY (`payrollitemdate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_projects`
--

DROP TABLE IF EXISTS `rec_projects`;
CREATE TABLE IF NOT EXISTS `rec_projects` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_contractnum` varchar(40) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `project_description` varchar(255) NOT NULL,
  `project_client` varchar(150) NOT NULL,
  `project_start` date NOT NULL,
  `project_end` date NOT NULL,
  `project_estbudget` double NOT NULL,
  `project_status` varchar(20) NOT NULL,
  `project_inserted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `project_lastupdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rec_projects`
--

INSERT INTO `rec_projects` (`project_id`, `project_contractnum`, `project_name`, `project_description`, `project_client`, `project_start`, `project_end`, `project_estbudget`, `project_status`, `project_inserted`, `project_lastupdated`) VALUES
(1, '', '', '								', '', '2017-11-07', '2017-11-07', 0, 'Pending', '2017-11-07 15:29:14', '2017-11-07 15:29:14'),
(2, '', '', '								', '', '2017-11-07', '2017-11-07', 0, 'Approved', '2017-11-07 15:30:22', '2017-11-08 22:13:23'),
(3, '', '', '								', '', '2017-11-07', '2017-11-07', 0, 'Ongoing', '2017-11-07 15:33:09', '2017-11-08 22:13:33'),
(4, '', '', '								', '', '2017-11-07', '2017-11-07', 0, 'Pending', '2017-11-07 15:33:25', '2017-11-07 15:33:25'),
(5, '', '', '								', '', '2017-11-07', '2017-11-07', 0, 'Pending', '2017-11-07 15:37:02', '2017-11-07 15:37:02'),
(6, '', '', '								', '', '2017-11-07', '2017-11-07', 0, 'Completed', '2017-11-07 15:38:41', '2017-11-08 22:13:41'),
(7, '', '', '								', '', '2017-11-07', '2017-11-07', 0, 'Pending', '2017-11-07 15:48:14', '2017-11-07 15:48:14'),
(8, '', '', '								', '', '2017-11-07', '2017-11-07', 0, 'Pending', '2017-11-07 15:49:03', '2017-11-07 15:49:03'),
(9, '', '', '								', '', '2017-11-07', '2017-11-07', 0, 'Pending', '2017-11-07 15:53:54', '2017-11-07 15:53:54'),
(10, '', '', '								', '', '2017-11-07', '2017-11-07', 0, 'Pending', '2017-11-07 15:54:40', '2017-11-07 15:54:40'),
(11, '', '', '								', '', '2017-11-07', '2017-11-07', 0, 'Pending', '2017-11-07 15:55:32', '2017-11-07 15:55:32'),
(12, '', '', '								', '', '2017-11-07', '2017-11-07', 0, 'Pending', '2017-11-07 15:55:47', '2017-11-07 15:55:47'),
(13, '', '', '								', '', '2017-11-07', '2017-11-07', 0, 'Cancelled', '2017-11-07 15:56:17', '2017-11-08 22:13:50'),
(14, '', '', '								', '', '2017-11-07', '2017-11-07', 0, 'Pending', '2017-11-07 15:57:53', '2017-11-07 15:57:53'),
(15, '', '', '								', '', '2017-11-07', '2017-11-07', 0, 'Pending', '2017-11-07 15:58:27', '2017-11-07 15:58:27'),
(16, '', '', '								', '', '2017-11-07', '2017-11-07', 0, 'Pending', '2017-11-07 16:00:05', '2017-11-07 16:00:05'),
(17, '', '', '								', '', '2017-11-08', '2017-11-08', 0, 'Pending', '2017-11-07 16:00:34', '2017-11-07 16:00:34'),
(18, '', '', '								', '', '2017-11-08', '2017-11-08', 0, 'Pending', '2017-11-07 16:03:20', '2017-11-07 16:03:20'),
(19, '', '', '								', '', '2017-11-08', '2017-11-08', 0, 'Pending', '2017-11-07 17:58:20', '2017-11-07 17:58:20'),
(20, '', '', '								', '', '2017-11-08', '2017-11-08', 0, 'Pending', '2017-11-07 17:58:26', '2017-11-07 17:58:26'),
(21, '', '', '								', '', '2017-11-08', '2017-11-08', 0, 'Pending', '2017-11-07 18:23:58', '2017-11-07 18:23:58'),
(22, '', '', '								', '', '2017-11-08', '2017-11-08', 0, 'Pending', '2017-11-08 12:31:42', '2017-11-08 12:31:42'),
(23, '', '', '								', '', '2017-11-08', '2017-11-08', 0, 'Pending', '2017-11-08 12:31:55', '2017-11-08 12:31:55'),
(24, '', '', '								', '', '2017-11-08', '2017-11-08', 0, 'Pending', '2017-11-08 12:32:04', '2017-11-08 12:32:04'),
(25, '', '', '								', '', '2017-11-08', '2017-11-08', 0, 'Pending', '2017-11-08 12:32:22', '2017-11-08 12:32:22'),
(55, '', '', '								', '', '2017-11-08', '2017-11-08', 0, 'Pending', '2017-11-08 13:36:32', '2017-11-08 13:36:32'),
(56, '', '', '								', '', '2017-11-08', '2017-11-08', 0, 'Pending', '2017-11-08 13:37:21', '2017-11-08 13:37:21'),
(57, '', '', '								', '', '2017-11-08', '2017-11-08', 0, 'Pending', '2017-11-08 13:37:49', '2017-11-08 13:37:49'),
(58, '', '', '								', '', '2017-11-08', '2017-11-08', 0, 'Pending', '2017-11-08 13:39:07', '2017-11-08 13:39:07'),
(59, '', '', '								', '', '2017-11-08', '2017-11-08', 0, 'Pending', '2017-11-08 13:41:18', '2017-11-08 13:41:18'),
(60, '', '', '								', '', '2017-11-08', '2017-11-08', 0, 'Pending', '2017-11-08 13:41:48', '2017-11-08 13:41:48'),
(61, '', '', '								', '', '2017-11-08', '2017-11-08', 0, 'Pending', '2017-11-08 14:01:16', '2017-11-08 14:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `rec_project_drafts`
--

DROP TABLE IF EXISTS `rec_project_drafts`;
CREATE TABLE IF NOT EXISTS `rec_project_drafts` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_contractnum` varchar(40) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `project_description` varchar(255) NOT NULL,
  `project_client` varchar(150) NOT NULL,
  `project_start` date NOT NULL,
  `project_end` date NOT NULL,
  `project_estbudget` double NOT NULL,
  `project_inserted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `project_lastupdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rec_project_drafts`
--

INSERT INTO `rec_project_drafts` (`project_id`, `project_contractnum`, `project_name`, `project_description`, `project_client`, `project_start`, `project_end`, `project_estbudget`, `project_inserted`, `project_lastupdated`) VALUES
(68, '', '', '								', '', '2017-11-08', '2017-11-08', 0, '2017-11-07 16:03:53', '2017-11-07 16:03:53'),
(69, '', '', '								', '', '2017-11-08', '2017-11-08', 0, '2017-11-07 16:05:00', '2017-11-07 16:05:00'),
(70, '', '', '								', '', '2017-11-08', '2017-11-08', 0, '2017-11-08 13:57:46', '2017-11-08 13:57:46'),
(71, '', '', '								', '', '2017-11-08', '2017-11-08', 0, '2017-11-08 13:58:56', '2017-11-08 13:58:56'),
(72, '', '', '								', '', '2017-11-08', '2017-11-08', 0, '2017-11-08 14:01:44', '2017-11-08 14:01:44'),
(73, '', '', '								', '', '2017-11-08', '2017-11-08', 0, '2017-11-08 14:02:56', '2017-11-08 14:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `rec_project_draft_employees`
--

DROP TABLE IF EXISTS `rec_project_draft_employees`;
CREATE TABLE IF NOT EXISTS `rec_project_draft_employees` (
  `projectforeman_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `projectforeman_inserted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`projectforeman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rec_project_draft_employees`
--

INSERT INTO `rec_project_draft_employees` (`projectforeman_id`, `project_id`, `employee_id`, `projectforeman_inserted`) VALUES
(1, 69, 12, '2017-11-07 16:05:00'),
(2, 70, 4, '2017-11-08 13:57:46'),
(3, 72, 16, '2017-11-08 14:01:44'),
(4, 73, 12, '2017-11-08 14:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `rec_project_draft_foremen`
--

DROP TABLE IF EXISTS `rec_project_draft_foremen`;
CREATE TABLE IF NOT EXISTS `rec_project_draft_foremen` (
  `projectforeman_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `projectforeman_inserted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`projectforeman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rec_project_draft_foremen`
--

INSERT INTO `rec_project_draft_foremen` (`projectforeman_id`, `project_id`, `employee_id`, `projectforeman_inserted`) VALUES
(1, 69, 14, '2017-11-07 16:05:00'),
(2, 70, 6, '2017-11-08 13:57:46'),
(3, 72, 14, '2017-11-08 14:01:44'),
(4, 73, 10, '2017-11-08 14:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `rec_project_draft_material_plans`
--

DROP TABLE IF EXISTS `rec_project_draft_material_plans`;
CREATE TABLE IF NOT EXISTS `rec_project_draft_material_plans` (
  `projdraftmatplan_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `projdraftmatplan_qty` decimal(10,0) NOT NULL,
  PRIMARY KEY (`projdraftmatplan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rec_project_draft_material_plans`
--

INSERT INTO `rec_project_draft_material_plans` (`projdraftmatplan_id`, `project_id`, `material_id`, `projdraftmatplan_qty`) VALUES
(1, 70, 2, '11'),
(2, 72, 2, '0'),
(3, 73, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `rec_project_employees`
--

DROP TABLE IF EXISTS `rec_project_employees`;
CREATE TABLE IF NOT EXISTS `rec_project_employees` (
  `projectemployee_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `projectemployee_inserted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`projectemployee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rec_project_employees`
--

INSERT INTO `rec_project_employees` (`projectemployee_id`, `project_id`, `employee_id`, `projectemployee_inserted`) VALUES
(1, 18, 4, '2017-11-07 16:03:20'),
(2, 29, 16, '2017-11-08 12:33:59'),
(3, 32, 8, '2017-11-08 12:34:25'),
(4, 33, 4, '2017-11-08 12:40:04'),
(5, 34, 16, '2017-11-08 12:41:20'),
(6, 35, 12, '2017-11-08 13:01:48'),
(7, 59, 8, '2017-11-08 13:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `rec_project_foremen`
--

DROP TABLE IF EXISTS `rec_project_foremen`;
CREATE TABLE IF NOT EXISTS `rec_project_foremen` (
  `projectforeman_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `projectforeman_inserted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`projectforeman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rec_project_foremen`
--

INSERT INTO `rec_project_foremen` (`projectforeman_id`, `project_id`, `employee_id`, `projectforeman_inserted`) VALUES
(1, 18, 2, '2017-11-07 16:03:20'),
(2, 29, 9, '2017-11-08 12:33:59'),
(3, 32, 10, '2017-11-08 12:34:25'),
(4, 33, 7, '2017-11-08 12:40:04'),
(5, 34, 14, '2017-11-08 12:41:20'),
(6, 35, 10, '2017-11-08 13:01:48'),
(7, 59, 3, '2017-11-08 13:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `rec_project_material_plans`
--

DROP TABLE IF EXISTS `rec_project_material_plans`;
CREATE TABLE IF NOT EXISTS `rec_project_material_plans` (
  `projectmatplan_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `projectmatplan_qty` decimal(10,0) NOT NULL,
  PRIMARY KEY (`projectmatplan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rec_project_material_plans`
--

INSERT INTO `rec_project_material_plans` (`projectmatplan_id`, `project_id`, `material_id`, `projectmatplan_qty`) VALUES
(1, 62, 2, '44'),
(2, 63, 2, '22'),
(3, 64, 0, '0'),
(4, 65, 0, '0'),
(5, 66, 0, '0'),
(6, 67, 0, '0'),
(7, 16, 2, '0'),
(8, 18, 2, '0'),
(9, 69, 2, '0'),
(10, 29, 2, '4'),
(11, 32, 2, '44'),
(12, 33, 2, '0'),
(13, 34, 2, '0'),
(14, 35, 2, '44'),
(15, 59, 2, '0');

-- --------------------------------------------------------

--
-- Table structure for table `rec_transferrals`
--

DROP TABLE IF EXISTS `rec_transferrals`;
CREATE TABLE IF NOT EXISTS `rec_transferrals` (
  `transferral_id` int(11) NOT NULL AUTO_INCREMENT,
  `transferral_projectfrom` int(11) NOT NULL,
  `transferral_projectto` int(11) NOT NULL,
  `transferral_date` datetime NOT NULL,
  `transferral_dateinserted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transferral_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rec_transferred_items`
--

DROP TABLE IF EXISTS `rec_transferred_items`;
CREATE TABLE IF NOT EXISTS `rec_transferred_items` (
  `transitem_id` int(11) NOT NULL AUTO_INCREMENT,
  `transferral_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `transitem_qty` decimal(10,0) NOT NULL,
  `transitem_price` float NOT NULL,
  `transitem_subtotal` float NOT NULL,
  `transitem_status` varchar(20) NOT NULL,
  `transitem_datetransferred` datetime NOT NULL,
  PRIMARY KEY (`transitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
