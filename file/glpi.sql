-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2017 at 06:03 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `glpi`
--

-- --------------------------------------------------------

--
-- Table structure for table `glpi_alerts`
--

CREATE TABLE `glpi_alerts` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php ALERT_* constant',
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_authldapreplicates`
--

CREATE TABLE `glpi_authldapreplicates` (
  `id` int(11) NOT NULL,
  `authldaps_id` int(11) NOT NULL DEFAULT '0',
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT '389',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_authldaps`
--

CREATE TABLE `glpi_authldaps` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basedn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rootdn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT '389',
  `condition` text COLLATE utf8_unicode_ci,
  `login_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'uid',
  `use_tls` tinyint(1) NOT NULL DEFAULT '0',
  `group_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_condition` text COLLATE utf8_unicode_ci,
  `group_search_type` int(11) NOT NULL DEFAULT '0',
  `group_member_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email1_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_dn` tinyint(1) NOT NULL DEFAULT '1',
  `time_offset` int(11) NOT NULL DEFAULT '0' COMMENT 'in seconds',
  `deref_option` int(11) NOT NULL DEFAULT '0',
  `title_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_condition` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `rootdn_passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_number_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email3_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email4_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagesize` int(11) NOT NULL DEFAULT '0',
  `ldap_maxlimit` int(11) NOT NULL DEFAULT '0',
  `can_support_pagesize` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_authmails`
--

CREATE TABLE `glpi_authmails` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `connect_string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_autoupdatesystems`
--

CREATE TABLE `glpi_autoupdatesystems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_blacklists`
--

CREATE TABLE `glpi_blacklists` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_blacklists`
--

INSERT INTO `glpi_blacklists` (`id`, `type`, `name`, `value`, `comment`) VALUES
(1, 1, 'empty IP', '', NULL),
(2, 1, 'localhost', '127.0.0.1', NULL),
(3, 1, 'zero IP', '0.0.0.0', NULL),
(4, 2, 'empty MAC', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_bookmarks`
--

CREATE TABLE `glpi_bookmarks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php BOOKMARK_* constant',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `query` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_bookmarks_users`
--

CREATE TABLE `glpi_bookmarks_users` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bookmarks_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_budgets`
--

CREATE TABLE `glpi_budgets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_calendars`
--

CREATE TABLE `glpi_calendars` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `cache_duration` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_calendars`
--

INSERT INTO `glpi_calendars` (`id`, `name`, `entities_id`, `is_recursive`, `comment`, `date_mod`, `cache_duration`) VALUES
(1, 'Default', 0, 1, 'Default calendar', NULL, '[0,43200,43200,43200,43200,43200,0]');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_calendarsegments`
--

CREATE TABLE `glpi_calendarsegments` (
  `id` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `day` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'numer of the day based on date(w)',
  `begin` time DEFAULT NULL,
  `end` time DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_calendarsegments`
--

