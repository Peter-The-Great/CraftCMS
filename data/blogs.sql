-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 18 okt 2022 om 14:47
-- Serverversie: 10.4.25-MariaDB
-- PHP-versie: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT 1,
  `dateRead` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `assetindexdata`
--

CREATE TABLE `assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT 0,
  `completed` tinyint(1) DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `uploaderId` int(11) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `assets`
--

INSERT INTO `assets` (`id`, `volumeId`, `folderId`, `uploaderId`, `filename`, `kind`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(6, 1, 1, 1, 'thumnail.jpeg', 'image', 1280, 720, 106060, NULL, NULL, NULL, '2021-09-06 12:05:19', '2021-09-06 12:05:19', '2021-09-06 12:05:19', 'e0642e9c-dd28-42e3-8b44-7592675cb1c1'),
(89, 1, 1, 1, 'sddefault.jpeg', 'image', 640, 480, 71060, NULL, NULL, NULL, '2021-09-07 13:18:58', '2021-09-07 13:18:58', '2021-09-07 13:18:58', '84029411-a4f6-4d41-81e7-3f089e7bf9d3');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `assettransformindex`
--

CREATE TABLE `assettransformindex` (
  `id` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT 0,
  `inProgress` tinyint(1) NOT NULL DEFAULT 0,
  `error` tinyint(1) NOT NULL DEFAULT 0,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `assettransformindex`
--

INSERT INTO `assettransformindex` (`id`, `assetId`, `filename`, `format`, `location`, `volumeId`, `fileExists`, `inProgress`, `error`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 6, 'thumnail.jpeg', NULL, '_100x100_crop_center-center_75_none', 1, 1, 0, 0, '2021-09-06 12:59:32', '2021-09-06 12:59:32', '2021-09-06 12:59:32', '81e8f01c-df0a-4c9d-8fab-41c4b04246c7'),
(2, 6, 'thumnail.jpeg', NULL, '_50x50_crop_center-center_75_none', 1, 1, 0, 0, '2021-09-06 12:59:51', '2021-09-06 12:59:51', '2021-09-06 12:59:51', '13aaa406-9ac9-44c4-bcb9-6f6e118a2c51'),
(3, 6, 'thumnail.jpeg', NULL, '_400x300_crop_center-center_75_none', 1, 1, 0, 0, '2021-09-06 13:01:08', '2021-09-06 13:01:08', '2021-09-06 13:01:08', '282b0de3-c03b-4780-86b6-0715ca5c765d'),
(4, 6, 'thumnail.jpeg', NULL, '_200x100_crop_center-center_75_none', 1, 1, 0, 0, '2021-09-06 13:03:18', '2021-09-06 13:03:18', '2021-09-06 13:03:18', 'fbed757a-6a35-4779-9573-67999bca09f6'),
(5, 6, 'thumnail.jpeg', NULL, '_200x200_crop_center-center_75_none', 1, 1, 0, 0, '2021-09-06 13:03:23', '2021-09-06 13:03:23', '2021-09-06 13:03:24', '3e086016-8943-48e0-9680-28ea0211c3bf'),
(6, 6, 'thumnail.jpeg', NULL, '_300x200_crop_center-center_75_none', 1, 1, 0, 0, '2021-09-06 13:03:28', '2021-09-06 13:03:28', '2021-09-06 13:03:29', '47ee692b-2e4b-46a3-a4df-d577ddbc79c8'),
(7, 6, 'thumnail.jpeg', NULL, '_400x400_crop_center-center_75_none', 1, 1, 0, 0, '2021-09-06 13:03:35', '2021-09-06 13:03:35', '2021-09-06 13:03:36', '4dc4126c-7ed6-42a2-beb4-a28dde8eab57'),
(8, 89, 'sddefault.jpeg', NULL, '_400x300_crop_center-center_75_none', 1, 1, 0, 0, '2021-09-07 13:22:04', '2021-09-07 13:22:04', '2021-09-07 13:22:04', '2ace41b9-1f6d-4497-8d28-7ff3fd7827b1');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `assettransforms`
--

CREATE TABLE `assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categorygroups`
--

CREATE TABLE `categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `defaultPlacement` enum('beginning','end') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'end',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categorygroups_sites`
--

CREATE TABLE `categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `uriFormat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `changedattributes`
--

CREATE TABLE `changedattributes` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `attribute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `changedattributes`
--

INSERT INTO `changedattributes` (`elementId`, `siteId`, `attribute`, `dateUpdated`, `propagated`, `userId`) VALUES
(1, 1, 'firstName', '2022-04-21 15:42:48', 0, 1),
(1, 1, 'lastName', '2022-04-21 15:42:48', 0, 1),
(1, 1, 'lastPasswordChangeDate', '2022-04-21 15:42:48', 0, 1),
(1, 1, 'password', '2022-04-21 15:42:48', 0, 1),
(1, 1, 'verificationCode', '2022-04-21 15:42:48', 0, 1),
(1, 1, 'verificationCodeIssuedDate', '2022-04-21 15:42:48', 0, 1),
(4, 1, 'slug', '2021-09-06 12:02:14', 0, 1),
(4, 1, 'title', '2021-09-06 12:02:14', 0, 1),
(4, 1, 'uri', '2021-09-06 12:02:14', 0, 1),
(10, 1, 'title', '2021-09-08 07:16:03', 0, 1),
(22, 1, 'authorId', '2021-09-08 10:06:51', 0, 1),
(22, 1, 'slug', '2021-09-08 10:07:03', 0, 1),
(22, 1, 'uri', '2021-09-08 10:12:10', 0, 1),
(30, 1, 'title', '2021-09-07 10:08:50', 0, 1),
(32, 1, 'title', '2021-09-07 10:09:00', 0, 1),
(34, 1, 'title', '2021-09-07 10:09:06', 0, 1),
(42, 1, 'slug', '2021-09-07 13:15:35', 0, 1),
(42, 1, 'title', '2021-09-07 13:15:35', 0, 1),
(42, 1, 'uri', '2021-09-07 13:15:35', 0, 1),
(170, 1, 'slug', '2021-09-08 10:00:44', 0, 1),
(170, 1, 'title', '2021-09-08 10:02:49', 0, 1),
(170, 1, 'uri', '2021-09-09 10:03:18', 0, 1),
(172, 1, 'slug', '2021-09-08 09:03:14', 0, 1),
(172, 1, 'title', '2021-09-08 09:03:14', 0, 1),
(172, 1, 'uri', '2021-09-09 10:03:18', 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `changedfields`
--

CREATE TABLE `changedfields` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `changedfields`
--

INSERT INTO `changedfields` (`elementId`, `siteId`, `fieldId`, `dateUpdated`, `propagated`, `userId`) VALUES
(4, 1, 1, '2021-09-06 12:02:27', 0, 1),
(4, 1, 2, '2021-09-06 12:02:26', 0, 1),
(4, 1, 3, '2021-09-06 12:07:09', 0, 1),
(4, 1, 4, '2021-09-07 09:02:46', 0, 1),
(10, 1, 8, '2021-09-06 14:12:51', 0, 1),
(22, 1, 8, '2021-09-08 10:12:11', 0, 1),
(22, 1, 16, '2021-09-10 14:53:13', 0, 1),
(30, 1, 1, '2021-09-07 10:08:50', 0, 1),
(30, 1, 2, '2021-09-07 10:08:50', 0, 1),
(30, 1, 3, '2021-09-07 10:08:50', 0, 1),
(30, 1, 4, '2021-09-07 10:08:50', 0, 1),
(32, 1, 4, '2021-09-07 10:09:00', 0, 1),
(34, 1, 4, '2021-09-07 10:09:06', 0, 1),
(42, 1, 1, '2021-09-07 14:53:45', 0, 1),
(42, 1, 3, '2021-09-07 14:53:45', 0, 1),
(42, 1, 4, '2021-09-07 14:57:30', 0, 1),
(42, 1, 9, '2021-09-07 14:57:30', 0, 1),
(87, 1, 11, '2021-09-07 14:53:45', 0, 1),
(88, 1, 10, '2021-09-07 14:57:31', 0, 1),
(170, 1, 12, '2021-09-09 10:03:18', 0, 1),
(172, 1, 12, '2021-09-09 10:03:18', 0, 1),
(211, 1, 13, '2021-09-08 14:58:53', 0, 1),
(212, 1, 14, '2021-09-08 14:58:53', 0, 1),
(212, 1, 15, '2021-09-08 14:58:53', 0, 1),
(222, 1, 1, '2021-09-08 14:56:26', 0, 1),
(222, 1, 3, '2021-09-08 14:56:26', 0, 1),
(222, 1, 4, '2021-09-08 14:56:26', 0, 1),
(222, 1, 9, '2021-09-08 14:56:26', 0, 1),
(223, 1, 11, '2021-09-08 14:56:26', 0, 1),
(224, 1, 10, '2021-09-08 14:56:26', 0, 1),
(234, 1, 12, '2021-09-09 11:45:11', 0, 1),
(236, 1, 4, '2021-09-10 14:48:54', 0, 1),
(236, 1, 9, '2021-09-10 14:48:56', 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `field_subtext_huynruhi` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_pagecopy_zwjsxauz` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_videolink_ehemhfzb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_introduction_itoqovjy` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `content`
--

INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_subtext_huynruhi`, `field_pagecopy_zwjsxauz`, `field_videolink_ehemhfzb`, `field_introduction_itoqovjy`) VALUES
(1, 1, 1, NULL, '2021-09-06 10:09:22', '2022-04-21 15:42:47', 'cf021743-b87e-4bf2-bff7-2e0c7dd7d31a', NULL, NULL, NULL, NULL),
(2, 2, 1, NULL, '2021-09-06 11:59:23', '2021-09-06 11:59:23', '3bd9de7b-1764-46d9-b57d-95fe55b85e2c', NULL, NULL, NULL, NULL),
(3, 3, 1, NULL, '2021-09-06 11:59:24', '2021-09-06 11:59:24', '5d8a264e-9f42-4804-a059-17d32c92e259', NULL, NULL, NULL, NULL),
(4, 4, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture', '2021-09-06 11:59:52', '2021-09-07 09:02:46', '9d36845c-286c-4d85-86fb-ef404489d2f6', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/embed/094y1Z2wpJg', NULL),
(5, 5, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture', '2021-09-06 12:04:53', '2021-09-06 12:04:53', 'c5aa5eb7-d6b0-4a04-a8cb-665fe3e62367', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/watch?v=094y1Z2wpJg', NULL),
(6, 6, 1, 'Thumnail', '2021-09-06 12:05:18', '2021-09-06 12:05:18', 'a176302d-d4b3-42c0-8cac-f0946cc421f0', NULL, NULL, NULL, NULL),
(8, 8, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture', '2021-09-06 12:07:09', '2021-09-06 12:07:09', 'ba9a0537-65bc-4508-87e9-9026b80b8f9b', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/watch?v=094y1Z2wpJg', NULL),
(9, 9, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture', '2021-09-06 12:07:16', '2021-09-06 12:07:16', '986e92d6-96c1-480f-b90b-34d7f25697f5', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/watch?v=094y1Z2wpJg', NULL),
(10, 10, 1, 'Homepage', '2021-09-06 13:11:08', '2021-09-08 07:16:04', 'd7289ea7-0d83-424b-8fba-f51ff009d65d', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post videos.'),
(11, 11, 1, 'homepage', '2021-09-06 13:11:08', '2021-09-06 13:11:08', '9c0065cf-0ce6-49ba-8a54-78c24e30ac9e', NULL, NULL, NULL, NULL),
(12, 12, 1, 'homepage', '2021-09-06 14:08:35', '2021-09-06 14:08:35', '16721323-b5ed-48f3-892e-f31140c55f73', NULL, NULL, NULL, NULL),
(14, 14, 1, 'homepage', '2021-09-06 14:12:45', '2021-09-06 14:12:45', 'd9ac5153-eba0-4f3f-a068-a95a2e652af8', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik maak videos.'),
(16, 16, 1, 'homepage', '2021-09-06 14:12:51', '2021-09-06 14:12:51', '4f69291d-7462-408a-88c5-c57451332686', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post videos.'),
(17, 17, 1, 'homepage', '2021-09-06 14:23:35', '2021-09-06 14:23:35', '5e82ac07-76b8-487e-a922-54a86d920651', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post videos.'),
(18, 18, 1, 'homepage', '2021-09-06 14:35:54', '2021-09-06 14:35:54', '94bd1d7a-f952-4eca-be65-84ce06103094', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post videos.'),
(19, 19, 1, 'homepage', '2021-09-06 14:36:00', '2021-09-06 14:36:00', 'f254f0ac-694c-40df-aedd-90a4e52ec0cb', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post videos.'),
(20, 20, 1, 'homepage', '2021-09-06 14:37:12', '2021-09-06 14:37:12', '73665f51-50c7-41a0-8873-fd1582814029', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post videos.'),
(21, 21, 1, 'homepage', '2021-09-06 14:38:08', '2021-09-06 14:38:08', 'c4d97af2-3689-43bb-82c8-234de834df41', NULL, NULL, NULL, NULL),
(22, 22, 1, 'navbar', '2021-09-06 14:39:19', '2021-09-10 14:53:13', '75583f3c-1127-4b6a-b385-72b956bf90d8', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.'),
(23, 23, 1, 'navbar', '2021-09-06 14:39:19', '2021-09-06 14:39:19', '334b5d94-05f4-47d9-9037-3f1ef41709b3', NULL, NULL, NULL, NULL),
(25, 25, 1, 'navbar', '2021-09-06 14:39:59', '2021-09-06 14:39:59', 'c9ea51ee-b920-473e-a25e-f50e67444ed2', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.'),
(26, 26, 1, 'navbar', '2021-09-06 14:40:13', '2021-09-06 14:40:13', '5c8d9c81-5e75-43d2-80c5-d8dc1f821c31', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.'),
(27, 27, 1, 'navbar', '2021-09-06 14:40:32', '2021-09-06 14:40:32', 'b32a882a-e061-4cfe-be88-32de089add7a', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.'),
(29, 29, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture', '2021-09-07 09:02:46', '2021-09-07 09:02:46', '0505465c-e964-47df-afcd-fc8dc0946757', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/embed/094y1Z2wpJg', NULL),
(30, 30, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture', '2021-09-07 10:07:35', '2021-09-07 10:08:51', 'cc52306a-c58d-40aa-b637-84256f9203f2', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/embed/094y1Z2wpJg', NULL),
(31, 31, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture - kopie', '2021-09-07 10:07:36', '2021-09-07 10:07:36', 'c44afc96-7b1d-4294-af61-75fbe78ea2d9', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/embed/094y1Z2wpJg', NULL),
(32, 32, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture', '2021-09-07 10:07:40', '2021-09-07 10:09:00', '520dd3b9-8ffc-4b14-91ba-2748b16db3d5', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/embed/094y1Z2wpJg', NULL);
INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_subtext_huynruhi`, `field_pagecopy_zwjsxauz`, `field_videolink_ehemhfzb`, `field_introduction_itoqovjy`) VALUES
(33, 33, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture - kopie', '2021-09-07 10:07:40', '2021-09-07 10:07:40', '2b7731fa-61a2-4715-8ce4-4f4b747c4b97', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/embed/094y1Z2wpJg', NULL),
(34, 34, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture', '2021-09-07 10:07:41', '2021-09-07 10:09:06', 'b77319ac-738d-4f26-a220-cd13e2b65aae', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/embed/094y1Z2wpJg', NULL),
(35, 35, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture - kopie - kopie', '2021-09-07 10:07:41', '2021-09-07 10:07:41', '09e0d706-9156-4a5b-a9a5-f48be90db218', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/embed/094y1Z2wpJg', NULL),
(37, 37, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture', '2021-09-07 10:08:51', '2021-09-07 10:08:51', '4b1c6291-df7a-4755-a1d5-416a1d5ad6d4', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/embed/094y1Z2wpJg', NULL),
(39, 39, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture', '2021-09-07 10:09:00', '2021-09-07 10:09:00', 'e28bb0ab-17d0-4326-9a35-281d08bd6da2', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/embed/094y1Z2wpJg', NULL),
(41, 41, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture', '2021-09-07 10:09:06', '2021-09-07 10:09:06', 'e7233966-51ba-42e9-8301-b1742405f3f7', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/embed/094y1Z2wpJg', NULL),
(42, 42, 1, 'What is not Random', '2021-09-07 13:09:13', '2021-09-07 14:57:30', '7c22a954-a697-455e-a0b3-bc17f5e5c7f7', '<p>Is the future of the universe already determined? Vsauce tackles the question \"What Is Random?\": <a href=\"https://www.youtube.com/watch?v=9rIy0xY99a0&amp;t=0s\">https://youtu.be/9rIy0xY99a0</a></p>', NULL, NULL, NULL),
(43, 89, 1, 'Sddefault', '2021-09-07 13:18:57', '2021-09-07 13:18:57', '6f3a26bb-5e1a-4d0e-b7fa-85e244c93ad2', NULL, NULL, NULL, NULL),
(44, 90, 1, 'What is not Random', '2021-09-07 13:20:19', '2021-09-07 13:20:19', '83a67c7d-f7ab-49b0-ad31-3e219be8d037', NULL, NULL, NULL, NULL),
(46, 96, 1, 'What is not Random', '2021-09-07 13:22:45', '2021-09-07 13:22:45', 'e016f37a-3caa-44e7-8ebc-b7a856c270f3', '<p>Ligt de toekomst van het universum al vast? Vsauce pakt de vraag aan \" Wat Is Random?\": <a href=\"https://www.youtube.com/watch?v=9rIy0xY99a0&amp;t=0s\">https://youtu.be/9rIy0xY99a0</a></p>', NULL, NULL, NULL),
(48, 102, 1, 'What is not Random', '2021-09-07 13:23:47', '2021-09-07 13:23:47', '1c2ca194-92a2-4e99-8634-89bf6e290ff6', '<p>Is the future of the universe already determined? Vsauce tackles the question \"What Is Random?\": <a href=\"https://www.youtube.com/watch?v=9rIy0xY99a0&amp;t=0s\">https://youtu.be/9rIy0xY99a0</a></p>', NULL, NULL, NULL),
(49, 105, 1, 'What is not Random', '2021-09-07 13:42:02', '2021-09-07 13:42:02', '233b5ffa-a18a-4678-91c6-6c7919b3615c', '<p>Is the future of the universe already determined? Vsauce tackles the question \"What Is Random?\": <a href=\"https://www.youtube.com/watch?v=9rIy0xY99a0&amp;t=0s\">https://youtu.be/9rIy0xY99a0</a></p>', NULL, NULL, NULL),
(51, 111, 1, 'What is not Random', '2021-09-07 13:44:37', '2021-09-07 13:44:37', '44101b14-bee8-4110-acfc-549e992234e6', '<p>Is the future of the universe already determined? Vsauce tackles the question \"What Is Random?\": <a href=\"https://www.youtube.com/watch?v=9rIy0xY99a0&amp;t=0s\">https://youtu.be/9rIy0xY99a0</a></p>', NULL, NULL, NULL),
(53, 117, 1, 'What is not Random', '2021-09-07 14:10:50', '2021-09-07 14:10:50', '24874be7-3148-421e-9061-60d2c2860f4c', '<p>Is the future of the universe already determined? Vsauce tackles the question \"What Is Random?\": <a href=\"https://www.youtube.com/watch?v=9rIy0xY99a0&amp;t=0s\">https://youtu.be/9rIy0xY99a0</a></p>', NULL, NULL, NULL),
(55, 123, 1, 'What is not Random', '2021-09-07 14:11:22', '2021-09-07 14:11:22', 'bc718f52-dae8-48e2-aa3b-d489f387365e', '<p>Is the future of the universe already determined? Vsauce tackles the question \"What Is Random?\": <a href=\"https://www.youtube.com/watch?v=9rIy0xY99a0&amp;t=0s\">https://youtu.be/9rIy0xY99a0</a></p>', NULL, NULL, NULL),
(57, 129, 1, 'What is not Random', '2021-09-07 14:32:19', '2021-09-07 14:32:19', '7371c0ae-5643-4c51-9616-a2ecfdf2bcfb', '<p>Is the future of the universe already determined? Vsauce tackles the question \"What Is Random?\": <a href=\"https://www.youtube.com/watch?v=9rIy0xY99a0&amp;t=0s\">https://youtu.be/9rIy0xY99a0</a></p>', NULL, NULL, NULL),
(59, 135, 1, 'What is not Random', '2021-09-07 14:32:34', '2021-09-07 14:32:34', '5a200724-e116-45e6-959c-57b63c486987', '<p>Is the future of the universe already determined? Vsauce tackles the question \"What Is Random?\": <a href=\"https://www.youtube.com/watch?v=9rIy0xY99a0&amp;t=0s\">https://youtu.be/9rIy0xY99a0</a></p>', NULL, NULL, NULL),
(61, 141, 1, 'What is not Random', '2021-09-07 14:33:52', '2021-09-07 14:33:52', '716bea11-f0e8-4f86-9e6a-7e21c786a209', '<p>Is the future of the universe already determined? Vsauce tackles the question \"What Is Random?\": <a href=\"https://www.youtube.com/watch?v=9rIy0xY99a0&amp;t=0s\">https://youtu.be/9rIy0xY99a0</a></p>', NULL, NULL, NULL),
(63, 147, 1, 'What is not Random', '2021-09-07 14:35:36', '2021-09-07 14:35:36', 'd17d104d-030b-473e-87d6-d6e473e425fc', '<p>Is the future of the universe already determined? Vsauce tackles the question \"What Is Random?\": <a href=\"https://www.youtube.com/watch?v=9rIy0xY99a0&amp;t=0s\">https://youtu.be/9rIy0xY99a0</a></p>', NULL, NULL, NULL),
(65, 153, 1, 'What is not Random', '2021-09-07 14:36:15', '2021-09-07 14:36:15', 'cf3b5555-64a3-4fa0-b71e-7259a460efb2', '<p>Is the future of the universe already determined? Vsauce tackles the question \"What Is Random?\": <a href=\"https://www.youtube.com/watch?v=9rIy0xY99a0&amp;t=0s\">https://youtu.be/9rIy0xY99a0</a></p>', NULL, NULL, NULL),
(67, 159, 1, 'What is not Random', '2021-09-07 14:53:46', '2021-09-07 14:53:46', '660995b8-becc-4d36-bd0c-57861b008ac8', '<p>Is the future of the universe already determined? Vsauce tackles the question \"What Is Random?\": <a href=\"https://www.youtube.com/watch?v=9rIy0xY99a0&amp;t=0s\">https://youtu.be/9rIy0xY99a0</a></p>', NULL, NULL, NULL),
(69, 165, 1, 'What is not Random', '2021-09-07 14:57:31', '2021-09-07 14:57:31', '21700a2e-7900-47e5-9d33-7c99275e1db1', '<p>Is the future of the universe already determined? Vsauce tackles the question \"What Is Random?\": <a href=\"https://www.youtube.com/watch?v=9rIy0xY99a0&amp;t=0s\">https://youtu.be/9rIy0xY99a0</a></p>', NULL, NULL, NULL),
(70, 168, 1, 'Homepage', '2021-09-08 07:16:03', '2021-09-08 07:16:03', 'd9a14d5d-1046-4fa6-86e6-88d7c3fc718f', NULL, NULL, NULL, NULL),
(71, 169, 1, 'Homepage', '2021-09-08 07:16:04', '2021-09-08 07:16:04', 'ed38e2c2-e68a-460d-abce-cd33eafc9a42', NULL, NULL, NULL, NULL),
(72, 170, 1, 'About', '2021-09-08 09:02:45', '2021-09-09 10:03:18', '8e216746-abfe-43b6-8a3e-8e1e80277d3d', NULL, NULL, NULL, NULL),
(73, 171, 1, 'About Me', '2021-09-08 09:02:58', '2021-09-08 09:02:58', '362afc23-fbf1-49ab-9b9c-d64d87ab83cb', NULL, NULL, NULL, NULL),
(74, 172, 1, 'Contact', '2021-09-08 09:03:03', '2021-09-09 10:03:18', 'a23b2345-9f7e-4779-af02-183794700c06', NULL, NULL, NULL, NULL),
(75, 173, 1, 'Contact', '2021-09-08 09:17:39', '2021-09-08 09:17:39', 'c63afe81-33e2-4670-b3a8-d1b0bdc80503', NULL, NULL, NULL, NULL),
(77, 175, 1, 'About', '2021-09-08 09:23:36', '2021-09-08 09:23:36', '48fd4c1a-1714-4eb3-8767-f5f44f80711c', NULL, NULL, NULL, NULL),
(79, 177, 1, 'About', '2021-09-08 10:00:44', '2021-09-08 10:00:44', '0dccb2c0-ad0d-42d3-bc66-3211cf417a9c', NULL, NULL, NULL, NULL),
(81, 179, 1, 'about', '2021-09-08 10:02:20', '2021-09-08 10:02:20', 'd626bb91-ab73-4b6c-83e9-d5233121875a', NULL, NULL, NULL, NULL),
(83, 181, 1, 'About', '2021-09-08 10:02:49', '2021-09-08 10:02:49', '672101c6-6b73-4f2e-94b8-c8a35c70ad0e', NULL, NULL, NULL, NULL),
(84, 182, 1, 'navbar', '2021-09-08 10:06:21', '2021-09-08 10:06:21', 'c7d7b9e8-be3d-4023-82da-ef6131af4cdb', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.'),
(85, 183, 1, 'navbar', '2021-09-08 10:06:50', '2021-09-08 10:06:50', '2aecae7c-22ac-4e1b-a091-7d3154551532', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.'),
(86, 184, 1, 'navbar', '2021-09-08 10:06:51', '2021-09-08 10:06:51', '541f811f-be26-424b-a216-0cc3a06f8f9d', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.'),
(88, 186, 1, 'navbar', '2021-09-08 10:07:03', '2021-09-08 10:07:03', '2c2108e2-b2da-4af3-be17-5d22e1c0f3a9', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.'),
(89, 187, 1, 'navbar', '2021-09-08 10:12:10', '2021-09-08 10:12:10', '1f70dce0-7465-4b13-a55f-044f91d9f86a', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.'),
(90, 188, 1, 'navbar', '2021-09-08 10:14:18', '2021-09-08 10:14:18', 'a6cd815e-5012-468b-9967-78cad74a4d2b', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.'),
(92, 213, 1, 'About', '2021-09-08 14:53:31', '2021-09-08 14:53:31', '1e2e0aaf-2011-43dc-a599-5706aa8b00f3', NULL, NULL, NULL, NULL),
(94, 219, 1, 'About', '2021-09-08 14:54:55', '2021-09-08 14:54:55', '5dfe96ca-0cca-4468-853a-a143f3dfda8d', NULL, NULL, NULL, NULL),
(95, 222, 1, 'What is not Random', '2021-09-08 14:56:26', '2021-09-08 14:56:26', 'da6af90a-3e93-4587-b288-f6a3539bbb00', '<p>Is the future of the universe already determined? Vsauce tackles the question \"What Is Random?\": <a href=\"https://www.youtube.com/watch?v=9rIy0xY99a0&amp;t=0s\">https://youtu.be/9rIy0xY99a0</a></p>', NULL, NULL, NULL),
(97, 228, 1, 'About', '2021-09-08 14:58:53', '2021-09-08 14:58:53', 'c156503d-e80e-47d9-b468-c0ed83f3be44', NULL, NULL, NULL, NULL),
(98, 231, 1, 'About', '2021-09-08 15:25:14', '2021-09-08 15:25:14', 'a1e117f8-6a19-494b-a27b-992283c826ac', NULL, NULL, NULL, NULL),
(99, 234, 1, 'Contact', '2021-09-09 11:45:10', '2021-09-09 11:45:10', 'f16f20bd-880b-4646-83f0-a36f62a1637b', NULL, NULL, NULL, NULL),
(100, 236, 1, NULL, '2021-09-10 14:48:48', '2021-09-10 14:48:55', 'ce51e02e-b148-4ea6-ae62-ffbbe8aff116', NULL, NULL, NULL, NULL),
(101, 240, 1, 'navbar', '2021-09-10 14:49:17', '2021-09-10 14:49:17', '173eafc2-6d49-44da-b7ef-41a97e565cba', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.'),
(102, 241, 1, 'navbar', '2021-09-10 14:49:24', '2021-09-10 14:49:24', '8f1c7698-7ba7-44e6-8829-77d1a0c5e717', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.'),
(104, 285, 1, 'navbar', '2021-09-10 14:53:13', '2021-09-10 14:53:13', '5bddac3d-99a5-44d8-b3ec-75f667e1d461', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craftidtokens`
--

CREATE TABLE `craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `deprecationerrors`
--

CREATE TABLE `deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `drafts`
--

CREATE TABLE `drafts` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `provisional` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `trackChanges` tinyint(1) NOT NULL DEFAULT 0,
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `drafts`
--

INSERT INTO `drafts` (`id`, `sourceId`, `creatorId`, `provisional`, `name`, `notes`, `trackChanges`, `dateLastMerged`, `saved`) VALUES
(1, NULL, 1, 0, 'Eerste concept', NULL, 0, NULL, 0),
(2, NULL, 1, 0, 'Eerste concept', NULL, 0, NULL, 0),
(5, 42, 1, 1, 'Concept 1', '', 1, NULL, 1),
(6, 172, 1, 1, 'Concept 1', '', 1, NULL, 1),
(7, NULL, 1, 0, 'Eerste concept', '', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `elementindexsettings`
--

CREATE TABLE `elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `elementindexsettings`
--

INSERT INTO `elementindexsettings` (`id`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '{\"sources\":{\"section:ec1302f0-657a-4e1d-a46c-9918baf86e4e\":{\"tableAttributes\":{\"1\":\"postDate\",\"2\":\"author\",\"3\":\"link\",\"4\":\"dateCreated\",\"5\":\"field:3\"}}}}', '2021-09-08 10:08:20', '2021-09-08 10:08:20', '2ea2102b-d96c-4821-94a5-0218fd136583');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `elements`
--

CREATE TABLE `elements` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) DEFAULT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateLastMerged` datetime DEFAULT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `elements`
--

INSERT INTO `elements` (`id`, `canonicalId`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateLastMerged`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2021-09-06 10:09:22', '2022-04-21 15:42:47', NULL, NULL, 'dc392f9b-56be-4581-ada6-1ce56a5535bd'),
(2, NULL, 1, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-06 11:59:23', '2021-09-06 11:59:23', NULL, NULL, '32ceb59a-3387-4c9e-98e4-173a33c72d5b'),
(3, NULL, 2, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-06 11:59:24', '2021-09-06 11:59:24', NULL, NULL, 'f9271322-98ff-4da1-bd58-1da0ea6635e8'),
(4, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-06 11:59:52', '2021-09-07 09:02:46', NULL, NULL, 'e4aac910-db46-4eca-bbd3-3a939c7ed97c'),
(5, 4, NULL, 1, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-06 12:04:53', '2021-09-06 12:04:53', NULL, NULL, '03fd7776-7140-46df-9319-de829a29b6e2'),
(6, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2021-09-06 12:05:18', '2021-09-06 12:05:18', NULL, NULL, 'ce23d531-c393-4f27-95cb-3f651cc6cea0'),
(8, 4, NULL, 2, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-06 12:07:09', '2021-09-06 12:07:09', NULL, NULL, 'd1f5a46a-3afb-428d-9efa-ec0837f490bb'),
(9, 4, NULL, 3, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-06 12:07:16', '2021-09-06 12:07:16', NULL, NULL, 'ebe5cfb1-6f37-4e76-8a92-8aa0ea846653'),
(10, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 13:11:08', '2021-09-08 07:16:04', NULL, NULL, '3f240bb6-d084-4943-ab98-c4c84b28bae1'),
(11, 10, NULL, 4, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 13:11:08', '2021-09-06 13:11:08', NULL, NULL, '453c114f-9fdc-4755-9e02-6e878b5d511c'),
(12, 10, NULL, 5, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:08:35', '2021-09-06 14:08:35', NULL, NULL, '5ec31f53-7971-4d24-b8e7-375947e60660'),
(14, 10, NULL, 6, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:12:45', '2021-09-06 14:12:45', NULL, NULL, 'cc939d5a-6eda-485c-8904-aa27b7275913'),
(16, 10, NULL, 7, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:12:51', '2021-09-06 14:12:51', NULL, NULL, '10f3388d-580f-47da-ad89-9cdea5602c0d'),
(17, 10, NULL, 8, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:23:35', '2021-09-06 14:23:35', NULL, NULL, '907ed1ba-f2f4-438c-bd12-676df67ab449'),
(18, 10, NULL, 9, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:35:54', '2021-09-06 14:35:54', NULL, NULL, 'e6c1570f-81cc-45cf-95b2-9dc18d21cea2'),
(19, 10, NULL, 10, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:36:00', '2021-09-06 14:36:00', NULL, NULL, '11e77879-c35a-46a9-82af-4f7795338c85'),
(20, 10, NULL, 11, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:37:12', '2021-09-06 14:37:12', NULL, NULL, 'f252297a-a09a-4260-83e6-2596c628795d'),
(21, 10, NULL, 12, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:38:08', '2021-09-06 14:38:08', NULL, NULL, '77953dd3-397d-46ec-b733-cb5b2851be8a'),
(22, NULL, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:39:19', '2021-09-10 14:53:13', NULL, NULL, 'a3ac5ca7-89a0-4760-809a-747c8ebbee5b'),
(23, 22, NULL, 13, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:39:19', '2021-09-06 14:39:19', NULL, NULL, '36edf872-e70b-46c8-9b63-674c52bdf3a0'),
(25, 22, NULL, 14, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:39:59', '2021-09-06 14:39:59', NULL, NULL, '46d51003-0073-480c-a2ff-29dd6912e626'),
(26, 22, NULL, 15, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:40:13', '2021-09-06 14:40:13', NULL, NULL, '71ebc7e9-a104-4c44-b3f5-1dfbdbed15fd'),
(27, 22, NULL, 16, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:40:32', '2021-09-06 14:40:32', NULL, NULL, 'd60d08ec-1322-4257-b4c5-a8cd8171f90a'),
(29, 4, NULL, 17, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 09:02:46', '2021-09-07 09:02:46', NULL, NULL, 'f16ce587-4771-4459-8de2-1121c4c254f0'),
(30, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 10:07:35', '2021-09-07 10:08:50', NULL, NULL, '9f8e516f-9234-49d1-be1a-f173fdb3b4d8'),
(31, 30, NULL, 18, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 10:07:35', '2021-09-07 10:07:35', NULL, NULL, 'c373c46a-2936-4bf8-9297-7869b5b870a9'),
(32, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 10:07:40', '2021-09-07 10:09:00', NULL, NULL, '2c1eff8d-c258-49bf-b86f-64d2e304ff12'),
(33, 32, NULL, 19, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 10:07:40', '2021-09-07 10:07:40', NULL, NULL, 'cf42523f-8549-4122-89d7-bf17479bc621'),
(34, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 10:07:41', '2021-09-07 10:09:06', NULL, NULL, 'aacbc5d2-436d-4862-b0f4-45610a9b2cbc'),
(35, 34, NULL, 20, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 10:07:41', '2021-09-07 10:07:41', NULL, NULL, '98fee071-eab2-4b83-ae60-6886afa309ff'),
(37, 30, NULL, 21, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 10:08:50', '2021-09-07 10:08:51', NULL, NULL, 'f8028f1f-1277-4b6c-a9d4-388485671ee4'),
(39, 32, NULL, 22, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 10:09:00', '2021-09-07 10:09:00', NULL, NULL, '6beccdcd-7db6-4a54-8b1a-e1fbe34ab383'),
(41, 34, NULL, 23, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 10:09:06', '2021-09-07 10:09:06', NULL, NULL, 'fe4cdbcd-4193-4d17-90e8-dd8c01d58d2d'),
(42, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 13:09:13', '2021-09-07 14:57:30', NULL, NULL, '81b0535b-b8cb-46be-a7b9-db15175b35d8'),
(43, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:09:16', '2021-09-07 13:09:16', NULL, '2021-09-07 13:09:43', '70ee2a5f-48b7-4e49-b8d3-33415fe0461a'),
(44, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:09:43', '2021-09-07 13:09:43', NULL, '2021-09-07 13:09:45', '0cdc7657-e904-4a2e-8162-9b53646b1512'),
(45, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:09:45', '2021-09-07 13:09:45', NULL, '2021-09-07 13:09:49', '1f9e312e-32ed-4095-923f-fd0d6787c9ff'),
(46, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:09:48', '2021-09-07 13:09:48', NULL, '2021-09-07 13:09:55', '16403eef-97d3-4308-98b0-608402f5d502'),
(47, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:09:55', '2021-09-07 13:09:55', NULL, '2021-09-07 13:09:59', '6239e1f3-f4c4-4a08-9ffe-33135fbb89ff'),
(48, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:09:59', '2021-09-07 13:09:59', NULL, '2021-09-07 13:10:10', 'c7ceb325-245d-4e25-8c29-5d829aba4200'),
(49, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:10:10', '2021-09-07 13:10:10', NULL, '2021-09-07 13:10:13', 'a96ac334-9dd0-4b66-9cf6-6507a97a7bfa'),
(50, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:10:13', '2021-09-07 13:10:13', NULL, '2021-09-07 13:10:14', '2e80f5bf-bf65-401d-95e8-39e96bb8955e'),
(51, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:10:14', '2021-09-07 13:10:14', NULL, '2021-09-07 13:10:16', 'd0da465a-6d4d-4981-9422-a27f4bb7bb98'),
(52, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:10:16', '2021-09-07 13:10:16', NULL, '2021-09-07 13:10:44', '64db6716-6749-4a81-a7ac-9c55e57f9589'),
(53, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:10:44', '2021-09-07 13:10:44', NULL, '2021-09-07 13:11:31', '67b8af87-6eea-4719-a671-d9bb8875f6b0'),
(54, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:11:31', '2021-09-07 13:11:31', NULL, '2021-09-07 13:11:41', 'd2e60f18-54e1-4c56-9c71-26f839651af6'),
(55, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:11:41', '2021-09-07 13:11:41', NULL, '2021-09-07 13:11:44', '1a0affca-ad2b-45f8-bdb5-6872038bc6cd'),
(56, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:11:44', '2021-09-07 13:11:44', NULL, '2021-09-07 13:11:59', 'b6ae3a1b-d7ff-4516-9bb4-b46155909722'),
(57, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:11:59', '2021-09-07 13:11:59', NULL, '2021-09-07 13:12:11', '2fb878c0-4dac-4baf-9207-9b6bf9b75e2c'),
(58, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:12:11', '2021-09-07 13:12:11', NULL, '2021-09-07 13:12:11', 'bbfb9534-ba95-49e1-a5c3-dee08b3ae997'),
(59, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:12:11', '2021-09-07 13:12:11', NULL, '2021-09-07 13:12:12', '37ffd11e-2080-41da-ab40-8fdb4a41c34e'),
(60, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:12:12', '2021-09-07 13:12:12', NULL, '2021-09-07 13:12:12', '69d0c1f4-2cea-4ccc-bb1b-3b9defc8e523'),
(61, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:12:12', '2021-09-07 13:12:12', NULL, '2021-09-07 13:12:16', '41fe52a0-41c5-4c0d-aaba-6e4aea25a379'),
(62, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:12:16', '2021-09-07 13:12:16', NULL, '2021-09-07 13:12:26', '3975facd-87fe-4d9a-82c4-730d78f80e34'),
(63, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:12:26', '2021-09-07 13:12:26', NULL, '2021-09-07 13:12:28', '053510bd-bc95-4e52-82df-36438cd5ff01'),
(64, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:12:27', '2021-09-07 13:12:27', NULL, '2021-09-07 13:12:34', '747e0454-e1c9-404a-9898-3cf91f2e9e31'),
(65, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:12:34', '2021-09-07 13:12:34', NULL, '2021-09-07 13:12:36', '4711ca17-bb57-4126-889c-9eae85a43731'),
(66, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:12:36', '2021-09-07 13:12:36', NULL, '2021-09-07 13:12:39', '155b6a77-8ed0-4e8e-9eaa-4f110ad9dda1'),
(67, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:12:39', '2021-09-07 13:12:39', NULL, '2021-09-07 13:12:43', '20539b67-9460-42c3-9c0b-69c783fba44e'),
(68, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:12:43', '2021-09-07 13:12:43', NULL, '2021-09-07 13:12:43', '0b379253-2e85-4697-b587-3fd09a0e06e8'),
(69, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:12:43', '2021-09-07 13:12:43', NULL, '2021-09-07 13:13:01', 'fe06e4ae-2cc9-4e96-8487-469cb99b9ee5'),
(70, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:13:00', '2021-09-07 13:13:00', NULL, '2021-09-07 13:13:07', '750a144b-a837-47d5-9564-030ccc584cba'),
(71, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:13:07', '2021-09-07 13:13:07', NULL, '2021-09-07 13:13:09', '694d81d1-b204-4349-a4b3-6f559ae2a68f'),
(72, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:13:09', '2021-09-07 13:13:09', NULL, '2021-09-07 13:13:20', 'e97f90ee-c46d-42f9-8ec4-9fbd11f03cab'),
(73, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:13:20', '2021-09-07 13:13:20', NULL, '2021-09-07 13:13:21', '469f7e00-a4dc-466b-94c6-6f3b7b3fd418'),
(74, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:13:21', '2021-09-07 13:13:21', NULL, '2021-09-07 13:13:23', '6630b6ff-59a5-462c-8444-f3d9b78de49c'),
(75, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:13:23', '2021-09-07 13:13:23', NULL, '2021-09-07 13:13:24', 'ac8c9f3f-3f45-48bb-b209-b100e8b66190'),
(76, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:13:24', '2021-09-07 13:13:24', NULL, '2021-09-07 13:13:35', '27a0305f-74f0-41d3-9f55-f244e739bcfd'),
(77, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:13:35', '2021-09-07 13:13:35', NULL, '2021-09-07 13:13:40', 'c6e63943-c898-4b9f-acae-b6fd3f70ca44'),
(78, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:13:40', '2021-09-07 13:13:40', NULL, '2021-09-07 13:13:41', 'da03eb57-4feb-471c-aca4-1c257e539f5f'),
(79, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:13:41', '2021-09-07 13:13:41', NULL, '2021-09-07 13:14:02', 'a124cc0a-dd59-4de1-8e8c-cbd305614154'),
(80, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:14:02', '2021-09-07 13:14:02', NULL, '2021-09-07 13:14:04', '54b2c3c6-e82b-4006-ada1-b09c6c28b3c4'),
(81, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:14:04', '2021-09-07 13:14:04', NULL, '2021-09-07 13:14:15', '06255c63-0a57-49ba-bdd0-d902b15a6eb6'),
(82, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:14:15', '2021-09-07 13:14:15', NULL, '2021-09-07 13:14:36', '9a389b16-23f6-414a-9e6a-51e2ae1e1c7f'),
(83, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:14:36', '2021-09-07 13:14:36', NULL, '2021-09-07 13:14:41', 'f210bb29-8d15-4065-94ad-da620e7d9e62'),
(84, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:14:36', '2021-09-07 13:14:36', NULL, '2021-09-07 13:14:41', '83b0890a-bc19-4047-972a-4c7f54686502'),
(85, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:14:41', '2021-09-07 13:14:41', NULL, '2021-09-07 13:14:55', '2f0e3433-10c1-468b-9f37-c203b96dd1c1'),
(86, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:14:41', '2021-09-07 13:14:41', NULL, '2021-09-07 13:14:55', '6da078f1-bf0f-4264-a87f-c0acf4cebddc'),
(87, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:14:55', '2021-09-07 14:57:31', NULL, NULL, '9457bc33-6958-4baa-91d4-e71af1be0a89'),
(88, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:14:55', '2021-09-07 14:57:31', NULL, NULL, '7189045a-b973-4687-9101-6301c39519e6'),
(89, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2021-09-07 13:18:57', '2021-09-07 13:18:57', NULL, NULL, '65e6d236-81a1-448a-9e94-a5fbf6b0d32a'),
(90, 42, NULL, 24, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 13:20:19', '2021-09-07 13:20:19', NULL, NULL, '10c78fac-6bfa-4049-b19a-9207c560fba6'),
(91, 87, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:20:19', '2021-09-07 13:20:19', NULL, NULL, 'f153e135-b269-43a5-ab34-894f7c4edaa3'),
(92, 88, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:20:19', '2021-09-07 13:20:19', NULL, NULL, '9e81114a-e9cc-4145-b217-f35f2587586d'),
(96, 42, NULL, 25, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 13:22:45', '2021-09-07 13:22:45', NULL, NULL, '0923f804-2017-4911-ab6b-e3a93c7e2da0'),
(97, 87, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:22:45', '2021-09-07 13:22:45', NULL, NULL, 'f68d6def-be78-4d33-975d-001b891b6d22'),
(98, 88, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:22:45', '2021-09-07 13:22:45', NULL, NULL, '3ad3054b-f381-4d49-8d9a-43ab512108fd'),
(102, 42, NULL, 26, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 13:23:47', '2021-09-07 13:23:47', NULL, NULL, '79fa6c01-c1c6-42ed-95ca-9343d9edbfd9'),
(103, 87, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:23:47', '2021-09-07 13:23:47', NULL, NULL, 'a5e91c77-5b23-4ac4-b54a-3207fb929819'),
(104, 88, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:23:47', '2021-09-07 13:23:47', NULL, NULL, '9ed667b0-dcf6-4db1-8fc3-8905044363c0'),
(105, 42, NULL, 27, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 13:42:02', '2021-09-07 13:42:02', NULL, NULL, 'd5594ebd-7d09-4872-bde3-792c456fd799'),
(106, 87, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:42:02', '2021-09-07 13:42:02', NULL, NULL, '1c987dba-ab81-4e44-955b-de757f76b489'),
(107, 88, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:42:02', '2021-09-07 13:42:02', NULL, NULL, '40eaa81a-1a7f-4b89-b776-fc3ac75248b3'),
(111, 42, NULL, 28, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 13:44:37', '2021-09-07 13:44:37', NULL, NULL, 'cc468c39-ac34-4bdb-998d-1cfe2349d5d5'),
(112, 87, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:44:37', '2021-09-07 13:44:37', NULL, NULL, '6134caf9-c841-4d2a-a414-abaab4b16e8c'),
(113, 88, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 13:44:37', '2021-09-07 13:44:37', NULL, NULL, '2d871cc8-b7b0-4116-881a-598dc937e2a1'),
(117, 42, NULL, 29, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 14:10:50', '2021-09-07 14:10:50', NULL, NULL, 'a93ccfa0-228f-4342-99e8-5416f735f829'),
(118, 87, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:10:50', '2021-09-07 14:10:50', NULL, NULL, '9931c137-e109-4bd0-9eb0-e695cbcc4bc2'),
(119, 88, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:10:50', '2021-09-07 14:10:50', NULL, NULL, 'df35313a-b2e8-4621-b06a-1a4c681d9d1b'),
(123, 42, NULL, 30, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 14:11:22', '2021-09-07 14:11:22', NULL, NULL, '6bc50f9c-f63a-4031-ba24-b0615ad148ca'),
(124, 87, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:11:23', '2021-09-07 14:11:23', NULL, NULL, 'e0af431e-b7f5-4292-93c8-1bd7c4d7faf0'),
(125, 88, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:11:23', '2021-09-07 14:11:23', NULL, NULL, '073ba025-f7c7-4db7-9de1-c23964e5212d'),
(129, 42, NULL, 31, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 14:32:19', '2021-09-07 14:32:19', NULL, NULL, '88b0205a-6ed7-4344-a2e0-3d9cde49a420'),
(130, 87, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:32:19', '2021-09-07 14:32:19', NULL, NULL, 'e99d6c5a-ffca-4570-ad8d-3a406911d41a'),
(131, 88, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:32:19', '2021-09-07 14:32:19', NULL, NULL, 'f1f54f62-3903-4667-a732-9085a12826ec'),
(135, 42, NULL, 32, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 14:32:33', '2021-09-07 14:32:33', NULL, NULL, '03481944-6736-40cd-8f6a-ea259c14c159'),
(136, 87, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:32:34', '2021-09-07 14:32:34', NULL, NULL, '6aa11a22-c53d-4b7c-a295-4036568fe5e9'),
(137, 88, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:32:34', '2021-09-07 14:32:34', NULL, NULL, '678a9af5-19ef-48c2-b3c6-661c18bb46a2'),
(141, 42, NULL, 33, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 14:33:51', '2021-09-07 14:33:52', NULL, NULL, 'ddedf5eb-fb60-4537-a346-89c96380e53c'),
(142, 87, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:33:52', '2021-09-07 14:33:52', NULL, NULL, '290462af-64fb-439b-b96e-cbe63a718c77'),
(143, 88, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:33:52', '2021-09-07 14:33:52', NULL, NULL, 'c66a2407-9c55-46a0-ae08-b634d820bf77'),
(147, 42, NULL, 34, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 14:35:35', '2021-09-07 14:35:36', NULL, NULL, 'fc4dccba-547c-404f-b108-541d7c20ee1d'),
(148, 88, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:35:36', '2021-09-07 14:35:36', NULL, NULL, '430ec3d2-0b3a-42fe-81e9-59567f1d8af6'),
(149, 87, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:35:36', '2021-09-07 14:35:36', NULL, NULL, '104ae02a-4ede-4a8e-acaa-e58a16c7199e'),
(153, 42, NULL, 35, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 14:36:15', '2021-09-07 14:36:15', NULL, NULL, '18b3560c-7d04-4b2e-a6f2-ddd9391bd5f6'),
(154, 88, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:36:15', '2021-09-07 14:36:15', NULL, NULL, '1e469287-68e7-4cf4-9938-bdf26b3e3d9c'),
(155, 87, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:36:15', '2021-09-07 14:36:15', NULL, NULL, 'a9265138-8cbe-441b-b6f2-000297bdd2dc'),
(159, 42, NULL, 36, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 14:53:45', '2021-09-07 14:53:46', NULL, NULL, '1b0db21b-b6e9-445b-b630-18e68e6a85cc'),
(160, 87, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:53:46', '2021-09-07 14:53:46', NULL, NULL, '20f483a5-56f4-4d13-af9f-350b876b5d13'),
(161, 88, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:53:46', '2021-09-07 14:53:46', NULL, NULL, 'c8b79806-7253-415f-a0b9-04cbffc78278'),
(165, 42, NULL, 37, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-07 14:57:30', '2021-09-07 14:57:31', NULL, NULL, '7d5b37cc-c4fc-48f5-ae92-bea9d1a72db9'),
(166, 87, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:57:31', '2021-09-07 14:57:31', NULL, NULL, 'f9aa19c7-685c-4b30-b498-4e50620a931c'),
(167, 88, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-07 14:57:31', '2021-09-07 14:57:31', NULL, NULL, '81ab1579-f4c8-48a0-8ea8-9d631f1a22d4'),
(168, 10, NULL, 38, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-08 07:16:03', '2021-09-08 07:16:03', NULL, NULL, '99262dba-832d-49ab-b344-7c3f79bb2c01'),
(169, 10, NULL, 39, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-08 07:16:04', '2021-09-08 07:16:04', NULL, NULL, '55e6110d-e5b8-4a0b-898c-50ac028f7b5a'),
(170, NULL, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2021-09-08 09:02:45', '2021-09-08 15:25:14', NULL, NULL, 'fca6377b-7588-48d1-8dd9-071334d8817e'),
(171, 170, NULL, 40, 8, 'craft\\elements\\Entry', 1, 0, '2021-09-08 09:02:58', '2021-09-08 09:02:58', NULL, NULL, 'cabe87b7-fa36-450b-9ff0-da0b88ffd067'),
(172, NULL, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2021-09-08 09:03:02', '2021-09-08 09:17:39', NULL, NULL, '560624d3-6ccc-40b7-9807-66c56bea039a'),
(173, 172, NULL, 41, 8, 'craft\\elements\\Entry', 1, 0, '2021-09-08 09:17:39', '2021-09-08 09:17:39', NULL, NULL, '3d90c31b-42c6-4761-a7f8-06de3de9a6c7'),
(175, 170, NULL, 42, 8, 'craft\\elements\\Entry', 1, 0, '2021-09-08 09:23:36', '2021-09-08 09:23:36', NULL, NULL, 'c2f04ff4-e46a-4c87-989a-0f23b4331024'),
(177, 170, NULL, 43, 8, 'craft\\elements\\Entry', 1, 0, '2021-09-08 10:00:44', '2021-09-08 10:00:44', NULL, NULL, 'a757967c-159e-458f-a6b9-7c0a2404ad15'),
(179, 170, NULL, 44, 8, 'craft\\elements\\Entry', 1, 0, '2021-09-08 10:02:20', '2021-09-08 10:02:20', NULL, NULL, 'f4392e71-e26a-44d5-9599-b294c4bd6d6f'),
(181, 170, NULL, 45, 8, 'craft\\elements\\Entry', 1, 0, '2021-09-08 10:02:49', '2021-09-08 10:02:49', NULL, NULL, 'dc66a10e-49fb-4846-b07f-dbebe93b0777'),
(182, 22, NULL, 46, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-08 10:06:21', '2021-09-08 10:06:21', NULL, NULL, '902801d0-5f66-4861-bfb1-7c947ed35563'),
(183, 22, NULL, 47, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-08 10:06:50', '2021-09-08 10:06:50', NULL, NULL, 'cc1ca6a1-27a7-4b37-a4d0-fedc640d2aa9'),
(184, 22, NULL, 48, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-08 10:06:51', '2021-09-08 10:06:51', NULL, NULL, '42117d1c-27e4-4a42-82ff-04657117cac6'),
(186, 22, NULL, 49, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-08 10:07:03', '2021-09-08 10:07:03', NULL, NULL, 'bb5883f4-35e4-4ecf-9c06-ae1c742cc489'),
(187, 22, NULL, 50, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-08 10:12:10', '2021-09-08 10:12:10', NULL, NULL, '8903919d-b4af-4488-b4b7-4603df956cb0'),
(188, 22, NULL, 51, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-08 10:14:18', '2021-09-08 10:14:18', NULL, NULL, '08297155-79f5-44a2-b82b-2716ae67708a'),
(190, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:52:37', '2021-09-08 14:52:37', NULL, '2021-09-08 14:52:38', '6430074b-d410-4fc4-9472-c216722ed83d'),
(191, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:52:38', '2021-09-08 14:52:38', NULL, '2021-09-08 14:52:50', '70fc3c1f-a1b1-4d5e-b17e-652d4cd97eaa'),
(192, NULL, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:52:38', '2021-09-08 14:52:38', NULL, '2021-09-08 14:52:50', '3c752f6d-1b59-4141-b811-542cd41cddab'),
(193, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:52:50', '2021-09-08 14:52:50', NULL, '2021-09-08 14:53:05', '97c9f311-82b0-428b-b568-0ad455648bc7'),
(194, NULL, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:52:50', '2021-09-08 14:52:50', NULL, '2021-09-08 14:53:05', '3c8a4c7e-c45b-4394-b9cf-61766dc90696'),
(195, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:05', '2021-09-08 14:53:05', NULL, '2021-09-08 14:53:13', 'fd5790bb-1f68-4d94-a818-e78feea07b21'),
(196, NULL, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:05', '2021-09-08 14:53:05', NULL, '2021-09-08 14:53:13', '8e0500bd-71e1-404d-a461-b2bb4831712b'),
(197, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:13', '2021-09-08 14:53:13', NULL, '2021-09-08 14:53:17', '649a0394-877e-46b8-8326-fa59739af135'),
(198, NULL, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:13', '2021-09-08 14:53:13', NULL, '2021-09-08 14:53:17', 'a3db887d-9bd4-4a15-8e42-57404975e384'),
(199, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:16', '2021-09-08 14:53:16', NULL, '2021-09-08 14:53:18', '79020c72-af09-4d71-94a4-a59c1e429b88'),
(200, NULL, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:17', '2021-09-08 14:53:17', NULL, '2021-09-08 14:53:18', '3c1beb1f-f489-4cf1-bb16-2c230ef7ee08'),
(201, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:18', '2021-09-08 14:53:18', NULL, '2021-09-08 14:53:20', 'fb3e49a2-e218-4bdf-ba4d-e6afb5b25fa0'),
(202, NULL, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:18', '2021-09-08 14:53:18', NULL, '2021-09-08 14:53:20', '480ab9d5-46ff-4c69-aa96-5e215e8c64a5'),
(203, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:20', '2021-09-08 14:53:20', NULL, '2021-09-08 14:53:25', 'dd2b77b0-9ca4-4031-bce7-ade162a51d02'),
(204, NULL, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:20', '2021-09-08 14:53:20', NULL, '2021-09-08 14:53:25', '8720fa04-29b1-43cd-9931-ef719600471e'),
(205, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:25', '2021-09-08 14:53:25', NULL, '2021-09-08 14:53:29', '6858f6f6-3ace-43d5-80a9-3a7e38f3372c'),
(206, NULL, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:25', '2021-09-08 14:53:25', NULL, '2021-09-08 14:53:29', '0cffb5ad-64e5-44ea-8709-89daba8e7f42'),
(207, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:29', '2021-09-08 14:53:29', NULL, '2021-09-08 14:53:30', '2662e062-1300-4a75-ac85-63f12955eb3e'),
(208, NULL, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:29', '2021-09-08 14:53:29', NULL, '2021-09-08 14:53:30', '7e4b3ced-aba3-4548-8d48-b710e88ce727'),
(211, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:31', '2021-09-09 10:03:18', NULL, NULL, '7daeff9c-b4a3-4a7b-8c06-481d1e99d10c'),
(212, NULL, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:31', '2021-09-09 10:03:18', NULL, NULL, '6a4bae4b-e27b-48d4-aaff-4e7635534f62'),
(213, 170, NULL, 52, 8, 'craft\\elements\\Entry', 1, 0, '2021-09-08 14:53:31', '2021-09-08 14:53:31', NULL, NULL, '2c989bf9-8aca-4da7-bf99-60a30b043bca'),
(214, 211, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:31', '2021-09-08 14:53:31', NULL, NULL, 'd97ee879-c1a4-4824-a26c-456a54adb087'),
(215, 212, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:53:31', '2021-09-08 14:53:31', NULL, NULL, '634ec5dd-dceb-4863-89f1-bbed196c0348'),
(219, 170, NULL, 53, 8, 'craft\\elements\\Entry', 1, 0, '2021-09-08 14:54:55', '2021-09-08 14:54:55', NULL, NULL, '3b659acb-be62-4c61-b01f-bf9db299d682'),
(220, 212, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:54:55', '2021-09-08 14:54:55', NULL, NULL, '69a191c1-70c9-4d8a-9d4a-84e0296306f7'),
(221, 211, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:54:55', '2021-09-08 14:54:55', NULL, NULL, 'e8ce36d0-3f6e-4bc0-828a-43b1be26c731'),
(222, 42, 5, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-08 14:56:25', '2021-09-08 14:56:26', NULL, NULL, 'cfa28cb4-1bb6-4326-b8bd-328a44c6440b'),
(223, 87, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:56:26', '2021-09-08 14:56:26', NULL, NULL, '2b11b9e9-03f3-4e8f-96d0-8b27c92674b0'),
(224, 88, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:56:26', '2021-09-08 14:56:26', NULL, NULL, 'ffe019bf-2f58-4ce9-abc2-7abf40765c6f'),
(228, 170, NULL, 54, 8, 'craft\\elements\\Entry', 1, 0, '2021-09-08 14:58:53', '2021-09-08 14:58:53', NULL, NULL, '0987ee84-e6d2-40e0-8fae-b91da20df767'),
(229, 212, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:58:53', '2021-09-08 14:58:53', NULL, NULL, '812d1b6d-4cb2-4fcf-80c6-bffcd599b929'),
(230, 211, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 14:58:53', '2021-09-08 14:58:53', NULL, NULL, '65151bfe-d6e4-446f-91f9-c5815d71c8a0'),
(231, 170, NULL, 55, 8, 'craft\\elements\\Entry', 1, 0, '2021-09-08 15:25:14', '2021-09-08 15:25:14', NULL, NULL, '536da14e-68a5-4406-b44f-3db857366529'),
(232, 212, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 15:25:14', '2021-09-08 15:25:14', NULL, NULL, 'f2450d4d-bdcb-40b0-a7ac-667adb4a1555'),
(233, 211, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-08 15:25:14', '2021-09-08 15:25:14', NULL, NULL, '1791e22f-751c-4f37-b915-e92add424c2f'),
(234, 172, 6, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2021-09-09 11:45:10', '2021-09-09 11:45:10', NULL, NULL, 'c049c629-83da-4844-b232-e2682f8d1dec'),
(235, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-09 11:45:10', '2021-09-09 11:45:10', NULL, NULL, '80f7d7a0-6adf-4c96-8e57-591c95127e96'),
(236, NULL, 7, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-10 14:48:48', '2021-09-10 14:48:55', NULL, '2021-09-27 09:55:40', 'adcabb6f-7586-4772-93c1-94a7e02fd436'),
(237, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:48:54', '2021-09-10 14:48:54', NULL, '2021-09-10 14:48:55', 'f7c40dcd-530c-440f-9411-7ee60b655279'),
(238, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:48:55', '2021-09-10 14:48:55', NULL, '2021-09-27 09:55:40', 'e5200059-8489-4339-be84-b0ab37a912d0'),
(239, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:48:55', '2021-09-10 14:48:55', NULL, '2021-09-27 09:55:40', 'ef1c959a-1bdc-4b13-808d-d90a067fb8f6'),
(240, 22, NULL, 56, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-10 14:49:17', '2021-09-10 14:49:17', NULL, NULL, '36bd6d15-cf6f-4c5a-8f60-8ce488782da0'),
(241, 22, NULL, 57, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-10 14:49:24', '2021-09-10 14:49:24', NULL, NULL, '98929957-3690-4804-9106-adbc7391515f'),
(243, NULL, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:09', '2021-09-10 14:52:09', NULL, '2021-09-10 14:52:10', '6b5fc79c-3589-44ab-89b7-b1db392cdda1'),
(244, NULL, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:10', '2021-09-10 14:52:10', NULL, '2021-09-10 14:52:11', 'd4cd5b09-c2b3-4e5b-8337-c47e62227474'),
(245, NULL, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:10', '2021-09-10 14:52:10', NULL, '2021-09-10 14:52:11', 'b073e689-2075-4e21-af58-5a1409d75707'),
(246, NULL, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:11', '2021-09-10 14:52:11', NULL, '2021-09-10 14:52:13', '9f5409b1-8968-4869-85b6-9dec245f6359'),
(247, NULL, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:11', '2021-09-10 14:52:11', NULL, '2021-09-10 14:52:13', '99b77e18-89fd-4d31-b8c3-576eb4627600'),
(248, NULL, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:11', '2021-09-10 14:52:11', NULL, '2021-09-10 14:52:13', '2e6e43a9-df32-4570-8a80-c29aeb9ecf35'),
(249, NULL, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:13', '2021-09-10 14:52:13', NULL, '2021-09-10 14:52:15', '2f005592-e24a-4743-998d-d5847c57cdb8'),
(250, NULL, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:13', '2021-09-10 14:52:13', NULL, '2021-09-10 14:52:16', 'e841733b-f75c-47a9-9008-5f670c13fd86'),
(251, NULL, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:13', '2021-09-10 14:52:13', NULL, '2021-09-10 14:52:16', 'b9aace66-f303-4b6b-8012-2bea195b32e7'),
(252, NULL, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:15', '2021-09-10 14:52:15', NULL, '2021-09-10 14:52:18', 'f7a59eae-98de-4d60-b521-ef0c526959bd'),
(253, NULL, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:15', '2021-09-10 14:52:15', NULL, '2021-09-10 14:52:18', 'c2cddb47-4273-4e5e-970f-cd716a22a7f6'),
(254, NULL, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:15', '2021-09-10 14:52:15', NULL, '2021-09-10 14:52:18', 'a2248815-cd24-4499-ad46-29c5961ca916'),
(255, NULL, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:18', '2021-09-10 14:52:18', NULL, '2021-09-10 14:52:20', '80de239b-0c92-44a6-be90-104b0f94c543'),
(256, NULL, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:18', '2021-09-10 14:52:18', NULL, '2021-09-10 14:52:20', 'b6477ef9-8e47-4753-af40-d7972cb9dead'),
(257, NULL, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:18', '2021-09-10 14:52:18', NULL, '2021-09-10 14:52:20', 'a285fbde-4c8a-432e-88b9-db9f2792b567'),
(258, NULL, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:20', '2021-09-10 14:52:20', NULL, '2021-09-10 14:52:22', '5f557a61-96f6-48d1-b431-240ce18ac8c4'),
(259, NULL, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:20', '2021-09-10 14:52:20', NULL, '2021-09-10 14:52:22', '99b679ba-39dc-461b-84d9-bbef914ab18f'),
(260, NULL, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:20', '2021-09-10 14:52:20', NULL, '2021-09-10 14:52:22', 'af51d0de-81bb-4c4c-ac0f-fed75f82c5a1'),
(261, NULL, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:22', '2021-09-10 14:52:22', NULL, '2021-09-10 14:52:25', '97e9aa90-a780-4760-984e-7cb55957888d'),
(262, NULL, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:22', '2021-09-10 14:52:22', NULL, '2021-09-10 14:52:25', '5b412be4-88c9-4206-92c3-56483698c86e'),
(263, NULL, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:22', '2021-09-10 14:52:22', NULL, '2021-09-10 14:52:25', 'fba8d308-4daa-4b10-b613-0f6412cdafce'),
(264, NULL, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:25', '2021-09-10 14:52:25', NULL, '2021-09-10 14:52:28', '40924c19-7e8e-4e1c-94ce-07b22e9ad860'),
(265, NULL, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:25', '2021-09-10 14:52:25', NULL, '2021-09-10 14:52:28', '83d79ce2-7b48-4244-9088-a9d2d3899cf2'),
(266, NULL, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:25', '2021-09-10 14:52:25', NULL, '2021-09-10 14:52:28', 'e09383a3-0b4d-401f-9eae-dc10eb82e146'),
(267, NULL, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:28', '2021-09-10 14:52:28', NULL, '2021-09-10 14:52:31', 'e638c46c-154f-4b12-871c-f95d2618ac1a'),
(268, NULL, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:28', '2021-09-10 14:52:28', NULL, '2021-09-10 14:52:31', 'bbd31b3e-f2c9-4903-a557-3b18dd1c2d79'),
(269, NULL, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:28', '2021-09-10 14:52:28', NULL, '2021-09-10 14:52:31', 'a858b721-aef7-47b4-a3a3-50bde2763edd'),
(270, NULL, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:31', '2021-09-10 14:52:31', NULL, '2021-09-10 14:52:58', 'b32afb9e-813f-4bb0-9623-a79403cf2a4c'),
(271, NULL, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:31', '2021-09-10 14:52:31', NULL, '2021-09-10 14:52:58', 'eb55dd99-6930-4b65-99ff-f9fd8bafad44'),
(272, NULL, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:31', '2021-09-10 14:52:31', NULL, '2021-09-10 14:52:59', 'c86d8ca5-223b-454a-bf9e-ba11978bd476'),
(273, NULL, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:58', '2021-09-10 14:52:58', NULL, '2021-09-10 14:53:06', 'b7f630f1-08b3-42c5-9f03-6276c88a5ce1'),
(274, NULL, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:58', '2021-09-10 14:52:58', NULL, '2021-09-10 14:53:06', '7a177fcd-5a61-423f-8fe4-08bfe0c6401b'),
(275, NULL, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:52:58', '2021-09-10 14:52:58', NULL, '2021-09-10 14:53:06', '8dfbeb5c-c7b2-4fc2-a6f9-f0ac789dd160'),
(276, NULL, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:53:06', '2021-09-10 14:53:06', NULL, '2021-09-10 14:53:09', '2432eb4d-8ca9-4e84-af7e-e82893447bcb'),
(277, NULL, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:53:06', '2021-09-10 14:53:06', NULL, '2021-09-10 14:53:09', 'fb356dcd-ac34-4498-9584-ef596ba49660'),
(278, NULL, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:53:06', '2021-09-10 14:53:06', NULL, '2021-09-10 14:53:09', '25bbb4ba-f0d1-4488-8160-009d06a9212e'),
(282, NULL, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:53:13', '2021-09-10 14:53:13', NULL, NULL, '1d00ffe5-dd11-421c-8389-c9b92b245d33'),
(283, NULL, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:53:13', '2021-09-10 14:53:13', NULL, NULL, '43500d20-f651-48f2-b791-3dbca69168a0'),
(284, NULL, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:53:13', '2021-09-10 14:53:13', NULL, NULL, '9ab29c3a-0418-433d-949a-a01d4baf7136'),
(285, 22, NULL, 58, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-10 14:53:13', '2021-09-10 14:53:13', NULL, NULL, '6e19c7f3-a733-4274-a3b8-48e354e4a0ff'),
(286, 282, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:53:13', '2021-09-10 14:53:13', NULL, NULL, '829b3f9d-43cd-4173-85cb-5a6167249add'),
(287, 283, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:53:13', '2021-09-10 14:53:13', NULL, NULL, '14bc5284-1f95-4145-8c46-70235b56c4c2'),
(288, 284, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-09-10 14:53:13', '2021-09-10 14:53:13', NULL, NULL, 'fe405389-e003-4c42-b75a-3236d0f13545');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `elements_sites`
--

CREATE TABLE `elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `elements_sites`
--

INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2021-09-06 10:09:22', '2021-09-06 10:09:22', 'ab0d1463-b629-4983-bd8e-47d2a824df60'),
(2, 2, 1, '__temp_oopszpfymblrxbprfotagkerhafapfiyzewo', 'blogpost/__temp_oopszpfymblrxbprfotagkerhafapfiyzewo', 1, '2021-09-06 11:59:23', '2021-09-06 11:59:23', '96318dd5-01fe-4231-8568-0f35fd855a4e'),
(3, 3, 1, '__temp_ylivjjkvdwdyjfdljypjwfyoklacdqexrfqm', 'blogpost/__temp_ylivjjkvdwdyjfdljypjwfyoklacdqexrfqm', 1, '2021-09-06 11:59:24', '2021-09-06 11:59:24', '9fa8310c-dfce-40f7-88d5-263c7408fd44'),
(4, 4, 1, 'the-simplest-math-problem-no-one-can-solve-collatz-conjecture', 'blogpost/the-simplest-math-problem-no-one-can-solve-collatz-conjecture', 1, '2021-09-06 11:59:52', '2021-09-06 12:02:14', 'b9fb1577-9cb4-40ec-a6ac-37a89f03b93c'),
(5, 5, 1, 'the-simplest-math-problem-no-one-can-solve-collatz-conjecture', 'blogpost/the-simplest-math-problem-no-one-can-solve-collatz-conjecture', 1, '2021-09-06 12:04:53', '2021-09-06 12:04:53', 'd9fe2a42-296f-4e5c-aec5-a39c0cd6e114'),
(6, 6, 1, NULL, NULL, 1, '2021-09-06 12:05:18', '2021-09-06 12:05:18', '746c2593-3fbb-4f0f-887c-806fbd7ff265'),
(8, 8, 1, 'the-simplest-math-problem-no-one-can-solve-collatz-conjecture', 'blogpost/the-simplest-math-problem-no-one-can-solve-collatz-conjecture', 1, '2021-09-06 12:07:09', '2021-09-06 12:07:09', '7f2298a0-1d0b-4b78-b376-b7d3ec26c8f6'),
(9, 9, 1, 'the-simplest-math-problem-no-one-can-solve-collatz-conjecture', 'blogpost/the-simplest-math-problem-no-one-can-solve-collatz-conjecture', 1, '2021-09-06 12:07:16', '2021-09-06 12:07:16', '0d828c67-5627-40a1-8880-679d1bd08fc1'),
(10, 10, 1, 'homepage', '__home__', 1, '2021-09-06 13:11:08', '2021-09-06 13:11:08', '98d69ae1-e2af-46cf-8e12-b1b7044ea096'),
(11, 11, 1, 'homepage', '__home__', 1, '2021-09-06 13:11:08', '2021-09-06 13:11:08', 'b70fe8cd-9243-4ca2-9c3f-8c433ce48fa2'),
(12, 12, 1, 'homepage', '__home__', 1, '2021-09-06 14:08:35', '2021-09-06 14:08:35', '17cb0022-86a0-4bca-b278-fbc458023b93'),
(14, 14, 1, 'homepage', '__home__', 1, '2021-09-06 14:12:45', '2021-09-06 14:12:45', '88cf749f-2b25-454a-9abc-a68dbc7b5ec2'),
(16, 16, 1, 'homepage', '__home__', 1, '2021-09-06 14:12:51', '2021-09-06 14:12:51', '9e30312b-73e9-4edf-8305-8261ecca11d3'),
(17, 17, 1, 'homepage', '__home__', 1, '2021-09-06 14:23:35', '2021-09-06 14:23:35', '109a1fca-3228-4c5d-a9c8-a4300d1ca62e'),
(18, 18, 1, 'homepage', '__home__', 1, '2021-09-06 14:35:54', '2021-09-06 14:35:54', '04a40b03-de91-4911-be06-59009b69fe37'),
(19, 19, 1, 'homepage', '__home__', 1, '2021-09-06 14:36:00', '2021-09-06 14:36:00', '826b7aeb-14d8-4bda-a5c1-6d32e14b6d59'),
(20, 20, 1, 'homepage', '__home__', 1, '2021-09-06 14:37:12', '2021-09-06 14:37:12', '9403ec60-bb50-4f8d-9d29-f89936206785'),
(21, 21, 1, 'homepage', '__home__', 1, '2021-09-06 14:38:08', '2021-09-06 14:38:08', '8f05956f-fb83-40ad-acfe-f31c5ad6e93b'),
(22, 22, 1, 'navbar', '_layouts/main', 1, '2021-09-06 14:39:19', '2021-09-08 10:12:10', '9aa18b3a-c682-4e84-8227-88c0fc736b8a'),
(23, 23, 1, 'navbar', NULL, 1, '2021-09-06 14:39:19', '2021-09-06 14:39:19', '9d1a355a-85e3-4b4f-be86-3861f6e4a3f0'),
(25, 25, 1, 'navbar', NULL, 1, '2021-09-06 14:39:59', '2021-09-06 14:39:59', '264220d4-14f1-47ff-891c-212dab220054'),
(26, 26, 1, 'navbar', NULL, 1, '2021-09-06 14:40:13', '2021-09-06 14:40:13', '3af25067-d728-48cf-9974-f43959613d9a'),
(27, 27, 1, 'navbar', '_layouts/main', 1, '2021-09-06 14:40:32', '2021-09-06 14:40:32', 'a76604bc-01e8-4606-8fbb-56fedc3f7eac'),
(29, 29, 1, 'the-simplest-math-problem-no-one-can-solve-collatz-conjecture', 'blogpost/the-simplest-math-problem-no-one-can-solve-collatz-conjecture', 1, '2021-09-07 09:02:46', '2021-09-07 09:02:46', 'b8063d73-3c02-438b-af9f-6e4d385aa307'),
(30, 30, 1, 'the-simplest-math-problem-no-one-can-solve-collatz-conjecture-2', 'blogpost/the-simplest-math-problem-no-one-can-solve-collatz-conjecture-2', 1, '2021-09-07 10:07:35', '2021-09-07 10:07:35', '97ae42b4-4ac5-43da-af3b-dfe2e7bf817c'),
(31, 31, 1, 'the-simplest-math-problem-no-one-can-solve-collatz-conjecture-2', 'blogpost/the-simplest-math-problem-no-one-can-solve-collatz-conjecture-2', 1, '2021-09-07 10:07:35', '2021-09-07 10:07:35', 'c8e3b0a3-51b2-4ced-90ac-7ecccffd6243'),
(32, 32, 1, 'the-simplest-math-problem-no-one-can-solve-collatz-conjecture-3', 'blogpost/the-simplest-math-problem-no-one-can-solve-collatz-conjecture-3', 1, '2021-09-07 10:07:40', '2021-09-07 10:07:40', 'aeb7aacf-cfc2-4427-a9fd-21b2c744ffcb'),
(33, 33, 1, 'the-simplest-math-problem-no-one-can-solve-collatz-conjecture-3', 'blogpost/the-simplest-math-problem-no-one-can-solve-collatz-conjecture-3', 1, '2021-09-07 10:07:40', '2021-09-07 10:07:40', '040f3cf4-980c-433f-95cb-44d824638fce'),
(34, 34, 1, 'the-simplest-math-problem-no-one-can-solve-collatz-conjecture-2-2', 'blogpost/the-simplest-math-problem-no-one-can-solve-collatz-conjecture-2-2', 1, '2021-09-07 10:07:41', '2021-09-07 10:07:41', 'd778f9f6-ac6e-4ab0-a2d9-3b803d353400'),
(35, 35, 1, 'the-simplest-math-problem-no-one-can-solve-collatz-conjecture-2-2', 'blogpost/the-simplest-math-problem-no-one-can-solve-collatz-conjecture-2-2', 1, '2021-09-07 10:07:41', '2021-09-07 10:07:41', '899a2584-41f2-4b63-898b-969acd6c763e'),
(37, 37, 1, 'the-simplest-math-problem-no-one-can-solve-collatz-conjecture-2', 'blogpost/the-simplest-math-problem-no-one-can-solve-collatz-conjecture-2', 1, '2021-09-07 10:08:51', '2021-09-07 10:08:51', 'f717eacb-5c90-4267-97d8-01b872b4964a'),
(39, 39, 1, 'the-simplest-math-problem-no-one-can-solve-collatz-conjecture-3', 'blogpost/the-simplest-math-problem-no-one-can-solve-collatz-conjecture-3', 1, '2021-09-07 10:09:00', '2021-09-07 10:09:00', 'ea52b9ea-cab6-4a48-8c09-04f99214d46b'),
(41, 41, 1, 'the-simplest-math-problem-no-one-can-solve-collatz-conjecture-2-2', 'blogpost/the-simplest-math-problem-no-one-can-solve-collatz-conjecture-2-2', 1, '2021-09-07 10:09:06', '2021-09-07 10:09:06', '7e68dc74-6b72-42a5-bbb1-01f4b8065e4d'),
(42, 42, 1, 'what-is-not-random', 'blogpost/what-is-not-random', 1, '2021-09-07 13:09:13', '2021-09-07 13:15:34', '4d191fc9-aa27-4a3b-94bc-1c5f0b12d3ef'),
(43, 43, 1, NULL, NULL, 1, '2021-09-07 13:09:16', '2021-09-07 13:09:16', 'cf304937-53f5-4b93-953e-a7c788e3d4c4'),
(44, 44, 1, NULL, NULL, 1, '2021-09-07 13:09:43', '2021-09-07 13:09:43', '212b627d-4682-4378-bad2-9c9b9be40f21'),
(45, 45, 1, NULL, NULL, 1, '2021-09-07 13:09:45', '2021-09-07 13:09:45', '3addbc2e-252f-43ae-96f0-88fd7d5bdfe8'),
(46, 46, 1, NULL, NULL, 1, '2021-09-07 13:09:49', '2021-09-07 13:09:49', 'b37a386d-41a2-4c89-9902-aede6877e6f6'),
(47, 47, 1, NULL, NULL, 1, '2021-09-07 13:09:55', '2021-09-07 13:09:55', '0039a916-3d48-42fe-9a4d-a0f05a50594b'),
(48, 48, 1, NULL, NULL, 1, '2021-09-07 13:09:59', '2021-09-07 13:09:59', 'bba75b7c-3dc7-428f-83dc-3cdcf6f3103d'),
(49, 49, 1, NULL, NULL, 1, '2021-09-07 13:10:10', '2021-09-07 13:10:10', '9028b7c5-7ee7-47ca-92b3-1da8c29b90f8'),
(50, 50, 1, NULL, NULL, 1, '2021-09-07 13:10:13', '2021-09-07 13:10:13', '33775563-a23e-442e-bf09-b8f9a0298625'),
(51, 51, 1, NULL, NULL, 1, '2021-09-07 13:10:14', '2021-09-07 13:10:14', '977d214f-2a12-4a65-81c3-f14f7778bb80'),
(52, 52, 1, NULL, NULL, 1, '2021-09-07 13:10:16', '2021-09-07 13:10:16', '1c72c97b-5000-41a4-b422-a9d6d7544b11'),
(53, 53, 1, NULL, NULL, 1, '2021-09-07 13:10:44', '2021-09-07 13:10:44', 'b8d4cd5f-6f0b-4361-9ec6-fe085f65d15a'),
(54, 54, 1, NULL, NULL, 1, '2021-09-07 13:11:31', '2021-09-07 13:11:31', '55036c3b-8976-4d1c-bc88-525e10734c6c'),
(55, 55, 1, NULL, NULL, 1, '2021-09-07 13:11:41', '2021-09-07 13:11:41', 'f76396d7-6873-4240-bf91-e42242e4f4d0'),
(56, 56, 1, NULL, NULL, 1, '2021-09-07 13:11:44', '2021-09-07 13:11:44', '96b3cade-e2ca-456f-a02c-fd1ce20fafdb'),
(57, 57, 1, NULL, NULL, 1, '2021-09-07 13:11:59', '2021-09-07 13:11:59', '6f3d0b81-9698-4d5e-a842-77fc70e65eeb'),
(58, 58, 1, NULL, NULL, 1, '2021-09-07 13:12:11', '2021-09-07 13:12:11', '7c64360f-0353-444a-b55c-0a3f561b6166'),
(59, 59, 1, NULL, NULL, 1, '2021-09-07 13:12:11', '2021-09-07 13:12:11', '4e93ff94-dd8f-4038-a189-862e2bfd9b41'),
(60, 60, 1, NULL, NULL, 1, '2021-09-07 13:12:12', '2021-09-07 13:12:12', '1fda745a-ccdd-476c-97ca-cd7248ebf842'),
(61, 61, 1, NULL, NULL, 1, '2021-09-07 13:12:12', '2021-09-07 13:12:12', '7a9928a5-f234-4091-ba9c-f4b4034354a0'),
(62, 62, 1, NULL, NULL, 1, '2021-09-07 13:12:16', '2021-09-07 13:12:16', 'db8d67e5-a898-4007-aced-83c47d567e19'),
(63, 63, 1, NULL, NULL, 1, '2021-09-07 13:12:26', '2021-09-07 13:12:26', 'd185ff2e-7e11-4200-b844-2fbed47a0f9b'),
(64, 64, 1, NULL, NULL, 1, '2021-09-07 13:12:27', '2021-09-07 13:12:27', '4d37fe9a-e500-48a0-8917-bd3cced7546b'),
(65, 65, 1, NULL, NULL, 1, '2021-09-07 13:12:34', '2021-09-07 13:12:34', '512ed9f5-3ad5-469d-b647-ee48ce12029c'),
(66, 66, 1, NULL, NULL, 1, '2021-09-07 13:12:36', '2021-09-07 13:12:36', '870b0a13-3f95-400f-950d-6e5828394b95'),
(67, 67, 1, NULL, NULL, 1, '2021-09-07 13:12:39', '2021-09-07 13:12:39', 'a9128de9-5f34-44ce-b76d-409040f9a828'),
(68, 68, 1, NULL, NULL, 1, '2021-09-07 13:12:43', '2021-09-07 13:12:43', 'a16270bc-3c42-4f5c-88bc-b68d31d5ad32'),
(69, 69, 1, NULL, NULL, 1, '2021-09-07 13:12:43', '2021-09-07 13:12:43', '70344019-9ccf-469b-bcd4-0f71f3f2bd5c'),
(70, 70, 1, NULL, NULL, 1, '2021-09-07 13:13:00', '2021-09-07 13:13:00', 'a076195d-7619-4de0-90d7-e634aafb55cb'),
(71, 71, 1, NULL, NULL, 1, '2021-09-07 13:13:07', '2021-09-07 13:13:07', '40d5e1d9-c984-425d-8e1c-34bfac659833'),
(72, 72, 1, NULL, NULL, 1, '2021-09-07 13:13:09', '2021-09-07 13:13:09', '9c325d8a-6ef0-4151-a3ea-c49161a51436'),
(73, 73, 1, NULL, NULL, 1, '2021-09-07 13:13:20', '2021-09-07 13:13:20', 'bde807e4-bba7-4f3e-a730-6f3d8fa4a5d3'),
(74, 74, 1, NULL, NULL, 1, '2021-09-07 13:13:21', '2021-09-07 13:13:21', '61f5cf80-bdb9-427f-b724-e725d2a7648a'),
(75, 75, 1, NULL, NULL, 1, '2021-09-07 13:13:23', '2021-09-07 13:13:23', '78acce40-dc74-4a86-b6ae-a70de0ea0ed3'),
(76, 76, 1, NULL, NULL, 1, '2021-09-07 13:13:24', '2021-09-07 13:13:24', 'e1d2876a-b598-41d7-b493-2d88fe3d1a80'),
(77, 77, 1, NULL, NULL, 1, '2021-09-07 13:13:35', '2021-09-07 13:13:35', 'fbb2f384-b3af-42e3-a24e-186e215524bf'),
(78, 78, 1, NULL, NULL, 1, '2021-09-07 13:13:40', '2021-09-07 13:13:40', 'c3fd7076-108d-4190-89b0-50c10eb5b8e2'),
(79, 79, 1, NULL, NULL, 1, '2021-09-07 13:13:41', '2021-09-07 13:13:41', '7f532914-8603-4958-9cc2-d5afd952d2d7'),
(80, 80, 1, NULL, NULL, 1, '2021-09-07 13:14:02', '2021-09-07 13:14:02', 'db2db407-7422-4ba9-ae74-10361b527117'),
(81, 81, 1, NULL, NULL, 1, '2021-09-07 13:14:04', '2021-09-07 13:14:04', '5b71db0d-a2bb-485b-8c56-f717737affdf'),
(82, 82, 1, NULL, NULL, 1, '2021-09-07 13:14:15', '2021-09-07 13:14:15', 'e2c0b056-34fd-4c56-b024-183b87f27c39'),
(83, 83, 1, NULL, NULL, 1, '2021-09-07 13:14:36', '2021-09-07 13:14:36', 'e7140c5d-f1b4-4d18-ab25-06eec103b999'),
(84, 84, 1, NULL, NULL, 1, '2021-09-07 13:14:36', '2021-09-07 13:14:36', '35182b4a-b1c9-451c-8452-6ed66990b5f4'),
(85, 85, 1, NULL, NULL, 1, '2021-09-07 13:14:41', '2021-09-07 13:14:41', 'beabebec-3a86-4bb2-ace6-7290608080da'),
(86, 86, 1, NULL, NULL, 1, '2021-09-07 13:14:41', '2021-09-07 13:14:41', 'c46bb61d-4b2f-4413-987e-fd388adaf3d4'),
(87, 87, 1, NULL, NULL, 1, '2021-09-07 13:14:55', '2021-09-07 13:14:55', '61328cc1-104d-462e-919b-31c2374b3ca0'),
(88, 88, 1, NULL, NULL, 1, '2021-09-07 13:14:55', '2021-09-07 13:14:55', 'fcc3ca42-ecff-4947-b827-d62648e17adb'),
(89, 89, 1, NULL, NULL, 1, '2021-09-07 13:18:57', '2021-09-07 13:18:57', '14a0ee23-9a55-4906-877b-f6ab56efd5ff'),
(90, 90, 1, 'what-is-not-random', 'blogpost/what-is-not-random', 1, '2021-09-07 13:20:19', '2021-09-07 13:20:19', 'f9ae7b9a-cc00-4319-9bfa-920b35b51936'),
(91, 91, 1, NULL, NULL, 1, '2021-09-07 13:20:19', '2021-09-07 13:20:19', 'c86cb147-e235-4b10-97b5-440404b63ce2'),
(92, 92, 1, NULL, NULL, 1, '2021-09-07 13:20:19', '2021-09-07 13:20:19', 'd13e0c7b-585a-4db6-9a3e-55cb021784b4'),
(96, 96, 1, 'what-is-not-random', 'blogpost/what-is-not-random', 1, '2021-09-07 13:22:45', '2021-09-07 13:22:45', 'ed04415e-78b9-4c8a-947f-76cf85189412'),
(97, 97, 1, NULL, NULL, 1, '2021-09-07 13:22:45', '2021-09-07 13:22:45', 'df44ca92-7610-4431-a1b5-77e07b624508'),
(98, 98, 1, NULL, NULL, 1, '2021-09-07 13:22:45', '2021-09-07 13:22:45', '348c8e5c-56c3-4543-b05f-7a092762c37a'),
(102, 102, 1, 'what-is-not-random', 'blogpost/what-is-not-random', 1, '2021-09-07 13:23:47', '2021-09-07 13:23:47', '64041624-5f7e-454f-84ff-d2f8e8f2ce08'),
(103, 103, 1, NULL, NULL, 1, '2021-09-07 13:23:47', '2021-09-07 13:23:47', 'b84333b8-0c14-436e-bda0-1680a85cc973'),
(104, 104, 1, NULL, NULL, 1, '2021-09-07 13:23:47', '2021-09-07 13:23:47', 'bc05ce99-8753-42ea-8df0-a6ad4fb3adf8'),
(105, 105, 1, 'what-is-not-random', 'blogpost/what-is-not-random', 1, '2021-09-07 13:42:02', '2021-09-07 13:42:02', '94e1e2f8-beb7-4b2f-97ff-b37d7b8ed6a4'),
(106, 106, 1, NULL, NULL, 1, '2021-09-07 13:42:02', '2021-09-07 13:42:02', 'd29c5ed6-81d2-4274-b4d5-1caefa33d6b9'),
(107, 107, 1, NULL, NULL, 1, '2021-09-07 13:42:02', '2021-09-07 13:42:02', '30f36b1e-dd04-4604-b4c0-0ff4f03e6ed0'),
(111, 111, 1, 'what-is-not-random', 'blogpost/what-is-not-random', 1, '2021-09-07 13:44:37', '2021-09-07 13:44:37', '896a903c-a7df-40d4-bb90-2e543949dbce'),
(112, 112, 1, NULL, NULL, 1, '2021-09-07 13:44:37', '2021-09-07 13:44:37', 'def6a84c-8534-4496-97ab-336507df2b5f'),
(113, 113, 1, NULL, NULL, 1, '2021-09-07 13:44:37', '2021-09-07 13:44:37', 'df9f38b9-2c55-465c-9a3d-277f7282ca2f'),
(117, 117, 1, 'what-is-not-random', 'blogpost/what-is-not-random', 1, '2021-09-07 14:10:50', '2021-09-07 14:10:50', 'd1fc4211-b70f-48af-aad4-47108aedfc41'),
(118, 118, 1, NULL, NULL, 1, '2021-09-07 14:10:50', '2021-09-07 14:10:50', 'cd7ae2e5-4f67-4246-a740-3466dd3f85b9'),
(119, 119, 1, NULL, NULL, 1, '2021-09-07 14:10:50', '2021-09-07 14:10:50', '40924b46-e289-4f72-83db-4d270032314e'),
(123, 123, 1, 'what-is-not-random', 'blogpost/what-is-not-random', 1, '2021-09-07 14:11:22', '2021-09-07 14:11:22', '5f821adc-a3b7-411d-b04d-09ce2d6a71cc'),
(124, 124, 1, NULL, NULL, 1, '2021-09-07 14:11:23', '2021-09-07 14:11:23', 'd2100f2f-6065-4511-9ddd-103f2e6aad6e'),
(125, 125, 1, NULL, NULL, 1, '2021-09-07 14:11:23', '2021-09-07 14:11:23', '27472b3c-58ae-4d6a-aa40-769ac27d4405'),
(129, 129, 1, 'what-is-not-random', 'blogpost/what-is-not-random', 1, '2021-09-07 14:32:19', '2021-09-07 14:32:19', '7d670e54-2811-426c-8928-7f0ba242f6ef'),
(130, 130, 1, NULL, NULL, 1, '2021-09-07 14:32:19', '2021-09-07 14:32:19', '2dc82eaa-9514-4315-9738-8d0fd25f1273'),
(131, 131, 1, NULL, NULL, 1, '2021-09-07 14:32:19', '2021-09-07 14:32:19', '0c0e9c80-2df3-45c1-a424-a434163f3720'),
(135, 135, 1, 'what-is-not-random', 'blogpost/what-is-not-random', 1, '2021-09-07 14:32:33', '2021-09-07 14:32:33', 'd82fb384-f111-4eb1-8da0-04b9b0b12913'),
(136, 136, 1, NULL, NULL, 1, '2021-09-07 14:32:34', '2021-09-07 14:32:34', 'b2adec24-2015-482d-8768-1a2bad86b7cb'),
(137, 137, 1, NULL, NULL, 1, '2021-09-07 14:32:34', '2021-09-07 14:32:34', '2e2d2da7-a172-4cf8-b1a6-2bf8fdd7cf11'),
(141, 141, 1, 'what-is-not-random', 'blogpost/what-is-not-random', 1, '2021-09-07 14:33:52', '2021-09-07 14:33:52', '88c26056-7e58-4ce2-bdc4-ecd8c464fcda'),
(142, 142, 1, NULL, NULL, 1, '2021-09-07 14:33:52', '2021-09-07 14:33:52', '8ac4e64b-e1ac-40ab-b0bb-d14d12e84c1b'),
(143, 143, 1, NULL, NULL, 1, '2021-09-07 14:33:52', '2021-09-07 14:33:52', '5dc14316-9ec3-41ba-869a-8a6387bddb2d'),
(147, 147, 1, 'what-is-not-random', 'blogpost/what-is-not-random', 1, '2021-09-07 14:35:36', '2021-09-07 14:35:36', 'fb782921-b486-4964-8e38-ca8c5c72d588'),
(148, 148, 1, NULL, NULL, 1, '2021-09-07 14:35:36', '2021-09-07 14:35:36', '6bd719b8-672b-4b3c-bd6a-9c71c075db0a'),
(149, 149, 1, NULL, NULL, 1, '2021-09-07 14:35:36', '2021-09-07 14:35:36', '76b6a811-0ffb-4e86-be20-458093300e79'),
(153, 153, 1, 'what-is-not-random', 'blogpost/what-is-not-random', 1, '2021-09-07 14:36:15', '2021-09-07 14:36:15', 'fbc40bef-ae38-4543-8e4a-3e345b179cfe'),
(154, 154, 1, NULL, NULL, 1, '2021-09-07 14:36:15', '2021-09-07 14:36:15', '784ad7bd-1f80-4fa2-a3f6-d15e31aca8cb'),
(155, 155, 1, NULL, NULL, 1, '2021-09-07 14:36:15', '2021-09-07 14:36:15', 'f8597de6-80df-4ce7-9e9e-727e47bcc27d'),
(159, 159, 1, 'what-is-not-random', 'blogpost/what-is-not-random', 1, '2021-09-07 14:53:46', '2021-09-07 14:53:46', '05691b5b-a799-48b2-9fe7-4fc64f3c96d6'),
(160, 160, 1, NULL, NULL, 1, '2021-09-07 14:53:46', '2021-09-07 14:53:46', '73df3a63-a259-4ee7-a2f7-93f837b23e3c'),
(161, 161, 1, NULL, NULL, 1, '2021-09-07 14:53:46', '2021-09-07 14:53:46', 'c63ff074-e3ee-4d4f-8b29-f6765e266654'),
(165, 165, 1, 'what-is-not-random', 'blogpost/what-is-not-random', 1, '2021-09-07 14:57:31', '2021-09-07 14:57:31', 'f4c45189-7cd0-4abb-af44-effd89252c34'),
(166, 166, 1, NULL, NULL, 1, '2021-09-07 14:57:31', '2021-09-07 14:57:31', 'e8c3c7e6-1a08-4b51-8173-75646dd88d49'),
(167, 167, 1, NULL, NULL, 1, '2021-09-07 14:57:31', '2021-09-07 14:57:31', '2a67ac6d-cfe7-44bf-ab05-287320168dbe'),
(168, 168, 1, 'homepage', '__home__', 1, '2021-09-08 07:16:03', '2021-09-08 07:16:03', '5526d0a7-5d29-4e26-9f6b-a4733beff0e2'),
(169, 169, 1, 'homepage', '__home__', 1, '2021-09-08 07:16:04', '2021-09-08 07:16:04', '93e82a6a-598e-4bc7-8375-7fe6b651e949'),
(170, 170, 1, 'about', 'about', 1, '2021-09-08 09:02:45', '2021-09-09 10:03:18', '5c8ee1d5-0ab0-4b1e-845d-762ce801c2ff'),
(171, 171, 1, 'about-me', 'about/about-me', 1, '2021-09-08 09:02:58', '2021-09-08 09:02:58', 'd341c248-c74a-44e4-8c3c-a7d7537ed1cf'),
(172, 172, 1, 'contact', 'about/contact', 1, '2021-09-08 09:03:02', '2021-09-09 10:03:18', '382f7cee-180a-4c44-9775-c6ab53aef759'),
(173, 173, 1, 'contact', 'about/contact', 1, '2021-09-08 09:17:39', '2021-09-08 09:17:39', '072cf7e7-3466-4a76-9acf-3140187d35e4'),
(175, 175, 1, 'about-me', 'about/about-me', 1, '2021-09-08 09:23:36', '2021-09-08 09:23:36', 'ca29ea98-8c6c-44f0-a4e1-f4d0ee489363'),
(177, 177, 1, 'about', 'about', 1, '2021-09-08 10:00:44', '2021-09-08 10:00:44', '606ca54e-1ce7-43eb-baae-a1f04ef9eda4'),
(179, 179, 1, 'about', 'about', 1, '2021-09-08 10:02:20', '2021-09-08 10:02:20', '2e1036b1-2edb-40ff-8dae-1d54d67ba82a'),
(181, 181, 1, 'about', 'about', 1, '2021-09-08 10:02:49', '2021-09-08 10:02:49', '5337ad15-7e7e-47bb-ae87-5d76cc03e1fb'),
(182, 182, 1, 'navbar', '_layouts/main', 1, '2021-09-08 10:06:21', '2021-09-08 10:06:21', '990fba75-5340-4877-9ba4-168f81bc82e9'),
(183, 183, 1, 'navbar', NULL, 1, '2021-09-08 10:06:50', '2021-09-08 10:06:50', '6d0930e5-33de-4199-8661-29800b82acac'),
(184, 184, 1, 'navbar', NULL, 1, '2021-09-08 10:06:51', '2021-09-08 10:06:51', '4efae203-000a-42fb-8ec2-a3aa580714f9'),
(186, 186, 1, 'navbar', NULL, 1, '2021-09-08 10:07:03', '2021-09-08 10:07:03', '9f0d534c-6113-49e6-94fb-135040b1beb0'),
(187, 187, 1, 'navbar', '_layouts/main', 1, '2021-09-08 10:12:10', '2021-09-08 10:12:10', '74471b2c-2879-463a-85da-c3fcd64bc79b'),
(188, 188, 1, 'navbar', '_layouts/main', 1, '2021-09-08 10:14:18', '2021-09-08 10:14:18', '2c7cf96b-2fb7-4579-9e16-4133fd2d38c3'),
(190, 190, 1, NULL, NULL, 1, '2021-09-08 14:52:37', '2021-09-08 14:52:37', '7bd480bd-7afc-4cc3-9b18-1eb3247f6fd9'),
(191, 191, 1, NULL, NULL, 1, '2021-09-08 14:52:38', '2021-09-08 14:52:38', '412e765c-70bb-4d3a-b949-f5855b376a3e'),
(192, 192, 1, NULL, NULL, 1, '2021-09-08 14:52:38', '2021-09-08 14:52:38', '3f6b241b-87b4-45c4-bd05-9ead813963c9'),
(193, 193, 1, NULL, NULL, 1, '2021-09-08 14:52:50', '2021-09-08 14:52:50', 'c62b6f5b-6d9b-4863-bee8-d1cf119a61b5'),
(194, 194, 1, NULL, NULL, 1, '2021-09-08 14:52:50', '2021-09-08 14:52:50', 'acc4fb8a-32b8-4915-b4ef-39b23b5a0408'),
(195, 195, 1, NULL, NULL, 1, '2021-09-08 14:53:05', '2021-09-08 14:53:05', 'dc1dc4ec-c56e-4296-8cbe-fdb2ccf5a899'),
(196, 196, 1, NULL, NULL, 1, '2021-09-08 14:53:05', '2021-09-08 14:53:05', '4bfbefcb-b23c-48b8-b0bc-275a2e2af3ee'),
(197, 197, 1, NULL, NULL, 1, '2021-09-08 14:53:13', '2021-09-08 14:53:13', '2d1a0636-4b24-4e84-b024-deb3ab28fd37'),
(198, 198, 1, NULL, NULL, 1, '2021-09-08 14:53:13', '2021-09-08 14:53:13', '06fcc363-3ef6-4e0b-98ac-3fb34b9c22d9'),
(199, 199, 1, NULL, NULL, 1, '2021-09-08 14:53:16', '2021-09-08 14:53:16', '3649811d-0a78-4887-a4f3-09b7fc315ea4'),
(200, 200, 1, NULL, NULL, 1, '2021-09-08 14:53:17', '2021-09-08 14:53:17', 'a55887d4-3779-4f0d-81df-dcb0a7698786'),
(201, 201, 1, NULL, NULL, 1, '2021-09-08 14:53:18', '2021-09-08 14:53:18', 'eaa6ba89-2861-441e-bef2-56038da3d51f'),
(202, 202, 1, NULL, NULL, 1, '2021-09-08 14:53:18', '2021-09-08 14:53:18', '75c2684d-5469-46e2-8c3b-614bbeebdc92'),
(203, 203, 1, NULL, NULL, 1, '2021-09-08 14:53:20', '2021-09-08 14:53:20', '93f5e86c-46d6-4e57-b7a6-dc059cecf417'),
(204, 204, 1, NULL, NULL, 1, '2021-09-08 14:53:20', '2021-09-08 14:53:20', '48ac6ab0-5d09-4b13-81ca-edbfc6eb7e63'),
(205, 205, 1, NULL, NULL, 1, '2021-09-08 14:53:25', '2021-09-08 14:53:25', '3ae1c21f-cc00-4016-be31-d9899fd77b9a'),
(206, 206, 1, NULL, NULL, 1, '2021-09-08 14:53:25', '2021-09-08 14:53:25', 'd6ac646c-669d-424f-b684-de2b20ffa193'),
(207, 207, 1, NULL, NULL, 1, '2021-09-08 14:53:29', '2021-09-08 14:53:29', 'f6c57727-3cd7-4b0a-9cb7-8a010f24b62e'),
(208, 208, 1, NULL, NULL, 1, '2021-09-08 14:53:29', '2021-09-08 14:53:29', '4339d0bd-2de2-464b-8917-af575931c5e6'),
(211, 211, 1, NULL, NULL, 1, '2021-09-08 14:53:31', '2021-09-08 14:53:31', 'b52b1d9e-5ee6-4c03-aaaf-54c035175776'),
(212, 212, 1, NULL, NULL, 1, '2021-09-08 14:53:31', '2021-09-08 14:53:31', '76a7448e-919f-42a5-95b6-7bd953a2d005'),
(213, 213, 1, 'about', 'about', 1, '2021-09-08 14:53:31', '2021-09-08 14:53:31', '6ed6a726-90c5-4bd1-afd9-ba4136c09bad'),
(214, 214, 1, NULL, NULL, 1, '2021-09-08 14:53:31', '2021-09-08 14:53:31', 'b2804221-f636-4eee-b4ba-a29adc51aae0'),
(215, 215, 1, NULL, NULL, 1, '2021-09-08 14:53:31', '2021-09-08 14:53:31', 'dd52f379-6398-4289-8561-b2914486aa6f'),
(219, 219, 1, 'about', 'about', 1, '2021-09-08 14:54:55', '2021-09-08 14:54:55', 'be5a63e0-fc12-4d7c-a214-656a1a3f81a6'),
(220, 220, 1, NULL, NULL, 1, '2021-09-08 14:54:55', '2021-09-08 14:54:55', '894b733f-bb83-459a-98d4-bb0f7b5e8aef'),
(221, 221, 1, NULL, NULL, 1, '2021-09-08 14:54:55', '2021-09-08 14:54:55', '72ff362a-761f-4b4e-8963-6c1bf18663dd'),
(222, 222, 1, 'what-is-not-random', 'blogpost/what-is-not-random', 1, '2021-09-08 14:56:25', '2021-09-08 14:56:25', 'c3c37f41-ed3c-48e9-98c2-969c6ad6d74a'),
(223, 223, 1, NULL, NULL, 1, '2021-09-08 14:56:26', '2021-09-08 14:56:26', 'ebdcd532-2b5a-4e41-82df-397fd2456878'),
(224, 224, 1, NULL, NULL, 1, '2021-09-08 14:56:26', '2021-09-08 14:56:26', '3d1ecefc-20cc-4650-a02e-99a30b1a7864'),
(228, 228, 1, 'about', 'about', 1, '2021-09-08 14:58:53', '2021-09-08 14:58:53', '2a93136d-0060-44e7-adf8-a6b1fec122f4'),
(229, 229, 1, NULL, NULL, 1, '2021-09-08 14:58:53', '2021-09-08 14:58:53', 'd9d39973-c7f9-4010-8e65-091f574ccee4'),
(230, 230, 1, NULL, NULL, 1, '2021-09-08 14:58:53', '2021-09-08 14:58:53', 'fb1cc2a8-0641-4cb4-ae13-b101bb99e183'),
(231, 231, 1, 'about', 'about', 1, '2021-09-08 15:25:14', '2021-09-08 15:25:14', '94f99af0-99aa-45f8-b6bf-5eb1744f8b88'),
(232, 232, 1, NULL, NULL, 1, '2021-09-08 15:25:14', '2021-09-08 15:25:14', '2d86ada7-e5c4-4587-9ebf-12b4a08f0fc1'),
(233, 233, 1, NULL, NULL, 1, '2021-09-08 15:25:14', '2021-09-08 15:25:14', 'b181b08b-1abf-4487-bafe-8ad356c0f500'),
(234, 234, 1, 'contact', 'about/contact', 1, '2021-09-09 11:45:10', '2021-09-09 11:45:10', '177cea6d-b0da-4a88-a5c7-77382ccaeb2a'),
(235, 235, 1, NULL, NULL, 1, '2021-09-09 11:45:10', '2021-09-09 11:45:10', '1dc85749-1299-43d0-ac5e-c65e6721c1ae'),
(236, 236, 1, '__temp_tdgubwdfshmuedwmmkecpkladmfkvqozymqa', 'blogpost/__temp_tdgubwdfshmuedwmmkecpkladmfkvqozymqa', 1, '2021-09-10 14:48:48', '2021-09-10 14:48:48', '103d0f3e-10be-4727-8cc4-f943c14f37fa'),
(237, 237, 1, NULL, NULL, 1, '2021-09-10 14:48:54', '2021-09-10 14:48:54', 'c48ef5c3-a194-4611-97e9-b9ce6e7f6376'),
(238, 238, 1, NULL, NULL, 1, '2021-09-10 14:48:55', '2021-09-10 14:48:55', '47070406-40fd-448c-bfae-46f17120e25a'),
(239, 239, 1, NULL, NULL, 1, '2021-09-10 14:48:55', '2021-09-10 14:48:55', '92f4d3d7-132d-4ba8-8154-c2078e28a1ea'),
(240, 240, 1, 'navbar', '_layouts/main', 1, '2021-09-10 14:49:17', '2021-09-10 14:49:17', '69649622-9b4d-47f3-826d-1f870e679dbc'),
(241, 241, 1, 'navbar', '_layouts/main', 1, '2021-09-10 14:49:24', '2021-09-10 14:49:24', 'faacee64-5730-42aa-9fd7-dbb703fcfdf0'),
(243, 243, 1, NULL, NULL, 1, '2021-09-10 14:52:09', '2021-09-10 14:52:09', '84c4de1a-03ab-43a0-886f-163767965759'),
(244, 244, 1, NULL, NULL, 1, '2021-09-10 14:52:10', '2021-09-10 14:52:10', '720cc7c5-e3c3-4b98-b322-8a3906d09000'),
(245, 245, 1, NULL, NULL, 1, '2021-09-10 14:52:10', '2021-09-10 14:52:10', '6a4b1c86-1796-4c45-9f1c-3859c82c4c06'),
(246, 246, 1, NULL, NULL, 1, '2021-09-10 14:52:11', '2021-09-10 14:52:11', '8ed10334-8763-445f-b5f0-bdbe63abf577'),
(247, 247, 1, NULL, NULL, 1, '2021-09-10 14:52:11', '2021-09-10 14:52:11', '5b767fd2-bd78-494d-af5d-6615433be891'),
(248, 248, 1, NULL, NULL, 1, '2021-09-10 14:52:11', '2021-09-10 14:52:11', '017c0a2d-15cf-40ce-abfe-ef1bb42de22e'),
(249, 249, 1, NULL, NULL, 1, '2021-09-10 14:52:13', '2021-09-10 14:52:13', 'e3cc1c05-c6d0-4ed6-aaec-efa9979bba31'),
(250, 250, 1, NULL, NULL, 1, '2021-09-10 14:52:13', '2021-09-10 14:52:13', 'cc785777-dd71-4bb2-b462-3d3c29ba4e36'),
(251, 251, 1, NULL, NULL, 1, '2021-09-10 14:52:13', '2021-09-10 14:52:13', 'fd5dae63-dc68-4164-87c8-6a973ede22cd'),
(252, 252, 1, NULL, NULL, 1, '2021-09-10 14:52:15', '2021-09-10 14:52:15', 'a5029bea-1968-43b3-b793-fe9b73203262'),
(253, 253, 1, NULL, NULL, 1, '2021-09-10 14:52:15', '2021-09-10 14:52:15', 'ea5f21fa-cf0a-4c92-a290-52b4fc134f2f'),
(254, 254, 1, NULL, NULL, 1, '2021-09-10 14:52:15', '2021-09-10 14:52:15', 'a1849fdf-c9fb-4202-9a90-f6f51f980b64'),
(255, 255, 1, NULL, NULL, 1, '2021-09-10 14:52:18', '2021-09-10 14:52:18', 'fbe6d7c7-13a9-4e0d-8735-69bb315329dc'),
(256, 256, 1, NULL, NULL, 1, '2021-09-10 14:52:18', '2021-09-10 14:52:18', '40a9fb80-88ae-4539-bedf-834d2516c1e2'),
(257, 257, 1, NULL, NULL, 1, '2021-09-10 14:52:18', '2021-09-10 14:52:18', '04e79306-9076-4918-8605-ddc03b119365'),
(258, 258, 1, NULL, NULL, 1, '2021-09-10 14:52:20', '2021-09-10 14:52:20', '40c162b6-c78a-4d39-9eb2-3f66f6bbc058'),
(259, 259, 1, NULL, NULL, 1, '2021-09-10 14:52:20', '2021-09-10 14:52:20', 'c50a4181-ef84-438c-853d-97a4afde75e3'),
(260, 260, 1, NULL, NULL, 1, '2021-09-10 14:52:20', '2021-09-10 14:52:20', 'a6898a69-4aea-48f0-af54-2bca968db2f7'),
(261, 261, 1, NULL, NULL, 1, '2021-09-10 14:52:22', '2021-09-10 14:52:22', 'd4c674da-cde0-4dd4-ba86-e740811e9865'),
(262, 262, 1, NULL, NULL, 1, '2021-09-10 14:52:22', '2021-09-10 14:52:22', 'cd94bbc4-d60e-4623-b753-cf2e0553ddee'),
(263, 263, 1, NULL, NULL, 1, '2021-09-10 14:52:22', '2021-09-10 14:52:22', 'fb11957f-9d1a-4865-8bc2-d53715709208'),
(264, 264, 1, NULL, NULL, 1, '2021-09-10 14:52:25', '2021-09-10 14:52:25', '703e33bc-7002-4898-b665-48486b5b3195'),
(265, 265, 1, NULL, NULL, 1, '2021-09-10 14:52:25', '2021-09-10 14:52:25', 'a493753e-c701-4e8b-b1db-dc9dc4c6c196'),
(266, 266, 1, NULL, NULL, 1, '2021-09-10 14:52:25', '2021-09-10 14:52:25', 'eb572ccd-d4f5-43b6-bc81-50cff350c133'),
(267, 267, 1, NULL, NULL, 1, '2021-09-10 14:52:28', '2021-09-10 14:52:28', '9dd4869e-a28d-49a3-8aea-c00a4b3ea3a0'),
(268, 268, 1, NULL, NULL, 1, '2021-09-10 14:52:28', '2021-09-10 14:52:28', '16af212f-23fa-42ed-80bd-949fde3a9dd3'),
(269, 269, 1, NULL, NULL, 1, '2021-09-10 14:52:28', '2021-09-10 14:52:28', '171605ad-8874-4175-b591-640a3d04f70d'),
(270, 270, 1, NULL, NULL, 1, '2021-09-10 14:52:31', '2021-09-10 14:52:31', 'd25d4266-3fea-4968-862e-fbd64c88cafd'),
(271, 271, 1, NULL, NULL, 1, '2021-09-10 14:52:31', '2021-09-10 14:52:31', 'a41a55de-c81d-4705-94a1-25ecd7788b2f'),
(272, 272, 1, NULL, NULL, 1, '2021-09-10 14:52:31', '2021-09-10 14:52:31', 'a957ca6b-9dfe-47a9-add6-0c2a7425e6d6'),
(273, 273, 1, NULL, NULL, 1, '2021-09-10 14:52:58', '2021-09-10 14:52:58', 'ccc5f0a6-c4dd-4e74-b984-cef7a8c86f51'),
(274, 274, 1, NULL, NULL, 1, '2021-09-10 14:52:58', '2021-09-10 14:52:58', '28e83a36-dc3d-4802-a8ca-33a3e2585549'),
(275, 275, 1, NULL, NULL, 1, '2021-09-10 14:52:58', '2021-09-10 14:52:58', '9352d9ec-41ba-48c2-9a4b-d1370fc31c7d'),
(276, 276, 1, NULL, NULL, 1, '2021-09-10 14:53:06', '2021-09-10 14:53:06', '2272e69d-a544-400c-a5e5-fd9dc741297c'),
(277, 277, 1, NULL, NULL, 1, '2021-09-10 14:53:06', '2021-09-10 14:53:06', 'a576b8e6-278d-4608-81e3-3a1b717afd42'),
(278, 278, 1, NULL, NULL, 1, '2021-09-10 14:53:06', '2021-09-10 14:53:06', 'a33a8d37-b6ee-4c28-bbaa-4e2d9c0104d1'),
(282, 282, 1, NULL, NULL, 1, '2021-09-10 14:53:13', '2021-09-10 14:53:13', 'a2436aa9-38db-42b2-8075-42ff4153f69e'),
(283, 283, 1, NULL, NULL, 1, '2021-09-10 14:53:13', '2021-09-10 14:53:13', 'f942c4db-792c-4e78-a5cd-0d2633369d3b'),
(284, 284, 1, NULL, NULL, 1, '2021-09-10 14:53:13', '2021-09-10 14:53:13', '0d8169a1-e79a-4d56-b061-ae710749d384'),
(285, 285, 1, 'navbar', '_layouts/main', 1, '2021-09-10 14:53:13', '2021-09-10 14:53:13', 'd9bc2e5f-5b03-4c12-b59d-aeeef12892e0'),
(286, 286, 1, NULL, NULL, 1, '2021-09-10 14:53:13', '2021-09-10 14:53:13', 'bb5a4652-693a-474e-b7a8-ac034af81b15'),
(287, 287, 1, NULL, NULL, 1, '2021-09-10 14:53:13', '2021-09-10 14:53:13', '47805103-b8b9-4ce1-922c-7c468d024969'),
(288, 288, 1, NULL, NULL, 1, '2021-09-10 14:53:13', '2021-09-10 14:53:13', '826db8e3-ac81-4267-9d39-6f65ee0bbce8');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `entries`
--

INSERT INTO `entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, 1, 1, '2021-09-06 11:59:00', NULL, NULL, '2021-09-06 11:59:23', '2021-09-06 11:59:23', '1f59be65-bcdc-4851-b5f5-eae78aec3fe3'),
(3, 1, NULL, 1, 1, '2021-09-06 11:59:00', NULL, NULL, '2021-09-06 11:59:24', '2021-09-06 11:59:24', '57085ee3-7790-41de-92ef-689bc50a3ebd'),
(4, 1, NULL, 1, 1, '2021-09-06 11:59:00', NULL, NULL, '2021-09-06 11:59:52', '2021-09-06 11:59:52', 'fa7ba3d4-6be5-4cb9-87f2-fa6a9c8389d0'),
(5, 1, NULL, 1, 1, '2021-09-06 11:59:00', NULL, NULL, '2021-09-06 12:04:53', '2021-09-06 12:04:53', '26cfee8e-f253-4488-9575-767e51e29c5b'),
(8, 1, NULL, 1, 1, '2021-09-06 11:59:00', NULL, NULL, '2021-09-06 12:07:09', '2021-09-06 12:07:09', '8c721754-99b3-4aba-870e-80b1f424cbb6'),
(9, 1, NULL, 1, 1, '2021-09-06 11:59:00', NULL, NULL, '2021-09-06 12:07:16', '2021-09-06 12:07:16', '6ace761e-0822-46d6-ac74-7aaffd417ec2'),
(10, 2, NULL, 3, NULL, '2021-09-06 13:11:00', NULL, NULL, '2021-09-06 13:11:08', '2021-09-06 13:11:08', '1fbb25f1-0ca8-4c8e-8a99-4aec6988242b'),
(11, 2, NULL, 3, NULL, '2021-09-06 13:11:00', NULL, NULL, '2021-09-06 13:11:08', '2021-09-06 13:11:08', '92cb4f5b-48f0-4d7d-b24a-fb0df8b4494a'),
(12, 2, NULL, 3, NULL, '2021-09-06 13:11:00', NULL, NULL, '2021-09-06 14:08:35', '2021-09-06 14:08:35', 'b420db3a-d945-491c-95f6-61b61af594a7'),
(14, 2, NULL, 3, NULL, '2021-09-06 13:11:00', NULL, NULL, '2021-09-06 14:12:45', '2021-09-06 14:12:45', 'f5a77e34-8ad9-430c-9147-e45e9ce50461'),
(16, 2, NULL, 3, NULL, '2021-09-06 13:11:00', NULL, NULL, '2021-09-06 14:12:51', '2021-09-06 14:12:51', '2aeecd10-38fa-4212-95c7-276e995d48b4'),
(17, 2, NULL, 3, NULL, '2021-09-06 13:11:00', NULL, NULL, '2021-09-06 14:23:35', '2021-09-06 14:23:35', 'b0890ebf-e284-4305-8977-e3694be5c18d'),
(18, 2, NULL, 3, NULL, '2021-09-06 13:11:00', NULL, NULL, '2021-09-06 14:35:54', '2021-09-06 14:35:54', '27e2ffb3-5f02-4903-aab1-81e951beb0db'),
(19, 2, NULL, 3, NULL, '2021-09-06 13:11:00', NULL, NULL, '2021-09-06 14:36:00', '2021-09-06 14:36:00', '18571062-b5d3-4c8a-aedb-042dc0c60da0'),
(20, 2, NULL, 3, NULL, '2021-09-06 13:11:00', NULL, NULL, '2021-09-06 14:37:12', '2021-09-06 14:37:12', '4ac7b73a-63bc-47bc-a2a5-01c059629e2f'),
(21, 2, NULL, 3, NULL, '2021-09-06 13:11:00', NULL, NULL, '2021-09-06 14:38:08', '2021-09-06 14:38:08', '969046a0-433b-48f9-a6a6-8616166a39b6'),
(22, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-06 14:39:19', '2021-09-08 10:06:50', 'f1755e33-6a2e-4788-b7ab-56d451d81415'),
(23, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-06 14:39:19', '2021-09-06 14:39:19', '23112b2f-02a8-4163-811a-125ba338b43b'),
(25, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-06 14:39:59', '2021-09-06 14:39:59', '639162c0-69b9-48c7-b507-862b0f57fcaa'),
(26, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-06 14:40:13', '2021-09-06 14:40:13', '3e112fac-d13b-42ec-989b-4e714b37b7e6'),
(27, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-06 14:40:32', '2021-09-06 14:40:32', '3f89b75f-05de-48cc-a88a-ec0dd9cc5d99'),
(29, 1, NULL, 1, 1, '2021-09-06 11:59:00', NULL, NULL, '2021-09-07 09:02:46', '2021-09-07 09:02:46', '94fbc613-366a-431a-9f76-fb145d1e0433'),
(30, 1, NULL, 1, 1, '2021-09-06 11:59:00', NULL, NULL, '2021-09-07 10:07:35', '2021-09-07 10:07:35', '8d8c5975-a63d-40c7-9a45-a41877a077d7'),
(31, 1, NULL, 1, 1, '2021-09-06 11:59:00', NULL, NULL, '2021-09-07 10:07:36', '2021-09-07 10:07:36', '7e82a7cc-e53c-4dc5-bd3a-79b3b502b522'),
(32, 1, NULL, 1, 1, '2021-09-06 11:59:00', NULL, NULL, '2021-09-07 10:07:40', '2021-09-07 10:07:40', '998d7955-a6d6-480d-a1c5-3dcad2f9c91e'),
(33, 1, NULL, 1, 1, '2021-09-06 11:59:00', NULL, NULL, '2021-09-07 10:07:40', '2021-09-07 10:07:40', 'cf68a94e-420d-42ba-a0c5-940510431c78'),
(34, 1, NULL, 1, 1, '2021-09-06 11:59:00', NULL, NULL, '2021-09-07 10:07:41', '2021-09-07 10:07:41', 'ddd18bb4-c115-4fc3-b7f1-d2b7a6029267'),
(35, 1, NULL, 1, 1, '2021-09-06 11:59:00', NULL, NULL, '2021-09-07 10:07:41', '2021-09-07 10:07:41', 'f9ed50c2-30d2-487a-95c4-a9bca4a0f766'),
(37, 1, NULL, 1, 1, '2021-09-06 11:59:00', NULL, NULL, '2021-09-07 10:08:51', '2021-09-07 10:08:51', '289e3431-e23a-4977-be18-b49105b1ac93'),
(39, 1, NULL, 1, 1, '2021-09-06 11:59:00', NULL, NULL, '2021-09-07 10:09:00', '2021-09-07 10:09:00', '74f2fc21-ca59-477f-a178-c805a102a935'),
(41, 1, NULL, 1, 1, '2021-09-06 11:59:00', NULL, NULL, '2021-09-07 10:09:06', '2021-09-07 10:09:06', '97eac275-29a6-40a7-9b32-13ce30444668'),
(42, 1, NULL, 1, 1, '2021-09-07 13:09:00', NULL, NULL, '2021-09-07 13:09:13', '2021-09-07 13:09:13', '8c3cce41-3623-4c57-8f45-41c9949f4818'),
(90, 1, NULL, 1, 1, '2021-09-07 13:09:00', NULL, NULL, '2021-09-07 13:20:19', '2021-09-07 13:20:19', '82bacb03-8630-482a-919f-08ce53d54bef'),
(96, 1, NULL, 1, 1, '2021-09-07 13:09:00', NULL, NULL, '2021-09-07 13:22:45', '2021-09-07 13:22:45', '177b8230-f454-4401-a055-6bea8b67df42'),
(102, 1, NULL, 1, 1, '2021-09-07 13:09:00', NULL, NULL, '2021-09-07 13:23:47', '2021-09-07 13:23:47', '3131140d-3279-4e84-8702-b165266ab7d7'),
(105, 1, NULL, 1, 1, '2021-09-07 13:09:00', NULL, NULL, '2021-09-07 13:42:02', '2021-09-07 13:42:02', '7fa2cfd8-767f-4c67-b441-8ae5065ba63e'),
(111, 1, NULL, 1, 1, '2021-09-07 13:09:00', NULL, NULL, '2021-09-07 13:44:37', '2021-09-07 13:44:37', '4e219f39-4f84-4887-b022-e016aa7a2da7'),
(117, 1, NULL, 1, 1, '2021-09-07 13:09:00', NULL, NULL, '2021-09-07 14:10:50', '2021-09-07 14:10:50', '201ff78e-fe20-4d9c-9b8c-e8382a6e8b7e'),
(123, 1, NULL, 1, 1, '2021-09-07 13:09:00', NULL, NULL, '2021-09-07 14:11:22', '2021-09-07 14:11:22', '7bc9c691-8996-4af0-a954-b31cfaea5648'),
(129, 1, NULL, 1, 1, '2021-09-07 13:09:00', NULL, NULL, '2021-09-07 14:32:19', '2021-09-07 14:32:19', '823d4d64-f1eb-4bbf-bcf7-7d0be1f91802'),
(135, 1, NULL, 1, 1, '2021-09-07 13:09:00', NULL, NULL, '2021-09-07 14:32:34', '2021-09-07 14:32:34', 'f355afea-b10a-46dc-b9dd-31026ad6bfb1'),
(141, 1, NULL, 1, 1, '2021-09-07 13:09:00', NULL, NULL, '2021-09-07 14:33:52', '2021-09-07 14:33:52', 'b17dc3fd-bd88-4dbd-9608-4030cd0e31d4'),
(147, 1, NULL, 1, 1, '2021-09-07 13:09:00', NULL, NULL, '2021-09-07 14:35:36', '2021-09-07 14:35:36', '83f3e719-10d1-4a0c-92fd-cb3ba9808aaa'),
(153, 1, NULL, 1, 1, '2021-09-07 13:09:00', NULL, NULL, '2021-09-07 14:36:15', '2021-09-07 14:36:15', '4b8555c4-25d8-4358-9220-1c74fec7ce7d'),
(159, 1, NULL, 1, 1, '2021-09-07 13:09:00', NULL, NULL, '2021-09-07 14:53:46', '2021-09-07 14:53:46', '84dbc415-4c32-4a69-927f-8c8ef89ef520'),
(165, 1, NULL, 1, 1, '2021-09-07 13:09:00', NULL, NULL, '2021-09-07 14:57:31', '2021-09-07 14:57:31', 'a36b33af-1b28-4068-bd4b-f3f627a193fa'),
(168, 2, NULL, 3, NULL, '2021-09-06 13:11:00', NULL, NULL, '2021-09-08 07:16:03', '2021-09-08 07:16:03', '742a2e22-85f3-4a22-bf13-a6ced5b12dd5'),
(169, 2, NULL, 3, NULL, '2021-09-06 13:11:00', NULL, NULL, '2021-09-08 07:16:04', '2021-09-08 07:16:04', 'fc69c8a3-ba9b-43de-96c5-e5f69ff94adb'),
(170, 4, NULL, 5, 1, '2021-09-08 09:02:00', NULL, NULL, '2021-09-08 09:02:45', '2021-09-08 09:02:45', '9f904701-38f0-42e0-98e0-ff6c4761d309'),
(171, 4, NULL, 5, 1, '2021-09-08 09:02:00', NULL, NULL, '2021-09-08 09:02:58', '2021-09-08 09:02:58', '12757be9-a393-4cef-b014-cb6885d5c7f2'),
(172, 4, NULL, 5, 1, '2021-09-08 09:03:00', NULL, NULL, '2021-09-08 09:03:03', '2021-09-08 09:03:03', '9a3755df-7a17-4320-a0d1-b18f139fbb53'),
(173, 4, NULL, 5, 1, '2021-09-08 09:03:00', NULL, NULL, '2021-09-08 09:17:39', '2021-09-08 09:17:39', '1b9aadb6-00a4-4ff2-87f2-dbb65290fe31'),
(175, 4, NULL, 5, 1, '2021-09-08 09:02:00', NULL, NULL, '2021-09-08 09:23:36', '2021-09-08 09:23:36', '0734e3c5-a7c2-422c-aeb4-0ffde7cb7243'),
(177, 4, NULL, 5, 1, '2021-09-08 09:02:00', NULL, NULL, '2021-09-08 10:00:44', '2021-09-08 10:00:44', 'a1f253ab-2622-4bcb-b077-a311556670bc'),
(179, 4, NULL, 5, 1, '2021-09-08 09:02:00', NULL, NULL, '2021-09-08 10:02:20', '2021-09-08 10:02:20', '700c236b-4f29-4e5b-95c8-173f141b3774'),
(181, 4, NULL, 5, 1, '2021-09-08 09:02:00', NULL, NULL, '2021-09-08 10:02:49', '2021-09-08 10:02:49', 'd7d4b9ca-87fc-417d-8468-fe050448cc16'),
(182, 3, NULL, 4, 1, '2021-09-06 14:39:00', NULL, NULL, '2021-09-08 10:06:21', '2021-09-08 10:06:21', '3e213a37-2e41-454c-89f3-22e6729c1123'),
(183, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-08 10:06:50', '2021-09-08 10:06:50', '2d8407c1-5b78-4490-9704-47301f0783de'),
(184, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-08 10:06:51', '2021-09-08 10:06:51', '93796a4e-f7ef-4a99-bb1b-0c83f9721449'),
(186, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-08 10:07:03', '2021-09-08 10:07:03', '7998dc1f-4fe6-49b4-9876-343f6b6f24e0'),
(187, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-08 10:12:10', '2021-09-08 10:12:10', '232f4230-b1ff-4ee6-a572-3effe806cdfd'),
(188, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-08 10:14:18', '2021-09-08 10:14:18', '77368100-bb76-44ce-8a6e-9e7bd5f22512'),
(213, 4, NULL, 5, 1, '2021-09-08 09:02:00', NULL, NULL, '2021-09-08 14:53:31', '2021-09-08 14:53:31', '8d86d84b-0932-4e65-8904-2e41450331e2'),
(219, 4, NULL, 5, 1, '2021-09-08 09:02:00', NULL, NULL, '2021-09-08 14:54:55', '2021-09-08 14:54:55', '5f1f047b-58c4-4c39-8f01-d7ee096a4d82'),
(222, 1, NULL, 1, 1, '2021-09-07 13:09:00', NULL, NULL, '2021-09-08 14:56:26', '2021-09-08 14:56:26', '31af6833-d591-44b9-ada4-b92caad0ea5d'),
(228, 4, NULL, 5, 1, '2021-09-08 09:02:00', NULL, NULL, '2021-09-08 14:58:53', '2021-09-08 14:58:53', '7dd298e4-5cfb-4441-aab1-09fdae981e91'),
(231, 4, NULL, 5, 1, '2021-09-08 09:02:00', NULL, NULL, '2021-09-08 15:25:14', '2021-09-08 15:25:14', 'af6a21cb-ef82-4d2e-a9ad-07e80631b3b4'),
(234, 4, NULL, 5, 1, '2021-09-08 09:03:00', NULL, NULL, '2021-09-09 11:45:10', '2021-09-09 11:45:10', '99e56d62-8c55-4394-bc13-c5224b34b317'),
(236, 1, NULL, 1, 1, '2021-09-10 14:48:00', NULL, 0, '2021-09-10 14:48:48', '2021-09-10 14:48:48', '0093711d-f185-4910-9b75-fb9ee0b322e8'),
(240, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-10 14:49:17', '2021-09-10 14:49:17', 'aa4402ab-c097-444e-b4bc-49251bdd5be1'),
(241, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-10 14:49:24', '2021-09-10 14:49:24', '0ca5acf8-301c-4aad-809f-c9fdfd1cd397'),
(285, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-10 14:53:13', '2021-09-10 14:53:13', '85b900ea-3e49-4b30-88cb-07494267ef3b');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `entrytypes`
--

CREATE TABLE `entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT 1,
  `titleTranslationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `entrytypes`
--

INSERT INTO `entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 2, 'Standaard', 'default', 1, 'site', NULL, NULL, 1, '2021-09-06 11:24:27', '2021-09-06 11:33:12', NULL, '4c7c41bd-271d-4790-aecd-3eafe71ca7c6'),
(2, 1, 3, 'post', 'blogpost', 1, 'site', NULL, NULL, 2, '2021-09-06 11:32:49', '2021-09-06 11:32:49', '2021-09-06 11:33:02', '2899acf3-4276-43de-a608-6429d4255961'),
(3, 2, 4, 'Homepage', 'homepage', 0, 'site', NULL, '{section.name|raw}', 1, '2021-09-06 13:11:08', '2021-09-08 07:16:04', NULL, 'bb77b1f3-1ccf-4257-af21-bb0d3e88362d'),
(4, 3, 5, 'navbar', 'navbar', 1, 'site', NULL, NULL, 1, '2021-09-06 14:38:41', '2021-09-06 14:39:19', NULL, 'b8b01c62-e65a-45ab-a41a-2880f6839689'),
(5, 4, 8, 'Standaard', 'default', 1, 'site', NULL, NULL, 1, '2021-09-08 08:06:35', '2021-09-08 08:06:35', NULL, '845194a4-5a85-4e81-8d73-c11be1057caa');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `fieldgroups`
--

CREATE TABLE `fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Common', '2021-09-06 10:09:22', '2021-09-06 10:09:22', NULL, '3b68da63-81e3-4d75-b78d-63e267cf49d7'),
(2, 'blogpost', '2021-09-06 11:34:51', '2021-09-06 11:34:51', NULL, '417ad68e-f480-4c58-bc24-a31574f1c928'),
(3, 'General', '2021-09-06 11:39:39', '2021-09-06 11:39:39', NULL, '518e5c2e-1341-4b80-a65a-8512d938f820'),
(4, 'inhoud', '2021-09-07 11:39:10', '2021-09-07 11:39:10', '2021-09-07 11:39:21', '956c41e6-4c30-42f2-8584-077b63f6a4f0'),
(5, 'inhoud', '2021-09-07 11:41:31', '2021-09-07 11:41:31', NULL, '34ad3c2c-7a70-4054-91bb-90ada9475662'),
(6, 'about', '2021-09-08 13:26:57', '2021-09-08 13:26:57', '2021-09-08 13:27:15', 'a1cd5f9c-2403-4e91-af47-68ddc8a72fbd'),
(7, 'about', '2021-09-08 13:29:00', '2021-09-08 13:29:00', NULL, '8886d58d-cb48-4775-9092-f5615f900343');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `fieldlayoutfields`
--

CREATE TABLE `fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `fieldlayoutfields`
--

INSERT INTO `fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(30, 2, 24, 3, 1, 0, '2021-09-07 13:38:51', '2021-09-07 13:38:51', '0b936414-fc9a-4ebe-8855-14baa1255240'),
(31, 2, 24, 1, 1, 2, '2021-09-07 13:38:51', '2021-09-07 13:38:51', 'fcadbf85-100a-4dd2-8a26-8a53cbb97e25'),
(32, 2, 24, 4, 0, 3, '2021-09-07 13:38:51', '2021-09-07 13:38:51', '28b41f65-abf7-44f4-8de4-53d1cb7ea398'),
(33, 2, 24, 2, 0, 4, '2021-09-07 13:38:51', '2021-09-07 13:38:51', '87986b27-3b01-41df-8f40-33cb9d980fdc'),
(34, 2, 25, 9, 0, 0, '2021-09-07 13:38:51', '2021-09-07 13:38:51', 'aab305e5-f6af-478f-b4ed-9c683b816f36'),
(39, 6, 30, 10, 0, 0, '2021-09-07 14:56:34', '2021-09-07 14:56:34', 'c7be63b1-eeda-4880-80fb-a05abd5968d5'),
(40, 7, 31, 11, 0, 0, '2021-09-07 14:56:35', '2021-09-07 14:56:35', '66da2176-bc8b-43a1-9591-5bec92f0e07a'),
(43, 8, 36, 12, 0, 1, '2021-09-08 14:20:11', '2021-09-08 14:20:11', '8acc8f49-8265-48c1-96a1-f94d9da64ff8'),
(47, 9, 39, 13, 0, 0, '2021-09-08 14:58:15', '2021-09-08 14:58:15', '30c678ae-32ab-4e43-8d4d-14f075d9ec73'),
(48, 10, 40, 14, 0, 0, '2021-09-08 14:58:16', '2021-09-08 14:58:16', '1f0a60bc-ea05-4d40-a5d3-98a349aacf00'),
(49, 10, 40, 15, 0, 1, '2021-09-08 14:58:16', '2021-09-08 14:58:16', '178a121f-5711-4e6d-b5dc-a4b5fd32c8fd'),
(53, 5, 43, 8, 0, 1, '2021-09-10 14:49:24', '2021-09-10 14:49:24', '35a507f9-10a4-4ded-9445-8bec04374f82'),
(54, 5, 43, 16, 0, 2, '2021-09-10 14:49:24', '2021-09-10 14:49:24', 'c0f9a1d7-2bff-4745-a8db-429d972dae2a'),
(57, 11, 46, 17, 0, 0, '2021-09-10 14:51:57', '2021-09-10 14:51:57', '2a66e665-b567-4c16-a0ae-c5cd3018f401'),
(58, 12, 47, 18, 0, 0, '2021-09-10 14:51:57', '2021-09-10 14:51:57', 'ab040c62-c316-467b-8592-30ad7090124e'),
(59, 13, 48, 19, 0, 0, '2021-09-10 14:51:57', '2021-09-10 14:51:57', '251f28d5-0b33-45dd-ad5b-830288010740');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `fieldlayouts`
--

CREATE TABLE `fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `fieldlayouts`
--

INSERT INTO `fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Asset', '2021-09-06 10:38:56', '2021-09-06 10:38:56', NULL, 'a64138f5-f419-494f-863a-6c4f896792de'),
(2, 'craft\\elements\\Entry', '2021-09-06 11:24:27', '2021-09-06 11:24:27', NULL, '4bc63b8b-865d-427e-bedd-15c7f945691d'),
(3, 'craft\\elements\\Entry', '2021-09-06 11:32:49', '2021-09-06 11:32:49', '2021-09-06 11:33:02', 'b4bc2889-3d78-492c-9ceb-702880e6a946'),
(4, 'craft\\elements\\Entry', '2021-09-06 13:11:08', '2021-09-06 13:11:08', NULL, '410aa703-ed96-4586-a0be-75ced0eb977d'),
(5, 'craft\\elements\\Entry', '2021-09-06 14:38:41', '2021-09-06 14:38:41', NULL, 'e16888a4-4dec-450f-a6c2-71c209fbc766'),
(6, 'craft\\elements\\MatrixBlock', '2021-09-07 12:58:22', '2021-09-07 12:58:22', NULL, 'dd0fb9ac-e4fe-4014-ad10-0887926eaf73'),
(7, 'craft\\elements\\MatrixBlock', '2021-09-07 12:58:22', '2021-09-07 12:58:22', NULL, '1b01a206-5352-47d0-9da1-6a221026d0a6'),
(8, 'craft\\elements\\Entry', '2021-09-08 08:06:35', '2021-09-08 08:06:35', NULL, 'cb868842-614c-461c-9243-6605614c4c98'),
(9, 'craft\\elements\\MatrixBlock', '2021-09-08 14:19:20', '2021-09-08 14:19:20', NULL, '90fe6753-a117-4edb-8913-42224d16173d'),
(10, 'craft\\elements\\MatrixBlock', '2021-09-08 14:19:21', '2021-09-08 14:19:21', NULL, '035a1325-057f-4ada-8084-74d2a5676623'),
(11, 'craft\\elements\\MatrixBlock', '2021-09-10 14:47:42', '2021-09-10 14:47:42', NULL, 'e24fffcc-7297-4129-91a0-f53afaf30b67'),
(12, 'craft\\elements\\MatrixBlock', '2021-09-10 14:50:35', '2021-09-10 14:50:35', NULL, 'c5ecdb7e-36aa-4809-9e26-8356a60bf706'),
(13, 'craft\\elements\\MatrixBlock', '2021-09-10 14:51:57', '2021-09-10 14:51:57', NULL, '8d22d29a-419b-42ec-b76f-beb474632640');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `fieldlayouttabs`
--

CREATE TABLE `fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elements` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `fieldlayouttabs`
--

INSERT INTO `fieldlayouttabs` (`id`, `layoutId`, `name`, `elements`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 3, 'Inhoud', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-09-06 11:32:49', '2021-09-06 11:32:49', '6a5f4f3c-d390-4690-955c-d942292f59fc'),
(8, 1, 'Inhoud', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-09-06 12:05:03', '2021-09-06 12:05:03', '3085166e-072d-4523-ad4b-b7045bfb8e55'),
(24, 2, 'Inhoud', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"required\":\"1\",\"width\":100,\"fieldUid\":\"e6e40127-efc5-4abd-b5ec-455c1a80fa0c\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"required\":\"1\",\"width\":100,\"fieldUid\":\"fdd41422-2f3c-4581-af2d-b4d3a271e183\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"7382616d-769d-4f84-8b59-7245cd08ef20\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"e3a74156-6e99-4310-8b92-cc9c1d33e616\"}]', 1, '2021-09-07 13:38:51', '2021-09-07 13:38:51', '54febf38-756f-463e-97f1-ba81e990f243'),
(25, 2, 'matrixinhoud', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"e3c14bdc-b578-4588-bce9-7dc0f8553072\"}]', 2, '2021-09-07 13:38:51', '2021-09-07 13:38:51', '31c398d9-1a81-4f36-a732-4a92a201a5df'),
(30, 6, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"3b175535-87ad-4cb7-90d4-5e06d63658d6\"}]', 1, '2021-09-07 14:56:34', '2021-09-07 14:56:34', 'fdd8bb6b-62df-489f-b173-37a4f6d85102'),
(31, 7, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"f45f3568-3d9c-4779-b17c-26458592de2f\"}]', 1, '2021-09-07 14:56:35', '2021-09-07 14:56:35', '3de67fab-dac3-4252-9ad3-a4f4cd7205ed'),
(32, 4, 'Inhoud', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-09-08 07:16:03', '2021-09-08 07:16:03', '277eb95c-c203-466a-bfa1-40508c333bbc'),
(36, 8, 'Inhoud', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"639db3fc-cfd4-4523-a2e8-2ac5effb3522\"}]', 1, '2021-09-08 14:20:11', '2021-09-08 14:20:11', 'be053905-ec62-446b-8a9c-466b32b3f7bd'),
(39, 9, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6fb6a84c-ac77-4355-b483-06f78d791539\"}]', 1, '2021-09-08 14:58:15', '2021-09-08 14:58:15', 'ef504c69-4cfc-49e7-b400-3553f3c8d747'),
(40, 10, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"185857a1-7047-4adc-84d0-a8d679523c2d\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"1bedf931-c16d-4606-a377-f778e799f5c0\"}]', 1, '2021-09-08 14:58:16', '2021-09-08 14:58:16', 'fd276aba-ca9e-44bc-b56c-cb441e37b4d1'),
(43, 5, 'Inhoud', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"eac5e9e9-55ae-47bd-8d5c-4b674f1ff355\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"09d31fa1-984a-400f-85b2-8845a04ac918\"}]', 1, '2021-09-10 14:49:24', '2021-09-10 14:49:24', 'b1120397-22f9-4b92-ad9c-978f75baaa4b'),
(46, 11, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"48e223bd-f8d0-41fb-acf1-338cc6ebfcae\"}]', 1, '2021-09-10 14:51:57', '2021-09-10 14:51:57', '56d2b3ef-005f-4d48-80ec-b9c7a6d250d5'),
(47, 12, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"88431a62-ee0e-4589-8f9b-79e34f647e72\"}]', 1, '2021-09-10 14:51:57', '2021-09-10 14:51:57', 'a302c1ac-0fcf-4daa-93bc-616c9425f4c3'),
(48, 13, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"03e5d8de-eb19-4fee-be03-5b2baf5a22bc\"}]', 1, '2021-09-10 14:51:57', '2021-09-10 14:51:57', '0bce8044-0e07-4465-89ca-fd671e9f77ab');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `columnSuffix` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `searchable` tinyint(1) NOT NULL DEFAULT 1,
  `translationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `translationKeyFormat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `fields`
--

INSERT INTO `fields` (`id`, `groupId`, `name`, `handle`, `context`, `columnSuffix`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 'subtext', 'subtext', 'global', 'huynruhi', 'Een korte introductie voor de tekst die u wilt schrijven.', 0, 'none', NULL, 'craft\\ckeditor\\Field', '{\"columnType\":\"text\",\"initJs\":null,\"purifierConfig\":\"\",\"purifyHtml\":\"1\"}', '2021-09-06 11:39:22', '2021-09-06 11:59:44', 'fdd41422-2f3c-4581-af2d-b4d3a271e183'),
(2, 3, 'PageCopy', 'pagecopy', 'global', 'zwjsxauz', '', 0, 'none', NULL, 'craft\\ckeditor\\Field', '{\"columnType\":\"mediumtext\",\"initJs\":null,\"purifierConfig\":\"\",\"purifyHtml\":\"1\"}', '2021-09-06 11:46:08', '2021-09-06 11:46:08', 'e3a74156-6e99-4310-8b92-cc9c1d33e616'),
(3, 2, 'headimage', 'headimage', 'global', NULL, '', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":null,\"defaultUploadLocationSource\":\"volume:3b49d805-1ae4-41ab-ad93-00de8e3a56c3\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"\",\"selectionLabel\":\"\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:3b49d805-1ae4-41ab-ad93-00de8e3a56c3\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2021-09-06 11:49:26', '2021-09-06 12:06:05', 'e6e40127-efc5-4abd-b5ec-455c1a80fa0c'),
(4, 2, 'videolink', 'videolink', 'global', 'ehemhfzb', 'Doe hier een Youtube video in, via een embed link. Die kun je halen van de youtube video bij delen.', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\"]}', '2021-09-06 11:50:08', '2021-09-07 09:10:53', '7382616d-769d-4f84-8b59-7245cd08ef20'),
(8, 3, 'introduction', 'introduction', 'global', 'itoqovjy', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":\"text\",\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2021-09-06 14:08:11', '2021-09-06 14:08:11', 'eac5e9e9-55ae-47bd-8d5c-4b674f1ff355'),
(9, 5, 'inhoudzelf', 'inhoudzelf', 'global', NULL, '', 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"contentTable\":\"{{%matrixcontent_inhoudzelf}}\",\"maxBlocks\":\"\",\"minBlocks\":\"\",\"propagationKeyFormat\":null,\"propagationMethod\":\"all\"}', '2021-09-07 12:58:21', '2021-09-07 12:58:21', 'e3c14bdc-b578-4588-bce9-7dc0f8553072'),
(10, NULL, 'bodytext', 'bodytext', 'matrixBlockType:d6287000-aeb5-4ddf-aeeb-da48f9ed904f', NULL, '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2021-09-07 12:58:22', '2021-09-07 14:56:34', '3b175535-87ad-4cb7-90d4-5e06d63658d6'),
(11, NULL, 'videolink', 'videolink', 'matrixBlockType:5d359804-dc3e-4485-8e71-f6d29868806e', NULL, 'Zet hier een video link in.', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\"]}', '2021-09-07 12:58:22', '2021-09-07 14:23:03', 'f45f3568-3d9c-4779-b17c-26458592de2f'),
(12, 7, 'about', 'about', 'global', NULL, '', 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"contentTable\":\"{{%matrixcontent_about}}\",\"maxBlocks\":\"\",\"minBlocks\":\"\",\"propagationKeyFormat\":null,\"propagationMethod\":\"all\"}', '2021-09-08 14:19:19', '2021-09-08 14:19:19', '639db3fc-cfd4-4523-a2e8-2ac5effb3522'),
(13, NULL, 'body', 'body', 'matrixBlockType:95710e39-bdda-4a20-bfe7-9f8f96a9eb1f', NULL, '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"cleanupHtml\":true,\"columnType\":\"mediumtext\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2021-09-08 14:19:20', '2021-09-08 14:57:41', '6fb6a84c-ac77-4355-b483-06f78d791539'),
(14, NULL, 'videolink', 'videolink', 'matrixBlockType:e27425f4-7074-4765-8f15-839e26004962', NULL, '', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\"]}', '2021-09-08 14:19:20', '2021-09-08 14:57:41', '185857a1-7047-4adc-84d0-a8d679523c2d'),
(15, NULL, 'videonaam', 'videonaam', 'matrixBlockType:e27425f4-7074-4765-8f15-839e26004962', NULL, '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":\"text\",\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2021-09-08 14:57:41', '2021-09-08 14:58:15', '1bedf931-c16d-4606-a377-f778e799f5c0'),
(16, 7, 'navbarfield', 'navbarfield', 'global', NULL, '', 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"contentTable\":\"{{%matrixcontent_navbarfield}}\",\"maxBlocks\":\"\",\"minBlocks\":\"\",\"propagationKeyFormat\":null,\"propagationMethod\":\"all\"}', '2021-09-10 14:47:41', '2021-09-10 14:47:41', '09d31fa1-984a-400f-85b2-8845a04ac918'),
(17, NULL, 'facebooklink', 'facebooklink', 'matrixBlockType:17db215b-91d6-4e8a-8b09-e0865c10c523', NULL, '', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\"]}', '2021-09-10 14:47:42', '2021-09-10 14:50:34', '48e223bd-f8d0-41fb-acf1-338cc6ebfcae'),
(18, NULL, 'twitterlink', 'twitterlink', 'matrixBlockType:cb9e90a1-3919-450b-98f5-629110cc72ed', NULL, '', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\"]}', '2021-09-10 14:50:35', '2021-09-10 14:51:57', '88431a62-ee0e-4589-8f9b-79e34f647e72'),
(19, NULL, 'mailto', 'mailto', 'matrixBlockType:b3f35fce-f0a9-496d-9f25-8dd0595f6eef', 'cuvkidtn', '', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\",\"email\"]}', '2021-09-10 14:51:57', '2021-09-10 14:51:57', '03e5d8de-eb19-4fee-be03-5b2baf5a22bc');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `globalsets`
--

CREATE TABLE `globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gqlschemas`
--

CREATE TABLE `gqlschemas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scope` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `isPublic` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `gqlschemas`
--

INSERT INTO `gqlschemas` (`id`, `name`, `scope`, `isPublic`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Public Schema', '[]', 1, '2021-09-06 11:43:39', '2021-09-06 11:43:39', '2650fd56-94c1-4d62-929b-998b54588b6d');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gqltokens`
--

CREATE TABLE `gqltokens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accessToken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `gqltokens`
--

INSERT INTO `gqltokens` (`id`, `name`, `accessToken`, `enabled`, `expiryDate`, `lastUsed`, `schemaId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Public Token', '__PUBLIC__', 1, NULL, NULL, 1, '2021-09-06 11:43:39', '2021-09-06 11:43:39', '4c66b1bc-f785-4457-9d02-ed9b8c557b48');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT 0,
  `configVersion` char(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `info`
--

INSERT INTO `info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '3.7.56', '3.7.33', 0, 'gzorseqrksof', '3@tonftphyve', '2021-09-06 10:09:22', '2022-10-18 12:46:52', 'bd374219-4f30-4743-b1dc-06c299bde1de');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `matrixblocks`
--

CREATE TABLE `matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `matrixblocks`
--

INSERT INTO `matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `deletedWithOwner`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(43, 42, 9, 1, 1, 0, '2021-09-07 13:09:16', '2021-09-07 13:09:16', '6f5447ca-3f5e-46bc-ba01-0967b43f4df2'),
(44, 42, 9, 1, 1, 0, '2021-09-07 13:09:43', '2021-09-07 13:09:43', '27e3580c-071e-4d9f-a5e4-54220f08e70f'),
(45, 42, 9, 1, 1, 0, '2021-09-07 13:09:45', '2021-09-07 13:09:45', 'c4b50a34-6d78-4132-b68e-ebddfb477ce4'),
(46, 42, 9, 1, 1, 0, '2021-09-07 13:09:49', '2021-09-07 13:09:49', '7a39d788-ba34-4409-81cc-0b6b7f906400'),
(47, 42, 9, 1, 1, 0, '2021-09-07 13:09:55', '2021-09-07 13:09:55', '860ca5e4-9bf2-45cc-874d-80bf50b254d2'),
(48, 42, 9, 1, 1, 0, '2021-09-07 13:09:59', '2021-09-07 13:09:59', 'e6f3d8e1-9d94-4f17-8a8e-4be98f163f58'),
(49, 42, 9, 1, 1, 0, '2021-09-07 13:10:10', '2021-09-07 13:10:10', '78bf5db8-9f36-4fad-b596-1d6c4d74be28'),
(50, 42, 9, 1, 1, 0, '2021-09-07 13:10:13', '2021-09-07 13:10:13', '602c6a09-900a-4709-9cb5-c13d55cc382b'),
(51, 42, 9, 1, 1, 0, '2021-09-07 13:10:14', '2021-09-07 13:10:14', 'e62ebeb6-1b69-4640-83cf-c841d2dfbf70'),
(52, 42, 9, 1, 1, 0, '2021-09-07 13:10:16', '2021-09-07 13:10:16', 'bbf458a0-2d24-4b8d-88e7-c82afda36ea7'),
(53, 42, 9, 1, 1, 0, '2021-09-07 13:10:44', '2021-09-07 13:10:44', 'cda6d634-2f73-4d1c-9442-6266b63d8c42'),
(54, 42, 9, 1, 1, 0, '2021-09-07 13:11:31', '2021-09-07 13:11:31', '509b87fd-3ca2-44b8-b10f-53644fd08f7b'),
(55, 42, 9, 1, 1, 0, '2021-09-07 13:11:41', '2021-09-07 13:11:41', 'e970c1c6-dbef-4d9b-a003-40e4fc2b6935'),
(56, 42, 9, 1, 1, 0, '2021-09-07 13:11:44', '2021-09-07 13:11:44', 'c37a90d3-a6c2-4d3d-94e4-e41894b83c37'),
(57, 42, 9, 1, 1, 0, '2021-09-07 13:11:59', '2021-09-07 13:11:59', 'e48b07a1-945e-47a7-af94-994e1a7e32e4'),
(58, 42, 9, 1, 1, 0, '2021-09-07 13:12:11', '2021-09-07 13:12:11', '5e769cca-dfc1-477f-b134-317416e13581'),
(59, 42, 9, 1, 1, 0, '2021-09-07 13:12:11', '2021-09-07 13:12:11', '3d9d7a44-c935-4f8b-b996-e27c9427b6d1'),
(60, 42, 9, 1, 1, 0, '2021-09-07 13:12:12', '2021-09-07 13:12:12', 'e9886cbc-a0ae-44f3-91a1-18e21b28c8b1'),
(61, 42, 9, 1, 1, 0, '2021-09-07 13:12:12', '2021-09-07 13:12:12', '750d18db-959a-462e-ae1b-33d1528a8988'),
(62, 42, 9, 1, 1, 0, '2021-09-07 13:12:16', '2021-09-07 13:12:16', 'afc017c9-3e24-4d34-91b3-8778fa32d6a6'),
(63, 42, 9, 1, 1, 0, '2021-09-07 13:12:26', '2021-09-07 13:12:26', '92815c8f-51e6-457e-8ad9-9f90279ef344'),
(64, 42, 9, 1, 1, 0, '2021-09-07 13:12:27', '2021-09-07 13:12:27', '19a4d385-ad20-4be4-8198-d8cc33c5a6ba'),
(65, 42, 9, 1, 1, 0, '2021-09-07 13:12:34', '2021-09-07 13:12:34', '371842e0-6d1f-4f12-ac6e-cec2730b5671'),
(66, 42, 9, 1, 1, 0, '2021-09-07 13:12:36', '2021-09-07 13:12:36', 'aed725af-3e1f-4a2b-a4f6-26f09c0f62ec'),
(67, 42, 9, 1, 1, 0, '2021-09-07 13:12:39', '2021-09-07 13:12:39', 'e8c845f0-80ec-41f3-9c13-942ccd3e5313'),
(68, 42, 9, 1, 1, 0, '2021-09-07 13:12:43', '2021-09-07 13:12:43', 'fe21c5bd-c1ad-41bf-bb39-f4cdb93ac5cb'),
(69, 42, 9, 1, 1, 0, '2021-09-07 13:12:43', '2021-09-07 13:12:43', 'e8eb2a2e-9f89-4f3b-9a72-09f3734a61ba'),
(70, 42, 9, 1, 1, 0, '2021-09-07 13:13:00', '2021-09-07 13:13:00', '9bc8a3fa-00c2-451f-b966-5215ffd89292'),
(71, 42, 9, 1, 1, 0, '2021-09-07 13:13:07', '2021-09-07 13:13:07', '836f363b-7cca-4c37-8069-49021f6237e0'),
(72, 42, 9, 1, 1, 0, '2021-09-07 13:13:09', '2021-09-07 13:13:09', 'aef3d724-84a4-4e17-b16c-aeeabb13b8cc'),
(73, 42, 9, 1, 1, 0, '2021-09-07 13:13:20', '2021-09-07 13:13:20', 'b33a22b8-edec-4b83-9ccc-4da3e28900eb'),
(74, 42, 9, 1, 1, 0, '2021-09-07 13:13:21', '2021-09-07 13:13:21', '50942270-50d6-427e-89cc-d289120da3ce'),
(75, 42, 9, 1, 1, 0, '2021-09-07 13:13:23', '2021-09-07 13:13:23', 'ae8d395f-afb1-4f95-b611-b4c4542bf335'),
(76, 42, 9, 1, 1, 0, '2021-09-07 13:13:24', '2021-09-07 13:13:24', 'a12832cb-6c87-42b4-b6ee-e3a1466eaf79'),
(77, 42, 9, 1, 1, 0, '2021-09-07 13:13:35', '2021-09-07 13:13:35', '3996248a-99cc-41cd-bd95-09eb165dce91'),
(78, 42, 9, 1, 1, 0, '2021-09-07 13:13:40', '2021-09-07 13:13:40', '2018dfcb-b446-43b6-afde-23312a71ba1a'),
(79, 42, 9, 1, 1, 0, '2021-09-07 13:13:41', '2021-09-07 13:13:41', '64613038-a78e-4f75-b98b-39b8f9f04398'),
(80, 42, 9, 1, 1, 0, '2021-09-07 13:14:02', '2021-09-07 13:14:02', '147b558b-e195-49f1-85bc-0ee1a984b68a'),
(81, 42, 9, 1, 1, 0, '2021-09-07 13:14:04', '2021-09-07 13:14:04', 'a1aa71f3-955b-45a3-b2b2-d12476f2aae5'),
(82, 42, 9, 1, 1, 0, '2021-09-07 13:14:15', '2021-09-07 13:14:15', '2d49ccd3-795c-4f27-af14-87bedcf42b38'),
(83, 42, 9, 1, 1, 0, '2021-09-07 13:14:36', '2021-09-07 13:14:36', 'e5982866-8770-4f28-88c4-1ac653d4625e'),
(84, 42, 9, 2, 2, 0, '2021-09-07 13:14:36', '2021-09-07 13:14:36', '98d6e848-db17-4494-868c-03db201d6038'),
(85, 42, 9, 2, 1, 0, '2021-09-07 13:14:41', '2021-09-07 13:14:41', 'db28867f-d98e-4553-8146-183d96465684'),
(86, 42, 9, 1, 2, 0, '2021-09-07 13:14:41', '2021-09-07 13:14:41', '02f45d29-af16-4574-a302-5eb2dd488d50'),
(87, 42, 9, 2, 1, NULL, '2021-09-07 13:14:55', '2021-09-07 14:53:45', '76d613eb-d903-42b0-8ca7-f1cf3d0997a4'),
(88, 42, 9, 1, 2, NULL, '2021-09-07 13:14:55', '2021-09-07 14:53:46', '225c71ef-97e8-44c9-b62e-15634815275c'),
(91, 90, 9, 2, 1, NULL, '2021-09-07 13:20:19', '2021-09-07 13:20:19', 'f1f3a64f-f359-4bce-8716-ec0375b69217'),
(92, 90, 9, 1, 2, NULL, '2021-09-07 13:20:19', '2021-09-07 13:20:19', '71f2ceea-c822-4eda-9aef-1ebeedd40612'),
(97, 96, 9, 2, 1, NULL, '2021-09-07 13:22:45', '2021-09-07 13:22:45', '8b9fe901-c270-41d6-897a-73453a3a7f0b'),
(98, 96, 9, 1, 2, NULL, '2021-09-07 13:22:45', '2021-09-07 13:22:45', '4797d98d-3ce8-4c6b-bea3-36a04a00bccd'),
(103, 102, 9, 2, 1, NULL, '2021-09-07 13:23:47', '2021-09-07 13:23:47', '696a379e-dafa-4391-8f5e-e660fd17694b'),
(104, 102, 9, 1, 2, NULL, '2021-09-07 13:23:47', '2021-09-07 13:23:47', 'ff6a9b6f-e3e0-45ff-8df1-5d55bba9e04d'),
(106, 105, 9, 2, 1, NULL, '2021-09-07 13:42:02', '2021-09-07 13:42:02', '41763083-842d-41de-ac6e-c7e0244f99c3'),
(107, 105, 9, 1, 2, NULL, '2021-09-07 13:42:02', '2021-09-07 13:42:02', '0cd3fd41-46d6-4492-b0bf-10c69c92b8c2'),
(112, 111, 9, 2, 1, NULL, '2021-09-07 13:44:37', '2021-09-07 13:44:37', 'a88f8019-bc4a-4633-bcf9-e5afd3cdeeaf'),
(113, 111, 9, 1, 2, NULL, '2021-09-07 13:44:37', '2021-09-07 13:44:37', 'f2e78bdc-144b-48c1-a607-cdc87eef84ac'),
(118, 117, 9, 2, 1, NULL, '2021-09-07 14:10:50', '2021-09-07 14:10:50', '8f63f226-e0f5-406e-84b9-6eb7d094bff2'),
(119, 117, 9, 1, 2, NULL, '2021-09-07 14:10:50', '2021-09-07 14:10:50', '5a4c6535-c15c-4ef5-9170-a707b7cd87db'),
(124, 123, 9, 2, 1, NULL, '2021-09-07 14:11:23', '2021-09-07 14:11:23', 'a0763c45-6e18-4392-a284-4cdeb661bb7b'),
(125, 123, 9, 1, 2, NULL, '2021-09-07 14:11:23', '2021-09-07 14:11:23', '0156c63f-b06a-4c90-bafa-b06ff39eb99f'),
(130, 129, 9, 2, 1, NULL, '2021-09-07 14:32:19', '2021-09-07 14:32:19', '63773748-7c50-4992-855e-1f47470fe73b'),
(131, 129, 9, 1, 2, NULL, '2021-09-07 14:32:19', '2021-09-07 14:32:19', '1055848b-54fb-433e-bff5-284aa862cd44'),
(136, 135, 9, 2, 1, NULL, '2021-09-07 14:32:34', '2021-09-07 14:32:34', '8cd77dd1-241f-447c-a39c-e63d221f0ef4'),
(137, 135, 9, 1, 2, NULL, '2021-09-07 14:32:34', '2021-09-07 14:32:34', 'fcddd167-e4b2-4f68-8980-80c11ab8c1c6'),
(142, 141, 9, 2, 1, NULL, '2021-09-07 14:33:52', '2021-09-07 14:33:52', 'd997591a-7de5-4757-8069-4ab73d09d2a0'),
(143, 141, 9, 1, 2, NULL, '2021-09-07 14:33:52', '2021-09-07 14:33:52', 'bf593c80-c8fe-4054-a2af-c97b15a26ecb'),
(148, 147, 9, 1, 1, NULL, '2021-09-07 14:35:36', '2021-09-07 14:35:36', 'd69caba3-b35d-4322-a416-49e0c0a01384'),
(149, 147, 9, 2, 2, NULL, '2021-09-07 14:35:36', '2021-09-07 14:35:36', 'a778f9de-43b7-473f-8f15-875f4a3f97ad'),
(154, 153, 9, 1, 1, NULL, '2021-09-07 14:36:15', '2021-09-07 14:36:15', '815c0e98-defb-48a0-bb65-843e4c45ebf1'),
(155, 153, 9, 2, 2, NULL, '2021-09-07 14:36:15', '2021-09-07 14:36:15', '060689f2-c1e7-44ae-8ff7-3d552e4ea049'),
(160, 159, 9, 2, 1, NULL, '2021-09-07 14:53:46', '2021-09-07 14:53:46', '8dd9f312-be37-4bb4-b633-dbb888fd44a6'),
(161, 159, 9, 1, 2, NULL, '2021-09-07 14:53:46', '2021-09-07 14:53:46', '3c14c00c-b13e-48d0-a932-628c10e3075c'),
(166, 165, 9, 2, 1, NULL, '2021-09-07 14:57:31', '2021-09-07 14:57:31', '2dab0e8e-5fcf-485e-b38b-3269f48171b2'),
(167, 165, 9, 1, 2, NULL, '2021-09-07 14:57:31', '2021-09-07 14:57:31', '93587885-5792-4927-b3b7-32accc1fb4d0'),
(211, 170, 12, 3, 2, NULL, '2021-09-08 14:53:31', '2021-09-08 14:54:55', 'b5df6e02-015f-4148-849f-c55aca5e4e59'),
(212, 170, 12, 4, 1, NULL, '2021-09-08 14:53:31', '2021-09-08 14:54:55', 'd5b94cfe-1017-457f-9d6c-b9c0d870cc4f'),
(214, 213, 12, 3, 1, NULL, '2021-09-08 14:53:31', '2021-09-08 14:53:31', '82aaf785-f3ac-4063-8791-081c191a5c29'),
(215, 213, 12, 4, 2, NULL, '2021-09-08 14:53:31', '2021-09-08 14:53:31', '9fb221c4-962e-4938-8dfd-650c185bd54c'),
(220, 219, 12, 4, 1, NULL, '2021-09-08 14:54:55', '2021-09-08 14:54:55', '27756f4b-17b9-49b0-ace8-ad93a15e0488'),
(221, 219, 12, 3, 2, NULL, '2021-09-08 14:54:55', '2021-09-08 14:54:55', '29223bdc-06ec-43da-ae3b-6d721d0f61ae'),
(223, 222, 9, 2, 1, NULL, '2021-09-08 14:56:26', '2021-09-08 14:56:26', '52865a4e-7d86-4f9e-b051-0f3c471de5f4'),
(224, 222, 9, 1, 2, NULL, '2021-09-08 14:56:26', '2021-09-08 14:56:26', 'f7e4391a-889f-4f54-aae4-74020fc43ad1'),
(229, 228, 12, 4, 1, NULL, '2021-09-08 14:58:53', '2021-09-08 14:58:53', '76e44195-9480-4990-b80c-73be23fa8e1f'),
(230, 228, 12, 3, 2, NULL, '2021-09-08 14:58:53', '2021-09-08 14:58:53', '7b8b9593-8b53-4240-9322-0c575470afc1'),
(232, 231, 12, 4, 1, NULL, '2021-09-08 15:25:14', '2021-09-08 15:25:14', 'ce5ba35d-929d-477b-8361-086a56af19a0'),
(233, 231, 12, 3, 2, NULL, '2021-09-08 15:25:14', '2021-09-08 15:25:14', '575c2bc1-0c58-48dd-8789-5a030e2fa266'),
(235, 234, 12, 3, 1, NULL, '2021-09-09 11:45:10', '2021-09-09 11:45:10', 'ea17e2be-69d3-4d14-9db3-ece73a72472a'),
(237, 236, 9, 1, 1, 0, '2021-09-10 14:48:54', '2021-09-10 14:48:54', '332a0b56-f43f-4b58-9a01-bfc3fc797c1f'),
(238, 236, 9, 1, 1, 1, '2021-09-10 14:48:55', '2021-09-10 14:48:55', '428f095b-60cf-411c-b660-96eceab37e4f'),
(239, 236, 9, 2, 2, 1, '2021-09-10 14:48:55', '2021-09-10 14:48:55', '5a4f34bd-6ec8-49b4-9dec-202a092d1528'),
(282, 22, 16, 5, 1, NULL, '2021-09-10 14:53:13', '2021-09-10 14:53:13', '8ef06c7b-7418-4033-9bd7-25fa37888257'),
(283, 22, 16, 6, 2, NULL, '2021-09-10 14:53:13', '2021-09-10 14:53:13', 'b2cc38b1-ce25-40a7-806d-9e4669a051d9'),
(284, 22, 16, 7, 3, NULL, '2021-09-10 14:53:13', '2021-09-10 14:53:13', '3adf9c66-4a99-4209-b8af-df104f6406d0'),
(286, 285, 16, 5, 1, NULL, '2021-09-10 14:53:13', '2021-09-10 14:53:13', '3d813f9a-dfb6-4ce4-88c4-dbacbab7cf02'),
(287, 285, 16, 6, 2, NULL, '2021-09-10 14:53:13', '2021-09-10 14:53:13', '96cc2c8a-b564-42fe-aa69-c2651e893777'),
(288, 285, 16, 7, 3, NULL, '2021-09-10 14:53:13', '2021-09-10 14:53:13', '8ebd9501-9fc1-4f69-85a0-590d5a7f8903');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `matrixblocktypes`
--

CREATE TABLE `matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `matrixblocktypes`
--

INSERT INTO `matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 9, 6, 'bodycopy', 'bodycopy', 1, '2021-09-07 12:58:22', '2021-09-07 12:58:22', 'd6287000-aeb5-4ddf-aeeb-da48f9ed904f'),
(2, 9, 7, 'videolink', 'videolink', 2, '2021-09-07 12:58:22', '2021-09-07 12:58:22', '5d359804-dc3e-4485-8e71-f6d29868806e'),
(3, 12, 9, 'aboutcontent', 'body', 1, '2021-09-08 14:19:20', '2021-09-08 14:19:20', '95710e39-bdda-4a20-bfe7-9f8f96a9eb1f'),
(4, 12, 10, 'video', 'video', 2, '2021-09-08 14:19:21', '2021-09-08 14:19:21', 'e27425f4-7074-4765-8f15-839e26004962'),
(5, 16, 11, 'facebook', 'facebookquota', 1, '2021-09-10 14:47:42', '2021-09-10 14:47:42', '17db215b-91d6-4e8a-8b09-e0865c10c523'),
(6, 16, 12, 'twitter', 'twitter', 2, '2021-09-10 14:50:35', '2021-09-10 14:50:35', 'cb9e90a1-3919-450b-98f5-629110cc72ed'),
(7, 16, 13, 'mail', 'mail', 3, '2021-09-10 14:51:57', '2021-09-10 14:51:57', 'b3f35fce-f0a9-496d-9f25-8dd0595f6eef');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `matrixcontent_about`
--

CREATE TABLE `matrixcontent_about` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `field_body_body` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_video_videolink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_video_videonaam` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `matrixcontent_about`
--

INSERT INTO `matrixcontent_about` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_body_body`, `field_video_videolink`, `field_video_videonaam`) VALUES
(1, 190, 1, '2021-09-08 14:52:37', '2021-09-08 14:52:37', 'e6494a94-2354-4953-a9ea-5c43d42bfd02', NULL, NULL, NULL),
(2, 191, 1, '2021-09-08 14:52:38', '2021-09-08 14:52:38', '6c1b70a0-266f-468c-b0e1-73277157d8d4', NULL, NULL, NULL),
(3, 192, 1, '2021-09-08 14:52:38', '2021-09-08 14:52:38', '4792639a-4300-427e-ab68-a76d57c5b2e5', NULL, NULL, NULL),
(4, 193, 1, '2021-09-08 14:52:50', '2021-09-08 14:52:50', 'c4a1edf0-b326-4234-8649-50a75692b582', '<p>Het enige wat ons nog kan weerstaan is </p>', NULL, NULL),
(5, 194, 1, '2021-09-08 14:52:50', '2021-09-08 14:52:50', '84546f0d-237b-495b-a631-7a7d794c13cb', NULL, NULL, NULL),
(6, 195, 1, '2021-09-08 14:53:05', '2021-09-08 14:53:05', '4eb94dbf-1926-4087-b7f0-53008d18f75a', '<p>Het enige wat ons nog kan weerstaan is de angst die in ons allemaal zit. Welkom bij mijn blog waar ik will</p>', NULL, NULL),
(7, 196, 1, '2021-09-08 14:53:05', '2021-09-08 14:53:05', '6bf4292e-f3a6-4dc7-bb5a-2cb648ae98eb', NULL, NULL, NULL),
(8, 197, 1, '2021-09-08 14:53:13', '2021-09-08 14:53:13', 'd4f6c6d4-1424-448f-aa4a-76d7e9ddbfc3', '<p>Het enige wat ons nog kan weerstaan is de angst die in ons allemaal zit. Welkom bij mijn blog waar ik willekeurige videos van youtube afhaal een </p>', NULL, NULL),
(9, 198, 1, '2021-09-08 14:53:13', '2021-09-08 14:53:13', 'cf8d9e0d-7463-4489-a334-4a4f0918075e', NULL, NULL, NULL),
(10, 199, 1, '2021-09-08 14:53:16', '2021-09-08 14:53:16', 'd6348d01-d664-4769-96c8-0c184677ff97', '<p>Het enige wat ons nog kan weerstaan is de angst die in ons allemaal zit. Welkom bij mijn blog waar ik willekeurige videos van youtube afhaal en deel met min</p>', NULL, NULL),
(11, 200, 1, '2021-09-08 14:53:17', '2021-09-08 14:53:17', '8415e66f-ed28-480b-86f6-f34d6bea0d08', NULL, NULL, NULL),
(12, 201, 1, '2021-09-08 14:53:18', '2021-09-08 14:53:18', 'e8377f61-ca8b-43fd-a8f2-a6a451453a35', '<p>Het enige wat ons nog kan weerstaan is de angst die in ons allemaal zit. Welkom bij mijn blog waar ik willekeurige videos van youtube afhaal en deel met mijn </p>', NULL, NULL),
(13, 202, 1, '2021-09-08 14:53:18', '2021-09-08 14:53:18', 'c3d8ae2f-4b9f-4a29-a2f5-c1e77b34449a', NULL, NULL, NULL),
(14, 203, 1, '2021-09-08 14:53:20', '2021-09-08 14:53:20', 'd5ec23d6-510b-45f1-a1f4-ea7a2589551c', '<p>Het enige wat ons nog kan weerstaan is de angst die in ons allemaal zit. Welkom bij mijn blog waar ik willekeurige videos van youtube afhaal en deel met mijn lage </p>', NULL, NULL),
(15, 204, 1, '2021-09-08 14:53:20', '2021-09-08 14:53:20', '9abc000e-ce43-4e29-aeff-317c77f06b12', NULL, NULL, NULL),
(16, 205, 1, '2021-09-08 14:53:25', '2021-09-08 14:53:25', '55abaa42-ba34-428f-9fb2-9c81c62df98d', '<p>Het enige wat ons nog kan weerstaan is de angst die in ons allemaal zit. Welkom bij mijn blog waar ik willekeurige videos van youtube afhaal en deel met mijn </p>', NULL, NULL),
(17, 206, 1, '2021-09-08 14:53:25', '2021-09-08 14:53:25', '06d24245-8ed8-4bd3-9942-adea87942d4f', NULL, NULL, NULL),
(18, 207, 1, '2021-09-08 14:53:29', '2021-09-08 14:53:29', '329dedd8-4a9f-4d26-872a-4e935f574836', '<p>Het enige wat ons nog kan weerstaan is de angst die in ons allemaal zit. Welkom bij mijn blog waar ik willekeurige videos van youtube afhaal en deel met mijn domme kijkers</p>', NULL, NULL),
(19, 208, 1, '2021-09-08 14:53:29', '2021-09-08 14:53:29', '6ac5685c-bd1e-4a65-ad93-369473fc4cc9', NULL, NULL, NULL),
(22, 211, 1, '2021-09-08 14:53:31', '2021-09-09 10:03:18', 'c4a9f34e-0c86-4035-9345-4ab532a45e86', '<p>Het enige wat ons nog kan weerstaan is de angst die in ons allemaal zit. Welkom bij mijn blog waar ik willekeurige videos van youtube afhaal en deel met mijn domme kijkers.</p>', NULL, NULL),
(23, 212, 1, '2021-09-08 14:53:31', '2021-09-09 10:03:18', 'fa1ed7d8-ec1a-4946-9971-95f6a2650f2f', NULL, 'https://www.youtube.com/embed/UEYBML1eJ-w', 'Over mijn bedrijf.'),
(24, 214, 1, '2021-09-08 14:53:31', '2021-09-08 14:53:31', '41f3c01c-7839-4c62-8c73-6bbadba0295e', '<p>Het enige wat ons nog kan weerstaan is de angst die in ons allemaal zit. Welkom bij mijn blog waar ik willekeurige videos van youtube afhaal en deel met mijn domme kijkers.</p>', NULL, NULL),
(25, 215, 1, '2021-09-08 14:53:31', '2021-09-08 14:53:31', '97f60cd7-c5a3-4713-9013-f40d539fec01', NULL, NULL, NULL),
(28, 220, 1, '2021-09-08 14:54:55', '2021-09-08 14:54:55', 'cf6d8dba-e151-4b64-9174-7b41b82c7106', NULL, 'https://www.youtube.com/embed/UEYBML1eJ-w', NULL),
(29, 221, 1, '2021-09-08 14:54:55', '2021-09-08 14:54:55', '1fc17077-d331-4ffa-9f5e-548f26844d56', '<p>Het enige wat ons nog kan weerstaan is de angst die in ons allemaal zit. Welkom bij mijn blog waar ik willekeurige videos van youtube afhaal en deel met mijn domme kijkers.</p>', NULL, NULL),
(32, 229, 1, '2021-09-08 14:58:53', '2021-09-08 14:58:53', '1a755802-d0aa-4a5d-94b2-049e55bd26b1', NULL, 'https://www.youtube.com/embed/UEYBML1eJ-w', 'Over mijn bedrijf.'),
(33, 230, 1, '2021-09-08 14:58:53', '2021-09-08 14:58:53', '06a86b65-17ee-4523-b4a2-e48d4e07d0d7', '<p>Het enige wat ons nog kan weerstaan is de angst die in ons allemaal zit. Welkom bij mijn blog waar ik willekeurige videos van youtube afhaal en deel met mijn domme kijkers.</p>', NULL, NULL),
(34, 232, 1, '2021-09-08 15:25:14', '2021-09-08 15:25:14', 'fca7d52d-8d69-4d67-ba7f-8ebb7c25f7a0', NULL, 'https://www.youtube.com/embed/UEYBML1eJ-w', 'Over mijn bedrijf.'),
(35, 233, 1, '2021-09-08 15:25:14', '2021-09-08 15:25:14', '5c791d83-2918-46b5-bcc3-55992715d0ac', '<p>Het enige wat ons nog kan weerstaan is de angst die in ons allemaal zit. Welkom bij mijn blog waar ik willekeurige videos van youtube afhaal en deel met mijn domme kijkers.</p>', NULL, NULL),
(36, 235, 1, '2021-09-09 11:45:10', '2021-09-09 11:45:10', 'ba0a5e10-5a24-43a1-b938-0ea442b91cf7', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `matrixcontent_inhoudzelf`
--

CREATE TABLE `matrixcontent_inhoudzelf` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `field_bodycopy_bodytext` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_videolink_videolink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `matrixcontent_inhoudzelf`
--

INSERT INTO `matrixcontent_inhoudzelf` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_bodycopy_bodytext`, `field_videolink_videolink`) VALUES
(1, 43, 1, '2021-09-07 13:09:16', '2021-09-07 13:09:16', '0d0cd065-fda4-499c-892e-29d7d53eeb8a', NULL, NULL),
(2, 44, 1, '2021-09-07 13:09:43', '2021-09-07 13:09:43', 'a12ca1cf-5811-4788-b188-4fb823dabee4', '<p>Dit is martijn </p>', NULL),
(3, 45, 1, '2021-09-07 13:09:45', '2021-09-07 13:09:45', 'f89b0d16-40df-4ccc-8459-900a6d76c4d2', '<p>Dit is martijn, </p>', NULL),
(4, 46, 1, '2021-09-07 13:09:49', '2021-09-07 13:09:49', 'a0d5b671-018d-48e6-8a89-e16cc341c4b0', '<p>Dit is Martijn</p>', NULL),
(5, 47, 1, '2021-09-07 13:09:55', '2021-09-07 13:09:55', '63c96f67-c74a-45c4-b762-9a6c59a61c6d', '<p>Dit is Martijn, hij is de eigen</p>', NULL),
(6, 48, 1, '2021-09-07 13:09:59', '2021-09-07 13:09:59', '86e04444-99ea-4a43-932c-ab98e8e0c2af', '<p>Dit is Martijn, hij is de eigenaar van pixeldeluxe</p>', NULL),
(7, 49, 1, '2021-09-07 13:10:10', '2021-09-07 13:10:10', 'c274b315-fa84-465d-83ad-1b45e5256683', '<p>Dit is Martijn, hij is de eigenaar van pixeldeluxe.</p>', NULL),
(8, 50, 1, '2021-09-07 13:10:13', '2021-09-07 13:10:13', 'e15731d2-3446-4aab-8b33-402ef5ab6909', '<p>Dit is Martijn, hij is de eigenaar van ixeldeluxe.</p>', NULL),
(9, 51, 1, '2021-09-07 13:10:14', '2021-09-07 13:10:14', '51baac56-7b93-4e32-8b91-09baebe0546d', '<p>Dit is Martijn, hij is de eigenaar van Pixeldeluxe.</p>', NULL),
(10, 52, 1, '2021-09-07 13:10:16', '2021-09-07 13:10:16', 'f98c19e8-3b83-45c0-8286-d2a396920723', '<p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(11, 53, 1, '2021-09-07 13:10:44', '2021-09-07 13:10:44', '8d88095f-978d-4b69-8734-471a7b7c8bd0', '<p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p><p> </p>', NULL),
(12, 54, 1, '2021-09-07 13:11:31', '2021-09-07 13:11:31', '80ef4ac8-8950-4c59-8ea0-3cdfb935d99e', '<p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p><figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure>', NULL),
(13, 55, 1, '2021-09-07 13:11:41', '2021-09-07 13:11:41', '6c5e46a4-1383-4ba3-a713-6791e7eac91a', '<p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p><p> </p>', NULL),
(14, 56, 1, '2021-09-07 13:11:44', '2021-09-07 13:11:44', '7df5b15f-d018-49f8-929e-ca146921932a', '<p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p><figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure>', NULL),
(15, 57, 1, '2021-09-07 13:11:59', '2021-09-07 13:11:59', '99b50188-4c73-4c3d-a6cc-25f65f2c919a', '<p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p><figure class=\"media\"></figure><figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure>', NULL),
(16, 58, 1, '2021-09-07 13:12:11', '2021-09-07 13:12:11', '7408c7e5-2de2-4ec8-bd64-b42021737734', '<p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p><figure class=\"media\"></figure><p> </p><figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure>', NULL),
(17, 59, 1, '2021-09-07 13:12:11', '2021-09-07 13:12:11', '08c10b09-5e15-4265-8c2a-ff80383cabf2', '<p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p><figure class=\"media\"></figure><p> </p><p> </p><figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure>', NULL),
(18, 60, 1, '2021-09-07 13:12:12', '2021-09-07 13:12:12', 'e2cfa24f-50ae-4229-8695-3cc5e26fdd36', '<p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p><figure class=\"media\"></figure><p> </p><p> </p><p> </p><p> </p><figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure>', NULL),
(19, 61, 1, '2021-09-07 13:12:12', '2021-09-07 13:12:12', '38e6a774-5fac-4a27-ac4e-da6587f79139', '<p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p><figure class=\"media\"></figure><p> </p><p> </p><p> </p><p> </p><p> </p><figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure>', NULL),
(20, 62, 1, '2021-09-07 13:12:16', '2021-09-07 13:12:16', '3771e7cf-b354-468c-979e-d58596745b9c', '<p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p><figure class=\"media\"></figure><figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure>', NULL),
(21, 63, 1, '2021-09-07 13:12:26', '2021-09-07 13:12:26', '949259a3-f111-48e7-a8df-c3d636a651ba', '<p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p><p> </p><figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure>', NULL),
(22, 64, 1, '2021-09-07 13:12:27', '2021-09-07 13:12:27', '06e201ad-dd3a-4618-b517-a305ff61aa2f', '<p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p><figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure>', NULL),
(23, 65, 1, '2021-09-07 13:12:34', '2021-09-07 13:12:34', '6d2b3f32-cdfb-4f2f-8710-f1d998396d86', '<p> </p><figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure>', NULL),
(24, 66, 1, '2021-09-07 13:12:36', '2021-09-07 13:12:36', 'a2537173-b257-49d4-af34-a3ff90fe1c68', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure>', NULL),
(25, 67, 1, '2021-09-07 13:12:39', '2021-09-07 13:12:39', 'ccceb293-6f0f-4281-aa5e-a70658398ec7', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(26, 68, 1, '2021-09-07 13:12:43', '2021-09-07 13:12:43', '524d6d92-61e3-447d-bedd-15620d17f1cc', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure><ul><li>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</li></ul>', NULL),
(27, 69, 1, '2021-09-07 13:12:43', '2021-09-07 13:12:43', '1ee622f9-17ad-4cef-9bb6-e019096df7e3', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(28, 70, 1, '2021-09-07 13:13:00', '2021-09-07 13:13:00', '5990b9ce-66d3-4219-9bac-05137973694b', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure><p> </p><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(29, 71, 1, '2021-09-07 13:13:07', '2021-09-07 13:13:07', '3c4465f9-78e0-4c6a-8de1-8010e9c82abc', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure>', NULL),
(30, 72, 1, '2021-09-07 13:13:09', '2021-09-07 13:13:09', '660328ee-03c2-49ca-9805-51c2113c5a3d', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /><figcaption>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</figcaption></figure>', NULL),
(31, 73, 1, '2021-09-07 13:13:20', '2021-09-07 13:13:20', '6dcfc337-b62a-4dff-9986-d5d5be2d8834', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /><figcaption>Dit is Martijn, hij is de eigenaar van PixelDeluxe.ffwefewfewfewfewfewfew</figcaption></figure>', NULL),
(32, 74, 1, '2021-09-07 13:13:21', '2021-09-07 13:13:21', '5ea265ad-2601-45e7-aea0-98819c0f0c76', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(33, 75, 1, '2021-09-07 13:13:23', '2021-09-07 13:13:23', '9fcf3db8-8789-4336-ad63-7f71fb431d50', '<figure class=\"image image-style-side\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(34, 76, 1, '2021-09-07 13:13:24', '2021-09-07 13:13:24', 'cd6e05e1-62dd-4762-bea0-1d226470d616', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"\" /></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(35, 77, 1, '2021-09-07 13:13:35', '2021-09-07 13:13:35', '677f1c46-6881-40d1-a1f5-958f4c23a1ab', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(36, 78, 1, '2021-09-07 13:13:40', '2021-09-07 13:13:40', '20930168-dd8e-4c04-ab0a-7471a0ae8847', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le </figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(37, 79, 1, '2021-09-07 13:13:41', '2021-09-07 13:13:41', '4ff94ab8-6d38-46d1-b8e4-1d61ee53aa69', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(38, 80, 1, '2021-09-07 13:14:02', '2021-09-07 13:14:02', '1e554898-9540-47c0-9a70-c23fd87a2926', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure>', NULL),
(39, 81, 1, '2021-09-07 13:14:04', '2021-09-07 13:14:04', '206cc3bb-ffc2-4154-872a-aef303a4c0ec', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p> </p>', NULL),
(40, 82, 1, '2021-09-07 13:14:15', '2021-09-07 13:14:15', 'aed87c97-ec82-4f6b-860c-d771041b149a', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(41, 83, 1, '2021-09-07 13:14:36', '2021-09-07 13:14:36', '8d7d3176-ff71-4b53-a820-0a3330bbbf24', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(42, 84, 1, '2021-09-07 13:14:36', '2021-09-07 13:14:36', '44d1c4b3-ab45-4ab8-830a-1b0e174a1ba9', NULL, NULL),
(43, 85, 1, '2021-09-07 13:14:41', '2021-09-07 13:14:41', '9d75bf99-abc4-4bca-9018-3d93c6e5b740', NULL, NULL),
(44, 86, 1, '2021-09-07 13:14:41', '2021-09-07 13:14:41', 'e35ad3ce-d7ec-4f1e-aec0-1f80fb648365', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(45, 87, 1, '2021-09-07 13:14:55', '2021-09-07 14:57:31', '0f244adb-a7e6-4b4f-80fb-ce0614b9abb1', NULL, 'https://www.youtube.com/embed/sMb00lz-IfE'),
(46, 88, 1, '2021-09-07 13:14:55', '2021-09-07 14:57:31', 'dbfc8970-6032-47f1-a2a6-3f298b4026e2', '<figure class=\"image text-center\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(47, 91, 1, '2021-09-07 13:20:19', '2021-09-07 13:20:19', '5f07873f-1842-4fdf-85cb-24e409d65f43', NULL, 'https://www.youtube.com/embed/sMb00lz-IfE'),
(48, 92, 1, '2021-09-07 13:20:19', '2021-09-07 13:20:19', 'c5332dee-f6af-4435-8488-0493b91fa1c1', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(51, 97, 1, '2021-09-07 13:22:45', '2021-09-07 13:22:45', 'b4a8e2f5-c6e5-4188-8c63-6faacb314355', NULL, 'https://www.youtube.com/embed/sMb00lz-IfE'),
(52, 98, 1, '2021-09-07 13:22:45', '2021-09-07 13:22:45', '706c9f60-456e-4b8e-b6a7-15d570772e92', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(55, 103, 1, '2021-09-07 13:23:47', '2021-09-07 13:23:47', 'dc19ac0e-021b-4851-8242-423b91eb0a7e', NULL, 'https://www.youtube.com/embed/sMb00lz-IfE'),
(56, 104, 1, '2021-09-07 13:23:47', '2021-09-07 13:23:47', '1416f180-9c01-4731-81fd-06aab9d42c8a', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(57, 106, 1, '2021-09-07 13:42:02', '2021-09-07 13:42:02', 'fcd8b3b4-515a-4ec3-b131-5e097fc29ae3', NULL, 'https://www.youtube.com/embed/sMb00lz-IfE'),
(58, 107, 1, '2021-09-07 13:42:02', '2021-09-07 13:42:02', '9c310e3a-909c-4b32-abfe-1ece9f87fbca', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(61, 112, 1, '2021-09-07 13:44:37', '2021-09-07 13:44:37', '5d406d87-b41d-4593-82bb-6c423995fadc', NULL, '<figure class=\"media\"></figure>'),
(62, 113, 1, '2021-09-07 13:44:37', '2021-09-07 13:44:37', '8bd8c558-b678-4bf8-952f-a49d280692d9', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(65, 118, 1, '2021-09-07 14:10:50', '2021-09-07 14:10:50', '1069952a-cee8-4d19-bbc0-9d6822df7a6f', NULL, '<figure class=\"media\"></figure>'),
(66, 119, 1, '2021-09-07 14:10:50', '2021-09-07 14:10:50', 'fe83f933-3ea3-4347-bd2c-ed14f1640999', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(69, 124, 1, '2021-09-07 14:11:23', '2021-09-07 14:11:23', '4cf8575c-5141-4327-90a7-fc147031f12d', NULL, '<figure class=\"media\"></figure><p>Video</p>'),
(70, 125, 1, '2021-09-07 14:11:23', '2021-09-07 14:11:23', 'b9bf6de9-b05e-4be9-a304-3e8bcba87c17', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(73, 130, 1, '2021-09-07 14:32:19', '2021-09-07 14:32:19', 'f785fd03-1860-4437-b47d-9166cf54bcac', NULL, 'https://www.youtube.com/watch?v=sMb00lz-IfE&t=155s'),
(74, 131, 1, '2021-09-07 14:32:19', '2021-09-07 14:32:19', 'cf1da844-d297-4315-987d-34fba61b18e0', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(77, 136, 1, '2021-09-07 14:32:34', '2021-09-07 14:32:34', 'c205c4ef-bb7e-4b72-9174-6d496429ed13', NULL, 'https://www.youtube.com/embed/sMb00lz-IfE&t=155s'),
(78, 137, 1, '2021-09-07 14:32:34', '2021-09-07 14:32:34', '059e3bf5-60ea-47c8-a8a1-29bbdebb6e1e', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(81, 142, 1, '2021-09-07 14:33:52', '2021-09-07 14:33:52', 'd930d328-7782-4e94-b5af-b435aa4d52b7', NULL, 'https://www.youtube.com/embed/sMb00lz-IfE'),
(82, 143, 1, '2021-09-07 14:33:52', '2021-09-07 14:33:52', '114a6dd7-fe19-4b92-b52c-05a008a41544', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(85, 148, 1, '2021-09-07 14:35:36', '2021-09-07 14:35:36', 'cf952875-3399-4898-b3f5-2da6dacd783d', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(86, 149, 1, '2021-09-07 14:35:36', '2021-09-07 14:35:36', '5499a190-403e-4a34-a47d-08c27662cde3', NULL, 'https://www.youtube.com/embed/sMb00lz-IfE'),
(89, 154, 1, '2021-09-07 14:36:15', '2021-09-07 14:36:15', '704ec09d-d399-4d21-b0d7-ea5142ce64cf', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(90, 155, 1, '2021-09-07 14:36:15', '2021-09-07 14:36:15', '824c62e7-ef30-463d-95ff-fb7bdaa04e54', NULL, 'https://www.youtube.com/embed/sMb00lz-IfE'),
(93, 160, 1, '2021-09-07 14:53:46', '2021-09-07 14:53:46', '6c724826-f6cb-4f06-9ba4-5b7a8c2ffddb', NULL, 'https://www.youtube.com/embed/sMb00lz-IfE'),
(94, 161, 1, '2021-09-07 14:53:46', '2021-09-07 14:53:46', '44d70f74-ad6d-42d8-ae1b-6f6a4eb9c1c6', '<figure class=\"image\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(97, 166, 1, '2021-09-07 14:57:31', '2021-09-07 14:57:31', '484fe109-351e-4d5b-a84b-1f9f20dc1c91', NULL, 'https://www.youtube.com/embed/sMb00lz-IfE'),
(98, 167, 1, '2021-09-07 14:57:31', '2021-09-07 14:57:31', '781b728c-e879-4304-8e6c-75681b31b355', '<figure class=\"image text-center\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(99, 223, 1, '2021-09-08 14:56:26', '2021-09-08 14:56:26', 'd3f406de-dcb0-45aa-8d55-3aab6ed11d3a', NULL, 'https://www.youtube.com/embed/sMb00lz-IfE'),
(100, 224, 1, '2021-09-08 14:56:26', '2021-09-08 14:56:26', '1b7f84a8-d2df-4e82-b7d2-64f90144f3a4', '<figure class=\"image text-center\"><img src=\"https://media-exp1.licdn.com/dms/image/C4D03AQGtpFpvwH2AkA/profile-displayphoto-shrink_200_200/0/1516302766195?e=1636588800&amp;v=beta&amp;t=SsB6tFEzwhQKzX5QVYovsw6HmIIGQ-MY1Vw60YjywFs\" alt=\"Martijn Le Feber\" /><figcaption>Martijn Le Feber</figcaption></figure><p>Dit is Martijn, hij is de eigenaar van PixelDeluxe.</p>', NULL),
(101, 237, 1, '2021-09-10 14:48:54', '2021-09-10 14:48:54', '05ec3b7a-a800-4496-8d35-9b1c5cd0b6c8', NULL, NULL),
(102, 238, 1, '2021-09-10 14:48:55', '2021-09-10 14:48:55', '16064f49-c7ca-4b14-8d37-5db535d520dc', NULL, NULL),
(103, 239, 1, '2021-09-10 14:48:55', '2021-09-10 14:48:55', 'c3488f37-825a-4bea-989b-c99885137e18', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `matrixcontent_navbarfield`
--

CREATE TABLE `matrixcontent_navbarfield` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `field_facebookquota_facebooklink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_twitter_twitterlink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_mail_mailto_cuvkidtn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `matrixcontent_navbarfield`
--

INSERT INTO `matrixcontent_navbarfield` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_facebookquota_facebooklink`, `field_twitter_twitterlink`, `field_mail_mailto_cuvkidtn`) VALUES
(1, 243, 1, '2021-09-10 14:52:09', '2021-09-10 14:52:09', '7c183c8c-9e2a-4511-93d6-2e46ebcf8da5', NULL, NULL, NULL),
(2, 244, 1, '2021-09-10 14:52:10', '2021-09-10 14:52:10', 'b90c1611-2251-4552-89ff-900375f68621', NULL, NULL, NULL),
(3, 245, 1, '2021-09-10 14:52:10', '2021-09-10 14:52:10', 'd2aa7390-9ff7-48cf-9a13-cf4e431c3747', NULL, NULL, NULL),
(4, 246, 1, '2021-09-10 14:52:11', '2021-09-10 14:52:11', '7399a0ac-3713-4504-9b76-780d5d7d7c7a', NULL, NULL, NULL),
(5, 247, 1, '2021-09-10 14:52:11', '2021-09-10 14:52:11', '0291ea7e-17a3-4c69-baf7-a23560eb0a27', NULL, NULL, NULL),
(6, 248, 1, '2021-09-10 14:52:11', '2021-09-10 14:52:11', 'da5e7b3c-6183-4242-a7ef-560aac1598e2', NULL, NULL, NULL),
(7, 249, 1, '2021-09-10 14:52:13', '2021-09-10 14:52:13', '6143ddcf-8556-4925-bc3d-6553c8aeb168', NULL, NULL, NULL),
(8, 250, 1, '2021-09-10 14:52:13', '2021-09-10 14:52:13', '706cd620-736d-423c-b5df-e6993e3a753b', NULL, NULL, NULL),
(9, 251, 1, '2021-09-10 14:52:13', '2021-09-10 14:52:13', '6ec76998-30e4-4a1c-9906-1c2723dacd42', NULL, NULL, NULL),
(10, 252, 1, '2021-09-10 14:52:15', '2021-09-10 14:52:15', '49448f33-874d-401a-a570-6cdc87476824', NULL, NULL, NULL),
(11, 253, 1, '2021-09-10 14:52:15', '2021-09-10 14:52:15', '8fc66ddc-9205-4492-b659-b194b42fe89d', NULL, NULL, NULL),
(12, 254, 1, '2021-09-10 14:52:15', '2021-09-10 14:52:15', 'c37bea7d-d862-4ae9-871e-db42abfb402f', NULL, NULL, NULL),
(13, 255, 1, '2021-09-10 14:52:18', '2021-09-10 14:52:18', '5b749d27-229a-4dc1-b818-cd1e50923033', NULL, NULL, NULL),
(14, 256, 1, '2021-09-10 14:52:18', '2021-09-10 14:52:18', '8861813c-9b3e-476f-9e34-30961139a52d', NULL, NULL, NULL),
(15, 257, 1, '2021-09-10 14:52:18', '2021-09-10 14:52:18', '09f11b6b-d7e3-4637-a1a7-4d8250112920', NULL, NULL, 'http://mailto:'),
(16, 258, 1, '2021-09-10 14:52:20', '2021-09-10 14:52:20', 'c2b43cdf-ee49-4205-94f9-8a5ace21834c', NULL, NULL, NULL),
(17, 259, 1, '2021-09-10 14:52:20', '2021-09-10 14:52:20', '41a4666a-5492-40d1-b5ad-78cf5bdcc26a', NULL, NULL, NULL),
(18, 260, 1, '2021-09-10 14:52:20', '2021-09-10 14:52:20', '704b3ee5-81ca-41ae-ac32-f2bfb98473b1', NULL, NULL, NULL),
(19, 261, 1, '2021-09-10 14:52:22', '2021-09-10 14:52:22', 'b338cc87-e9af-4b06-839a-2fcb30898d9b', NULL, NULL, NULL),
(20, 262, 1, '2021-09-10 14:52:22', '2021-09-10 14:52:22', 'ae5abda4-cbe2-432a-9da5-90b2419ea2d7', NULL, NULL, NULL),
(21, 263, 1, '2021-09-10 14:52:22', '2021-09-10 14:52:22', '1662faec-b5d4-430f-a1bf-4deda7e06b35', NULL, NULL, NULL),
(22, 264, 1, '2021-09-10 14:52:25', '2021-09-10 14:52:25', '15d4ac19-dc08-4d4c-9ccb-0ff2e0051704', NULL, NULL, NULL),
(23, 265, 1, '2021-09-10 14:52:25', '2021-09-10 14:52:25', 'd2e3cba2-26b1-4d93-8e05-fb072e8ced12', NULL, NULL, NULL),
(24, 266, 1, '2021-09-10 14:52:25', '2021-09-10 14:52:25', 'd64af519-5647-4e49-b6c4-6013f4d0d705', NULL, NULL, 'mailto:'),
(25, 267, 1, '2021-09-10 14:52:28', '2021-09-10 14:52:28', '5d4b7bbc-970c-4369-99f3-e30277afff64', NULL, NULL, NULL),
(26, 268, 1, '2021-09-10 14:52:28', '2021-09-10 14:52:28', 'da1820fe-0955-46c6-b4ef-5aea7db2cfce', NULL, NULL, NULL),
(27, 269, 1, '2021-09-10 14:52:28', '2021-09-10 14:52:28', '078fa344-2d65-4fc3-b2d4-8280b6399c5f', NULL, NULL, 'mailto:pjotr'),
(28, 270, 1, '2021-09-10 14:52:31', '2021-09-10 14:52:31', '5216dec2-e565-4dc8-aaef-13f1ebcdfe25', NULL, NULL, NULL),
(29, 271, 1, '2021-09-10 14:52:31', '2021-09-10 14:52:31', 'd9aac80f-320c-4e42-a725-e2d241b9b493', NULL, NULL, NULL),
(30, 272, 1, '2021-09-10 14:52:31', '2021-09-10 14:52:31', 'eee8c4e8-5f16-464b-982d-798ed6bd8127', NULL, NULL, 'mailto:pjotr@pixeldeluxe.nl'),
(31, 273, 1, '2021-09-10 14:52:58', '2021-09-10 14:52:58', '901279b4-378c-4ee3-9257-1f1c09ba7ad1', NULL, NULL, NULL),
(32, 274, 1, '2021-09-10 14:52:58', '2021-09-10 14:52:58', '8e12d5f4-3c91-4bdc-8d83-ec4409addfee', NULL, 'https://twitter.com/pimmetje_paniek', NULL),
(33, 275, 1, '2021-09-10 14:52:58', '2021-09-10 14:52:58', '8eec0630-305b-4f27-83fa-adf561aed1a4', NULL, NULL, 'mailto:pjotr@pixeldeluxe.nl'),
(34, 276, 1, '2021-09-10 14:53:06', '2021-09-10 14:53:06', '79a75327-5dd3-433e-85bf-2103eb13eee0', 'https://', NULL, NULL),
(35, 277, 1, '2021-09-10 14:53:06', '2021-09-10 14:53:06', '7d3e1fe1-b7ef-4181-909e-b49fb7e9e155', NULL, 'https://twitter.com/pimmetje_paniek', NULL),
(36, 278, 1, '2021-09-10 14:53:06', '2021-09-10 14:53:06', '9464a844-aeea-4e9e-bc57-c9af519f015e', NULL, NULL, 'mailto:pjotr@pixeldeluxe.nl'),
(40, 282, 1, '2021-09-10 14:53:13', '2021-09-10 14:53:13', '7094e105-7b2d-4b53-a995-359f3716d7a8', 'https://facebook.com', NULL, NULL),
(41, 283, 1, '2021-09-10 14:53:13', '2021-09-10 14:53:13', '0999c3e2-cf8c-44d6-9df3-71d66f99b949', NULL, 'https://twitter.com/pimmetje_paniek', NULL),
(42, 284, 1, '2021-09-10 14:53:13', '2021-09-10 14:53:13', 'f7fc0d34-ae54-4185-8a54-0281ffaefd85', NULL, NULL, 'mailto:pjotr@pixeldeluxe.nl'),
(43, 286, 1, '2021-09-10 14:53:13', '2021-09-10 14:53:13', '2eca76ff-f821-406e-8713-adfa9249b618', 'https://facebook.com', NULL, NULL),
(44, 287, 1, '2021-09-10 14:53:13', '2021-09-10 14:53:13', '3e12d882-ae23-451a-88cd-d4dcad7de319', NULL, 'https://twitter.com/pimmetje_paniek', NULL),
(45, 288, 1, '2021-09-10 14:53:13', '2021-09-10 14:53:13', '4ac27620-8b8b-4a11-afcc-729377573de4', NULL, NULL, 'mailto:pjotr@pixeldeluxe.nl');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `track` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft', 'Install', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '277fe741-2c93-4276-83ff-c19cc40b852a'),
(2, 'craft', 'm150403_183908_migrations_table_changes', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '8b6f0f67-faca-4cfe-8f26-ea584df79c6a'),
(3, 'craft', 'm150403_184247_plugins_table_changes', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'e2d8289e-92a2-4e94-89a4-b0d0644c5c8d'),
(4, 'craft', 'm150403_184533_field_version', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '72ac386a-09fe-4012-bb5c-9acf0e49498d'),
(5, 'craft', 'm150403_184729_type_columns', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'd6cf3381-c2bd-4654-9f45-08b881b04d05'),
(6, 'craft', 'm150403_185142_volumes', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '95641881-eb46-4403-bda1-804be7141352'),
(7, 'craft', 'm150428_231346_userpreferences', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '1ce76545-f99d-4457-a11f-a7c5bc92a2b5'),
(8, 'craft', 'm150519_150900_fieldversion_conversion', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'c62bad0e-a4ba-4fc1-8c56-86ba92c42087'),
(9, 'craft', 'm150617_213829_update_email_settings', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'c72787d9-067d-49f1-84ac-8d950bcfcf93'),
(10, 'craft', 'm150721_124739_templatecachequeries', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '324cf7bf-bdb7-404d-93a8-debfcf929219'),
(11, 'craft', 'm150724_140822_adjust_quality_settings', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'ca6995b4-8ffd-46c5-9a50-cbdd07c2c501'),
(12, 'craft', 'm150815_133521_last_login_attempt_ip', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'c10c4499-8ec3-45c3-bd16-824781a23099'),
(13, 'craft', 'm151002_095935_volume_cache_settings', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '5419aaf1-0858-492c-98ab-d58d4737d5c8'),
(14, 'craft', 'm151005_142750_volume_s3_storage_settings', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'dc7956e0-e68f-4b9a-9416-a25ed0c0c315'),
(15, 'craft', 'm151016_133600_delete_asset_thumbnails', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '8eb89066-a811-4a03-b3b8-16eb5a7f515c'),
(16, 'craft', 'm151209_000000_move_logo', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '85168864-e8a5-42e8-9fd8-d2a37f022330'),
(17, 'craft', 'm151211_000000_rename_fileId_to_assetId', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'c51e7cac-eb42-45d3-bfa3-02bdcd9a70da'),
(18, 'craft', 'm151215_000000_rename_asset_permissions', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '37bd2124-e69e-42e1-8ebd-f5664ff1f28e'),
(19, 'craft', 'm160707_000001_rename_richtext_assetsource_setting', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2d0ad8a6-f29a-4ba8-9d67-b44bd3f1efa7'),
(20, 'craft', 'm160708_185142_volume_hasUrls_setting', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'c74358cc-0408-4b3d-9524-531bb780e161'),
(21, 'craft', 'm160714_000000_increase_max_asset_filesize', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '39a8c5ae-ac58-48a4-bc8b-7d8e35df87b2'),
(22, 'craft', 'm160727_194637_column_cleanup', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '41caa0ce-9c6b-47c6-8855-cba61a5db629'),
(23, 'craft', 'm160804_110002_userphotos_to_assets', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'adeb5867-6a37-4864-a0bf-89b99d47300c'),
(24, 'craft', 'm160807_144858_sites', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '9fe1c2fc-50a8-4f83-8a04-b2ac4dc58ac2'),
(25, 'craft', 'm160829_000000_pending_user_content_cleanup', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '75302168-cc44-4d57-9291-97f48481e179'),
(26, 'craft', 'm160830_000000_asset_index_uri_increase', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '41a5f026-62bf-4af9-adfd-8153829ed75d'),
(27, 'craft', 'm160912_230520_require_entry_type_id', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '7071f23e-ac1f-45f5-af3b-1ebfa018dbaa'),
(28, 'craft', 'm160913_134730_require_matrix_block_type_id', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '568641d0-e8eb-4fe8-b656-c75f5eb9a8bb'),
(29, 'craft', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '586a6839-5236-430a-99af-9f696f58d4a4'),
(30, 'craft', 'm160920_231045_usergroup_handle_title_unique', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '77e7e4b2-aef7-4125-a93a-f55b8862e9bd'),
(31, 'craft', 'm160925_113941_route_uri_parts', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '9fede990-8b7e-46d4-8091-90293713496a'),
(32, 'craft', 'm161006_205918_schemaVersion_not_null', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'db095ebb-8897-4e4d-b6c6-81dc24a8028b'),
(33, 'craft', 'm161007_130653_update_email_settings', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'c83c8339-a215-4356-8373-4e0bab2732eb'),
(34, 'craft', 'm161013_175052_newParentId', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'b088c808-3c4c-4711-8091-0631f03d8d72'),
(35, 'craft', 'm161021_102916_fix_recent_entries_widgets', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'd5bb8b60-8372-48e2-9176-c264c5a36378'),
(36, 'craft', 'm161021_182140_rename_get_help_widget', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'd17237f4-734f-485a-8109-3df886253e9c'),
(37, 'craft', 'm161025_000000_fix_char_columns', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'bfcac35a-e700-422d-8d16-e818294ffbec'),
(38, 'craft', 'm161029_124145_email_message_languages', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'd7bb7d56-f252-4177-8f35-429cbb31d6d5'),
(39, 'craft', 'm161108_000000_new_version_format', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '00617389-fc17-427d-97e7-16d0154f4774'),
(40, 'craft', 'm161109_000000_index_shuffle', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'a356a2d1-b44e-4cd9-8f22-62050b149e4e'),
(41, 'craft', 'm161122_185500_no_craft_app', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '9c312721-8cb8-4309-95df-087f0ada9622'),
(42, 'craft', 'm161125_150752_clear_urlmanager_cache', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '15fbd8cf-bc04-4022-a2ed-ff9fc1e3a34e'),
(43, 'craft', 'm161220_000000_volumes_hasurl_notnull', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '88df9072-01c4-4db9-bbd4-71251a5cd538'),
(44, 'craft', 'm170114_161144_udates_permission', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '4f3da98c-7790-4fef-946a-c6e15314066d'),
(45, 'craft', 'm170120_000000_schema_cleanup', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '3e447abc-bdf2-4340-820c-e72b7693a722'),
(46, 'craft', 'm170126_000000_assets_focal_point', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '9d90e427-156d-498d-bf25-134ccfbb416e'),
(47, 'craft', 'm170206_142126_system_name', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'eaf16b9e-4b64-4c05-90f4-a08b65a95990'),
(48, 'craft', 'm170217_044740_category_branch_limits', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'ced18f1f-fffc-4651-99e8-19c6ba85d346'),
(49, 'craft', 'm170217_120224_asset_indexing_columns', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '9f4521f4-aff9-4928-8b73-fe2d12e00987'),
(50, 'craft', 'm170223_224012_plain_text_settings', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2f1d34a0-b979-4af8-b2f9-0ddeb4bfa398'),
(51, 'craft', 'm170227_120814_focal_point_percentage', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'd051724e-d818-4a7e-afe1-9d6ad11681c7'),
(52, 'craft', 'm170228_171113_system_messages', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'e475c548-2543-4323-ad82-2d89bcc46cca'),
(53, 'craft', 'm170303_140500_asset_field_source_settings', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '3343245a-8a44-4e89-805f-7f996bd12ffe'),
(54, 'craft', 'm170306_150500_asset_temporary_uploads', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'ddf2c588-6ced-4cc5-be53-bf456047a410'),
(55, 'craft', 'm170523_190652_element_field_layout_ids', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'fb6a2307-d956-483b-8f5b-d0f4cec61571'),
(56, 'craft', 'm170621_195237_format_plugin_handles', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '67242cd8-1472-4e64-b3ec-83ac93239799'),
(57, 'craft', 'm170630_161027_deprecation_line_nullable', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '50f1a7c5-137c-4ada-8672-26c611160c2d'),
(58, 'craft', 'm170630_161028_deprecation_changes', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'b514efd1-5d84-418c-ba3a-266c2c130bfc'),
(59, 'craft', 'm170703_181539_plugins_table_tweaks', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '5f9f179a-2644-43bc-9796-16befa9bb902'),
(60, 'craft', 'm170704_134916_sites_tables', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '07b8eeec-7101-4612-b672-b30009b82e15'),
(61, 'craft', 'm170706_183216_rename_sequences', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'cc86eecf-f689-43e3-bd42-b0c5b1849fb4'),
(62, 'craft', 'm170707_094758_delete_compiled_traits', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '6dd43570-bded-4e62-9109-72aa59e2425c'),
(63, 'craft', 'm170731_190138_drop_asset_packagist', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '76f2cd58-67cb-49d8-9844-aec6c212afdb'),
(64, 'craft', 'm170810_201318_create_queue_table', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '4fa1470d-062e-4daa-a5f8-6fc49e65d463'),
(65, 'craft', 'm170903_192801_longblob_for_queue_jobs', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'a7fa2705-ab6c-4113-840e-5e3b6471064d'),
(66, 'craft', 'm170914_204621_asset_cache_shuffle', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'e765649a-b1c9-4157-bb5f-616e992af550'),
(67, 'craft', 'm171011_214115_site_groups', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'c557b1cf-145d-4ee0-a25d-ba86870ce514'),
(68, 'craft', 'm171012_151440_primary_site', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '7adc566a-275e-4f8f-9522-4c7288aa6998'),
(69, 'craft', 'm171013_142500_transform_interlace', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'f3d8cbb7-7790-4a94-ae05-ba506c1cf811'),
(70, 'craft', 'm171016_092553_drop_position_select', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'ea553c76-aa11-45f2-a963-078681542aff'),
(71, 'craft', 'm171016_221244_less_strict_translation_method', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '0f977280-4669-4159-80b3-c4ce636f952e'),
(72, 'craft', 'm171107_000000_assign_group_permissions', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'ead46a32-bcae-4217-bdd6-530ae4cdf61d'),
(73, 'craft', 'm171117_000001_templatecache_index_tune', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'e4168e82-630d-4fd3-8839-40227884b23f'),
(74, 'craft', 'm171126_105927_disabled_plugins', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '8968c4bc-1c41-4148-809b-2ccdca5bbed5'),
(75, 'craft', 'm171130_214407_craftidtokens_table', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'e909c40e-5567-43a2-a61c-d97b1c5adb2b'),
(76, 'craft', 'm171202_004225_update_email_settings', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '5830c29c-f4dc-4969-96ea-c4303dd3447d'),
(77, 'craft', 'm171204_000001_templatecache_index_tune_deux', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'f55e6f02-a9ff-4a3d-9503-5300da2c83d1'),
(78, 'craft', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '9571c160-437d-4a3c-8f23-8fe45f652769'),
(79, 'craft', 'm171218_143135_longtext_query_column', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '92344714-9b29-4ff9-aefc-5cb9e1982461'),
(80, 'craft', 'm171231_055546_environment_variables_to_aliases', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '42729e05-3502-408b-b8e8-36e6d1025474'),
(81, 'craft', 'm180113_153740_drop_users_archived_column', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'c7b8675d-8d80-4714-8934-d53bef97856c'),
(82, 'craft', 'm180122_213433_propagate_entries_setting', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '88af151d-e3c3-4597-bd6a-9f4607ede8cd'),
(83, 'craft', 'm180124_230459_fix_propagate_entries_values', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'e6dbcae0-1600-4a86-a38c-3800ee4c8c7e'),
(84, 'craft', 'm180128_235202_set_tag_slugs', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'd964ab05-9a88-4ef6-b1fc-29e1babef241'),
(85, 'craft', 'm180202_185551_fix_focal_points', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'b729e598-b3a0-46ab-a37e-fe058f51fcc8'),
(86, 'craft', 'm180217_172123_tiny_ints', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'b9ecd18d-808d-4b81-b006-806f903e632a'),
(87, 'craft', 'm180321_233505_small_ints', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '497f1b2e-68bd-4dbd-ab69-945e4f4abc6b'),
(88, 'craft', 'm180404_182320_edition_changes', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'e1d850bc-0c4e-446a-9b63-f3b178597c34'),
(89, 'craft', 'm180411_102218_fix_db_routes', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'abe7d11d-1b62-42ea-9432-ade667eca126'),
(90, 'craft', 'm180416_205628_resourcepaths_table', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '1f17cbbd-571c-4bb9-971e-1848eb4ec285'),
(91, 'craft', 'm180418_205713_widget_cleanup', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '5bc95faa-0e14-400b-ab47-5dff15e5effe'),
(92, 'craft', 'm180425_203349_searchable_fields', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'a92a58cb-6ada-4442-bcf5-64a59c54b674'),
(93, 'craft', 'm180516_153000_uids_in_field_settings', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'c26eeddf-4f36-4dca-afc3-52b5f6a0d277'),
(94, 'craft', 'm180517_173000_user_photo_volume_to_uid', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'f7868422-5f28-4688-a985-91aba228df01'),
(95, 'craft', 'm180518_173000_permissions_to_uid', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '63645cbf-d2d0-47c3-af7e-985454c69628'),
(96, 'craft', 'm180520_173000_matrix_context_to_uids', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '204b39a3-b1ef-4105-9863-86b386be1f96'),
(97, 'craft', 'm180521_172900_project_config_table', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '854e1a9d-7b22-4ea0-8930-924923db0230'),
(98, 'craft', 'm180521_173000_initial_yml_and_snapshot', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'd5b28206-2301-4033-860c-7db969d10c71'),
(99, 'craft', 'm180731_162030_soft_delete_sites', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'cacd6949-e3f3-4763-b00f-018ad8055d44'),
(100, 'craft', 'm180810_214427_soft_delete_field_layouts', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'b01dbc14-bd27-4f23-b8be-33d3b4536404'),
(101, 'craft', 'm180810_214439_soft_delete_elements', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '43d6888f-292e-4a04-87bd-e98e0c214637'),
(102, 'craft', 'm180824_193422_case_sensitivity_fixes', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'd4cbb923-459d-49bb-bc1a-1b6441ff31b0'),
(103, 'craft', 'm180901_151639_fix_matrixcontent_tables', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '1f0104f5-8fbc-47b6-a418-2b145344450f'),
(104, 'craft', 'm180904_112109_permission_changes', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '08cc26a1-94c7-489f-ad2c-79aa126bd5c7'),
(105, 'craft', 'm180910_142030_soft_delete_sitegroups', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '3a791c84-b029-4500-b91d-169b97204cd7'),
(106, 'craft', 'm181011_160000_soft_delete_asset_support', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'e5eab723-020b-44e6-8bb5-27f24a8a8d3f'),
(107, 'craft', 'm181016_183648_set_default_user_settings', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '346afa09-1748-4e6b-9350-8abc06662988'),
(108, 'craft', 'm181017_225222_system_config_settings', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '99b84cff-49fc-4a0b-b5d3-c809b68e9fb8'),
(109, 'craft', 'm181018_222343_drop_userpermissions_from_config', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '3f848a48-265b-460a-8034-51ad8df3edca'),
(110, 'craft', 'm181029_130000_add_transforms_routes_to_config', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '20151d58-2ee2-4aea-af3e-58d6f6b21c0e'),
(111, 'craft', 'm181112_203955_sequences_table', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2a3112ef-e668-472b-a78a-c33e25a52ca8'),
(112, 'craft', 'm181121_001712_cleanup_field_configs', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'e1c2c88c-1349-4c01-9e1c-27c47a38a072'),
(113, 'craft', 'm181128_193942_fix_project_config', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '1dc2284d-32d9-4e5d-b0bc-d888e2b1432c'),
(114, 'craft', 'm181130_143040_fix_schema_version', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'f9667d18-3df3-4c6d-a354-59b882f17358'),
(115, 'craft', 'm181211_143040_fix_entry_type_uids', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '175e6a25-6942-42d1-891f-1c14c77459e0'),
(116, 'craft', 'm181217_153000_fix_structure_uids', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '9e10a3e6-35c0-494d-b448-ba31a51f2e8e'),
(117, 'craft', 'm190104_152725_store_licensed_plugin_editions', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '9d216df7-5163-4cab-a499-f367a660a703'),
(118, 'craft', 'm190108_110000_cleanup_project_config', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'f55f6be8-3399-403f-a6d5-8d2c39c4eb44'),
(119, 'craft', 'm190108_113000_asset_field_setting_change', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'a5bd6c5d-3c59-4872-9a19-4ca37f8600e9'),
(120, 'craft', 'm190109_172845_fix_colspan', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'a47687e0-f6b9-4857-86bb-342224c244d3'),
(121, 'craft', 'm190110_150000_prune_nonexisting_sites', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '71a0f0e9-700a-4559-b73e-5a4f155bc870'),
(122, 'craft', 'm190110_214819_soft_delete_volumes', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'cbea92bd-a499-4db4-b89b-4170c21a21be'),
(123, 'craft', 'm190112_124737_fix_user_settings', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '569f6955-873e-4a5f-8811-bfcb17a0c37d'),
(124, 'craft', 'm190112_131225_fix_field_layouts', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '1f90ccf3-601a-4cd7-aec3-6c908d281007'),
(125, 'craft', 'm190112_201010_more_soft_deletes', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '8d058ca2-cf3b-461b-8731-7c1cded66622'),
(126, 'craft', 'm190114_143000_more_asset_field_setting_changes', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '421757ce-bd16-4ae9-99c6-45abf122c934'),
(127, 'craft', 'm190121_120000_rich_text_config_setting', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '15cc9edf-31fc-4f29-a338-68c8b247d6b7'),
(128, 'craft', 'm190125_191628_fix_email_transport_password', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '6bb8f8cc-0138-43c8-b9ca-04aaf2198f46'),
(129, 'craft', 'm190128_181422_cleanup_volume_folders', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'f42ad71f-8e9c-495b-86be-24494a1b1df2'),
(130, 'craft', 'm190205_140000_fix_asset_soft_delete_index', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'ea264c38-8192-48f8-997b-f856e8cdb8fe'),
(131, 'craft', 'm190218_143000_element_index_settings_uid', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'c28d78ce-fb9d-4002-80cc-d16e2a4980d0'),
(132, 'craft', 'm190312_152740_element_revisions', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '9c0e2159-4d83-47eb-8d42-8480801ab127'),
(133, 'craft', 'm190327_235137_propagation_method', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'd184a200-7ae0-4b90-82c9-6042ab57f58c'),
(134, 'craft', 'm190401_223843_drop_old_indexes', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '88660670-1441-4884-bd04-f0c0c818a32f'),
(135, 'craft', 'm190416_014525_drop_unique_global_indexes', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'f2b09a26-0307-4fbe-975c-e11da9daa29d'),
(136, 'craft', 'm190417_085010_add_image_editor_permissions', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '57b4dd7d-bb6e-4a29-81ec-b7f678225739'),
(137, 'craft', 'm190502_122019_store_default_user_group_uid', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '4c3908b1-1fa1-4a80-a0ba-6e840591e166'),
(138, 'craft', 'm190504_150349_preview_targets', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '17d9bde9-f2f8-43de-b504-3cba21fa6f45'),
(139, 'craft', 'm190516_184711_job_progress_label', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'd71a4a62-23c9-4af4-97ca-2da6b5453404'),
(140, 'craft', 'm190523_190303_optional_revision_creators', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'f30f3d44-404e-47c6-b376-89f6ed2b5503'),
(141, 'craft', 'm190529_204501_fix_duplicate_uids', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'ffe07bfd-2143-413c-9be5-04fe9e1fd435'),
(142, 'craft', 'm190605_223807_unsaved_drafts', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '9e5d3cc7-6a6f-4691-ae8b-70736a80791e'),
(143, 'craft', 'm190607_230042_entry_revision_error_tables', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '4944d89a-d22b-4ef7-9173-cb0133c177d1'),
(144, 'craft', 'm190608_033429_drop_elements_uid_idx', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'af0613a2-213a-46e4-a93d-2baf0002aa75'),
(145, 'craft', 'm190617_164400_add_gqlschemas_table', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '38162718-0875-428f-a335-d76c55d6cfcb'),
(146, 'craft', 'm190624_234204_matrix_propagation_method', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', 'b9d2408e-23fd-415e-a56c-34b2943bd159'),
(147, 'craft', 'm190711_153020_drop_snapshots', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:24', '4a7bcf59-feb9-4579-ae1b-920683ae88bf'),
(148, 'craft', 'm190712_195914_no_draft_revisions', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '921ec712-8472-4abe-9b4b-7b5f720b045e'),
(149, 'craft', 'm190723_140314_fix_preview_targets_column', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'ed25d758-2542-4e27-aea9-03ddb3f497d1'),
(150, 'craft', 'm190820_003519_flush_compiled_templates', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '8015681c-6a36-4db7-aefa-7b47987e685c'),
(151, 'craft', 'm190823_020339_optional_draft_creators', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '1da1728d-2fcf-4383-8b3a-72ac112e88b1'),
(152, 'craft', 'm190913_152146_update_preview_targets', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'fba57f8f-334b-4b5c-bf58-f0531024ec84'),
(153, 'craft', 'm191107_122000_add_gql_project_config_support', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'dd0b5117-f1a2-4fcc-a0e6-c2f381c4d843'),
(154, 'craft', 'm191204_085100_pack_savable_component_settings', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'f757790e-ba18-479b-a093-acd4820faf94'),
(155, 'craft', 'm191206_001148_change_tracking', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'e2c0d54c-9785-42e2-a3db-fa7b72c7ff48'),
(156, 'craft', 'm191216_191635_asset_upload_tracking', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '781dab3f-bded-4286-84b6-ad573c026ff6'),
(157, 'craft', 'm191222_002848_peer_asset_permissions', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'efb47e6c-e8e7-4f16-bdb4-8f424f6d247c'),
(158, 'craft', 'm200127_172522_queue_channels', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '73e6e08f-fafc-4d62-8352-8a667ee0ce4b'),
(159, 'craft', 'm200211_175048_truncate_element_query_cache', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '927927be-1b94-4556-83b1-d0d8a9dff4e4'),
(160, 'craft', 'm200213_172522_new_elements_index', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'e3b65590-23dc-42fb-866d-38984ef062b3'),
(161, 'craft', 'm200228_195211_long_deprecation_messages', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '7ec264cd-e5d3-446f-b426-36c2d2594ea1'),
(162, 'craft', 'm200306_054652_disabled_sites', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'fd239c8c-8081-455a-942a-b9cf68de5595'),
(163, 'craft', 'm200522_191453_clear_template_caches', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '3190f5d3-53f7-45f5-997f-ea79a440b6c1'),
(164, 'craft', 'm200606_231117_migration_tracks', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '13fa4ec1-1221-4b4e-a9f0-d63799173c9d'),
(165, 'craft', 'm200619_215137_title_translation_method', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '442bac28-0fbf-4ea1-9d83-732ecee5ead8'),
(166, 'craft', 'm200620_005028_user_group_descriptions', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'a018f05f-3a86-4f5f-9eba-cf4c1afb6361'),
(167, 'craft', 'm200620_230205_field_layout_changes', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '681e78e7-a4ac-4dc4-b1dd-b237c4a22150'),
(168, 'craft', 'm200625_131100_move_entrytypes_to_top_project_config', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '11e3e40a-4afb-4add-83ed-b6215906bf1e'),
(169, 'craft', 'm200629_112700_remove_project_config_legacy_files', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'a64c185d-1334-40a2-8392-57df71f62cb6'),
(170, 'craft', 'm200630_183000_drop_configmap', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'a85a2a3b-65ed-4ff7-90af-46034f0a9dbb'),
(171, 'craft', 'm200715_113400_transform_index_error_flag', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'dd4fbda0-25fb-464b-a6a0-f54c524dd604'),
(172, 'craft', 'm200716_110900_replace_file_asset_permissions', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'aea0549f-2990-4c16-b619-b1bb8e17dd04'),
(173, 'craft', 'm200716_153800_public_token_settings_in_project_config', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '57ad1cd4-7465-4657-bd76-63ccfe2f2f70'),
(174, 'craft', 'm200720_175543_drop_unique_constraints', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '74f808c5-b44a-403e-95cf-0e49976d95e1'),
(175, 'craft', 'm200825_051217_project_config_version', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'ad4b76a5-5117-4de1-817e-58c771df7f01'),
(176, 'craft', 'm201116_190500_asset_title_translation_method', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '62bc7a17-4aa6-4563-8f7e-baccf7f33836'),
(177, 'craft', 'm201124_003555_plugin_trials', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '84a05b83-d9f4-47a3-8d38-577550754c79'),
(178, 'craft', 'm210209_135503_soft_delete_field_groups', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'c5daa257-4200-4844-b50e-036ba127b3be'),
(179, 'craft', 'm210212_223539_delete_invalid_drafts', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'bba8bb21-b8c4-4983-b2b1-5b4df442a5af'),
(180, 'craft', 'm210214_202731_track_saved_drafts', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '4a43c106-1714-41ef-8a4a-5b0ea87907e8'),
(181, 'craft', 'm210223_150900_add_new_element_gql_schema_components', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'ed2a7ace-d618-40f4-9eef-a4432f1c52de'),
(182, 'craft', 'm210302_212318_canonical_elements', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '560fb089-c543-4fac-ac49-270bbe97ba58'),
(183, 'craft', 'm210326_132000_invalidate_projectconfig_cache', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2ed47428-f2dd-4295-91aa-4e404a7ddea7'),
(184, 'craft', 'm210329_214847_field_column_suffixes', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'd8b3e209-d4ce-400a-90f3-153563bb4ade'),
(185, 'craft', 'm210331_220322_null_author', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '964d0521-2281-4053-a701-755a2619fda3'),
(186, 'craft', 'm210405_231315_provisional_drafts', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '58c81f31-a8df-4f9d-9a21-6819f565a4ac'),
(187, 'craft', 'm210602_111300_project_config_names_in_config', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '09027baf-aa24-47b0-bbfc-408635e4518d'),
(188, 'craft', 'm210611_233510_default_placement_settings', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '3a44fb49-039d-483c-8e85-8f9c32332247'),
(189, 'craft', 'm210613_145522_sortable_global_sets', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', 'c2ebe2ee-c949-48b2-a35c-4b7adf449ca7'),
(190, 'craft', 'm210613_184103_announcements', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '445cfd13-6ffc-4b73-8d17-dea724e58835'),
(191, 'craft', 'm210829_000000_element_index_tweak', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '66524cda-ae66-43f2-843f-e68b533cc9aa'),
(192, 'plugin:redactor', 'm180430_204710_remove_old_plugins', '2021-09-07 14:38:20', '2021-09-07 14:38:20', '2021-09-07 14:38:20', '553dabb1-d96c-4483-899e-e7b3642f8ba9'),
(193, 'plugin:redactor', 'Install', '2021-09-07 14:38:20', '2021-09-07 14:38:20', '2021-09-07 14:38:20', 'c5b56d77-e2c5-4cb9-b781-841df4e00895'),
(194, 'plugin:redactor', 'm190225_003922_split_cleanup_html_settings', '2021-09-07 14:38:20', '2021-09-07 14:38:20', '2021-09-07 14:38:20', '89bd6a39-c29d-4197-bb8c-6bbf21c0e60f'),
(195, 'plugin:seo', 'Install', '2021-09-08 11:53:27', '2021-09-08 11:53:27', '2021-09-08 11:53:27', '0a94d630-5927-4e13-b5d6-eb9140b75bed'),
(196, 'plugin:seo', 'm180906_152947_add_site_id_to_redirects', '2021-09-08 11:53:27', '2021-09-08 11:53:27', '2021-09-08 11:53:27', '3b5b67ca-135b-4e23-836e-0b86400c5fd9'),
(197, 'plugin:seo', 'm190114_152300_upgrade_to_new_data_format', '2021-09-08 11:53:27', '2021-09-08 11:53:27', '2021-09-08 11:53:27', '2ba40ce5-2811-4dc1-b580-8899c38bc749'),
(198, 'plugin:seo', 'm200518_110721_add_order_to_redirects', '2021-09-08 11:53:27', '2021-09-08 11:53:27', '2021-09-08 11:53:27', '6f19329d-091e-4c6c-a086-2db9d707c604'),
(199, 'plugin:seo', 'm201207_124200_add_product_types_to_sitemap', '2021-09-08 11:53:27', '2021-09-08 11:53:27', '2021-09-08 11:53:27', '1d296b04-8488-48d8-b167-737be07b30d2'),
(200, 'plugin:super-table', 'Install', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '00e91b8d-9e78-423f-9c34-c6f108d32e6e'),
(201, 'plugin:super-table', 'm180210_000000_migrate_content_tables', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '7e5a1eaf-6edb-4501-9658-d4b3c1df5764'),
(202, 'plugin:super-table', 'm180211_000000_type_columns', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '57eaf52d-2ad5-4e38-9afb-d2daa383b15b'),
(203, 'plugin:super-table', 'm180219_000000_sites', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '51ef88f0-372a-4b17-a9e2-7f7eb32ab97a'),
(204, 'plugin:super-table', 'm180220_000000_fix_context', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '8efa192c-8fc7-4bbe-a7f9-67e0f31ed958'),
(205, 'plugin:super-table', 'm190117_000000_soft_deletes', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '8c3952c7-a618-49fa-90aa-9e881058d8f2'),
(206, 'plugin:super-table', 'm190117_000001_context_to_uids', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '8b77c90d-71e1-44ad-9cb1-b2dd6d9e90ac'),
(207, 'plugin:super-table', 'm190120_000000_fix_supertablecontent_tables', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '023e73cb-8bb9-41af-97f9-8950607e21a7'),
(208, 'plugin:super-table', 'm190131_000000_fix_supertable_missing_fields', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '2021-09-24 07:40:59', 'ca52b059-94e9-4246-9b23-f8fcd1d68f8a'),
(209, 'plugin:super-table', 'm190227_100000_fix_project_config', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '53470412-e037-472d-b800-f0acd03fd817'),
(210, 'plugin:super-table', 'm190511_100000_fix_project_config', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '2021-09-24 07:40:59', 'f746525a-51ce-4623-8dc9-f2f702f168ac'),
(211, 'plugin:super-table', 'm190520_000000_fix_project_config', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '9d5853c5-aea7-47f5-a2c1-de34d11d6eca'),
(212, 'plugin:super-table', 'm190714_000000_propagation_method', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '53ea6ef4-3bec-4fe1-ae4b-74b51cac1207'),
(213, 'plugin:super-table', 'm191127_000000_fix_width', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '2021-09-24 07:40:59', '111959ff-2efc-44e9-8f20-250db8f8dfe4'),
(214, 'craft', 'm220209_095604_add_indexes', '2022-04-21 14:47:02', '2022-04-21 14:47:02', '2022-04-21 14:47:02', '5b1cc58d-17ad-4fa5-94aa-294e05492d72'),
(215, 'craft', 'm220214_000000_truncate_sessions', '2022-04-21 14:47:02', '2022-04-21 14:47:02', '2022-04-21 14:47:02', 'd47f59c9-9c9c-46b3-946e-a2b71976388d');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `licenseKeyStatus` enum('valid','trial','invalid','mismatched','astray','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `plugins`
--

INSERT INTO `plugins` (`id`, `handle`, `version`, `schemaVersion`, `licenseKeyStatus`, `licensedEdition`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'ckeditor', '1.3.0', '1.0.0', 'unknown', NULL, '2021-09-06 11:40:24', '2021-09-06 11:40:24', '2022-10-18 12:39:55', '032a7d64-0762-4824-8f4b-0c7d4ea9143b'),
(2, 'redactor', '2.10.10', '2.3.0', 'unknown', NULL, '2021-09-07 14:38:20', '2021-09-07 14:38:20', '2022-10-18 12:39:55', 'd08ef1d0-3480-4156-a250-5bda6017a5fe'),
(3, 'contact-form', '2.5.1', '1.0.0', 'unknown', NULL, '2021-09-08 10:27:24', '2021-09-08 10:27:24', '2022-10-18 12:39:55', '8f683cb0-4fee-4f47-8838-508c3c9d232a'),
(4, 'seo', '3.7.4', '3.2.0', 'unknown', NULL, '2021-09-08 11:53:27', '2021-09-08 11:53:27', '2022-10-18 12:39:55', 'a20c0255-b6da-4747-be0d-24f0c2d76d2b'),
(5, 'super-table', '2.7.3', '2.2.1', 'unknown', NULL, '2021-09-24 07:40:57', '2021-09-24 07:40:57', '2022-10-18 12:39:55', '8f2cf728-f4fa-4346-8642-9d106f9838f6');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `projectconfig`
--

CREATE TABLE `projectconfig` (
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `projectconfig`
--

INSERT INTO `projectconfig` (`path`, `value`) VALUES
('dateModified', '1666097210'),
('email.fromEmail', '\"$SYSTEM_EMAIL\"'),
('email.fromName', '\"Blog\"'),
('email.replyToEmail', '\"$SYSTEM_EMAIL\"'),
('email.template', '\"\"'),
('email.transportSettings.command', '\"/usr/sbin/sendmail -bs\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.0.fieldUid', '\"e6e40127-efc5-4abd-b5ec-455c1a80fa0c\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.0.instructions', '\"\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.0.label', '\"\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.0.required', '\"1\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.0.tip', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.0.warning', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.0.width', '100'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.autocapitalize', 'true'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.autocomplete', 'false'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.autocorrect', 'true'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.class', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.disabled', 'false'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.id', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.instructions', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.label', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.max', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.min', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.name', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.orientation', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.placeholder', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.readonly', 'false'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.requirable', 'false'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.size', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.step', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.tip', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.title', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.warning', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.1.width', '100'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.2.fieldUid', '\"fdd41422-2f3c-4581-af2d-b4d3a271e183\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.2.instructions', '\"\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.2.label', '\"\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.2.required', '\"1\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.2.tip', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.2.warning', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.2.width', '100'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.3.fieldUid', '\"7382616d-769d-4f84-8b59-7245cd08ef20\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.3.instructions', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.3.label', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.3.required', 'false'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.3.tip', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.3.warning', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.3.width', '100'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.4.fieldUid', '\"e3a74156-6e99-4310-8b92-cc9c1d33e616\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.4.instructions', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.4.label', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.4.required', 'false'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.4.tip', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.4.warning', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.4.width', '100'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.name', '\"Inhoud\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.sortOrder', '1'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.1.elements.0.fieldUid', '\"e3c14bdc-b578-4588-bce9-7dc0f8553072\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.1.elements.0.instructions', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.1.elements.0.label', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.1.elements.0.required', 'false'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.1.elements.0.tip', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.1.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.1.elements.0.warning', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.1.elements.0.width', '100'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.1.name', '\"matrixinhoud\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.1.sortOrder', '2'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.handle', '\"default\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.hasTitleField', 'true'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.name', '\"Standaard\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.section', '\"ec1302f0-657a-4e1d-a46c-9918baf86e4e\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.sortOrder', '1'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.titleFormat', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.titleTranslationKeyFormat', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.titleTranslationMethod', '\"site\"'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.class', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.disabled', 'false'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.id', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.instructions', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.label', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.max', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.min', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.name', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.orientation', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.readonly', 'false'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.requirable', 'false'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.size', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.step', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.tip', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.title', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.warning', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.0.width', '100'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.1.fieldUid', '\"639db3fc-cfd4-4523-a2e8-2ac5effb3522\"'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.1.instructions', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.1.label', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.1.required', 'false'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.1.tip', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.1.warning', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.elements.1.width', '100'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.name', '\"Inhoud\"'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.fieldLayouts.cb868842-614c-461c-9243-6605614c4c98.tabs.0.sortOrder', '1'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.handle', '\"default\"'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.hasTitleField', 'true'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.name', '\"Standaard\"'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.section', '\"73bb7483-e2a7-45c4-abcf-4df7bb6c3d20\"'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.sortOrder', '1'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.titleFormat', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.titleTranslationKeyFormat', 'null'),
('entryTypes.845194a4-5a85-4e81-8d73-c11be1057caa.titleTranslationMethod', '\"site\"'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.class', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.disabled', 'false'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.id', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.instructions', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.label', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.max', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.min', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.name', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.orientation', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.readonly', 'false'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.requirable', 'false'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.size', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.step', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.tip', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.title', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.warning', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.0.width', '100'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.1.fieldUid', '\"eac5e9e9-55ae-47bd-8d5c-4b674f1ff355\"'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.1.instructions', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.1.label', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.1.required', 'false'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.1.tip', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.1.warning', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.1.width', '100'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.2.fieldUid', '\"09d31fa1-984a-400f-85b2-8845a04ac918\"'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.2.instructions', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.2.label', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.2.required', 'false'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.2.tip', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.2.warning', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.elements.2.width', '100'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.name', '\"Inhoud\"'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.fieldLayouts.e16888a4-4dec-450f-a6c2-71c209fbc766.tabs.0.sortOrder', '1'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.handle', '\"navbar\"'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.hasTitleField', 'true'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.name', '\"navbar\"'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.section', '\"b94e9ccf-1f7c-4952-87b0-2514213a3b78\"'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.sortOrder', '1'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.titleFormat', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.titleTranslationKeyFormat', 'null'),
('entryTypes.b8b01c62-e65a-45ab-a41a-2880f6839689.titleTranslationMethod', '\"site\"'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.class', 'null'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.disabled', 'false'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.id', 'null'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.instructions', 'null'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.label', 'null'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.max', 'null'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.min', 'null'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.name', 'null'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.orientation', 'null'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.readonly', 'false'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.requirable', 'false'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.size', 'null'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.step', 'null'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.tip', 'null'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.title', 'null'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.warning', 'null'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.elements.0.width', '100'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.name', '\"Inhoud\"'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.fieldLayouts.410aa703-ed96-4586-a0be-75ced0eb977d.tabs.0.sortOrder', '1'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.handle', '\"homepage\"'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.hasTitleField', 'false'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.name', '\"Homepage\"'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.section', '\"364d4330-d412-40f3-99b9-8a3dd6a2d954\"'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.sortOrder', '1'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.titleTranslationKeyFormat', 'null'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.titleTranslationMethod', '\"site\"'),
('fieldGroups.34ad3c2c-7a70-4054-91bb-90ada9475662.name', '\"inhoud\"'),
('fieldGroups.3b68da63-81e3-4d75-b78d-63e267cf49d7.name', '\"Common\"'),
('fieldGroups.417ad68e-f480-4c58-bc24-a31574f1c928.name', '\"blogpost\"'),
('fieldGroups.518e5c2e-1341-4b80-a65a-8512d938f820.name', '\"General\"'),
('fieldGroups.8886d58d-cb48-4775-9092-f5615f900343.name', '\"about\"'),
('fields.09d31fa1-984a-400f-85b2-8845a04ac918.columnSuffix', 'null'),
('fields.09d31fa1-984a-400f-85b2-8845a04ac918.contentColumnType', '\"string\"'),
('fields.09d31fa1-984a-400f-85b2-8845a04ac918.fieldGroup', '\"8886d58d-cb48-4775-9092-f5615f900343\"'),
('fields.09d31fa1-984a-400f-85b2-8845a04ac918.handle', '\"navbarfield\"'),
('fields.09d31fa1-984a-400f-85b2-8845a04ac918.instructions', '\"\"'),
('fields.09d31fa1-984a-400f-85b2-8845a04ac918.name', '\"navbarfield\"'),
('fields.09d31fa1-984a-400f-85b2-8845a04ac918.searchable', 'false'),
('fields.09d31fa1-984a-400f-85b2-8845a04ac918.settings.contentTable', '\"{{%matrixcontent_navbarfield}}\"'),
('fields.09d31fa1-984a-400f-85b2-8845a04ac918.settings.maxBlocks', '\"\"'),
('fields.09d31fa1-984a-400f-85b2-8845a04ac918.settings.minBlocks', '\"\"'),
('fields.09d31fa1-984a-400f-85b2-8845a04ac918.settings.propagationKeyFormat', 'null'),
('fields.09d31fa1-984a-400f-85b2-8845a04ac918.settings.propagationMethod', '\"all\"'),
('fields.09d31fa1-984a-400f-85b2-8845a04ac918.translationKeyFormat', 'null'),
('fields.09d31fa1-984a-400f-85b2-8845a04ac918.translationMethod', '\"site\"'),
('fields.09d31fa1-984a-400f-85b2-8845a04ac918.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.639db3fc-cfd4-4523-a2e8-2ac5effb3522.columnSuffix', 'null'),
('fields.639db3fc-cfd4-4523-a2e8-2ac5effb3522.contentColumnType', '\"string\"'),
('fields.639db3fc-cfd4-4523-a2e8-2ac5effb3522.fieldGroup', '\"8886d58d-cb48-4775-9092-f5615f900343\"'),
('fields.639db3fc-cfd4-4523-a2e8-2ac5effb3522.handle', '\"about\"'),
('fields.639db3fc-cfd4-4523-a2e8-2ac5effb3522.instructions', '\"\"'),
('fields.639db3fc-cfd4-4523-a2e8-2ac5effb3522.name', '\"about\"'),
('fields.639db3fc-cfd4-4523-a2e8-2ac5effb3522.searchable', 'false'),
('fields.639db3fc-cfd4-4523-a2e8-2ac5effb3522.settings.contentTable', '\"{{%matrixcontent_about}}\"'),
('fields.639db3fc-cfd4-4523-a2e8-2ac5effb3522.settings.maxBlocks', '\"\"'),
('fields.639db3fc-cfd4-4523-a2e8-2ac5effb3522.settings.minBlocks', '\"\"'),
('fields.639db3fc-cfd4-4523-a2e8-2ac5effb3522.settings.propagationKeyFormat', 'null'),
('fields.639db3fc-cfd4-4523-a2e8-2ac5effb3522.settings.propagationMethod', '\"all\"'),
('fields.639db3fc-cfd4-4523-a2e8-2ac5effb3522.translationKeyFormat', 'null'),
('fields.639db3fc-cfd4-4523-a2e8-2ac5effb3522.translationMethod', '\"site\"'),
('fields.639db3fc-cfd4-4523-a2e8-2ac5effb3522.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.columnSuffix', '\"ehemhfzb\"'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.contentColumnType', '\"string(255)\"'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.fieldGroup', '\"417ad68e-f480-4c58-bc24-a31574f1c928\"'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.handle', '\"videolink\"'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.instructions', '\"Doe hier een Youtube video in, via een embed link. Die kun je halen van de youtube video bij delen.\"'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.name', '\"videolink\"'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.searchable', 'false'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.settings.maxLength', '\"255\"'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.settings.placeholder', 'null'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.settings.types.0', '\"url\"'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.translationKeyFormat', 'null'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.translationMethod', '\"none\"'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.type', '\"craft\\\\fields\\\\Url\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.columnSuffix', '\"zwjsxauz\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.contentColumnType', '\"mediumtext\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.fieldGroup', '\"518e5c2e-1341-4b80-a65a-8512d938f820\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.handle', '\"pagecopy\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.instructions', '\"\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.name', '\"PageCopy\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.searchable', 'false'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.settings.availableTransforms', '\"*\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.settings.availableVolumes', '\"*\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.settings.columnType', '\"mediumtext\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.settings.defaultTransform', 'null'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.settings.initJs', 'null'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.settings.purifierConfig', '\"\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.settings.purifyHtml', '\"1\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.settings.removeEmptyTags', 'false'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.settings.removeInlineStyles', 'false'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.settings.removeNbsp', 'false'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.settings.showUnpermittedFiles', 'false'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.settings.showUnpermittedVolumes', 'false'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.translationKeyFormat', 'null'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.translationMethod', '\"none\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.type', '\"craft\\\\ckeditor\\\\Field\"'),
('fields.e3c14bdc-b578-4588-bce9-7dc0f8553072.columnSuffix', 'null'),
('fields.e3c14bdc-b578-4588-bce9-7dc0f8553072.contentColumnType', '\"string\"'),
('fields.e3c14bdc-b578-4588-bce9-7dc0f8553072.fieldGroup', '\"34ad3c2c-7a70-4054-91bb-90ada9475662\"'),
('fields.e3c14bdc-b578-4588-bce9-7dc0f8553072.handle', '\"inhoudzelf\"'),
('fields.e3c14bdc-b578-4588-bce9-7dc0f8553072.instructions', '\"\"'),
('fields.e3c14bdc-b578-4588-bce9-7dc0f8553072.name', '\"inhoudzelf\"'),
('fields.e3c14bdc-b578-4588-bce9-7dc0f8553072.searchable', 'false'),
('fields.e3c14bdc-b578-4588-bce9-7dc0f8553072.settings.contentTable', '\"{{%matrixcontent_inhoudzelf}}\"'),
('fields.e3c14bdc-b578-4588-bce9-7dc0f8553072.settings.maxBlocks', '\"\"'),
('fields.e3c14bdc-b578-4588-bce9-7dc0f8553072.settings.minBlocks', '\"\"'),
('fields.e3c14bdc-b578-4588-bce9-7dc0f8553072.settings.propagationKeyFormat', 'null'),
('fields.e3c14bdc-b578-4588-bce9-7dc0f8553072.settings.propagationMethod', '\"all\"'),
('fields.e3c14bdc-b578-4588-bce9-7dc0f8553072.translationKeyFormat', 'null'),
('fields.e3c14bdc-b578-4588-bce9-7dc0f8553072.translationMethod', '\"site\"'),
('fields.e3c14bdc-b578-4588-bce9-7dc0f8553072.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.columnSuffix', 'null'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.contentColumnType', '\"string\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.fieldGroup', '\"417ad68e-f480-4c58-bc24-a31574f1c928\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.handle', '\"headimage\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.instructions', '\"\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.name', '\"headimage\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.searchable', 'false'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.allowedKinds', 'null'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.allowSelfRelations', 'false'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.allowUploads', 'true'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.defaultUploadLocationSource', '\"volume:3b49d805-1ae4-41ab-ad93-00de8e3a56c3\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.defaultUploadLocationSubpath', '\"\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.limit', '\"\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.localizeRelations', 'false'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.previewMode', '\"full\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.restrictFiles', '\"\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.selectionLabel', '\"\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.showSiteMenu', 'true'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.showUnpermittedFiles', 'false'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.showUnpermittedVolumes', 'false'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.singleUploadLocationSource', '\"volume:3b49d805-1ae4-41ab-ad93-00de8e3a56c3\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.singleUploadLocationSubpath', '\"\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.source', 'null'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.sources', '\"*\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.targetSiteId', 'null'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.useSingleFolder', 'false'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.validateRelatedElements', 'false'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.settings.viewMode', '\"list\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.translationKeyFormat', 'null'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.translationMethod', '\"site\"'),
('fields.e6e40127-efc5-4abd-b5ec-455c1a80fa0c.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.columnSuffix', '\"itoqovjy\"'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.contentColumnType', '\"text\"'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.fieldGroup', '\"518e5c2e-1341-4b80-a65a-8512d938f820\"'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.handle', '\"introduction\"'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.instructions', '\"\"'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.name', '\"introduction\"'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.searchable', 'false'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.settings.byteLimit', 'null'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.settings.charLimit', 'null'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.settings.code', '\"\"'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.settings.columnType', '\"text\"'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.settings.initialRows', '\"4\"'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.settings.multiline', '\"\"'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.settings.placeholder', 'null'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.settings.uiMode', '\"normal\"'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.translationKeyFormat', 'null'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.translationMethod', '\"none\"'),
('fields.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.columnSuffix', '\"huynruhi\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.contentColumnType', '\"text\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.fieldGroup', '\"417ad68e-f480-4c58-bc24-a31574f1c928\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.handle', '\"subtext\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.instructions', '\"Een korte introductie voor de tekst die u wilt schrijven.\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.name', '\"subtext\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.searchable', 'false'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.settings.availableTransforms', '\"*\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.settings.availableVolumes', '\"*\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.settings.columnType', '\"text\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.settings.defaultTransform', 'null'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.settings.initJs', 'null'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.settings.purifierConfig', '\"\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.settings.purifyHtml', '\"1\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.settings.removeEmptyTags', 'false'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.settings.removeInlineStyles', 'false'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.settings.removeNbsp', 'false'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.settings.showUnpermittedFiles', 'false'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.settings.showUnpermittedVolumes', 'false'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.translationKeyFormat', 'null'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.translationMethod', '\"none\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.type', '\"craft\\\\ckeditor\\\\Field\"'),
('graphql.publicToken.enabled', 'true'),
('graphql.publicToken.expiryDate', 'null'),
('graphql.schemas.2650fd56-94c1-4d62-929b-998b54588b6d.isPublic', 'true'),
('graphql.schemas.2650fd56-94c1-4d62-929b-998b54588b6d.name', '\"Public Schema\"'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.field', '\"09d31fa1-984a-400f-85b2-8845a04ac918\"'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fieldLayouts.e24fffcc-7297-4129-91a0-f53afaf30b67.tabs.0.elements.0.fieldUid', '\"48e223bd-f8d0-41fb-acf1-338cc6ebfcae\"'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fieldLayouts.e24fffcc-7297-4129-91a0-f53afaf30b67.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fieldLayouts.e24fffcc-7297-4129-91a0-f53afaf30b67.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fieldLayouts.e24fffcc-7297-4129-91a0-f53afaf30b67.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fieldLayouts.e24fffcc-7297-4129-91a0-f53afaf30b67.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fieldLayouts.e24fffcc-7297-4129-91a0-f53afaf30b67.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fieldLayouts.e24fffcc-7297-4129-91a0-f53afaf30b67.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fieldLayouts.e24fffcc-7297-4129-91a0-f53afaf30b67.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fieldLayouts.e24fffcc-7297-4129-91a0-f53afaf30b67.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fieldLayouts.e24fffcc-7297-4129-91a0-f53afaf30b67.tabs.0.sortOrder', '1'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fields.48e223bd-f8d0-41fb-acf1-338cc6ebfcae.columnSuffix', 'null'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fields.48e223bd-f8d0-41fb-acf1-338cc6ebfcae.contentColumnType', '\"string(255)\"'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fields.48e223bd-f8d0-41fb-acf1-338cc6ebfcae.fieldGroup', 'null'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fields.48e223bd-f8d0-41fb-acf1-338cc6ebfcae.handle', '\"facebooklink\"'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fields.48e223bd-f8d0-41fb-acf1-338cc6ebfcae.instructions', '\"\"'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fields.48e223bd-f8d0-41fb-acf1-338cc6ebfcae.name', '\"facebooklink\"'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fields.48e223bd-f8d0-41fb-acf1-338cc6ebfcae.searchable', 'false'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fields.48e223bd-f8d0-41fb-acf1-338cc6ebfcae.settings.maxLength', '\"255\"'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fields.48e223bd-f8d0-41fb-acf1-338cc6ebfcae.settings.placeholder', 'null'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fields.48e223bd-f8d0-41fb-acf1-338cc6ebfcae.settings.types.0', '\"url\"'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fields.48e223bd-f8d0-41fb-acf1-338cc6ebfcae.translationKeyFormat', 'null'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fields.48e223bd-f8d0-41fb-acf1-338cc6ebfcae.translationMethod', '\"none\"'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.fields.48e223bd-f8d0-41fb-acf1-338cc6ebfcae.type', '\"craft\\\\fields\\\\Url\"'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.handle', '\"facebookquota\"'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.name', '\"facebook\"'),
('matrixBlockTypes.17db215b-91d6-4e8a-8b09-e0865c10c523.sortOrder', '1'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.field', '\"e3c14bdc-b578-4588-bce9-7dc0f8553072\"'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fieldLayouts.1b01a206-5352-47d0-9da1-6a221026d0a6.tabs.0.elements.0.fieldUid', '\"f45f3568-3d9c-4779-b17c-26458592de2f\"'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fieldLayouts.1b01a206-5352-47d0-9da1-6a221026d0a6.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fieldLayouts.1b01a206-5352-47d0-9da1-6a221026d0a6.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fieldLayouts.1b01a206-5352-47d0-9da1-6a221026d0a6.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fieldLayouts.1b01a206-5352-47d0-9da1-6a221026d0a6.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fieldLayouts.1b01a206-5352-47d0-9da1-6a221026d0a6.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fieldLayouts.1b01a206-5352-47d0-9da1-6a221026d0a6.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fieldLayouts.1b01a206-5352-47d0-9da1-6a221026d0a6.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fieldLayouts.1b01a206-5352-47d0-9da1-6a221026d0a6.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fieldLayouts.1b01a206-5352-47d0-9da1-6a221026d0a6.tabs.0.sortOrder', '1'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fields.f45f3568-3d9c-4779-b17c-26458592de2f.columnSuffix', 'null'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fields.f45f3568-3d9c-4779-b17c-26458592de2f.contentColumnType', '\"string(255)\"'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fields.f45f3568-3d9c-4779-b17c-26458592de2f.fieldGroup', 'null'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fields.f45f3568-3d9c-4779-b17c-26458592de2f.handle', '\"videolink\"'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fields.f45f3568-3d9c-4779-b17c-26458592de2f.instructions', '\"Zet hier een video link in.\"'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fields.f45f3568-3d9c-4779-b17c-26458592de2f.name', '\"videolink\"'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fields.f45f3568-3d9c-4779-b17c-26458592de2f.searchable', 'false'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fields.f45f3568-3d9c-4779-b17c-26458592de2f.settings.maxLength', '\"255\"'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fields.f45f3568-3d9c-4779-b17c-26458592de2f.settings.placeholder', 'null'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fields.f45f3568-3d9c-4779-b17c-26458592de2f.settings.types.0', '\"url\"'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fields.f45f3568-3d9c-4779-b17c-26458592de2f.translationKeyFormat', 'null'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fields.f45f3568-3d9c-4779-b17c-26458592de2f.translationMethod', '\"none\"'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.fields.f45f3568-3d9c-4779-b17c-26458592de2f.type', '\"craft\\\\fields\\\\Url\"'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.handle', '\"videolink\"'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.name', '\"videolink\"'),
('matrixBlockTypes.5d359804-dc3e-4485-8e71-f6d29868806e.sortOrder', '2'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.field', '\"639db3fc-cfd4-4523-a2e8-2ac5effb3522\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fieldLayouts.90fe6753-a117-4edb-8913-42224d16173d.tabs.0.elements.0.fieldUid', '\"6fb6a84c-ac77-4355-b483-06f78d791539\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fieldLayouts.90fe6753-a117-4edb-8913-42224d16173d.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fieldLayouts.90fe6753-a117-4edb-8913-42224d16173d.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fieldLayouts.90fe6753-a117-4edb-8913-42224d16173d.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fieldLayouts.90fe6753-a117-4edb-8913-42224d16173d.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fieldLayouts.90fe6753-a117-4edb-8913-42224d16173d.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fieldLayouts.90fe6753-a117-4edb-8913-42224d16173d.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fieldLayouts.90fe6753-a117-4edb-8913-42224d16173d.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fieldLayouts.90fe6753-a117-4edb-8913-42224d16173d.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fieldLayouts.90fe6753-a117-4edb-8913-42224d16173d.tabs.0.sortOrder', '1'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.columnSuffix', 'null'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.contentColumnType', '\"mediumtext\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.fieldGroup', 'null'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.handle', '\"body\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.instructions', '\"\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.name', '\"body\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.searchable', 'false'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.settings.availableTransforms', '\"*\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.settings.availableVolumes', '\"*\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.settings.columnType', '\"mediumtext\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.settings.configSelectionMode', '\"choose\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.settings.defaultTransform', '\"\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.settings.manualConfig', '\"\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.settings.purifierConfig', '\"\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.settings.purifyHtml', '\"1\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.settings.redactorConfig', '\"\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.settings.removeEmptyTags', '\"1\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.settings.removeInlineStyles', '\"1\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.settings.removeNbsp', '\"1\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.settings.showHtmlButtonForNonAdmins', '\"\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.settings.uiMode', '\"enlarged\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.translationKeyFormat', 'null');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.translationMethod', '\"none\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.fields.6fb6a84c-ac77-4355-b483-06f78d791539.type', '\"craft\\\\redactor\\\\Field\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.handle', '\"body\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.name', '\"aboutcontent\"'),
('matrixBlockTypes.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f.sortOrder', '1'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.field', '\"09d31fa1-984a-400f-85b2-8845a04ac918\"'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fieldLayouts.8d22d29a-419b-42ec-b76f-beb474632640.tabs.0.elements.0.fieldUid', '\"03e5d8de-eb19-4fee-be03-5b2baf5a22bc\"'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fieldLayouts.8d22d29a-419b-42ec-b76f-beb474632640.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fieldLayouts.8d22d29a-419b-42ec-b76f-beb474632640.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fieldLayouts.8d22d29a-419b-42ec-b76f-beb474632640.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fieldLayouts.8d22d29a-419b-42ec-b76f-beb474632640.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fieldLayouts.8d22d29a-419b-42ec-b76f-beb474632640.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fieldLayouts.8d22d29a-419b-42ec-b76f-beb474632640.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fieldLayouts.8d22d29a-419b-42ec-b76f-beb474632640.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fieldLayouts.8d22d29a-419b-42ec-b76f-beb474632640.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fieldLayouts.8d22d29a-419b-42ec-b76f-beb474632640.tabs.0.sortOrder', '1'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fields.03e5d8de-eb19-4fee-be03-5b2baf5a22bc.columnSuffix', '\"cuvkidtn\"'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fields.03e5d8de-eb19-4fee-be03-5b2baf5a22bc.contentColumnType', '\"string(255)\"'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fields.03e5d8de-eb19-4fee-be03-5b2baf5a22bc.fieldGroup', 'null'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fields.03e5d8de-eb19-4fee-be03-5b2baf5a22bc.handle', '\"mailto\"'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fields.03e5d8de-eb19-4fee-be03-5b2baf5a22bc.instructions', '\"\"'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fields.03e5d8de-eb19-4fee-be03-5b2baf5a22bc.name', '\"mailto\"'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fields.03e5d8de-eb19-4fee-be03-5b2baf5a22bc.searchable', 'false'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fields.03e5d8de-eb19-4fee-be03-5b2baf5a22bc.settings.maxLength', '\"255\"'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fields.03e5d8de-eb19-4fee-be03-5b2baf5a22bc.settings.placeholder', 'null'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fields.03e5d8de-eb19-4fee-be03-5b2baf5a22bc.settings.types.0', '\"url\"'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fields.03e5d8de-eb19-4fee-be03-5b2baf5a22bc.settings.types.1', '\"email\"'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fields.03e5d8de-eb19-4fee-be03-5b2baf5a22bc.translationKeyFormat', 'null'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fields.03e5d8de-eb19-4fee-be03-5b2baf5a22bc.translationMethod', '\"none\"'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.fields.03e5d8de-eb19-4fee-be03-5b2baf5a22bc.type', '\"craft\\\\fields\\\\Url\"'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.handle', '\"mail\"'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.name', '\"mail\"'),
('matrixBlockTypes.b3f35fce-f0a9-496d-9f25-8dd0595f6eef.sortOrder', '3'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.field', '\"09d31fa1-984a-400f-85b2-8845a04ac918\"'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fieldLayouts.c5ecdb7e-36aa-4809-9e26-8356a60bf706.tabs.0.elements.0.fieldUid', '\"88431a62-ee0e-4589-8f9b-79e34f647e72\"'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fieldLayouts.c5ecdb7e-36aa-4809-9e26-8356a60bf706.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fieldLayouts.c5ecdb7e-36aa-4809-9e26-8356a60bf706.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fieldLayouts.c5ecdb7e-36aa-4809-9e26-8356a60bf706.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fieldLayouts.c5ecdb7e-36aa-4809-9e26-8356a60bf706.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fieldLayouts.c5ecdb7e-36aa-4809-9e26-8356a60bf706.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fieldLayouts.c5ecdb7e-36aa-4809-9e26-8356a60bf706.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fieldLayouts.c5ecdb7e-36aa-4809-9e26-8356a60bf706.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fieldLayouts.c5ecdb7e-36aa-4809-9e26-8356a60bf706.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fieldLayouts.c5ecdb7e-36aa-4809-9e26-8356a60bf706.tabs.0.sortOrder', '1'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fields.88431a62-ee0e-4589-8f9b-79e34f647e72.columnSuffix', 'null'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fields.88431a62-ee0e-4589-8f9b-79e34f647e72.contentColumnType', '\"string(255)\"'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fields.88431a62-ee0e-4589-8f9b-79e34f647e72.fieldGroup', 'null'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fields.88431a62-ee0e-4589-8f9b-79e34f647e72.handle', '\"twitterlink\"'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fields.88431a62-ee0e-4589-8f9b-79e34f647e72.instructions', '\"\"'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fields.88431a62-ee0e-4589-8f9b-79e34f647e72.name', '\"twitterlink\"'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fields.88431a62-ee0e-4589-8f9b-79e34f647e72.searchable', 'false'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fields.88431a62-ee0e-4589-8f9b-79e34f647e72.settings.maxLength', '\"255\"'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fields.88431a62-ee0e-4589-8f9b-79e34f647e72.settings.placeholder', 'null'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fields.88431a62-ee0e-4589-8f9b-79e34f647e72.settings.types.0', '\"url\"'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fields.88431a62-ee0e-4589-8f9b-79e34f647e72.translationKeyFormat', 'null'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fields.88431a62-ee0e-4589-8f9b-79e34f647e72.translationMethod', '\"none\"'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.fields.88431a62-ee0e-4589-8f9b-79e34f647e72.type', '\"craft\\\\fields\\\\Url\"'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.handle', '\"twitter\"'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.name', '\"twitter\"'),
('matrixBlockTypes.cb9e90a1-3919-450b-98f5-629110cc72ed.sortOrder', '2'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.field', '\"e3c14bdc-b578-4588-bce9-7dc0f8553072\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fieldLayouts.dd0fb9ac-e4fe-4014-ad10-0887926eaf73.tabs.0.elements.0.fieldUid', '\"3b175535-87ad-4cb7-90d4-5e06d63658d6\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fieldLayouts.dd0fb9ac-e4fe-4014-ad10-0887926eaf73.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fieldLayouts.dd0fb9ac-e4fe-4014-ad10-0887926eaf73.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fieldLayouts.dd0fb9ac-e4fe-4014-ad10-0887926eaf73.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fieldLayouts.dd0fb9ac-e4fe-4014-ad10-0887926eaf73.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fieldLayouts.dd0fb9ac-e4fe-4014-ad10-0887926eaf73.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fieldLayouts.dd0fb9ac-e4fe-4014-ad10-0887926eaf73.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fieldLayouts.dd0fb9ac-e4fe-4014-ad10-0887926eaf73.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fieldLayouts.dd0fb9ac-e4fe-4014-ad10-0887926eaf73.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fieldLayouts.dd0fb9ac-e4fe-4014-ad10-0887926eaf73.tabs.0.sortOrder', '1'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.columnSuffix', 'null'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.contentColumnType', '\"text\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.fieldGroup', 'null'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.handle', '\"bodytext\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.instructions', '\"\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.name', '\"bodytext\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.searchable', 'false'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.settings.availableTransforms', '\"*\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.settings.availableVolumes', '\"*\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.settings.columnType', '\"text\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.settings.configSelectionMode', '\"choose\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.settings.defaultTransform', '\"\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.settings.manualConfig', '\"\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.settings.purifierConfig', '\"\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.settings.purifyHtml', '\"1\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.settings.redactorConfig', '\"\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.settings.removeEmptyTags', '\"1\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.settings.removeInlineStyles', '\"1\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.settings.removeNbsp', '\"1\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.settings.showHtmlButtonForNonAdmins', '\"\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.settings.uiMode', '\"enlarged\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.translationKeyFormat', 'null'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.translationMethod', '\"none\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.fields.3b175535-87ad-4cb7-90d4-5e06d63658d6.type', '\"craft\\\\redactor\\\\Field\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.handle', '\"bodycopy\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.name', '\"bodycopy\"'),
('matrixBlockTypes.d6287000-aeb5-4ddf-aeeb-da48f9ed904f.sortOrder', '1'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.field', '\"639db3fc-cfd4-4523-a2e8-2ac5effb3522\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.elements.0.fieldUid', '\"185857a1-7047-4adc-84d0-a8d679523c2d\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.elements.1.fieldUid', '\"1bedf931-c16d-4606-a377-f778e799f5c0\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.elements.1.required', 'false'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fieldLayouts.035a1325-057f-4ada-8084-74d2a5676623.tabs.0.sortOrder', '1'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.185857a1-7047-4adc-84d0-a8d679523c2d.columnSuffix', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.185857a1-7047-4adc-84d0-a8d679523c2d.contentColumnType', '\"string(255)\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.185857a1-7047-4adc-84d0-a8d679523c2d.fieldGroup', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.185857a1-7047-4adc-84d0-a8d679523c2d.handle', '\"videolink\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.185857a1-7047-4adc-84d0-a8d679523c2d.instructions', '\"\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.185857a1-7047-4adc-84d0-a8d679523c2d.name', '\"videolink\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.185857a1-7047-4adc-84d0-a8d679523c2d.searchable', 'false'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.185857a1-7047-4adc-84d0-a8d679523c2d.settings.maxLength', '\"255\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.185857a1-7047-4adc-84d0-a8d679523c2d.settings.placeholder', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.185857a1-7047-4adc-84d0-a8d679523c2d.settings.types.0', '\"url\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.185857a1-7047-4adc-84d0-a8d679523c2d.translationKeyFormat', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.185857a1-7047-4adc-84d0-a8d679523c2d.translationMethod', '\"none\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.185857a1-7047-4adc-84d0-a8d679523c2d.type', '\"craft\\\\fields\\\\Url\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.columnSuffix', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.contentColumnType', '\"text\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.fieldGroup', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.handle', '\"videonaam\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.instructions', '\"\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.name', '\"videonaam\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.searchable', 'false'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.settings.byteLimit', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.settings.charLimit', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.settings.code', '\"\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.settings.columnType', '\"text\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.settings.initialRows', '\"4\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.settings.multiline', '\"\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.settings.placeholder', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.translationKeyFormat', 'null'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.translationMethod', '\"none\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.fields.1bedf931-c16d-4606-a377-f778e799f5c0.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.handle', '\"video\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.name', '\"video\"'),
('matrixBlockTypes.e27425f4-7074-4765-8f15-839e26004962.sortOrder', '2'),
('meta.__names__.03e5d8de-eb19-4fee-be03-5b2baf5a22bc', '\"mailto\"'),
('meta.__names__.09d31fa1-984a-400f-85b2-8845a04ac918', '\"navbarfield\"'),
('meta.__names__.17db215b-91d6-4e8a-8b09-e0865c10c523', '\"facebook\"'),
('meta.__names__.185857a1-7047-4adc-84d0-a8d679523c2d', '\"videolink\"'),
('meta.__names__.1a7ded85-cd10-4685-8696-21042404ec46', '\"Blog\"'),
('meta.__names__.1bedf931-c16d-4606-a377-f778e799f5c0', '\"videonaam\"'),
('meta.__names__.2650fd56-94c1-4d62-929b-998b54588b6d', '\"Public Schema\"'),
('meta.__names__.34ad3c2c-7a70-4054-91bb-90ada9475662', '\"inhoud\"'),
('meta.__names__.364d4330-d412-40f3-99b9-8a3dd6a2d954', '\"Homepage\"'),
('meta.__names__.3b175535-87ad-4cb7-90d4-5e06d63658d6', '\"bodytext\"'),
('meta.__names__.3b49d805-1ae4-41ab-ad93-00de8e3a56c3', '\"images\"'),
('meta.__names__.3b68da63-81e3-4d75-b78d-63e267cf49d7', '\"Common\"'),
('meta.__names__.417ad68e-f480-4c58-bc24-a31574f1c928', '\"blogpost\"'),
('meta.__names__.48e223bd-f8d0-41fb-acf1-338cc6ebfcae', '\"facebooklink\"'),
('meta.__names__.4c7c41bd-271d-4790-aecd-3eafe71ca7c6', '\"Standaard\"'),
('meta.__names__.518e5c2e-1341-4b80-a65a-8512d938f820', '\"General\"'),
('meta.__names__.5d359804-dc3e-4485-8e71-f6d29868806e', '\"videolink\"'),
('meta.__names__.639db3fc-cfd4-4523-a2e8-2ac5effb3522', '\"about\"'),
('meta.__names__.6fb6a84c-ac77-4355-b483-06f78d791539', '\"body\"'),
('meta.__names__.7382616d-769d-4f84-8b59-7245cd08ef20', '\"videolink\"'),
('meta.__names__.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20', '\"About\"'),
('meta.__names__.7ce16e90-1108-4637-ae34-135db25fef4e', '\"Blog\"'),
('meta.__names__.845194a4-5a85-4e81-8d73-c11be1057caa', '\"Standaard\"'),
('meta.__names__.88431a62-ee0e-4589-8f9b-79e34f647e72', '\"twitterlink\"'),
('meta.__names__.8886d58d-cb48-4775-9092-f5615f900343', '\"about\"'),
('meta.__names__.95710e39-bdda-4a20-bfe7-9f8f96a9eb1f', '\"aboutcontent\"'),
('meta.__names__.b3f35fce-f0a9-496d-9f25-8dd0595f6eef', '\"mail\"'),
('meta.__names__.b8b01c62-e65a-45ab-a41a-2880f6839689', '\"navbar\"'),
('meta.__names__.b94e9ccf-1f7c-4952-87b0-2514213a3b78', '\"navbar\"'),
('meta.__names__.bb77b1f3-1ccf-4257-af21-bb0d3e88362d', '\"Homepage\"'),
('meta.__names__.cb9e90a1-3919-450b-98f5-629110cc72ed', '\"twitter\"'),
('meta.__names__.d6287000-aeb5-4ddf-aeeb-da48f9ed904f', '\"bodycopy\"'),
('meta.__names__.e27425f4-7074-4765-8f15-839e26004962', '\"video\"'),
('meta.__names__.e3a74156-6e99-4310-8b92-cc9c1d33e616', '\"PageCopy\"'),
('meta.__names__.e3c14bdc-b578-4588-bce9-7dc0f8553072', '\"inhoudzelf\"'),
('meta.__names__.e6e40127-efc5-4abd-b5ec-455c1a80fa0c', '\"headimage\"'),
('meta.__names__.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355', '\"introduction\"'),
('meta.__names__.ec1302f0-657a-4e1d-a46c-9918baf86e4e', '\"blogpost\"'),
('meta.__names__.f45f3568-3d9c-4779-b17c-26458592de2f', '\"videolink\"'),
('meta.__names__.fdd41422-2f3c-4581-af2d-b4d3a271e183', '\"subtext\"'),
('plugins.ckeditor.edition', '\"standard\"'),
('plugins.ckeditor.enabled', 'true'),
('plugins.ckeditor.schemaVersion', '\"1.0.0\"'),
('plugins.contact-form.edition', '\"standard\"'),
('plugins.contact-form.enabled', 'true'),
('plugins.contact-form.schemaVersion', '\"1.0.0\"'),
('plugins.redactor.edition', '\"standard\"'),
('plugins.redactor.enabled', 'true'),
('plugins.redactor.schemaVersion', '\"2.3.0\"'),
('plugins.seo.edition', '\"standard\"'),
('plugins.seo.enabled', 'true'),
('plugins.seo.schemaVersion', '\"3.2.0\"'),
('plugins.seo.settings.description', '\"\"'),
('plugins.seo.settings.facebookAppId', '\"\"'),
('plugins.seo.settings.metaTemplate', '\"\"'),
('plugins.seo.settings.removeAlternateUrls', '\"\"'),
('plugins.seo.settings.robots.0', '\"\"'),
('plugins.seo.settings.robots.1', '\"\"'),
('plugins.seo.settings.robots.2', '\"noarchive\"'),
('plugins.seo.settings.robots.3', '\"\"'),
('plugins.seo.settings.robots.4', '\"notranslate\"'),
('plugins.seo.settings.robots.5', '\"\"'),
('plugins.seo.settings.robotsTxt', '\"{# Sitemap URL #}\\r\\nSitemap: {{ url(seo.sitemapName ~ \'.xml\') }}\\r\\n\\r\\n{# Disallows #}\\r\\n{% if craft.app.config.env != \'production\' %}\\r\\n\\r\\n{# Disallow access to everything when NOT in production #}\\r\\nUser-agent: *\\r\\nDisallow: /\\r\\n\\r\\n{% else %}\\r\\n\\r\\n{# Disallow access to cpresources/ when live #}\\r\\nUser-agent: *\\r\\nDisallow: /cpresources/\\r\\n\\r\\n{% endif %}\"'),
('plugins.seo.settings.sitemapLimit', '\"1000\"'),
('plugins.seo.settings.sitemapName', '\"sitemap\"'),
('plugins.seo.settings.socialImage', '\"\"'),
('plugins.seo.settings.title.0.__assoc__.0.0', '\"key\"'),
('plugins.seo.settings.title.0.__assoc__.0.1', '\"1\"'),
('plugins.seo.settings.title.0.__assoc__.1.0', '\"locked\"'),
('plugins.seo.settings.title.0.__assoc__.1.1', '\"0\"'),
('plugins.seo.settings.title.0.__assoc__.2.0', '\"template\"'),
('plugins.seo.settings.title.0.__assoc__.2.1', '\"{title}\"'),
('plugins.seo.settings.title.1.__assoc__.0.0', '\"key\"'),
('plugins.seo.settings.title.1.__assoc__.0.1', '\"2\"'),
('plugins.seo.settings.title.1.__assoc__.1.0', '\"locked\"'),
('plugins.seo.settings.title.1.__assoc__.1.1', '\"1\"'),
('plugins.seo.settings.title.1.__assoc__.2.0', '\"template\"'),
('plugins.seo.settings.title.1.__assoc__.2.1', '\" - {{ siteName }}\"'),
('plugins.seo.settings.titleSuffix', 'null'),
('plugins.seo.settings.twitterHandle', '\"\"'),
('plugins.super-table.edition', '\"standard\"'),
('plugins.super-table.enabled', 'true'),
('plugins.super-table.schemaVersion', '\"2.2.1\"'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.defaultPlacement', '\"end\"'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.enableVersioning', 'true'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.handle', '\"homepage\"'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.name', '\"Homepage\"'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.previewTargets.0.__assoc__.0.1', '\"Primaire invoer-pagina\"'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.propagationMethod', '\"all\"'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.siteSettings.1a7ded85-cd10-4685-8696-21042404ec46.enabledByDefault', 'true'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.siteSettings.1a7ded85-cd10-4685-8696-21042404ec46.hasUrls', 'true'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.siteSettings.1a7ded85-cd10-4685-8696-21042404ec46.template', '\"index\"'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.siteSettings.1a7ded85-cd10-4685-8696-21042404ec46.uriFormat', '\"__home__\"'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.type', '\"single\"'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.defaultPlacement', '\"end\"'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.enableVersioning', 'true'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.handle', '\"about\"'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.name', '\"About\"'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.previewTargets.0.__assoc__.0.1', '\"Primaire invoer-pagina\"'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.propagationMethod', '\"all\"'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.siteSettings.1a7ded85-cd10-4685-8696-21042404ec46.enabledByDefault', 'true'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.siteSettings.1a7ded85-cd10-4685-8696-21042404ec46.hasUrls', 'true'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.siteSettings.1a7ded85-cd10-4685-8696-21042404ec46.template', '\"about/_entry\"'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.siteSettings.1a7ded85-cd10-4685-8696-21042404ec46.uriFormat', '\"{parent.uri}/{slug}\"'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.structure.maxLevels', 'null'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.structure.uid', '\"80d3d7ea-cc89-4dfe-a7dc-8a136b2a668b\"'),
('sections.73bb7483-e2a7-45c4-abcf-4df7bb6c3d20.type', '\"structure\"'),
('sections.b94e9ccf-1f7c-4952-87b0-2514213a3b78.defaultPlacement', '\"end\"'),
('sections.b94e9ccf-1f7c-4952-87b0-2514213a3b78.enableVersioning', 'true'),
('sections.b94e9ccf-1f7c-4952-87b0-2514213a3b78.handle', '\"navbar\"'),
('sections.b94e9ccf-1f7c-4952-87b0-2514213a3b78.name', '\"navbar\"'),
('sections.b94e9ccf-1f7c-4952-87b0-2514213a3b78.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.b94e9ccf-1f7c-4952-87b0-2514213a3b78.previewTargets.0.__assoc__.0.1', '\"Primaire invoer-pagina\"'),
('sections.b94e9ccf-1f7c-4952-87b0-2514213a3b78.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.b94e9ccf-1f7c-4952-87b0-2514213a3b78.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.b94e9ccf-1f7c-4952-87b0-2514213a3b78.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.b94e9ccf-1f7c-4952-87b0-2514213a3b78.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.b94e9ccf-1f7c-4952-87b0-2514213a3b78.propagationMethod', '\"all\"'),
('sections.b94e9ccf-1f7c-4952-87b0-2514213a3b78.siteSettings.1a7ded85-cd10-4685-8696-21042404ec46.enabledByDefault', 'true'),
('sections.b94e9ccf-1f7c-4952-87b0-2514213a3b78.siteSettings.1a7ded85-cd10-4685-8696-21042404ec46.hasUrls', 'true'),
('sections.b94e9ccf-1f7c-4952-87b0-2514213a3b78.siteSettings.1a7ded85-cd10-4685-8696-21042404ec46.template', '\"_layouts/main\"'),
('sections.b94e9ccf-1f7c-4952-87b0-2514213a3b78.siteSettings.1a7ded85-cd10-4685-8696-21042404ec46.uriFormat', '\"_layouts/main\"'),
('sections.b94e9ccf-1f7c-4952-87b0-2514213a3b78.type', '\"single\"'),
('sections.ec1302f0-657a-4e1d-a46c-9918baf86e4e.defaultPlacement', '\"end\"'),
('sections.ec1302f0-657a-4e1d-a46c-9918baf86e4e.enableVersioning', 'true'),
('sections.ec1302f0-657a-4e1d-a46c-9918baf86e4e.handle', '\"blogpost\"'),
('sections.ec1302f0-657a-4e1d-a46c-9918baf86e4e.name', '\"blogpost\"'),
('sections.ec1302f0-657a-4e1d-a46c-9918baf86e4e.propagationMethod', '\"all\"'),
('sections.ec1302f0-657a-4e1d-a46c-9918baf86e4e.siteSettings.1a7ded85-cd10-4685-8696-21042404ec46.enabledByDefault', 'true'),
('sections.ec1302f0-657a-4e1d-a46c-9918baf86e4e.siteSettings.1a7ded85-cd10-4685-8696-21042404ec46.hasUrls', 'true'),
('sections.ec1302f0-657a-4e1d-a46c-9918baf86e4e.siteSettings.1a7ded85-cd10-4685-8696-21042404ec46.template', '\"blogpost/_entry\"'),
('sections.ec1302f0-657a-4e1d-a46c-9918baf86e4e.siteSettings.1a7ded85-cd10-4685-8696-21042404ec46.uriFormat', '\"blogpost/{slug}\"'),
('sections.ec1302f0-657a-4e1d-a46c-9918baf86e4e.type', '\"channel\"'),
('siteGroups.7ce16e90-1108-4637-ae34-135db25fef4e.name', '\"Blog\"'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.baseUrl', '\"$PRIMARY_SITE_URL\"'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.enabled', 'true'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.handle', '\"default\"'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.hasUrls', 'true'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.language', '\"nl\"'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.name', '\"Blog\"'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.primary', 'true'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.siteGroup', '\"7ce16e90-1108-4637-ae34-135db25fef4e\"'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.sortOrder', '1'),
('system.edition', '\"pro\"'),
('system.live', 'true'),
('system.name', '\"Blog\"'),
('system.retryDuration', 'null'),
('system.schemaVersion', '\"3.7.33\"'),
('system.timeZone', '\"Europe/Amsterdam\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', '\"\"'),
('users.photoSubpath', 'null'),
('users.photoVolumeUid', '\"3b49d805-1ae4-41ab-ad93-00de8e3a56c3\"'),
('users.requireEmailVerification', 'true'),
('users.suspendByDefault', 'false'),
('users.validateOnPublicRegistration', 'false'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.autocomplete', 'false'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.autocorrect', 'true'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.class', 'null'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.disabled', 'false'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.id', 'null'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.instructions', 'null'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.label', 'null'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.max', 'null'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.min', 'null'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.name', 'null'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.orientation', 'null'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.placeholder', 'null'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.readonly', 'false'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.requirable', 'false'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.size', 'null'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.step', 'null'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.tip', 'null'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.title', 'null'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\AssetTitleField\"'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.warning', 'null'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.elements.0.width', '100'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.name', '\"Inhoud\"'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.fieldLayouts.a64138f5-f419-494f-863a-6c4f896792de.tabs.0.sortOrder', '1'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.handle', '\"images\"'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.hasUrls', 'true'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.name', '\"images\"'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.settings.path', '\"/Users/pjotr/Sites/blogsite/craft/web/images\"'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.sortOrder', '1'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.titleTranslationKeyFormat', 'null'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.titleTranslationMethod', '\"site\"'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.type', '\"craft\\\\volumes\\\\Local\"'),
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.url', '\"//blogsite.local/images/\"');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `queue`
--

CREATE TABLE `queue` (
  `id` int(11) NOT NULL,
  `channel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) UNSIGNED NOT NULL DEFAULT 1024,
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT 0,
  `progressLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT 0,
  `dateFailed` datetime DEFAULT NULL,
  `error` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `relations`
--

CREATE TABLE `relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `relations`
--

INSERT INTO `relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 3, 4, NULL, 6, 1, '2021-09-06 12:07:09', '2021-09-06 12:07:09', 'e28622c0-3a0c-4728-bf91-db537a81db87'),
(3, 3, 8, NULL, 6, 1, '2021-09-06 12:07:09', '2021-09-06 12:07:09', '2578541c-c56f-4947-b7bc-54b8fe3a97cf'),
(4, 3, 9, NULL, 6, 1, '2021-09-06 12:07:16', '2021-09-06 12:07:16', '90cb52ba-1599-40dc-9079-a4e8b630c52b'),
(6, 3, 29, NULL, 6, 1, '2021-09-07 09:02:46', '2021-09-07 09:02:46', '12f4f91e-f3cc-4d74-83e9-d0d181498e3a'),
(7, 3, 30, NULL, 6, 1, '2021-09-07 10:07:35', '2021-09-07 10:07:35', '4c0bed9e-6ffe-445c-8378-896683261a93'),
(8, 3, 31, NULL, 6, 1, '2021-09-07 10:07:36', '2021-09-07 10:07:36', 'c7b9a245-56c5-4265-ba96-f4ae3b11b5ae'),
(9, 3, 32, NULL, 6, 1, '2021-09-07 10:07:40', '2021-09-07 10:07:40', 'bfec0501-28e0-4670-a4f1-1a8679ee4225'),
(10, 3, 33, NULL, 6, 1, '2021-09-07 10:07:40', '2021-09-07 10:07:40', '0de115c8-6ca5-4654-a213-cf2479c306ec'),
(11, 3, 34, NULL, 6, 1, '2021-09-07 10:07:41', '2021-09-07 10:07:41', 'd4e97a19-bc24-4857-bd94-bf55f5ef949c'),
(12, 3, 35, NULL, 6, 1, '2021-09-07 10:07:41', '2021-09-07 10:07:41', '499bb999-78b5-49fd-b8d2-09cfd7b16813'),
(14, 3, 37, NULL, 6, 1, '2021-09-07 10:08:51', '2021-09-07 10:08:51', 'c0734748-6522-499d-b705-53eebb51e492'),
(16, 3, 39, NULL, 6, 1, '2021-09-07 10:09:00', '2021-09-07 10:09:00', '8bcf6f06-a8fd-40e1-b655-28cb1658bda4'),
(18, 3, 41, NULL, 6, 1, '2021-09-07 10:09:06', '2021-09-07 10:09:06', 'cc159c19-1d8f-4a78-93dc-75347dc1345f'),
(19, 3, 42, NULL, 89, 1, '2021-09-07 13:19:07', '2021-09-07 13:19:07', 'e26982e4-a6aa-4384-b7cd-74a4a940fbc3'),
(20, 3, 90, NULL, 89, 1, '2021-09-07 13:20:19', '2021-09-07 13:20:19', '37f1f5f8-f679-4921-9e08-d0ce12473d30'),
(22, 3, 96, NULL, 89, 1, '2021-09-07 13:22:45', '2021-09-07 13:22:45', '32b380f8-fce1-4800-8dbd-941c4a7e3d9d'),
(24, 3, 102, NULL, 89, 1, '2021-09-07 13:23:47', '2021-09-07 13:23:47', 'c9774e47-42bd-4299-8314-c1aebe4af371'),
(25, 3, 105, NULL, 89, 1, '2021-09-07 13:42:02', '2021-09-07 13:42:02', 'f682966f-9406-4fe1-b397-ffaf03d903c0'),
(27, 3, 111, NULL, 89, 1, '2021-09-07 13:44:37', '2021-09-07 13:44:37', '0aed9b8e-778d-4dac-9614-b2694929c2ea'),
(29, 3, 117, NULL, 89, 1, '2021-09-07 14:10:50', '2021-09-07 14:10:50', 'b5bde6ff-950b-472e-a633-71557ab4f534'),
(31, 3, 123, NULL, 89, 1, '2021-09-07 14:11:22', '2021-09-07 14:11:22', '331047a6-4b73-439c-83a6-a66d79822455'),
(33, 3, 129, NULL, 89, 1, '2021-09-07 14:32:19', '2021-09-07 14:32:19', '06fef210-952e-4e82-9dc0-e5b64f343f0e'),
(35, 3, 135, NULL, 89, 1, '2021-09-07 14:32:34', '2021-09-07 14:32:34', '839038f7-7dc3-4776-b41e-fa64fea8cb2f'),
(37, 3, 141, NULL, 89, 1, '2021-09-07 14:33:52', '2021-09-07 14:33:52', '2da243aa-daca-4658-ac09-8e393009c4ec'),
(39, 3, 147, NULL, 89, 1, '2021-09-07 14:35:36', '2021-09-07 14:35:36', 'eb566a34-99f8-4a85-8a3a-595e910d973a'),
(41, 3, 153, NULL, 89, 1, '2021-09-07 14:36:15', '2021-09-07 14:36:15', '1076a11d-f8d0-4020-98a8-c237b3ee9dbe'),
(43, 3, 159, NULL, 89, 1, '2021-09-07 14:53:46', '2021-09-07 14:53:46', '9ff730d3-35b2-475e-89af-852a85c3781c'),
(45, 3, 165, NULL, 89, 1, '2021-09-07 14:57:31', '2021-09-07 14:57:31', '588c805c-90f9-40fe-aaba-39dc9451aeda'),
(46, 3, 222, NULL, 89, 1, '2021-09-08 14:56:26', '2021-09-08 14:56:26', '0cad2856-300f-42ea-8eaa-c6229bc72296');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `resourcepaths`
--

CREATE TABLE `resourcepaths` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `resourcepaths`
--

INSERT INTO `resourcepaths` (`hash`, `path`) VALUES
('1117150c', '@bower/jquery/dist'),
('115ea9a9', '@craft/web/assets/selectize/dist'),
('12de6e6b', '@app/web/assets/cp/dist'),
('1357825', '@craft/web/assets/cp/dist'),
('1476d9f8', '@craft/web/assets/updater/dist'),
('1536b60c', '@bower/jquery/dist'),
('157cbf5e', '@craft/web/assets/craftsupport/dist'),
('16e07b15', '@app/web/assets/login/dist'),
('189eee99', '@lib/jquery.payment'),
('18ba43aa', '@lib/element-resize-detector'),
('1b4ba1b4', '@craft/web/assets/updateswidget/dist'),
('1d160be1', '@craft/web/assets/cp/dist'),
('1d7a0893', '@craft/web/assets/login/dist'),
('1db59fa7', '@craft/web/assets/recententries/dist'),
('1eb9fa70', '@lib/datepicker-i18n'),
('1ec970e9', '@app/web/assets/admintable/dist'),
('21270547', '@craft/web/assets/axios/dist'),
('217c59b7', '@app/web/assets/updater/dist'),
('230fddc9', '@craft/web/assets/updateswidget/dist'),
('23a4881d', '@lib/axios'),
('258d6799', '@app/web/assets/generalsettings/dist'),
('25f1e3da', '@craft/web/assets/recententries/dist'),
('268d0c94', '@app/web/assets/admintable/dist'),
('26a51f22', '@lib/velocity'),
('26fd860d', '@lib/datepicker-i18n'),
('2973c854', '@lib/jquery-ui'),
('2a69821a', '@craft/web/assets/feed/dist'),
('2aba6906', '@app/web/assets/feed/dist'),
('2b4eb522', '@craft/web/assets/edituser/dist'),
('2b84b754', '@craft/web/assets/updates/dist'),
('2c32a585', '@craft/web/assets/updater/dist'),
('2df4912f', '@craft/web/assets/systemmessages/dist'),
('30bc4eef', '@app/web/assets/editsection/dist'),
('311425f7', '@craft/web/assets/editsection/dist'),
('31290b88', '@app/web/assets/updateswidget/dist'),
('31da6029', '@app/web/assets/utilities/dist'),
('32894193', '@lib/timepicker'),
('3532659b', '@lib/xregexp'),
('372ae85f', '@bower/jquery/dist'),
('37cd79e5', '@craft/web/assets/plugins/dist'),
('39710458', '@craft/web/assets/cp/dist'),
('39d2901e', '@craft/web/assets/recententries/dist'),
('3a82b0ca', '@lib/jquery.payment'),
('3aa61df9', '@lib/element-resize-detector'),
('3c6a28d1', '@app/web/assets/fieldsettings/dist'),
('3f5e2111', '@lib/selectize'),
('3fbba749', '@app/web/assets/craftsupport/dist'),
('400cb4b9', '@app/web/assets/dashboard/dist'),
('40c79a9d', '@lib/axios'),
('415d07f8', '@app/web/assets/selectize/dist'),
('42cfd619', '@app/web/assets/generalsettings/dist'),
('437eef7c', '@lib/fabric'),
('46393cf1', '@mattgrayisok/darkmode/assetbundles/darkmode/dist'),
('463ee837', '@app/web/assets/updater/dist'),
('472f4e01', '@lib/iframe-resizer'),
('476b9af7', '@app/web/assets/fields/dist'),
('47e4332b', '@craft/web/assets/utilities/dist'),
('48996f93', '@app/web/assets/pluginstore/dist'),
('4a10dad4', '@lib/jquery-ui'),
('4b2c2d3', '@craft/redactor/assets/redactor-plugins/dist/video'),
('4b8c7116', '@lib/fileupload'),
('4b94171', '@lib/velocity'),
('4ce047bd', '@craft/web/assets/matrixsettings/dist'),
('4eec0535', '@app/web/assets/recententries/dist'),
('4f3067bb', '@lib/vue'),
('51d7fd1c', '@app/web/assets/fileupload/dist'),
('51da0361', '@lib/iframe-resizer-cw'),
('531c9496', '@craft/web/assets/matrix/dist'),
('532aa4d1', '@craft/web/assets/dashboard/dist'),
('536470e8', '@lib/picturefill'),
('53a122b8', '@app/web/assets/cp/dist'),
('54c04c2a', '@lib/jquery-touch-events'),
('56383b42', '@lib/garnishjs'),
('564646a3', '@lib/prismjs'),
('566bba08', '@app/web/assets/updateswidget/dist'),
('579f37c6', '@app/web/assets/login/dist'),
('57cea515', '@craft/web/assets/fabric/dist'),
('58f916c9', '@app/web/assets/craftsupport/dist'),
('59c50f79', '@lib/element-resize-detector'),
('5a0f71ba', '@app/web/assets/matrixsettings/dist'),
('5bc740ef', '@craft/web/assets/utilities/dist'),
('5c054440', '@craft/web/assets/login/dist'),
('5d414c67', '@app/web/assets/iframeresizer/dist'),
('5dc150b9', '@lib/d3'),
('5f5d0104', '@app/web/assets/datepickeri18n/dist'),
('5ff17bc8', '@app/web/assets/updates/dist'),
('60031564', '@app/web/assets/updater/dist'),
('60aa76b9', '@app/web/assets/editentry/dist'),
('62dbc4ce', '@lib/axios'),
('63833c92', '@craft/web/assets/utilities/dist'),
('65852cc4', '@lib/d3'),
('67b507b5', '@app/web/assets/updates/dist'),
('67da53f1', '@lib/velocity'),
('680c8487', '@lib/jquery-ui'),
('68d1f866', '@app/web/assets/recententries/dist'),
('6afbfb87', '@craft/web/assets/updates/dist'),
('6b200c95', '@lib/picturefill'),
('6bc525d5', '@app/web/assets/feed/dist'),
('6c843057', '@lib/jquery-touch-events'),
('6ca94a2d', '@craft/web/assets/deprecationerrors/dist'),
('6e023ade', '@lib/prismjs'),
('6e7c473f', '@lib/garnishjs'),
('6e7d170', '@craft/redactor/assets/redactor/dist'),
('6f88548d', '@app/web/assets/matrix/dist'),
('6fa9f9a2', '@app/web/assets/d3/dist'),
('7056475b', '@app/web/assets/updateswidget/dist'),
('70a52cfa', '@app/web/assets/utilities/dist'),
('71a2ca95', '@app/web/assets/login/dist'),
('71a5d6c', '@lib/selectize'),
('7232da8', '@craft/web/assets/d3/dist'),
('72d1a239', '@craft/web/assets/admintable/dist'),
('738c66d1', '@craft/web/assets/editentry/dist'),
('73c80d6b', '@lib/fileupload'),
('759cdfeb', '@app/web/assets/cp/dist'),
('7655a48c', '@bower/jquery/dist'),
('768d270', '@craft/web/assets/updateswidget/dist'),
('7848c8c4', '@app/web/assets/dashboard/dist'),
('798f42a5', '@app/web/assets/tablesettings/dist'),
('7b3a9301', '@lib/fabric'),
('7bfdfc19', '@lib/jquery.payment'),
('7e191a13', '@craft/web/assets/login/dist'),
('7ec4eb9a', '@app/web/assets/craftsupport/dist'),
('7f2fe68a', '@app/web/assets/fields/dist'),
('7f6b327c', '@lib/iframe-resizer'),
('7f7c9202', '@craft/web/assets/garnish/dist'),
('805cf829', '@app/web/assets/sites/dist'),
('80e820b7', '@lib/jquery-ui'),
('81748b75', '@lib/fileupload'),
('81e433d4', '@app/web/assets/fabric/dist'),
('8301faf5', '@app/web/assets/cp/dist'),
('83f26af9', '@craft/web/assets/feed/dist'),
('84a32bc0', '@craft/web/assets/craftsupport/dist'),
('84e4858', '@craft/web/assets/pluginstore/dist'),
('85a94d66', '@craft/web/assets/updater/dist'),
('8698e30f', '@lib/garnishjs'),
('873fef8b', '@app/web/assets/login/dist'),
('88e7b154', '@app/web/assets/updater/dist'),
('8a3f60fe', '@lib/axios'),
('8c6a0b39', '@craft/web/assets/recententries/dist'),
('8ca59c0d', '@craft/web/assets/login/dist'),
('8dd7b462', '@lib/iframe-resizer'),
('8f16e477', '@app/web/assets/admintable/dist'),
('8f51a385', '@app/web/assets/updates/dist'),
('8f83292', '@app/web/assets/editsection/dist'),
('903b553', '@app/web/assets/userpermissions/dist'),
('90ac6cf4', '@app/web/assets/dashboard/dist'),
('90d496d4', '@craft/web/assets/velocity/dist'),
('913fba8c', '@craft/web/assets/utilities/dist'),
('93506cc6', '@craft/web/assets/userpermissions/dist'),
('93de3731', '@lib/fabric'),
('93ebfae9', '@craft/redactor/assets/field/dist'),
('95104b01', '@craft/web/assets/jquerytouchevents/dist'),
('953ac74', '@app/web/assets/garnish/dist'),
('95439463', '@craft/web/assets/jquerypayment/dist'),
('95f1c032', '@app/web/assets/fieldsettings/dist'),
('96204faa', '@app/web/assets/craftsupport/dist'),
('9739aada', '@lib/d3'),
('98b2e36b', '@app/web/assets/updateswidget/dist'),
('9927a60c', '@app/web/assets/editsection/dist'),
('998e907', '@craft/web/assets/updates/dist'),
('999c8a8b', '@lib/picturefill'),
('9b12a970', '@lib/timepicker'),
('9b481da4', '@craft/web/assets/datepickeri18n/dist'),
('9e38b649', '@lib/jquery-touch-events'),
('9e4cdd78', '@app/web/assets/recententries/dist'),
('9e569106', '@craft/web/assets/plugins/dist'),
('9e62340', '@app/web/assets/pluginstore/dist'),
('9f90bff6', '@lib/vue'),
('9fd1193d', '@craft/web/assets/feed/dist'),
('a07dcba3', '@app/web/assets/pluginstore/dist'),
('a0c42479', '@craft/web/assets/craftsupport/dist'),
('a0f69f16', '@app/web/assets/updateswidget/dist'),
('a1d5a0bb', '@craft/web/assets/pluginstore/dist'),
('a2a0f3bd', '@craft/web/assets/xregexp/dist'),
('a368d526', '@lib/fileupload'),
('a484bd5c', '@lib/garnishjs'),
('a4edf105', '@lib/xregexp'),
('a5d2cb10', '@craft/web/assets/installer/dist'),
('a608a105', '@app/web/assets/recententries/dist'),
('a7d4c38b', '@lib/vue'),
('a8ae90c6', '@craft/web/assets/cp/dist'),
('a8c293b4', '@craft/web/assets/login/dist'),
('a9184ebd', '@craft/web/assets/picturefill/dist'),
('ab639d3a', '@craft/redactor/assets/redactor-plugins/dist/fullscreen'),
('acd3dee', '@lib/timepicker'),
('adb5bc4f', '@app/web/assets/fieldsettings/dist'),
('ae6433d7', '@app/web/assets/craftsupport/dist'),
('ae81b58f', '@lib/selectize'),
('afcbea31', '@lib/iframe-resizer'),
('b1c26962', '@lib/fabric'),
('b27b1c83', '@lib/axios'),
('b2d04957', '@craft/web/assets/updateswidget/dist'),
('b323e4df', '@craft/web/assets/utilities/dist'),
('b35e8b25', '@app/web/assets/velocity/dist'),
('b4e1e070', '@craft/web/assets/login/dist'),
('b525f489', '@lib/d3'),
('b69191a7', '@app/web/assets/dashboard/dist'),
('b7221293', '@lib/datepicker-i18n'),
('b8ac5cca', '@lib/jquery-ui'),
('bb458688', '@app/web/assets/cp/dist'),
('bb80d4d8', '@lib/picturefill'),
('bbb61684', '@craft/web/assets/feed/dist'),
('bbff1d0c', '@craft/web/assets/generalsettings/dist'),
('bc24e81a', '@lib/jquery-touch-events'),
('bce757bd', '@craft/web/assets/craftsupport/dist'),
('bf7b93f6', '@app/web/assets/login/dist'),
('bf936a0e', '@craft/web/assets/fieldsettings/dist'),
('c25ecd36', '@app/web/assets/feed/dist'),
('c2f5304f', '@craft/web/assets/dashboard/dist'),
('c3601364', '@craft/web/assets/updates/dist'),
('c3ed3fab', '@bower/jquery/dist'),
('c42241f', '@craft/web/assets/iframeresizer/dist'),
('c440fc1b', '@app/web/assets/jquerypayment/dist'),
('c60d2043', '@craft/web/assets/elementresizedetector/dist'),
('c78ee385', '@lib/xregexp'),
('c7daec30', '@app/web/assets/userpermissions/dist'),
('c7e7afdc', '@lib/garnishjs'),
('c81a9be7', '@lib/element-resize-detector'),
('c879455', '@app/web/assets/feed/dist'),
('c90aafbd', '@craft/web/assets/jqueryui/dist'),
('cb60887d', '@ether/seo/web/assets'),
('cbcd8246', '@craft/web/assets/cp/dist'),
('cbd0e524', '@app/web/assets/matrixsettings/dist'),
('cde2a70f', '@lib/selectize'),
('ce2eef56', '@app/web/assets/updates/dist'),
('ce41bb12', '@lib/velocity'),
('d04f3222', '@app/web/assets/deprecationerrors/dist'),
('d1d32027', '@app/web/assets/dashboard/dist'),
('d264b20f', '@craft/web/assets/fields/dist'),
('d26614fa', '@lib/jquery.payment'),
('d2a17be2', '@lib/fabric'),
('d3d1e7e1', '@app/web/assets/picturefill/dist'),
('d4410013', '@lib/datepicker-i18n'),
('d48fcdcb', '@app/web/assets/xregexp/dist'),
('d6b40e69', '@app/web/assets/fields/dist'),
('d7619e6', '@lib/xregexp'),
('d7717916', '@craft/web/assets/fileupload/dist'),
('d93ec419', '@app/web/assets/utilities/dist'),
('d9ff6a97', '@craft/ckeditor/assets/field/dist'),
('da178e32', '@craft/web/assets/editentry/dist'),
('db4a4ada', '@craft/web/assets/admintable/dist'),
('dc858897', '@app/web/assets/elementresizedetector/dist'),
('de1f2174', '@app/web/assets/edituser/dist'),
('df4360a0', '@craft/web/assets/updates/dist'),
('dfce4c6f', '@bower/jquery/dist'),
('e17ab864', '@app/web/assets/utilities/dist'),
('e21799f5', '@lib/fileupload'),
('e4f2b68', '@lib/vue'),
('e592bdd6', '@lib/xregexp'),
('e6923ff6', '@craft/web/assets/dashboard/dist'),
('e78a3012', '@bower/jquery/dist'),
('e7d08aca', '@app/web/assets/focusvisible/dist'),
('e85455f7', '@app/web/assets/admintable/dist'),
('e9d1dc15', '@craft/web/assets/cp/dist'),
('ea226887', '@lib/jquery.payment'),
('ea80b24c', '@app/web/assets/jqueryui/dist'),
('eab04610', '@craft/web/assets/upgrade/dist'),
('ec843a2f', '@craft/web/assets/sites/dist'),
('eeb4a6e2', '@lib/iframe-resizer'),
('effef95c', '@lib/selectize'),
('f05ee79a', '@lib/element-resize-detector'),
('f175e227', '@app/web/assets/editentry/dist'),
('f25ca80c', '@craft/web/assets/utilities/dist'),
('f3949959', '@app/web/assets/matrixsettings/dist'),
('f45ab85a', '@lib/d3'),
('f45adcb4', '@app/web/assets/plugins/dist'),
('f5bf522c', '@craft/web/assets/queuemanager/dist'),
('f605c76f', '@lib/velocity'),
('f65d5e40', '@lib/datepicker-i18n'),
('f8475c66', '@app/web/assets/axios/dist'),
('f9349e6', '@app/web/assets/recententries/dist'),
('fa1ab14b', '@app/web/assets/feed/dist'),
('fa76007a', '@craft/web/assets/tablesettings/dist'),
('fa877c75', '@craft/web/assets/matrix/dist'),
('fab14c32', '@craft/web/assets/dashboard/dist'),
('faff980b', '@lib/picturefill'),
('fb0c19a9', '@app/web/assets/jquerytouchevents/dist'),
('fb246f19', '@craft/web/assets/updates/dist'),
('fd5ba4c9', '@lib/jquery-touch-events'),
('fe57c013', '@app/web/assets/matrix/dist'),
('fed3cb83', '@app/web/assets/vue/dist'),
('ffddae40', '@lib/prismjs');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `revisions`
--

CREATE TABLE `revisions` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `revisions`
--

INSERT INTO `revisions` (`id`, `sourceId`, `creatorId`, `num`, `notes`) VALUES
(1, 4, 1, 1, ''),
(2, 4, 1, 2, '“Concept 1” toegepast'),
(3, 4, 1, 3, ''),
(4, 10, 1, 1, NULL),
(5, 10, 1, 2, NULL),
(6, 10, 1, 3, '“Concept 1” toegepast'),
(7, 10, 1, 4, '“Concept 1” toegepast'),
(8, 10, 1, 5, ''),
(9, 10, 1, 6, NULL),
(10, 10, 1, 7, ''),
(11, 10, 1, 8, NULL),
(12, 10, 1, 9, NULL),
(13, 22, 1, 1, NULL),
(14, 22, 1, 2, '“Concept 1” toegepast'),
(15, 22, 1, 3, NULL),
(16, 22, 1, 4, NULL),
(17, 4, 1, 4, '“Concept 1” toegepast'),
(18, 30, 1, 1, NULL),
(19, 32, 1, 1, NULL),
(20, 34, 1, 1, NULL),
(21, 30, 1, 2, '“Concept 1” toegepast'),
(22, 32, 1, 2, '“Concept 1” toegepast'),
(23, 34, 1, 2, '“Concept 1” toegepast'),
(24, 42, 1, 1, ''),
(25, 42, 1, 2, '“Concept 1” toegepast'),
(26, 42, 1, 3, '“Concept 1” toegepast'),
(27, 42, 1, 4, ''),
(28, 42, 1, 5, '“Concept 1” toegepast'),
(29, 42, 1, 6, '“Concept 1” toegepast'),
(30, 42, 1, 7, '“Concept 1” toegepast'),
(31, 42, 1, 8, '“Concept 1” toegepast'),
(32, 42, 1, 9, '“Concept 1” toegepast'),
(33, 42, 1, 10, '“Concept 1” toegepast'),
(34, 42, 1, 11, '“Concept 1” toegepast'),
(35, 42, 1, 12, '“Concept 1” toegepast'),
(36, 42, 1, 13, '“Concept 1” toegepast'),
(37, 42, 1, 14, '“Concept 1” toegepast'),
(38, 10, 1, 10, NULL),
(39, 10, 1, 11, NULL),
(40, 170, 1, 1, ''),
(41, 172, 1, 1, ''),
(42, 170, 1, 2, '“Concept 1” toegepast'),
(43, 170, 1, 3, '“Concept 1” toegepast'),
(44, 170, 1, 4, '“Concept 1” toegepast'),
(45, 170, 1, 5, '“Concept 1” toegepast'),
(46, 22, 1, 5, ''),
(47, 22, 1, 6, NULL),
(48, 22, 1, 7, NULL),
(49, 22, 1, 8, '“Concept 1” toegepast'),
(50, 22, 1, 9, NULL),
(51, 22, 1, 10, ''),
(52, 170, 1, 6, '“Concept 1” toegepast'),
(53, 170, 1, 7, '“Concept 1” toegepast'),
(54, 170, 1, 8, '“Concept 1” toegepast'),
(55, 170, 1, 9, ''),
(56, 22, 1, 11, NULL),
(57, 22, 1, 12, NULL),
(58, 22, 1, 13, '“Concept 1” toegepast');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `searchindex`
--

CREATE TABLE `searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `searchindex`
--

INSERT INTO `searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'username', 0, 1, ' paniek '),
(1, 'lastname', 0, 1, ''),
(1, 'firstname', 0, 1, ''),
(2, 'slug', 0, 1, ' temp oopszpfymblrxbprfotagkerhafapfiyzewo '),
(2, 'title', 0, 1, ''),
(3, 'slug', 0, 1, ' temp ylivjjkvdwdyjfdljypjwfyoklacdqexrfqm '),
(3, 'title', 0, 1, ''),
(4, 'slug', 0, 1, ' the simplest math problem no one can solve collatz conjecture '),
(4, 'title', 0, 1, ' the simplest math problem no one can solve collatz conjecture '),
(6, 'filename', 0, 1, ' thumnail jpeg '),
(6, 'extension', 0, 1, ' jpeg '),
(6, 'kind', 0, 1, ' image '),
(6, 'slug', 0, 1, ''),
(6, 'title', 0, 1, ' thumnail '),
(10, 'slug', 0, 1, ' homepage '),
(10, 'title', 0, 1, ' homepage '),
(22, 'title', 0, 1, ' navbar '),
(22, 'slug', 0, 1, ' navbar '),
(30, 'title', 0, 1, ' the simplest math problem no one can solve collatz conjecture '),
(30, 'slug', 0, 1, ' the simplest math problem no one can solve collatz conjecture 2 '),
(32, 'title', 0, 1, ' the simplest math problem no one can solve collatz conjecture '),
(32, 'slug', 0, 1, ' the simplest math problem no one can solve collatz conjecture 3 '),
(34, 'title', 0, 1, ' the simplest math problem no one can solve collatz conjecture '),
(34, 'slug', 0, 1, ' the simplest math problem no one can solve collatz conjecture 2 2 '),
(42, 'title', 0, 1, ' what is not random '),
(42, 'slug', 0, 1, ' what is not random '),
(87, 'slug', 0, 1, ''),
(88, 'slug', 0, 1, ''),
(89, 'filename', 0, 1, ' sddefault jpeg '),
(89, 'extension', 0, 1, ' jpeg '),
(89, 'kind', 0, 1, ' image '),
(89, 'slug', 0, 1, ''),
(89, 'title', 0, 1, ' sddefault '),
(91, 'slug', 0, 1, ''),
(92, 'slug', 0, 1, ''),
(97, 'slug', 0, 1, ''),
(98, 'slug', 0, 1, ''),
(103, 'slug', 0, 1, ''),
(104, 'slug', 0, 1, ''),
(106, 'slug', 0, 1, ''),
(107, 'slug', 0, 1, ''),
(112, 'slug', 0, 1, ''),
(113, 'slug', 0, 1, ''),
(118, 'slug', 0, 1, ''),
(119, 'slug', 0, 1, ''),
(124, 'slug', 0, 1, ''),
(125, 'slug', 0, 1, ''),
(130, 'slug', 0, 1, ''),
(131, 'slug', 0, 1, ''),
(136, 'slug', 0, 1, ''),
(137, 'slug', 0, 1, ''),
(142, 'slug', 0, 1, ''),
(143, 'slug', 0, 1, ''),
(148, 'slug', 0, 1, ''),
(149, 'slug', 0, 1, ''),
(154, 'slug', 0, 1, ''),
(155, 'slug', 0, 1, ''),
(161, 'slug', 0, 1, ''),
(166, 'slug', 0, 1, ''),
(167, 'slug', 0, 1, ''),
(160, 'slug', 0, 1, ''),
(170, 'title', 0, 1, ' about '),
(170, 'slug', 0, 1, ' about '),
(172, 'title', 0, 1, ' contact '),
(172, 'slug', 0, 1, ' contact '),
(211, 'slug', 0, 1, ''),
(212, 'slug', 0, 1, ''),
(214, 'slug', 0, 1, ''),
(215, 'slug', 0, 1, ''),
(220, 'slug', 0, 1, ''),
(221, 'slug', 0, 1, ''),
(222, 'title', 0, 1, ' what is not random '),
(222, 'slug', 0, 1, ' what is not random '),
(223, 'slug', 0, 1, ''),
(224, 'slug', 0, 1, ''),
(229, 'slug', 0, 1, ''),
(230, 'slug', 0, 1, ''),
(232, 'slug', 0, 1, ''),
(233, 'slug', 0, 1, ''),
(234, 'title', 0, 1, ' contact '),
(234, 'slug', 0, 1, ' contact '),
(235, 'slug', 0, 1, ''),
(236, 'slug', 0, 1, ' temp tdgubwdfshmuedwmmkecpkladmfkvqozymqa '),
(238, 'slug', 0, 1, ''),
(239, 'slug', 0, 1, ''),
(236, 'title', 0, 1, ''),
(282, 'slug', 0, 1, ''),
(283, 'slug', 0, 1, ''),
(284, 'slug', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'email', 0, 1, ' pjotrw15 gmail com '),
(1, 'slug', 0, 1, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT 0,
  `propagationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `defaultPlacement` enum('beginning','end') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'end',
  `previewTargets` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `sections`
--

INSERT INTO `sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `defaultPlacement`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'blogpost', 'blogpost', 'channel', 1, 'all', 'end', NULL, '2021-09-06 11:24:27', '2021-09-06 11:24:27', NULL, 'ec1302f0-657a-4e1d-a46c-9918baf86e4e'),
(2, NULL, 'Homepage', 'homepage', 'single', 1, 'all', 'end', '[{\"label\":\"Primaire invoer-pagina\",\"urlFormat\":\"{url}\",\"refresh\":\"1\"}]', '2021-09-06 13:11:08', '2021-09-08 07:16:03', NULL, '364d4330-d412-40f3-99b9-8a3dd6a2d954'),
(3, NULL, 'navbar', 'navbar', 'single', 1, 'all', 'end', '[{\"label\":\"Primaire invoer-pagina\",\"urlFormat\":\"{url}\",\"refresh\":\"1\"}]', '2021-09-06 14:38:41', '2021-09-08 10:06:50', NULL, 'b94e9ccf-1f7c-4952-87b0-2514213a3b78'),
(4, 1, 'About', 'about', 'structure', 1, 'all', 'end', '[{\"label\":\"Primaire invoer-pagina\",\"urlFormat\":\"{url}\",\"refresh\":\"1\"}]', '2021-09-08 08:06:35', '2021-09-08 08:06:35', NULL, '73bb7483-e2a7-45c4-abcf-4df7bb6c3d20');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sections_sites`
--

CREATE TABLE `sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `uriFormat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `sections_sites`
--

INSERT INTO `sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, 'blogpost/{slug}', 'blogpost/_entry', 1, '2021-09-06 11:24:27', '2021-09-06 11:24:27', 'fc120a27-baf4-4f19-98fe-764ee3ca474e'),
(2, 2, 1, 1, '__home__', 'index', 1, '2021-09-06 13:11:08', '2021-09-06 14:37:12', '78706ecf-0f0f-49d6-99b6-4ee7b2777858'),
(3, 3, 1, 1, '_layouts/main', '_layouts/main', 1, '2021-09-06 14:38:41', '2021-09-08 10:12:10', '9f9b8655-4e66-4366-bea9-6165a68c3c5a'),
(4, 4, 1, 1, '{parent.uri}/{slug}', 'about/_entry', 1, '2021-09-08 08:06:35', '2021-09-09 10:03:17', '84f3de1c-283b-4c21-8eb4-fef74d29bfbd');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `seo_redirects`
--

CREATE TABLE `seo_redirects` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('301','302') COLLATE utf8_unicode_ci NOT NULL,
  `siteId` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `seo_sitemap`
--

CREATE TABLE `seo_sitemap` (
  `id` int(11) NOT NULL,
  `group` enum('sections','categories','productTypes','customUrls') COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `frequency` enum('always','hourly','daily','weekly','monthly','yearly','never') COLLATE utf8_unicode_ci NOT NULL,
  `priority` float NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sequences`
--

CREATE TABLE `sequences` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `sessions`
--

INSERT INTO `sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'jWg928cl0qeQJq5cnfKiNkTFfoFk-nWi_auZ6tsC9xN5aIIUORMp4QwN-5MvKZ1c5-_YJZHmqpCLz5cOvscTekx03k2HRvgRxHdF', '2022-04-21 15:41:50', '2022-04-21 15:54:47', 'f21dea26-9d14-412a-bc5b-381a61af1359'),
(2, 1, 'DyszqbbCHI29eZrmPT5L2uesjkuLX8zdbp8z6jUYsS16kdqOHrMPog5b2s6ULQFi1hBt70I6y5NUGoJRY-kf6f91oNyP8xFfpceG', '2022-10-18 12:35:42', '2022-10-18 12:47:01', 'd9820839-f007-4fbf-b085-525b24bb4628');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `shunnedmessages`
--

CREATE TABLE `shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sitegroups`
--

CREATE TABLE `sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `sitegroups`
--

INSERT INTO `sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Blog', '2021-09-06 10:09:22', '2022-04-21 15:52:38', NULL, '7ce16e90-1108-4637-ae34-135db25fef4e');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 0,
  `baseUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `sites`
--

INSERT INTO `sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 1, 'Blog', 'default', 'nl', 1, '$PRIMARY_SITE_URL', 1, '2021-09-06 10:09:22', '2022-04-21 15:51:35', NULL, '1a7ded85-cd10-4685-8696-21042404ec46');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `structureelements`
--

CREATE TABLE `structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `structureelements`
--

INSERT INTO `structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, 1, 1, 28, 0, '2021-09-08 09:02:45', '2021-09-09 11:45:10', '26487885-2cb6-4c5f-a469-69e95db56822'),
(2, 1, 170, 1, 16, 21, 1, '2021-09-08 09:02:45', '2021-09-09 11:45:10', 'bfb9b33a-0568-421a-9b32-1cb8be9c36af'),
(3, 1, 171, 1, 24, 25, 1, '2021-09-08 09:02:58', '2021-09-09 11:45:10', '3da547f7-fd78-44bc-b2ab-faae3527ecd6'),
(4, 1, 172, 1, 17, 18, 2, '2021-09-08 09:03:03', '2021-09-08 14:58:53', '17cfbc81-4704-4e0a-81dd-235c89fbd7e1'),
(5, 1, 173, 1, 26, 27, 1, '2021-09-08 09:17:39', '2021-09-09 11:45:10', 'bec147e7-33a6-41cf-931b-8007de784d1e'),
(7, 1, 175, 1, 2, 3, 1, '2021-09-08 09:23:36', '2021-09-08 09:23:36', '914f736e-8c6a-4081-b714-07d87ecddd0f'),
(9, 1, 177, 1, 4, 5, 1, '2021-09-08 10:00:44', '2021-09-08 10:00:44', '37827458-49f5-4c0d-8ac4-40554da52bc2'),
(11, 1, 179, 1, 6, 7, 1, '2021-09-08 10:02:20', '2021-09-08 10:02:20', '51e0a2f9-24c5-4ed0-9054-76f08169b08a'),
(13, 1, 181, 1, 8, 9, 1, '2021-09-08 10:02:49', '2021-09-08 10:02:49', '24e848a2-62a1-4574-9f07-7f17af9cb498'),
(14, 2, NULL, 14, 1, 20, 0, '2021-09-08 10:06:45', '2021-09-10 14:53:14', 'd8b97337-698d-4734-8299-904751b4096d'),
(15, 2, 22, 14, 6, 7, 1, '2021-09-08 10:06:45', '2021-09-10 14:53:14', '52eee94d-7a29-4a97-b3d9-10dee5ddd6be'),
(16, 2, 183, 14, 18, 19, 1, '2021-09-08 10:06:50', '2021-09-10 14:53:14', '53159270-3757-46fe-b792-fd7126ddd1ec'),
(17, 2, 184, 14, 16, 17, 1, '2021-09-08 10:06:51', '2021-09-10 14:53:14', '7f5e9f92-0d02-4daa-8eed-e8ccbc32611a'),
(19, 2, 186, 14, 2, 3, 1, '2021-09-08 10:07:03', '2021-09-08 10:07:03', '93ca5576-d4df-4f5c-8125-f7b6c2e60e6d'),
(20, 2, 187, 14, 14, 15, 1, '2021-09-08 10:12:10', '2021-09-10 14:53:14', '34e24cc4-90fa-401d-a473-1d6a4aaf4bae'),
(21, 2, 188, 14, 12, 13, 1, '2021-09-08 10:14:18', '2021-09-10 14:53:14', '9b41d039-98c2-409c-ac9e-22f6d17e49aa'),
(23, 1, 213, 1, 10, 11, 1, '2021-09-08 14:53:31', '2021-09-08 14:53:31', '34fb6998-d0ea-401d-8474-6477535144e3'),
(25, 1, 219, 1, 12, 13, 1, '2021-09-08 14:54:55', '2021-09-08 14:54:55', 'a5bb6d84-940b-4dd9-86d0-162d0dc08cff'),
(27, 1, 228, 1, 14, 15, 1, '2021-09-08 14:58:53', '2021-09-08 14:58:53', 'cbd11d84-b076-46a2-9d1a-c5810caaff6e'),
(28, 1, 231, 1, 22, 23, 1, '2021-09-08 15:25:14', '2021-09-09 11:45:10', '68ab0363-f4a3-439d-a69d-14e91a21c4b6'),
(29, 1, 234, 1, 19, 20, 2, '2021-09-09 11:45:10', '2021-09-09 11:45:10', 'fe37e35e-30e6-4e4d-a437-b20e0b48541f'),
(30, 2, 240, 14, 10, 11, 1, '2021-09-10 14:49:17', '2021-09-10 14:53:14', '27728795-5356-4320-89db-b14a8f54db22'),
(31, 2, 241, 14, 8, 9, 1, '2021-09-10 14:49:24', '2021-09-10 14:53:14', '1240502c-6390-4315-bfc1-23ff8ca5bad5'),
(33, 2, 285, 14, 4, 5, 1, '2021-09-10 14:53:13', '2021-09-10 14:53:13', 'cd68b274-ccb2-4c35-9505-961e583a7dd5');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `structures`
--

CREATE TABLE `structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `structures`
--

INSERT INTO `structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, '2021-09-08 08:06:35', '2021-09-08 08:07:07', NULL, '80d3d7ea-cc89-4dfe-a7dc-8a136b2a668b'),
(2, NULL, '2021-09-08 10:06:45', '2021-09-08 10:06:45', NULL, 'c69b6e3b-881d-442a-8efc-cc71edba0ac2');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `supertableblocks`
--

CREATE TABLE `supertableblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `supertableblocktypes`
--

CREATE TABLE `supertableblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `systemmessages`
--

CREATE TABLE `systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `taggroups`
--

CREATE TABLE `taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `templatecacheelements`
--

CREATE TABLE `templatecacheelements` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `templatecachequeries`
--

CREATE TABLE `templatecachequeries` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `templatecaches`
--

CREATE TABLE `templatecaches` (
  `id` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `usergroups_users`
--

CREATE TABLE `usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `userpermissions`
--

CREATE TABLE `userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `userpermissions`
--

INSERT INTO `userpermissions` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'saveassetinvolume:3b49d805-1ae4-41ab-ad93-00de8e3a56c3', '2021-09-17 15:13:34', '2021-09-17 15:13:34', '649b71e8-4d4e-4699-af14-400e6e018c01'),
(2, 'viewvolume:3b49d805-1ae4-41ab-ad93-00de8e3a56c3', '2021-09-17 15:13:34', '2021-09-17 15:13:34', '2e1b5833-80f0-494f-b794-6c16eeb0786a');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `userpermissions_usergroups`
--

CREATE TABLE `userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `userpermissions_users`
--

CREATE TABLE `userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `userpreferences`
--

CREATE TABLE `userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `userpreferences`
--

INSERT INTO `userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"nl\",\"locale\":null,\"weekStartDay\":\"1\",\"alwaysShowFocusRings\":false,\"useShapes\":false,\"underlineLinks\":false,\"showFieldHandles\":false,\"enableDebugToolbarForSite\":false,\"enableDebugToolbarForCp\":false,\"showExceptionView\":false,\"profileTemplates\":false}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `pending` tinyint(1) NOT NULL DEFAULT 0,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT 0,
  `verificationCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT 0,
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Paniek', NULL, '', '', 'pjotrw15@gmail.com', '$2y$13$YIYswYd8mFKEoE/Yj7D2Yu4Y9kf6FWg26iMuwZKe09WBd0q3Hi516', 1, 0, 0, 0, '2022-10-18 12:35:42', NULL, NULL, NULL, '2022-10-18 12:30:15', NULL, 1, NULL, NULL, NULL, 0, '2022-04-21 15:42:48', '2021-09-06 10:09:24', '2022-10-18 12:35:42', 'e3aecde8-a6e4-4fd1-b509-3ae4771c72f1');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `volumefolders`
--

CREATE TABLE `volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `volumefolders`
--

INSERT INTO `volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'images', '', '2021-09-06 10:38:56', '2021-09-06 10:38:56', 'a0dc6d7e-0778-473f-bd54-2c3eda4a8ee5'),
(2, NULL, NULL, 'Tijdelijke bron', NULL, '2021-09-06 11:42:34', '2021-09-06 11:42:34', '22f890d5-ab24-477f-b722-943d2744285e'),
(3, 2, NULL, 'user_1', 'user_1/', '2021-09-06 11:42:34', '2021-09-06 11:42:34', '03ac6262-3238-4cf8-9254-1c4af13800c8');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `volumes`
--

CREATE TABLE `volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleTranslationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `volumes`
--

INSERT INTO `volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `type`, `hasUrls`, `url`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `settings`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 'images', 'images', 'craft\\volumes\\Local', 1, '//blogsite.local/images/', 'site', NULL, '{\"path\":\"/Users/pjotr/Sites/blogsite/craft/web/images\"}', 1, '2021-09-06 10:38:56', '2021-09-06 10:38:56', NULL, '3b49d805-1ae4-41ab-ad93-00de8e3a56c3');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `widgets`
--

INSERT INTO `widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"siteId\":1,\"section\":\"*\",\"limit\":10}', 1, '2021-09-06 10:09:26', '2021-09-06 10:09:26', '68230fca-9e58-46d4-99c8-d81bb2281960'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2021-09-06 10:09:26', '2021-09-06 10:09:26', 'cac01f3f-6651-479b-ac4f-287232506cef'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2021-09-06 10:09:26', '2021-09-06 10:09:26', 'c14d2f49-c820-4cc2-930d-c54fb008f6be'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2021-09-06 10:09:26', '2021-09-06 10:09:26', '8af62bec-7a3b-42d9-867d-0946bf2b5a15');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hrcrlkeagspxfedzdmltaequwayznkisitsp` (`userId`,`unread`,`dateRead`,`dateCreated`),
  ADD KEY `idx_gbcchyrhapxzbiuoiiqlcrtdwaxdiuseadzw` (`dateRead`),
  ADD KEY `fk_ejbpebmnuspnsompqduhijjkqsaaepigmlbs` (`pluginId`);

--
-- Indexen voor tabel `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rlikypmorxpyaijszuuspniptfbavdashrxa` (`sessionId`,`volumeId`),
  ADD KEY `idx_ncpntsksxibmmtqanulzuryzamozaaitazud` (`volumeId`);

--
-- Indexen voor tabel `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_zaygcqumnloeybxpijqjrbxwyztfungewdcb` (`filename`,`folderId`),
  ADD KEY `idx_dncdffohngqfsiqavtsmrefcudttpefbupvk` (`folderId`),
  ADD KEY `idx_bzgzxljwtevopsoubopgwoqqhapfribmfzis` (`volumeId`),
  ADD KEY `fk_eyeqmwxhxfpdpthlvrrousxhlgrdrgvvxptj` (`uploaderId`);

--
-- Indexen voor tabel `assettransformindex`
--
ALTER TABLE `assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ljjhmkcbcfphvjdhbuokmwgxkgixzbkvmjwq` (`volumeId`,`assetId`,`location`),
  ADD KEY `idx_hxlzzsogjhuljmrlixndsdquuatbtrdjqkle` (`assetId`,`format`,`location`);

--
-- Indexen voor tabel `assettransforms`
--
ALTER TABLE `assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_gmumynqanlnbgnmixwjwajfvmoumzabdfofc` (`name`),
  ADD KEY `idx_lnogouczdxgrtifypptdeunwawsitczxpyku` (`handle`);

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_akgprurhhltdsfdzxphclblebjhzfwnkixyr` (`groupId`),
  ADD KEY `fk_uhhhajgoadcqblanvuxeikxdbezjlzpltzym` (`parentId`);

--
-- Indexen voor tabel `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rmnhbvwpmrbflbxcncstgyljywilgaxugrye` (`name`),
  ADD KEY `idx_wpzqadxzrnysdsaztaamfovprqlpgruwzpyh` (`handle`),
  ADD KEY `idx_btfonqhrnuqnqxsvakyhapoptkdsprangxmc` (`structureId`),
  ADD KEY `idx_nnttfqowgvhxodkwblbktbpplbtcscevjapb` (`fieldLayoutId`),
  ADD KEY `idx_qpbnutcywtuojxsflbcivshmfchufmfpfcvs` (`dateDeleted`);

--
-- Indexen voor tabel `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_wbovbnqalvbtkrwahegmzlakpmkqdtlndmvw` (`groupId`,`siteId`),
  ADD KEY `idx_hefkzbtqxluxaltiuovziyxqbjhrnoovihtq` (`siteId`);

--
-- Indexen voor tabel `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  ADD KEY `idx_noqcewdtyqwccwxkqhyeezqbxyvrlajjcaij` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_umsvpoxhtpsajhxmhulijgsomvfblfbhfktj` (`siteId`),
  ADD KEY `fk_uqyriseyxcsktwjwngegdaagksquykzuvqad` (`userId`);

--
-- Indexen voor tabel `changedfields`
--
ALTER TABLE `changedfields`
  ADD PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  ADD KEY `idx_hewhnqatwkfjmroyofmlxghmioxnpzumgdfl` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_vfvygrylxyulbprbdojtgbcbfkysdchjdsrl` (`siteId`),
  ADD KEY `fk_jtqaqidjpcfebrjrftgykbwqsvpwayrsmygm` (`fieldId`),
  ADD KEY `fk_zdcippsvvjlgqcaollogwbnrukjkebqsgzmk` (`userId`);

--
-- Indexen voor tabel `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_gkfueqgyajnklqtbsoosrzsollcmyvailetq` (`elementId`,`siteId`),
  ADD KEY `idx_rdciwldzdexlooudnnnwvshvzicegndescli` (`siteId`),
  ADD KEY `idx_wmbwonwbabscqrpoarkcrbrlpxkjufchmaqx` (`title`);

--
-- Indexen voor tabel `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kkulkldiouyrbgkdzkxlmyqjoohfuqddyujl` (`userId`);

--
-- Indexen voor tabel `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_uolizemvoohtfnapzfffswmzeemouxurgsyp` (`key`,`fingerprint`);

--
-- Indexen voor tabel `drafts`
--
ALTER TABLE `drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uheiapevdhdvyqjnhkngdnosxhdewrxccgoc` (`creatorId`,`provisional`),
  ADD KEY `idx_ukuovtnsdkjtqtlgtcyuizqorhffxxxhhzik` (`saved`),
  ADD KEY `fk_ivjgjnqiqmqysojqfwznmztocljnlbyhhltb` (`sourceId`);

--
-- Indexen voor tabel `elementindexsettings`
--
ALTER TABLE `elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ldaxffvhiowsgyqcqooojybhzpangfdtpvsk` (`type`);

--
-- Indexen voor tabel `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uxnjwdmmplzasfqldhqolquevqcgbdvajwjn` (`dateDeleted`),
  ADD KEY `idx_nbmifjflapbmrftipdpzizyebxwxpuatjjul` (`fieldLayoutId`),
  ADD KEY `idx_wakvrzhdtyjgnfowgchaocganwoafyvcrerq` (`type`),
  ADD KEY `idx_uqqhudhmzwooxaeppxdfpatcdjkmctaximup` (`enabled`),
  ADD KEY `idx_fjuqmxivfvcwpowhbdgbohgsfkjirejoatwz` (`archived`,`dateCreated`),
  ADD KEY `idx_ywlaepadcnpmbpxkgisszathnzdyagnaqpiv` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`),
  ADD KEY `fk_hefulrtxelwspukaseofdnoztgjxhyjkyspu` (`canonicalId`),
  ADD KEY `fk_xmcmtwwoqwfzgpjbsqyjlvxgroepgnwkhyjw` (`draftId`),
  ADD KEY `fk_szuwldkqlhzzqxotjlvyatxqxrzncbvtbldr` (`revisionId`),
  ADD KEY `idx_prpfjaoffqhsbcgrvihadcencwqyfjrxeclk` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`,`enabled`);

--
-- Indexen voor tabel `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_mgrzwfabmmtgyoaupusqqsussndmhufoezjp` (`elementId`,`siteId`),
  ADD KEY `idx_bdryvefjnusvpidqmxynpdpuugmwicjpclne` (`siteId`),
  ADD KEY `idx_wviuwvzdckrqvvnefftrkzoohjvdmwzcyzmz` (`slug`,`siteId`),
  ADD KEY `idx_jezpudjppbrnoobvmlpgydyahvfmdehrrfrv` (`enabled`),
  ADD KEY `idx_syachsxxtgpfsrmaycrumhhpfoxfrjvukhxm` (`uri`,`siteId`);

--
-- Indexen voor tabel `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bqkdfdbdczrjqvffnaavoxizaowldfidnsbd` (`postDate`),
  ADD KEY `idx_ducyrpwbipykqtoiipmzijcqemkkseyirfsm` (`expiryDate`),
  ADD KEY `idx_qedbkljgbrjcdlwnbcqtxvpcislbfoemomzu` (`authorId`),
  ADD KEY `idx_wilqmbgzugmotrqbijuwmwtlbrddbelkclmx` (`sectionId`),
  ADD KEY `idx_ffqdcwfvqbzoyeidoorrwzengclvjsqrgqbu` (`typeId`),
  ADD KEY `fk_mpjjiulwpktbkmwgwhyrocxdaqneugvolttv` (`parentId`);

--
-- Indexen voor tabel `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_gpqkqnisvhpxvzlkaxhexdggckmxvsmfrdun` (`name`,`sectionId`),
  ADD KEY `idx_xqyitwgpidpxllolgqjmotfkipgtyvkfbfyi` (`handle`,`sectionId`),
  ADD KEY `idx_rxpijzoeesvnwjhgzzlulhrrjwkezjkumlrd` (`sectionId`),
  ADD KEY `idx_zhenpcyiqkirievuwlmbxxvxdhjpynynfalr` (`fieldLayoutId`),
  ADD KEY `idx_hcrmsbllnmsekrbxvsllfqozlrqidfmpmfwi` (`dateDeleted`);

--
-- Indexen voor tabel `fieldgroups`
--
ALTER TABLE `fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rsukrqabakvbzrphykvmtcptbdfnmzynievg` (`name`),
  ADD KEY `idx_vrjrvfgyuqvmnspmuygbpudayphxygkippvl` (`dateDeleted`,`name`);

--
-- Indexen voor tabel `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ojczwkoqbuzejcmpsvdqrraxmrcwapwyyhaz` (`layoutId`,`fieldId`),
  ADD KEY `idx_tbdnhwdlceqzjtrwesyskhumumvwcnazqstk` (`sortOrder`),
  ADD KEY `idx_apvrlliaehunaopmkenmsxygagrupvzhaaol` (`tabId`),
  ADD KEY `idx_rbluyolizumuftljxhccgtgiszlijynshtmq` (`fieldId`);

--
-- Indexen voor tabel `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_xmnevslgvxixkhlahcunanavgmipzjxdsgqk` (`dateDeleted`),
  ADD KEY `idx_guwybpimhqdbhxagovyouayldmojczfsgbdl` (`type`);

--
-- Indexen voor tabel `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_baylfuinkaondgrxjhdekmbovwvuwrxmpsqy` (`sortOrder`),
  ADD KEY `idx_walvgtdjhbsuomckurfzomdkvetdnvzliqiu` (`layoutId`);

--
-- Indexen voor tabel `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ftdpyhpfftqctsixbkchlhidtfvqfrrphymi` (`handle`,`context`),
  ADD KEY `idx_lilqqzbgtjeshlbngpffmczlfjtuesyazcrb` (`groupId`),
  ADD KEY `idx_swciosmvbzvyovhqjkdlqumlsyfjcwgmidst` (`context`);

--
-- Indexen voor tabel `globalsets`
--
ALTER TABLE `globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leajibejqttwnjzruxylxuqmfumsuhrpexmy` (`name`),
  ADD KEY `idx_mnquzbslnuddyfnaxlrodxlufsathwlzppsj` (`handle`),
  ADD KEY `idx_tekzsiyxpigwhsqqllqoqqvsrmuajytdyzir` (`fieldLayoutId`),
  ADD KEY `idx_yqxojolyahwmubhhdfnkrlctekejqfguwdnb` (`sortOrder`);

--
-- Indexen voor tabel `gqlschemas`
--
ALTER TABLE `gqlschemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_amumwbrdnrliqvqyokqquetdqqtpuaxwlwlj` (`accessToken`),
  ADD UNIQUE KEY `idx_jcsomijfeisnmwknqgscfqisjpdjxifcutyd` (`name`),
  ADD KEY `fk_estymnsgbnlvzxttoatguwjzlillrvkubuqb` (`schemaId`);

--
-- Indexen voor tabel `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sicjngioggirdtubhastttigqbmcxygrprij` (`ownerId`),
  ADD KEY `idx_foipajrkmsedjlnhubtdoprmewtlslkedlhz` (`fieldId`),
  ADD KEY `idx_orfhtgxwrgivxulzuxagjseikmtzuwjddgew` (`typeId`),
  ADD KEY `idx_onvknuljzzpibetwiovaijlsnddcvruwgaja` (`sortOrder`);

--
-- Indexen voor tabel `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_enhnjepgihseqjkylkorgytswwtnyoheupsk` (`name`,`fieldId`),
  ADD KEY `idx_afpqunnfsoroqlhnjuvmpvykrzwsqhbcgeqg` (`handle`,`fieldId`),
  ADD KEY `idx_jegfscfjopkfaduowbkeeqitamffhgimnxxt` (`fieldId`),
  ADD KEY `idx_owlkfqkzcusyjzvcwyppeurmiybzfqpwqmly` (`fieldLayoutId`);

--
-- Indexen voor tabel `matrixcontent_about`
--
ALTER TABLE `matrixcontent_about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_hewpjfsrgfctjhekjajdpwegfqiabbacesie` (`elementId`,`siteId`),
  ADD KEY `fk_jbhlnrgddukzxxpijbtpiaykbpmbbanrhmrw` (`siteId`);

--
-- Indexen voor tabel `matrixcontent_inhoudzelf`
--
ALTER TABLE `matrixcontent_inhoudzelf`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_wlrssfybezzfsfjxhoutiikqnpremqwotbcj` (`elementId`,`siteId`),
  ADD KEY `fk_vfhxeozebcyyxdwhapurpppwjbbcgbyvlhvp` (`siteId`);

--
-- Indexen voor tabel `matrixcontent_navbarfield`
--
ALTER TABLE `matrixcontent_navbarfield`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_nttoadovvbgscvgludodssnncrrpychzebbu` (`elementId`,`siteId`),
  ADD KEY `fk_pstbrjkfguztqlmlmybjsftxpaitmlxuxyqy` (`siteId`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_atbtvlhdwgbvmpvclkktetobnspzfqciadfk` (`track`,`name`);

--
-- Indexen voor tabel `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_smzmzalebnnvdsvxxjwdfbmciflluapvzyke` (`handle`);

--
-- Indexen voor tabel `projectconfig`
--
ALTER TABLE `projectconfig`
  ADD PRIMARY KEY (`path`);

--
-- Indexen voor tabel `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ouaberatackqidnmtzmfngmrvgvvxqbgeqpy` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `idx_qxmhicqlsdmwmikhworfwnogbngeyshdgrfg` (`channel`,`fail`,`timeUpdated`,`delay`);

--
-- Indexen voor tabel `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_oubtylbkesqnyuchndvueyrexamtvhgqxikb` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `idx_mxzhjufjlxwbhaqgkcwwhilhvrtzewkwnbcs` (`sourceId`),
  ADD KEY `idx_pmywceznrkpxpjomeanraukpegbmwkthfhda` (`targetId`),
  ADD KEY `idx_tgppjmleqxgcvpwtlznfrxkoinmonupxjtky` (`sourceSiteId`);

--
-- Indexen voor tabel `resourcepaths`
--
ALTER TABLE `resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexen voor tabel `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_emhnhufhvtjxoikohmdwmvujmcsgaqomsrut` (`sourceId`,`num`),
  ADD KEY `fk_vrhjfvdidozbqwwgqbcjolhbnnbrmifkppgj` (`creatorId`);

--
-- Indexen voor tabel `searchindex`
--
ALTER TABLE `searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `searchindex` ADD FULLTEXT KEY `idx_zsxtdwjflnxssvyepbqewwkghebmzpkxzenp` (`keywords`);

--
-- Indexen voor tabel `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vwnammzwnqudmghhvqzgmjdplzzuzyknjwqt` (`handle`),
  ADD KEY `idx_skhmpmgjtrmqmaebjfmnzgtzogljlawnvuaf` (`name`),
  ADD KEY `idx_dzxrbnywasjowhonnxssdevhhaylvoliikgv` (`structureId`),
  ADD KEY `idx_ifkjjzqxlpxqqtlufyeshadqpiqcxxihulxb` (`dateDeleted`);

--
-- Indexen voor tabel `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_vgsomkesurufkkhkvdwggsjptlstxdawniyi` (`sectionId`,`siteId`),
  ADD KEY `idx_ivzyrwzxooljwqvpbuoytlyrmdubpedsppwb` (`siteId`);

--
-- Indexen voor tabel `seo_redirects`
--
ALTER TABLE `seo_redirects`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `seo_sitemap`
--
ALTER TABLE `seo_sitemap`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `sequences`
--
ALTER TABLE `sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indexen voor tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_kptaxozkgdgjateigekdfewwqsiolijczwoj` (`uid`),
  ADD KEY `idx_suwqmzjtuygbreopfjmuahgexbfldpezcrrx` (`token`),
  ADD KEY `idx_nvrpjwhyrctnheykujjrugffjrtzvhlewzns` (`dateUpdated`),
  ADD KEY `idx_usrqqvclkgcmsilntgephgvofhdeanowxshe` (`userId`);

--
-- Indexen voor tabel `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_nwkczsciuhdslalhpqvaewtuoxeezvlfvjxd` (`userId`,`message`);

--
-- Indexen voor tabel `sitegroups`
--
ALTER TABLE `sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rwrgkpsrphechydkqeytzqhtteyolhsuupzl` (`name`);

--
-- Indexen voor tabel `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hgvtsmlheqgojltsnmkllpbbpdgtdzfzacas` (`dateDeleted`),
  ADD KEY `idx_xrcvnyelukzozstfoggzwnngrfkinqdbxtda` (`handle`),
  ADD KEY `idx_qjivfpfxbawomhvdthnbtsecuyrzsbudxygh` (`sortOrder`),
  ADD KEY `fk_jnkfpdjedmuemycefiowcevxulbzvhkqyvvy` (`groupId`);

--
-- Indexen voor tabel `structureelements`
--
ALTER TABLE `structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_qemoqcnjszjuyecgzrkqkxkvndhhsywegozb` (`structureId`,`elementId`),
  ADD KEY `idx_amtdqerbwohvxwzpjwattrcsklyuohxjkwrj` (`root`),
  ADD KEY `idx_nkufhyxzhtjtsvbamrsntpyfyrwxsuwmouvs` (`lft`),
  ADD KEY `idx_asnsdxfqhjhhvftegcpzhylehmvmkyardglr` (`rgt`),
  ADD KEY `idx_iruokiqtknulyfarrnedhzpktdiupnkxcvfy` (`level`),
  ADD KEY `idx_ghgsgfutwhbvqnyviwnemlrttuabwpfqutts` (`elementId`);

--
-- Indexen voor tabel `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fgjjmpptqezpxuptlfxbeukcwyyzjiyclibq` (`dateDeleted`);

--
-- Indexen voor tabel `supertableblocks`
--
ALTER TABLE `supertableblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_iquhbnmvhzzunglnppwpdzxquzniroddvqjj` (`ownerId`),
  ADD KEY `idx_fsftntujxqyjyuoxgijcfugdbterwtoaamow` (`fieldId`),
  ADD KEY `idx_ueelbaaddeykrujzsiuebbakfkhngcysaafg` (`typeId`),
  ADD KEY `idx_fxxsdnvexwpgppsckqmwpqoftsxjabaethpn` (`sortOrder`);

--
-- Indexen voor tabel `supertableblocktypes`
--
ALTER TABLE `supertableblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_yzuqfzicngymrhoprcskrsqnzfzlaulwtval` (`fieldId`),
  ADD KEY `idx_vdunhakarneywbuamvjbcdjlncpwuzfhslbl` (`fieldLayoutId`);

--
-- Indexen voor tabel `systemmessages`
--
ALTER TABLE `systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ycbxqzuzljkerokofotrdfifjuyctxdoditz` (`key`,`language`),
  ADD KEY `idx_qrhqzpuulrilguzwdlpfoxgwlzymmblfgcuw` (`language`);

--
-- Indexen voor tabel `taggroups`
--
ALTER TABLE `taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mewxsmwuzsmieytigdwyprlhuerstwbdejfx` (`name`),
  ADD KEY `idx_eughadatdjamjwvqpbwlpeznwnrlmjwpdvyq` (`handle`),
  ADD KEY `idx_nrxseompwpxdrxlarobcjgnkvurbuoyoecdy` (`dateDeleted`),
  ADD KEY `fk_piunvifvwuplizhonwbnshxltqptvzlvfghb` (`fieldLayoutId`);

--
-- Indexen voor tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pcswduiqqhrqvvgfctvozjdvtheejiwopjzy` (`groupId`);

--
-- Indexen voor tabel `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wvycpslbofmbcewgnafmtwfzslkatkzegbuh` (`cacheId`),
  ADD KEY `idx_ezxecnoikchsogsenkavpzkfahmkikkyvqph` (`elementId`);

--
-- Indexen voor tabel `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aktfykzpuxqlrbrmlajrnsgovzrfutymvthr` (`cacheId`),
  ADD KEY `idx_dnaginziuzcbrrtmlhoqnzikluevbyjrdedq` (`type`);

--
-- Indexen voor tabel `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bmgggvfkjlvmvrsfqtwhwteokjftqlqrqbek` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  ADD KEY `idx_mjfogonnvzpyneznrebzgxsytkligejleryo` (`cacheKey`,`siteId`,`expiryDate`),
  ADD KEY `idx_waknobinrqmdslibwwreigsgotkbdptriuyk` (`siteId`);

--
-- Indexen voor tabel `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_zkxctdvfijuhxapkedtnsfumpillnfxtevoq` (`token`),
  ADD KEY `idx_gktplrajbxlubabqtfeqlmglrcdorlkmrmaz` (`expiryDate`);

--
-- Indexen voor tabel `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vbtioqufvvxihtedfovcudmxpqakqhkzoghp` (`handle`),
  ADD KEY `idx_koxrbtpdxgdjfipkxumrktmufbnmmkgougum` (`name`);

--
-- Indexen voor tabel `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_rlmqikhahfywmaeurcqnljkmwotkhfuvaatc` (`groupId`,`userId`),
  ADD KEY `idx_wpifqayvwtzwbxewtcvezfvppoznkcexpveb` (`userId`);

--
-- Indexen voor tabel `userpermissions`
--
ALTER TABLE `userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_rkfddtjaaphrcepmqbueangoebjieztftlfg` (`name`);

--
-- Indexen voor tabel `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_jxejgogcutcnahjyrhumwuvwpbttvhusnalz` (`permissionId`,`groupId`),
  ADD KEY `idx_lcblhnkpedgdnwawgsfzgtyupqgmjqgmrpmb` (`groupId`);

--
-- Indexen voor tabel `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_umbibulerifhvgnooptobgksdqdzjkkbbzig` (`permissionId`,`userId`),
  ADD KEY `idx_opqcvsknautqagutyvjiglarymtunhcdocxl` (`userId`);

--
-- Indexen voor tabel `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_iutxmgujoewdwjkzhctxvkdlmlxqpalwejha` (`uid`),
  ADD KEY `idx_sknhxnvfakwvxxukzhiyttpcjzzxwhobeljk` (`verificationCode`),
  ADD KEY `idx_ivtxxhasecekxhaqpgsxyjmxlsmpufidsiil` (`email`),
  ADD KEY `idx_azhtrmusgrcsnyhumyryxcpddtzizmknmgoc` (`username`),
  ADD KEY `fk_aspxddtdyxmspzqywczaemhnrknyofywmzvh` (`photoId`);

--
-- Indexen voor tabel `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_nfqreofcksapyrdvniriaebevacztmwbwcpo` (`name`,`parentId`,`volumeId`),
  ADD KEY `idx_bahmojaerjzfccksngueamwrbtqnibfdfcrq` (`parentId`),
  ADD KEY `idx_usxkaoezutueypoighamldadwrkjkleqfxkn` (`volumeId`);

--
-- Indexen voor tabel `volumes`
--
ALTER TABLE `volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_yncqkkkvuvlahpudesxaqncrnbplikgyxguf` (`name`),
  ADD KEY `idx_fjawaboxdsmwlqjhegbybfxmgkozlwseyrlp` (`handle`),
  ADD KEY `idx_kvcxueamyaqhxecyxkjgkawvavuyyhhhxrag` (`fieldLayoutId`),
  ADD KEY `idx_gpnbfxnfmjfljyksjqygtsosgfuznumuvrvl` (`dateDeleted`);

--
-- Indexen voor tabel `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_qwcvmpgsczakjnjlacansjnswywbtrussozs` (`userId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `assetindexdata`
--
ALTER TABLE `assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `assettransformindex`
--
ALTER TABLE `assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `assettransforms`
--
ALTER TABLE `assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `categorygroups`
--
ALTER TABLE `categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT voor een tabel `craftidtokens`
--
ALTER TABLE `craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `drafts`
--
ALTER TABLE `drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `elementindexsettings`
--
ALTER TABLE `elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT voor een tabel `elements_sites`
--
ALTER TABLE `elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT voor een tabel `entrytypes`
--
ALTER TABLE `entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT voor een tabel `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT voor een tabel `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT voor een tabel `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT voor een tabel `globalsets`
--
ALTER TABLE `globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `gqlschemas`
--
ALTER TABLE `gqlschemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `gqltokens`
--
ALTER TABLE `gqltokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `matrixcontent_about`
--
ALTER TABLE `matrixcontent_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT voor een tabel `matrixcontent_inhoudzelf`
--
ALTER TABLE `matrixcontent_inhoudzelf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT voor een tabel `matrixcontent_navbarfield`
--
ALTER TABLE `matrixcontent_navbarfield`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT voor een tabel `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT voor een tabel `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT voor een tabel `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT voor een tabel `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `sections_sites`
--
ALTER TABLE `sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `seo_redirects`
--
ALTER TABLE `seo_redirects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `seo_sitemap`
--
ALTER TABLE `seo_sitemap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `sitegroups`
--
ALTER TABLE `sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `structureelements`
--
ALTER TABLE `structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT voor een tabel `structures`
--
ALTER TABLE `structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `supertableblocktypes`
--
ALTER TABLE `supertableblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `systemmessages`
--
ALTER TABLE `systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `taggroups`
--
ALTER TABLE `taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `templatecaches`
--
ALTER TABLE `templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `usergroups_users`
--
ALTER TABLE `usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `userpermissions`
--
ALTER TABLE `userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `userpreferences`
--
ALTER TABLE `userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `volumefolders`
--
ALTER TABLE `volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `volumes`
--
ALTER TABLE `volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `fk_ejbpebmnuspnsompqduhijjkqsaaepigmlbs` FOREIGN KEY (`pluginId`) REFERENCES `plugins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_elbfaatyvojbvdfgjlkukazgzlsupzjwvcqi` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD CONSTRAINT `fk_uzbhnwpaqcvavdsccmbcifayqvxbhcfgrojm` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `fk_eyeqmwxhxfpdpthlvrrousxhlgrdrgvvxptj` FOREIGN KEY (`uploaderId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_iuvrqbpwsuwgzknixordcwnqxjonjseviels` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tfvxpfblgyssrqcapisxqszygdtmbqfwxmop` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vjsksvyldkfsijacfvbhsrpuppbpmdybhxuw` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_obvosefgvvunxnacbctteqjohkivqaaznxsj` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_uhhhajgoadcqblanvuxeikxdbezjlzpltzym` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_xnjyrddoxjbmxrptfpoopacwqlnwbfqajzbj` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD CONSTRAINT `fk_rejhztvnvkoupahosazzwvqqxhqssccahurh` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_xdznpvrzvunrzwqctwuapsqhlfrcaajpldsx` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD CONSTRAINT `fk_clqcacytzjwkyypdbpvlysljcwjahpclnpcb` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_qvlotlemqpvupucbolwepyenspuwpwdzywxd` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD CONSTRAINT `fk_atkgwqnjcysrnmwnughdxsytlmdsyzzhvhmb` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_umsvpoxhtpsajhxmhulijgsomvfblfbhfktj` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_uqyriseyxcsktwjwngegdaagksquykzuvqad` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `changedfields`
--
ALTER TABLE `changedfields`
  ADD CONSTRAINT `fk_jtqaqidjpcfebrjrftgykbwqsvpwayrsmygm` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rxxgcqrpusfzgtogqqcemgmzmcilqcrcbhcn` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vfvygrylxyulbprbdojtgbcbfkysdchjdsrl` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_zdcippsvvjlgqcaollogwbnrukjkebqsgzmk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `fk_ixoajmgahkfmfdczmyypukmfxhpwvryxhkvq` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kqetufqmcgtzgckgbwzdwtynsknovnsbktaj` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD CONSTRAINT `fk_kkulkldiouyrbgkdzkxlmyqjoohfuqddyujl` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `drafts`
--
ALTER TABLE `drafts`
  ADD CONSTRAINT `fk_cftuxscwezkxhcljpivzxwaibigvklowxgng` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_ivjgjnqiqmqysojqfwznmztocljnlbyhhltb` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `fk_hefulrtxelwspukaseofdnoztgjxhyjkyspu` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_szuwldkqlhzzqxotjlvyatxqxrzncbvtbldr` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_xmcmtwwoqwfzgpjbsqyjlvxgroepgnwkhyjw` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ziqekbxugvifhkkuqqjgggjmljxjaafzyxbi` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Beperkingen voor tabel `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD CONSTRAINT `fk_cpwbmrqdjxfyircptywamhxwuqekycnkafia` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_erkwfwxzqrgfwvxbsvnlbmgdwhdrbrdlndce` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `fk_mfyutlnecdvozykcrylgjpaosnwqkpltjyam` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mpjjiulwpktbkmwgwhyrocxdaqneugvolttv` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_owkxtuiaifyhozbnvnakmmnoqpfleofkikwr` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tiqtmvyytxhofteplglmntymgnyowwuuiuzq` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zgwwwhxheybvlnphsvllycbqddtvvnurvbgc` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Beperkingen voor tabel `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD CONSTRAINT `fk_fxabfwghuzsgienmdbfhiwsrptjovcncpjgg` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_xfpfadbpnahfufbqjjuozlvmbdndtzozfwxf` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Beperkingen voor tabel `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD CONSTRAINT `fk_hvxaapiwvluscyjmzhxejofacyzcjwcsmnnv` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mvaavhauwnwzokgiynhctwtjnyzyiswntwfr` FOREIGN KEY (`tabId`) REFERENCES `fieldlayouttabs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_xbhvcmfvtzfqkdiwbwytgqzjmohhwyorqdzj` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD CONSTRAINT `fk_yhzacwtspumqquwfuvqexwrlkazdacvgfldn` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `fields`
--
ALTER TABLE `fields`
  ADD CONSTRAINT `fk_dmxxdutbqohadpwxysrunaonxkwzeoaxlunq` FOREIGN KEY (`groupId`) REFERENCES `fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `globalsets`
--
ALTER TABLE `globalsets`
  ADD CONSTRAINT `fk_oxperpebfjwsrvqvqfnxqbtiitwvnlucaiwv` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_xeoxvggifwkydghpinvdukppcriujzarfwsg` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Beperkingen voor tabel `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD CONSTRAINT `fk_estymnsgbnlvzxttoatguwjzlillrvkubuqb` FOREIGN KEY (`schemaId`) REFERENCES `gqlschemas` (`id`) ON DELETE SET NULL;

--
-- Beperkingen voor tabel `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD CONSTRAINT `fk_ctutfhpvrbzprtfqcbxnoelstkqbraantkve` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_dkclqcjpgzdsurekanhnvisiorrezupctknv` FOREIGN KEY (`typeId`) REFERENCES `matrixblocktypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ikkffafuprkovwfjenlscisnjjqkmwvvjxyi` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_piyuhozhovkjddqfxuaoosxxbkjgzpbustbk` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD CONSTRAINT `fk_dyktadpnhoczrwzvergcftvvtdiqgmgbycwb` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_tdocjqnrymewtgmetscvqsotxjuxdfcogbjn` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `matrixcontent_about`
--
ALTER TABLE `matrixcontent_about`
  ADD CONSTRAINT `fk_iwzfwpadbbolxlkioytfwcerenvgekckeaio` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_jbhlnrgddukzxxpijbtpiaykbpmbbanrhmrw` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `matrixcontent_inhoudzelf`
--
ALTER TABLE `matrixcontent_inhoudzelf`
  ADD CONSTRAINT `fk_qcobjnsxqogsxhptydpzgohnyxlofmsciqas` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vfhxeozebcyyxdwhapurpppwjbbcgbyvlhvp` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `matrixcontent_navbarfield`
--
ALTER TABLE `matrixcontent_navbarfield`
  ADD CONSTRAINT `fk_bfzosggabqqtcyliwmnrwyqnillqmrqtmftn` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pstbrjkfguztqlmlmybjsftxpaitmlxuxyqy` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `fk_qgqayhfkpwonevhnvaogapfnneztcmtqmhez` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rsnyqowjgvgyifhkmmkaytwwkkrvtatyqmrm` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ymglddzltpbzcjpwxobqkddgxiiyhnzziozy` FOREIGN KEY (`targetId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zwaalydhkjoyycjgxfnvsuecrvuqnfsqemdv` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `revisions`
--
ALTER TABLE `revisions`
  ADD CONSTRAINT `fk_pjuqnbwcxyxsxpnxichhhoapqgpdfirgwrgb` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vrhjfvdidozbqwwgqbcjolhbnnbrmifkppgj` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Beperkingen voor tabel `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `fk_rguioihtmldngzzuwgiyqjrdyngrpszqivaq` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL;

--
-- Beperkingen voor tabel `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD CONSTRAINT `fk_crppfeyebvkciesvqyuotwfvgnjdctsozrxi` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ibehiekrcanazcceqrmytbfyhogtdclfohai` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `fk_keybhahhcmjvyyqtqwpmjdiiosuxhjduljmb` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD CONSTRAINT `fk_wdakvevomrhbqzbheabfglvhqekqdxcnwnbg` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `fk_jnkfpdjedmuemycefiowcevxulbzvhkqyvvy` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `structureelements`
--
ALTER TABLE `structureelements`
  ADD CONSTRAINT `fk_ecvuoajiztjmyhspvtzewuugpdotqonvfwbe` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ekbffrzfjtvtlwqfqdzjeixznqonntewmups` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `supertableblocks`
--
ALTER TABLE `supertableblocks`
  ADD CONSTRAINT `fk_ecxktyhwammqbekejznrcthssbjqfrbhgoed` FOREIGN KEY (`typeId`) REFERENCES `supertableblocktypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_fjrkyxwtytkapqomyrbtdlzxlcuakzkwzhhj` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pmjhhqcpcqhlfkdcbufkutbectckfhvljvsv` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_yucghuifvwqvzgfcrauugrrkhnlegzrfyoda` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `supertableblocktypes`
--
ALTER TABLE `supertableblocktypes`
  ADD CONSTRAINT `fk_ijrpwgxdappipoltaoebhdfcexoejplyklps` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_qglqzllpvjlrhmoypppxpzrpkyqyuykntfmp` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `taggroups`
--
ALTER TABLE `taggroups`
  ADD CONSTRAINT `fk_piunvifvwuplizhonwbnshxltqptvzlvfghb` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Beperkingen voor tabel `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `fk_dnnqpduxwvoemuchpfhwdzyxvnfcwjaqudzh` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pwcrhvpjusarsrdfmtxeabhqizzushyrwzge` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD CONSTRAINT `fk_numaofzzqxqshohcilgcvjyxjuftwytairft` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_uutrswfwdoerswwymnwtkbvvfvabdvojioyh` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  ADD CONSTRAINT `fk_vsqqgvyajqblqrkpakdqfkpwrukkwgmtwvns` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD CONSTRAINT `fk_xonyugyxetujmxjmqrommuhsyzbrwxsowzih` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD CONSTRAINT `fk_qrummcbfdxalzntcimdenqwtrkvctxwueryh` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vcvllnrzrjozhvwuqgltwxmoldkhbsvvfnmj` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD CONSTRAINT `fk_qbomxbxigwnxaccckgehdzpmjnqzrjbeohdi` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tvgdzhdcfktwhzrmjcdogozsnazcbomtkarl` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD CONSTRAINT `fk_dzphuevieesazhpxsieonkntuhltqzllaemq` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pogvdmbyuvqeigchyxsuxsbcgvdgwgvnppyl` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD CONSTRAINT `fk_mcegcpfpkidrxrzvwnuzmnxnyfnlpotdgbxr` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_aspxddtdyxmspzqywczaemhnrknyofywmzvh` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_ibdbdnbmccdusnnkwkkhkcyvetliwoqungwv` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD CONSTRAINT `fk_tmmrgprnvtmlcoweszajmkidudotcxjjphbp` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zmigxwxnnugukxitfaojzcgkyizaivrbsbfq` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `volumes`
--
ALTER TABLE `volumes`
  ADD CONSTRAINT `fk_dpchvqjacjialyzxqodbapdvtvmqokgnsjlq` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Beperkingen voor tabel `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `fk_yyjcjkccbtcngavktfxftfpkuiqaivxytdzi` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
