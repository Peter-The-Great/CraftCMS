-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Gegenereerd op: 06 sep 2021 om 17:22
-- Serverversie: 5.7.34
-- PHP-versie: 7.4.21

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
  `unread` tinyint(1) NOT NULL DEFAULT '1',
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
  `uri` text COLLATE utf8_unicode_ci,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
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
(6, 1, 1, 1, 'thumnail.jpeg', 'image', 1280, 720, 106060, NULL, NULL, NULL, '2021-09-06 12:05:19', '2021-09-06 12:05:19', '2021-09-06 12:05:19', 'e0642e9c-dd28-42e3-8b44-7592675cb1c1');

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
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `error` tinyint(1) NOT NULL DEFAULT '0',
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
(7, 6, 'thumnail.jpeg', NULL, '_400x400_crop_center-center_75_none', 1, 1, 0, 0, '2021-09-06 13:03:35', '2021-09-06 13:03:35', '2021-09-06 13:03:36', '4dc4126c-7ed6-42a2-beb4-a28dde8eab57');

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
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text COLLATE utf8_unicode_ci,
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
(4, 1, 'slug', '2021-09-06 12:02:14', 0, 1),
(4, 1, 'title', '2021-09-06 12:02:14', 0, 1),
(4, 1, 'uri', '2021-09-06 12:02:14', 0, 1),
(22, 1, 'uri', '2021-09-06 14:40:32', 0, 1);

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
(4, 1, 4, '2021-09-06 12:07:16', 0, 1),
(10, 1, 8, '2021-09-06 14:12:51', 0, 1),
(22, 1, 8, '2021-09-06 14:40:33', 0, 1);

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
  `field_subtext_huynruhi` text COLLATE utf8_unicode_ci,
  `field_pagecopy_zwjsxauz` mediumtext COLLATE utf8_unicode_ci,
  `field_videolink_ehemhfzb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_introduction_itoqovjy` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `content`
--

INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_subtext_huynruhi`, `field_pagecopy_zwjsxauz`, `field_videolink_ehemhfzb`, `field_introduction_itoqovjy`) VALUES
(1, 1, 1, NULL, '2021-09-06 10:09:22', '2021-09-06 10:09:22', 'cf021743-b87e-4bf2-bff7-2e0c7dd7d31a', NULL, NULL, NULL, NULL),
(2, 2, 1, NULL, '2021-09-06 11:59:23', '2021-09-06 11:59:23', '3bd9de7b-1764-46d9-b57d-95fe55b85e2c', NULL, NULL, NULL, NULL),
(3, 3, 1, NULL, '2021-09-06 11:59:24', '2021-09-06 11:59:24', '5d8a264e-9f42-4804-a059-17d32c92e259', NULL, NULL, NULL, NULL),
(4, 4, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture', '2021-09-06 11:59:52', '2021-09-06 12:07:16', '9d36845c-286c-4d85-86fb-ef404489d2f6', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/watch?v=094y1Z2wpJg', NULL),
(5, 5, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture', '2021-09-06 12:04:53', '2021-09-06 12:04:53', 'c5aa5eb7-d6b0-4a04-a8cb-665fe3e62367', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/watch?v=094y1Z2wpJg', NULL),
(6, 6, 1, 'Thumnail', '2021-09-06 12:05:18', '2021-09-06 12:05:18', 'a176302d-d4b3-42c0-8cac-f0946cc421f0', NULL, NULL, NULL, NULL),
(8, 8, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture', '2021-09-06 12:07:09', '2021-09-06 12:07:09', 'ba9a0537-65bc-4508-87e9-9026b80b8f9b', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/watch?v=094y1Z2wpJg', NULL),
(9, 9, 1, 'The Simplest Math Problem No One Can Solve - Collatz Conjecture', '2021-09-06 12:07:16', '2021-09-06 12:07:16', '986e92d6-96c1-480f-b90b-34d7f25697f5', '<p>The Collatz Conjecture is the simplest math problem no one can solve — it is easy enough for almost anyone to understand but notoriously difficult to solve.</p>', '<p>This video is sponsored by Brilliant. The first 200 people to sign up via <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbE5HdVhjUUNPVjZEMWVycHZfQ1pzQTZiLWhud3xBQ3Jtc0tua0NIcm93TUFzaEt6ajZtN2ZGWWVsQUVJUGxGc3h3T1Q5clJSWTFwMDdvNm1mNEJ4X0NHOEFNS0dzbFJIY3MzR2Y2N1NKWll6eWtnWHMyV1hsaUpmQUVPNV9oazJUd2NVNHpMcmlQbHJFVnhubGt2aw&amp;q=https%3A%2F%2Fbrilliant.org%2Fveritasium\">https://brilliant.org/veritasium</a> get 20% off a yearly subscription.</p><p>Special thanks to Prof. Alex Kontorovich for introducing us to this topic, filming the interview, and consulting on the script and earlier drafts of this video.</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>References:</p><p>Lagarias, J. C. (2006). The 3x+ 1 problem: An annotated bibliography, II (2000-2009). arXiv preprint math/0608208. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbF9seXBzbURnTXVkZEJVR29EU0VaU1ZBQkx0d3xBQ3Jtc0tudXRuYi04NG1yMzk0WVd0U25zX0lMWDI1UVlTQ0VkNzBkSUd4WUJDNVNaeEJtSEpPRTh3SlBhRm5tT2pxYlNxZUhucDgzaEZsalBvWnBoNF9pQ0JsR1NoQktjb01ET0syUnBGTlJqWk1yZFQ3VjBfdw&amp;q=https%3A%2F%2Fve42.co%2FLagarias2006\">https://ve42.co/Lagarias2006</a></p><p>Lagarias, J. C. (2003). The 3x+ 1 problem: An annotated bibliography (1963–1999). The ultimate challenge: the 3x, 1, 267-341. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbDdLODVpWnQ5VVQ1S1VMcUs4aHJFb1Ftdmt1UXxBQ3Jtc0ttTlU2YWQtOVZXMWtsUm1wV0dPTlJDa1FhRmtPQmZieGZnQVlmTHNFTFRIVFpRZTZiTm5vLXBTanc3V080dGZpQWFYcW91R3ExNFJ1bVpEcnNfUEV5OUQ5UmhKVTRCOEJPS1R6NzdCdlVIQkdxU3J1QQ&amp;q=https%3A%2F%2Fve42.co%2FLagarias2003\">https://ve42.co/Lagarias2003</a></p><p>Tao, T (2020). The Notorious Collatz Conjecture — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbEdrcGxidDY4TklUYzhTQ2RES1dqSHd0TEV4QXxBQ3Jtc0ttX3FZSUdmU1RzZlMtMndRbVdpYnVRcURNQzVjM3ZSOHBOaDFTX0dDMk1SbDdGWW9aX2JBVE5aQ19veHN3SEhYTE0zNFZ1eDJNeWE0MzJhY296OW9DN2w0cE9PMFRLcnRKOEFfX0Y0UFdoWVFuRVBJaw&amp;q=https%3A%2F%2Fve42.co%2FTao2020\">https://ve42.co/Tao2020</a></p><p>A. Kontorovich and Y. Sinai, Structure Theorem for (d,g,h)-Maps, Bulletin of the Brazilian Mathematical Society, New Series 33(2), 2002, pp. 213-224.</p><p><br />A. Kontorovich and S. Miller Benford\'s Law, values of L-functions and the 3x+1 Problem, Acta Arithmetica 120 (2005), 269-297.</p><p>A. Kontorovich and J. Lagarias Stochastic Models for the 3x + 1 and 5x + 1 Problems, in \"The Ultimate Challenge: The 3x+1 Problem,\" AMS 2010.</p><p>Tao, T. (2019). Almost all orbits of the Collatz map attain almost bounded values. arXiv preprint arXiv:1909.03562. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3JrVEx2dVU4N0VRcVlHSTlYVDRidHRUeUFvQXxBQ3Jtc0ttNzFtWU5wUEZpdk9oaE5qTXhQSlB2Wm0tYzI3eWJfenV2MEZNdC1PWURTYmJKSVlGS0VXUVZib1NjcUVlcGZFeTI5c1V6bGFRM3Nmc2NXcUtfdlBLRVk4eFBKRy1jaVNzMkNlLUhlbTZROU9YTUZCZw&amp;q=https%3A%2F%2Fve42.co%2FTao2019\">https://ve42.co/Tao2019</a></p><p>Conway, J. H. (1987). Fractran: A simple universal programming language for arithmetic. In Open problems in Communication and Computation (pp. 4-26). Springer, New York, NY. — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1l5RzNDaGhDT3Z0WXpGTVJ2bmRSRUhhUjV1UXxBQ3Jtc0tuOVNNWFdXY3hwa2JnOFRLNmZ0UFFyOTNrWFpVTXEtd2pSQTVpNzFURU5WNG1Ma0FUdkYtR0hxWTdHd244MDVocWh2cTN3U1BnSkpLZnROU2VpNDVfN2RibFZ0cEZXek5BdGhIYlVVc0RnaVVHbnhFRQ&amp;q=https%3A%2F%2Fve42.co%2FConway1987\">https://ve42.co/Conway1987</a></p><p> </p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Special thanks to Patreon supporters: Alvaro Naranjo, Burt Humburg, Blake Byers, Dumky, Mike Tung, Evgeny Skvortsov, Meekay, Ismail Öncü Usta, Paul Peijzel, Crated Comments, Anna, Mac Malkawi, Michael Schneider, Oleksii Leonov, Jim Osmun, Tyson McDowell, Ludovic Robillard, Jim buckmaster, fanime96, Juan Benet, Ruslan Khroma, Robert Blum, Richard Sundvall, Lee Redden, Vincent, Marinus Kuivenhoven, Alfred Wallace, Arjun Chakroborty, Joar Wandborg, Clayton Greenwell, Pindex, Michael Krugman, Cy \'kkm\' K\'Nelson, Sam Lutfi, Ron Neal</p><p>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀</p><p>Written by Derek Muller, Alex Kontorovich and Petr Lebedev</p><p>Animation by Iván Tello, Jonny Hyman, Jesús Enrique Rascón and Mike Radjabov</p><p>Filmed by Derek Muller and Emily Zhang</p><p>Edited by Derek Muller</p><p>SFX by Shaun Clifford</p><p>Additional video supplied by Getty Images</p><p>Produced by Derek Muller, Petr Lebedev and Emily Zhang</p><p><br /> </p><p>3d Coral by Vasilis Triantafyllou and Niklas Rosenstein — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbUg4cndMbnpObzhUOWVmUDd2M1FFUmJocXZxZ3xBQ3Jtc0trNnFnWlFYdEVXeXY2M2oxaUh3SERRSDNMTXZxamJTWkxRdGsxc2ZkQXRTaHFzN21jN0tCbE1RUkdxaTZKc1Z0UXFHcmdndFFJNk1yTi1wOG9DTFkxQnQ2YUM1TkpBOHA3YXhmSUdMdXhOTDk4TEExSQ&amp;q=https%3A%2F%2Fve42.co%2F3DCoral\">https://ve42.co/3DCoral</a></p><p>Coral visualisation by Algoritmarte — <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazlfb0FSbEE4RGtJYkE3V2F6NmtoUGg1bEkyQXxBQ3Jtc0ttX3dnbHVvX3NTRzNQbndkY3VYN04zdmNieF9nVFhTMkhSZ1JieXpHUmhPTmdjSDZLTEhuTktzSVU1MWMwa1dTNmF2VVR3aWxDaGNITDd0WVhrVzhSZ2pUVzFKRlRNMm5NWE53Z1JBdS1oVmhLMV9TWQ&amp;q=https%3A%2F%2Fve42.co%2FCoral\">https://ve42.co/Coral</a></p>', 'https://www.youtube.com/watch?v=094y1Z2wpJg', NULL),
(10, 10, 1, 'homepage', '2021-09-06 13:11:08', '2021-09-06 14:38:08', 'd7289ea7-0d83-424b-8fba-f51ff009d65d', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post videos.'),
(11, 11, 1, 'homepage', '2021-09-06 13:11:08', '2021-09-06 13:11:08', '9c0065cf-0ce6-49ba-8a54-78c24e30ac9e', NULL, NULL, NULL, NULL),
(12, 12, 1, 'homepage', '2021-09-06 14:08:35', '2021-09-06 14:08:35', '16721323-b5ed-48f3-892e-f31140c55f73', NULL, NULL, NULL, NULL),
(14, 14, 1, 'homepage', '2021-09-06 14:12:45', '2021-09-06 14:12:45', 'd9ac5153-eba0-4f3f-a068-a95a2e652af8', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik maak videos.'),
(16, 16, 1, 'homepage', '2021-09-06 14:12:51', '2021-09-06 14:12:51', '4f69291d-7462-408a-88c5-c57451332686', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post videos.'),
(17, 17, 1, 'homepage', '2021-09-06 14:23:35', '2021-09-06 14:23:35', '5e82ac07-76b8-487e-a922-54a86d920651', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post videos.'),
(18, 18, 1, 'homepage', '2021-09-06 14:35:54', '2021-09-06 14:35:54', '94bd1d7a-f952-4eca-be65-84ce06103094', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post videos.'),
(19, 19, 1, 'homepage', '2021-09-06 14:36:00', '2021-09-06 14:36:00', 'f254f0ac-694c-40df-aedd-90a4e52ec0cb', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post videos.'),
(20, 20, 1, 'homepage', '2021-09-06 14:37:12', '2021-09-06 14:37:12', '73665f51-50c7-41a0-8873-fd1582814029', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post videos.'),
(21, 21, 1, 'homepage', '2021-09-06 14:38:08', '2021-09-06 14:38:08', 'c4d97af2-3689-43bb-82c8-234de834df41', NULL, NULL, NULL, NULL),
(22, 22, 1, 'navbar', '2021-09-06 14:39:19', '2021-09-06 14:40:33', '75583f3c-1127-4b6a-b385-72b956bf90d8', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.'),
(23, 23, 1, 'navbar', '2021-09-06 14:39:19', '2021-09-06 14:39:19', '334b5d94-05f4-47d9-9037-3f1ef41709b3', NULL, NULL, NULL, NULL),
(25, 25, 1, 'navbar', '2021-09-06 14:39:59', '2021-09-06 14:39:59', 'c9ea51ee-b920-473e-a25e-f50e67444ed2', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.'),
(26, 26, 1, 'navbar', '2021-09-06 14:40:13', '2021-09-06 14:40:13', '5c8d9c81-5e75-43d2-80c5-d8dc1f821c31', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.'),
(27, 27, 1, 'navbar', '2021-09-06 14:40:32', '2021-09-06 14:40:32', 'b32a882a-e061-4cfe-be88-32de089add7a', NULL, NULL, NULL, 'Mijn naam is Pjotr Wisse en ik post video\'s.');

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
  `message` text COLLATE utf8_unicode_ci,
  `traces` text COLLATE utf8_unicode_ci,
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
  `provisional` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `trackChanges` tinyint(1) NOT NULL DEFAULT '0',
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `drafts`
--

INSERT INTO `drafts` (`id`, `sourceId`, `creatorId`, `provisional`, `name`, `notes`, `trackChanges`, `dateLastMerged`, `saved`) VALUES
(1, NULL, 1, 0, 'Eerste concept', NULL, 0, NULL, 0),
(2, NULL, 1, 0, 'Eerste concept', NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `elementindexsettings`
--

CREATE TABLE `elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
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
(1, NULL, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2021-09-06 10:09:22', '2021-09-06 10:09:22', NULL, NULL, 'dc392f9b-56be-4581-ada6-1ce56a5535bd'),
(2, NULL, 1, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-06 11:59:23', '2021-09-06 11:59:23', NULL, NULL, '32ceb59a-3387-4c9e-98e4-173a33c72d5b'),
(3, NULL, 2, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-06 11:59:24', '2021-09-06 11:59:24', NULL, NULL, 'f9271322-98ff-4da1-bd58-1da0ea6635e8'),
(4, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-06 11:59:52', '2021-09-06 12:07:16', NULL, NULL, 'e4aac910-db46-4eca-bbd3-3a939c7ed97c'),
(5, 4, NULL, 1, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-06 12:04:53', '2021-09-06 12:04:53', NULL, NULL, '03fd7776-7140-46df-9319-de829a29b6e2'),
(6, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2021-09-06 12:05:18', '2021-09-06 12:05:18', NULL, NULL, 'ce23d531-c393-4f27-95cb-3f651cc6cea0'),
(8, 4, NULL, 2, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-06 12:07:09', '2021-09-06 12:07:09', NULL, NULL, 'd1f5a46a-3afb-428d-9efa-ec0837f490bb'),
(9, 4, NULL, 3, 2, 'craft\\elements\\Entry', 1, 0, '2021-09-06 12:07:16', '2021-09-06 12:07:16', NULL, NULL, 'ebe5cfb1-6f37-4e76-8a92-8aa0ea846653'),
(10, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 13:11:08', '2021-09-06 14:38:08', NULL, NULL, '3f240bb6-d084-4943-ab98-c4c84b28bae1'),
(11, 10, NULL, 4, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 13:11:08', '2021-09-06 13:11:08', NULL, NULL, '453c114f-9fdc-4755-9e02-6e878b5d511c'),
(12, 10, NULL, 5, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:08:35', '2021-09-06 14:08:35', NULL, NULL, '5ec31f53-7971-4d24-b8e7-375947e60660'),
(14, 10, NULL, 6, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:12:45', '2021-09-06 14:12:45', NULL, NULL, 'cc939d5a-6eda-485c-8904-aa27b7275913'),
(16, 10, NULL, 7, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:12:51', '2021-09-06 14:12:51', NULL, NULL, '10f3388d-580f-47da-ad89-9cdea5602c0d'),
(17, 10, NULL, 8, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:23:35', '2021-09-06 14:23:35', NULL, NULL, '907ed1ba-f2f4-438c-bd12-676df67ab449'),
(18, 10, NULL, 9, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:35:54', '2021-09-06 14:35:54', NULL, NULL, 'e6c1570f-81cc-45cf-95b2-9dc18d21cea2'),
(19, 10, NULL, 10, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:36:00', '2021-09-06 14:36:00', NULL, NULL, '11e77879-c35a-46a9-82af-4f7795338c85'),
(20, 10, NULL, 11, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:37:12', '2021-09-06 14:37:12', NULL, NULL, 'f252297a-a09a-4260-83e6-2596c628795d'),
(21, 10, NULL, 12, 4, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:38:08', '2021-09-06 14:38:08', NULL, NULL, '77953dd3-397d-46ec-b733-cb5b2851be8a'),
(22, NULL, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:39:19', '2021-09-06 14:40:32', NULL, NULL, 'a3ac5ca7-89a0-4760-809a-747c8ebbee5b'),
(23, 22, NULL, 13, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:39:19', '2021-09-06 14:39:19', NULL, NULL, '36edf872-e70b-46c8-9b63-674c52bdf3a0'),
(25, 22, NULL, 14, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:39:59', '2021-09-06 14:39:59', NULL, NULL, '46d51003-0073-480c-a2ff-29dd6912e626'),
(26, 22, NULL, 15, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:40:13', '2021-09-06 14:40:13', NULL, NULL, '71ebc7e9-a104-4c44-b3f5-1dfbdbed15fd'),
(27, 22, NULL, 16, 5, 'craft\\elements\\Entry', 1, 0, '2021-09-06 14:40:32', '2021-09-06 14:40:32', NULL, NULL, 'd60d08ec-1322-4257-b4c5-a8cd8171f90a');

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
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
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
(22, 22, 1, 'navbar', '_layouts/main', 1, '2021-09-06 14:39:19', '2021-09-06 14:40:32', '9aa18b3a-c682-4e84-8227-88c0fc736b8a'),
(23, 23, 1, 'navbar', NULL, 1, '2021-09-06 14:39:19', '2021-09-06 14:39:19', '9d1a355a-85e3-4b4f-be86-3861f6e4a3f0'),
(25, 25, 1, 'navbar', NULL, 1, '2021-09-06 14:39:59', '2021-09-06 14:39:59', '264220d4-14f1-47ff-891c-212dab220054'),
(26, 26, 1, 'navbar', NULL, 1, '2021-09-06 14:40:13', '2021-09-06 14:40:13', '3af25067-d728-48cf-9974-f43959613d9a'),
(27, 27, 1, 'navbar', '_layouts/main', 1, '2021-09-06 14:40:32', '2021-09-06 14:40:32', 'a76604bc-01e8-4606-8fbb-56fedc3f7eac');

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
(22, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-06 14:39:19', '2021-09-06 14:39:19', 'f1755e33-6a2e-4788-b7ab-56d451d81415'),
(23, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-06 14:39:19', '2021-09-06 14:39:19', '23112b2f-02a8-4163-811a-125ba338b43b'),
(25, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-06 14:39:59', '2021-09-06 14:39:59', '639162c0-69b9-48c7-b507-862b0f57fcaa'),
(26, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-06 14:40:13', '2021-09-06 14:40:13', '3e112fac-d13b-42ec-989b-4e714b37b7e6'),
(27, 3, NULL, 4, NULL, '2021-09-06 14:39:00', NULL, NULL, '2021-09-06 14:40:32', '2021-09-06 14:40:32', '3f89b75f-05de-48cc-a88a-ec0dd9cc5d99');

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
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleTranslationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text COLLATE utf8_unicode_ci,
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
(3, 2, 4, 'homepage', 'homepage', 0, 'site', NULL, '{section.name|raw}', 1, '2021-09-06 13:11:08', '2021-09-06 13:11:08', NULL, 'bb77b1f3-1ccf-4257-af21-bb0d3e88362d'),
(4, 3, 5, 'navbar', 'navbar', 1, 'site', NULL, NULL, 1, '2021-09-06 14:38:41', '2021-09-06 14:39:19', NULL, 'b8b01c62-e65a-45ab-a41a-2880f6839689');

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
(3, 'General', '2021-09-06 11:39:39', '2021-09-06 11:39:39', NULL, '518e5c2e-1341-4b80-a65a-8512d938f820');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `fieldlayoutfields`
--

CREATE TABLE `fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `fieldlayoutfields`
--

INSERT INTO `fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(5, 2, 7, 3, 0, 0, '2021-09-06 11:57:15', '2021-09-06 11:57:15', 'f61ed49b-04cb-4d9d-af5a-683b23f0905c'),
(6, 2, 7, 1, 0, 2, '2021-09-06 11:57:15', '2021-09-06 11:57:15', 'fbc4032d-7d6b-49da-b6c9-0c6e2d3a4303'),
(7, 2, 7, 2, 0, 3, '2021-09-06 11:57:15', '2021-09-06 11:57:15', '06e2a297-7eb3-4e09-abcb-499d97a82c16'),
(8, 2, 7, 4, 0, 4, '2021-09-06 11:57:15', '2021-09-06 11:57:15', '95249b3c-d9bd-46cf-8e98-116fbe6dbd9d'),
(11, 5, 14, 8, 0, 1, '2021-09-06 14:39:19', '2021-09-06 14:39:19', '1821e82e-59a6-4c0d-b78f-665250994145');

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
(5, 'craft\\elements\\Entry', '2021-09-06 14:38:41', '2021-09-06 14:38:41', NULL, 'e16888a4-4dec-450f-a6c2-71c209fbc766');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `fieldlayouttabs`
--

CREATE TABLE `fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elements` text COLLATE utf8_unicode_ci,
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
(7, 2, 'Inhoud', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"e6e40127-efc5-4abd-b5ec-455c1a80fa0c\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"fdd41422-2f3c-4581-af2d-b4d3a271e183\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"e3a74156-6e99-4310-8b92-cc9c1d33e616\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"7382616d-769d-4f84-8b59-7245cd08ef20\"}]', 1, '2021-09-06 11:57:15', '2021-09-06 11:57:15', 'e359d3c9-6504-4821-af91-9bfc2f4d49df'),
(8, 1, 'Inhoud', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-09-06 12:05:03', '2021-09-06 12:05:03', '3085166e-072d-4523-ad4b-b7045bfb8e55'),
(11, 4, 'Inhoud', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-09-06 14:38:08', '2021-09-06 14:38:08', '165c35ac-6ce1-4608-a430-5092646d1de8'),
(14, 5, 'Inhoud', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"eac5e9e9-55ae-47bd-8d5c-4b674f1ff355\"}]', 1, '2021-09-06 14:39:19', '2021-09-06 14:39:19', 'e32dc685-f7f2-4f19-8758-2bdee6dd406e');

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
  `instructions` text COLLATE utf8_unicode_ci,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `translationKeyFormat` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
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
(4, 2, 'videolink', 'videolink', 'global', 'ehemhfzb', '', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\"]}', '2021-09-06 11:50:08', '2021-09-06 11:50:08', '7382616d-769d-4f84-8b59-7245cd08ef20'),
(8, 3, 'introduction', 'introduction', 'global', 'itoqovjy', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":\"text\",\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2021-09-06 14:08:11', '2021-09-06 14:08:11', 'eac5e9e9-55ae-47bd-8d5c-4b674f1ff355');

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
  `scope` text COLLATE utf8_unicode_ci,
  `isPublic` tinyint(1) NOT NULL DEFAULT '0',
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
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
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
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
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
(1, '3.7.11', '3.7.8', 0, 'pwcryqjudroa', 'ofqejolflihs', '2021-09-06 10:09:22', '2021-09-06 14:40:32', 'bd374219-4f30-4743-b1dc-06c299bde1de');

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
(191, 'craft', 'm210829_000000_element_index_tweak', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '2021-09-06 10:09:25', '66524cda-ae66-43f2-843f-e68b533cc9aa');

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
(1, 'ckeditor', '1.1.2', '1.0.0', 'unknown', NULL, '2021-09-06 11:40:24', '2021-09-06 11:40:24', '2021-09-06 14:32:49', '032a7d64-0762-4824-8f4b-0c7d4ea9143b');

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
('dateModified', '1630939232'),
('email.fromEmail', '\"pjotr@pixeldeluxe.nl\"'),
('email.fromName', '\"Blogsite\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.0.fieldUid', '\"e6e40127-efc5-4abd-b5ec-455c1a80fa0c\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.0.instructions', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.0.label', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.0.required', 'false'),
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
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.2.instructions', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.2.label', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.2.required', 'false'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.2.tip', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.2.warning', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.2.width', '100'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.3.fieldUid', '\"e3a74156-6e99-4310-8b92-cc9c1d33e616\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.3.instructions', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.3.label', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.3.required', 'false'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.3.tip', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.3.warning', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.3.width', '100'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.4.fieldUid', '\"7382616d-769d-4f84-8b59-7245cd08ef20\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.4.instructions', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.4.label', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.4.required', 'false'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.4.tip', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.4.warning', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.elements.4.width', '100'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.name', '\"Inhoud\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.fieldLayouts.4bc63b8b-865d-427e-bedd-15c7f945691d.tabs.0.sortOrder', '1'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.handle', '\"default\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.hasTitleField', 'true'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.name', '\"Standaard\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.section', '\"ec1302f0-657a-4e1d-a46c-9918baf86e4e\"'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.sortOrder', '1'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.titleFormat', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.titleTranslationKeyFormat', 'null'),
('entryTypes.4c7c41bd-271d-4790-aecd-3eafe71ca7c6.titleTranslationMethod', '\"site\"'),
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
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.name', '\"homepage\"'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.section', '\"364d4330-d412-40f3-99b9-8a3dd6a2d954\"'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.sortOrder', '1'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.titleTranslationKeyFormat', 'null'),
('entryTypes.bb77b1f3-1ccf-4257-af21-bb0d3e88362d.titleTranslationMethod', '\"site\"'),
('fieldGroups.3b68da63-81e3-4d75-b78d-63e267cf49d7.name', '\"Common\"'),
('fieldGroups.417ad68e-f480-4c58-bc24-a31574f1c928.name', '\"blogpost\"'),
('fieldGroups.518e5c2e-1341-4b80-a65a-8512d938f820.name', '\"General\"'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.columnSuffix', '\"ehemhfzb\"'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.contentColumnType', '\"string(255)\"'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.fieldGroup', '\"417ad68e-f480-4c58-bc24-a31574f1c928\"'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.handle', '\"videolink\"'),
('fields.7382616d-769d-4f84-8b59-7245cd08ef20.instructions', '\"\"'),
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
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.settings.columnType', '\"mediumtext\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.settings.initJs', 'null'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.settings.purifierConfig', '\"\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.settings.purifyHtml', '\"1\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.translationKeyFormat', 'null'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.translationMethod', '\"none\"'),
('fields.e3a74156-6e99-4310-8b92-cc9c1d33e616.type', '\"craft\\\\ckeditor\\\\Field\"'),
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
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.settings.columnType', '\"text\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.settings.initJs', 'null'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.settings.purifierConfig', '\"\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.settings.purifyHtml', '\"1\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.translationKeyFormat', 'null'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.translationMethod', '\"none\"'),
('fields.fdd41422-2f3c-4581-af2d-b4d3a271e183.type', '\"craft\\\\ckeditor\\\\Field\"'),
('graphql.publicToken.enabled', 'true'),
('graphql.publicToken.expiryDate', 'null'),
('graphql.schemas.2650fd56-94c1-4d62-929b-998b54588b6d.isPublic', 'true'),
('graphql.schemas.2650fd56-94c1-4d62-929b-998b54588b6d.name', '\"Public Schema\"'),
('meta.__names__.1a7ded85-cd10-4685-8696-21042404ec46', '\"Blogsite\"'),
('meta.__names__.2650fd56-94c1-4d62-929b-998b54588b6d', '\"Public Schema\"'),
('meta.__names__.364d4330-d412-40f3-99b9-8a3dd6a2d954', '\"homepage\"'),
('meta.__names__.3b49d805-1ae4-41ab-ad93-00de8e3a56c3', '\"images\"'),
('meta.__names__.3b68da63-81e3-4d75-b78d-63e267cf49d7', '\"Common\"'),
('meta.__names__.417ad68e-f480-4c58-bc24-a31574f1c928', '\"blogpost\"'),
('meta.__names__.4c7c41bd-271d-4790-aecd-3eafe71ca7c6', '\"Standaard\"'),
('meta.__names__.518e5c2e-1341-4b80-a65a-8512d938f820', '\"General\"'),
('meta.__names__.7382616d-769d-4f84-8b59-7245cd08ef20', '\"videolink\"'),
('meta.__names__.7ce16e90-1108-4637-ae34-135db25fef4e', '\"Blogsite\"'),
('meta.__names__.b8b01c62-e65a-45ab-a41a-2880f6839689', '\"navbar\"'),
('meta.__names__.b94e9ccf-1f7c-4952-87b0-2514213a3b78', '\"navbar\"'),
('meta.__names__.bb77b1f3-1ccf-4257-af21-bb0d3e88362d', '\"homepage\"'),
('meta.__names__.e3a74156-6e99-4310-8b92-cc9c1d33e616', '\"PageCopy\"'),
('meta.__names__.e6e40127-efc5-4abd-b5ec-455c1a80fa0c', '\"headimage\"'),
('meta.__names__.eac5e9e9-55ae-47bd-8d5c-4b674f1ff355', '\"introduction\"'),
('meta.__names__.ec1302f0-657a-4e1d-a46c-9918baf86e4e', '\"blogpost\"'),
('meta.__names__.fdd41422-2f3c-4581-af2d-b4d3a271e183', '\"subtext\"'),
('plugins.ckeditor.edition', '\"standard\"'),
('plugins.ckeditor.enabled', 'true'),
('plugins.ckeditor.schemaVersion', '\"1.0.0\"'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.defaultPlacement', '\"end\"'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.enableVersioning', 'true'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.handle', '\"homepage\"'),
('sections.364d4330-d412-40f3-99b9-8a3dd6a2d954.name', '\"homepage\"'),
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
('siteGroups.7ce16e90-1108-4637-ae34-135db25fef4e.name', '\"Blogsite\"'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.baseUrl', '\"$PRIMARY_SITE_URL\"'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.handle', '\"default\"'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.hasUrls', 'true'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.language', '\"nl\"'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.name', '\"Blogsite\"'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.primary', 'true'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.siteGroup', '\"7ce16e90-1108-4637-ae34-135db25fef4e\"'),
('sites.1a7ded85-cd10-4685-8696-21042404ec46.sortOrder', '1'),
('system.edition', '\"pro\"'),
('system.live', 'true'),
('system.name', '\"Blogsite\"'),
('system.schemaVersion', '\"3.7.8\"'),
('system.timeZone', '\"America/Los_Angeles\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', 'null'),
('users.photoVolumeUid', 'null'),
('users.requireEmailVerification', 'true'),
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
('volumes.3b49d805-1ae4-41ab-ad93-00de8e3a56c3.titleTranslationMethod', 'null'),
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
  `description` text COLLATE utf8_unicode_ci,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) UNSIGNED NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text COLLATE utf8_unicode_ci
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
(4, 3, 9, NULL, 6, 1, '2021-09-06 12:07:16', '2021-09-06 12:07:16', '90cb52ba-1599-40dc-9079-a4e8b630c52b');

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
('157cbf5e', '@craft/web/assets/craftsupport/dist'),
('23a4881d', '@lib/axios'),
('2973c854', '@lib/jquery-ui'),
('2a69821a', '@craft/web/assets/feed/dist'),
('311425f7', '@craft/web/assets/editsection/dist'),
('37cd79e5', '@craft/web/assets/plugins/dist'),
('532aa4d1', '@craft/web/assets/dashboard/dist'),
('59c50f79', '@lib/element-resize-detector'),
('67da53f1', '@lib/velocity'),
('6ca94a2d', '@craft/web/assets/deprecationerrors/dist'),
('738c66d1', '@craft/web/assets/editentry/dist'),
('7655a48c', '@bower/jquery/dist'),
('7bfdfc19', '@lib/jquery.payment'),
('85a94d66', '@craft/web/assets/updater/dist'),
('8c6a0b39', '@craft/web/assets/recententries/dist'),
('9b12a970', '@lib/timepicker'),
('a1d5a0bb', '@craft/web/assets/pluginstore/dist'),
('a4edf105', '@lib/xregexp'),
('a5d2cb10', '@craft/web/assets/installer/dist'),
('a8ae90c6', '@craft/web/assets/cp/dist'),
('ae81b58f', '@lib/selectize'),
('b2d04957', '@craft/web/assets/updateswidget/dist'),
('b7221293', '@lib/datepicker-i18n'),
('bbff1d0c', '@craft/web/assets/generalsettings/dist'),
('bf936a0e', '@craft/web/assets/fieldsettings/dist'),
('c7e7afdc', '@lib/garnishjs'),
('d264b20f', '@craft/web/assets/fields/dist'),
('d2a17be2', '@lib/fabric'),
('d9ff6a97', '@craft/ckeditor/assets/field/dist'),
('db4a4ada', '@craft/web/assets/admintable/dist'),
('e21799f5', '@lib/fileupload'),
('e4f2b68', '@lib/vue'),
('eeb4a6e2', '@lib/iframe-resizer'),
('f25ca80c', '@craft/web/assets/utilities/dist'),
('f45ab85a', '@lib/d3'),
('f5bf522c', '@craft/web/assets/queuemanager/dist'),
('fa76007a', '@craft/web/assets/tablesettings/dist'),
('faff980b', '@lib/picturefill'),
('fd5ba4c9', '@lib/jquery-touch-events'),
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
  `notes` text COLLATE utf8_unicode_ci
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
(16, 22, 1, 4, NULL);

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
(1, 'firstname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'email', 0, 1, ' pjotr pixeldeluxe nl '),
(1, 'slug', 0, 1, ''),
(2, 'slug', 0, 1, ' temp oopszpfymblrxbprfotagkerhafapfiyzewo '),
(2, 'title', 0, 1, ''),
(3, 'slug', 0, 1, ' temp ylivjjkvdwdyjfdljypjwfyoklacdqexrfqm '),
(3, 'title', 0, 1, ''),
(4, 'title', 0, 1, ' the simplest math problem no one can solve collatz conjecture '),
(4, 'slug', 0, 1, ' the simplest math problem no one can solve collatz conjecture '),
(6, 'filename', 0, 1, ' thumnail jpeg '),
(6, 'extension', 0, 1, ' jpeg '),
(6, 'kind', 0, 1, ' image '),
(6, 'slug', 0, 1, ''),
(6, 'title', 0, 1, ' thumnail '),
(10, 'title', 0, 1, ' homepage '),
(10, 'slug', 0, 1, ' homepage '),
(22, 'title', 0, 1, ' navbar '),
(22, 'slug', 0, 1, ' navbar ');

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
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `defaultPlacement` enum('beginning','end') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'end',
  `previewTargets` text COLLATE utf8_unicode_ci,
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
(2, NULL, 'homepage', 'homepage', 'single', 1, 'all', 'end', '[{\"label\":\"Primaire invoer-pagina\",\"urlFormat\":\"{url}\",\"refresh\":\"1\"}]', '2021-09-06 13:11:08', '2021-09-06 13:11:08', NULL, '364d4330-d412-40f3-99b9-8a3dd6a2d954'),
(3, NULL, 'navbar', 'navbar', 'single', 1, 'all', 'end', '[{\"label\":\"Primaire invoer-pagina\",\"urlFormat\":\"{url}\",\"refresh\":\"1\"}]', '2021-09-06 14:38:41', '2021-09-06 14:39:19', NULL, 'b94e9ccf-1f7c-4952-87b0-2514213a3b78');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sections_sites`
--

CREATE TABLE `sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text COLLATE utf8_unicode_ci,
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
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
(3, 3, 1, 1, '_layouts/main', '_layouts/main', 1, '2021-09-06 14:38:41', '2021-09-06 14:40:32', '9f9b8655-4e66-4366-bea9-6165a68c3c5a');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sequences`
--

CREATE TABLE `sequences` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT '1'
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
(1, 1, 'a5KmNJk4V0lXKv3fTaLc0Ew8fanOjmv7rv4jKX8FI66dOd7vlrF7tEe1NXEzpADN4tGmDjq7QjcwoD2gZc2xwd_evddMWgHeBHuk', '2021-09-06 10:09:24', '2021-09-06 15:21:30', 'd7ea78a3-fd13-4b5f-ad8a-1019e9a8bb82');

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
(1, 'Blogsite', '2021-09-06 10:09:22', '2021-09-06 10:09:22', NULL, '7ce16e90-1108-4637-ae34-135db25fef4e');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
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
(1, 1, 1, 1, 'Blogsite', 'default', 'nl', 1, '$PRIMARY_SITE_URL', 1, '2021-09-06 10:09:22', '2021-09-06 10:09:22', NULL, '1a7ded85-cd10-4685-8696-21042404ec46');

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
  `route` text COLLATE utf8_unicode_ci,
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
  `description` text COLLATE utf8_unicode_ci,
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
  `preferences` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `userpreferences`
--

INSERT INTO `userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"nl\"}');

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
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Paniek', NULL, NULL, NULL, 'pjotr@pixeldeluxe.nl', '$2y$13$SpanFiy1cnaZO3svx/lUqevsBsN4uK4BAo69pT1mXo0CK.yMfLnYO', 1, 0, 0, 0, '2021-09-06 10:09:24', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '2021-09-06 10:09:24', '2021-09-06 10:09:24', '2021-09-06 10:09:26', 'e3aecde8-a6e4-4fd1-b509-3ae4771c72f1');

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
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleTranslationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text COLLATE utf8_unicode_ci,
  `settings` text COLLATE utf8_unicode_ci,
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
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
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
  ADD KEY `idx_ljjhmkcbcfphvjdhbuokmwgxkgixzbkvmjwq` (`volumeId`,`assetId`,`location`);

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
  ADD KEY `fk_szuwldkqlhzzqxotjlvyatxqxrzncbvtbldr` (`revisionId`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT voor een tabel `elements_sites`
--
ALTER TABLE `elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT voor een tabel `entrytypes`
--
ALTER TABLE `entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT voor een tabel `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT voor een tabel `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT voor een tabel `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT voor een tabel `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT voor een tabel `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `sections_sites`
--
ALTER TABLE `sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `structures`
--
ALTER TABLE `structures`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