INSERT INTO `glpi_calendarsegments` (`id`, `calendars_id`, `entities_id`, `is_recursive`, `day`, `begin`, `end`) VALUES
(1, 1, 0, 0, 1, '08:00:00', '20:00:00'),
(2, 1, 0, 0, 2, '08:00:00', '20:00:00'),
(3, 1, 0, 0, 3, '08:00:00', '20:00:00'),
(4, 1, 0, 0, 4, '08:00:00', '20:00:00'),
(5, 1, 0, 0, 5, '08:00:00', '20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_calendars_holidays`
--

CREATE TABLE `glpi_calendars_holidays` (
  `id` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `holidays_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_cartridgeitems`
--

CREATE TABLE `glpi_cartridgeitems` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `cartridgeitemtypes_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `alarm_threshold` int(11) NOT NULL DEFAULT '10',
  `notepad` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_cartridgeitems_printermodels`
--

CREATE TABLE `glpi_cartridgeitems_printermodels` (
  `id` int(11) NOT NULL,
  `cartridgeitems_id` int(11) NOT NULL DEFAULT '0',
  `printermodels_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_cartridgeitemtypes`
--

CREATE TABLE `glpi_cartridgeitemtypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_cartridges`
--

CREATE TABLE `glpi_cartridges` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `cartridgeitems_id` int(11) NOT NULL DEFAULT '0',
  `printers_id` int(11) NOT NULL DEFAULT '0',
  `date_in` date DEFAULT NULL,
  `date_use` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `pages` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_computerdisks`
--

CREATE TABLE `glpi_computerdisks` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mountpoint` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filesystems_id` int(11) NOT NULL DEFAULT '0',
  `totalsize` int(11) NOT NULL DEFAULT '0',
  `freesize` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_computermodels`
--

CREATE TABLE `glpi_computermodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_computers`
--

CREATE TABLE `glpi_computers` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `operatingsystems_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemversions_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemservicepacks_id` int(11) NOT NULL DEFAULT '0',
  `os_license_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `os_licenseid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autoupdatesystems_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `computermodels_id` int(11) NOT NULL DEFAULT '0',
  `computertypes_id` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_computers_items`
--

CREATE TABLE `glpi_computers_items` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various table, according to itemtype (ID)',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_computers_softwarelicenses`
--

CREATE TABLE `glpi_computers_softwarelicenses` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `softwarelicenses_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_computers_softwareversions`
--

CREATE TABLE `glpi_computers_softwareversions` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `softwareversions_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted_computer` tinyint(1) NOT NULL DEFAULT '0',
  `is_template_computer` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_computertypes`
--

CREATE TABLE `glpi_computertypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_computervirtualmachines`
--

CREATE TABLE `glpi_computervirtualmachines` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `virtualmachinestates_id` int(11) NOT NULL DEFAULT '0',
  `virtualmachinesystems_id` int(11) NOT NULL DEFAULT '0',
  `virtualmachinetypes_id` int(11) NOT NULL DEFAULT '0',
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vcpu` int(11) NOT NULL DEFAULT '0',
  `ram` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_configs`
--

CREATE TABLE `glpi_configs` (
  `id` int(11) NOT NULL,
  `show_jobs_at_login` tinyint(1) NOT NULL DEFAULT '0',
  `cut` int(11) NOT NULL DEFAULT '255',
  `list_limit` int(11) NOT NULL DEFAULT '20',
  `list_limit_max` int(11) NOT NULL DEFAULT '50',
  `url_maxlength` int(11) NOT NULL DEFAULT '30',
  `version` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_loglevel` int(11) NOT NULL DEFAULT '5',
  `use_mailing` tinyint(1) NOT NULL DEFAULT '0',
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailing_signature` text COLLATE utf8_unicode_ci,
  `use_anonymous_helpdesk` tinyint(1) NOT NULL DEFAULT '0',
  `use_anonymous_followups` tinyint(1) NOT NULL DEFAULT '0',
  `language` char(10) COLLATE utf8_unicode_ci DEFAULT 'en_GB' COMMENT 'see define.php CFG_GLPI[language] array',
  `priority_1` char(20) COLLATE utf8_unicode_ci DEFAULT '#fff2f2',
  `priority_2` char(20) COLLATE utf8_unicode_ci DEFAULT '#ffe0e0',
  `priority_3` char(20) COLLATE utf8_unicode_ci DEFAULT '#ffcece',
  `priority_4` char(20) COLLATE utf8_unicode_ci DEFAULT '#ffbfbf',
  `priority_5` char(20) COLLATE utf8_unicode_ci DEFAULT '#ffadad',
  `priority_6` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#ff5555',
  `date_tax` date NOT NULL DEFAULT '2005-12-31',
  `cas_host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cas_port` int(11) NOT NULL DEFAULT '443',
  `cas_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cas_logout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `existing_auth_server_field_clean_domain` tinyint(1) NOT NULL DEFAULT '0',
  `planning_begin` time NOT NULL DEFAULT '08:00:00',
  `planning_end` time NOT NULL DEFAULT '20:00:00',
  `utf8_conv` int(11) NOT NULL DEFAULT '0',
  `use_public_faq` tinyint(1) NOT NULL DEFAULT '0',
  `url_base` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_link_in_mail` tinyint(1) NOT NULL DEFAULT '0',
  `text_login` text COLLATE utf8_unicode_ci,
  `founded_new_version` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dropdown_max` int(11) NOT NULL DEFAULT '100',
  `ajax_wildcard` char(1) COLLATE utf8_unicode_ci DEFAULT '*',
  `use_ajax` tinyint(1) NOT NULL DEFAULT '0',
  `ajax_min_textsearch_load` int(11) NOT NULL DEFAULT '0',
  `ajax_buffertime_load` int(11) NOT NULL DEFAULT '0',
  `ajax_limit_count` int(11) NOT NULL DEFAULT '50',
  `use_ajax_autocompletion` tinyint(1) NOT NULL DEFAULT '1',
  `is_users_auto_add` tinyint(1) NOT NULL DEFAULT '1',
  `date_format` int(11) NOT NULL DEFAULT '0',
  `number_format` int(11) NOT NULL DEFAULT '0',
  `csv_delimiter` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `is_ids_visible` tinyint(1) NOT NULL DEFAULT '0',
  `dropdown_chars_limit` int(11) NOT NULL DEFAULT '50',
  `smtp_mode` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php MAIL_* constant',
  `smtp_host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_port` int(11) NOT NULL DEFAULT '25',
  `smtp_username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proxy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proxy_port` int(11) NOT NULL DEFAULT '8080',
  `proxy_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_followup_on_update_ticket` tinyint(1) NOT NULL DEFAULT '1',
  `keep_tickets_on_delete` tinyint(1) NOT NULL DEFAULT '1',
  `time_step` int(11) DEFAULT '5',
  `decimal_number` int(11) DEFAULT '2',
  `helpdesk_doc_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `central_doc_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documentcategories_id_forticket` int(11) NOT NULL DEFAULT '0' COMMENT 'default category for documents added with a ticket',
  `monitors_management_restrict` int(11) NOT NULL DEFAULT '2',
  `phones_management_restrict` int(11) NOT NULL DEFAULT '2',
  `peripherals_management_restrict` int(11) NOT NULL DEFAULT '2',
  `printers_management_restrict` int(11) NOT NULL DEFAULT '2',
  `use_log_in_files` tinyint(1) NOT NULL DEFAULT '0',
  `time_offset` int(11) NOT NULL DEFAULT '0' COMMENT 'in seconds',
  `is_contact_autoupdate` tinyint(1) NOT NULL DEFAULT '1',
  `is_user_autoupdate` tinyint(1) NOT NULL DEFAULT '1',
  `is_group_autoupdate` tinyint(1) NOT NULL DEFAULT '1',
  `is_location_autoupdate` tinyint(1) NOT NULL DEFAULT '1',
  `state_autoupdate_mode` int(11) NOT NULL DEFAULT '0',
  `is_contact_autoclean` tinyint(1) NOT NULL DEFAULT '0',
  `is_user_autoclean` tinyint(1) NOT NULL DEFAULT '0',
  `is_group_autoclean` tinyint(1) NOT NULL DEFAULT '0',
  `is_location_autoclean` tinyint(1) NOT NULL DEFAULT '0',
  `state_autoclean_mode` int(11) NOT NULL DEFAULT '0',
  `use_flat_dropdowntree` tinyint(1) NOT NULL DEFAULT '0',
  `use_autoname_by_entity` tinyint(1) NOT NULL DEFAULT '1',
  `is_categorized_soft_expanded` tinyint(1) NOT NULL DEFAULT '1',
  `is_not_categorized_soft_expanded` tinyint(1) NOT NULL DEFAULT '1',
  `softwarecategories_id_ondelete` int(11) NOT NULL DEFAULT '0' COMMENT 'category applyed when a software is deleted',
  `x509_email_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `x509_cn_restrict` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `x509_o_restrict` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `x509_ou_restrict` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_mailcollector_filesize_max` int(11) NOT NULL DEFAULT '2097152',
  `followup_private` tinyint(1) NOT NULL DEFAULT '0',
  `task_private` tinyint(1) NOT NULL DEFAULT '0',
  `default_software_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '1',
  `names_format` int(11) NOT NULL DEFAULT '0' COMMENT 'see *NAME_BEFORE constant in define.php',
  `default_graphtype` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'svg',
  `default_requesttypes_id` int(11) NOT NULL DEFAULT '1',
  `use_noright_users_add` tinyint(1) NOT NULL DEFAULT '1',
  `cron_limit` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'Number of tasks execute by external cron',
  `priority_matrix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'json encoded array for Urgence / Impact to Protority',
  `urgency_mask` int(11) NOT NULL DEFAULT '62',
  `impact_mask` int(11) NOT NULL DEFAULT '62',
  `user_deleted_ldap` tinyint(1) NOT NULL DEFAULT '0',
  `auto_create_infocoms` tinyint(1) NOT NULL DEFAULT '0',
  `use_slave_for_search` tinyint(1) NOT NULL DEFAULT '0',
  `proxy_passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transfers_id_auto` int(11) NOT NULL DEFAULT '0',
  `show_count_on_tabs` tinyint(1) NOT NULL DEFAULT '1',
  `refresh_ticket_list` int(11) NOT NULL DEFAULT '0',
  `set_default_tech` tinyint(1) NOT NULL DEFAULT '1',
  `allow_search_view` int(11) NOT NULL DEFAULT '2',
  `allow_search_all` tinyint(1) NOT NULL DEFAULT '1',
  `allow_search_global` tinyint(1) NOT NULL DEFAULT '1',
  `display_count_on_home` int(11) NOT NULL DEFAULT '5',
  `use_password_security` tinyint(1) NOT NULL DEFAULT '0',
  `password_min_length` int(11) NOT NULL DEFAULT '8',
  `password_need_number` tinyint(1) NOT NULL DEFAULT '1',
  `password_need_letter` tinyint(1) NOT NULL DEFAULT '1',
  `password_need_caps` tinyint(1) NOT NULL DEFAULT '1',
  `password_need_symbol` tinyint(1) NOT NULL DEFAULT '1',
  `use_check_pref` tinyint(1) NOT NULL DEFAULT '0',
  `notification_to_myself` tinyint(1) NOT NULL DEFAULT '1',
  `duedateok_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#06ff00',
  `duedatewarning_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#ffb800',
  `duedatecritical_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#ff0000',
  `duedatewarning_less` int(11) NOT NULL DEFAULT '20',
  `duedatecritical_less` int(11) NOT NULL DEFAULT '5',
  `duedatewarning_unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '%',
  `duedatecritical_unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '%',
  `realname_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email1_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email3_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email4_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_number_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ssovariables_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_configs`
--

INSERT INTO `glpi_configs` (`id`, `show_jobs_at_login`, `cut`, `list_limit`, `list_limit_max`, `url_maxlength`, `version`, `event_loglevel`, `use_mailing`, `admin_email`, `admin_email_name`, `admin_reply`, `admin_reply_name`, `mailing_signature`, `use_anonymous_helpdesk`, `use_anonymous_followups`, `language`, `priority_1`, `priority_2`, `priority_3`, `priority_4`, `priority_5`, `priority_6`, `date_tax`, `cas_host`, `cas_port`, `cas_uri`, `cas_logout`, `existing_auth_server_field_clean_domain`, `planning_begin`, `planning_end`, `utf8_conv`, `use_public_faq`, `url_base`, `show_link_in_mail`, `text_login`, `founded_new_version`, `dropdown_max`, `ajax_wildcard`, `use_ajax`, `ajax_min_textsearch_load`, `ajax_buffertime_load`, `ajax_limit_count`, `use_ajax_autocompletion`, `is_users_auto_add`, `date_format`, `number_format`, `csv_delimiter`, `is_ids_visible`, `dropdown_chars_limit`, `smtp_mode`, `smtp_host`, `smtp_port`, `smtp_username`, `proxy_name`, `proxy_port`, `proxy_user`, `add_followup_on_update_ticket`, `keep_tickets_on_delete`, `time_step`, `decimal_number`, `helpdesk_doc_url`, `central_doc_url`, `documentcategories_id_forticket`, `monitors_management_restrict`, `phones_management_restrict`, `peripherals_management_restrict`, `printers_management_restrict`, `use_log_in_files`, `time_offset`, `is_contact_autoupdate`, `is_user_autoupdate`, `is_group_autoupdate`, `is_location_autoupdate`, `state_autoupdate_mode`, `is_contact_autoclean`, `is_user_autoclean`, `is_group_autoclean`, `is_location_autoclean`, `state_autoclean_mode`, `use_flat_dropdowntree`, `use_autoname_by_entity`, `is_categorized_soft_expanded`, `is_not_categorized_soft_expanded`, `softwarecategories_id_ondelete`, `x509_email_field`, `x509_cn_restrict`, `x509_o_restrict`, `x509_ou_restrict`, `default_mailcollector_filesize_max`, `followup_private`, `task_private`, `default_software_helpdesk_visible`, `names_format`, `default_graphtype`, `default_requesttypes_id`, `use_noright_users_add`, `cron_limit`, `priority_matrix`, `urgency_mask`, `impact_mask`, `user_deleted_ldap`, `auto_create_infocoms`, `use_slave_for_search`, `proxy_passwd`, `smtp_passwd`, `transfers_id_auto`, `show_count_on_tabs`, `refresh_ticket_list`, `set_default_tech`, `allow_search_view`, `allow_search_all`, `allow_search_global`, `display_count_on_home`, `use_password_security`, `password_min_length`, `password_need_number`, `password_need_letter`, `password_need_caps`, `password_need_symbol`, `use_check_pref`, `notification_to_myself`, `duedateok_color`, `duedatewarning_color`, `duedatecritical_color`, `duedatewarning_less`, `duedatecritical_less`, `duedatewarning_unit`, `duedatecritical_unit`, `realname_ssofield`, `firstname_ssofield`, `email1_ssofield`, `email2_ssofield`, `email3_ssofield`, `email4_ssofield`, `phone_ssofield`, `phone2_ssofield`, `mobile_ssofield`, `comment_ssofield`, `title_ssofield`, `category_ssofield`, `language_ssofield`, `entity_ssofield`, `registration_number_ssofield`, `ssovariables_id`) VALUES
(1, 0, 250, 15, 50, 30, ' 0.84.6', 5, 0, 'admsys@localhost', NULL, NULL, NULL, 'SIGNATURE', 0, 0, 'en_GB', '#fff2f2', '#ffe0e0', '#ffcece', '#ffbfbf', '#ffadad', '#ff5555', '2005-12-31', '', 443, '', NULL, 0, '08:00:00', '20:00:00', 1, 0, 'http://localhost/glpi', 0, '', '', 100, '*', 0, 0, 0, 50, 1, 1, 0, 0, ';', 0, 50, 0, NULL, 25, NULL, NULL, 8080, NULL, 1, 0, 5, 2, NULL, NULL, 0, 2, 2, 2, 2, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 2097152, 0, 0, 1, 0, 'svg', 1, 1, 1, '{"1":{"1":1,"2":1,"3":2,"4":2,"5":2},"2":{"1":1,"2":2,"3":2,"4":3,"5":3},"3":{"1":2,"2":2,"3":3,"4":4,"5":4},"4":{"1":2,"2":3,"3":4,"4":4,"5":5},"5":{"1":2,"2":3,"3":4,"4":5,"5":5}}', 62, 62, 0, 0, 0, NULL, NULL, 0, 1, 0, 1, 2, 1, 1, 5, 0, 8, 1, 1, 1, 1, 0, 1, '#06ff00', '#ffb800', '#ff0000', 20, 5, '%', '%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_consumableitems`
--

CREATE TABLE `glpi_consumableitems` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `consumableitemtypes_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `alarm_threshold` int(11) NOT NULL DEFAULT '10',
  `notepad` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_consumableitemtypes`
--

CREATE TABLE `glpi_consumableitemtypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_consumables`
--

CREATE TABLE `glpi_consumables` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `consumableitems_id` int(11) NOT NULL DEFAULT '0',
  `date_in` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_contacts`
--

CREATE TABLE `glpi_contacts` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacttypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `usertitles_id` int(11) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_contacts_suppliers`
--

CREATE TABLE `glpi_contacts_suppliers` (
  `id` int(11) NOT NULL,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `contacts_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_contacttypes`
--

CREATE TABLE `glpi_contacttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_contractcosts`
--

CREATE TABLE `glpi_contractcosts` (
  `id` int(11) NOT NULL,
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_contracts`
--

CREATE TABLE `glpi_contracts` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contracttypes_id` int(11) NOT NULL DEFAULT '0',
  `begin_date` date DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT '0',
  `notice` int(11) NOT NULL DEFAULT '0',
  `periodicity` int(11) NOT NULL DEFAULT '0',
  `billing` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `accounting_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `week_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `week_end_hour` time NOT NULL DEFAULT '00:00:00',
  `saturday_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `saturday_end_hour` time NOT NULL DEFAULT '00:00:00',
  `use_saturday` tinyint(1) NOT NULL DEFAULT '0',
  `monday_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `monday_end_hour` time NOT NULL DEFAULT '00:00:00',
  `use_monday` tinyint(1) NOT NULL DEFAULT '0',
  `max_links_allowed` int(11) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `alert` int(11) NOT NULL DEFAULT '0',
  `renewal` int(11) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_template` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_contracts_items`
--

CREATE TABLE `glpi_contracts_items` (
  `id` int(11) NOT NULL,
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_contracts_suppliers`
--

CREATE TABLE `glpi_contracts_suppliers` (
  `id` int(11) NOT NULL,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `contracts_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_contracttypes`
--

CREATE TABLE `glpi_contracttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_crontasklogs`
--

CREATE TABLE `glpi_crontasklogs` (
  `id` int(11) NOT NULL,
  `crontasks_id` int(11) NOT NULL,
  `crontasklogs_id` int(11) NOT NULL COMMENT 'id of ''start'' event',
  `date` datetime NOT NULL,
  `state` int(11) NOT NULL COMMENT '0:start, 1:run, 2:stop',
  `elapsed` float NOT NULL COMMENT 'time elapsed since start',
  `volume` int(11) NOT NULL COMMENT 'for statistics',
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'message'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_crontasklogs`
--

INSERT INTO `glpi_crontasklogs` (`id`, `crontasks_id`, `crontasklogs_id`, `date`, `state`, `elapsed`, `volume`, `content`) VALUES
(1, 17, 0, '2017-03-14 06:33:49', 0, 0, 0, 'Run mode: GLPI'),
(2, 17, 1, '2017-03-14 06:33:49', 2, 0.142232, 0, 'Action completed, no processing required'),
(3, 18, 0, '2017-03-14 06:47:35', 0, 0, 0, 'Run mode: GLPI'),
(4, 18, 3, '2017-03-14 06:47:35', 2, 0.0673499, 0, 'Action completed, no processing required'),
(5, 19, 0, '2017-03-14 06:56:33', 0, 0, 0, 'Run mode: GLPI'),
(6, 19, 5, '2017-03-14 06:56:33', 2, 0.0271039, 0, 'Action completed, fully processed'),
(7, 20, 0, '2017-03-14 07:13:20', 0, 0, 0, 'Run mode: GLPI'),
(8, 20, 7, '2017-03-14 07:13:20', 2, 0.0177782, 0, 'Action completed, no processing required'),
(9, 21, 0, '2017-03-14 07:23:11', 0, 0, 0, 'Run mode: GLPI'),
(10, 21, 9, '2017-03-14 07:23:11', 2, 0.0183489, 0, 'Action completed, no processing required'),
(11, 5, 0, '2017-03-14 08:54:27', 0, 0, 0, 'Run mode: GLPI'),
(12, 5, 11, '2017-03-14 08:54:27', 2, 0.0200081, 0, 'Action completed, no processing required'),
(13, 6, 0, '2017-03-14 09:41:39', 0, 0, 0, 'Run mode: GLPI'),
(14, 6, 13, '2017-03-14 09:41:39', 2, 0.0174098, 0, 'Action completed, no processing required'),
(15, 8, 0, '2017-03-14 09:51:11', 0, 0, 0, 'Run mode: GLPI'),
(16, 8, 15, '2017-03-14 09:51:11', 2, 0.601622, 225, 'Action completed, fully processed'),
(17, 9, 0, '2017-03-14 09:59:09', 0, 0, 0, 'Run mode: GLPI'),
(18, 9, 17, '2017-03-14 09:59:09', 2, 0.0365009, 0, 'Action completed, no processing required'),
(19, 12, 0, '2017-03-14 10:07:21', 0, 0, 0, 'Run mode: GLPI'),
(20, 12, 19, '2017-03-14 10:07:21', 2, 0.0200839, 0, 'Action completed, no processing required'),
(21, 13, 0, '2017-03-14 10:17:09', 0, 0, 0, 'Run mode: GLPI'),
(22, 13, 21, '2017-03-14 10:17:09', 1, 0.018914, 1, 'Clean 1 graph file created since more than 3600 seconds\n'),
(23, 13, 21, '2017-03-14 10:17:09', 2, 0.019639, 1, 'Action completed, fully processed'),
(24, 14, 0, '2017-03-14 10:27:18', 0, 0, 0, 'Run mode: GLPI'),
(25, 14, 24, '2017-03-14 10:27:18', 2, 0.016367, 0, 'Action completed, no processing required'),
(26, 15, 0, '2017-03-14 10:33:05', 0, 0, 0, 'Run mode: GLPI'),
(27, 15, 26, '2017-03-14 10:33:05', 2, 0.023324, 0, 'Action completed, no processing required'),
(28, 16, 0, '2017-03-14 10:41:54', 0, 0, 0, 'Run mode: GLPI'),
(29, 16, 28, '2017-03-14 10:41:54', 2, 0.0207329, 0, 'Action completed, no processing required'),
(30, 17, 0, '2017-03-14 10:41:58', 0, 0, 0, 'Run mode: GLPI'),
(31, 17, 30, '2017-03-14 10:41:58', 2, 0.020474, 0, 'Action completed, no processing required'),
(32, 21, 0, '2017-03-14 11:09:36', 0, 0, 0, 'Run mode: GLPI'),
(33, 21, 32, '2017-03-14 11:09:36', 2, 0.0282371, 0, 'Action completed, no processing required'),
(34, 20, 0, '2017-03-14 11:55:54', 0, 0, 0, 'Run mode: GLPI'),
(35, 20, 34, '2017-03-14 11:55:54', 2, 0.033623, 0, 'Action completed, no processing required'),
(36, 9, 0, '2017-03-14 12:05:19', 0, 0, 0, 'Run mode: GLPI'),
(37, 9, 36, '2017-03-14 12:05:19', 2, 0.0341299, 0, 'Action completed, no processing required'),
(38, 17, 0, '2017-03-14 12:10:25', 0, 0, 0, 'Run mode: GLPI'),
(39, 17, 38, '2017-03-14 12:10:25', 2, 0.018142, 0, 'Action completed, no processing required'),
(40, 21, 0, '2017-03-14 12:37:18', 0, 0, 0, 'Run mode: GLPI'),
(41, 21, 40, '2017-03-14 12:37:18', 2, 0.078119, 0, 'Action completed, no processing required'),
(42, 13, 0, '2017-03-14 12:42:38', 0, 0, 0, 'Run mode: GLPI'),
(43, 13, 42, '2017-03-14 12:42:38', 2, 0.0211918, 0, 'Action completed, no processing required'),
(44, 14, 0, '2017-03-14 12:50:05', 0, 0, 0, 'Run mode: GLPI'),
(45, 14, 44, '2017-03-14 12:50:05', 2, 0.0280621, 0, 'Action completed, no processing required'),
(46, 9, 0, '2017-03-14 13:05:10', 0, 0, 0, 'Run mode: GLPI'),
(47, 9, 46, '2017-03-14 13:05:10', 2, 0.0461149, 0, 'Action completed, no processing required'),
(48, 17, 0, '2017-03-15 13:11:55', 0, 0, 0, 'Run mode: GLPI'),
(49, 17, 48, '2017-03-15 13:11:55', 2, 0.051724, 0, 'Action completed, no processing required'),
(50, 21, 0, '2017-03-16 05:50:32', 0, 0, 0, 'Run mode: GLPI'),
(51, 21, 50, '2017-03-16 05:50:32', 2, 0.169752, 0, 'Action completed, no processing required'),
(52, 20, 0, '2017-03-16 05:50:36', 0, 0, 0, 'Run mode: GLPI'),
(53, 20, 52, '2017-03-16 05:50:36', 2, 0.0639551, 0, 'Action completed, no processing required');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_crontasks`
--

CREATE TABLE `glpi_crontasks` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'task name',
  `frequency` int(11) NOT NULL COMMENT 'second between launch',
  `param` int(11) DEFAULT NULL COMMENT 'task specify parameter',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '0:disabled, 1:waiting, 2:running',
  `mode` int(11) NOT NULL DEFAULT '1' COMMENT '1:internal, 2:external',
  `allowmode` int(11) NOT NULL DEFAULT '3' COMMENT '1:internal, 2:external, 3:both',
  `hourmin` int(11) NOT NULL DEFAULT '0',
  `hourmax` int(11) NOT NULL DEFAULT '24',
  `logs_lifetime` int(11) NOT NULL DEFAULT '30' COMMENT 'number of days',
  `lastrun` datetime DEFAULT NULL COMMENT 'last run date',
  `lastcode` int(11) DEFAULT NULL COMMENT 'last run return code',
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Task run by internal / external cron.';

--
-- Dumping data for table `glpi_crontasks`
--

INSERT INTO `glpi_crontasks` (`id`, `itemtype`, `name`, `frequency`, `param`, `state`, `mode`, `allowmode`, `hourmin`, `hourmax`, `logs_lifetime`, `lastrun`, `lastcode`, `comment`) VALUES
(2, 'CartridgeItem', 'cartridge', 86400, 10, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL),
(3, 'ConsumableItem', 'consumable', 86400, 10, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL),
(4, 'SoftwareLicense', 'software', 86400, NULL, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL),
(5, 'Contract', 'contract', 86400, NULL, 1, 1, 3, 0, 24, 30, '2017-03-14 00:54:00', NULL, NULL),
(6, 'InfoCom', 'infocom', 86400, NULL, 1, 1, 3, 0, 24, 30, '2017-03-14 01:41:00', NULL, NULL),
(7, 'CronTask', 'logs', 86400, 30, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL),
(8, 'CronTask', 'optimize', 604800, NULL, 1, 1, 3, 0, 24, 30, '2017-03-14 01:51:00', NULL, NULL),
(9, 'MailCollector', 'mailgate', 600, 10, 1, 1, 3, 0, 24, 30, '2017-03-14 05:05:00', NULL, NULL),
(10, 'DBconnection', 'checkdbreplicate', 300, NULL, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL),
(11, 'CronTask', 'checkupdate', 604800, NULL, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL),
(12, 'CronTask', 'session', 86400, NULL, 1, 1, 3, 0, 24, 30, '2017-03-14 02:07:00', NULL, NULL),
(13, 'CronTask', 'graph', 3600, NULL, 1, 1, 3, 0, 24, 30, '2017-03-14 04:42:00', NULL, NULL),
(14, 'ReservationItem', 'reservation', 3600, NULL, 1, 1, 3, 0, 24, 30, '2017-03-14 04:50:00', NULL, NULL),
(15, 'Ticket', 'closeticket', 43200, NULL, 1, 1, 3, 0, 24, 30, '2017-03-14 02:33:00', NULL, NULL),
(16, 'Ticket', 'alertnotclosed', 43200, NULL, 1, 1, 3, 0, 24, 30, '2017-03-14 02:41:00', NULL, NULL),
(17, 'SlaLevel_Ticket', 'slaticket', 300, NULL, 1, 1, 3, 0, 24, 30, '2017-03-15 05:11:00', NULL, NULL),
(18, 'Ticket', 'createinquest', 86400, NULL, 1, 1, 3, 0, 24, 30, '2017-03-13 22:47:00', NULL, NULL),
(19, 'Crontask', 'watcher', 86400, NULL, 1, 1, 3, 0, 24, 30, '2017-03-13 22:56:00', NULL, NULL),
(20, 'TicketRecurrent', 'ticketrecurrent', 3600, NULL, 1, 1, 3, 0, 24, 30, '2017-03-15 21:50:00', NULL, NULL),
(21, 'PlanningRecall', 'planningrecall', 300, NULL, 1, 1, 3, 0, 24, 30, '2017-03-15 21:50:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_devicecases`
--

CREATE TABLE `glpi_devicecases` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicecasetypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_devicecasetypes`
--

CREATE TABLE `glpi_devicecasetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_devicecontrols`
--

CREATE TABLE `glpi_devicecontrols` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_raid` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_devicedrives`
--

CREATE TABLE `glpi_devicedrives` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_writer` tinyint(1) NOT NULL DEFAULT '1',
  `speed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_devicegraphiccards`
--

CREATE TABLE `glpi_devicegraphiccards` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `memory_default` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_deviceharddrives`
--

CREATE TABLE `glpi_deviceharddrives` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rpm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `cache` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `capacity_default` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_devicememories`
--

CREATE TABLE `glpi_devicememories` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frequence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `size_default` int(11) NOT NULL DEFAULT '0',
  `devicememorytypes_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_devicememorytypes`
--

CREATE TABLE `glpi_devicememorytypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_devicememorytypes`
--

INSERT INTO `glpi_devicememorytypes` (`id`, `name`, `comment`) VALUES
(1, 'EDO', NULL),
(2, 'DDR', NULL),
(3, 'SDRAM', NULL),
(4, 'SDRAM-2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_devicemotherboards`
--

CREATE TABLE `glpi_devicemotherboards` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chipset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_devicenetworkcards`
--

CREATE TABLE `glpi_devicenetworkcards` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bandwidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `mac_default` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_devicepcis`
--

CREATE TABLE `glpi_devicepcis` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_devicepowersupplies`
--

CREATE TABLE `glpi_devicepowersupplies` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `power` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_atx` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_deviceprocessors`
--

CREATE TABLE `glpi_deviceprocessors` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frequence` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `frequency_default` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_devicesoundcards`
--

CREATE TABLE `glpi_devicesoundcards` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_displaypreferences`
--

CREATE TABLE `glpi_displaypreferences` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_displaypreferences`
--

INSERT INTO `glpi_displaypreferences` (`id`, `itemtype`, `num`, `rank`, `users_id`) VALUES
(32, 'Computer', 4, 4, 0),
(34, 'Computer', 45, 6, 0),
(33, 'Computer', 40, 5, 0),
(31, 'Computer', 5, 3, 0),
(30, 'Computer', 23, 2, 0),
(86, 'DocumentType', 3, 1, 0),
(49, 'Monitor', 31, 1, 0),
(50, 'Monitor', 23, 2, 0),
(51, 'Monitor', 3, 3, 0),
(52, 'Monitor', 4, 4, 0),
(44, 'Printer', 31, 1, 0),
(38, 'NetworkEquipment', 31, 1, 0),
(39, 'NetworkEquipment', 23, 2, 0),
(45, 'Printer', 23, 2, 0),
(46, 'Printer', 3, 3, 0),
(63, 'Software', 4, 3, 0),
(62, 'Software', 5, 2, 0),
(61, 'Software', 23, 1, 0),
(83, 'CartridgeItem', 4, 2, 0),
(82, 'CartridgeItem', 34, 1, 0),
(57, 'Peripheral', 3, 3, 0),
(56, 'Peripheral', 23, 2, 0),
(55, 'Peripheral', 31, 1, 0),
(29, 'Computer', 31, 1, 0),
(35, 'Computer', 3, 7, 0),
(36, 'Computer', 19, 8, 0),
(37, 'Computer', 17, 9, 0),
(40, 'NetworkEquipment', 3, 3, 0),
(41, 'NetworkEquipment', 4, 4, 0),
(42, 'NetworkEquipment', 11, 6, 0),
(43, 'NetworkEquipment', 19, 7, 0),
(47, 'Printer', 4, 4, 0),
(48, 'Printer', 19, 6, 0),
(53, 'Monitor', 19, 6, 0),
(54, 'Monitor', 7, 7, 0),
(58, 'Peripheral', 4, 4, 0),
(59, 'Peripheral', 19, 6, 0),
(60, 'Peripheral', 7, 7, 0),
(64, 'Contact', 3, 1, 0),
(65, 'Contact', 4, 2, 0),
(66, 'Contact', 5, 3, 0),
(67, 'Contact', 6, 4, 0),
(68, 'Contact', 9, 5, 0),
(69, 'Supplier', 9, 1, 0),
(70, 'Supplier', 3, 2, 0),
(71, 'Supplier', 4, 3, 0),
(72, 'Supplier', 5, 4, 0),
(73, 'Supplier', 10, 5, 0),
(74, 'Supplier', 6, 6, 0),
(75, 'Contract', 4, 1, 0),
(76, 'Contract', 3, 2, 0),
(77, 'Contract', 5, 3, 0),
(78, 'Contract', 6, 4, 0),
(79, 'Contract', 7, 5, 0),
(80, 'Contract', 11, 6, 0),
(84, 'CartridgeItem', 23, 3, 0),
(85, 'CartridgeItem', 3, 4, 0),
(88, 'DocumentType', 6, 2, 0),
(89, 'DocumentType', 4, 3, 0),
(90, 'DocumentType', 5, 4, 0),
(91, 'Document', 3, 1, 0),
(92, 'Document', 4, 2, 0),
(93, 'Document', 7, 3, 0),
(94, 'Document', 5, 4, 0),
(95, 'Document', 16, 5, 0),
(96, 'User', 34, 1, 0),
(98, 'User', 5, 3, 0),
(99, 'User', 6, 4, 0),
(100, 'User', 3, 5, 0),
(101, 'ConsumableItem', 34, 1, 0),
(102, 'ConsumableItem', 4, 2, 0),
(103, 'ConsumableItem', 23, 3, 0),
(104, 'ConsumableItem', 3, 4, 0),
(105, 'NetworkEquipment', 40, 5, 0),
(106, 'Printer', 40, 5, 0),
(107, 'Monitor', 40, 5, 0),
(108, 'Peripheral', 40, 5, 0),
(109, 'User', 8, 6, 0),
(110, 'Phone', 31, 1, 0),
(111, 'Phone', 23, 2, 0),
(112, 'Phone', 3, 3, 0),
(113, 'Phone', 4, 4, 0),
(114, 'Phone', 40, 5, 0),
(115, 'Phone', 19, 6, 0),
(116, 'Phone', 7, 7, 0),
(117, 'Group', 16, 1, 0),
(118, 'AllAssets', 31, 1, 0),
(119, 'ReservationItem', 4, 1, 0),
(120, 'ReservationItem', 3, 2, 0),
(125, 'Budget', 3, 2, 0),
(122, 'Software', 72, 4, 0),
(123, 'Software', 163, 5, 0),
(124, 'Budget', 5, 1, 0),
(126, 'Budget', 4, 3, 0),
(127, 'Budget', 19, 4, 0),
(128, 'Crontask', 8, 1, 0),
(129, 'Crontask', 3, 2, 0),
(130, 'Crontask', 4, 3, 0),
(131, 'Crontask', 7, 4, 0),
(132, 'RequestType', 14, 1, 0),
(133, 'RequestType', 15, 2, 0),
(134, 'NotificationTemplate', 4, 1, 0),
(135, 'NotificationTemplate', 16, 2, 0),
(136, 'Notification', 5, 1, 0),
(137, 'Notification', 6, 2, 0),
(138, 'Notification', 2, 3, 0),
(139, 'Notification', 4, 4, 0),
(140, 'Notification', 80, 5, 0),
(141, 'Notification', 86, 6, 0),
(142, 'MailCollector', 2, 1, 0),
(143, 'MailCollector', 19, 2, 0),
(144, 'AuthLDAP', 3, 1, 0),
(145, 'AuthLDAP', 19, 2, 0),
(146, 'AuthMail', 3, 1, 0),
(147, 'AuthMail', 19, 2, 0),
(210, 'IPNetwork', 14, 1, 0),
(209, 'WifiNetwork', 10, 1, 0),
(150, 'Profile', 2, 1, 0),
(151, 'Profile', 3, 2, 0),
(152, 'Profile', 19, 3, 0),
(153, 'Transfer', 19, 1, 0),
(154, 'TicketValidation', 3, 1, 0),
(155, 'TicketValidation', 2, 2, 0),
(156, 'TicketValidation', 8, 3, 0),
(157, 'TicketValidation', 4, 4, 0),
(158, 'TicketValidation', 9, 5, 0),
(159, 'TicketValidation', 7, 6, 0),
(160, 'NotImportedEmail', 2, 1, 0),
(161, 'NotImportedEmail', 5, 2, 0),
(162, 'NotImportedEmail', 4, 3, 0),
(163, 'NotImportedEmail', 6, 4, 0),
(164, 'NotImportedEmail', 16, 5, 0),
(165, 'NotImportedEmail', 19, 6, 0),
(166, 'RuleRightParameter', 11, 1, 0),
(167, 'Ticket', 12, 1, 0),
(168, 'Ticket', 19, 2, 0),
(169, 'Ticket', 15, 3, 0),
(170, 'Ticket', 3, 4, 0),
(171, 'Ticket', 4, 5, 0),
(172, 'Ticket', 5, 6, 0),
(173, 'Ticket', 7, 7, 0),
(174, 'Calendar', 19, 1, 0),
(175, 'Holiday', 11, 1, 0),
(176, 'Holiday', 12, 2, 0),
(177, 'Holiday', 13, 3, 0),
(178, 'SLA', 4, 1, 0),
(179, 'Ticket', 18, 8, 0),
(180, 'AuthLdap', 30, 3, 0),
(181, 'AuthMail', 6, 3, 0),
(208, 'FQDN', 11, 1, 0),
(183, 'FieldUnicity', 1, 1, 0),
(184, 'FieldUnicity', 80, 2, 0),
(185, 'FieldUnicity', 4, 3, 0),
(186, 'FieldUnicity', 3, 4, 0),
(187, 'FieldUnicity', 86, 5, 0),
(188, 'FieldUnicity', 30, 6, 0),
(189, 'Problem', 21, 1, 0),
(190, 'Problem', 12, 2, 0),
(191, 'Problem', 19, 3, 0),
(192, 'Problem', 15, 4, 0),
(193, 'Problem', 3, 5, 0),
(194, 'Problem', 7, 6, 0),
(195, 'Problem', 18, 7, 0),
(196, 'Vlan', 11, 1, 0),
(197, 'TicketRecurrent', 11, 1, 0),
(198, 'TicketRecurrent', 12, 2, 0),
(199, 'TicketRecurrent', 13, 3, 0),
(200, 'TicketRecurrent', 15, 4, 0),
(201, 'TicketRecurrent', 14, 5, 0),
(202, 'Reminder', 2, 1, 0),
(203, 'Reminder', 3, 2, 0),
(204, 'Reminder', 4, 3, 0),
(205, 'Reminder', 5, 4, 0),
(206, 'Reminder', 6, 5, 0),
(207, 'Reminder', 7, 6, 0),
(211, 'IPNetwork', 10, 2, 0),
(212, 'IPNetwork', 11, 3, 0),
(213, 'IPNetwork', 12, 4, 0),
(214, 'IPNetwork', 13, 5, 0),
(215, 'NetworkName', 12, 1, 0),
(216, 'NetworkName', 13, 2, 0),
(217, 'RSSFeed', 2, 1, 0),
(218, 'RSSFeed', 4, 2, 0),
(219, 'RSSFeed', 5, 3, 0),
(220, 'RSSFeed', 19, 4, 0),
(221, 'RSSFeed', 6, 5, 0),
(222, 'RSSFeed', 7, 6, 0),
(223, 'Blacklist', 12, 1, 0),
(224, 'Blacklist', 11, 2, 0),
(225, 'ReservationItem', 5, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_documentcategories`
--

CREATE TABLE `glpi_documentcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `documentcategories_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_documents`
--

CREATE TABLE `glpi_documents` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'for display and transfert',
  `filepath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'file storage path',
  `documentcategories_id` int(11) NOT NULL DEFAULT '0',
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `sha1sum` char(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_documents`
--

INSERT INTO `glpi_documents` (`id`, `entities_id`, `is_recursive`, `name`, `filename`, `filepath`, `documentcategories_id`, `mime`, `date_mod`, `comment`, `is_deleted`, `link`, `notepad`, `users_id`, `tickets_id`, `sha1sum`) VALUES
(1, 0, 0, 'Document Ticket 4', 'tickets_table.xlsx', 'XLSX/c9/307dee883d3f54b3a13ea27262e4ae29d066e7.XLSX', 0, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '2017-03-14 11:10:29', NULL, 0, NULL, NULL, 2, 4, 'c9307dee883d3f54b3a13ea27262e4ae29d066e7');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_documents_items`
--

CREATE TABLE `glpi_documents_items` (
  `id` int(11) NOT NULL,
  `documents_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_documents_items`
--

INSERT INTO `glpi_documents_items` (`id`, `documents_id`, `items_id`, `itemtype`, `entities_id`, `is_recursive`, `date_mod`) VALUES
(1, 1, 4, 'Ticket', 0, 0, '2017-03-14 11:10:29');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_documenttypes`
--

CREATE TABLE `glpi_documenttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_uploadable` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_documenttypes`
--

INSERT INTO `glpi_documenttypes` (`id`, `name`, `ext`, `icon`, `mime`, `is_uploadable`, `date_mod`, `comment`) VALUES
(1, 'JPEG', 'jpg', 'jpg-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(2, 'PNG', 'png', 'png-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(3, 'GIF', 'gif', 'gif-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(4, 'BMP', 'bmp', 'bmp-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(5, 'Photoshop', 'psd', 'psd-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(6, 'TIFF', 'tif', 'tif-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(7, 'AIFF', 'aiff', 'aiff-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(8, 'Windows Media', 'asf', 'asf-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(9, 'Windows Media', 'avi', 'avi-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(44, 'C source', 'c', 'c-dist.png', '', 1, '2011-12-06 09:48:34', NULL),
(27, 'RealAudio', 'rm', 'rm-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(16, 'Midi', 'mid', 'mid-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(17, 'QuickTime', 'mov', 'mov-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(18, 'MP3', 'mp3', 'mp3-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(19, 'MPEG', 'mpg', 'mpg-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(20, 'Ogg Vorbis', 'ogg', 'ogg-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(24, 'QuickTime', 'qt', 'qt-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(10, 'BZip', 'bz2', 'bz2-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(25, 'RealAudio', 'ra', 'ra-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(26, 'RealAudio', 'ram', 'ram-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(11, 'Word', 'doc', 'doc-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(12, 'DjVu', 'djvu', '', '', 1, '2004-12-13 19:47:21', NULL),
(42, 'MNG', 'mng', '', '', 1, '2004-12-13 19:47:22', NULL),
(13, 'PostScript', 'eps', 'ps-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(14, 'GZ', 'gz', 'gz-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(37, 'WAV', 'wav', 'wav-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(15, 'HTML', 'html', 'html-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(34, 'Flash', 'swf', 'swf-dist.png', '', 1, '2011-12-06 09:48:34', NULL),
(21, 'PDF', 'pdf', 'pdf-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(22, 'PowerPoint', 'ppt', 'ppt-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(23, 'PostScript', 'ps', 'ps-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(40, 'Windows Media', 'wmv', 'wmv-dist.png', '', 1, '2011-12-06 09:48:34', NULL),
(28, 'RTF', 'rtf', 'rtf-dist.png', '', 1, '2004-12-13 19:47:21', NULL),
(29, 'StarOffice', 'sdd', 'sdd-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(30, 'StarOffice', 'sdw', 'sdw-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(31, 'Stuffit', 'sit', 'sit-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(43, 'Adobe Illustrator', 'ai', 'ai-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(32, 'OpenOffice Impress', 'sxi', 'sxi-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(33, 'OpenOffice', 'sxw', 'sxw-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(46, 'DVI', 'dvi', 'dvi-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(35, 'TGZ', 'tgz', 'tgz-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(36, 'texte', 'txt', 'txt-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(49, 'RedHat/Mandrake/SuSE', 'rpm', 'rpm-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(38, 'Excel', 'xls', 'xls-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(39, 'XML', 'xml', 'xml-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(41, 'Zip', 'zip', 'zip-dist.png', '', 1, '2011-12-06 09:48:34', NULL),
(45, 'Debian', 'deb', 'deb-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(47, 'C header', 'h', 'h-dist.png', '', 1, '2011-12-06 09:48:34', NULL),
(48, 'Pascal', 'pas', 'pas-dist.png', '', 1, '2011-12-06 09:48:34', NULL),
(50, 'OpenOffice Calc', 'sxc', 'sxc-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(51, 'LaTeX', 'tex', 'tex-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(52, 'GIMP multi-layer', 'xcf', 'xcf-dist.png', '', 1, '2004-12-13 19:47:22', NULL),
(53, 'JPEG', 'jpeg', 'jpg-dist.png', '', 1, '2005-03-07 22:23:17', NULL),
(54, 'Oasis Open Office Writer', 'odt', 'odt-dist.png', '', 1, '2006-01-21 17:41:13', NULL),
(55, 'Oasis Open Office Calc', 'ods', 'ods-dist.png', '', 1, '2006-01-21 17:41:31', NULL),
(56, 'Oasis Open Office Impress', 'odp', 'odp-dist.png', '', 1, '2006-01-21 17:42:54', NULL),
(57, 'Oasis Open Office Impress Template', 'otp', 'odp-dist.png', '', 1, '2006-01-21 17:43:58', NULL),
(58, 'Oasis Open Office Writer Template', 'ott', 'odt-dist.png', '', 1, '2006-01-21 17:44:41', NULL),
(59, 'Oasis Open Office Calc Template', 'ots', 'ods-dist.png', '', 1, '2006-01-21 17:45:30', NULL),
(60, 'Oasis Open Office Math', 'odf', 'odf-dist.png', '', 1, '2006-01-21 17:48:05', NULL),
(61, 'Oasis Open Office Draw', 'odg', 'odg-dist.png', '', 1, '2006-01-21 17:48:31', NULL),
(62, 'Oasis Open Office Draw Template', 'otg', 'odg-dist.png', '', 1, '2006-01-21 17:49:46', NULL),
(63, 'Oasis Open Office Base', 'odb', 'odb-dist.png', '', 1, '2006-01-21 18:03:34', NULL),
(64, 'Oasis Open Office HTML', 'oth', 'oth-dist.png', '', 1, '2006-01-21 18:05:27', NULL),
(65, 'Oasis Open Office Writer Master', 'odm', 'odm-dist.png', '', 1, '2006-01-21 18:06:34', NULL),
(66, 'Oasis Open Office Chart', 'odc', '', '', 1, '2006-01-21 18:07:48', NULL),
(67, 'Oasis Open Office Image', 'odi', '', '', 1, '2006-01-21 18:08:18', NULL),
(68, 'Word XML', 'docx', 'doc-dist.png', NULL, 1, '2011-01-18 11:40:42', NULL),
(69, 'Excel XML', 'xlsx', 'xls-dist.png', NULL, 1, '2011-01-18 11:40:42', NULL),
(70, 'PowerPoint XML', 'pptx', 'ppt-dist.png', NULL, 1, '2011-01-18 11:40:42', NULL),
(71, 'Comma-Separated Values', 'csv', 'csv-dist.png', NULL, 1, '2011-12-06 09:48:34', NULL),
(72, 'Scalable Vector Graphics', 'svg', 'svg-dist.png', NULL, 1, '2011-12-06 09:48:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_domains`
--

CREATE TABLE `glpi_domains` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_entities`
--

CREATE TABLE `glpi_entities` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification_subject_tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `ldap_dn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authldaps_id` int(11) NOT NULL DEFAULT '0',
  `mail_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_ldapfilter` text COLLATE utf8_unicode_ci,
  `mailing_signature` text COLLATE utf8_unicode_ci,
  `cartridges_alert_repeat` int(11) NOT NULL DEFAULT '-2',
  `consumables_alert_repeat` int(11) NOT NULL DEFAULT '-2',
  `use_licenses_alert` int(11) NOT NULL DEFAULT '-2',
  `send_licenses_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_contracts_alert` int(11) NOT NULL DEFAULT '-2',
  `send_contracts_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_infocoms_alert` int(11) NOT NULL DEFAULT '-2',
  `send_infocoms_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_reservations_alert` int(11) NOT NULL DEFAULT '-2',
  `autoclose_delay` int(11) NOT NULL DEFAULT '-2',
  `notclosed_delay` int(11) NOT NULL DEFAULT '-2',
  `calendars_id` int(11) NOT NULL DEFAULT '-2',
  `auto_assign_mode` int(11) NOT NULL DEFAULT '-2',
  `tickettype` int(11) NOT NULL DEFAULT '-2',
  `max_closedate` datetime DEFAULT NULL,
  `inquest_config` int(11) NOT NULL DEFAULT '-2',
  `inquest_rate` int(11) NOT NULL DEFAULT '0',
  `inquest_delay` int(11) NOT NULL DEFAULT '-10',
  `inquest_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autofill_warranty_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_use_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_buy_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_delivery_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_order_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '-2',
  `entities_id_software` int(11) NOT NULL DEFAULT '-2',
  `default_contract_alert` int(11) NOT NULL DEFAULT '-2',
  `default_infocom_alert` int(11) NOT NULL DEFAULT '-2',
  `default_cartridges_alarm_threshold` int(11) NOT NULL DEFAULT '-2',
  `default_consumables_alarm_threshold` int(11) NOT NULL DEFAULT '-2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_entities`
--

INSERT INTO `glpi_entities` (`id`, `name`, `entities_id`, `completename`, `comment`, `level`, `sons_cache`, `ancestors_cache`, `address`, `postcode`, `town`, `state`, `country`, `website`, `phonenumber`, `fax`, `email`, `admin_email`, `admin_email_name`, `admin_reply`, `admin_reply_name`, `notification_subject_tag`, `notepad`, `ldap_dn`, `tag`, `authldaps_id`, `mail_domain`, `entity_ldapfilter`, `mailing_signature`, `cartridges_alert_repeat`, `consumables_alert_repeat`, `use_licenses_alert`, `send_licenses_alert_before_delay`, `use_contracts_alert`, `send_contracts_alert_before_delay`, `use_infocoms_alert`, `send_infocoms_alert_before_delay`, `use_reservations_alert`, `autoclose_delay`, `notclosed_delay`, `calendars_id`, `auto_assign_mode`, `tickettype`, `max_closedate`, `inquest_config`, `inquest_rate`, `inquest_delay`, `inquest_URL`, `autofill_warranty_date`, `autofill_use_date`, `autofill_buy_date`, `autofill_delivery_date`, `autofill_order_date`, `tickettemplates_id`, `entities_id_software`, `default_contract_alert`, `default_infocom_alert`, `default_cartridges_alarm_threshold`, `default_consumables_alarm_threshold`) VALUES
(0, 'Root entity', -1, 'Root entity', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -10, 1, NULL, 1, 0, 0, NULL, '0', '0', '0', '0', '0', 1, -10, 0, 0, 10, 10),
(1, 'tab', 0, 'Root entity > tab', '', 2, NULL, '["0"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, '2017-03-14 09:41:27', -2, 0, -10, NULL, '-2', '-2', '-2', '-2', '-2', -2, -2, -2, -2, -2, -2),
(2, 'tabtree', 1, 'Root entity > tab > tabtree', '', 3, NULL, '["0","1"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, '2017-03-14 10:26:08', -2, 0, -10, NULL, '-2', '-2', '-2', '-2', '-2', -2, -2, -2, -2, -2, -2);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_entities_knowbaseitems`
--

CREATE TABLE `glpi_entities_knowbaseitems` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_entities_reminders`
--

CREATE TABLE `glpi_entities_reminders` (
  `id` int(11) NOT NULL,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_entities_rssfeeds`
--

CREATE TABLE `glpi_entities_rssfeeds` (
  `id` int(11) NOT NULL,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_events`
--

CREATE TABLE `glpi_events` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_events`
--

INSERT INTO `glpi_events` (`id`, `items_id`, `type`, `date`, `service`, `level`, `message`) VALUES
(1, -1, 'system', '2014-04-16 15:32:54', 'login', 3, 'glpi se connecte depuis l''IP 127.0.0.1'),
(2, -1, 'system', '2017-03-14 06:34:01', 'login', 3, 'glpi log in from IP 127.0.0.1'),
(3, -1, 'system', '2017-03-14 08:54:44', 'login', 3, 'glpi log in from IP 127.0.0.1'),
(4, 1, 'Entity', '2017-03-14 09:41:27', 'setup', 4, 'glpi adds the item tab'),
(5, 6, 'users', '2017-03-14 09:43:16', 'setup', 4, 'glpi adds the item priya'),
(6, 6, 'users', '2017-03-14 09:43:30', 'setup', 5, 'glpi updates an item'),
(7, 1, 'ticket', '2017-03-14 09:52:07', 'tracking', 4, 'glpi adds the item 1'),
(8, 1, 'ITILCategory', '2017-03-14 09:59:45', 'setup', 4, 'glpi adds the item computer'),
(9, 2, 'ticket', '2017-03-14 10:02:51', 'tracking', 4, 'glpi adds the item 2'),
(10, 2, 'ticket', '2017-03-14 10:07:42', 'tracking', 4, 'glpi updates an item'),
(11, 6, 'users', '2017-03-14 10:17:55', 'setup', 5, 'glpi updates an item'),
(12, 7, 'users', '2017-03-14 10:22:04', 'setup', 4, 'glpi adds the item indhu'),
(13, 2, 'Entity', '2017-03-14 10:26:08', 'setup', 4, 'glpi adds the item tabtree'),
(14, 8, 'users', '2017-03-14 10:27:17', 'setup', 4, 'glpi adds the item pri'),
(15, 1, 'Location', '2017-03-14 10:30:39', 'setup', 4, 'glpi adds the item chennai'),
(16, 3, 'ticket', '2017-03-14 10:33:04', 'tracking', 4, 'glpi adds the item 3'),
(17, 4, 'ticket', '2017-03-14 11:10:29', 'tracking', 4, 'glpi adds the item 4'),
(18, 11, 'users', '2017-03-14 11:57:49', 'setup', 4, 'glpi adds the item priyap'),
(19, 12, 'users', '2017-03-14 12:05:18', 'setup', 4, 'glpi adds the item nas'),
(20, -1, 'system', '2017-03-14 12:37:24', 'login', 3, 'glpi log in from IP 127.0.0.1'),
(21, 2, 'ITILCategory', '2017-03-14 12:40:56', 'setup', 4, 'glpi adds the item printer'),
(22, 5, 'ticket', '2017-03-14 12:42:23', 'tracking', 4, 'glpi adds the item 5'),
(23, -1, 'system', '2017-03-14 12:50:16', 'login', 3, 'glpi log in from IP ::1'),
(24, -1, 'system', '2017-03-15 13:12:03', 'login', 3, 'glpi log in from IP ::1'),
(25, -1, 'system', '2017-03-16 05:50:45', 'login', 3, 'glpi log in from IP ::1'),
(26, 3, 'ITILCategory', '2017-03-16 05:51:21', 'setup', 4, 'glpi adds the item desktop'),
(27, 4, 'ITILCategory', '2017-03-16 05:51:30', 'setup', 4, 'glpi adds the item mouse'),
(28, 6, 'ticket', '2017-03-16 05:53:03', 'tracking', 4, 'glpi adds the item 6');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_fieldblacklists`
--

CREATE TABLE `glpi_fieldblacklists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_fieldunicities`
--

CREATE TABLE `glpi_fieldunicities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `fields` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `action_refuse` tinyint(1) NOT NULL DEFAULT '0',
  `action_notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores field unicity criterias';

-- --------------------------------------------------------

--
-- Table structure for table `glpi_filesystems`
--

CREATE TABLE `glpi_filesystems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_filesystems`
--

INSERT INTO `glpi_filesystems` (`id`, `name`, `comment`) VALUES
(1, 'ext', NULL),
(2, 'ext2', NULL),
(3, 'ext3', NULL),
(4, 'ext4', NULL),
(5, 'FAT', NULL),
(6, 'FAT32', NULL),
(7, 'VFAT', NULL),
(8, 'HFS', NULL),
(9, 'HPFS', NULL),
(10, 'HTFS', NULL),
(11, 'JFS', NULL),
(12, 'JFS2', NULL),
(13, 'NFS', NULL),
(14, 'NTFS', NULL),
(15, 'ReiserFS', NULL),
(16, 'SMBFS', NULL),
(17, 'UDF', NULL),
(18, 'UFS', NULL),
(19, 'XFS', NULL),
(20, 'ZFS', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_fqdns`
--

CREATE TABLE `glpi_fqdns` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fqdn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_groups`
--

CREATE TABLE `glpi_groups` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `ldap_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ldap_value` text COLLATE utf8_unicode_ci,
  `ldap_group_dn` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_requester` tinyint(1) NOT NULL DEFAULT '1',
  `is_assign` tinyint(1) NOT NULL DEFAULT '1',
  `is_notify` tinyint(1) NOT NULL DEFAULT '1',
  `is_itemgroup` tinyint(1) NOT NULL DEFAULT '1',
  `is_usergroup` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_groups_knowbaseitems`
--

CREATE TABLE `glpi_groups_knowbaseitems` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_groups_problems`
--

CREATE TABLE `glpi_groups_problems` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_groups_reminders`
--

CREATE TABLE `glpi_groups_reminders` (
  `id` int(11) NOT NULL,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_groups_rssfeeds`
--

CREATE TABLE `glpi_groups_rssfeeds` (
  `id` int(11) NOT NULL,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_groups_tickets`
--

CREATE TABLE `glpi_groups_tickets` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_groups_users`
--

CREATE TABLE `glpi_groups_users` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `is_manager` tinyint(1) NOT NULL DEFAULT '0',
  `is_userdelegate` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_holidays`
--

CREATE TABLE `glpi_holidays` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_perpetual` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_infocoms`
--

CREATE TABLE `glpi_infocoms` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `buy_date` date DEFAULT NULL,
  `use_date` date DEFAULT NULL,
  `warranty_duration` int(11) NOT NULL DEFAULT '0',
  `warranty_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `order_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `immo_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `warranty_value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `sink_time` int(11) NOT NULL DEFAULT '0',
  `sink_type` int(11) NOT NULL DEFAULT '0',
  `sink_coeff` float NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `bill` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `alert` int(11) NOT NULL DEFAULT '0',
  `order_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `inventory_date` date DEFAULT NULL,
  `warranty_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_interfacetypes`
--

CREATE TABLE `glpi_interfacetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_interfacetypes`
--

INSERT INTO `glpi_interfacetypes` (`id`, `name`, `comment`) VALUES
(1, 'IDE', NULL),
(2, 'SATA', NULL),
(3, 'SCSI', NULL),
(4, 'USB', NULL),
(5, 'AGP', ''),
(6, 'PCI', ''),
(7, 'PCIe', ''),
(8, 'PCI-X', '');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_ipaddresses`
--

CREATE TABLE `glpi_ipaddresses` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `version` tinyint(3) UNSIGNED DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `binary_0` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `binary_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `binary_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `binary_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_ipaddresses_ipnetworks`
--

CREATE TABLE `glpi_ipaddresses_ipnetworks` (
  `id` int(11) NOT NULL,
  `ipaddresses_id` int(11) NOT NULL DEFAULT '0',
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_ipnetworks`
--

CREATE TABLE `glpi_ipnetworks` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `addressable` tinyint(1) NOT NULL DEFAULT '0',
  `version` tinyint(3) UNSIGNED DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_0` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `address_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `address_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `address_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `netmask` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `netmask_0` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `netmask_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `netmask_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `netmask_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gateway` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway_0` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gateway_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gateway_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gateway_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_ipnetworks_vlans`
--

CREATE TABLE `glpi_ipnetworks_vlans` (
  `id` int(11) NOT NULL,
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0',
  `vlans_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_items_devicecases`
--

CREATE TABLE `glpi_items_devicecases` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicecases_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_items_devicecontrols`
--

CREATE TABLE `glpi_items_devicecontrols` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicecontrols_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_items_devicedrives`
--

CREATE TABLE `glpi_items_devicedrives` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicedrives_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_items_devicegraphiccards`
--

CREATE TABLE `glpi_items_devicegraphiccards` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicegraphiccards_id` int(11) NOT NULL DEFAULT '0',
  `memory` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_items_deviceharddrives`
--

CREATE TABLE `glpi_items_deviceharddrives` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceharddrives_id` int(11) NOT NULL DEFAULT '0',
  `capacity` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_items_devicememories`
--

CREATE TABLE `glpi_items_devicememories` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicememories_id` int(11) NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_items_devicemotherboards`
--

CREATE TABLE `glpi_items_devicemotherboards` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicemotherboards_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_items_devicenetworkcards`
--

CREATE TABLE `glpi_items_devicenetworkcards` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_items_devicepcis`
--

CREATE TABLE `glpi_items_devicepcis` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicepcis_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_items_devicepowersupplies`
--

CREATE TABLE `glpi_items_devicepowersupplies` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicepowersupplies_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_items_deviceprocessors`
--

CREATE TABLE `glpi_items_deviceprocessors` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceprocessors_id` int(11) NOT NULL DEFAULT '0',
  `frequency` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_items_devicesoundcards`
--

CREATE TABLE `glpi_items_devicesoundcards` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicesoundcards_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_items_problems`
--

CREATE TABLE `glpi_items_problems` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_itilcategories`
--

CREATE TABLE `glpi_itilcategories` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_helpdeskvisible` tinyint(1) NOT NULL DEFAULT '1',
  `tickettemplates_id_incident` int(11) NOT NULL DEFAULT '0',
  `tickettemplates_id_demand` int(11) NOT NULL DEFAULT '0',
  `is_incident` int(11) NOT NULL DEFAULT '1',
  `is_request` int(11) NOT NULL DEFAULT '1',
  `is_problem` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_itilcategories`
--

INSERT INTO `glpi_itilcategories` (`id`, `entities_id`, `is_recursive`, `itilcategories_id`, `name`, `completename`, `comment`, `level`, `knowbaseitemcategories_id`, `users_id`, `groups_id`, `ancestors_cache`, `sons_cache`, `is_helpdeskvisible`, `tickettemplates_id_incident`, `tickettemplates_id_demand`, `is_incident`, `is_request`, `is_problem`) VALUES
(1, 0, 0, 0, 'computer', 'computer', '', 1, 0, 0, 0, NULL, NULL, 1, 0, 0, 1, 1, 1),
(2, 0, 0, 0, 'printer', 'printer', '', 1, 0, 0, 0, NULL, NULL, 1, 0, 0, 1, 1, 1),
(3, 0, 0, 0, 'desktop', 'desktop', '', 1, 0, 0, 0, NULL, NULL, 1, 0, 0, 1, 1, 1),
(4, 0, 0, 0, 'mouse', 'mouse', '', 1, 0, 0, 0, NULL, NULL, 1, 0, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_knowbaseitemcategories`
--

CREATE TABLE `glpi_knowbaseitemcategories` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `ancestors_cache` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_knowbaseitems`
--

CREATE TABLE `glpi_knowbaseitems` (
  `id` int(11) NOT NULL,
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `answer` longtext COLLATE utf8_unicode_ci,
  `is_faq` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_knowbaseitems_profiles`
--

CREATE TABLE `glpi_knowbaseitems_profiles` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_knowbaseitems_users`
--

CREATE TABLE `glpi_knowbaseitems_users` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_links`
--

CREATE TABLE `glpi_links` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_links_itemtypes`
--

CREATE TABLE `glpi_links_itemtypes` (
  `id` int(11) NOT NULL,
  `links_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_locations`
--

CREATE TABLE `glpi_locations` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `building` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_locations`
--

INSERT INTO `glpi_locations` (`id`, `entities_id`, `is_recursive`, `name`, `locations_id`, `completename`, `comment`, `level`, `ancestors_cache`, `sons_cache`, `building`, `room`) VALUES
(1, 0, 0, 'chennai', 0, 'chennai', '', 1, NULL, '{"1":"1"}', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_logs`
--

CREATE TABLE `glpi_logs` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `linked_action` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php HISTORY_* constant',
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `id_search_option` int(11) NOT NULL DEFAULT '0' COMMENT 'see search.constant.php for value',
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_logs`
--

INSERT INTO `glpi_logs` (`id`, `itemtype`, `items_id`, `itemtype_link`, `linked_action`, `user_name`, `date_mod`, `id_search_option`, `old_value`, `new_value`) VALUES
(1, 'Entity', 1, '0', 20, 'glpi (2)', '2017-03-14 09:41:27', 0, '', ''),
(2, 'User', 6, 'UserEmail', 17, 'glpi (2)', '2017-03-14 09:43:16', 0, '', 'manjusripriya@gmail.com (1)'),
(3, 'UserEmail', 1, '0', 20, 'glpi (2)', '2017-03-14 09:43:16', 0, '', ''),
(4, 'User', 6, 'Profile', 17, 'glpi (2)', '2017-03-14 09:43:16', 0, '', 'Self-Service (1)'),
(5, 'User', 6, '0', 20, 'glpi (2)', '2017-03-14 09:43:16', 0, '', ''),
(6, 'Ticket', 1, '', 0, 'glpi (2)', '2017-03-14 09:52:07', 150, '0', '67'),
(7, 'Ticket', 1, 'User', 15, 'glpi (2)', '2017-03-14 09:52:07', 0, '', 'glpi (2)'),
(8, 'Ticket', 1, '0', 20, 'glpi (2)', '2017-03-14 09:52:07', 0, '', ''),
(9, 'ITILCategory', 1, '0', 20, 'glpi (2)', '2017-03-14 09:59:45', 0, '', ''),
(10, 'Ticket', 2, 'User', 15, 'glpi (2)', '2017-03-14 10:02:51', 0, '', 'glpi (2)'),
(11, 'Ticket', 2, '0', 20, 'glpi (2)', '2017-03-14 10:02:51', 0, '', ''),
(12, 'Ticket', 2, '', 0, 'glpi (2)', '2017-03-14 10:07:42', 1, 'computer', 'computer1'),
(13, 'User', 6, '', 0, 'glpi (2)', '2017-03-14 10:17:55', 80, 'Root entity (0)', 'Root entity > tab (1)'),
(14, 'User', 7, 'UserEmail', 17, 'glpi (2)', '2017-03-14 10:22:04', 0, '', 'indhu@gmail.com (2)'),
(15, 'UserEmail', 2, '0', 20, 'glpi (2)', '2017-03-14 10:22:04', 0, '', ''),
(16, 'User', 7, 'Profile', 17, 'glpi (2)', '2017-03-14 10:22:04', 0, '', 'Self-Service (1)'),
(17, 'User', 7, '0', 20, 'glpi (2)', '2017-03-14 10:22:04', 0, '', ''),
(18, 'Entity', 1, 'Entity', 17, 'glpi (2)', '2017-03-14 10:26:08', 0, '', 'tabtree'),
(19, 'Entity', 2, '0', 20, 'glpi (2)', '2017-03-14 10:26:08', 0, '', ''),
(20, 'User', 8, 'UserEmail', 17, 'glpi (2)', '2017-03-14 10:27:17', 0, '', 'pri@gmail.com (3)'),
(21, 'UserEmail', 3, '0', 20, 'glpi (2)', '2017-03-14 10:27:17', 0, '', ''),
(22, 'User', 8, 'Profile', 17, 'glpi (2)', '2017-03-14 10:27:17', 0, '', 'Self-Service (1)'),
(23, 'User', 8, '0', 20, 'glpi (2)', '2017-03-14 10:27:17', 0, '', ''),
(24, 'Location', 1, '0', 20, 'glpi (2)', '2017-03-14 10:30:39', 0, '', ''),
(25, 'Ticket', 3, '', 0, 'glpi (2)', '2017-03-14 10:33:04', 150, '0', '124'),
(26, 'Ticket', 3, 'User', 15, 'glpi (2)', '2017-03-14 10:33:04', 0, '', 'glpi (2)'),
(27, 'Ticket', 3, '0', 20, 'glpi (2)', '2017-03-14 10:33:04', 0, '', ''),
(28, 'Document', 1, '0', 20, 'glpi (2)', '2017-03-14 11:10:29', 0, '', ''),
(29, 'Document', 1, 'Ticket', 15, 'glpi (2)', '2017-03-14 11:10:29', 0, '', 'Not Working (4)'),
(30, 'Ticket', 4, 'Document', 15, 'glpi (2)', '2017-03-14 11:10:29', 0, '', 'Document Ticket 4 (1)'),
(31, 'Ticket', 4, '', 0, 'glpi (2)', '2017-03-14 11:10:29', 150, '0', '89'),
(32, 'Ticket', 4, 'User', 15, 'glpi (2)', '2017-03-14 11:10:29', 0, '', 'glpi (2)'),
(33, 'Ticket', 4, '0', 20, 'glpi (2)', '2017-03-14 11:10:29', 0, '', ''),
(34, 'User', 11, 'Profile', 17, 'glpi (2)', '2017-03-14 11:57:49', 0, '', 'Self-Service (1)'),
(35, 'User', 11, '0', 20, 'glpi (2)', '2017-03-14 11:57:49', 0, '', ''),
(36, 'User', 12, 'UserEmail', 17, 'glpi (2)', '2017-03-14 12:05:18', 0, '', 'nas@gmail.com (4)'),
(37, 'UserEmail', 4, '0', 20, 'glpi (2)', '2017-03-14 12:05:18', 0, '', ''),
(38, 'User', 12, 'Profile', 17, 'glpi (2)', '2017-03-14 12:05:18', 0, '', 'Self-Service (1)'),
(39, 'User', 12, '0', 20, 'glpi (2)', '2017-03-14 12:05:18', 0, '', ''),
(40, 'ITILCategory', 2, '0', 20, 'glpi (2)', '2017-03-14 12:40:56', 0, '', ''),
(41, 'Ticket', 5, '', 0, 'glpi (2)', '2017-03-14 12:42:23', 150, '0', '83'),
(42, 'Ticket', 5, 'User', 15, 'glpi (2)', '2017-03-14 12:42:23', 0, '', 'glpi (2)'),
(43, 'Ticket', 5, '0', 20, 'glpi (2)', '2017-03-14 12:42:23', 0, '', ''),
(44, 'ITILCategory', 3, '0', 20, 'glpi (2)', '2017-03-16 05:51:21', 0, '', ''),
(45, 'ITILCategory', 4, '0', 20, 'glpi (2)', '2017-03-16 05:51:30', 0, '', ''),
(46, 'Ticket', 6, '', 0, 'glpi (2)', '2017-03-16 05:53:03', 150, '0', '183'),
(47, 'Ticket', 6, 'User', 15, 'glpi (2)', '2017-03-16 05:53:03', 0, '', 'glpi (2)'),
(48, 'Ticket', 6, '0', 20, 'glpi (2)', '2017-03-16 05:53:03', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_mailcollectors`
--

CREATE TABLE `glpi_mailcollectors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filesize_max` int(11) NOT NULL DEFAULT '2097152',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accepted` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refused` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_kerberos` tinyint(1) NOT NULL DEFAULT '0',
  `errors` int(11) NOT NULL DEFAULT '0',
  `use_mail_date` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_manufacturers`
--

CREATE TABLE `glpi_manufacturers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_monitormodels`
--

CREATE TABLE `glpi_monitormodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_monitors`
--

CREATE TABLE `glpi_monitors` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) NOT NULL DEFAULT '0',
  `have_micro` tinyint(1) NOT NULL DEFAULT '0',
  `have_speaker` tinyint(1) NOT NULL DEFAULT '0',
  `have_subd` tinyint(1) NOT NULL DEFAULT '0',
  `have_bnc` tinyint(1) NOT NULL DEFAULT '0',
  `have_dvi` tinyint(1) NOT NULL DEFAULT '0',
  `have_pivot` tinyint(1) NOT NULL DEFAULT '0',
  `have_hdmi` tinyint(1) NOT NULL DEFAULT '0',
  `have_displayport` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `monitortypes_id` int(11) NOT NULL DEFAULT '0',
  `monitormodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_monitortypes`
--

CREATE TABLE `glpi_monitortypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_netpoints`
--

CREATE TABLE `glpi_netpoints` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networkaliases`
--

CREATE TABLE `glpi_networkaliases` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `networknames_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fqdns_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networkequipmentfirmwares`
--

CREATE TABLE `glpi_networkequipmentfirmwares` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networkequipmentmodels`
--

CREATE TABLE `glpi_networkequipmentmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networkequipments`
--

CREATE TABLE `glpi_networkequipments` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmenttypes_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmentmodels_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmentfirmwares_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networkequipmenttypes`
--

CREATE TABLE `glpi_networkequipmenttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networkinterfaces`
--

CREATE TABLE `glpi_networkinterfaces` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networknames`
--

CREATE TABLE `glpi_networknames` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `fqdns_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networkportaggregates`
--

CREATE TABLE `glpi_networkportaggregates` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `networkports_id_list` text COLLATE utf8_unicode_ci COMMENT 'array of associated networkports_id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networkportaliases`
--

CREATE TABLE `glpi_networkportaliases` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `networkports_id_alias` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networkportdialups`
--

CREATE TABLE `glpi_networkportdialups` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networkportethernets`
--

CREATE TABLE `glpi_networkportethernets` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `netpoints_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'T, LX, SX',
  `speed` int(11) NOT NULL DEFAULT '10' COMMENT 'Mbit/s: 10, 100, 1000, 10000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networkportlocals`
--

CREATE TABLE `glpi_networkportlocals` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networkports`
--

CREATE TABLE `glpi_networkports` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `logical_number` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instantiation_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networkports_networkports`
--

CREATE TABLE `glpi_networkports_networkports` (
  `id` int(11) NOT NULL,
  `networkports_id_1` int(11) NOT NULL DEFAULT '0',
  `networkports_id_2` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networkports_vlans`
--

CREATE TABLE `glpi_networkports_vlans` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `vlans_id` int(11) NOT NULL DEFAULT '0',
  `tagged` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networkportwifis`
--

CREATE TABLE `glpi_networkportwifis` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `wifinetworks_id` int(11) NOT NULL DEFAULT '0',
  `networkportwifis_id` int(11) NOT NULL DEFAULT '0' COMMENT 'only usefull in case of Managed node',
  `version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'a, a/b, a/b/g, a/b/g/n, a/b/g/n/y',
  `mode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ad-hoc, managed, master, repeater, secondary, monitor, auto'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_networks`
--

CREATE TABLE `glpi_networks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_notifications`
--

CREATE TABLE `glpi_notifications` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_notifications`
--

INSERT INTO `glpi_notifications` (`id`, `name`, `entities_id`, `itemtype`, `event`, `mode`, `notificationtemplates_id`, `comment`, `is_recursive`, `is_active`, `date_mod`) VALUES
(1, 'Alert Tickets not closed', 0, 'Ticket', 'alertnotclosed', 'mail', 6, '', 1, 1, '2010-02-16 16:41:39'),
(2, 'New Ticket', 0, 'Ticket', 'new', 'mail', 4, '', 1, 1, '2010-02-16 16:41:39'),
(3, 'Update Ticket', 0, 'Ticket', 'update', 'mail', 4, '', 1, 1, '2010-02-16 16:41:39'),
(4, 'Close Ticket', 0, 'Ticket', 'closed', 'mail', 4, '', 1, 1, '2010-02-16 16:41:39'),
(5, 'Add Followup', 0, 'Ticket', 'add_followup', 'mail', 4, '', 1, 1, '2010-02-16 16:41:39'),
(6, 'Add Task', 0, 'Ticket', 'add_task', 'mail', 4, '', 1, 1, '2010-02-16 16:41:39'),
(7, 'Update Followup', 0, 'Ticket', 'update_followup', 'mail', 4, '', 1, 1, '2010-02-16 16:41:39'),
(8, 'Update Task', 0, 'Ticket', 'update_task', 'mail', 4, '', 1, 1, '2010-02-16 16:41:39'),
(9, 'Delete Followup', 0, 'Ticket', 'delete_followup', 'mail', 4, '', 1, 1, '2010-02-16 16:41:39'),
(10, 'Delete Task', 0, 'Ticket', 'delete_task', 'mail', 4, '', 1, 1, '2010-02-16 16:41:39'),
(11, 'Resolve ticket', 0, 'Ticket', 'solved', 'mail', 4, '', 1, 1, '2010-02-16 16:41:39'),
(12, 'Ticket Validation', 0, 'Ticket', 'validation', 'mail', 7, '', 1, 1, '2010-02-16 16:41:39'),
(13, 'New Reservation', 0, 'Reservation', 'new', 'mail', 2, '', 1, 1, '2010-02-16 16:41:39'),
(14, 'Update Reservation', 0, 'Reservation', 'update', 'mail', 2, '', 1, 1, '2010-02-16 16:41:39'),
(15, 'Delete Reservation', 0, 'Reservation', 'delete', 'mail', 2, '', 1, 1, '2010-02-16 16:41:39'),
(16, 'Alert Reservation', 0, 'Reservation', 'alert', 'mail', 3, '', 1, 1, '2010-02-16 16:41:39'),
(17, 'Contract Notice', 0, 'Contract', 'notice', 'mail', 12, '', 1, 1, '2010-02-16 16:41:39'),
(18, 'Contract End', 0, 'Contract', 'end', 'mail', 12, '', 1, 1, '2010-02-16 16:41:39'),
(19, 'MySQL Synchronization', 0, 'DBConnection', 'desynchronization', 'mail', 1, '', 1, 1, '2010-02-16 16:41:39'),
(20, 'Cartridges', 0, 'CartridgeItem', 'alert', 'mail', 8, '', 1, 1, '2010-02-16 16:41:39'),
(21, 'Consumables', 0, 'ConsumableItem', 'alert', 'mail', 9, '', 1, 1, '2010-02-16 16:41:39'),
(22, 'Infocoms', 0, 'Infocom', 'alert', 'mail', 10, '', 1, 1, '2010-02-16 16:41:39'),
(23, 'Software Licenses', 0, 'SoftwareLicense', 'alert', 'mail', 11, '', 1, 1, '2010-02-16 16:41:39'),
(24, 'Ticket Recall', 0, 'Ticket', 'recall', 'mail', 4, '', 1, 1, '2011-03-04 11:35:13'),
(25, 'Password Forget', 0, 'User', 'passwordforget', 'mail', 13, '', 1, 1, '2011-03-04 11:35:13'),
(26, 'Ticket Satisfaction', 0, 'Ticket', 'satisfaction', 'mail', 14, '', 1, 1, '2011-03-04 11:35:15'),
(27, 'Item not unique', 0, 'FieldUnicity', 'refuse', 'mail', 15, '', 1, 1, '2011-03-04 11:35:16'),
(28, 'Crontask Watcher', 0, 'Crontask', 'alert', 'mail', 16, '', 1, 1, '2011-03-04 11:35:16'),
(29, 'New Problem', 0, 'Problem', 'new', 'mail', 17, '', 1, 1, '2011-12-06 09:48:33'),
(30, 'Update Problem', 0, 'Problem', 'update', 'mail', 17, '', 1, 1, '2011-12-06 09:48:33'),
(31, 'Resolve Problem', 0, 'Problem', 'solved', 'mail', 17, '', 1, 1, '2011-12-06 09:48:33'),
(32, 'Add Task', 0, 'Problem', 'add_task', 'mail', 17, '', 1, 1, '2011-12-06 09:48:33'),
(33, 'Update Task', 0, 'Problem', 'update_task', 'mail', 17, '', 1, 1, '2011-12-06 09:48:33'),
(34, 'Delete Task', 0, 'Problem', 'delete_task', 'mail', 17, '', 1, 1, '2011-12-06 09:48:33'),
(35, 'Close Problem', 0, 'Problem', 'closed', 'mail', 17, '', 1, 1, '2011-12-06 09:48:33'),
(36, 'Delete Problem', 0, 'Problem', 'delete', 'mail', 17, '', 1, 1, '2011-12-06 09:48:33'),
(37, 'Ticket Validation Answer', 0, 'Ticket', 'validation_answer', 'mail', 7, '', 1, 1, '2014-01-15 14:35:24'),
(38, 'Contract End Periodicity', 0, 'Contract', 'periodicity', 'mail', 12, '', 1, 1, '2014-01-15 14:35:24'),
(39, 'Contract Notice Periodicity', 0, 'Contract', 'periodicitynotice', 'mail', 12, '', 1, 1, '2014-01-15 14:35:24'),
(40, 'Planning recall', 0, 'PlanningRecall', 'planningrecall', 'mail', 18, '', 1, 1, '2014-01-15 14:35:24'),
(41, 'Delete Ticket', 0, 'Ticket', 'delete', 'mail', 4, '', 1, 1, '2014-01-15 14:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_notificationtargets`
--

CREATE TABLE `glpi_notificationtargets` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `notifications_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_notificationtargets`
--

INSERT INTO `glpi_notificationtargets` (`id`, `items_id`, `type`, `notifications_id`) VALUES
(1, 3, 1, 13),
(2, 1, 1, 13),
(3, 3, 2, 2),
(4, 1, 1, 2),
(5, 1, 1, 3),
(6, 1, 1, 5),
(7, 1, 1, 4),
(8, 2, 1, 3),
(9, 4, 1, 3),
(10, 3, 1, 2),
(11, 3, 1, 3),
(12, 3, 1, 5),
(13, 3, 1, 4),
(14, 1, 1, 19),
(15, 14, 1, 12),
(16, 3, 1, 14),
(17, 1, 1, 14),
(18, 3, 1, 15),
(19, 1, 1, 15),
(20, 1, 1, 6),
(21, 3, 1, 6),
(22, 1, 1, 7),
(23, 3, 1, 7),
(24, 1, 1, 8),
(25, 3, 1, 8),
(26, 1, 1, 9),
(27, 3, 1, 9),
(28, 1, 1, 10),
(29, 3, 1, 10),
(30, 1, 1, 11),
(31, 3, 1, 11),
(32, 19, 1, 25),
(33, 3, 1, 26),
(34, 21, 1, 2),
(35, 21, 1, 3),
(36, 21, 1, 5),
(37, 21, 1, 4),
(38, 21, 1, 6),
(39, 21, 1, 7),
(40, 21, 1, 8),
(41, 21, 1, 9),
(42, 21, 1, 10),
(43, 21, 1, 11),
(75, 1, 1, 41),
(46, 1, 1, 28),
(47, 3, 1, 29),
(48, 1, 1, 29),
(49, 21, 1, 29),
(50, 2, 1, 30),
(51, 4, 1, 30),
(52, 3, 1, 30),
(53, 1, 1, 30),
(54, 21, 1, 30),
(55, 3, 1, 31),
(56, 1, 1, 31),
(57, 21, 1, 31),
(58, 3, 1, 32),
(59, 1, 1, 32),
(60, 21, 1, 32),
(61, 3, 1, 33),
(62, 1, 1, 33),
(63, 21, 1, 33),
(64, 3, 1, 34),
(65, 1, 1, 34),
(66, 21, 1, 34),
(67, 3, 1, 35),
(68, 1, 1, 35),
(69, 21, 1, 35),
(70, 3, 1, 36),
(71, 1, 1, 36),
(72, 21, 1, 36),
(73, 14, 1, 37),
(74, 3, 1, 40);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_notificationtemplates`
--

CREATE TABLE `glpi_notificationtemplates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `css` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_notificationtemplates`
--

INSERT INTO `glpi_notificationtemplates` (`id`, `name`, `itemtype`, `date_mod`, `comment`, `css`) VALUES
(1, 'MySQL Synchronization', 'DBConnection', '2010-02-01 15:51:46', '', NULL),
(2, 'Reservations', 'Reservation', '2010-02-03 14:03:45', '', NULL),
(3, 'Alert Reservation', 'Reservation', '2010-02-03 14:03:45', '', NULL),
(4, 'Tickets', 'Ticket', '2010-02-07 21:39:15', '', NULL),
(5, 'Tickets (Simple)', 'Ticket', '2010-02-07 21:39:15', '', NULL),
(6, 'Alert Tickets not closed', 'Ticket', '2010-02-07 21:39:15', '', NULL),
(7, 'Tickets Validation', 'Ticket', '2010-02-26 21:39:15', '', NULL),
(8, 'Cartridges', 'CartridgeItem', '2010-02-16 13:17:24', '', NULL),
(9, 'Consumables', 'ConsumableItem', '2010-02-16 13:17:38', '', NULL),
(10, 'Infocoms', 'Infocom', '2010-02-16 13:17:55', '', NULL),
(11, 'Licenses', 'SoftwareLicense', '2010-02-16 13:18:12', '', NULL),
(12, 'Contracts', 'Contract', '2010-02-16 13:18:12', '', NULL),
(13, 'Password Forget', 'User', '2011-03-04 11:35:13', NULL, NULL),
(14, 'Ticket Satisfaction', 'Ticket', '2011-03-04 11:35:15', NULL, NULL),
(15, 'Item not unique', 'FieldUnicity', '2011-03-04 11:35:16', NULL, NULL),
(16, 'Crontask', 'Crontask', '2011-03-04 11:35:16', NULL, NULL),
(17, 'Problems', 'Problem', '2011-12-06 09:48:33', NULL, NULL),
(18, 'Planning recall', 'PlanningRecall', '2014-01-15 14:35:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_notificationtemplatetranslations`
--

CREATE TABLE `glpi_notificationtemplatetranslations` (
  `id` int(11) NOT NULL,
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0',
  `language` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_text` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_notificationtemplatetranslations`
--

INSERT INTO `glpi_notificationtemplatetranslations` (`id`, `notificationtemplates_id`, `language`, `subject`, `content_text`, `content_html`) VALUES
(1, 1, '', '##lang.dbconnection.title##', '##lang.dbconnection.delay## : ##dbconnection.delay##\n', '&lt;p&gt;##lang.dbconnection.delay## : ##dbconnection.delay##&lt;/p&gt;'),
(2, 2, '', '##reservation.action##', '======================================================================\n##lang.reservation.user##: ##reservation.user##\n##lang.reservation.item.name##: ##reservation.itemtype## - ##reservation.item.name##\n##IFreservation.tech## ##lang.reservation.tech## ##reservation.tech## ##ENDIFreservation.tech##\n##lang.reservation.begin##: ##reservation.begin##\n##lang.reservation.end##: ##reservation.end##\n##lang.reservation.comment##: ##reservation.comment##\n======================================================================\n', '&lt;!-- description{ color: inherit; background: #ebebeb;border-style: solid;border-color: #8d8d8d; border-width: 0px 1px 1px 0px; } --&gt;\n&lt;p&gt;&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.reservation.user##:&lt;/span&gt;##reservation.user##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.reservation.item.name##:&lt;/span&gt;##reservation.itemtype## - ##reservation.item.name##&lt;br /&gt;##IFreservation.tech## ##lang.reservation.tech## ##reservation.tech####ENDIFreservation.tech##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.reservation.begin##:&lt;/span&gt; ##reservation.begin##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.reservation.end##:&lt;/span&gt;##reservation.end##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.reservation.comment##:&lt;/span&gt; ##reservation.comment##&lt;/p&gt;'),
(3, 3, '', '##reservation.action##  ##reservation.entity##', '##lang.reservation.entity## : ##reservation.entity## \n\n \n##FOREACHreservations## \n##lang.reservation.itemtype## : ##reservation.itemtype##\n\n ##lang.reservation.item## : ##reservation.item##\n \n ##reservation.url## \n\n ##ENDFOREACHreservations##', '&lt;p&gt;##lang.reservation.entity## : ##reservation.entity## &lt;br /&gt; &lt;br /&gt;\n##FOREACHreservations## &lt;br /&gt;##lang.reservation.itemtype## :  ##reservation.itemtype##&lt;br /&gt;\n ##lang.reservation.item## :  ##reservation.item##&lt;br /&gt; &lt;br /&gt;\n &lt;a href="##reservation.url##"&gt; ##reservation.url##&lt;/a&gt;&lt;br /&gt;\n ##ENDFOREACHreservations##&lt;/p&gt;'),
(4, 4, '', '##ticket.action## ##ticket.title##', ' ##IFticket.storestatus=5##\n ##lang.ticket.url## : ##ticket.urlapprove##\n ##lang.ticket.autoclosewarning##\n ##lang.ticket.solvedate## : ##ticket.solvedate##\n ##lang.ticket.solution.type## : ##ticket.solution.type##\n ##lang.ticket.solution.description## : ##ticket.solution.description## ##ENDIFticket.storestatus##\n ##ELSEticket.storestatus## ##lang.ticket.url## : ##ticket.url## ##ENDELSEticket.storestatus##\n\n ##lang.ticket.description##\n\n ##lang.ticket.title## : ##ticket.title##\n ##lang.ticket.authors## : ##IFticket.authors## ##ticket.authors## ##ENDIFticket.authors## ##ELSEticket.authors##--##ENDELSEticket.authors##\n ##lang.ticket.creationdate## : ##ticket.creationdate##\n ##lang.ticket.closedate## : ##ticket.closedate##\n ##lang.ticket.requesttype## : ##ticket.requesttype##\n##IFticket.itemtype## ##lang.ticket.item.name## : ##ticket.itemtype## - ##ticket.item.name## ##IFticket.item.model## - ##ticket.item.model## ##ENDIFticket.item.model## ##IFticket.item.serial## - ##ticket.item.serial## ##ENDIFticket.item.serial##  ##IFticket.item.otherserial## -##ticket.item.otherserial## ##ENDIFticket.item.otherserial## ##ENDIFticket.itemtype##\n##IFticket.assigntousers## ##lang.ticket.assigntousers## : ##ticket.assigntousers## ##ENDIFticket.assigntousers##\n ##lang.ticket.status## : ##ticket.status##\n##IFticket.assigntogroups## ##lang.ticket.assigntogroups## : ##ticket.assigntogroups## ##ENDIFticket.assigntogroups##\n ##lang.ticket.urgency## : ##ticket.urgency##\n ##lang.ticket.impact## : ##ticket.impact##\n ##lang.ticket.priority## : ##ticket.priority##\n##IFticket.user.email## ##lang.ticket.user.email## : ##ticket.user.email ##ENDIFticket.user.email##\n##IFticket.category## ##lang.ticket.category## : ##ticket.category## ##ENDIFticket.category## ##ELSEticket.category## ##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##\n ##lang.ticket.content## : ##ticket.content##\n ##IFticket.storestatus=6##\n\n ##lang.ticket.solvedate## : ##ticket.solvedate##\n ##lang.ticket.solution.type## : ##ticket.solution.type##\n ##lang.ticket.solution.description## : ##ticket.solution.description##\n ##ENDIFticket.storestatus##\n ##lang.ticket.numberoffollowups## : ##ticket.numberoffollowups##\n\n##FOREACHfollowups##\n\n [##followup.date##] ##lang.followup.isprivate## : ##followup.isprivate##\n ##lang.followup.author## ##followup.author##\n ##lang.followup.description## ##followup.description##\n ##lang.followup.date## ##followup.date##\n ##lang.followup.requesttype## ##followup.requesttype##\n\n##ENDFOREACHfollowups##\n ##lang.ticket.numberoftasks## : ##ticket.numberoftasks##\n\n##FOREACHtasks##\n\n [##task.date##] ##lang.task.isprivate## : ##task.isprivate##\n ##lang.task.author## ##task.author##\n ##lang.task.description## ##task.description##\n ##lang.task.time## ##task.time##\n ##lang.task.category## ##task.category##\n\n##ENDFOREACHtasks##', '<!-- description{ color: inherit; background: #ebebeb; border-style: solid;border-color: #8d8d8d; border-width: 0px 1px 1px 0px; }    -->\n<div>##IFticket.storestatus=5##</div>\n<div>##lang.ticket.url## : <a href="##ticket.urlapprove##">##ticket.urlapprove##</a> <strong>&#160;</strong></div>\n<div><strong>##lang.ticket.autoclosewarning##</strong></div>\n<div><span style="color: #888888;"><strong><span style="text-decoration: underline;">##lang.ticket.solvedate##</span></strong></span> : ##ticket.solvedate##<br /><span style="text-decoration: underline; color: #888888;"><strong>##lang.ticket.solution.type##</strong></span> : ##ticket.solution.type##<br /><span style="text-decoration: underline; color: #888888;"><strong>##lang.ticket.solution.description##</strong></span> : ##ticket.solution.description## ##ENDIFticket.storestatus##</div>\n<div>##ELSEticket.storestatus## ##lang.ticket.url## : <a href="##ticket.url##">##ticket.url##</a> ##ENDELSEticket.storestatus##</div>\n<p class="description b"><strong>##lang.ticket.description##</strong></p>\n<p><span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.ticket.title##</span>&#160;:##ticket.title## <br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.ticket.authors##</span>&#160;:##IFticket.authors## ##ticket.authors## ##ENDIFticket.authors##    ##ELSEticket.authors##--##ENDELSEticket.authors## <br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.ticket.creationdate##</span>&#160;:##ticket.creationdate## <br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.ticket.closedate##</span>&#160;:##ticket.closedate## <br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.ticket.requesttype##</span>&#160;:##ticket.requesttype##<br /> ##IFticket.itemtype## <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.ticket.item.name##</span>&#160;: ##ticket.itemtype## - ##ticket.item.name##    ##IFticket.item.model## - ##ticket.item.model##    ##ENDIFticket.item.model## ##IFticket.item.serial## -##ticket.item.serial## ##ENDIFticket.item.serial##&#160; ##IFticket.item.otherserial## -##ticket.item.otherserial##  ##ENDIFticket.item.otherserial## ##ENDIFticket.itemtype## <br /> ##IFticket.assigntousers## <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.ticket.assigntousers##</span>&#160;: ##ticket.assigntousers## ##ENDIFticket.assigntousers##<br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;">##lang.ticket.status## </span>&#160;: ##ticket.status##<br /> ##IFticket.assigntogroups## <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.ticket.assigntogroups##</span>&#160;: ##ticket.assigntogroups## ##ENDIFticket.assigntogroups##<br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.ticket.urgency##</span>&#160;: ##ticket.urgency##<br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.ticket.impact##</span>&#160;: ##ticket.impact##<br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.ticket.priority##</span>&#160;: ##ticket.priority## <br /> ##IFticket.user.email##<span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.ticket.user.email##</span>&#160;: ##ticket.user.email ##ENDIFticket.user.email##    <br /> ##IFticket.category##<span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;">##lang.ticket.category## </span>&#160;:##ticket.category## ##ENDIFticket.category## ##ELSEticket.category## ##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##    <br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.ticket.content##</span>&#160;: ##ticket.content##</p>\n<br />##IFticket.storestatus=6##<br /><span style="text-decoration: underline;"><strong><span style="color: #888888;">##lang.ticket.solvedate##</span></strong></span> : ##ticket.solvedate##<br /><span style="color: #888888;"><strong><span style="text-decoration: underline;">##lang.ticket.solution.type##</span></strong></span> : ##ticket.solution.type##<br /><span style="text-decoration: underline; color: #888888;"><strong>##lang.ticket.solution.description##</strong></span> : ##ticket.solution.description##<br />##ENDIFticket.storestatus##</p>\n<div class="description b">##lang.ticket.numberoffollowups##&#160;: ##ticket.numberoffollowups##</div>\n<p>##FOREACHfollowups##</p>\n<div class="description b"><br /> <strong> [##followup.date##] <em>##lang.followup.isprivate## : ##followup.isprivate## </em></strong><br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.followup.author## </span> ##followup.author##<br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.followup.description## </span> ##followup.description##<br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.followup.date## </span> ##followup.date##<br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.followup.requesttype## </span> ##followup.requesttype##</div>\n<p>##ENDFOREACHfollowups##</p>\n<div class="description b">##lang.ticket.numberoftasks##&#160;: ##ticket.numberoftasks##</div>\n<p>##FOREACHtasks##</p>\n<div class="description b"><br /> <strong> [##task.date##] <em>##lang.task.isprivate## : ##task.isprivate## </em></strong><br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.task.author##</span> ##task.author##<br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.task.description##</span> ##task.description##<br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.task.time##</span> ##task.time##<br /> <span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"> ##lang.task.category##</span> ##task.category##</div>\n<p>##ENDFOREACHtasks##</p>'),
(5, 12, '', '##contract.action##  ##contract.entity##', '##lang.contract.entity## : ##contract.entity##\n\n##FOREACHcontracts##\n##lang.contract.name## : ##contract.name##\n##lang.contract.number## : ##contract.number##\n##lang.contract.time## : ##contract.time##\n##IFcontract.type####lang.contract.type## : ##contract.type####ENDIFcontract.type##\n##contract.url##\n##ENDFOREACHcontracts##', '&lt;p&gt;##lang.contract.entity## : ##contract.entity##&lt;br /&gt;\n&lt;br /&gt;##FOREACHcontracts##&lt;br /&gt;##lang.contract.name## :\n##contract.name##&lt;br /&gt;\n##lang.contract.number## : ##contract.number##&lt;br /&gt;\n##lang.contract.time## : ##contract.time##&lt;br /&gt;\n##IFcontract.type####lang.contract.type## : ##contract.type##\n##ENDIFcontract.type##&lt;br /&gt;\n&lt;a href="##contract.url##"&gt;\n##contract.url##&lt;/a&gt;&lt;br /&gt;\n##ENDFOREACHcontracts##&lt;/p&gt;'),
(6, 5, '', '##ticket.action## ##ticket.title##', '##lang.ticket.url## : ##ticket.url## \n\n##lang.ticket.description## \n\n\n##lang.ticket.title##  :##ticket.title## \n\n##lang.ticket.authors##  :##IFticket.authors##\n##ticket.authors## ##ENDIFticket.authors##\n##ELSEticket.authors##--##ENDELSEticket.authors##   \n\n##IFticket.category## ##lang.ticket.category##  :##ticket.category##\n##ENDIFticket.category## ##ELSEticket.category##\n##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##\n\n##lang.ticket.content##  : ##ticket.content##\n##IFticket.itemtype##\n##lang.ticket.item.name##  : ##ticket.itemtype## - ##ticket.item.name##\n##ENDIFticket.itemtype##', '&lt;div&gt;##lang.ticket.url## : &lt;a href="##ticket.url##"&gt;\n##ticket.url##&lt;/a&gt;&lt;/div&gt;\n&lt;div class="description b"&gt;\n##lang.ticket.description##&lt;/div&gt;\n&lt;p&gt;&lt;span\nstyle="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;\n##lang.ticket.title##&lt;/span&gt;&#160;:##ticket.title##\n&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;\n##lang.ticket.authors##&lt;/span&gt;\n##IFticket.authors## ##ticket.authors##\n##ENDIFticket.authors##\n##ELSEticket.authors##--##ENDELSEticket.authors##\n&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;&#160\n;&lt;/span&gt;&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; &lt;/span&gt;\n##IFticket.category##&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;\n##lang.ticket.category## &lt;/span&gt;&#160;:##ticket.category##\n##ENDIFticket.category## ##ELSEticket.category##\n##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##\n&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;\n##lang.ticket.content##&lt;/span&gt;&#160;:\n##ticket.content##&lt;br /&gt;##IFticket.itemtype##\n&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;\n##lang.ticket.item.name##&lt;/span&gt;&#160;:\n##ticket.itemtype## - ##ticket.item.name##\n##ENDIFticket.itemtype##&lt;/p&gt;'),
(15, 15, '', '##lang.unicity.action##', '##lang.unicity.entity## : ##unicity.entity## \n\n##lang.unicity.itemtype## : ##unicity.itemtype## \n\n##lang.unicity.message## : ##unicity.message## \n\n##lang.unicity.action_user## : ##unicity.action_user## \n\n##lang.unicity.action_type## : ##unicity.action_type## \n\n##lang.unicity.date## : ##unicity.date##', '&lt;p&gt;##lang.unicity.entity## : ##unicity.entity##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.itemtype## : ##unicity.itemtype##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.message## : ##unicity.message##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.action_user## : ##unicity.action_user##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.action_type## : ##unicity.action_type##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.date## : ##unicity.date##&lt;/p&gt;'),
(7, 7, '', '##ticket.action## ##ticket.title##', '##FOREACHvalidations##\n\n##IFvalidation.storestatus=waiting##\n##validation.submission.title##\n##lang.validation.commentsubmission## : ##validation.commentsubmission##\n##ENDIFvalidation.storestatus##\n##ELSEvalidation.storestatus## ##validation.answer.title## ##ENDELSEvalidation.storestatus##\n\n##lang.ticket.url## : ##ticket.urlvalidation##\n\n##IFvalidation.status## ##lang.validation.status## : ##validation.status## ##ENDIFvalidation.status##\n##IFvalidation.commentvalidation##\n##lang.validation.commentvalidation## : ##validation.commentvalidation##\n##ENDIFvalidation.commentvalidation##\n##ENDFOREACHvalidations##', '&lt;div&gt;##FOREACHvalidations##&lt;/div&gt;\n&lt;p&gt;##IFvalidation.storestatus=waiting##&lt;/p&gt;\n&lt;div&gt;##validation.submission.title##&lt;/div&gt;\n&lt;div&gt;##lang.validation.commentsubmission## : ##validation.commentsubmission##&lt;/div&gt;\n&lt;div&gt;##ENDIFvalidation.storestatus##&lt;/div&gt;\n&lt;div&gt;##ELSEvalidation.storestatus## ##validation.answer.title## ##ENDELSEvalidation.storestatus##&lt;/div&gt;\n&lt;div&gt;&lt;/div&gt;\n&lt;div&gt;\n&lt;div&gt;##lang.ticket.url## : &lt;a href="##ticket.urlvalidation##"&gt; ##ticket.urlvalidation## &lt;/a&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;p&gt;##IFvalidation.status## ##lang.validation.status## : ##validation.status## ##ENDIFvalidation.status##\n&lt;br /&gt; ##IFvalidation.commentvalidation##&lt;br /&gt; ##lang.validation.commentvalidation## :\n&#160; ##validation.commentvalidation##&lt;br /&gt; ##ENDIFvalidation.commentvalidation##\n&lt;br /&gt;##ENDFOREACHvalidations##&lt;/p&gt;'),
(8, 6, '', '##ticket.action## ##ticket.entity##', '##lang.ticket.entity## : ##ticket.entity##\n \n##FOREACHtickets##\n\n##lang.ticket.title## : ##ticket.title##\n ##lang.ticket.status## : ##ticket.status##\n\n ##ticket.url## \n ##ENDFOREACHtickets##', '&lt;table class="tab_cadre" border="1" cellspacing="2" cellpadding="3"&gt;\n&lt;tbody&gt;\n&lt;tr&gt;\n&lt;td style="text-align: left;" width="auto" bgcolor="#cccccc"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##lang.ticket.authors##&lt;/span&gt;&lt;/td&gt;\n&lt;td style="text-align: left;" width="auto" bgcolor="#cccccc"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##lang.ticket.title##&lt;/span&gt;&lt;/td&gt;\n&lt;td style="text-align: left;" width="auto" bgcolor="#cccccc"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##lang.ticket.priority##&lt;/span&gt;&lt;/td&gt;\n&lt;td style="text-align: left;" width="auto" bgcolor="#cccccc"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##lang.ticket.status##&lt;/span&gt;&lt;/td&gt;\n&lt;td style="text-align: left;" width="auto" bgcolor="#cccccc"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##lang.ticket.attribution##&lt;/span&gt;&lt;/td&gt;\n&lt;td style="text-align: left;" width="auto" bgcolor="#cccccc"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##lang.ticket.creationdate##&lt;/span&gt;&lt;/td&gt;\n&lt;td style="text-align: left;" width="auto" bgcolor="#cccccc"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##lang.ticket.content##&lt;/span&gt;&lt;/td&gt;\n&lt;/tr&gt;\n##FOREACHtickets##                   \n&lt;tr&gt;\n&lt;td width="auto"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##ticket.authors##&lt;/span&gt;&lt;/td&gt;\n&lt;td width="auto"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;&lt;a href="##ticket.url##"&gt;##ticket.title##&lt;/a&gt;&lt;/span&gt;&lt;/td&gt;\n&lt;td width="auto"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##ticket.priority##&lt;/span&gt;&lt;/td&gt;\n&lt;td width="auto"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##ticket.status##&lt;/span&gt;&lt;/td&gt;\n&lt;td width="auto"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##IFticket.assigntousers####ticket.assigntousers##&lt;br /&gt;##ENDIFticket.assigntousers####IFticket.assigntogroups##&lt;br /&gt;##ticket.assigntogroups## ##ENDIFticket.assigntogroups####IFticket.assigntosupplier##&lt;br /&gt;##ticket.assigntosupplier## ##ENDIFticket.assigntosupplier##&lt;/span&gt;&lt;/td&gt;\n&lt;td width="auto"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##ticket.creationdate##&lt;/span&gt;&lt;/td&gt;\n&lt;td width="auto"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##ticket.content##&lt;/span&gt;&lt;/td&gt;\n&lt;/tr&gt;\n##ENDFOREACHtickets##\n&lt;/tbody&gt;\n&lt;/table&gt;'),
(9, 9, '', '##consumable.action##  ##consumable.entity##', '##lang.consumable.entity## : ##consumable.entity##\n \n\n##FOREACHconsumables##\n##lang.consumable.item## : ##consumable.item##\n \n\n##lang.consumable.reference## : ##consumable.reference##\n\n##lang.consumable.remaining## : ##consumable.remaining##\n\n##consumable.url## \n\n##ENDFOREACHconsumables##', '&lt;p&gt;\n##lang.consumable.entity## : ##consumable.entity##\n&lt;br /&gt; &lt;br /&gt;##FOREACHconsumables##\n&lt;br /&gt;##lang.consumable.item## : ##consumable.item##&lt;br /&gt;\n&lt;br /&gt;##lang.consumable.reference## : ##consumable.reference##&lt;br /&gt;\n##lang.consumable.remaining## : ##consumable.remaining##&lt;br /&gt;\n&lt;a href="##consumable.url##"&gt; ##consumable.url##&lt;/a&gt;&lt;br /&gt;\n   ##ENDFOREACHconsumables##&lt;/p&gt;'),
(10, 8, '', '##cartridge.action##  ##cartridge.entity##', '##lang.cartridge.entity## : ##cartridge.entity##\n \n\n##FOREACHcartridges##\n##lang.cartridge.item## : ##cartridge.item##\n \n\n##lang.cartridge.reference## : ##cartridge.reference##\n\n##lang.cartridge.remaining## : ##cartridge.remaining##\n\n##cartridge.url## \n ##ENDFOREACHcartridges##', '&lt;p&gt;##lang.cartridge.entity## : ##cartridge.entity##\n&lt;br /&gt; &lt;br /&gt;##FOREACHcartridges##\n&lt;br /&gt;##lang.cartridge.item## :\n##cartridge.item##&lt;br /&gt; &lt;br /&gt;\n##lang.cartridge.reference## :\n##cartridge.reference##&lt;br /&gt;\n##lang.cartridge.remaining## :\n##cartridge.remaining##&lt;br /&gt;\n&lt;a href="##cartridge.url##"&gt;\n##cartridge.url##&lt;/a&gt;&lt;br /&gt;\n##ENDFOREACHcartridges##&lt;/p&gt;'),
(11, 10, '', '##infocom.action##  ##infocom.entity##', '##lang.infocom.entity## : ##infocom.entity## \n \n\n##FOREACHinfocoms## \n\n##lang.infocom.itemtype## : ##infocom.itemtype##\n\n##lang.infocom.item## : ##infocom.item##\n \n\n##lang.infocom.expirationdate## : ##infocom.expirationdate##\n\n##infocom.url## \n ##ENDFOREACHinfocoms##', '&lt;p&gt;##lang.infocom.entity## : ##infocom.entity##\n&lt;br /&gt; &lt;br /&gt;##FOREACHinfocoms##\n&lt;br /&gt;##lang.infocom.itemtype## : ##infocom.itemtype##&lt;br /&gt;\n##lang.infocom.item## : ##infocom.item##&lt;br /&gt; &lt;br /&gt;\n##lang.infocom.expirationdate## : ##infocom.expirationdate##\n&lt;br /&gt; &lt;a href="##infocom.url##"&gt;\n##infocom.url##&lt;/a&gt;&lt;br /&gt;\n##ENDFOREACHinfocoms##&lt;/p&gt;'),
(12, 11, '', '##license.action##  ##license.entity##', '##lang.license.entity## : ##license.entity##\n\n##FOREACHlicenses## \n\n##lang.license.item## : ##license.item##\n\n##lang.license.serial## : ##license.serial##\n\n##lang.license.expirationdate## : ##license.expirationdate##\n\n##license.url## \n ##ENDFOREACHlicenses##', '&lt;p&gt;\n##lang.license.entity## : ##license.entity##&lt;br /&gt;\n##FOREACHlicenses##\n&lt;br /&gt;##lang.license.item## : ##license.item##&lt;br /&gt;\n##lang.license.serial## : ##license.serial##&lt;br /&gt;\n##lang.license.expirationdate## : ##license.expirationdate##\n&lt;br /&gt; &lt;a href="##license.url##"&gt; ##license.url##\n&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHlicenses##&lt;/p&gt;'),
(13, 13, '', '##user.action##', '##user.realname## ##user.firstname##\n\n##lang.passwordforget.information##\n\n##lang.passwordforget.link## ##user.passwordforgeturl##', '&lt;p&gt;&lt;strong&gt;##user.realname## ##user.firstname##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;##lang.passwordforget.information##&lt;/p&gt;\n&lt;p&gt;##lang.passwordforget.link## &lt;a title="##user.passwordforgeturl##" href="##user.passwordforgeturl##"&gt;##user.passwordforgeturl##&lt;/a&gt;&lt;/p&gt;'),
(14, 14, '', '##ticket.action## ##ticket.title##', '##lang.ticket.title## : ##ticket.title##\n\n##lang.ticket.closedate## : ##ticket.closedate##\n\n##lang.satisfaction.text## ##ticket.urlsatisfaction##', '&lt;p&gt;##lang.ticket.title## : ##ticket.title##&lt;/p&gt;\n&lt;p&gt;##lang.ticket.closedate## : ##ticket.closedate##&lt;/p&gt;\n&lt;p&gt;##lang.satisfaction.text## &lt;a href="##ticket.urlsatisfaction##"&gt;##ticket.urlsatisfaction##&lt;/a&gt;&lt;/p&gt;'),
(16, 16, '', '##crontask.action##', '##lang.crontask.warning## \n\n##FOREACHcrontasks## \n ##crontask.name## : ##crontask.description##\n \n##ENDFOREACHcrontasks##', '&lt;p&gt;##lang.crontask.warning##&lt;/p&gt;\n&lt;p&gt;##FOREACHcrontasks## &lt;br /&gt;&lt;a href="##crontask.url##"&gt;##crontask.name##&lt;/a&gt; : ##crontask.description##&lt;br /&gt; &lt;br /&gt;##ENDFOREACHcrontasks##&lt;/p&gt;'),
(17, 17, '', '##problem.action## ##problem.title##', '##IFproblem.storestatus=5##\n ##lang.problem.url## : ##problem.urlapprove##\n ##lang.problem.solvedate## : ##problem.solvedate##\n ##lang.problem.solution.type## : ##problem.solution.type##\n ##lang.problem.solution.description## : ##problem.solution.description## ##ENDIFproblem.storestatus##\n ##ELSEproblem.storestatus## ##lang.problem.url## : ##problem.url## ##ENDELSEproblem.storestatus##\n\n ##lang.problem.description##\n\n ##lang.problem.title##  :##problem.title##\n ##lang.problem.authors##  :##IFproblem.authors## ##problem.authors## ##ENDIFproblem.authors## ##ELSEproblem.authors##--##ENDELSEproblem.authors##\n ##lang.problem.creationdate##  :##problem.creationdate##\n ##IFproblem.assigntousers## ##lang.problem.assigntousers##  : ##problem.assigntousers## ##ENDIFproblem.assigntousers##\n ##lang.problem.status##  : ##problem.status##\n ##IFproblem.assigntogroups## ##lang.problem.assigntogroups##  : ##problem.assigntogroups## ##ENDIFproblem.assigntogroups##\n ##lang.problem.urgency##  : ##problem.urgency##\n ##lang.problem.impact##  : ##problem.impact##\n ##lang.problem.priority## : ##problem.priority##\n##IFproblem.category## ##lang.problem.category##  :##problem.category## ##ENDIFproblem.category## ##ELSEproblem.category## ##lang.problem.nocategoryassigned## ##ENDELSEproblem.category##\n ##lang.problem.content##  : ##problem.content##\n\n##IFproblem.storestatus=6##\n ##lang.problem.solvedate## : ##problem.solvedate##\n ##lang.problem.solution.type## : ##problem.solution.type##\n ##lang.problem.solution.description## : ##problem.solution.description##\n##ENDIFproblem.storestatus##\n ##lang.problem.numberoftickets## : ##problem.numberoftickets##\n\n##FOREACHtickets##\n [##ticket.date##] ##lang.problem.title## : ##ticket.title##\n ##lang.problem.content## ##ticket.content##\n\n##ENDFOREACHtickets##\n ##lang.problem.numberoftasks## : ##problem.numberoftasks##\n\n##FOREACHtasks##\n [##task.date##]\n ##lang.task.author## ##task.author##\n ##lang.task.description## ##task.description##\n ##lang.task.time## ##task.time##\n ##lang.task.category## ##task.category##\n\n##ENDFOREACHtasks##\n', '&lt;p&gt;##IFproblem.storestatus=5##&lt;/p&gt;\n&lt;div&gt;##lang.problem.url## : &lt;a href="##problem.urlapprove##"&gt;##problem.urlapprove##&lt;/a&gt;&lt;/div&gt;\n&lt;div&gt;&lt;span style="color: #888888;"&gt;&lt;strong&gt;&lt;span style="text-decoration: underline;"&gt;##lang.problem.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solvedate##&lt;br /&gt;&lt;span style="text-decoration: underline; color: #888888;"&gt;&lt;strong&gt;##lang.problem.solution.type##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.type##&lt;br /&gt;&lt;span style="text-decoration: underline; color: #888888;"&gt;&lt;strong&gt;##lang.problem.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.description## ##ENDIFproblem.storestatus##&lt;/div&gt;\n&lt;div&gt;##ELSEproblem.storestatus## ##lang.problem.url## : &lt;a href="##problem.url##"&gt;##problem.url##&lt;/a&gt; ##ENDELSEproblem.storestatus##&lt;/div&gt;\n&lt;p class="description b"&gt;&lt;strong&gt;##lang.problem.description##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.title##&lt;/span&gt;&#160;:##problem.title## &lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.authors##&lt;/span&gt;&#160;:##IFproblem.authors## ##problem.authors## ##ENDIFproblem.authors##    ##ELSEproblem.authors##--##ENDELSEproblem.authors## &lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.creationdate##&lt;/span&gt;&#160;:##problem.creationdate## &lt;br /&gt; ##IFproblem.assigntousers## &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.assigntousers##&lt;/span&gt;&#160;: ##problem.assigntousers## ##ENDIFproblem.assigntousers##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.problem.status## &lt;/span&gt;&#160;: ##problem.status##&lt;br /&gt; ##IFproblem.assigntogroups## &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.assigntogroups##&lt;/span&gt;&#160;: ##problem.assigntogroups## ##ENDIFproblem.assigntogroups##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.urgency##&lt;/span&gt;&#160;: ##problem.urgency##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.impact##&lt;/span&gt;&#160;: ##problem.impact##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.priority##&lt;/span&gt; : ##problem.priority## &lt;br /&gt;##IFproblem.category##&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.problem.category## &lt;/span&gt;&#160;:##problem.category##  ##ENDIFproblem.category## ##ELSEproblem.category##  ##lang.problem.nocategoryassigned## ##ENDELSEproblem.category##    &lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.content##&lt;/span&gt;&#160;: ##problem.content##&lt;/p&gt;\n&lt;p&gt;##IFproblem.storestatus=6##&lt;br /&gt;&lt;span style="text-decoration: underline;"&gt;&lt;strong&gt;&lt;span style="color: #888888;"&gt;##lang.problem.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solvedate##&lt;br /&gt;&lt;span style="color: #888888;"&gt;&lt;strong&gt;&lt;span style="text-decoration: underline;"&gt;##lang.problem.solution.type##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.type##&lt;br /&gt;&lt;span style="text-decoration: underline; color: #888888;"&gt;&lt;strong&gt;##lang.problem.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.description##&lt;br /&gt;##ENDIFproblem.storestatus##&lt;/p&gt;\n&lt;div class="description b"&gt;##lang.problem.numberoftickets##&#160;: ##problem.numberoftickets##&lt;/div&gt;\n&lt;p&gt;##FOREACHtickets##&lt;/p&gt;\n&lt;div&gt;&lt;strong&gt; [##ticket.date##] &lt;em&gt;##lang.problem.title## : &lt;a href="##ticket.url##"&gt;##ticket.title## &lt;/a&gt;&lt;/em&gt;&lt;/strong&gt;&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; &lt;/span&gt;&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.problem.content## &lt;/span&gt; ##ticket.content##\n&lt;p&gt;##ENDFOREACHtickets##&lt;/p&gt;\n&lt;div class="description b"&gt;##lang.problem.numberoftasks##&#160;: ##problem.numberoftasks##&lt;/div&gt;\n&lt;p&gt;##FOREACHtasks##&lt;/p&gt;\n&lt;div class="description b"&gt;&lt;strong&gt;[##task.date##] &lt;/strong&gt;&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.task.author##&lt;/span&gt; ##task.author##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.task.description##&lt;/span&gt; ##task.description##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.task.time##&lt;/span&gt; ##task.time##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.task.category##&lt;/span&gt; ##task.category##&lt;/div&gt;\n&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;\n&lt;/div&gt;'),
(18, 18, '', '##recall.action##: ##recall.item.name##', '##recall.action##: ##recall.item.name##\n\n##recall.item.content##\n\n##lang.recall.planning.begin##: ##recall.planning.begin##\n##lang.recall.planning.end##: ##recall.planning.end##\n##lang.recall.planning.state##: ##recall.planning.state##\n##lang.recall.item.private##: ##recall.item.private##', '&lt;p&gt;##recall.action##: &lt;a href="##recall.item.url##"&gt;##recall.item.name##&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;##recall.item.content##&lt;/p&gt;\n&lt;p&gt;##lang.recall.planning.begin##: ##recall.planning.begin##&lt;br /&gt;##lang.recall.planning.end##: ##recall.planning.end##&lt;br /&gt;##lang.recall.planning.state##: ##recall.planning.state##&lt;br /&gt;##lang.recall.item.private##: ##recall.item.private##&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_notimportedemails`
--

CREATE TABLE `glpi_notimportedemails` (
  `id` int(11) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `mailcollectors_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `subject` text,
  `messageid` varchar(255) NOT NULL,
  `reason` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_operatingsystems`
--

CREATE TABLE `glpi_operatingsystems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_operatingsystemservicepacks`
--

CREATE TABLE `glpi_operatingsystemservicepacks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_operatingsystemversions`
--

CREATE TABLE `glpi_operatingsystemversions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_peripheralmodels`
--

CREATE TABLE `glpi_peripheralmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_peripherals`
--

CREATE TABLE `glpi_peripherals` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `peripheraltypes_id` int(11) NOT NULL DEFAULT '0',
  `peripheralmodels_id` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_peripheraltypes`
--

CREATE TABLE `glpi_peripheraltypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_phonemodels`
--

CREATE TABLE `glpi_phonemodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_phonepowersupplies`
--

CREATE TABLE `glpi_phonepowersupplies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_phones`
--

CREATE TABLE `glpi_phones` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firmware` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `phonetypes_id` int(11) NOT NULL DEFAULT '0',
  `phonemodels_id` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonepowersupplies_id` int(11) NOT NULL DEFAULT '0',
  `number_line` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `have_headset` tinyint(1) NOT NULL DEFAULT '0',
  `have_hp` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_phonetypes`
--

CREATE TABLE `glpi_phonetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_planningrecalls`
--

CREATE TABLE `glpi_planningrecalls` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `before_time` int(11) NOT NULL DEFAULT '-10',
  `when` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_plugins`
--

CREATE TABLE `glpi_plugins` (
  `id` int(11) NOT NULL,
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PLUGIN_* constant',
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_printermodels`
--

CREATE TABLE `glpi_printermodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_printers`
--

CREATE TABLE `glpi_printers` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `have_serial` tinyint(1) NOT NULL DEFAULT '0',
  `have_parallel` tinyint(1) NOT NULL DEFAULT '0',
  `have_usb` tinyint(1) NOT NULL DEFAULT '0',
  `have_wifi` tinyint(1) NOT NULL DEFAULT '0',
  `have_ethernet` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `memory_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `printertypes_id` int(11) NOT NULL DEFAULT '0',
  `printermodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `init_pages_counter` int(11) NOT NULL DEFAULT '0',
  `last_pages_counter` int(11) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_printertypes`
--

CREATE TABLE `glpi_printertypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_problems`
--

CREATE TABLE `glpi_problems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `content` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `impactcontent` longtext COLLATE utf8_unicode_ci,
  `causecontent` longtext COLLATE utf8_unicode_ci,
  `symptomcontent` longtext COLLATE utf8_unicode_ci,
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `solution` text COLLATE utf8_unicode_ci,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin_waiting_date` datetime DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_problems_suppliers`
--

CREATE TABLE `glpi_problems_suppliers` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_problems_tickets`
--

CREATE TABLE `glpi_problems_tickets` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_problems_users`
--

CREATE TABLE `glpi_problems_users` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_problemtasks`
--

CREATE TABLE `glpi_problemtasks` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_profiles`
--

CREATE TABLE `glpi_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interface` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'helpdesk',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `computer` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monitor` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `software` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `networking` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internet` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `printer` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `peripheral` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cartridge` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consumable` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_enterprise` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contract` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `infocom` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `knowbase` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `knowbase_admin` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faq` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reservation_helpdesk` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reservation_central` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reports` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dropdown` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_dropdown` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typedoc` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_rule_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_import` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_ldap` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_softwarecategories` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search_config` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search_config_global` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_update` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_authtype` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transfer` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logs` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reminder_public` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rssfeed_public` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bookmark_public` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backup` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_add_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `global_add_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `global_add_tasks` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_priority` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `own_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `steal_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assign_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_all_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_assign_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_full_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observe_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_tasks` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_planning` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_group_planning` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_all_planning` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statistic` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_update` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helpdesk_hardware` int(11) NOT NULL DEFAULT '0',
  `helpdesk_item_type` text COLLATE utf8_unicode_ci,
  `ticket_status` text COLLATE utf8_unicode_ci COMMENT 'json encoded array of from/dest allowed status change',
  `show_group_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_group_hardware` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_dictionnary_software` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_dictionnary_dropdown` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `budget` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_externalauth_users` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_mailcollector` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `validate_request` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_request_validation` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calendar` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sla` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_dictionnary_printer` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_own_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_helpdesk` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_my_problem` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_all_problem` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_all_problem` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_problem` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `problem_status` text COLLATE utf8_unicode_ci COMMENT 'json encoded array of from/dest allowed status change',
  `create_ticket_on_login` tinyint(1) NOT NULL DEFAULT '0',
  `tickettemplate` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticketrecurrent` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticketcost` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validate_incident` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_incident_validation` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_validations` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_profiles`
--

INSERT INTO `glpi_profiles` (`id`, `name`, `interface`, `is_default`, `computer`, `monitor`, `software`, `networking`, `internet`, `printer`, `peripheral`, `cartridge`, `consumable`, `phone`, `notes`, `contact_enterprise`, `document`, `contract`, `infocom`, `knowbase`, `knowbase_admin`, `faq`, `reservation_helpdesk`, `reservation_central`, `reports`, `dropdown`, `entity_dropdown`, `device`, `typedoc`, `link`, `config`, `rule_ticket`, `entity_rule_ticket`, `rule_import`, `rule_ldap`, `rule_softwarecategories`, `search_config`, `search_config_global`, `check_update`, `profile`, `user`, `user_authtype`, `group`, `entity`, `transfer`, `logs`, `reminder_public`, `rssfeed_public`, `bookmark_public`, `backup`, `create_ticket`, `delete_ticket`, `add_followups`, `group_add_followups`, `global_add_followups`, `global_add_tasks`, `update_ticket`, `update_priority`, `own_ticket`, `steal_ticket`, `assign_ticket`, `show_all_ticket`, `show_assign_ticket`, `show_full_ticket`, `observe_ticket`, `update_followups`, `update_tasks`, `show_planning`, `show_group_planning`, `show_all_planning`, `statistic`, `password_update`, `helpdesk_hardware`, `helpdesk_item_type`, `ticket_status`, `show_group_ticket`, `show_group_hardware`, `rule_dictionnary_software`, `rule_dictionnary_dropdown`, `budget`, `import_externalauth_users`, `notification`, `rule_mailcollector`, `date_mod`, `comment`, `validate_request`, `create_request_validation`, `calendar`, `sla`, `rule_dictionnary_printer`, `update_own_followups`, `delete_followups`, `entity_helpdesk`, `show_my_problem`, `show_all_problem`, `edit_all_problem`, `delete_problem`, `problem_status`, `create_ticket_on_login`, `tickettemplate`, `ticketrecurrent`, `ticketcost`, `validate_incident`, `create_incident_validation`, `delete_validations`, `tickettemplates_id`) VALUES
(1, 'Self-Service', 'helpdesk', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'r', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'r', 'r', NULL, NULL, '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', 1, '["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software"]', '[]', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', 0, NULL, NULL, 'r', NULL, NULL, NULL, 0),
(2, 'Observer', 'central', 0, 'r', 'r', 'r', 'r', 'r', 'r', 'r', 'r', 'r', 'r', 'r', 'r', 'r', 'r', 'r', 'r', NULL, 'r', '1', 'r', 'r', NULL, NULL, NULL, 'r', 'r', NULL, NULL, NULL, NULL, NULL, NULL, 'w', NULL, 'r', NULL, 'r', 'r', 'r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '1', '0', '0', '1', '0', '0', '1', '1', 1, '["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software"]', '[]', '0', '0', NULL, NULL, 'r', NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '0', NULL, '1', '1', NULL, NULL, '[]', 0, NULL, NULL, 'r', '1', '1', '1', 0),
(3, 'Admin', 'central', 0, 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', NULL, 'w', '1', 'w', 'r', 'w', 'w', 'w', 'w', 'w', NULL, NULL, NULL, NULL, NULL, NULL, 'w', 'w', 'r', 'r', 'w', 'w', 'w', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 3, '["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software"]', '[]', '0', '0', NULL, NULL, 'w', 'w', NULL, NULL, NULL, NULL, '1', '1', 'w', NULL, NULL, '1', '1', NULL, '1', '1', '1', '1', '[]', 0, NULL, NULL, 'w', '1', '1', '1', 0),
(4, 'Super-Admin', 'central', 0, 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', '1', 'w', '1', 'w', 'r', 'w', 'w', 'w', 'w', 'w', 'w', 'r', 'w', 'w', 'w', 'w', 'w', 'w', 'r', 'w', 'w', 'w', 'w', 'w', 'w', 'r', 'w', 'w', 'w', 'w', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 3, '["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software"]', '[]', '0', '0', 'w', 'w', 'w', 'w', 'w', 'w', NULL, NULL, '1', '1', 'w', 'w', 'w', '1', '1', 'w', '1', '1', '1', '1', '[]', 0, 'w', 'w', 'w', '1', '1', '1', 0),
(5, 'Hotliner', 'central', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '1', NULL, '1', NULL, '1', NULL, NULL, NULL, '1', '1', NULL, '1', '1', NULL, NULL, '1', NULL, NULL, '1', '1', 3, '["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software"]', '[]', NULL, NULL, NULL, NULL, NULL, 'w', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, '[]', 1, 'r', NULL, 'w', NULL, '1', NULL, 0),
(6, 'Technician', 'central', 0, 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', NULL, 'w', NULL, NULL, 'w', NULL, 'w', '1', 'w', 'r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'w', NULL, 'r', 'r', 'r', NULL, 'w', 'w', NULL, NULL, '1', NULL, '1', NULL, '1', '1', '1', NULL, '1', NULL, NULL, '1', '1', '1', '1', '1', '1', '1', NULL, NULL, '1', '1', 3, '["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software"]', '[]', NULL, NULL, NULL, NULL, NULL, 'w', NULL, NULL, NULL, NULL, NULL, '1', NULL, 'r', NULL, '1', NULL, NULL, '1', '1', NULL, NULL, '[]', 0, 'r', 'r', 'w', NULL, '1', NULL, 0),
(7, 'Supervisor', 'central', 0, 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', NULL, 'w', NULL, NULL, 'w', NULL, 'w', '1', 'w', 'r', NULL, 'w', NULL, NULL, NULL, NULL, 'r', 'w', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'w', NULL, 'r', 'r', 'r', 'r', 'w', 'w', NULL, NULL, '1', '1', '1', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL, '1', '1', '1', 3, '["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software"]', '[]', NULL, NULL, NULL, NULL, NULL, 'w', NULL, 'w', NULL, NULL, '1', '1', 'w', 'w', NULL, '1', '1', NULL, '1', '1', '1', '1', '[]', 0, 'w', 'w', 'w', '1', '1', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_profiles_reminders`
--

CREATE TABLE `glpi_profiles_reminders` (
  `id` int(11) NOT NULL,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_profiles_rssfeeds`
--

CREATE TABLE `glpi_profiles_rssfeeds` (
  `id` int(11) NOT NULL,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_profiles_users`
--

CREATE TABLE `glpi_profiles_users` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_profiles_users`
--

INSERT INTO `glpi_profiles_users` (`id`, `users_id`, `profiles_id`, `entities_id`, `is_recursive`, `is_dynamic`) VALUES
(2, 2, 4, 0, 1, 0),
(3, 3, 1, 0, 1, 0),
(4, 4, 6, 0, 1, 0),
(5, 5, 2, 0, 1, 0),
(6, 6, 1, 1, 0, 0),
(7, 7, 1, 1, 0, 0),
(8, 8, 1, 1, 0, 0),
(9, 11, 1, 2, 0, 0),
(10, 12, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_reminders`
--

CREATE TABLE `glpi_reminders` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `is_planned` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `begin_view_date` datetime DEFAULT NULL,
  `end_view_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_reminders_users`
--

CREATE TABLE `glpi_reminders_users` (
  `id` int(11) NOT NULL,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_requesttypes`
--

CREATE TABLE `glpi_requesttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_helpdesk_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_mail_default` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_requesttypes`
--

INSERT INTO `glpi_requesttypes` (`id`, `name`, `is_helpdesk_default`, `is_mail_default`, `comment`) VALUES
(1, 'Helpdesk', 1, 0, NULL),
(2, 'E-Mail', 0, 1, NULL),
(3, 'Phone', 0, 0, NULL),
(4, 'Direct', 0, 0, NULL),
(5, 'Written', 0, 0, NULL),
(6, 'Other', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_reservationitems`
--

CREATE TABLE `glpi_reservationitems` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_reservations`
--

CREATE TABLE `glpi_reservations` (
  `id` int(11) NOT NULL,
  `reservationitems_id` int(11) NOT NULL DEFAULT '0',
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `group` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rssfeeds`
--

CREATE TABLE `glpi_rssfeeds` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `refresh_rate` int(11) NOT NULL DEFAULT '86400',
  `max_items` int(11) NOT NULL DEFAULT '20',
  `have_error` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rssfeeds_users`
--

CREATE TABLE `glpi_rssfeeds_users` (
  `id` int(11) NOT NULL,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_ruleactions`
--

CREATE TABLE `glpi_ruleactions` (
  `id` int(11) NOT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'VALUE IN (assign, regex_result, append_regex_result, affectbyip, affectbyfqdn, affectbymac)',
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_ruleactions`
--

INSERT INTO `glpi_ruleactions` (`id`, `rules_id`, `action_type`, `field`, `value`) VALUES
(6, 6, 'fromitem', 'locations_id', '1'),
(2, 2, 'assign', 'entities_id', '0'),
(3, 3, 'assign', 'entities_id', '0'),
(4, 4, 'assign', '_refuse_email_no_response', '1'),
(5, 5, 'assign', '_refuse_email_no_response', '1'),
(7, 7, 'fromuser', 'locations_id', '1');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecachecomputermodels`
--

CREATE TABLE `glpi_rulecachecomputermodels` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecachecomputertypes`
--

CREATE TABLE `glpi_rulecachecomputertypes` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecachemanufacturers`
--

CREATE TABLE `glpi_rulecachemanufacturers` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecachemonitormodels`
--

CREATE TABLE `glpi_rulecachemonitormodels` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecachemonitortypes`
--

CREATE TABLE `glpi_rulecachemonitortypes` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecachenetworkequipmentmodels`
--

CREATE TABLE `glpi_rulecachenetworkequipmentmodels` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecachenetworkequipmenttypes`
--

CREATE TABLE `glpi_rulecachenetworkequipmenttypes` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecacheoperatingsystems`
--

CREATE TABLE `glpi_rulecacheoperatingsystems` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecacheoperatingsystemservicepacks`
--

CREATE TABLE `glpi_rulecacheoperatingsystemservicepacks` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecacheoperatingsystemversions`
--

CREATE TABLE `glpi_rulecacheoperatingsystemversions` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecacheperipheralmodels`
--

CREATE TABLE `glpi_rulecacheperipheralmodels` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecacheperipheraltypes`
--

CREATE TABLE `glpi_rulecacheperipheraltypes` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecachephonemodels`
--

CREATE TABLE `glpi_rulecachephonemodels` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecachephonetypes`
--

CREATE TABLE `glpi_rulecachephonetypes` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecacheprintermodels`
--

CREATE TABLE `glpi_rulecacheprintermodels` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecacheprinters`
--

CREATE TABLE `glpi_rulecacheprinters` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ignore_import` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_global` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecacheprintertypes`
--

CREATE TABLE `glpi_rulecacheprintertypes` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecachesoftwares`
--

CREATE TABLE `glpi_rulecachesoftwares` (
  `id` int(11) NOT NULL,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ignore_import` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_helpdesk_visible` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_entities_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulecriterias`
--

CREATE TABLE `glpi_rulecriterias` (
  `id` int(11) NOT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_rulecriterias`
--

INSERT INTO `glpi_rulecriterias` (`id`, `rules_id`, `criteria`, `condition`, `pattern`) VALUES
(9, 6, 'locations_id', 9, '1'),
(2, 2, 'uid', 0, '*'),
(3, 2, 'samaccountname', 0, '*'),
(4, 2, 'MAIL_EMAIL', 0, '*'),
(5, 3, 'subject', 6, '/.*/'),
(6, 4, 'x-auto-response-suppress', 6, '/\\S+/'),
(7, 5, 'auto-submitted', 6, '/\\S+/'),
(8, 5, 'auto-submitted', 1, 'no'),
(10, 6, 'items_locations', 8, '1'),
(11, 7, 'locations_id', 9, '1'),
(12, 7, 'users_locations', 8, '1');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rulerightparameters`
--

CREATE TABLE `glpi_rulerightparameters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_rulerightparameters`
--

INSERT INTO `glpi_rulerightparameters` (`id`, `name`, `value`, `comment`) VALUES
(1, '(LDAP)Organization', 'o', ''),
(2, '(LDAP)Common Name', 'cn', ''),
(3, '(LDAP)Department Number', 'departmentnumber', ''),
(4, '(LDAP)Email', 'mail', ''),
(5, 'Object Class', 'objectclass', ''),
(6, '(LDAP)User ID', 'uid', ''),
(7, '(LDAP)Telephone Number', 'phone', ''),
(8, '(LDAP)Employee Number', 'employeenumber', ''),
(9, '(LDAP)Manager', 'manager', ''),
(10, '(LDAP)DistinguishedName', 'dn', ''),
(12, '(AD)User ID', 'samaccountname', ''),
(13, '(LDAP) Title', 'title', ''),
(14, '(LDAP) MemberOf', 'memberof', '');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_rules`
--

CREATE TABLE `glpi_rules` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `sub_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ranking` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `match` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_rules`
--

INSERT INTO `glpi_rules` (`id`, `entities_id`, `sub_type`, `ranking`, `name`, `description`, `match`, `is_active`, `comment`, `date_mod`, `is_recursive`) VALUES
(2, 0, 'RuleRight', 1, 'Root', '', 'OR', 1, NULL, NULL, 0),
(3, 0, 'RuleMailCollector', 3, 'Root', '', 'OR', 1, NULL, NULL, 0),
(4, 0, 'RuleMailCollector', 1, 'Auto-Reply X-Auto-Response-Suppress', 'Exclude Auto-Reply emails using X-Auto-Response-Suppress header', 'AND', 1, NULL, '2011-01-18 11:40:42', 1),
(5, 0, 'RuleMailCollector', 2, 'Auto-Reply Auto-Submitted', 'Exclude Auto-Reply emails using Auto-Submitted header', 'AND', 1, NULL, '2011-01-18 11:40:42', 1),
(6, 0, 'RuleTicket', 1, 'Ticket location from item', '', 'AND', 0, 'Automatically generated by GLPI 0.84', NULL, 1),
(7, 0, 'RuleTicket', 2, 'Ticket location from user', '', 'AND', 0, 'Automatically generated by GLPI 0.84', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_slalevelactions`
--

CREATE TABLE `glpi_slalevelactions` (
  `id` int(11) NOT NULL,
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_slalevelcriterias`
--

CREATE TABLE `glpi_slalevelcriterias` (
  `id` int(11) NOT NULL,
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_slalevels`
--

CREATE TABLE `glpi_slalevels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slas_id` int(11) NOT NULL DEFAULT '0',
  `execution_time` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `match` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php *_MATCHING constant'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_slalevels_tickets`
--

CREATE TABLE `glpi_slalevels_tickets` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_slas`
--

CREATE TABLE `glpi_slas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `resolution_time` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_softwarecategories`
--

CREATE TABLE `glpi_softwarecategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_softwarecategories`
--

INSERT INTO `glpi_softwarecategories` (`id`, `name`, `comment`) VALUES
(1, 'FUSION', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_softwarelicenses`
--

CREATE TABLE `glpi_softwarelicenses` (
  `id` int(11) NOT NULL,
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL DEFAULT '0',
  `softwarelicensetypes_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `softwareversions_id_buy` int(11) NOT NULL DEFAULT '0',
  `softwareversions_id_use` int(11) NOT NULL DEFAULT '0',
  `expire` date DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_softwarelicensetypes`
--

CREATE TABLE `glpi_softwarelicensetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_softwarelicensetypes`
--

INSERT INTO `glpi_softwarelicensetypes` (`id`, `name`, `comment`) VALUES
(1, 'OEM', '');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_softwares`
--

CREATE TABLE `glpi_softwares` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_update` tinyint(1) NOT NULL DEFAULT '0',
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '1',
  `softwarecategories_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_softwareversions`
--

CREATE TABLE `glpi_softwareversions` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `operatingsystems_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_solutiontemplates`
--

CREATE TABLE `glpi_solutiontemplates` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_solutiontypes`
--

CREATE TABLE `glpi_solutiontypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_ssovariables`
--

CREATE TABLE `glpi_ssovariables` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_ssovariables`
--

INSERT INTO `glpi_ssovariables` (`id`, `name`, `comment`) VALUES
(1, 'HTTP_AUTH_USER', ''),
(2, 'REMOTE_USER', ''),
(3, 'PHP_AUTH_USER', ''),
(4, 'USERNAME', ''),
(5, 'REDIRECT_REMOTE_USER', ''),
(6, 'HTTP_REMOTE_USER', '');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_states`
--

CREATE TABLE `glpi_states` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `states_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_suppliers`
--

CREATE TABLE `glpi_suppliers` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suppliertypes_id` int(11) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_suppliers_tickets`
--

CREATE TABLE `glpi_suppliers_tickets` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_suppliertypes`
--

CREATE TABLE `glpi_suppliertypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_taskcategories`
--

CREATE TABLE `glpi_taskcategories` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_helpdeskvisible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_ticketcosts`
--

CREATE TABLE `glpi_ticketcosts` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `cost_time` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_material` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_ticketfollowups`
--

CREATE TABLE `glpi_ticketfollowups` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `requesttypes_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_ticketrecurrents`
--

CREATE TABLE `glpi_ticketrecurrents` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `begin_date` datetime DEFAULT NULL,
  `periodicity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_before` int(11) NOT NULL DEFAULT '0',
  `next_creation_date` datetime DEFAULT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `end_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_tickets`
--

CREATE TABLE `glpi_tickets` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `requesttypes_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `solution` text COLLATE utf8_unicode_ci,
  `global_validation` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none',
  `slas_id` int(11) NOT NULL DEFAULT '0',
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `due_date` datetime DEFAULT NULL,
  `begin_waiting_date` datetime DEFAULT NULL,
  `sla_waiting_duration` int(11) NOT NULL DEFAULT '0',
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `takeintoaccount_delay_stat` int(11) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_tickets`
--

INSERT INTO `glpi_tickets` (`id`, `entities_id`, `name`, `date`, `closedate`, `solvedate`, `date_mod`, `users_id_lastupdater`, `status`, `users_id_recipient`, `requesttypes_id`, `itemtype`, `items_id`, `content`, `urgency`, `impact`, `priority`, `itilcategories_id`, `type`, `solutiontypes_id`, `solution`, `global_validation`, `slas_id`, `slalevels_id`, `due_date`, `begin_waiting_date`, `sla_waiting_duration`, `waiting_duration`, `close_delay_stat`, `solve_delay_stat`, `takeintoaccount_delay_stat`, `actiontime`, `is_deleted`, `locations_id`) VALUES
(1, 0, 'tabtree', '2017-03-14 09:51:00', NULL, NULL, '2017-03-14 09:52:07', 2, 2, 2, 1, '', 0, 'system is not wotking', 3, 3, 3, 0, 1, 0, NULL, 'none', 0, 0, NULL, NULL, 0, 0, 0, 0, 67, 0, 0, 0),
(2, 0, 'computer1', '2017-03-14 13:56:00', NULL, NULL, '2017-03-14 10:07:42', 2, 2, 2, 1, '', 0, 'monitor is not working', 3, 3, 3, 1, 2, 0, NULL, 'none', 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 'system', '2017-03-14 10:31:00', NULL, NULL, '2017-03-14 10:33:04', 2, 2, 2, 1, '', 0, 'computer is not working', 3, 3, 3, 1, 1, 0, NULL, 'none', 0, 0, NULL, NULL, 0, 0, 0, 0, 124, 0, 0, 1),
(4, 0, 'Not Working', '2017-03-14 11:09:00', NULL, NULL, '2017-03-14 11:10:29', 2, 2, 2, 1, '', 0, 'Not Working', 3, 3, 3, 0, 1, 0, NULL, 'none', 0, 0, NULL, NULL, 0, 0, 0, 0, 89, 0, 0, 0),
(5, 0, 'monitor', '2017-03-14 12:41:00', NULL, NULL, '2017-03-14 12:42:23', 2, 2, 2, 1, '', 0, 'monitor is not working', 3, 3, 3, 2, 1, 0, NULL, 'none', 0, 0, NULL, NULL, 0, 0, 0, 0, 83, 0, 0, 1),
(6, 0, 'hjj', '2017-03-16 05:50:00', NULL, NULL, '2017-03-16 05:53:03', 2, 2, 2, 1, '', 0, 'hjj', 3, 3, 3, 4, 2, 0, NULL, 'none', 0, 0, NULL, NULL, 0, 0, 0, 0, 183, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_ticketsatisfactions`
--

CREATE TABLE `glpi_ticketsatisfactions` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `date_begin` datetime DEFAULT NULL,
  `date_answered` datetime DEFAULT NULL,
  `satisfaction` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_tickets_tickets`
--

CREATE TABLE `glpi_tickets_tickets` (
  `id` int(11) NOT NULL,
  `tickets_id_1` int(11) NOT NULL DEFAULT '0',
  `tickets_id_2` int(11) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_tickets_users`
--

CREATE TABLE `glpi_tickets_users` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '1',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_tickets_users`
--

INSERT INTO `glpi_tickets_users` (`id`, `tickets_id`, `users_id`, `type`, `use_notification`, `alternative_email`) VALUES
(1, 1, 2, 2, 1, NULL),
(2, 2, 2, 2, 1, NULL),
(3, 3, 2, 2, 1, NULL),
(4, 4, 2, 2, 1, NULL),
(5, 5, 2, 2, 1, NULL),
(6, 6, 2, 2, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_tickettasks`
--

CREATE TABLE `glpi_tickettasks` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `users_id_tech` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_tickettemplatehiddenfields`
--

CREATE TABLE `glpi_tickettemplatehiddenfields` (
  `id` int(11) NOT NULL,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_tickettemplatemandatoryfields`
--

CREATE TABLE `glpi_tickettemplatemandatoryfields` (
  `id` int(11) NOT NULL,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_tickettemplatemandatoryfields`
--

INSERT INTO `glpi_tickettemplatemandatoryfields` (`id`, `tickettemplates_id`, `num`) VALUES
(1, 1, 21);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_tickettemplatepredefinedfields`
--

CREATE TABLE `glpi_tickettemplatepredefinedfields` (
  `id` int(11) NOT NULL,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `value` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_tickettemplates`
--

CREATE TABLE `glpi_tickettemplates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_tickettemplates`
--

INSERT INTO `glpi_tickettemplates` (`id`, `name`, `entities_id`, `is_recursive`, `comment`) VALUES
(1, 'Default', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_ticketvalidations`
--

CREATE TABLE `glpi_ticketvalidations` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `users_id_validate` int(11) NOT NULL DEFAULT '0',
  `comment_submission` text COLLATE utf8_unicode_ci,
  `comment_validation` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'waiting',
  `submission_date` datetime DEFAULT NULL,
  `validation_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_transfers`
--

CREATE TABLE `glpi_transfers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keep_ticket` int(11) NOT NULL DEFAULT '0',
  `keep_networklink` int(11) NOT NULL DEFAULT '0',
  `keep_reservation` int(11) NOT NULL DEFAULT '0',
  `keep_history` int(11) NOT NULL DEFAULT '0',
  `keep_device` int(11) NOT NULL DEFAULT '0',
  `keep_infocom` int(11) NOT NULL DEFAULT '0',
  `keep_dc_monitor` int(11) NOT NULL DEFAULT '0',
  `clean_dc_monitor` int(11) NOT NULL DEFAULT '0',
  `keep_dc_phone` int(11) NOT NULL DEFAULT '0',
  `clean_dc_phone` int(11) NOT NULL DEFAULT '0',
  `keep_dc_peripheral` int(11) NOT NULL DEFAULT '0',
  `clean_dc_peripheral` int(11) NOT NULL DEFAULT '0',
  `keep_dc_printer` int(11) NOT NULL DEFAULT '0',
  `clean_dc_printer` int(11) NOT NULL DEFAULT '0',
  `keep_supplier` int(11) NOT NULL DEFAULT '0',
  `clean_supplier` int(11) NOT NULL DEFAULT '0',
  `keep_contact` int(11) NOT NULL DEFAULT '0',
  `clean_contact` int(11) NOT NULL DEFAULT '0',
  `keep_contract` int(11) NOT NULL DEFAULT '0',
  `clean_contract` int(11) NOT NULL DEFAULT '0',
  `keep_software` int(11) NOT NULL DEFAULT '0',
  `clean_software` int(11) NOT NULL DEFAULT '0',
  `keep_document` int(11) NOT NULL DEFAULT '0',
  `clean_document` int(11) NOT NULL DEFAULT '0',
  `keep_cartridgeitem` int(11) NOT NULL DEFAULT '0',
  `clean_cartridgeitem` int(11) NOT NULL DEFAULT '0',
  `keep_cartridge` int(11) NOT NULL DEFAULT '0',
  `keep_consumable` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `keep_disk` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_transfers`
--

INSERT INTO `glpi_transfers` (`id`, `name`, `keep_ticket`, `keep_networklink`, `keep_reservation`, `keep_history`, `keep_device`, `keep_infocom`, `keep_dc_monitor`, `clean_dc_monitor`, `keep_dc_phone`, `clean_dc_phone`, `keep_dc_peripheral`, `clean_dc_peripheral`, `keep_dc_printer`, `clean_dc_printer`, `keep_supplier`, `clean_supplier`, `keep_contact`, `clean_contact`, `keep_contract`, `clean_contract`, `keep_software`, `clean_software`, `keep_document`, `clean_document`, `keep_cartridgeitem`, `clean_cartridgeitem`, `keep_cartridge`, `keep_consumable`, `date_mod`, `comment`, `keep_disk`) VALUES
(1, 'complete', 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_usercategories`
--

CREATE TABLE `glpi_usercategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_useremails`
--

CREATE TABLE `glpi_useremails` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_useremails`
--

INSERT INTO `glpi_useremails` (`id`, `users_id`, `is_default`, `is_dynamic`, `email`) VALUES
(1, 6, 1, 0, 'manjusripriya@gmail.com'),
(2, 7, 1, 0, 'indhu@gmail.com'),
(3, 8, 1, 0, 'pri@gmail.com'),
(4, 12, 1, 0, 'nas@gmail.com'),
(5, 0, 0, 0, 'maa@gmail.com'),
(6, 0, 0, 0, 'ads@gmail'),
(7, 0, 0, 0, 'ssfs@fhfh'),
(8, 0, 0, 0, 'dasd@fdg'),
(9, 0, 0, 0, 'iuoui@gm'),
(10, 0, 0, 0, 'df@GFG'),
(11, 0, 0, 0, 'fdfg@gfdgf'),
(12, 0, 0, 0, 'ert@rtryt.ty'),
(13, 0, 0, 0, 'dfdg@gjg'),
(14, 0, 0, 0, 'ser@rtrt'),
(15, 0, 0, 0, 'dgdg@fdgdfg'),
(16, 0, 0, 0, 'qwe@fdg'),
(17, 0, 0, 0, 'prima@gmail.com'),
(18, 0, 0, 0, 'ticket@gmail.com'),
(19, 0, 0, 0, 'ppp@gmail.com'),
(20, 0, 0, 0, 'man@gmail.com'),
(21, 0, 0, 0, 'YR@HG'),
(22, 0, 0, 0, 'SF@gf'),
(23, 0, 0, 0, 'qwee@frd'),
(24, 0, 0, 0, 'df@fg'),
(25, 0, 0, 0, 'ds@gm'),
(26, 0, 0, 0, 'fg@gfd'),
(27, 0, 0, 0, 't@gj'),
(28, 0, 0, 0, 'g@F'),
(29, 0, 0, 0, 'dfg@fg'),
(30, 0, 0, 0, 'gfh@VGFD'),
(31, 0, 0, 0, 'rt@fg'),
(32, 0, 0, 0, 'laten@gmail.com'),
(33, 0, 0, 0, 'po@gm'),
(34, 0, 0, 0, 'sd@fr'),
(35, 0, 0, 0, 'lk@gmail'),
(36, 0, 0, 0, 'pr@gmail'),
(37, 0, 0, 0, 'ew@gfg'),
(38, 0, 0, 0, 'uk@gf'),
(39, 0, 0, 0, 'wefff@fgg'),
(40, 0, 0, 0, 'io@fgh'),
(41, 0, 0, 0, 'fg@gf'),
(42, 0, 0, 0, 'manju@gmail.com'),
(43, 0, 0, 0, 'fd@fgfg'),
(44, 0, 0, 0, 'werw@fg'),
(45, 0, 0, 0, 'tu@gmail.com'),
(46, 0, 0, 0, 'rty@gnma'),
(47, 0, 0, 0, 'manjuas@gmail.com'),
(48, 0, 0, 0, 's@gf'),
(49, 0, 0, 0, 'm@gm'),
(50, 0, 0, 0, 'y@fd'),
(51, 0, 0, 0, 'yrt@G'),
(52, 0, 0, 0, 'priya@gmail.com'),
(53, 0, 0, 0, 'd@fg'),
(54, 0, 0, 0, 'werw@gfg'),
(55, 0, 0, 0, 'yu@g');

-- --------------------------------------------------------

--
-- Table structure for table `glpi_users`
--

CREATE TABLE `glpi_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `language` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php CFG_GLPI[language] array',
  `use_mode` int(11) NOT NULL DEFAULT '0',
  `list_limit` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `auths_id` int(11) NOT NULL DEFAULT '0',
  `authtype` int(11) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_sync` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `usertitles_id` int(11) NOT NULL DEFAULT '0',
  `usercategories_id` int(11) NOT NULL DEFAULT '0',
  `date_format` int(11) DEFAULT NULL,
  `number_format` int(11) DEFAULT NULL,
  `names_format` int(11) DEFAULT NULL,
  `csv_delimiter` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_ids_visible` tinyint(1) DEFAULT NULL,
  `dropdown_chars_limit` int(11) DEFAULT NULL,
  `use_flat_dropdowntree` tinyint(1) DEFAULT NULL,
  `show_jobs_at_login` tinyint(1) DEFAULT NULL,
  `priority_1` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_2` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_3` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_4` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_5` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_6` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_categorized_soft_expanded` tinyint(1) DEFAULT NULL,
  `is_not_categorized_soft_expanded` tinyint(1) DEFAULT NULL,
  `followup_private` tinyint(1) DEFAULT NULL,
  `task_private` tinyint(1) DEFAULT NULL,
  `default_requesttypes_id` int(11) DEFAULT NULL,
  `password_forget_token` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_forget_token_date` datetime DEFAULT NULL,
  `user_dn` text COLLATE utf8_unicode_ci,
  `registration_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_count_on_tabs` tinyint(1) DEFAULT NULL,
  `refresh_ticket_list` int(11) DEFAULT NULL,
  `set_default_tech` tinyint(1) DEFAULT NULL,
  `personal_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_token_date` datetime DEFAULT NULL,
  `display_count_on_home` int(11) DEFAULT NULL,
  `notification_to_myself` tinyint(1) DEFAULT NULL,
  `duedateok_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatewarning_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatecritical_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatewarning_less` int(11) DEFAULT NULL,
  `duedatecritical_less` int(11) DEFAULT NULL,
  `duedatewarning_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatecritical_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_options` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glpi_users`
--

INSERT INTO `glpi_users` (`id`, `name`, `password`, `phone`, `phone2`, `mobile`, `realname`, `firstname`, `locations_id`, `language`, `use_mode`, `list_limit`, `is_active`, `comment`, `auths_id`, `authtype`, `last_login`, `date_mod`, `date_sync`, `is_deleted`, `profiles_id`, `entities_id`, `usertitles_id`, `usercategories_id`, `date_format`, `number_format`, `names_format`, `csv_delimiter`, `is_ids_visible`, `dropdown_chars_limit`, `use_flat_dropdowntree`, `show_jobs_at_login`, `priority_1`, `priority_2`, `priority_3`, `priority_4`, `priority_5`, `priority_6`, `is_categorized_soft_expanded`, `is_not_categorized_soft_expanded`, `followup_private`, `task_private`, `default_requesttypes_id`, `password_forget_token`, `password_forget_token_date`, `user_dn`, `registration_number`, `show_count_on_tabs`, `refresh_ticket_list`, `set_default_tech`, `personal_token`, `personal_token_date`, `display_count_on_home`, `notification_to_myself`, `duedateok_color`, `duedatewarning_color`, `duedatecritical_color`, `duedatewarning_less`, `duedatecritical_less`, `duedatewarning_unit`, `duedatecritical_unit`, `display_options`) VALUES
(2, 'glpi', '0915bd0a5c6e56d8f38ca2b390857d4949073f41', '', '', '', '', NULL, 0, NULL, 0, 20, 1, NULL, 0, 1, '2017-03-16 05:50:45', '2010-05-06 09:31:04', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'post-only', '3177926a7314de24680a9938aaa97703', '', '', '', '', NULL, 0, NULL, 0, 20, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'tech', 'd9f9133fb120cd6096870bc2b496805b', '', '', '', '', NULL, 0, NULL, 0, 20, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'normal', 'fea087517c26fadd409bd4b9dc642555', '', '', '', '', NULL, 0, NULL, 0, 20, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'priya', 'fb706ba3c4df35f1af9600af44d711a8c3043d72', '9629903773', '', '', '', '', 0, NULL, 0, NULL, 1, '', 0, 1, NULL, '2017-03-14 10:17:55', NULL, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'indhu', 'c6c7d77c0341c337b01cfe5dddd36dafaaf4ba53', '1234678', '', '', '', '', 0, NULL, 0, NULL, 1, '', 0, 1, NULL, '2017-03-14 10:22:04', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'pri', '1cf55397ad9c345d53a206f8263b07ac2f3e3270', '1234688', '', '', '', '', 0, NULL, 0, NULL, 1, '', 0, 1, NULL, '2017-03-14 10:27:17', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'priyap', 'c6c7d77c0341c337b01cfe5dddd36dafaaf4ba53', '54321', '', '', '', '', 0, NULL, 0, NULL, 1, '', 0, 1, NULL, '2017-03-14 11:57:49', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'nas', 'f041b241d7306de4cfe8de5ea893ce3a2e263d19', '12345', '', '', '', '', 0, NULL, 0, NULL, 1, '', 0, 1, NULL, '2017-03-14 12:05:18', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '', 'c6c7d77c0341c337b01cfe5dddd36dafaaf4ba53', '85635656', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '$name', '$password', '$mobileno', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'riha', 'Welcom#f1', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'ertet', 'edc9f200a5af9fd70687d10b5b37cfcd56732a23', '12345689', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'qwqe', 'e47614fd501d0e1e40974fde344313515a38254d', '052323213', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'sre', '09f52d7df2f46187c9558194ccf50b70c14b2f2b', '12343545656', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'asssas', 'd668d3630ba0ea248a51f13e8ddb286d2a7308ce', '258963', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'qwer', 'e532b7d2ede891d3bfe155389fc4e10b818d2f22', '2132445', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Root entity', 'af0a0243661d360429d75975e4b244f9eca9c056', '1234679855', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'tab', '724b96b7328ec8c8066371efeff6d614d907e7d0', '9874563214', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'tabtree', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '3214569874', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'pick', '3347a396c4c47162d0959911bc2458d9adc8b7bc', '56', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'lk', 'c75587376915de3e843decfb863c635b0d48a92d', '546', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'rt', '407374181aed5c227281b11b54dc1a0a4cc9425d', '78945612', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'pr', 'f041b241d7306de4cfe8de5ea893ce3a2e263d19', '4561', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'we', '1161e6ffd3637b302a5cd74076283a7bd1fc20d3', '12345678', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'uk', '8cb2237d0679ca88db6464eac60da96345513964', '12345', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'tr', '7c4a8d09ca3762af61e59520943dc26494f8941b', '654321', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'oi', '962ddc396bb56a75dd4a313330871492e211f273', '464987', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'gf', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', '369852147', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'manjum', '5041214ec74a70d40287ee430271dcd34dd4cab6', '12345', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'mmm', '225b12921d2c6fa4b0ab7a67783e7d3585d5378e', '1435365', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'ty', '1b6f9acd18d207bcd851292901809f000957d0c5', '12345', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'ryt', '407374181aed5c227281b11b54dc1a0a4cc9425d', '131656', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'manju priya', 'ad1e7f59c168cc61b6cd5fdb478a04ed6d44d7ed', '799542', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 's', 'f2c7806af16980c287436ec41b34866e92bc5d18', '565464', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'ft', '727e585370d6323c86b2a84244f279383f26b4d6', '3535', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'm', '1b6f9acd18d207bcd851292901809f000957d0c5', '56546', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'priyad', '2196ad82672f0159d28f2ccebadb2b8aaa1400a5', '123434', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Priya Dhandapani', '0349d4a694a1af0a460db73e88e8d46e770f0d25', '789456123', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'er', '86f656dc64df321ef8b5b078fe032a4b5997e069', '3445', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'ppo', '8c30ecd55168d26f6c4d7d01cbe5a0d48d4de05a', '243546', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `glpi_usertitles`
--

CREATE TABLE `glpi_usertitles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_virtualmachinestates`
--

CREATE TABLE `glpi_virtualmachinestates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_virtualmachinesystems`
--

CREATE TABLE `glpi_virtualmachinesystems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_virtualmachinetypes`
--

CREATE TABLE `glpi_virtualmachinetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_vlans`
--

CREATE TABLE `glpi_vlans` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `tag` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `glpi_wifinetworks`
--

CREATE TABLE `glpi_wifinetworks` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `essid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ad-hoc, access_point',
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `glpi_alerts`
--
ALTER TABLE `glpi_alerts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`itemtype`,`items_id`,`type`),
  ADD KEY `type` (`type`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `glpi_authldapreplicates`
--
ALTER TABLE `glpi_authldapreplicates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authldaps_id` (`authldaps_id`);

--
-- Indexes for table `glpi_authldaps`
--
ALTER TABLE `glpi_authldaps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `is_default` (`is_default`),
  ADD KEY `is_active` (`is_active`);

--
-- Indexes for table `glpi_authmails`
--
ALTER TABLE `glpi_authmails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `is_active` (`is_active`);

--
-- Indexes for table `glpi_autoupdatesystems`
--
ALTER TABLE `glpi_autoupdatesystems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_blacklists`
--
ALTER TABLE `glpi_blacklists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_bookmarks`
--
ALTER TABLE `glpi_bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `itemtype` (`itemtype`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `is_private` (`is_private`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_bookmarks_users`
--
ALTER TABLE `glpi_bookmarks_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`users_id`,`itemtype`),
  ADD KEY `bookmarks_id` (`bookmarks_id`);

--
-- Indexes for table `glpi_budgets`
--
ALTER TABLE `glpi_budgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `end_date` (`end_date`);

--
-- Indexes for table `glpi_calendars`
--
ALTER TABLE `glpi_calendars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`);

--
-- Indexes for table `glpi_calendarsegments`
--
ALTER TABLE `glpi_calendarsegments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendars_id` (`calendars_id`),
  ADD KEY `day` (`day`);

--
-- Indexes for table `glpi_calendars_holidays`
--
ALTER TABLE `glpi_calendars_holidays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`calendars_id`,`holidays_id`),
  ADD KEY `holidays_id` (`holidays_id`);

--
-- Indexes for table `glpi_cartridgeitems`
--
ALTER TABLE `glpi_cartridgeitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `cartridgeitemtypes_id` (`cartridgeitemtypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `alarm_threshold` (`alarm_threshold`),
  ADD KEY `groups_id_tech` (`groups_id_tech`);

--
-- Indexes for table `glpi_cartridgeitems_printermodels`
--
ALTER TABLE `glpi_cartridgeitems_printermodels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`printermodels_id`,`cartridgeitems_id`),
  ADD KEY `cartridgeitems_id` (`cartridgeitems_id`);

--
-- Indexes for table `glpi_cartridgeitemtypes`
--
ALTER TABLE `glpi_cartridgeitemtypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_cartridges`
--
ALTER TABLE `glpi_cartridges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cartridgeitems_id` (`cartridgeitems_id`),
  ADD KEY `printers_id` (`printers_id`),
  ADD KEY `entities_id` (`entities_id`);

--
-- Indexes for table `glpi_computerdisks`
--
ALTER TABLE `glpi_computerdisks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `device` (`device`),
  ADD KEY `mountpoint` (`mountpoint`),
  ADD KEY `totalsize` (`totalsize`),
  ADD KEY `freesize` (`freesize`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `filesystems_id` (`filesystems_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `glpi_computermodels`
--
ALTER TABLE `glpi_computermodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_computers`
--
ALTER TABLE `glpi_computers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `name` (`name`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `autoupdatesystems_id` (`autoupdatesystems_id`),
  ADD KEY `domains_id` (`domains_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `computermodels_id` (`computermodels_id`),
  ADD KEY `networks_id` (`networks_id`),
  ADD KEY `operatingsystems_id` (`operatingsystems_id`),
  ADD KEY `operatingsystemservicepacks_id` (`operatingsystemservicepacks_id`),
  ADD KEY `operatingsystemversions_id` (`operatingsystemversions_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `computertypes_id` (`computertypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `uuid` (`uuid`);

--
-- Indexes for table `glpi_computers_items`
--
ALTER TABLE `glpi_computers_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `glpi_computers_softwarelicenses`
--
ALTER TABLE `glpi_computers_softwarelicenses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`computers_id`,`softwarelicenses_id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `softwarelicenses_id` (`softwarelicenses_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `glpi_computers_softwareversions`
--
ALTER TABLE `glpi_computers_softwareversions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`computers_id`,`softwareversions_id`),
  ADD KEY `softwareversions_id` (`softwareversions_id`),
  ADD KEY `computers_info` (`entities_id`,`is_template_computer`,`is_deleted_computer`),
  ADD KEY `is_template` (`is_template_computer`),
  ADD KEY `is_deleted` (`is_deleted_computer`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `glpi_computertypes`
--
ALTER TABLE `glpi_computertypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_computervirtualmachines`
--
ALTER TABLE `glpi_computervirtualmachines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `name` (`name`),
  ADD KEY `virtualmachinestates_id` (`virtualmachinestates_id`),
  ADD KEY `virtualmachinesystems_id` (`virtualmachinesystems_id`),
  ADD KEY `vcpu` (`vcpu`),
  ADD KEY `ram` (`ram`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `uuid` (`uuid`);

--
-- Indexes for table `glpi_configs`
--
ALTER TABLE `glpi_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `glpi_consumableitems`
--
ALTER TABLE `glpi_consumableitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `consumableitemtypes_id` (`consumableitemtypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `alarm_threshold` (`alarm_threshold`),
  ADD KEY `groups_id_tech` (`groups_id_tech`);

--
-- Indexes for table `glpi_consumableitemtypes`
--
ALTER TABLE `glpi_consumableitemtypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_consumables`
--
ALTER TABLE `glpi_consumables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_in` (`date_in`),
  ADD KEY `date_out` (`date_out`),
  ADD KEY `consumableitems_id` (`consumableitems_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `item` (`itemtype`,`items_id`);

--
-- Indexes for table `glpi_contacts`
--
ALTER TABLE `glpi_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `contacttypes_id` (`contacttypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `usertitles_id` (`usertitles_id`);

--
-- Indexes for table `glpi_contacts_suppliers`
--
ALTER TABLE `glpi_contacts_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`suppliers_id`,`contacts_id`),
  ADD KEY `contacts_id` (`contacts_id`);

--
-- Indexes for table `glpi_contacttypes`
--
ALTER TABLE `glpi_contacttypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_contractcosts`
--
ALTER TABLE `glpi_contractcosts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `contracts_id` (`contracts_id`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `budgets_id` (`budgets_id`);

--
-- Indexes for table `glpi_contracts`
--
ALTER TABLE `glpi_contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `name` (`name`),
  ADD KEY `contracttypes_id` (`contracttypes_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `use_monday` (`use_monday`),
  ADD KEY `use_saturday` (`use_saturday`),
  ADD KEY `alert` (`alert`);

--
-- Indexes for table `glpi_contracts_items`
--
ALTER TABLE `glpi_contracts_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`contracts_id`,`itemtype`,`items_id`),
  ADD KEY `FK_device` (`items_id`,`itemtype`),
  ADD KEY `item` (`itemtype`,`items_id`);

--
-- Indexes for table `glpi_contracts_suppliers`
--
ALTER TABLE `glpi_contracts_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`suppliers_id`,`contracts_id`),
  ADD KEY `contracts_id` (`contracts_id`);

--
-- Indexes for table `glpi_contracttypes`
--
ALTER TABLE `glpi_contracttypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_crontasklogs`
--
ALTER TABLE `glpi_crontasklogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `crontasks_id` (`crontasks_id`),
  ADD KEY `crontasklogs_id_state` (`crontasklogs_id`,`state`);

--
-- Indexes for table `glpi_crontasks`
--
ALTER TABLE `glpi_crontasks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`itemtype`,`name`),
  ADD KEY `mode` (`mode`);

--
-- Indexes for table `glpi_devicecases`
--
ALTER TABLE `glpi_devicecases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `devicecasetypes_id` (`devicecasetypes_id`);

--
-- Indexes for table `glpi_devicecasetypes`
--
ALTER TABLE `glpi_devicecasetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_devicecontrols`
--
ALTER TABLE `glpi_devicecontrols`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `interfacetypes_id` (`interfacetypes_id`);

--
-- Indexes for table `glpi_devicedrives`
--
ALTER TABLE `glpi_devicedrives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `interfacetypes_id` (`interfacetypes_id`);

--
-- Indexes for table `glpi_devicegraphiccards`
--
ALTER TABLE `glpi_devicegraphiccards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `interfacetypes_id` (`interfacetypes_id`);

--
-- Indexes for table `glpi_deviceharddrives`
--
ALTER TABLE `glpi_deviceharddrives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `interfacetypes_id` (`interfacetypes_id`);

--
-- Indexes for table `glpi_devicememories`
--
ALTER TABLE `glpi_devicememories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `devicememorytypes_id` (`devicememorytypes_id`);

--
-- Indexes for table `glpi_devicememorytypes`
--
ALTER TABLE `glpi_devicememorytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_devicemotherboards`
--
ALTER TABLE `glpi_devicemotherboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`);

--
-- Indexes for table `glpi_devicenetworkcards`
--
ALTER TABLE `glpi_devicenetworkcards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`);

--
-- Indexes for table `glpi_devicepcis`
--
ALTER TABLE `glpi_devicepcis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`);

--
-- Indexes for table `glpi_devicepowersupplies`
--
ALTER TABLE `glpi_devicepowersupplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`);

--
-- Indexes for table `glpi_deviceprocessors`
--
ALTER TABLE `glpi_deviceprocessors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`);

--
-- Indexes for table `glpi_devicesoundcards`
--
ALTER TABLE `glpi_devicesoundcards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`);

--
-- Indexes for table `glpi_displaypreferences`
--
ALTER TABLE `glpi_displaypreferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`users_id`,`itemtype`,`num`),
  ADD KEY `rank` (`rank`),
  ADD KEY `num` (`num`),
  ADD KEY `itemtype` (`itemtype`);

--
-- Indexes for table `glpi_documentcategories`
--
ALTER TABLE `glpi_documentcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `unicity` (`documentcategories_id`,`name`);

--
-- Indexes for table `glpi_documents`
--
ALTER TABLE `glpi_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `tickets_id` (`tickets_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `documentcategories_id` (`documentcategories_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `sha1sum` (`sha1sum`);

--
-- Indexes for table `glpi_documents_items`
--
ALTER TABLE `glpi_documents_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`documents_id`,`itemtype`,`items_id`),
  ADD KEY `item` (`itemtype`,`items_id`,`entities_id`,`is_recursive`);

--
-- Indexes for table `glpi_documenttypes`
--
ALTER TABLE `glpi_documenttypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`ext`),
  ADD KEY `name` (`name`),
  ADD KEY `is_uploadable` (`is_uploadable`),
  ADD KEY `date_mod` (`date_mod`);

--
-- Indexes for table `glpi_domains`
--
ALTER TABLE `glpi_domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_entities`
--
ALTER TABLE `glpi_entities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`entities_id`,`name`),
  ADD KEY `entities_id` (`entities_id`);

--
-- Indexes for table `glpi_entities_knowbaseitems`
--
ALTER TABLE `glpi_entities_knowbaseitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `knowbaseitems_id` (`knowbaseitems_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_entities_reminders`
--
ALTER TABLE `glpi_entities_reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_id` (`reminders_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_entities_rssfeeds`
--
ALTER TABLE `glpi_entities_rssfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rssfeeds_id` (`rssfeeds_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_events`
--
ALTER TABLE `glpi_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `level` (`level`),
  ADD KEY `item` (`type`,`items_id`);

--
-- Indexes for table `glpi_fieldblacklists`
--
ALTER TABLE `glpi_fieldblacklists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_fieldunicities`
--
ALTER TABLE `glpi_fieldunicities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `glpi_filesystems`
--
ALTER TABLE `glpi_filesystems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_fqdns`
--
ALTER TABLE `glpi_fqdns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `name` (`name`),
  ADD KEY `fqdn` (`fqdn`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_groups`
--
ALTER TABLE `glpi_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `ldap_field` (`ldap_field`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `ldap_value` (`ldap_value`(200)),
  ADD KEY `ldap_group_dn` (`ldap_group_dn`(200)),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `is_requester` (`is_requester`),
  ADD KEY `is_assign` (`is_assign`),
  ADD KEY `is_notify` (`is_notify`),
  ADD KEY `is_itemgroup` (`is_itemgroup`),
  ADD KEY `is_usergroup` (`is_usergroup`);

--
-- Indexes for table `glpi_groups_knowbaseitems`
--
ALTER TABLE `glpi_groups_knowbaseitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `knowbaseitems_id` (`knowbaseitems_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_groups_problems`
--
ALTER TABLE `glpi_groups_problems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`problems_id`,`type`,`groups_id`),
  ADD KEY `group` (`groups_id`,`type`);

--
-- Indexes for table `glpi_groups_reminders`
--
ALTER TABLE `glpi_groups_reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_id` (`reminders_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_groups_rssfeeds`
--
ALTER TABLE `glpi_groups_rssfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rssfeeds_id` (`rssfeeds_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_groups_tickets`
--
ALTER TABLE `glpi_groups_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`tickets_id`,`type`,`groups_id`),
  ADD KEY `group` (`groups_id`,`type`);

--
-- Indexes for table `glpi_groups_users`
--
ALTER TABLE `glpi_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`users_id`,`groups_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `is_manager` (`is_manager`),
  ADD KEY `is_userdelegate` (`is_userdelegate`);

--
-- Indexes for table `glpi_holidays`
--
ALTER TABLE `glpi_holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `is_perpetual` (`is_perpetual`);

--
-- Indexes for table `glpi_infocoms`
--
ALTER TABLE `glpi_infocoms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`itemtype`,`items_id`),
  ADD KEY `buy_date` (`buy_date`),
  ADD KEY `alert` (`alert`),
  ADD KEY `budgets_id` (`budgets_id`),
  ADD KEY `suppliers_id` (`suppliers_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_interfacetypes`
--
ALTER TABLE `glpi_interfacetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_ipaddresses`
--
ALTER TABLE `glpi_ipaddresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `textual` (`name`),
  ADD KEY `binary` (`binary_0`,`binary_1`,`binary_2`,`binary_3`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `item` (`itemtype`,`items_id`,`is_deleted`);

--
-- Indexes for table `glpi_ipaddresses_ipnetworks`
--
ALTER TABLE `glpi_ipaddresses_ipnetworks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`ipaddresses_id`,`ipnetworks_id`),
  ADD KEY `ipnetworks_id` (`ipnetworks_id`),
  ADD KEY `ipaddresses_id` (`ipaddresses_id`);

--
-- Indexes for table `glpi_ipnetworks`
--
ALTER TABLE `glpi_ipnetworks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `network_definition` (`entities_id`,`address`,`netmask`),
  ADD KEY `address` (`address_0`,`address_1`,`address_2`,`address_3`),
  ADD KEY `netmask` (`netmask_0`,`netmask_1`,`netmask_2`,`netmask_3`),
  ADD KEY `gateway` (`gateway_0`,`gateway_1`,`gateway_2`,`gateway_3`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_ipnetworks_vlans`
--
ALTER TABLE `glpi_ipnetworks_vlans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`ipnetworks_id`,`vlans_id`);

--
-- Indexes for table `glpi_items_devicecases`
--
ALTER TABLE `glpi_items_devicecases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicecases_id` (`devicecases_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `glpi_items_devicecontrols`
--
ALTER TABLE `glpi_items_devicecontrols`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicecontrols_id` (`devicecontrols_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `glpi_items_devicedrives`
--
ALTER TABLE `glpi_items_devicedrives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicedrives_id` (`devicedrives_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `glpi_items_devicegraphiccards`
--
ALTER TABLE `glpi_items_devicegraphiccards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicegraphiccards_id` (`devicegraphiccards_id`),
  ADD KEY `specificity` (`memory`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `glpi_items_deviceharddrives`
--
ALTER TABLE `glpi_items_deviceharddrives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `deviceharddrives_id` (`deviceharddrives_id`),
  ADD KEY `specificity` (`capacity`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`);

--
-- Indexes for table `glpi_items_devicememories`
--
ALTER TABLE `glpi_items_devicememories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicememories_id` (`devicememories_id`),
  ADD KEY `specificity` (`size`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`);

--
-- Indexes for table `glpi_items_devicemotherboards`
--
ALTER TABLE `glpi_items_devicemotherboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicemotherboards_id` (`devicemotherboards_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `glpi_items_devicenetworkcards`
--
ALTER TABLE `glpi_items_devicenetworkcards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicenetworkcards_id` (`devicenetworkcards_id`),
  ADD KEY `specificity` (`mac`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `glpi_items_devicepcis`
--
ALTER TABLE `glpi_items_devicepcis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicepcis_id` (`devicepcis_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `glpi_items_devicepowersupplies`
--
ALTER TABLE `glpi_items_devicepowersupplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicepowersupplies_id` (`devicepowersupplies_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `glpi_items_deviceprocessors`
--
ALTER TABLE `glpi_items_deviceprocessors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `deviceprocessors_id` (`deviceprocessors_id`),
  ADD KEY `specificity` (`frequency`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`);

--
-- Indexes for table `glpi_items_devicesoundcards`
--
ALTER TABLE `glpi_items_devicesoundcards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicesoundcards_id` (`devicesoundcards_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `glpi_items_problems`
--
ALTER TABLE `glpi_items_problems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`problems_id`,`itemtype`,`items_id`),
  ADD KEY `item` (`itemtype`,`items_id`);

--
-- Indexes for table `glpi_itilcategories`
--
ALTER TABLE `glpi_itilcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `is_helpdeskvisible` (`is_helpdeskvisible`),
  ADD KEY `itilcategories_id` (`itilcategories_id`),
  ADD KEY `tickettemplates_id_incident` (`tickettemplates_id_incident`),
  ADD KEY `tickettemplates_id_demand` (`tickettemplates_id_demand`),
  ADD KEY `is_incident` (`is_incident`),
  ADD KEY `is_request` (`is_request`),
  ADD KEY `is_problem` (`is_problem`);

--
-- Indexes for table `glpi_knowbaseitemcategories`
--
ALTER TABLE `glpi_knowbaseitemcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`entities_id`,`knowbaseitemcategories_id`,`name`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_knowbaseitems`
--
ALTER TABLE `glpi_knowbaseitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`),
  ADD KEY `is_faq` (`is_faq`),
  ADD KEY `date_mod` (`date_mod`);
ALTER TABLE `glpi_knowbaseitems` ADD FULLTEXT KEY `fulltext` (`name`,`answer`);

--
-- Indexes for table `glpi_knowbaseitems_profiles`
--
ALTER TABLE `glpi_knowbaseitems_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `knowbaseitems_id` (`knowbaseitems_id`),
  ADD KEY `profiles_id` (`profiles_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_knowbaseitems_users`
--
ALTER TABLE `glpi_knowbaseitems_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `knowbaseitems_id` (`knowbaseitems_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `glpi_links`
--
ALTER TABLE `glpi_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`);

--
-- Indexes for table `glpi_links_itemtypes`
--
ALTER TABLE `glpi_links_itemtypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`itemtype`,`links_id`),
  ADD KEY `links_id` (`links_id`);

--
-- Indexes for table `glpi_locations`
--
ALTER TABLE `glpi_locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`entities_id`,`locations_id`,`name`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_logs`
--
ALTER TABLE `glpi_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `itemtype_link` (`itemtype_link`),
  ADD KEY `item` (`itemtype`,`items_id`);

--
-- Indexes for table `glpi_mailcollectors`
--
ALTER TABLE `glpi_mailcollectors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `date_mod` (`date_mod`);

--
-- Indexes for table `glpi_manufacturers`
--
ALTER TABLE `glpi_manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_monitormodels`
--
ALTER TABLE `glpi_monitormodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_monitors`
--
ALTER TABLE `glpi_monitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `is_global` (`is_global`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`monitormodels_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `monitortypes_id` (`monitortypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`);

--
-- Indexes for table `glpi_monitortypes`
--
ALTER TABLE `glpi_monitortypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_netpoints`
--
ALTER TABLE `glpi_netpoints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `complete` (`entities_id`,`locations_id`,`name`),
  ADD KEY `location_name` (`locations_id`,`name`);

--
-- Indexes for table `glpi_networkaliases`
--
ALTER TABLE `glpi_networkaliases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `name` (`name`),
  ADD KEY `networknames_id` (`networknames_id`);

--
-- Indexes for table `glpi_networkequipmentfirmwares`
--
ALTER TABLE `glpi_networkequipmentfirmwares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_networkequipmentmodels`
--
ALTER TABLE `glpi_networkequipmentmodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_networkequipments`
--
ALTER TABLE `glpi_networkequipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `domains_id` (`domains_id`),
  ADD KEY `networkequipmentfirmwares_id` (`networkequipmentfirmwares_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `networkequipmentmodels_id` (`networkequipmentmodels_id`),
  ADD KEY `networks_id` (`networks_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `networkequipmenttypes_id` (`networkequipmenttypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`);

--
-- Indexes for table `glpi_networkequipmenttypes`
--
ALTER TABLE `glpi_networkequipmenttypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_networkinterfaces`
--
ALTER TABLE `glpi_networkinterfaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_networknames`
--
ALTER TABLE `glpi_networknames`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `FQDN` (`name`,`fqdns_id`),
  ADD KEY `name` (`name`),
  ADD KEY `fqdns_id` (`fqdns_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `item` (`itemtype`,`items_id`,`is_deleted`);

--
-- Indexes for table `glpi_networkportaggregates`
--
ALTER TABLE `glpi_networkportaggregates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `networkports_id` (`networkports_id`);

--
-- Indexes for table `glpi_networkportaliases`
--
ALTER TABLE `glpi_networkportaliases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `networkports_id` (`networkports_id`),
  ADD KEY `networkports_id_alias` (`networkports_id_alias`);

--
-- Indexes for table `glpi_networkportdialups`
--
ALTER TABLE `glpi_networkportdialups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `networkports_id` (`networkports_id`);

--
-- Indexes for table `glpi_networkportethernets`
--
ALTER TABLE `glpi_networkportethernets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `networkports_id` (`networkports_id`),
  ADD KEY `card` (`items_devicenetworkcards_id`),
  ADD KEY `netpoint` (`netpoints_id`),
  ADD KEY `type` (`type`),
  ADD KEY `speed` (`speed`);

--
-- Indexes for table `glpi_networkportlocals`
--
ALTER TABLE `glpi_networkportlocals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `networkports_id` (`networkports_id`);

--
-- Indexes for table `glpi_networkports`
--
ALTER TABLE `glpi_networkports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `on_device` (`items_id`,`itemtype`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `mac` (`mac`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `glpi_networkports_networkports`
--
ALTER TABLE `glpi_networkports_networkports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`networkports_id_1`,`networkports_id_2`),
  ADD KEY `networkports_id_2` (`networkports_id_2`);

--
-- Indexes for table `glpi_networkports_vlans`
--
ALTER TABLE `glpi_networkports_vlans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`networkports_id`,`vlans_id`),
  ADD KEY `vlans_id` (`vlans_id`);

--
-- Indexes for table `glpi_networkportwifis`
--
ALTER TABLE `glpi_networkportwifis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `networkports_id` (`networkports_id`),
  ADD KEY `card` (`items_devicenetworkcards_id`),
  ADD KEY `essid` (`wifinetworks_id`),
  ADD KEY `version` (`version`),
  ADD KEY `mode` (`mode`);

--
-- Indexes for table `glpi_networks`
--
ALTER TABLE `glpi_networks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_notifications`
--
ALTER TABLE `glpi_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `itemtype` (`itemtype`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `notificationtemplates_id` (`notificationtemplates_id`);

--
-- Indexes for table `glpi_notificationtargets`
--
ALTER TABLE `glpi_notificationtargets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items` (`type`,`items_id`),
  ADD KEY `notifications_id` (`notifications_id`);

--
-- Indexes for table `glpi_notificationtemplates`
--
ALTER TABLE `glpi_notificationtemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemtype` (`itemtype`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_notificationtemplatetranslations`
--
ALTER TABLE `glpi_notificationtemplatetranslations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notificationtemplates_id` (`notificationtemplates_id`);

--
-- Indexes for table `glpi_notimportedemails`
--
ALTER TABLE `glpi_notimportedemails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `mailcollectors_id` (`mailcollectors_id`);

--
-- Indexes for table `glpi_operatingsystems`
--
ALTER TABLE `glpi_operatingsystems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_operatingsystemservicepacks`
--
ALTER TABLE `glpi_operatingsystemservicepacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_operatingsystemversions`
--
ALTER TABLE `glpi_operatingsystemversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_peripheralmodels`
--
ALTER TABLE `glpi_peripheralmodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_peripherals`
--
ALTER TABLE `glpi_peripherals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `is_global` (`is_global`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `peripheralmodels_id` (`peripheralmodels_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `peripheraltypes_id` (`peripheraltypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`);

--
-- Indexes for table `glpi_peripheraltypes`
--
ALTER TABLE `glpi_peripheraltypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_phonemodels`
--
ALTER TABLE `glpi_phonemodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_phonepowersupplies`
--
ALTER TABLE `glpi_phonepowersupplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_phones`
--
ALTER TABLE `glpi_phones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `is_global` (`is_global`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `phonemodels_id` (`phonemodels_id`),
  ADD KEY `phonepowersupplies_id` (`phonepowersupplies_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `phonetypes_id` (`phonetypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`);

--
-- Indexes for table `glpi_phonetypes`
--
ALTER TABLE `glpi_phonetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_planningrecalls`
--
ALTER TABLE `glpi_planningrecalls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`itemtype`,`items_id`,`users_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `before_time` (`before_time`),
  ADD KEY `when` (`when`);

--
-- Indexes for table `glpi_plugins`
--
ALTER TABLE `glpi_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`directory`),
  ADD KEY `state` (`state`);

--
-- Indexes for table `glpi_printermodels`
--
ALTER TABLE `glpi_printermodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_printers`
--
ALTER TABLE `glpi_printers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `is_global` (`is_global`),
  ADD KEY `domains_id` (`domains_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `printermodels_id` (`printermodels_id`),
  ADD KEY `networks_id` (`networks_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `printertypes_id` (`printertypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `last_pages_counter` (`last_pages_counter`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`);

--
-- Indexes for table `glpi_printertypes`
--
ALTER TABLE `glpi_printertypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_problems`
--
ALTER TABLE `glpi_problems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date` (`date`),
  ADD KEY `closedate` (`closedate`),
  ADD KEY `status` (`status`),
  ADD KEY `priority` (`priority`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `itilcategories_id` (`itilcategories_id`),
  ADD KEY `users_id_recipient` (`users_id_recipient`),
  ADD KEY `solvedate` (`solvedate`),
  ADD KEY `solutiontypes_id` (`solutiontypes_id`),
  ADD KEY `urgency` (`urgency`),
  ADD KEY `impact` (`impact`),
  ADD KEY `due_date` (`due_date`),
  ADD KEY `users_id_lastupdater` (`users_id_lastupdater`);

--
-- Indexes for table `glpi_problems_suppliers`
--
ALTER TABLE `glpi_problems_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`problems_id`,`type`,`suppliers_id`),
  ADD KEY `group` (`suppliers_id`,`type`);

--
-- Indexes for table `glpi_problems_tickets`
--
ALTER TABLE `glpi_problems_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`problems_id`,`tickets_id`),
  ADD KEY `tickets_id` (`tickets_id`);

--
-- Indexes for table `glpi_problems_users`
--
ALTER TABLE `glpi_problems_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`problems_id`,`type`,`users_id`,`alternative_email`),
  ADD KEY `user` (`users_id`,`type`);

--
-- Indexes for table `glpi_problemtasks`
--
ALTER TABLE `glpi_problemtasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `problems_id` (`problems_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `date` (`date`),
  ADD KEY `begin` (`begin`),
  ADD KEY `end` (`end`),
  ADD KEY `state` (`state`),
  ADD KEY `taskcategories_id` (`taskcategories_id`);

--
-- Indexes for table `glpi_profiles`
--
ALTER TABLE `glpi_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interface` (`interface`),
  ADD KEY `is_default` (`is_default`),
  ADD KEY `date_mod` (`date_mod`);

--
-- Indexes for table `glpi_profiles_reminders`
--
ALTER TABLE `glpi_profiles_reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_id` (`reminders_id`),
  ADD KEY `profiles_id` (`profiles_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_profiles_rssfeeds`
--
ALTER TABLE `glpi_profiles_rssfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rssfeeds_id` (`rssfeeds_id`),
  ADD KEY `profiles_id` (`profiles_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_profiles_users`
--
ALTER TABLE `glpi_profiles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `profiles_id` (`profiles_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `glpi_reminders`
--
ALTER TABLE `glpi_reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `begin` (`begin`),
  ADD KEY `end` (`end`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `is_planned` (`is_planned`),
  ADD KEY `state` (`state`),
  ADD KEY `date_mod` (`date_mod`);

--
-- Indexes for table `glpi_reminders_users`
--
ALTER TABLE `glpi_reminders_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_id` (`reminders_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `glpi_requesttypes`
--
ALTER TABLE `glpi_requesttypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_helpdesk_default` (`is_helpdesk_default`),
  ADD KEY `is_mail_default` (`is_mail_default`);

--
-- Indexes for table `glpi_reservationitems`
--
ALTER TABLE `glpi_reservationitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `is_deleted` (`is_deleted`);

--
-- Indexes for table `glpi_reservations`
--
ALTER TABLE `glpi_reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `begin` (`begin`),
  ADD KEY `end` (`end`),
  ADD KEY `reservationitems_id` (`reservationitems_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `resagroup` (`reservationitems_id`,`group`);

--
-- Indexes for table `glpi_rssfeeds`
--
ALTER TABLE `glpi_rssfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `have_error` (`have_error`),
  ADD KEY `is_active` (`is_active`);

--
-- Indexes for table `glpi_rssfeeds_users`
--
ALTER TABLE `glpi_rssfeeds_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rssfeeds_id` (`rssfeeds_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `glpi_ruleactions`
--
ALTER TABLE `glpi_ruleactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rules_id` (`rules_id`),
  ADD KEY `field_value` (`field`(50),`value`(50));

--
-- Indexes for table `glpi_rulecachecomputermodels`
--
ALTER TABLE `glpi_rulecachecomputermodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecachecomputertypes`
--
ALTER TABLE `glpi_rulecachecomputertypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecachemanufacturers`
--
ALTER TABLE `glpi_rulecachemanufacturers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecachemonitormodels`
--
ALTER TABLE `glpi_rulecachemonitormodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecachemonitortypes`
--
ALTER TABLE `glpi_rulecachemonitortypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecachenetworkequipmentmodels`
--
ALTER TABLE `glpi_rulecachenetworkequipmentmodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecachenetworkequipmenttypes`
--
ALTER TABLE `glpi_rulecachenetworkequipmenttypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecacheoperatingsystems`
--
ALTER TABLE `glpi_rulecacheoperatingsystems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecacheoperatingsystemservicepacks`
--
ALTER TABLE `glpi_rulecacheoperatingsystemservicepacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecacheoperatingsystemversions`
--
ALTER TABLE `glpi_rulecacheoperatingsystemversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecacheperipheralmodels`
--
ALTER TABLE `glpi_rulecacheperipheralmodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecacheperipheraltypes`
--
ALTER TABLE `glpi_rulecacheperipheraltypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecachephonemodels`
--
ALTER TABLE `glpi_rulecachephonemodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecachephonetypes`
--
ALTER TABLE `glpi_rulecachephonetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecacheprintermodels`
--
ALTER TABLE `glpi_rulecacheprintermodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecacheprinters`
--
ALTER TABLE `glpi_rulecacheprinters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecacheprintertypes`
--
ALTER TABLE `glpi_rulecacheprintertypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecachesoftwares`
--
ALTER TABLE `glpi_rulecachesoftwares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_value` (`old_value`),
  ADD KEY `rules_id` (`rules_id`);

--
-- Indexes for table `glpi_rulecriterias`
--
ALTER TABLE `glpi_rulecriterias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rules_id` (`rules_id`),
  ADD KEY `condition` (`condition`);

--
-- Indexes for table `glpi_rulerightparameters`
--
ALTER TABLE `glpi_rulerightparameters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `glpi_rules`
--
ALTER TABLE `glpi_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `sub_type` (`sub_type`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_slalevelactions`
--
ALTER TABLE `glpi_slalevelactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slalevels_id` (`slalevels_id`);

--
-- Indexes for table `glpi_slalevelcriterias`
--
ALTER TABLE `glpi_slalevelcriterias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slalevels_id` (`slalevels_id`),
  ADD KEY `condition` (`condition`);

--
-- Indexes for table `glpi_slalevels`
--
ALTER TABLE `glpi_slalevels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `slas_id` (`slas_id`);

--
-- Indexes for table `glpi_slalevels_tickets`
--
ALTER TABLE `glpi_slalevels_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_id` (`tickets_id`),
  ADD KEY `slalevels_id` (`slalevels_id`);

--
-- Indexes for table `glpi_slas`
--
ALTER TABLE `glpi_slas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `calendars_id` (`calendars_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`);

--
-- Indexes for table `glpi_softwarecategories`
--
ALTER TABLE `glpi_softwarecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `glpi_softwarelicenses`
--
ALTER TABLE `glpi_softwarelicenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `expire` (`expire`),
  ADD KEY `softwareversions_id_buy` (`softwareversions_id_buy`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `softwarelicensetypes_id` (`softwarelicensetypes_id`),
  ADD KEY `softwareversions_id_use` (`softwareversions_id_use`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `softwares_id_expire` (`softwares_id`,`expire`);

--
-- Indexes for table `glpi_softwarelicensetypes`
--
ALTER TABLE `glpi_softwarelicensetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_softwares`
--
ALTER TABLE `glpi_softwares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `name` (`name`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `is_update` (`is_update`),
  ADD KEY `softwarecategories_id` (`softwarecategories_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `softwares_id` (`softwares_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  ADD KEY `groups_id_tech` (`groups_id_tech`);

--
-- Indexes for table `glpi_softwareversions`
--
ALTER TABLE `glpi_softwareversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `softwares_id` (`softwares_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `operatingsystems_id` (`operatingsystems_id`);

--
-- Indexes for table `glpi_solutiontemplates`
--
ALTER TABLE `glpi_solutiontemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `solutiontypes_id` (`solutiontypes_id`),
  ADD KEY `entities_id` (`entities_id`);

--
-- Indexes for table `glpi_solutiontypes`
--
ALTER TABLE `glpi_solutiontypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_ssovariables`
--
ALTER TABLE `glpi_ssovariables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `glpi_states`
--
ALTER TABLE `glpi_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `unicity` (`states_id`,`name`);

--
-- Indexes for table `glpi_suppliers`
--
ALTER TABLE `glpi_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `suppliertypes_id` (`suppliertypes_id`),
  ADD KEY `is_deleted` (`is_deleted`);

--
-- Indexes for table `glpi_suppliers_tickets`
--
ALTER TABLE `glpi_suppliers_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`tickets_id`,`type`,`suppliers_id`),
  ADD KEY `group` (`suppliers_id`,`type`);

--
-- Indexes for table `glpi_suppliertypes`
--
ALTER TABLE `glpi_suppliertypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_taskcategories`
--
ALTER TABLE `glpi_taskcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `taskcategories_id` (`taskcategories_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `is_helpdeskvisible` (`is_helpdeskvisible`);

--
-- Indexes for table `glpi_ticketcosts`
--
ALTER TABLE `glpi_ticketcosts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `tickets_id` (`tickets_id`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `budgets_id` (`budgets_id`);

--
-- Indexes for table `glpi_ticketfollowups`
--
ALTER TABLE `glpi_ticketfollowups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `tickets_id` (`tickets_id`),
  ADD KEY `is_private` (`is_private`),
  ADD KEY `requesttypes_id` (`requesttypes_id`);

--
-- Indexes for table `glpi_ticketrecurrents`
--
ALTER TABLE `glpi_ticketrecurrents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `tickettemplates_id` (`tickettemplates_id`),
  ADD KEY `next_creation_date` (`next_creation_date`);

--
-- Indexes for table `glpi_tickets`
--
ALTER TABLE `glpi_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `closedate` (`closedate`),
  ADD KEY `status` (`status`),
  ADD KEY `priority` (`priority`),
  ADD KEY `request_type` (`requesttypes_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `users_id_recipient` (`users_id_recipient`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `solvedate` (`solvedate`),
  ADD KEY `urgency` (`urgency`),
  ADD KEY `impact` (`impact`),
  ADD KEY `global_validation` (`global_validation`),
  ADD KEY `slas_id` (`slas_id`),
  ADD KEY `slalevels_id` (`slalevels_id`),
  ADD KEY `due_date` (`due_date`),
  ADD KEY `users_id_lastupdater` (`users_id_lastupdater`),
  ADD KEY `type` (`type`),
  ADD KEY `solutiontypes_id` (`solutiontypes_id`),
  ADD KEY `itilcategories_id` (`itilcategories_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `name` (`name`),
  ADD KEY `locations_id` (`locations_id`);

--
-- Indexes for table `glpi_ticketsatisfactions`
--
ALTER TABLE `glpi_ticketsatisfactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_id` (`tickets_id`);

--
-- Indexes for table `glpi_tickets_tickets`
--
ALTER TABLE `glpi_tickets_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unicity` (`tickets_id_1`,`tickets_id_2`);

--
-- Indexes for table `glpi_tickets_users`
--
ALTER TABLE `glpi_tickets_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`tickets_id`,`type`,`users_id`,`alternative_email`),
  ADD KEY `user` (`users_id`,`type`);

--
-- Indexes for table `glpi_tickettasks`
--
ALTER TABLE `glpi_tickettasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `tickets_id` (`tickets_id`),
  ADD KEY `is_private` (`is_private`),
  ADD KEY `taskcategories_id` (`taskcategories_id`);

--
-- Indexes for table `glpi_tickettemplatehiddenfields`
--
ALTER TABLE `glpi_tickettemplatehiddenfields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unicity` (`tickettemplates_id`,`num`);

--
-- Indexes for table `glpi_tickettemplatemandatoryfields`
--
ALTER TABLE `glpi_tickettemplatemandatoryfields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unicity` (`tickettemplates_id`,`num`);

--
-- Indexes for table `glpi_tickettemplatepredefinedfields`
--
ALTER TABLE `glpi_tickettemplatepredefinedfields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unicity` (`tickettemplates_id`,`num`);

--
-- Indexes for table `glpi_tickettemplates`
--
ALTER TABLE `glpi_tickettemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Indexes for table `glpi_ticketvalidations`
--
ALTER TABLE `glpi_ticketvalidations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `users_id_validate` (`users_id_validate`),
  ADD KEY `tickets_id` (`tickets_id`),
  ADD KEY `submission_date` (`submission_date`),
  ADD KEY `validation_date` (`validation_date`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `glpi_transfers`
--
ALTER TABLE `glpi_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`);

--
-- Indexes for table `glpi_usercategories`
--
ALTER TABLE `glpi_usercategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_useremails`
--
ALTER TABLE `glpi_useremails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`users_id`,`email`),
  ADD KEY `email` (`email`),
  ADD KEY `is_default` (`is_default`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `glpi_users`
--
ALTER TABLE `glpi_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`name`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `realname` (`realname`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `profiles_id` (`profiles_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `usertitles_id` (`usertitles_id`),
  ADD KEY `usercategories_id` (`usercategories_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `authitem` (`authtype`,`auths_id`);

--
-- Indexes for table `glpi_usertitles`
--
ALTER TABLE `glpi_usertitles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `glpi_virtualmachinestates`
--
ALTER TABLE `glpi_virtualmachinestates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `glpi_virtualmachinesystems`
--
ALTER TABLE `glpi_virtualmachinesystems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `glpi_virtualmachinetypes`
--
ALTER TABLE `glpi_virtualmachinetypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `glpi_vlans`
--
ALTER TABLE `glpi_vlans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `tag` (`tag`);

--
-- Indexes for table `glpi_wifinetworks`
--
ALTER TABLE `glpi_wifinetworks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `essid` (`essid`),
  ADD KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `glpi_alerts`
--
ALTER TABLE `glpi_alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_authldapreplicates`
--
ALTER TABLE `glpi_authldapreplicates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_authldaps`
--
ALTER TABLE `glpi_authldaps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_authmails`
--
ALTER TABLE `glpi_authmails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_autoupdatesystems`
--
ALTER TABLE `glpi_autoupdatesystems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_blacklists`
--
ALTER TABLE `glpi_blacklists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `glpi_bookmarks`
--
ALTER TABLE `glpi_bookmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_bookmarks_users`
--
ALTER TABLE `glpi_bookmarks_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_budgets`
--
ALTER TABLE `glpi_budgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_calendars`
--
ALTER TABLE `glpi_calendars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `glpi_calendarsegments`
--
ALTER TABLE `glpi_calendarsegments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `glpi_calendars_holidays`
--
ALTER TABLE `glpi_calendars_holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_cartridgeitems`
--
ALTER TABLE `glpi_cartridgeitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_cartridgeitems_printermodels`
--
ALTER TABLE `glpi_cartridgeitems_printermodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_cartridgeitemtypes`
--
ALTER TABLE `glpi_cartridgeitemtypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_cartridges`
--
ALTER TABLE `glpi_cartridges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_computerdisks`
--
ALTER TABLE `glpi_computerdisks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_computermodels`
--
ALTER TABLE `glpi_computermodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_computers`
--
ALTER TABLE `glpi_computers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_computers_items`
--
ALTER TABLE `glpi_computers_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_computers_softwarelicenses`
--
ALTER TABLE `glpi_computers_softwarelicenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_computers_softwareversions`
--
ALTER TABLE `glpi_computers_softwareversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_computertypes`
--
ALTER TABLE `glpi_computertypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_computervirtualmachines`
--
ALTER TABLE `glpi_computervirtualmachines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_configs`
--
ALTER TABLE `glpi_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `glpi_consumableitems`
--
ALTER TABLE `glpi_consumableitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_consumableitemtypes`
--
ALTER TABLE `glpi_consumableitemtypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_consumables`
--
ALTER TABLE `glpi_consumables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_contacts`
--
ALTER TABLE `glpi_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_contacts_suppliers`
--
ALTER TABLE `glpi_contacts_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_contacttypes`
--
ALTER TABLE `glpi_contacttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_contractcosts`
--
ALTER TABLE `glpi_contractcosts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_contracts`
--
ALTER TABLE `glpi_contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_contracts_items`
--
ALTER TABLE `glpi_contracts_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_contracts_suppliers`
--
ALTER TABLE `glpi_contracts_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_contracttypes`
--
ALTER TABLE `glpi_contracttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_crontasklogs`
--
ALTER TABLE `glpi_crontasklogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `glpi_crontasks`
--
ALTER TABLE `glpi_crontasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `glpi_devicecases`
--
ALTER TABLE `glpi_devicecases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_devicecasetypes`
--
ALTER TABLE `glpi_devicecasetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_devicecontrols`
--
ALTER TABLE `glpi_devicecontrols`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_devicedrives`
--
ALTER TABLE `glpi_devicedrives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_devicegraphiccards`
--
ALTER TABLE `glpi_devicegraphiccards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_deviceharddrives`
--
ALTER TABLE `glpi_deviceharddrives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_devicememories`
--
ALTER TABLE `glpi_devicememories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_devicememorytypes`
--
ALTER TABLE `glpi_devicememorytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `glpi_devicemotherboards`
--
ALTER TABLE `glpi_devicemotherboards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_devicenetworkcards`
--
ALTER TABLE `glpi_devicenetworkcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_devicepcis`
--
ALTER TABLE `glpi_devicepcis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_devicepowersupplies`
--
ALTER TABLE `glpi_devicepowersupplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_deviceprocessors`
--
ALTER TABLE `glpi_deviceprocessors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_devicesoundcards`
--
ALTER TABLE `glpi_devicesoundcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_displaypreferences`
--
ALTER TABLE `glpi_displaypreferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT for table `glpi_documentcategories`
--
ALTER TABLE `glpi_documentcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_documents`
--
ALTER TABLE `glpi_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `glpi_documents_items`
--
ALTER TABLE `glpi_documents_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `glpi_documenttypes`
--
ALTER TABLE `glpi_documenttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `glpi_domains`
--
ALTER TABLE `glpi_domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_entities_knowbaseitems`
--
ALTER TABLE `glpi_entities_knowbaseitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_entities_reminders`
--
ALTER TABLE `glpi_entities_reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_entities_rssfeeds`
--
ALTER TABLE `glpi_entities_rssfeeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_events`
--
ALTER TABLE `glpi_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `glpi_fieldblacklists`
--
ALTER TABLE `glpi_fieldblacklists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_fieldunicities`
--
ALTER TABLE `glpi_fieldunicities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_filesystems`
--
ALTER TABLE `glpi_filesystems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `glpi_fqdns`
--
ALTER TABLE `glpi_fqdns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_groups`
--
ALTER TABLE `glpi_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_groups_knowbaseitems`
--
ALTER TABLE `glpi_groups_knowbaseitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_groups_problems`
--
ALTER TABLE `glpi_groups_problems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_groups_reminders`
--
ALTER TABLE `glpi_groups_reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_groups_rssfeeds`
--
ALTER TABLE `glpi_groups_rssfeeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_groups_tickets`
--
ALTER TABLE `glpi_groups_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_groups_users`
--
ALTER TABLE `glpi_groups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_holidays`
--
ALTER TABLE `glpi_holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_infocoms`
--
ALTER TABLE `glpi_infocoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_interfacetypes`
--
ALTER TABLE `glpi_interfacetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `glpi_ipaddresses`
--
ALTER TABLE `glpi_ipaddresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_ipaddresses_ipnetworks`
--
ALTER TABLE `glpi_ipaddresses_ipnetworks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_ipnetworks`
--
ALTER TABLE `glpi_ipnetworks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_ipnetworks_vlans`
--
ALTER TABLE `glpi_ipnetworks_vlans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_items_devicecases`
--
ALTER TABLE `glpi_items_devicecases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_items_devicecontrols`
--
ALTER TABLE `glpi_items_devicecontrols`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_items_devicedrives`
--
ALTER TABLE `glpi_items_devicedrives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_items_devicegraphiccards`
--
ALTER TABLE `glpi_items_devicegraphiccards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_items_deviceharddrives`
--
ALTER TABLE `glpi_items_deviceharddrives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_items_devicememories`
--
ALTER TABLE `glpi_items_devicememories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_items_devicemotherboards`
--
ALTER TABLE `glpi_items_devicemotherboards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_items_devicenetworkcards`
--
ALTER TABLE `glpi_items_devicenetworkcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_items_devicepcis`
--
ALTER TABLE `glpi_items_devicepcis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_items_devicepowersupplies`
--
ALTER TABLE `glpi_items_devicepowersupplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_items_deviceprocessors`
--
ALTER TABLE `glpi_items_deviceprocessors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_items_devicesoundcards`
--
ALTER TABLE `glpi_items_devicesoundcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_items_problems`
--
ALTER TABLE `glpi_items_problems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_itilcategories`
--
ALTER TABLE `glpi_itilcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `glpi_knowbaseitemcategories`
--
ALTER TABLE `glpi_knowbaseitemcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_knowbaseitems`
--
ALTER TABLE `glpi_knowbaseitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_knowbaseitems_profiles`
--
ALTER TABLE `glpi_knowbaseitems_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_knowbaseitems_users`
--
ALTER TABLE `glpi_knowbaseitems_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_links`
--
ALTER TABLE `glpi_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_links_itemtypes`
--
ALTER TABLE `glpi_links_itemtypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_locations`
--
ALTER TABLE `glpi_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `glpi_logs`
--
ALTER TABLE `glpi_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `glpi_mailcollectors`
--
ALTER TABLE `glpi_mailcollectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_manufacturers`
--
ALTER TABLE `glpi_manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_monitormodels`
--
ALTER TABLE `glpi_monitormodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_monitors`
--
ALTER TABLE `glpi_monitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_monitortypes`
--
ALTER TABLE `glpi_monitortypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_netpoints`
--
ALTER TABLE `glpi_netpoints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networkaliases`
--
ALTER TABLE `glpi_networkaliases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networkequipmentfirmwares`
--
ALTER TABLE `glpi_networkequipmentfirmwares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networkequipmentmodels`
--
ALTER TABLE `glpi_networkequipmentmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networkequipments`
--
ALTER TABLE `glpi_networkequipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networkequipmenttypes`
--
ALTER TABLE `glpi_networkequipmenttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networkinterfaces`
--
ALTER TABLE `glpi_networkinterfaces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networknames`
--
ALTER TABLE `glpi_networknames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networkportaggregates`
--
ALTER TABLE `glpi_networkportaggregates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networkportaliases`
--
ALTER TABLE `glpi_networkportaliases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networkportdialups`
--
ALTER TABLE `glpi_networkportdialups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networkportethernets`
--
ALTER TABLE `glpi_networkportethernets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networkportlocals`
--
ALTER TABLE `glpi_networkportlocals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networkports`
--
ALTER TABLE `glpi_networkports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networkports_networkports`
--
ALTER TABLE `glpi_networkports_networkports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networkports_vlans`
--
ALTER TABLE `glpi_networkports_vlans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networkportwifis`
--
ALTER TABLE `glpi_networkportwifis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_networks`
--
ALTER TABLE `glpi_networks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_notifications`
--
ALTER TABLE `glpi_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `glpi_notificationtargets`
--
ALTER TABLE `glpi_notificationtargets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `glpi_notificationtemplates`
--
ALTER TABLE `glpi_notificationtemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `glpi_notificationtemplatetranslations`
--
ALTER TABLE `glpi_notificationtemplatetranslations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `glpi_notimportedemails`
--
ALTER TABLE `glpi_notimportedemails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_operatingsystems`
--
ALTER TABLE `glpi_operatingsystems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_operatingsystemservicepacks`
--
ALTER TABLE `glpi_operatingsystemservicepacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_operatingsystemversions`
--
ALTER TABLE `glpi_operatingsystemversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_peripheralmodels`
--
ALTER TABLE `glpi_peripheralmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_peripherals`
--
ALTER TABLE `glpi_peripherals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_peripheraltypes`
--
ALTER TABLE `glpi_peripheraltypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_phonemodels`
--
ALTER TABLE `glpi_phonemodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_phonepowersupplies`
--
ALTER TABLE `glpi_phonepowersupplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_phones`
--
ALTER TABLE `glpi_phones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_phonetypes`
--
ALTER TABLE `glpi_phonetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_planningrecalls`
--
ALTER TABLE `glpi_planningrecalls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_plugins`
--
ALTER TABLE `glpi_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_printermodels`
--
ALTER TABLE `glpi_printermodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_printers`
--
ALTER TABLE `glpi_printers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_printertypes`
--
ALTER TABLE `glpi_printertypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_problems`
--
ALTER TABLE `glpi_problems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_problems_suppliers`
--
ALTER TABLE `glpi_problems_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_problems_tickets`
--
ALTER TABLE `glpi_problems_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_problems_users`
--
ALTER TABLE `glpi_problems_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_problemtasks`
--
ALTER TABLE `glpi_problemtasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_profiles`
--
ALTER TABLE `glpi_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `glpi_profiles_reminders`
--
ALTER TABLE `glpi_profiles_reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_profiles_rssfeeds`
--
ALTER TABLE `glpi_profiles_rssfeeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_profiles_users`
--
ALTER TABLE `glpi_profiles_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `glpi_reminders`
--
ALTER TABLE `glpi_reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_reminders_users`
--
ALTER TABLE `glpi_reminders_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_requesttypes`
--
ALTER TABLE `glpi_requesttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `glpi_reservationitems`
--
ALTER TABLE `glpi_reservationitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_reservations`
--
ALTER TABLE `glpi_reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rssfeeds`
--
ALTER TABLE `glpi_rssfeeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rssfeeds_users`
--
ALTER TABLE `glpi_rssfeeds_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_ruleactions`
--
ALTER TABLE `glpi_ruleactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `glpi_rulecachecomputermodels`
--
ALTER TABLE `glpi_rulecachecomputermodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecachecomputertypes`
--
ALTER TABLE `glpi_rulecachecomputertypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecachemanufacturers`
--
ALTER TABLE `glpi_rulecachemanufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecachemonitormodels`
--
ALTER TABLE `glpi_rulecachemonitormodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecachemonitortypes`
--
ALTER TABLE `glpi_rulecachemonitortypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecachenetworkequipmentmodels`
--
ALTER TABLE `glpi_rulecachenetworkequipmentmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecachenetworkequipmenttypes`
--
ALTER TABLE `glpi_rulecachenetworkequipmenttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecacheoperatingsystems`
--
ALTER TABLE `glpi_rulecacheoperatingsystems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecacheoperatingsystemservicepacks`
--
ALTER TABLE `glpi_rulecacheoperatingsystemservicepacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecacheoperatingsystemversions`
--
ALTER TABLE `glpi_rulecacheoperatingsystemversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecacheperipheralmodels`
--
ALTER TABLE `glpi_rulecacheperipheralmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecacheperipheraltypes`
--
ALTER TABLE `glpi_rulecacheperipheraltypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecachephonemodels`
--
ALTER TABLE `glpi_rulecachephonemodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecachephonetypes`
--
ALTER TABLE `glpi_rulecachephonetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecacheprintermodels`
--
ALTER TABLE `glpi_rulecacheprintermodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecacheprinters`
--
ALTER TABLE `glpi_rulecacheprinters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecacheprintertypes`
--
ALTER TABLE `glpi_rulecacheprintertypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecachesoftwares`
--
ALTER TABLE `glpi_rulecachesoftwares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_rulecriterias`
--
ALTER TABLE `glpi_rulecriterias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `glpi_rulerightparameters`
--
ALTER TABLE `glpi_rulerightparameters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `glpi_rules`
--
ALTER TABLE `glpi_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `glpi_slalevelactions`
--
ALTER TABLE `glpi_slalevelactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_slalevelcriterias`
--
ALTER TABLE `glpi_slalevelcriterias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_slalevels`
--
ALTER TABLE `glpi_slalevels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_slalevels_tickets`
--
ALTER TABLE `glpi_slalevels_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_slas`
--
ALTER TABLE `glpi_slas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_softwarecategories`
--
ALTER TABLE `glpi_softwarecategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `glpi_softwarelicenses`
--
ALTER TABLE `glpi_softwarelicenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_softwarelicensetypes`
--
ALTER TABLE `glpi_softwarelicensetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `glpi_softwares`
--
ALTER TABLE `glpi_softwares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_softwareversions`
--
ALTER TABLE `glpi_softwareversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_solutiontemplates`
--
ALTER TABLE `glpi_solutiontemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_solutiontypes`
--
ALTER TABLE `glpi_solutiontypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_ssovariables`
--
ALTER TABLE `glpi_ssovariables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `glpi_states`
--
ALTER TABLE `glpi_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_suppliers`
--
ALTER TABLE `glpi_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_suppliers_tickets`
--
ALTER TABLE `glpi_suppliers_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_suppliertypes`
--
ALTER TABLE `glpi_suppliertypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_taskcategories`
--
ALTER TABLE `glpi_taskcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_ticketcosts`
--
ALTER TABLE `glpi_ticketcosts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_ticketfollowups`
--
ALTER TABLE `glpi_ticketfollowups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_ticketrecurrents`
--
ALTER TABLE `glpi_ticketrecurrents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_tickets`
--
ALTER TABLE `glpi_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `glpi_ticketsatisfactions`
--
ALTER TABLE `glpi_ticketsatisfactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_tickets_tickets`
--
ALTER TABLE `glpi_tickets_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_tickets_users`
--
ALTER TABLE `glpi_tickets_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `glpi_tickettasks`
--
ALTER TABLE `glpi_tickettasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_tickettemplatehiddenfields`
--
ALTER TABLE `glpi_tickettemplatehiddenfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_tickettemplatemandatoryfields`
--
ALTER TABLE `glpi_tickettemplatemandatoryfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `glpi_tickettemplatepredefinedfields`
--
ALTER TABLE `glpi_tickettemplatepredefinedfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_tickettemplates`
--
ALTER TABLE `glpi_tickettemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `glpi_ticketvalidations`
--
ALTER TABLE `glpi_ticketvalidations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_transfers`
--
ALTER TABLE `glpi_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `glpi_usercategories`
--
ALTER TABLE `glpi_usercategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_useremails`
--
ALTER TABLE `glpi_useremails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `glpi_users`
--
ALTER TABLE `glpi_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `glpi_usertitles`
--
ALTER TABLE `glpi_usertitles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_virtualmachinestates`
--
ALTER TABLE `glpi_virtualmachinestates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_virtualmachinesystems`
--
ALTER TABLE `glpi_virtualmachinesystems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_virtualmachinetypes`
--
ALTER TABLE `glpi_virtualmachinetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_vlans`
--
ALTER TABLE `glpi_vlans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glpi_wifinetworks`
--
ALTER TABLE `glpi_wifinetworks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
