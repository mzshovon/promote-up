-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2021 at 08:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `promote_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address`, `phone`, `email`, `others`, `created_at`, `updated_at`) VALUES
(1, '30 Idimu Road, Chemist Busstop, Orilowo Ejigbo, Lagos', '08141832821', 'support@mesteemic.com', NULL, NULL, '2020-01-17 00:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `city`, `zip_code`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, '$2a$08$jZuTwtItrWM5ljP.3sTgHuLFjXqkO.p22Wkx7LgWNG29aTuqUme/6', NULL, NULL, NULL),
(2, 'sub admin', 'subadmin@gmail.com', '09876543', 'test', '1234', NULL, NULL, '$2y$10$WO/a2MWp2ZVlf3bSV01mye5BM6UXRR4ozQBBcUtrlSKrAMKUt1C4q', NULL, '2020-01-19 16:39:03', '2020-01-19 16:39:37'),
(3, 'Shop1', 'Shop1@mesteemic.com', NULL, NULL, NULL, NULL, NULL, 'mesteemic1', NULL, '2020-01-22 04:31:01', '2020-06-25 09:01:17'),
(4, 'Shop2', 'Shop2@msteemic.com', NULL, NULL, NULL, NULL, NULL, 'mesteemic02', NULL, '2020-01-22 04:31:59', '2020-06-25 09:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_font` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `title`, `sub_font`, `details`, `created_at`, `updated_at`) VALUES
(4, 'assets/banner/all-1605122864.jpg', 'all', '1', 'a', '2020-09-02 05:11:01', '2020-11-12 00:27:44'),
(6, 'assets/banner/friends-1605122971.jpg', 'friends', '2', 'asd', '2020-09-04 12:43:41', '2020-11-12 00:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `boostings`
--

CREATE TABLE `boostings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dollar_cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taka_cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boostings`
--

INSERT INTO `boostings` (`id`, `page_name`, `dollar_cost`, `taka_cost`, `payment`, `payment_owner`, `payment_status`, `created_at`, `updated_at`) VALUES
(3, 'Labonno boshon', '20', '1800', '1920', 'sakib', 'due', '2021-01-02 05:07:32', '2021-01-02 05:55:35'),
(4, 'La mamba', '30', '2720', '3100', 'sakib', 'due', '2021-01-03 06:24:55', '2021-01-03 06:24:55'),
(5, 'La sartoria', '50', '4652', '5010', 'sakib', 'due', '2021-01-03 07:29:24', '2021-01-03 07:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1=active;2=block',
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `status`, `department_id`, `created_at`, `updated_at`) VALUES
(7, 'Upoma', 'sharees', 1, 11, '2020-08-03 23:29:05', '2020-08-03 23:29:05'),
(8, 'N/A', 'N/A', 1, 15, '2020-11-10 19:56:29', '2020-11-10 19:56:29'),
(9, 'Descreption', 'dress', 1, 14, '2020-11-11 04:32:00', '2020-11-11 04:56:22'),
(10, 'ডিসেন্ড', 'ডিসেন্ড', 1, 17, '2020-11-12 15:08:05', '2020-11-12 15:08:05'),
(11, 'স্বাধীন বাংলা', 'স্বাধীন বাংলা', 1, 17, '2020-11-12 15:11:20', '2020-11-12 15:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1=active;2=block',
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`, `department_id`, `created_at`, `updated_at`) VALUES
(6, 'jamdani', 'sharees', 1, 11, '2020-08-03 23:28:42', '2020-09-14 11:31:25'),
(8, 'থ্রি-পিস', 'superstudiobd', 1, 14, '2020-11-10 18:22:11', '2020-11-11 04:24:21'),
(9, 'টাঙ্গাইল পোড়াবাড়ির মিষ্টান্ন ভান্ডার', 'শুধু ঢাকার ভিতর', 1, 15, '2020-11-10 19:47:03', '2020-11-10 19:47:03'),
(11, 'পাবনা মিষ্টান্ন', 'পাবনার বিখ্যাত ঘি,আচার,সন্দেশ,নাড়ু', 1, 15, '2020-11-11 05:32:30', '2020-11-11 05:32:30'),
(12, 'লুঙ্গি', 'লুঙ্গি', 1, 17, '2020-11-12 15:06:37', '2020-11-12 15:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Md. Omor Faruk', '09877655', 'user@email.com', 'Something Test', '2020-01-16 06:21:01', '2020-01-16 06:21:01'),
(2, 'IKENNA CHIADIGHIKAOBI', '0149946358', 'reniykec@yahoo.com', 'HJHJGGFG', '2020-01-20 06:53:35', '2020-01-20 06:53:35'),
(3, 'Kennethexown', '89816213973', 'raphaeUseglic@gmail.com', 'Hello!  mesteemic.com \r\n \r\nDid you know that it is possible to send business offer utterly legal? \r\nWe offering a new legal method of sending business proposal through contact forms. Such forms are located on many sites. \r\nWhen such letters are sent, no personal data is used, and messages are sent to forms specifically designed to receive messages and appeals. \r\nAlso, messages sent through contact Forms do not get into spam because such messages are considered important. \r\nWe offer you to test our service for free. We will send up to 50,000 messages for you. \r\nThe cost of sending one million messages is 49 USD. \r\n \r\nThis letter is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  FeedbackForm2019 \r\nEmail - feedbackform@make-success.com', '2020-01-21 19:03:48', '2020-01-21 19:03:48'),
(4, 'IKENNA RENE CHIADIGHIKAOBI', '0149946358', 'CHIADIGHIKAOBIIKENNA@YAHOO.COM', 'gghjjghkjhk', '2020-01-22 01:00:34', '2020-01-22 01:00:34'),
(5, 'Eric Jones', '416-385-3200', 'eric@talkwithcustomer.com', 'Hello mesteemic.com,\r\n\r\nPeople ask, “why does TalkWithCustomer work so well?”\r\n\r\nIt’s simple.\r\n\r\nTalkWithCustomer enables you to connect with a prospective customer at EXACTLY the Perfect Time.\r\n\r\n- NOT one week, two weeks, three weeks after they’ve checked out your website mesteemic.com.\r\n- NOT with a form letter style email that looks like it was written by a bot.\r\n- NOT with a robocall that could come at any time out of the blue.\r\n\r\nTalkWithCustomer connects you to that person within seconds of THEM asking to hear from YOU.\r\n\r\nThey kick off the conversation.\r\n\r\nThey take that first step.\r\n\r\nThey ask to hear from you regarding what you have to offer and how it can make their life better. \r\n\r\nAnd it happens almost immediately. In real time. While they’re still looking over your website mesteemic.com, trying to make up their mind whether you are right for them.\r\n\r\nWhen you connect with them at that very moment it’s the ultimate in Perfect Timing – as one famous marketer put it, “you’re entering the conversation already going on in their mind.”\r\n\r\nYou can’t find a better opportunity than that.\r\n\r\nAnd you can’t find an easier way to seize that chance than TalkWithCustomer. \r\n\r\nCLICK HERE http://www.talkwithcustomer.com now to take a free, 14-day test drive and see what a difference “Perfect Timing” can make to your business.\r\n\r\nSincerely,\r\nEric\r\n\r\nPS:  If you’re wondering whether NOW is the perfect time to try TalkWithCustomer, ask yourself this:\r\nWill doing what I’m already doing now produce up to 100X more leads?\r\nBecause those are the kinds of results we know TalkWithCustomer can deliver.  \r\nIt shouldn’t even be a question, especially since it will cost you ZERO to give it a try. \r\nCLICK HERE http://www.talkwithcustomer.com to start your free 14-day test drive today.\r\n\r\nIf you\'d like to unsubscribe click here http://liveserveronline.com/talkwithcustomer.aspx?d=mesteemic.com', '2020-02-17 14:01:39', '2020-02-17 14:01:39'),
(6, 'Monica Brown', '81236249236', 'm.brown@explainervids.online', 'I messaged previously about how explainer videos became an absolute must for every website in 2020. Driving relevant traffic to your site is hard enough, you must capture this traffic and engage them! \r\n \r\n \r\nAs you know, Google is constantly changing its SEO algorithm. The only thing that has remained consistent is that adding an explainer video increases website rank and most importantly keeps customers on your page for longer, increasing conversions ratios. \r\n \r\n \r\nMy team has created thousands of marketing videos including dozens in your field. Simplify your pitch, increase website traffic, and close more business. \r\n \r\n \r\nShould I send over some industry-specific samples? \r\n \r\n \r\n-- Monica Brown \r\n \r\n \r\nEmail: M.Brown@explainervids.online \r\nWebsite: http://explainervids.online', '2020-02-17 23:29:48', '2020-02-17 23:29:48'),
(7, 'Eric Jones', '416-385-3200', 'eric@talkwithwebvisitor.com', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found mesteemic.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=mesteemic.com', '2020-02-22 18:50:12', '2020-02-22 18:50:12'),
(8, 'KennethDiavy', '82512699892', 's.z.y.m.a.n.skiashley5@gmail.com', 'indigestion natural remedies  <a href= http://www.studiomerliniortodonzia.it/cgi-bin/testosterone.htm >studiomerliniortodonzia.it/cgi-bin/testosterone.htm</a>  prescription glasses coupon', '2020-03-01 00:13:43', '2020-03-01 00:13:43'),
(9, 'Eric Jones', '416-385-3200', 'eric@talkwithcustomer.com', 'Hi,\r\n\r\nYou know it’s true…\r\n\r\nYour competition just can’t hold a candle to the way you DELIVER real solutions to your customers on your website mesteemic.com.\r\n\r\nBut it’s a shame when good people who need what you have to offer wind up settling for second best or even worse.\r\n\r\nNot only do they deserve better, you deserve to be at the top of their list.\r\n \r\nTalkWithCustomer can reliably turn your website mesteemic.com into a serious, lead generating machine.\r\n\r\nWith TalkWithCustomer installed on your site, visitors can either call you immediately or schedule a call for you in the future.\r\n \r\nAnd the difference to your business can be staggering – up to 100X more leads could be yours, just by giving TalkWithCustomer a FREE 14 Day Test Drive.\r\n \r\nThere’s absolutely NO risk to you, so CLICK HERE http://www.talkwithcustomer.com to sign up for this free test drive now.  \r\n\r\nTons more leads? You deserve it.\r\n\r\nSincerely,\r\nEric\r\nPS:  Odds are, you won’t have long to wait before seeing results:\r\nThis service makes an immediate difference in getting people on the phone right away before they have a chance to turn around and surf off to a competitor\'s website. D Traylor, Traylor Law  \r\nWhy wait any longer?  \r\nCLICK HERE http://www.talkwithcustomer.com to take the FREE 14-Day Test Drive and start converting up to 100X more leads today!\r\n\r\nIf you\'d like to unsubscribe click here http://liveserveronline.com/talkwithcustomer.aspx?d=mesteemic.com', '2020-03-02 00:42:11', '2020-03-02 00:42:11'),
(10, 'Lelandsat', '82968132714', 's.z.y.m.a.n.s.kiashley5@gmail.com', 'free drug counseling  <a href= http://www.annakarinnyberg.se/kodein.html >http://www.annakarinnyberg.se/kodein.html</a>  ephedra energy pills', '2020-03-11 23:21:57', '2020-03-11 23:21:57'),
(11, 'Anthonyaveft', '89873914921', 'raphaeUseglic@gmail.com', 'Hi!  mesteemic.com \r\n \r\nDo you know the best way to talk about your product or services? Sending messages through contact forms can permit you to simply enter the markets of any country (full geographical coverage for all countries of the world).  The advantage of such a mailing  is that the emails that may be sent through it\'ll end up in the mailbox that\'s intended for such messages. Causing messages using Contact forms isn\'t blocked by mail systems, which means it is sure to reach the recipient. You will be able to send your offer to potential customers who were antecedently unavailable because of email filters. \r\nWe offer you to check our service without charge. We will send up to fifty thousand message for you. \r\nThe cost of sending one million messages is us $ 49. \r\n \r\nThis message is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nEmail - make-success@mail.ru', '2020-03-12 07:47:54', '2020-03-12 07:47:54'),
(12, 'Philip Anderson', '86694637374', 'storybitestudio14@gmail.com', 'Hi there, I came across your website and wanted to get in touch. \r\n \r\nI run an animation studio that makes animated explainer videos helping companies to better explain their offering and why potential customers should work with them over the competition. \r\n \r\nThis is our portfolio: http://www.story-bite.com/ - do you like it? \r\n \r\nOur team works out of Denmark to create high quality videos made from scratch, designed to make your business stand out and get results. No templates, no cookie cutter animation that tarnishes your brand. \r\n \r\nI would be very interested in creating a great animated video for your company. \r\n \r\nWe have a smooth production process and handle everything needed for a high-quality video that typically takes us 6 weeks to produce from start to finish. \r\n \r\nFirst, we nail the script, design storyboards you can’t wait to see animated. Voice actors in your native language that capture your brand and animation that screams premium with sound design that brings it all together. \r\n \r\nIf you’re interested in learning more visit our website or please get in touch on the email below: \r\nEmail: storybiteanimations@gmail.com \r\n \r\nI hope to hear back from you.', '2020-03-13 18:02:18', '2020-03-13 18:02:18'),
(13, 'Eric Jones', '416-385-3200', 'eric@talkwithwebvisitor.com', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - mesteemic.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across mesteemic.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=mesteemic.com', '2020-03-15 05:37:44', '2020-03-15 05:37:44'),
(14, 'DavidSpolo', '84698899242', 'writingbyb@gmail.com', 'Hi! \r\nDo you struggle to find time to write fresh blog and website content? \r\nI am a highly-skilled blog and web content writer with more than 10 years of experience. Let me provide well-researched, 100 percent unique content specifically for you! \r\nContact Benjamin Today and Discover the Difference a Professional Blog Writer Makes! \r\nEmail - NewBusiness@writingbybenjamin.com \r\n// Skype - Behinger19 \r\n// Website - http://www.WritingByBenjamin.com', '2020-03-16 22:01:45', '2020-03-16 22:01:45'),
(15, 'Albertina Steigrad', '079 5867 2461', 'expiry@mesteemic.com', 'ATTN: mesteemic.com / MESTEEMIC | Contact Us SERVICE\r\nThis notice EXPIRES ON: Mar 23, 2020.\r\n\r\nWe tried to contact you but were unable to reach you.\r\n\r\nPlease Visit: ‪https://tinyurl.com/txt5byj‬ ASAP.\r\n\r\nFor information and to make a discretionary payment for mesteemic.com services.\r\n\r\n\r\n\r\n03232020081645.', '2020-03-23 16:16:48', '2020-03-23 16:16:48'),
(16, 'AnnaKak', '89442259111', 'anna@zdhmarketing.online', 'Need to take your business digital now? \r\n \r\nI am here to help! \r\n \r\nMy marketing firm is offering free starter bundles to any business impacted by the current crisis. No one knows how long this pandemic can last - so it’s time to get serious about online presence and converting marketing channels to online methods. \r\n \r\nWe have waived all setup fees and even created a new \"express-campaign\" which can be setup within 72 hours in order to help anyone suffering from the market’s uncertainty. \r\n \r\nContact me to learn more about our free basic marketing bundles, or to view our clear step by step plan for driving your business growth via online marketing. \r\n \r\nEmail me back to hear more. anna@zdhmarketing.online \r\nWebsite: http://www.zdhmarketing.online/', '2020-03-24 02:14:52', '2020-03-24 02:14:52'),
(17, 'Martinjet', '84169145985', 'no-reply@hilkom-digital.de', 'hi there \r\nI have just checked mesteemic.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2020-03-26 05:31:10', '2020-03-26 05:31:10'),
(18, 'Eric Jones', '416-385-3200', 'eric@talkwithwebvisitor.com', 'Hey, this is Eric and I ran across mesteemic.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=mesteemic.com', '2020-03-28 14:00:27', '2020-03-28 14:00:27'),
(19, 'Gunter Gram', '84358969324', 'fax.promotion@consultant.com', 'Dear friend, \r\nMy names is Mr. Gunter Luz Gram, I’m a lawyer base in Vienna Austria i hope you and your family are safe from this Covid-19. Well, i have previously sent you an email regarding a transaction of US$9.2 Million left behind by my late client before his tragic death. \r\nHowever, I am contacting you once again because after going through your profile, I strongly believe that you will be in a better position to execute this business transaction with me. \r\nPlease if you are interested to proceed with me, kindly respond to my email urgently for more detail. \r\nPlease Stay Safe and I look forward to your response. \r\nRegards, \r\nMr. Gunter L Gram \r\nEmail: gunter@glplawfirms.com \r\nTelephone: +43 670 309 9097', '2020-04-01 03:38:06', '2020-04-01 03:38:06'),
(20, 'Gunter Gram', '81137948529', 'fax.promotion@consultant.com', 'My names is Mr. Gunter Luz Gram, I’m a lawyer base in Vienna Austria, I sent you a message 2 days ago regarding a transaction of US$9.2 Million left by my deceased client before his sudden death. Unfortunately I could not read any email you sent till now. For this reason, I am writing to give you my personal email to communicate with you. \r\n \r\nIf you’re interested and want me to feed you with more information about this transaction, please write me on this email: gunterluz@glplawfirms.com TEL: +43 670 309 9097. \r\n \r\nAfter the transaction I will want us to donate 10% of this money to charity organizations while the remaining 90% will be shared between us thus 45% each; \r\n \r\nOnce I hear from you I will feed you with more information and I m sure you will be happy at the end. \r\n \r\nPlease Stay Safe and I look forward to your response. \r\n \r\nYours sincerely \r\n \r\nMr. Gunter L Gram \r\nEmail: gunterluz@glplawfirms.com \r\nTelephone: +43 670 309 9097', '2020-04-02 14:32:43', '2020-04-02 14:32:43'),
(21, 'Claire Holstein', '83446125191', 'claire@explainingyourbusiness.com', 'With so much change in virtually every industry, the only constant is quality and engaging content. My team has helped hundreds of small & medium sizes businesses do just that by creating videos that increase customer conversion rates. \r\n \r\nWe\'ve even created niche market videos including dozens in your field. Simplify your pitch, increase website traffic, and close more business. \r\n \r\nShould I send over some industry-specific samples? \r\n \r\n-- Claire Holstein \r\n \r\nEmail: Claire@explainingyourbusiness.com \r\nWebsite with samples http://Explainingyourbusiness.com/', '2020-04-08 06:57:03', '2020-04-08 06:57:03'),
(22, 'Jamespible', '82591546755', 'coronavaccine@hotmail.com', 'COVID-19 outbreak: airplanes grounded, borders closed, businesses shut, citizens quarantined, political power seized, democracy undermined. \r\nAll this, if it is not stopped shortly, can lead to chaos and unrests. \r\nCurrently http://ST-lF.NET focus on raising awareness of the social impact that radically politicized approach to handling CoronaVirus Pandemic will have on the younger generations. \r\nYour support is needed to reduce the destructive impact the lock-down brings to bear on the younger generation. \r\nEvery 1$ makes a difference. \r\nPlease, take a moment to watch our presentation video and review our campaigns http://ST-lF.NET', '2020-04-12 08:19:42', '2020-04-12 08:19:42'),
(23, 'Eric Jones', '416-385-3200', 'eric@talkwithwebvisitor.com', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - mesteemic.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across mesteemic.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=mesteemic.com', '2020-04-13 04:19:56', '2020-04-13 04:19:56'),
(24, 'Shannon Malcolm', '052 423 81 57', 'malcolm.shannon@outlook.com', 'Hello,\r\n\r\nWe have available the following, with low minimum order requirements - if you or anyone you know is in need:\r\n\r\n-3ply Disposable Masks\r\n-KN95 masks and N95 masks with FDA, CE certificate\r\n-Gloves\r\n-Disposable Gowns\r\n-Sanitizing Wipes\r\n-Hand Sanitizer\r\n-Face Shields\r\n-Oral and No Touch Thermometers\r\n-Swabs\r\n\r\nDetails:\r\n\r\nWe are based in the US\r\n\r\nAll products are produced in China\r\n\r\nWe are shipping out every day.\r\n\r\nMinimum order size varies by product\r\n\r\nWe can prepare container loads and ship via AIR or SEA.\r\n\r\nPlease reply back to debbiesilver2112@gmail.com with the product you need , the quantity needed, and the best contact phone number to call you\r\n\r\n\r\nThank you\r\n\r\nDebbie Silver\r\nPPE Product Specialist', '2020-04-13 06:54:26', '2020-04-13 06:54:26'),
(25, 'Dave Willis', '86425499876', 'davewillis2008@gmail.com790.txt', 'Hello, \r\n \r\nWe have available the following, with low minimum order requirements - if you or anyone you know is in need: \r\n \r\n-3ply Disposable Masks \r\n-KN95 masks and N95 masks with FDA, CE certificate \r\n-Gloves, Gowns \r\n-Sanitizing Wipes, Hand Sanitizer \r\n-Face Shields \r\n-Orla and No Touch Thermometers \r\n \r\n \r\nDetails: \r\nWe are based in the US \r\nAll products are produced in China \r\nWe are shipping out every day. \r\nMinimum order size varies by product \r\nWe can prepare container loads and ship via AIR or SEA. \r\n \r\nPlease reply back with the product you need , the quantity needed, and the best contact phone number to call you \r\ndavewillis2008@gmail.com \r\n \r\nThank you \r\n \r\nDave Willis \r\nProduct Specialist', '2020-04-14 07:25:34', '2020-04-14 07:25:34'),
(26, 'Autumn Testerman', '077 7207 9560', 'expiry@mesteemic.com', 'ATTN: mesteemic.com / MESTEEMIC | WEBSITE SERVICES\r\nThis  notification  RUNS OUT ON: Apr 14, 2020\r\n\r\nWe  have actually not  gotten a payment from you.\r\nWe  have actually  attempted to contact you  however were  incapable to reach you.\r\n\r\nPlease  Go To: https://bit.ly/2UNVkkn ASAP.\r\n\r\nFor information and to make a discretionary payment for services.\r\n\r\n\r\n04142020150142.', '2020-04-14 23:02:00', '2020-04-14 23:02:00'),
(27, 'Royal Demaria', '091 929 38 83', 'expiry@mesteemic.com', 'ATTN: mesteemic.com / MESTEEMIC | WEBSITE SERVICES\r\nThis  notification  ENDS ON: Apr 16, 2020\r\n\r\nWe  have actually not received a  repayment from you.\r\nWe  have actually  attempted to contact you but were  incapable to reach you.\r\n\r\nPlease  See:  https://bit.ly/2xnB40i ASAP.\r\n\r\nFor  info  as well as to make a discretionary  repayment for  solutions.\r\n\r\n\r\n04162020211723.', '2020-04-17 05:17:25', '2020-04-17 05:17:25'),
(28, 'Georgecat', '82812263659', 'bradbroker16@gmail.com', 'Are you looking to sell your HVAC business? Now is the time! We have buyers available right now looking to purchase a business like yours. Now is the time to buy with uncertainty on the future so high and with investor still having some money to invest. Let us go to work for you today - we have buyers ready to make you an offer today. Our buyers are specifically looking for HVAC companies. \r\n \r\nIf you are an HVAC company, we can sell your business no matter what state you are in - however, if you are any other type of business, then we can only sell your business if you are located in Illinois. \r\n \r\nEmail us today to connect  at: \r\n \r\nbrad@ilbusinessbroker.com', '2020-04-18 11:03:52', '2020-04-18 11:03:52'),
(29, 'Lucia Harpster', '(54) 9256-6707', 'lucia.harpster@yahoo.com', 'Want more visitors for your website? Receive tons of people who are ready to buy sent directly to your website. Boost your profits fast. Start seeing results in as little as 48 hours. To get details Check out: http://bit.ly/trafficmasters2020', '2020-04-18 20:57:19', '2020-04-18 20:57:19'),
(30, 'David Biton', '87466327548', 'david@graphicdesigns.site', 'Shalom, David here. \r\n \r\nYour website and business look great and both seem well established. \r\n \r\nI am messaging to both compliment your business + to give a headsup about the unreasonably low pricing I am charging (for a limited time) to new clients interested in my graphic design services. \r\n \r\nReply back to say Hi, ask to see my portfolio, or visit my site. \r\n \r\nEmail me: david@graphicdesigns.site \r\nWebsite: http://graphicdesigns.site', '2020-04-19 01:54:14', '2020-04-19 01:54:14'),
(31, 'Emery Beavis', '(03) 6291 9024', 'beavis.emery@googlemail.com', 'Would you like to post your advertisement on thousands of online ad websites every month? For a small monthly payment you can get almost endless traffic to your site forever!\r\n\r\nTake a look at: http://bit.ly/adpostingrobot', '2020-04-19 05:03:42', '2020-04-19 05:03:42'),
(32, 'Winston', '708-320-3171', 'jacobsxkhf23@thefirstpageplan.com', 'Hey guys, I just wanted to see if you need anything in the way of site editing/code fixing/programming, unique blog post material, extra traffic by getting others to start sharing your site across their own social media accounts, social media management, optimizing the site, monitizing the site, etc.  I have quite a few ways I can set all of this and do this for you.  Don\'t mean to impose, was just curious, I\'ve been doing this for some time and was just curious if you needed an extra hand. I can even do Wordpress and other related tasks (you name it).\r\n\r\nWinston R.\r\n1.708.320.3171', '2020-04-22 05:51:21', '2020-04-22 05:51:21'),
(33, 'Martinjet', '86199426553', 'no-reply@hilkom-digital.de', 'hi there \r\nI have just checked mesteemic.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2020-04-23 07:29:01', '2020-04-23 07:29:01'),
(34, 'Raymond 	Brown', '86872417754', 'info@thecctvhub.com', 'Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply medical products: \r\n \r\nMedical masks \r\n3M, 3ply, KN95, KN99, N95 masks \r\nProtective masks \r\nEye mask \r\nProtective cap \r\nDisinfectant \r\nHand sanitiser \r\nMedical alcohol \r\nEye protection \r\nDisposable latex gloves \r\nProtective suit \r\nIR non-contact thermometers \r\n \r\nand Thermal cameras for Body Temperature Measurement up to accuracy of ±0.1?C \r\nAdvantages of thermal imaging detection: \r\n \r\n1. Intuitive, efficient and convenient, making users directly \"see\" the temperature variation. \r\n2. Thermal condition of different locations for comprehensive analysis, providing more information for judgment \r\n3. Avoiding judgment errors, reducing labor costs, and discovering poor heat dissipation and hidden trouble points \r\n4. PC software for data analysis and report output \r\n \r\nWhatsapp: +65 87695655 \r\nTelegram: cctv_hub \r\nSkype: cctvhub \r\nEmail: sales@thecctvhub.com \r\nW: http://www.thecctvhub.com/ \r\n \r\nIf you do not wish to receive email from us again, please let us know by replying. \r\n \r\nregards, \r\nRaymond', '2020-04-29 03:40:37', '2020-04-29 03:40:37'),
(35, 'SteveTix', '89953615244', 'bitclaybtc@gmail.com', 'Blockchain system automatically credits up to 11 bitcoins every 2 days to each participant  \r\n \r\nHow it works:   \r\n \r\nFill out the registration form in the project. \r\n \r\nEnter the address of the Bitcoin wallet (the one to which payments from the project will come) \r\n \r\nIndicate the correct e-mail address for communication. \r\n \r\nRead the FAQ section and get rich along with other project participants. \r\nGet + 10% every 2 days to your personal Bitcoin wallet in addition to your balance. \r\n \r\n \r\nRegister and receive a guaranteed payment from 0,0075 BTC to 11 BTC:   \r\nhttps://www.crypto-mmm.com/?source=getbitco  \r\n \r\n \r\nThere are no restrictions - your bitcoins in your personal bitcoin wallet are available for use 24 hours a day!', '2020-04-30 09:32:41', '2020-04-30 09:32:41'),
(36, 'David Bitton', '86722765263', 'david@marketingvideocompany.com', 'For the last 10 years, the team at MarketingVideoCompany.com has been creating video content for businesses like yours. We\'ve primarily worked directly with marketing agencies to provide top quality graphics and marketing videos. \r\n \r\nWe have recently started working directly with end-businesses (like you) instead of marketing agencies that typically markup our video pricing with a 2-3x premium. There\'s a reason why wholesalers and resellers of our videos are able to charge so much for our productions. We\'re excited to offer you high-quality videos at wholesale pricing by skipping the middleman and working directly with our marketing and explainer video production team. \r\n \r\nYou can email me at david@marketingvideocompany.com or visit http://marketingvideocompany.com/ to check out sample videos. \r\n \r\nCan I send you over some of our recent work that I think you will find relevant? \r\n-- \r\nThanks - stay healthy and safe. \r\nDavid Bitton', '2020-04-30 21:37:24', '2020-04-30 21:37:24'),
(37, 'Arnette Harrill', '06-25634732', 'arnette.harrill@googlemail.com', 'Completely Free advertising, submit your site now and start getting new visitors. Visit: http://bit.ly/submityourfreeads', '2020-05-01 22:18:56', '2020-05-01 22:18:56'),
(38, 'Dave Willis', '89426348914', 'no-reply@gmaill.com', 'Hello, \r\n \r\nWe have available the following, with low minimum order requirements - if you or anyone you know is in need: \r\n \r\n-3ply Disposable Masks \r\n-KN95 masks and N95 masks with FDA, CE certificate \r\n-Gloves, Gowns \r\n-Sanitizing Wipes, Hand Sanitizer \r\n-Face Shields \r\n-Orla and No Touch Thermometers \r\n \r\n \r\nDetails: \r\nWe are based in the US \r\nAll products are produced in China \r\nWe are shipping out every day. \r\nMinimum order size varies by product \r\nWe can prepare container loads and ship via AIR or SEA. \r\n \r\nPlease reply back with the product you need , the quantity needed, and the best contact phone number to call you \r\ndavewillis2008@gmail.com \r\n \r\nThank you \r\n \r\nDave Willis \r\nProduct Specialist', '2020-05-02 10:57:32', '2020-05-02 10:57:32'),
(39, 'Pansy Bastyan', '0488 43 48 47', 'pansy.bastyan@googlemail.com', 'PLEASE FORWARD THIS EMAIL TO SOMEONE IN YOUR COMPANY WHO IS ALLOWED TO MAKE IMPORTANT DECISIONS!\r\n\r\nWe have hacked your website http://www.mesteemic.com and extracted your databases.\r\n\r\nHow did this happen?\r\nOur team has found a vulnerability within your site that we were able to exploit. After finding the vulnerability we were able to get your database credentials and extract your entire database and move the information to an offshore server.\r\n\r\nWhat does this mean?\r\n\r\nWe will systematically go through a series of steps of totally damaging your reputation. First your database will be leaked or sold to the highest bidder which they will use with whatever their intentions are. Next if there are e-mails found they will be e-mailed that their information has been sold or leaked and your site http://www.mesteemic.com was at fault thusly damaging your reputation and having angry customers/associates with whatever angry customers/associates do. Lastly any links that you have indexed in the search engines will be de-indexed based off of blackhat techniques that we used in the past to de-index our targets.\r\n\r\nHow do I stop this?\r\n\r\nWe are willing to refrain from destroying your site\'s reputation for a small fee. The current fee is $2000 USD in bitcoins (BTC). \r\n\r\nSend the bitcoin to the following Bitcoin address (Copy and paste as it is case sensitive):\r\n\r\n1Md6imvB2neTF3s1kFiMG473k1XrBhxQhF\r\n\r\nOnce you have paid we will automatically get informed that it was your payment. Please note that you have to make payment within 5 days after receiving this notice or the database leak, e-mails dispatched, and de-index of your site WILL start!\r\n\r\nHow do I get Bitcoins?\r\n\r\nYou can easily buy bitcoins via several websites or even offline from a Bitcoin-ATM. We suggest you https://cex.io/ for buying bitcoins.\r\n\r\nWhat if I don’t pay?\r\n\r\nIf you decide not to pay, we will start the attack at the indicated date and uphold it until you do, there’s no counter measure to this, you will only end up wasting more money trying to find a solution. We will completely destroy your reputation amongst google and your customers.\r\n\r\nThis is not a hoax, do not reply to this email, don’t try to reason or negotiate, we will not read any replies. Once you have paid we will stop what we were doing and you will never hear from us again!\r\n\r\nPlease note that Bitcoin is anonymous and no one will find out that you have complied.', '2020-05-03 17:29:00', '2020-05-03 17:29:00'),
(40, 'Jenny Wilson', '81933551465', 'jenny@justemailmarketing.com', 'Sending emails to millions of prospective clients may seem easy, but getting through filters and actually getting your message inboxed by decision-makers is a lot harder than it looks. \r\n \r\nMy team has mastered getting the “inbox” of key managers and would gladly help you with sales and lead prospecting. \r\n \r\nCheck out my site JustEmailMarketing.co to learn more, or just reply back to this email and I will share some of our more affordable plans that virtually guarantee new leads from your target niche clientele. \r\n \r\nLead Generation and Sales Prospecting has never been easier! \r\n \r\nThanks. \r\n \r\nJenny Wilson \r\njenny@justemailmarketing.co \r\nhttp://JustEmailMarketing.co', '2020-05-04 04:47:43', '2020-05-04 04:47:43'),
(41, 'Lewisorepe', '85867464815', 'ibf.hyper@yandex.com', 'Increase your Instagram followers by 100s per day with our new Instagram automation tool. Share photos, albums and stories using our HyperVote tool and boost your Instagram following. \r\n \r\nPricing designed to fit your needs and budget, from as little as 0.99 EUR. \r\n \r\nFor a limited time only get 30% off all Hyper plans! \r\n \r\nTo know more visit us at https://bit.ly/hyperIBF', '2020-05-07 04:50:49', '2020-05-07 04:50:49'),
(42, 'Eric Jones', '416-385-3200', 'eric@talkwithwebvisitor.com', 'My name’s Eric and I just found your site mesteemic.com.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithwebvisitor.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=mesteemic.com', '2020-05-07 15:45:01', '2020-05-07 15:45:01'),
(43, 'Kenton Baine', '403-833-4995', 'office.largeglobes.com@gmail.com', 'Hello,\r\nOur company makes handmade Large world globes that can be customized for your brand, company or interior design https://bit.ly/www-largeglobes-com\r\nPlease let me know if you would be interested in a custom large world globe and we can send more information.\r\n\r\nThank you.\r\nBest regards,\r\nRemus Gall\r\nGlobemaker at www.largeglobes.com\r\nProject manager at Biodomes www.biodomes.eu\r\n+40 721 448 830\r\nSkype ID office@biodomes.eu\r\nStr. Vonhaz nr 2/a Carei, Romania\r\n\r\n-----------------------------\r\n\r\nstop spam https://bit.ly/2VzubCe', '2020-05-11 09:02:19', '2020-05-11 09:02:19'),
(44, 'LeonardOwerb', '85342664413', 'supernaturaltruthfromheaven@gmail.com', 'Global Pestilence, Financial Meltdown, Weather Disasters, Nations Prepping For War, Famine and more. Doesn’t that sound Tribulational? The Last Days are here, and since you bought the Rapture lie, you’re caught by surprise. \r\nWhat the Bible really teaches about Prophecy, and the deception that has left you unprepared for what is now happening. We have print and video on what is occurring, but we only want to hear from sincere Christians who are clustering underground. To hear more send your name, and postal mailing address, and we’ll mail you the location our underground websites. \r\nSupernaturaltruthfromheaven@gmail.com', '2020-05-12 19:01:55', '2020-05-12 19:01:55'),
(45, 'Carroll Fagan', '01.29.26.31.18', 'fagan.carroll27@googlemail.com', 'Groundbreaking new way to advertise your website for Nothing! See here: http://www.submityourfreeads.xyz', '2020-05-12 23:47:54', '2020-05-12 23:47:54'),
(46, 'Wen Vancleaf', NULL, 'Porche87416@gmail.com', 'Hello,\r\n\r\nWe have available the following, with low minimum order requirements - if you or anyone you know is in need:\r\n\r\n-3ply Disposable Masks\r\n-KN95 masks and N95 masks with FDA, CE certificate\r\n-Gloves (Nitrile and Latex)\r\n-Disposable Gowns\r\n-Sanitizing Wipes\r\n-Hand Sanitizer\r\n-Face Shields\r\n-Oral and No Touch Thermometers\r\n-Swabs\r\n\r\nDetails:\r\nWe are based in the US\r\nAll products are produced Vietnam, Bangladesh, China or US – depending on item and quantity.\r\nWe are shipping out every day.\r\nMinimum order size varies by product\r\nWe can prepare container loads and ship via AIR or SEA.\r\n\r\nPlease reply back to lisaconnors.2019@gmail.com\r\n\r\nLet me know the item(s) you need, the quantity, and the best contact phone number to call you\r\n\r\nThank you\r\nLisa Connors\r\nPPE Product Specialist', '2020-05-15 19:56:09', '2020-05-15 19:56:09'),
(47, 'Freddy Garrison', '765-775-5366', 'franck.tamdhu@gmail.com', 'The analysis of the critical situation in the world may help Your business. We don\'t give advice on how to run it. We highlight key points from the flow of conflicting information. We call this situation: \"Big Brother operation\". Fact:  pandemics; Agenda:  control over the human population; Aim:  reduction of the population; Who:  a group of vested interests. Means: genetic engineering of viruses and vaccines; production of nanobots; mass-media communication satellites; big data; A.I.; global wi-fi. Ways:  use and/or elaborate a pandemic carrier; mass media scares the population; load vaccines with nanobots; mandatory vaccination; control and direct humans. Thank You for the time of reading our unsolicited message! God bless You.\r\n\r\nSee https://bit.ly/evilempire-blog\r\n\r\nSee: https://www.amazon.com/s?k=fomenko+history+fiction+or+science&i=stripbooks-intl-ship&crid=20JCWH6NLWFHJ&qid=1589389931&sprefix=fomenko2C347&ref=sr_pg_1', '2020-05-17 04:13:48', '2020-05-17 04:13:48'),
(48, 'Hulda Muse', '06524 41 04 55', 'datazeon@gmail.com', 'Hi,\r\n\r\nHow are you? I hope this email finds you well and healthy. \r\n\r\nJust wanted to check if you have any B2B Marketing Email List requirement? We dominate the business email list industry with a data compilation of over 40 million B2B executives and 18 million businesses compiled over the past 9 years through seminars, trade shows, exhibitions and magazine subscription offers. \r\n\r\nIndustry Covers: Technology, Networking, Telecommunication, Healthcare, Finance, Manufacturing, Education, Chemical, Construction, Human Resources, Automotive, Printing & Publishing, Marketing and Advertising, Hospitality, Retail, Real Estate and many more.. \r\nReach top-level executives like:  CEOs, CFOs, CTOs, COOs, CIOs Presidents, Chairman’s, CFO/VP Finance, VP/Director of Marketing, VP/Manager HR, VP/Director Purchasing, GMs, Mid-level Managers etc. . . .\r\nWe do provide Data Cleansing and Appending services to resolve this issue. If interested, let me know your target criteria so that I can get back to you with relevant information. \r\nAll contacts updated on April 2020 Tele-verified.\r\nIf you could let me know your Target Criteria wish to reach, I can get back to you with more relevant information on those particular lists with samples.\r\nRegards\r\n\r\nNancy Pears\r\nBusiness Development\r\nEmail: info@emaildatasupply.com \r\nwww.emaildatasupply.com', '2020-05-18 02:15:04', '2020-05-18 02:15:04'),
(49, 'Hosea Calvin', '0475 93 14 56', 'hosea.calvin@yahoo.com', 'Have you had enough of expensive PPC advertising? Now you can post your ad on thousands of advertising websites and it\'ll only cost you one flat fee per month. Never pay for traffic again! \r\n\r\nFor more information just visit: http://www.adpostingrobot.xyz', '2020-05-18 21:37:13', '2020-05-18 21:37:13'),
(50, 'Mia Alba', '604-893-6702', 'mia.alba41@outlook.com', 'Are You interested in advertising that costs less than $49 monthly and delivers thousands of people who are ready to buy directly to your website? Have a look at: http://www.trafficmasters.xyz', '2020-05-18 21:40:34', '2020-05-18 21:40:34'),
(51, 'Steve French', '81395396485', 's.french@drivetheleads.com', 'Impressive site. No doubt your clients appreciate your services and the time invested in your digital presence. I did however notice your business does not have a very strong LinkedIn presence. \r\n \r\nAs you know, LinkedIn is the number one business social network and the best tool for networking and business growth. \r\n \r\nMy company Drivetheleads.com uses LinkedIn networking exclusively for growth hacking on behalf of clients. The targeting is simply amazing. \r\n \r\nCan we schedule a quick demo or I can shoot you over an explainer video that reviews how my team can easily help expand your client base in a super affordable way? \r\n \r\nThanks. \r\nSteve French \r\ns.french@drivetheleads.com \r\nhttp://www.drivetheleads.com', '2020-05-25 22:40:55', '2020-05-25 22:40:55'),
(52, 'Joshuacem', '81891918553', 'no-replyUseglic@gmail.com', 'Hеllо!  mesteemic.com \r\n \r\nDid yоu knоw thаt it is pоssiblе tо sеnd rеquеst pеrfесtly lеgit? \r\nWе tеndеr а nеw mеthоd оf sеnding businеss prоpоsаl thrоugh fееdbасk fоrms. Suсh fоrms аrе lосаtеd оn mаny sitеs. \r\nWhеn suсh rеquеsts аrе sеnt, nо pеrsоnаl dаtа is usеd, аnd mеssаgеs аrе sеnt tо fоrms spесifiсаlly dеsignеd tо rесеivе mеssаgеs аnd аppеаls. \r\nаlsо, mеssаgеs sеnt thrоugh соmmuniсаtiоn Fоrms dо nоt gеt intо spаm bесаusе suсh mеssаgеs аrе соnsidеrеd impоrtаnt. \r\nWе оffеr yоu tо tеst оur sеrviсе fоr frее. Wе will sеnd up tо 50,000 mеssаgеs fоr yоu. \r\nThе соst оf sеnding оnе milliоn mеssаgеs is 49 USD. \r\n \r\nThis оffеr is сrеаtеd аutоmаtiсаlly. Plеаsе usе thе соntасt dеtаils bеlоw tо соntасt us. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  FeedbackForm2019 \r\nWhatsApp - +375259112693 \r\nEmail feedbackform@make-success.com', '2020-05-28 08:52:45', '2020-05-28 08:52:45');
INSERT INTO `contact_us` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(53, 'Parthenia Frye', '(03) 5383 6110', 'frye.parthenia20@gmail.com', 'Hello, I was just on your website and submitted this message via your \"contact us\" form. The contact page on your site sends you these messages via email which is the reason you\'re reading through my message right now right? That\'s the most important achievement with any kind of advertising, making people actually READ your advertisement and this is exactly what you\'re doing now! If you have something you would like to promote to lots of websites via their contact forms in the US or anywhere in the world send me a quick note now, I can even target your required niches and my prices are very reasonable. Write an email to: Phungcorsi@gmail.com', '2020-05-28 10:58:33', '2020-05-28 10:58:33'),
(54, 'Prince Taylor', '87581476113', 'prance.gold.arbitrage@gmail.com', 'Hi! \r\nI\'m Prince Taylor. \r\n \r\nI contacted you with an invitation for investment program witch you will definitely win. \r\n \r\nThe winning project I\'m here to invite you is called \"Prance Gold Arbitrage (PGA)\". \r\n \r\nPGA is a proprietary system that creates profits between cryptocurrency exchanges through an automated trading program. \r\n \r\nThe absolute winning mechanism \"PGA\" gave everyone the opportunity to invest in there systems for a limited time. \r\n \r\nYou have chance to join from only $ 1000 and your assets grow with automated transactions every day! \r\n \r\nInvestors who participated in this program are doubling their assets in just a few months. \r\nBelieve or not is your choice. \r\nBut don\'t miss it, because it\'s your last chance. \r\nSign up for free now! \r\n \r\nRegister Invitation code \r\nhttps://portal.prancegoldholdings.com/signup?ref=prince \r\n \r\nAbout us \r\nhttps://www.dropbox.com/s/0h2sjrmk7brhzce/PGA_EN_cmp.pdf?dl=0 \r\n \r\nPGA Plans \r\nhttps://www.dropbox.com/s/lmwgolvjdde3g8n/plans_en_cmp.pdf?dl=0 \r\n \r\nMovie \r\nhttps://www.youtube.com/watch?v=9054gGRtjX8', '2020-05-28 11:02:29', '2020-05-28 11:02:29'),
(55, 'Columbus Mooberry', NULL, 'Merkley69531@gmail.com', 'Tired of paying for clicks and getting lousy results? Now you can post your ad on thousands of advertising sites and it\'ll cost you less than $40. Never pay for traffic again!  To find out more check out our site here: http://www.adpostingrobot.xyz', '2020-05-28 20:58:10', '2020-05-28 20:58:10'),
(56, 'Eric Jones', '416-385-3200', 'eric@talkwithwebvisitor.com', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at mesteemic.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=mesteemic.com', '2020-05-30 08:35:48', '2020-05-30 08:35:48'),
(57, 'Eliza Rous', '41-67-48-85', 'rous.eliza@gmail.com', 'TRIFECTA! A novel that starches your emotional – erotic itch!\r\nAgainst a background of big business, deceit, frustration, oppression drives a wide range of emotions as three generations of women from the same family, turn to the same man for emotional support and physical gratification!\r\nA wife deceives her husband while searching for her true sexuality!\r\nWhat motivates the wife’s mother and son-in-law to enter into a relationship?\r\nThe wife’s collage age daughter, with tender guidance from her step-father, achieves fulfillment!\r\nDoes this describe a dysfunctional family? Or is this unspoken social issues of modern society?\r\nBLOCKBUSTER Opening! A foursome of two pair of lesbians playing golf. A little hanky – panky, while searching for a lost ball out of bounds. Trifecta has more turns and twist than our intestines.\r\nTrifecta! Combination of my personal experiences and creativity.\r\nhttps://bit.ly/www-popejim-com for “CLICK & VIEW” VIDEO. Send me your commits.\r\nAvailable amazon, book retailers.\r\nTrifecta! by James Pope', '2020-05-30 22:32:38', '2020-05-30 22:32:38'),
(58, 'Eric Jones', '416-385-3200', 'eric@talkwithwebvisitor.com', 'Hi, my name is Eric and I’m betting you’d like your website mesteemic.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at mesteemic.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithwebvisitor.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=mesteemic.com', '2020-06-01 18:18:12', '2020-06-01 18:18:12'),
(59, 'Peter Corden', '89855578676', 'no-reply@monkeydigital.co', 'Gооd dаy! \r\nafter reviewing your mesteemic.com website, we recommend our new 1 month SEO max Plan, as the best solution to rank efficiently, which will guarantee a positive SEO trend in just 1 month of work. One time payment, no subscriptions. \r\n \r\nMore details about our plan here: \r\nhttps://www.monkeydigital.co/product/seo-max-package/ \r\n \r\nthank you \r\nMonkey Digital \r\nsupport@monkeydigital.co', '2020-06-02 18:03:28', '2020-06-02 18:03:28'),
(60, 'Donaldjurce', '89587149717', 'atrixxtrix@gmail.com', 'Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply medical products: \r\n \r\nMedical masks \r\nDrager, makrite, honeywell N95 \r\n3M N95 1860, 9502, 9501, 8210 \r\n3ply medical, KN95, FFP2, FFP3, N95 masks \r\nFace shield \r\nNitrile/vinyl/latex gloves \r\nIsolation/surgical gown \r\nProtective PPE/Overalls \r\nIR non-contact thermometers/oral thermometers \r\nsanitizer dispenser \r\nCrystal tomato \r\n \r\nHuman body thermal cameras \r\nfor Body Temperature Measurement up to accuracy of ±0.1?C \r\n \r\nWhatsapp: +65 87695655 \r\nTelegram: cctv_hub \r\nSkype: cctvhub \r\nEmail: sales@thecctvhub.com \r\nW: http://www.thecctvhub.com/ \r\n \r\nIf you do not wish to receive email from us again, please let us know by replying. \r\n \r\nregards, \r\nCCTV HUB', '2020-06-03 10:06:43', '2020-06-03 10:06:43'),
(61, 'LarryZem', '85973742722', 'markandrew897@gmail.com', 'Looking for Facebook likes or Instagram followers? \r\nWe can help you. Please visit https://1000-likes.com/ to place your order.', '2020-06-05 03:46:19', '2020-06-05 03:46:19'),
(62, 'Earle Alford', '0341 59 25 33', 'alford.earle28@gmail.com', 'Hello, I was just visiting your site and filled out your \"contact us\" form. The contact page on your site sends you messages like this to your email account which is the reason you\'re reading my message at this moment right? That\'s the most important achievement with any type of advertising, making people actually READ your message and that\'s exactly what I just accomplished with you! If you have an ad message you would like to blast out to tons of websites via their contact forms in the U.S. or to any country worldwide let me know, I can even focus on specific niches and my prices are very reasonable. Reply here: cluffcathey@gmail.com\r\n\r\nstop seeing these messages on your web website contact form https://bit.ly/3cvHuJC', '2020-06-06 10:15:51', '2020-06-06 10:15:51'),
(63, 'Alphonse Bedford', '(03) 5326 9396', 'alphonse.bedford@gmail.com', 'You Can DOUBLE Your Productivity For Life In Under 48 Hours\r\n\r\nAnd when it comes to changing your life, there\'s nothing more important to fixing your productivity.\r\n\r\nThink about it.\r\n\r\nIf you\'re twice as productive, then, as far as your environment supports it, you\'re going to make at least twice as much. However, the growth is almost always exponential. So expect even more income, free time, and the ability to decide what you want to do at any given moment.\r\n\r\nHere\'s the best course I\'ve seen on this subject:\r\n\r\nhttps://bit.ly/michaeltips-com\r\n\r\nIt\'s a fun and pretty short read... and it has the potential to change your life in 48 hours from now.\r\n\r\nMichael Hehn', '2020-06-06 12:10:50', '2020-06-06 12:10:50'),
(64, 'Foster Landseer', '0664 281 72 65', 'landseer.foster@googlemail.com', 'Stop paying way too much money for ripoff Google advertising! We have a method that charges only a small bit of money and results in an almost infinite amount of web visitors to your website\r\n\r\nFor more information just visit: https://bit.ly/rapid-ads', '2020-06-07 21:27:25', '2020-06-07 21:27:25'),
(65, 'Rafael Ingham', '077 8766 5813', 'ingham.rafael@hotmail.com', 'Want more visitors for your website? Get thousands of people who are ready to buy sent directly to your website. Boost revenues quick. Start seeing results in as little as 48 hours. For additional information Visit: https://bit.ly/traffic-for-you', '2020-06-10 20:39:01', '2020-06-10 20:39:01'),
(66, 'EU LOTTO BOARD', '84298734862', 'chaada212@gmail.com', 'Dear sir, \r\nDue to the most recent COVID-19 epidemic, Your email has been selected to claim the sum of $500,000 in the 2020 EU/COMMONWEALTH LOTTO through the United Nations Covid-19 relief funding. \r\n \r\nTo Claim your funds please contact Our processing Agent. \r\nAmbreen Dossa. \r\nEmail: ambreendossa@ambreenmerchant.com \r\n \r\nCongratulations. \r\nJohn Edward. \r\n(Cordinator)', '2020-06-11 21:26:38', '2020-06-11 21:26:38'),
(67, 'Sasha Bello', '052 831 73 43', 'sasha.bello@gmail.com', 'Interested in the latest fitness , wellness, nutrition trends?\r\n\r\nCheck out my blog here: https://bit.ly/www-fitnessismystatussymbol-com\r\n\r\nAnd my Instagram page @ziptofitness', '2020-06-13 00:23:21', '2020-06-13 00:23:21'),
(68, 'Jai Newbigin', '03.82.34.65.11', 'newbigin.jai@gmail.com', 'ABOLISH REACTIVE DEPRESSION AND EMERGE FROM ITS DEEP, DARK, BLACK HOLE?\r\n• Do you feel this came from the beginnings of a dysfunctional family system?\r\n• Or did this come from the loss of a beloved job or loved one?\r\n• Or did this come from dire effects from the disease of Alcoholism?\r\n• Or did this come from the brainwashing attempts of a fearful and angry world, i.e. terroristic recruitment?\r\nDo you know that whatever caused this DEEP, DARK, BLACK HOLE OF DEPRESSION which may have come from a NERVOUS BREAKDOWN can cease its influence over your life? Yes, you do not have to live buried in negative thinking from the defeat from negative life experiences in your life. Please know that any tragic experiences from childhood to adulthood need no longer affect your chance to gain emotional wellbeing.\r\nInstead, now you have the opportunity to be HAPPY and in PEACEFUL CONTROL OF YOUR OWN DESTINY with only the memory of what once ailed you. Now is the time to overcome depression and begin to take control over your life. Not only that, you alone have the opportunity to reverse negative thinking and achieve your very own POSITIVE BELIEF SYSTEM.\r\nPLEASE NOTE: Your views on spirituality or religion will not prevent you from successfully implementing your own PARENTAL SELF-LOVE PROCESS to ACHIEVE PURPOSE, MOTIVATION, GOOD SELF-ESTEEM, SUCCESS, AND MORE. Yes, like Lin Tillman did, you too can ACHIEVE MORE THAN YOU ASKED FOR and make meaningful and healthy contributions to this planet.\r\nYou can learn more about Lin’s journey in her book The Invisible Girl & GOD, where she shares her TRUE STORY of how she healed herself from an agonizing depression with suicidal ideations.\r\nGO TO: https://bit.ly/Depression-self-help to learn more', '2020-06-15 09:08:15', '2020-06-15 09:08:15'),
(69, 'MariaNaish', '87811368893', 'mailermaswsxl@gmail.com', 'Hey  neighbor \r\nI saw  you walking  around my house. You looks nice ;). Shall we meet soon? See my Profile here: \r\n \r\nhttps://short.cx/s4new \r\n \r\n I\'m home alone often, so you can come by. \r\n \r\nLet me Know If you are ready for it \r\n \r\n- Anna', '2020-06-15 09:58:32', '2020-06-15 09:58:32'),
(70, 'Mike Jones', '81218131743', 'no-reply@monkeydigital.co', 'hi there \r\n \r\nAfter checking your mesteemic.com, I`ve noticed that the SEO trend has dropped in the past several weeks \r\n \r\nIn order to fix this trend, just follow these simple steps: \r\n \r\n1. Disavow all UGC links that point to mesteemic.com (we can help for free) \r\n2. Build non-ugc links \r\n \r\nnon-UGC links. FIX your ranks with us today \r\nhttps://www.monkeydigital.co/product/non-ugc-backlinks/ \r\n \r\nthank you \r\nMike \r\nsupport@monkeydigital.co', '2020-06-17 06:04:03', '2020-06-17 06:04:03'),
(71, 'Alana Torrez', '077 3090 4875', 'torrez.alana@gmail.com', 'EROTICA becomes REALITY!!!\r\nStepping Stones to the ARCH De Pleasure\r\n     Men, put your feet in James Pope’s shoes, women put your feet in the women’s shoes I encounter, as I traveled the road from farm-to-MATTRESONAME!\r\nStepping Stones is my third novel in a 3, connected, series.  1- Post Hole Digger! 2-Trifecta! \r\nhttps://bit.ly/www-popejim-com “CLICK & VIEW videos.  Search: amazon.com, title - author', '2020-06-21 03:31:58', '2020-06-21 03:31:58'),
(72, 'Eric Jones', '416-385-3200', 'eric@talkwithwebvisitor.com', 'My name’s Eric and I just found your site mesteemic.com.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithwebvisitor.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=mesteemic.com', '2020-06-21 05:09:55', '2020-06-21 05:09:55'),
(73, 'Aneta Arthur', '84651984897', 'arthur@choose2help.org', 'Hello, \r\n \r\nMy son born January 5th 2020 requires a serious head surgery due to the fusion of the cranial suture (craniosynostosis). I cannot afford to pay for the series of costly medical expenses. We only have 6 weeks to get everything organized before he undergoes the surgery. I have no other option but to ask you to help me help my son. We are gathering the funds through a verified charity: \r\n \r\nhttps://choose2help.org/arthur.html \r\n \r\n \r\nThank you for your support. Aneta.', '2020-06-22 22:01:27', '2020-06-22 22:01:27'),
(74, 'Enrique Dwyer', '06-56079242', 'dwyer.enrique@gmail.com', 'What would you say to no charge advertising for your website? Check out: https://bit.ly/zero-cost-ads', '2020-06-22 22:03:20', '2020-06-22 22:03:20'),
(75, 'Blair Williams', '85147931173', 'noreplypuhffmask@aol.com', 'Hello \r\n \r\nWe think our product would be a great fit for your business. \r\nWe offer high quality individually packaged mask and mask accessories, wholesale for retail businesses. \r\n \r\nHere is a link to our line sheet. \r\nhttps://puhff.com/line-sheet/ \r\nWe are based in Los Angeles California. Shipping is 7-10 business days. \r\n \r\n \r\nYou can also order from our site www.puhff.com Our Min order  quantity is 25 pieces.  We can also send out samples for large order request. \r\n \r\n \r\nBusinesses who have switched to our product reported up to a 33% increase in mask sales. Not only is our packaging resealable but lined with Grade A Aluminum which is antibacterial. Our mask are of the highest quality with meltdown fabric filters and more! \r\n \r\nhttps://puhff.com \r\n \r\nThank you! \r\nBlair \r\nSales@Puhff.com \r\nwww.Puhff.net \r\n888-262-7819 \r\n \r\n10880 Wilshire Blvd, Ste 1101 \r\nLos Angeles Ca, 90024 \r\n \r\nPlease disregard this email if we have reached you in error.', '2020-06-24 19:20:21', '2020-06-24 19:20:21'),
(76, 'Heatherped', '89368927775', 'atrixxtrix@gmail.com', 'Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply medical products: \r\n \r\nMedical masks \r\nDrager, makrite, honeywell N95 \r\n3M N95 1860, 9502, 9501, 8210 \r\n3ply medical, KN95, FFP2, FFP3, N95 masks \r\nFace shield \r\nNitrile/vinyl/latex gloves \r\nIsolation/surgical gown \r\nProtective PPE/Overalls \r\nIR non-contact thermometers/oral thermometers \r\nsanitizer dispenser \r\nCrystal tomato \r\n \r\nHuman body thermal cameras \r\nfor Body Temperature Measurement up to accuracy of ±0.1?C \r\n \r\nWhatsapp: +65 87695655 \r\nTelegram: cctv_hub \r\nSkype: cctvhub \r\nEmail: sales@thecctvhub.com \r\nW: http://www.thecctvhub.com/ \r\n \r\nIf you do not wish to receive email from us again, please let us know by replying. \r\n \r\nregards, \r\nCCTV HUB', '2020-06-26 20:25:12', '2020-06-26 20:25:12'),
(77, 'Ash Mansukhani', '(888) 938-8893', 'service@techknowspace.com', 'Hello, \r\n\r\nMy Name is Ash and I Run Tech Know Space https://techknowspace.com We are your Premium GO-TO Service Centre for All Logic Board & Mainboard Repair\r\n\r\nWhen other shops say \"it can\'t be fixed\" WE CAN HELP!\r\n\r\nALL iPHONE 8 & NEWER\r\nBACK GLASS REPAIR - 1 HOUR\r\n \r\nDevices We Repair\r\nAudio Devices Audio Device Repair\r\n\r\nBluetooth Speakers - Headphones - iPod Touch\r\nComputers All Computer Repair\r\n\r\nAll Brands & Models - Custom Built - PC & Mac\r\nGame Consoles Game Console Repair\r\n\r\nPS4 - XBox One - Nintendo Switch\r\nLaptops All Laptop Repair\r\n\r\nAll Brands & Models - Acer, Asus, Compaq, Dell, HP, Lenovo, Toshiba\r\nMacBooks All MacBook Repair\r\n\r\nAll Series & Models - Air, Classic, Pro\r\nPhones All Phone Repair\r\n\r\nAll Brands & Models - BlackBerry, Huawei, iPhone, LG, OnePlus, Samsung, Sony\r\nSmart Watches Apple Watch Repair\r\n\r\nApple Watch - Samsung Gear - Moto 360\r\nTablets All Tablet Repair\r\n\r\nAll Brands & Models - iPad, Lenovo Yoga, Microsoft Surface, Samsung Tab\r\n\r\nDrone Repair\r\n\r\nCall us and tell us your issues today!\r\n\r\nToll Free: (888) 938-8893 \r\nhttps://techknowspace.com\r\n\r\nAsh Mansukhani\r\nash@techknowspace.com\r\nhttps://twitter.com/techknowspace\r\nhttps://www.linkedin.com/company/the-techknow-space', '2020-06-27 21:08:36', '2020-06-27 21:08:36'),
(78, 'Alan Schweitzer', '0324 6002540', 'hacker@movie-domino.cf', 'PLEASE FORWARD THIS EMAIL TO SOMEONE IN YOUR COMPANY WHO IS ALLOWED TO MAKE IMPORTANT DECISIONS!\r\n\r\nWe have hacked your website http://www.mesteemic.com and extracted your databases.\r\n\r\nHow did this happen?\r\nOur team has found a vulnerability within your site that we were able to exploit. After finding the vulnerability we were able to get your database credentials and extract your entire database and move the information to an offshore server.\r\n\r\nWhat does this mean?\r\n\r\nWe will systematically go through a series of steps of totally damaging your reputation. First your database will be leaked or sold to the highest bidder which they will use with whatever their intentions are. Next if there are e-mails found they will be e-mailed that their information has been sold or leaked and your site http://www.mesteemic.com was at fault thusly damaging your reputation and having angry customers/associates with whatever angry customers/associates do. Lastly any links that you have indexed in the search engines will be de-indexed based off of blackhat techniques that we used in the past to de-index our targets.\r\n\r\nHow do I stop this?\r\n\r\nWe are willing to refrain from destroying your site\'s reputation for a small fee. The current fee is .33 BTC in bitcoins ($3000 USD). \r\n\r\nSend the bitcoin to the following Bitcoin address (Copy and paste as it is case sensitive):\r\n\r\n12WghuRH7b8K7mcJvxCzWQjW7RVEAC7qgx\r\n\r\nOnce you have paid we will automatically get informed that it was your payment. Please note that you have to make payment within 5 days after receiving this notice or the database leak, e-mails dispatched, and de-index of your site WILL start!\r\n\r\nHow do I get Bitcoins?\r\n\r\nYou can easily buy bitcoins via several websites or even offline from a Bitcoin-ATM. We suggest you https://cex.io/ for buying bitcoins.\r\n\r\nWhat if I don’t pay?\r\n\r\nIf you decide not to pay, we will start the attack at the indicated date and uphold it until you do, there’s no counter measure to this, you will only end up wasting more money trying to find a solution. We will completely destroy your reputation amongst google and your customers.\r\n\r\nThis is not a hoax, do not reply to this email, don’t try to reason or negotiate, we will not read any replies. Once you have paid we will stop what we were doing and you will never hear from us again!\r\n\r\nPlease note that Bitcoin is anonymous and no one will find out that you have complied.', '2020-06-30 05:15:58', '2020-06-30 05:15:58'),
(79, 'Dan Stecker', '(16) 2403-6312', 'stecker.dan@hotmail.com', 'Stem cell therapy has proven itself to be one of the most effective treatments for Parkinson\'s Disease. IMC is the leader in stem cell therapies in Mexico. For more information on how we can treat Parkinson\'s Disease please visit:\r\nhttps://bit.ly/parkinson-integramedicalcenter', '2020-07-01 16:03:56', '2020-07-01 16:03:56'),
(80, 'Vilma Georg', '(07) 3209 5185', 'georg.vilma15@gmail.com', 'Would you like to promote your website for free? Have a look at this: http://www.free-ad-posting.xyz', '2020-07-01 21:44:36', '2020-07-01 21:44:36'),
(81, 'Kristian Baume', '250-304-2072', 'kristian.baume@gmail.com', 'Have you had enough of expensive PPC advertising? Now you can post your ad on 10,000 advertising websites and you only have to pay a single monthly fee. These ads stay up forever, this is a continual supply of organic visitors! \r\n\r\nTo find out more check out our site here: http://www.adposting-onautopilot.xyz', '2020-07-04 07:21:10', '2020-07-04 07:21:10'),
(82, 'Bud Horstman', '281-459-0024', 'horstman.bud@gmail.com', 'Do you want more people to visit your website? Get hundreds of keyword targeted visitors directly to your site. Boost your profits quick. Start seeing results in as little as 48 hours. To get details Visit: http://www.getwebsitevisitors.xyz', '2020-07-06 07:32:45', '2020-07-06 07:32:45'),
(83, 'Donte Kelso', '(07) 3013 5527', 'donte.kelso@gmail.com', 'TITLE: Are YOU Building Your Own DREAMS Or Has SOMEONE ELSE Hired You To Build THEIRS? \r\n\r\nDESCRIPTION: Have you ever looked at sites like Google or Facebook and asked yourself…“How can they make SO MUCH MONEY when they aren’t even really selling any products?!?!”\r\nWell, Google and Facebook are cashing in on their platforms. They’re taking advantage of the millions of people who come to their sites…Then view and click the ads on their pages.\r\nThose sites have turned into billion dollar companies by getting paid to send traffic to businesses. \r\n\r\nDid You Know That More People Have Become Millionaires In The Past Year Than Ever Before? Did You Know You Can Make Money By Becoming A Traffic Affiliate?\r\n\r\nWatch Our Video & Discover The Easy 1-Step System Our Members Are Using To Get Paid Daily.\r\n\r\nURL: https://bit.ly/retirement-biz', '2020-07-08 12:29:34', '2020-07-08 12:29:34'),
(84, 'Eric Jones', '416-385-3200', 'eric@talkwithwebvisitor.com', 'Hi, my name is Eric and I’m betting you’d like your website mesteemic.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at mesteemic.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithwebvisitor.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=mesteemic.com', '2020-07-09 01:47:13', '2020-07-09 01:47:13'),
(85, 'Leonrad Garcia', '84633852446', 'verajohn@fanclub.pm', 'Hi,  this is Leonrad. \r\n \r\nToday I have good news for you, witch you can get $30 free bonus in a minute. \r\n \r\nAll you have to do is to register Vera & John online casino link below and that\'s it. \r\nYou can register by free e-mail and no need kyc. \r\n \r\nRegistration form \r\nhttps://www3.samuraiclick.com/go?m=28940&c=34&b=926&l=1 \r\n \r\nAfter you get your free bonus, play casino and make money! \r\nMany people sent me thanks mail because they won more than $2,000-$10,000 \r\nby trusting me. \r\n \r\nDon’t miss this chance and don\'t for get that your chance is just infront of you. \r\nGet free bonus and win your life! \r\n \r\n \r\n \r\nYou can with draw your prize by Bitcoin, so If you need best crypto debit card, try Hcard. \r\nhttps://bit.ly/31zTBD0 \r\n \r\nIt is Mastercard brand and you can exchange your crypto by Apps. \r\nHcard cost you $350 + shipping, but it will definitely worth. \r\n \r\nThis is how rich people always get their profits. \r\nSo, if you wanna win your life for free, do not miss your last chance. \r\n \r\nThank you \r\nLeonrad Garcia.', '2020-07-10 08:42:38', '2020-07-10 08:42:38'),
(86, 'Cherylehooto', '89835538258', 'mailersmoney1231@gmail.com', 'Hello \r\n \r\nIm looking for investor for my email marketing business. \r\nI own 270 million email database with 92% valid emails. Im looking for investor who invest in server infrastructure to send it. Im planning to run infrastructure to send like 10 million emails per day on daily basis, and increase every week by add more servers. \r\nPotential earnings are $100-$200 depend on country per million sended messages \r\nI have knowledge about email marketing and team which is needed to handle whitelisting. \r\n \r\nInvestment: $2000 on first run, after you see results you can invest more. \r\nYou control all investment, all servers, software will be with your access. \r\n \r\nIf you are interested about partnership please send email on: \r\nmailermasters@gmail.com', '2020-07-11 14:15:46', '2020-07-11 14:15:46'),
(87, 'Frances Sorenson', '079 8650 4089', 'frances.sorenson@outlook.com', 'Hi,\r\n\r\nDo you have a Website? Of course you do because I am looking at your website mesteemic.com now.\r\n\r\nAre you struggling for Leads and Sales?\r\n\r\nYou’re not the only one.\r\n\r\nSo many Website owners struggle to convert their Visitors into Leads & Sales.\r\n\r\nThere’s a simple way to fix this problem.\r\n\r\nYou could use a Live Chat app on your Website mesteemic.com and hire Chat Agents.\r\n\r\nBut only if you’ve got deep pockets and you’re happy to fork out THOUSANDS of dollars for the quality you need.\r\n\r\n=====\r\n\r\nBut what if you could automate Live Chat so it’s HUMAN-FREE?\r\n\r\nWhat if you could exploit NEW “AI” Technology to engage with your Visitors INSTANTLY.\r\n\r\nAnd AUTOMATICALLY convert them into Leads & Sales.\r\n\r\nWITHOUT spending THOUSANDS of dollars on Live Chat Agents.\r\n\r\nAnd WITHOUT hiring expensive coders.\r\n\r\nIn fact, all you need to do to activate this LATEST “AI” Website Tech..\r\n\r\n..is to COPY & PASTE a single line of “Website Code”.\r\n\r\n==> http://www.zoomsoft.net/ConversioBot\r\n\r\n======\r\n\r\nJoin HUGE Fortune 500 companies like:\r\n\r\nFacebook Spotify Starbucks Staples The Wall Street Journal Pizza Hut Amtrak Disney H&M & Mastercard\r\n\r\nThey all use similar “AI” Chat Technology to ConversioBot - the Internet’s #1 Chatbot for Website Owners.\r\n\r\nThe founders of ConversioBot have used their highly sophisticated ChatBot to:\r\n\r\n- AUTOMATICALLY build a massive Email List of 11,643 Subscribers in just 7 Days\r\n\r\n- AUTOMATICALLY add 6,386 Sales in only 6 Months\r\n\r\n- AUTOMATICALLY explode their Conversion Rate by 198% in only 6 Hours.\r\n\r\n=====\r\n\r\nNow it’s your turn to get in on this exciting NEW Cloud-Based App.\r\n\r\nYou can start using ConversioBot today by copying and pasting ONE line of “Automated Bot Code\" to your Website.\r\n\r\nWatch this short video to find out how >> http://www.zoomsoft.net/ConversioBot\r\n\r\nRegards,\r\n\r\nConversioBot Team\r\n\r\nP.S. This “AI” Technology works with: - Affiliate Review Sites - List-Building Pages - WordPress Blogs (it comes with a Plugin) - Sales Letters - eCommerce Websites - Local Business Sites - Webinar Registration Pages - Consultancy Websites - Freelance Websites\r\n\r\nAlmost ANY Website you can think of..\r\n\r\n==> This could be happening on your Website TODAY.. http://www.zoomsoft.net/ConversioBot\r\n\r\nUNSUBSCRIBE http://www.zoomsoft.net/unsubscribe', '2020-07-12 09:52:31', '2020-07-12 09:52:31'),
(88, 'Micah Baldwin', '79 591 88 83', 'baldwin.micah10@hotmail.com', 'Greetings, I was just taking a look at your site and submitted this message via your feedback form. The contact page on your site sends you messages like this via email which is the reason you are reading my message right now correct? That\'s the most important achievement with any kind of advertising, making people actually READ your message and this is exactly what you\'re doing now! If you have something you would like to promote to lots of websites via their contact forms in the U.S. or to any country worldwide send me a quick note now, I can even target your required niches and my charges are super low. Write an email to: fredspencer398@gmail.com', '2020-07-16 12:04:12', '2020-07-16 12:04:12'),
(89, 'Joshuacem', '87722656463', 'no-replyUseglic@gmail.com', 'Hеllо!  mesteemic.com \r\n \r\nDid yоu knоw thаt it is pоssiblе tо sеnd соmmеrсiаl оffеr uttеrly lеgаl? \r\nWе submit а nеw lеgаl wаy оf sеnding mеssаgе thrоugh fееdbасk fоrms. Suсh fоrms аrе lосаtеd оn mаny sitеs. \r\nWhеn suсh prоpоsаls аrе sеnt, nо pеrsоnаl dаtа is usеd, аnd mеssаgеs аrе sеnt tо fоrms spесifiсаlly dеsignеd tо rесеivе mеssаgеs аnd аppеаls. \r\nаlsо, mеssаgеs sеnt thrоugh соntасt Fоrms dо nоt gеt intо spаm bесаusе suсh mеssаgеs аrе соnsidеrеd impоrtаnt. \r\nWе оffеr yоu tо tеst оur sеrviсе fоr frее. Wе will sеnd up tо 50,000 mеssаgеs fоr yоu. \r\nThе соst оf sеnding оnе milliоn mеssаgеs is 49 USD. \r\n \r\nThis оffеr is сrеаtеd аutоmаtiсаlly. Plеаsе usе thе соntасt dеtаils bеlоw tо соntасt us. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  FeedbackForm2019 \r\nWhatsApp - +375259112693', '2020-07-17 17:30:35', '2020-07-17 17:30:35'),
(90, 'Vanita Shealy', '079 2682 7884', 'shealy.vanita@gmail.com', 'Greetings, are you 100% confident your sales team has the skills to consistently close busines?  If not, 2020 could cripple your company’s growth for years to come!  Now you can give your team the skills to rise above the competition, overcome objections, negotiate better margins, and close more deals.  We offer customized sales training through live webinars or onsite sessions.  Let’s chat for 15 minutes and I can show you how you can increase sales and closing rates by 15-20% in the next 90 days.  Email me and let me know a time that works for you:  john@stridehigher.com or call 800-850-8979.', '2020-07-18 11:35:03', '2020-07-18 11:35:03'),
(91, 'Eric Jones', '416-385-3200', 'eric@talkwithwebvisitor.com', 'Hi, Eric here with a quick thought about your website mesteemic.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=mesteemic.com', '2020-07-21 07:56:36', '2020-07-21 07:56:36'),
(92, 'Mike Roberts', '88186377214', 'no-replygog@google.com', 'Hi! \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days. \r\n \r\nThis service is guaranteed \r\n \r\nFor more information, check our service here \r\nhttps://www.monkeydigital.co/Get-Guaranteed-Domain-Authority-50/ \r\n \r\nthank you \r\nMike Roberts\r\n \r\nMonkey Digital \r\nsupport@monkeydigital.co', '2020-07-21 20:48:17', '2020-07-21 20:48:17'),
(93, 'Michaelvor', '89374176581', 'marktomson40@gmail.com', 'Want to have a fast growing and profitable business without competitors?! \r\nLooking for a new progressive direction in business?! \r\nWant to owe the high profits despite the market situation?! \r\nWe invite you to be a part of our successful Team. Become a dealer in your region.  We are manufacturers of grain cleaning equipment of a new generation: www.graincleaner.com. \r\nOur unique equipment has no analogues in the world. We have very favorable terms  for cooperation.  Write us on info@graincleaner.com and we will send you the business offer. \r\nTo see our videos go to: \r\nhttps://vimeo.com/showcase/6600548', '2020-07-23 09:20:59', '2020-07-23 09:20:59'),
(94, 'Carry Bleakney', NULL, 'Kinnebrew25065@gmail.com', 'Hello, I was just visiting your site and submitted this message via your feedback form. The feedback page on your site sends you messages like this to your email account which is the reason you\'re reading my message right now right? That\'s the most important accomplishment with any type of advertising, getting people to actually READ your ad and this is exactly what you\'re doing now! If you have something you would like to promote to thousands of websites via their contact forms in the U.S. or anywhere in the world send me a quick note now, I can even target specific niches and my pricing is super low. Reply here: jessiesamir81@gmail.com', '2020-07-23 20:55:09', '2020-07-23 20:55:09'),
(95, 'Charleshok', '83241437317', 'bee.pannell7184@gmail.com', 'Are you struggling to optimize your website content? \r\nWednesday at 12 PM (Pacific Time) I will teach you how to ensure you have SEO friendly content with high search volume keywords. \r\nLearn tips, tricks, and tools that work in 2020 that the Google algorithm loves. \r\nSignup here to get the webinar link https://www.eventbrite.com/e/113229598778', '2020-07-24 13:32:21', '2020-07-24 13:32:21'),
(96, 'Ilse Soria', '077 1260 2700', 'ilse.soria@gmail.com', 'This Google doc exposes how this scamdemic is part of a bigger plan to crush your business and keep it closed or semi-operational (with heavy rescritions) while big corporations remain open without consequences. This Covid lie has ruined many peoples lives and businesses and is all done on purpose to bring about the One World Order. It goes much deeper than this but the purpose of this doc is to expose the evil and wickedness that works in the background to ruin peoples lives. So feel free to share this message with friends and family. No need to reply to the email i provided above as its not registered. But this information will tell you everything you need to know. https://docs.google.com/document/d/14MuVe_anmrcDQl4sZhDqzhQy0Pbhrx9A/edit. In case the document is taken down, here is a backup source https://fakecovidscam.com', '2020-07-24 20:46:23', '2020-07-24 20:46:23'),
(97, 'Rodolfo Mcnabb', NULL, 'mcnabb.rodolfo76@googlemail.com', 'Good afternoon, I was just on your site and filled out your feedback form. The \"contact us\" page on your site sends you these messages via email which is why you are reading my message right now correct? That\'s half the battle with any type of advertising, making people actually READ your advertisement and that\'s exactly what I just accomplished with you! If you have something you would like to blast out to tons of websites via their contact forms in the U.S. or anywhere in the world let me know, I can even target your required niches and my costs are very reasonable. Write an email to: destineylylazo75@gmail.com\r\n\r\nno further ad messages https://bit.ly/3eOn4NP', '2020-07-24 22:20:59', '2020-07-24 22:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=active;2=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `image_url`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Baby Clothing', 'New Born to Teenagers', NULL, '1', '2020-06-25 09:07:58', '2020-07-20 20:26:16'),
(11, 'Sharee', 'Bengali culture', NULL, '1', '2020-08-03 23:28:10', '2020-08-03 23:28:10'),
(14, 'মেয়েদের ড্রেস', 'Superstudiobd', NULL, '1', '2020-11-10 18:21:36', '2020-11-11 04:22:45'),
(15, 'মিষ্টান্ন ভান্ডার', 'এখানে সুসাদু মিষ্টি ,দই,ঘি,মধু,সন্দেশ পাওয়া যায়।', NULL, '1', '2020-11-10 19:44:30', '2020-11-10 19:44:30'),
(17, 'ছেলেদের ড্রেস', 'লুঙ্গি', NULL, '1', '2020-11-12 15:05:58', '2020-11-12 15:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `get_coupons`
--

CREATE TABLE `get_coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guest_details`
--

CREATE TABLE `guest_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` bigint(20) NOT NULL DEFAULT 0,
  `boosting_level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` bigint(20) NOT NULL DEFAULT 0,
  `user_id` int(10) NOT NULL DEFAULT 0,
  `services` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guest_details`
--

INSERT INTO `guest_details` (`id`, `mobile`, `address`, `name`, `email`, `business`, `payment_amount`, `message`, `status`, `boosting_level`, `payment`, `user_id`, `services`, `created_at`, `updated_at`) VALUES
(1, '01922312123', 'jatrabari', 'maker', 'maker@app.com', 'hi', '20', 'hey there', 1, '40', 0, 0, NULL, '2020-12-04 04:20:13', '2020-12-04 05:13:24'),
(2, '01922312123', 'jatrabari', 'maker', 'maker@app.com', 'dolls', '21', 'all', 2, '100', 1, 0, NULL, '2020-12-04 04:20:32', '2020-12-04 05:14:48'),
(5, '20', 'মোহাম্মদপুর ঢাকা', 'MD Masud Rana', '01646792515masud@gmail.com', 'থী পিছ', '20', 'পাড়ে বেন', 0, '86', 0, 0, NULL, '2020-12-07 12:32:44', '2020-12-13 11:10:44'),
(10, '01608861456', 'Senpara parbota,mirpur10', 'Sumi', 'sumibeautyparlour123@gmail.com', 'Sumi\'s beauty parlour', '500', 'My fb business page promote?', 0, NULL, 0, 0, NULL, '2020-12-08 00:03:07', '2020-12-08 00:03:07'),
(13, '01991100131', 'Adabor', 'Md sajib', 'ms.sbt00@gmail.com', 'Gift item', '20', NULL, 2, '1', 1, 0, NULL, '2020-12-08 06:32:36', '2020-12-08 16:01:57'),
(14, '01922312123', 'jatrabari', 'maker', 'maker@app.com', 'Selling food', '12', 'hi there', 0, NULL, 0, 38, 'boosting, content, web', '2020-12-09 11:18:04', '2020-12-09 11:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_29_084629_create_admins_table', 1),
(4, '2019_11_29_104858_create_departments_table', 2),
(5, '2019_11_30_160757_create_categories_table', 3),
(6, '2019_11_30_172940_create_brands_table', 4),
(7, '2019_11_30_180544_create_products_table', 5),
(8, '2019_12_11_171643_create_product_images_table', 6),
(10, '2019_12_16_041836_create_carts_table', 7),
(15, '2019_12_21_153755_create_regions_table', 8),
(16, '2019_12_21_141834_create_shipping_costs_table', 9),
(17, '2019_12_21_184845_create_shippings_table', 10),
(18, '2019_12_21_191102_create_orders_table', 11),
(20, '2019_12_21_192701_create_order_details_table', 12),
(21, '2019_12_23_170433_create_payments_table', 13),
(22, '2019_12_30_153326_create_monthly_ads_table', 14),
(23, '2019_12_30_183712_create_utilities_table', 15),
(24, '2020_09_02_075415_create_banners_table', 15),
(25, '2020_09_05_034845_create_sliders_table', 16),
(26, '2020_09_16_124406_create_reviews_table', 17),
(27, '2020_12_04_042133_create_guest_details_table', 18),
(28, '2020_12_04_090407_create_guest_details_table', 19),
(29, '2020_12_04_101901_create_guest_details_table', 20),
(30, '2020_12_28_141403_create_boosting_table', 21),
(31, '2020_12_28_145049_create_boostings_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `monthly_ads`
--

CREATE TABLE `monthly_ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `ads_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `shipping_id` int(10) UNSIGNED DEFAULT NULL,
  `total_amount` double(10,2) NOT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1 = pending, 2= complete, 3=cancel',
  `shipping_info` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `shipping_id`, `total_amount`, `order_status`, `shipping_info`, `created_at`, `updated_at`) VALUES
(125, 24, 201, 50.00, '1', NULL, '2020-11-10 20:52:37', '2020-11-10 20:52:37'),
(127, 27, 203, 430.00, '1', NULL, '2020-11-17 12:40:31', '2020-11-17 12:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_quantity`, `created_at`, `updated_at`) VALUES
(61, 127, 74, 1, '2020-11-17 12:40:31', '2020-11-17 12:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('tsomorfaruk@gmail.com', '$2y$10$p455cgqS8SJgAhwI1c3/le5zL9Bc4cSsqoRKPN5R9r8j87ap1rFQW', '2020-05-05 09:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '1=pending, 2=success, 3=failed',
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `reference`, `payment_status`, `order_id`, `created_at`, `updated_at`) VALUES
(58, 'DIYG5eoCamOALRyscqHpGqTLM', '1', 125, '2020-11-10 20:52:37', '2020-11-10 20:52:37'),
(60, 'BDftmiC4jSAukZOuN8QwYTWsG', '1', 127, '2020-11-17 12:40:31', '2020-11-17 12:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1=active;2=block',
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `certification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `handle_length` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maximum_lift_height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maximum_working_load` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimum_height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_length` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `name`, `short_description`, `long_description`, `quantity`, `weight`, `old_price`, `new_price`, `status`, `category_id`, `brand_id`, `certification`, `material`, `handle_length`, `maximum_lift_height`, `maximum_working_load`, `minimum_height`, `product_height`, `product_length`, `product_width`, `shipping_weight`, `size`, `created_at`, `updated_at`) VALUES
(23, 'indian Georgette', 'indian Georgette', 'Semi-Stitched indian Georgette Embroidery Work Gown Anarkali Party/wedding Wear for Women With Embroidery Work\r\n\r\nMain Material:Weightless Georgette\r\nColor:Red', '1.Semi-Stitched indian Georgette Embroidery Work Gown Anarkali 2.Party/wedding Wear for Women With Embroidery Work.\r\n3.Type Kameez + Skart = Gharara\r\n4.Body Indian Soft Georgette With Embroidery Work\r\n5.Skirt Indian Soft Georgette With Embroidery Work\r\n6.Dupatta Indian Soft Georgette With Embroidery Work\r\n7.Inner + Salowar Butterfly Silk\r\n8.Gorgeous Gown\r\n9.Material: Georgette\r\n10.Party wears\r\n11.Ethical wear\r\n12.Embroidery Work\r\n13.Occasion: Festival, Partywear, Wedding\r\n14.Nice and finished work', 10, '800', '1900', '1850', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-10 18:50:27', '2020-11-10 20:57:12'),
(24, 'indian Georgette', 'indian Georgette', 'Semi-Stitched indian Georgette Embroidery Work Gown Anarkali Party/wedding Wear for Women With Embroidery Work', 'look like picture,\r\nMain Material:Weightless GeorgetteClothing \r\nStyle:Party\r\nColor:white', 10, '800', '1600', '1350', 1, 8, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-10 19:15:11', '2020-11-12 00:09:49'),
(25, 'মিষ্টি', 'মিষ্টি(1KG)', 'টাঙ্গাইল পোড়াবাড়ির বিখ্যাত মিষ্টান্ন ভান্ডার', 'ঘরে বসে আপনি টাঙ্গাইলের মিষ্টি অর্ডার করতে পারেন।\r\nপণোর গুনগতমান এবং আপনার সন্তুষ্টি আমাদের প্রধান লক্ষ্য।\r\nবিঃদ্রঃ বিয়েবাড়ি,জন্মদিন,আকদ,সব ধরনের পার্টির জন্য অর্ডার নেওয়া হয়।\r\n\r\nঢাকার মধ্যেঃবাইকের মাধ্যমে ২৪ ঘন্টার ভিতর হোম ডেলিভারি দেওয়া হয়।', 50, '1000', NULL, '350', 1, 9, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-10 20:15:01', '2020-11-12 00:04:43'),
(26, 'মিষ্টি', 'মিষ্টি(1KG)', 'টাঙ্গাইল পোড়াবাড়ির বিখ্যাত মিষ্টান্ন ভান্ডার', 'ঘরে বসে আপনি টাঙ্গাইলের মিষ্টি অর্ডার করতে পারেন।\r\nপণোর গুনগতমান এবং আপনার সন্তুষ্টি আমাদের প্রধান লক্ষ্য।\r\nবিঃদ্রঃ বিয়েবাড়ি,জন্মদিন,আকদ,সব ধরনের পার্টির জন্য অর্ডার নেওয়া হয়।\r\n\r\nঢাকার মধ্যেঃবাইকের মাধ্যমে ২৪ ঘন্টার ভিতর হোম ডেলিভারি দেওয়া হয়।', 50, '1000', NULL, '550', 1, 9, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-10 20:18:54', '2020-11-12 00:05:03'),
(27, 'দই', 'দই', 'টাঙ্গাইল পোড়াবাড়ির বিখ্যাত মিষ্টান্ন ভান্ডার', 'ঘরে বসে আপনি টাঙ্গাইলের মিষ্টি অর্ডার করতে পারেন।\r\nপণোর গুনগতমান এবং আপনার সন্তুষ্টি আমাদের প্রধান লক্ষ্য।\r\nবিঃদ্রঃ বিয়েবাড়ি,জন্মদিন,আকদ,সব ধরনের পার্টির জন্য অর্ডার নেওয়া হয়।\r\n\r\nঢাকার মধ্যেঃবাইকের মাধ্যমে ২৪ ঘন্টার ভিতর হোম ডেলিভারি দেওয়া হয়।', 50, '1000', NULL, '400', 1, 9, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-10 20:22:41', '2020-11-10 21:02:55'),
(28, 'সন্দেশ', 'সন্দেশ(1KG)', 'টাঙ্গাইল পোড়াবাড়ির বিখ্যাত মিষ্টান্ন ভান্ডার', 'ঘরে বসে আপনি টাঙ্গাইলের মিষ্টি অর্ডার করতে পারেন।\r\nপণোর গুনগতমান এবং আপনার সন্তুষ্টি আমাদের প্রধান লক্ষ্য।\r\nবিঃদ্রঃ বিয়েবাড়ি,জন্মদিন,আকদ,সব ধরনের পার্টির জন্য অর্ডার নেওয়া হয়।', 50, '800', NULL, '750', 1, 9, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-10 20:26:50', '2020-11-12 00:04:00'),
(29, 'মতিচুর', 'মতিচুর(1KG)', 'টাঙ্গাইল পোড়াবাড়ির বিখ্যাত মিষ্টান্ন ভান্ডার', 'ঘরে বসে আপনি টাঙ্গাইলের মিষ্টি অর্ডার করতে পারেন।\r\nপণোর গুনগতমান এবং আপনার সন্তুষ্টি আমাদের প্রধান লক্ষ্য।\r\nবিঃদ্রঃ বিয়েবাড়ি,জন্মদিন,আকদ,সব ধরনের পার্টির জন্য অর্ডার নেওয়া হয়।', 50, '1000', NULL, '450', 1, 9, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-10 20:28:22', '2020-11-12 00:03:38'),
(30, 'গুরের চপ', 'গুরের চপ(1KG)', 'টাঙ্গাইল পোড়াবাড়ির বিখ্যাত মিষ্টান্ন ভান্ডার', 'ঘরে বসে আপনি টাঙ্গাইলের মিষ্টি অর্ডার করতে পারেন।\r\nপণোর গুনগতমান এবং আপনার সন্তুষ্টি আমাদের প্রধান লক্ষ্য।\r\nবিঃদ্রঃ বিয়েবাড়ি,জন্মদিন,আকদ,সব ধরনের পার্টির জন্য অর্ডার নেওয়া হয়।\r\n\r\nঢাকার মধ্যেঃবাইকের মাধ্যমে ২৪ ঘন্টার ভিতর হোম ডেলিভারি দেওয়া হয়।', 50, '800', NULL, '550', 1, 9, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-10 20:30:29', '2020-11-12 00:03:14'),
(31, 'ঘি', 'ঘি(1KG)', 'টাঙ্গাইল পোড়াবাড়ির বিখ্যাত মিষ্টান্ন ভান্ডার', 'ঘরে বসে আপনি টাঙ্গাইলের মিষ্টি অর্ডার করতে পারেন।\r\nপণোর গুনগতমান এবং আপনার সন্তুষ্টি আমাদের প্রধান লক্ষ্য।\r\nবিঃদ্রঃ বিয়েবাড়ি,জন্মদিন,আকদ,সব ধরনের পার্টির জন্য অর্ডার নেওয়া হয়।\r\n\r\nঢাকার মধ্যেঃবাইকের মাধ্যমে ২৪ ঘন্টার ভিতর হোম ডেলিভারি দেওয়া হয়।', 1000, '1000', NULL, '1200', 1, 9, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-10 20:33:39', '2020-11-12 00:02:39'),
(32, 'বুরিন্দা লাড্ডু', 'বুরিন্দা লাড্ডু(1KG)', 'টাঙ্গাইল পোড়াবাড়ির বিখ্যাত মিষ্টান্ন ভান্ডার', 'ঘরে বসে আপনি টাঙ্গাইলের মিষ্টি অর্ডার করতে পারেন।\r\nপণোর গুনগতমান এবং আপনার সন্তুষ্টি আমাদের প্রধান লক্ষ্য।\r\nবিঃদ্রঃ বিয়েবাড়ি,জন্মদিন,আকদ,সব ধরনের পার্টির জন্য অর্ডার নেওয়া হয়।\r\n\r\nঢাকার মধ্যেঃবাইকের মাধ্যমে ২৪ ঘন্টার ভিতর হোম ডেলিভারি দেওয়া হয়।', 1000, '1000', NULL, '350', 1, 9, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-10 20:35:54', '2020-11-12 00:02:03'),
(33, 'ms1', 'টাঙ্গাইল মিষ্টান্ন', 'টাঙ্গাইল মিষ্টান্ন', 'টাঙ্গাইল মিষ্টান্ন', 1, NULL, NULL, '00', 1, 9, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-10 20:41:39', '2020-11-11 15:06:57'),
(35, 'SS1', 'Georgette Embroidery', 'Main Material:Weightless Georgette,\r\nSemi-Stitched Georgette Embroidery Work Free Size', 'Product Type: embroidery work Gown Anarkali suits Partywear  \r\n\r\nMain Material: Weightless Georgette embroidery work\r\n\r\nDupatta: Weightless Georgette embroidery work\r\n\r\nSalwar: butterfly cotton fabrics\r\n\r\nInner: butterfly cotton fabrics\r\n\r\nLook: like as catalog.\r\n\r\nProduct condition: Semi-Stitched\r\n\r\nGender: Women\r\n\r\nFree Size\r\n\r\nHeavy embroidery work\r\n\r\nQuality: High-quality product\r\n\r\nStylish and fashionable\r\n\r\nMade in Bangladesh.', 48, '1000', NULL, '1950', 1, 8, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 04:40:26', '2020-11-11 04:54:24'),
(36, 'SS1', 'Semi-Stitched Georgette', 'Semi-Stitched Georgette embroidery work Free Size Exclusive Designer', 'Brand: alo fashion,\r\nProduct Type: Unstitched salwar kameez,\r\nMain Material: Weightless Georgette embroidery,\r\nDupatta: Weightless Georgette embroidery work,\r\nQuality: High-quality product,\r\nStylish and fashionable,\r\nMade in Bangladesh,\r\nWork: embroidery work,\r\nSalwar: butterfly fabrics,\r\nLook: 100% like as catalog,', 20, '1000', NULL, '2190', 1, 8, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 04:50:43', '2020-11-11 04:54:57'),
(37, 'SS1', 'Unstitch Pink and Selber', 'Unstitch Pink and Selber Embroidery Georgette Gown For Women', 'Gorgeous Gown,\r\nMaterial:Georgette,\r\nComfortable,\r\nParty wear,\r\nEthical wear,\r\nEmbroidery Work,\r\nOccasion: Festival, Partywear, Wedding,\r\nUnstitch,\r\nFabrics Indian.Made In Bangladesh.', 10, '1000', NULL, '1850', 1, 8, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 05:01:34', '2020-11-11 05:01:34'),
(38, 'SS1', 'Georgette Embroidery', 'Black Georgette Embroidery Semi Stitched Party Wear / Bridal suits Dress for Women', 'Product Type: Semi Stitched Party Wear / Bridal suits - Dress,\r\nMain Material: Georgette,\r\nDupatta: Waightless Georgette embroidery work,\r\nembroidery work,\r\nGender: Women,\r\nParty Dress,\r\nStylish and fashionable', 10, '1000', NULL, '1850', 1, 8, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 05:28:32', '2020-11-11 05:28:32'),
(39, 'আচার', 'আচার(1KG)', '# হাতের তৈরী।\r\n# খাটি ঘি,মধু,আচার,মিষ্টি।\r\n# দেশের সব জায়গা পার্সেল করা হয়।\r\n# ভালোনা হলে রিটার্ন করতে পারবেন।\r\n# কুরিয়ার ফি আগে দিতে হবে।', '# হাতের তৈরী।\r\n# খাটি ঘি,মধু,আচার,মিষ্টি।\r\n# দেশের সব জায়গা পার্সেল করা হয়।\r\n# ভালোনা হলে রিটার্ন করতে পারবেন।\r\n# কুরিয়ার ফি আগে দিতে হবে।', 1000, '1000', NULL, '550', 1, 11, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 05:37:25', '2020-11-12 00:01:34'),
(40, 'ঘি', 'ঘি(1KG)', '# হাতের তৈরী।\r\n# খাটি ঘি,মধু,আচার,মিষ্টি।\r\n# দেশের সব জায়গা পার্সেল করা হয়।\r\n# ভালোনা হলে রিটার্ন করতে পারবেন।\r\n# কুরিয়ার ফি আগে দিতে হবে।', '# হাতের তৈরী।\r\n# খাটি ঘি,মধু,আচার,মিষ্টি।\r\n# দেশের সব জায়গা পার্সেল করা হয়।\r\n# ভালোনা হলে রিটার্ন করতে পারবেন।\r\n# কুরিয়ার ফি আগে দিতে হবে।', 1000, '1000', NULL, '1150', 1, 11, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 05:38:48', '2020-11-12 00:01:08'),
(41, 'মধু', 'মধু(1KG)', '# হাতের তৈরী।\r\n# খাটি ঘি,মধু,আচার,মিষ্টি।\r\n# দেশের সব জায়গা পার্সেল করা হয়।\r\n# ভালোনা হলে রিটার্ন করতে পারবেন।\r\n# কুরিয়ার ফি আগে দিতে হবে।', '# হাতের তৈরী।\r\n# খাটি ঘি,মধু,আচার,মিষ্টি।\r\n# দেশের সব জায়গা পার্সেল করা হয়।\r\n# ভালোনা হলে রিটার্ন করতে পারবেন।\r\n# কুরিয়ার ফি আগে দিতে হবে।', 1000, '1000', NULL, '550', 1, 11, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 05:41:01', '2020-11-12 00:00:48'),
(42, 'Semi-Stitched Georgette', 'Semi-Stitched Georgette', 'Semi-Stitched Georgette Embroidery Work Free Size Exclusive Designer - Gown Anarkali Party Wear Suits for Women', 'Product Type: embroidery work Gown Anarkali suits Partywear,\r\nMain Material: Weightless Georgette embroidery work,\r\nDupatta: Weightless Georgette embroidery work,\r\nSalwar: butterfly cotton fabrics,\r\nInner: butterfly cotton fabrics,\r\nLook: like as catalog,\r\nProduct condition: Semi-Stitched,\r\nGender: Women,\r\nFree Size,\r\nHeavy embroidery work,\r\nQuality: High-quality product,\r\nStylish and fashionable,\r\nMade in Bangladesh.', 50, '1000', NULL, '2150', 1, 8, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 23:55:26', '2020-11-11 23:55:26'),
(46, 'cotton lunggi', 'cotton lunggi 100%', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।য় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular,\r\nIt has 100 % pure cotton,\r\nEasy to drap,\r\nWe believe in sturdy functional products that will perform well and last for long time.', 50, '800', NULL, '400', 1, 12, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 15:37:32', '2020-11-12 22:12:21'),
(49, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '600', NULL, '400', 1, 12, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 16:39:55', '2020-11-12 22:11:56'),
(50, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '600', NULL, '400', 1, 12, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 16:42:03', '2020-11-12 22:11:41'),
(51, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', 'colour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '600', NULL, '400', 1, 12, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 16:44:11', '2020-11-12 22:11:24'),
(52, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '600', NULL, '400', 1, 12, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 16:45:50', '2020-11-12 22:11:11'),
(53, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '600', NULL, '400', 1, 12, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 16:48:50', '2020-11-12 22:10:49'),
(54, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '600', NULL, '400', 1, 12, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 16:50:18', '2020-11-12 22:10:31'),
(55, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '600', NULL, '400', 1, 12, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 21:37:15', '2020-11-12 22:09:54'),
(56, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '800', NULL, '380', 1, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 22:28:37', '2020-11-12 22:28:37'),
(58, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ১৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time', 50, '800', NULL, '380', 1, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 22:33:46', '2020-11-12 22:33:46'),
(60, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ১৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '800', NULL, '380', 1, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 22:36:22', '2020-11-12 22:36:22'),
(61, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ১৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '800', NULL, '380', 1, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 22:42:36', '2020-11-12 22:42:36'),
(62, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ১৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time', 50, '800', NULL, '380', 1, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 22:43:48', '2020-11-12 22:43:48'),
(63, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ১৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time', 50, '800', NULL, '380', 1, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 22:45:18', '2020-11-12 22:45:18'),
(64, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ১৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '800', NULL, '380', 1, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 22:47:18', '2020-11-12 22:47:18'),
(65, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ১৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '800', NULL, '380', 1, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 22:50:12', '2020-11-12 22:50:12'),
(66, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ১৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '800', NULL, '380', 1, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 22:54:05', '2020-11-12 22:54:05'),
(67, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ১৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '800', NULL, '380', 1, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 22:55:53', '2020-11-12 22:55:53'),
(68, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ১৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '800', NULL, '380', 1, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 22:56:55', '2020-11-12 22:56:55'),
(69, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ১৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '800', NULL, '380', 1, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 22:58:02', '2020-11-12 22:58:02'),
(70, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ১৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '800', NULL, '380', 1, 12, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 23:00:19', '2020-11-12 23:00:19'),
(71, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ১৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '800', NULL, '380', 1, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 23:06:56', '2020-11-12 23:06:56'),
(72, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ১৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '800', NULL, '380', 1, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 23:22:17', '2020-11-12 23:22:17'),
(73, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ১৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '800', NULL, '380', 1, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 23:23:36', '2020-11-12 23:23:36'),
(74, 'SS1', 'cotton lunggi', '#Bangali wear 100% cotton lunggi for man.\r\n ঐতিহাসিক পাবনা লুঙ্গি পরতে আরাম, দেখতে অনেক সুন্দ, ১৭ টা ডিজাইন এ অনেক সুন্দর, ১০০% কটন নরম ও আরামদায়ক  লুঙ্গি, সাইজ ছয় হাত।', '#সূম্পর্ন হাতে তৈরী\r\n#নরমাল ফোনদিয়ে পিক তোলা\r\n#ছবির থেকেও অনেক ভাল।\r\ncolour :Malticular, It has 100 % pure cotton, Easy to drap, We believe in sturdy functional products that will perform well and last for long time.', 50, '800', NULL, '380', 1, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 23:26:07', '2020-11-12 23:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `product_id`, `created_at`, `updated_at`) VALUES
(84, 'assets/img/products/23/Semi-Stitched indian Georgette Embroidery-1.jpg', 23, '2020-11-10 18:52:51', '2020-11-10 18:52:51'),
(85, 'assets/img/products/24/indian Georgette-1.jpg', 24, '2020-11-10 19:15:11', '2020-11-10 19:15:11'),
(86, 'assets/img/products/25/টাঙ্গাইল মিষ্টান্ন-1.jpg', 25, '2020-11-10 20:15:01', '2020-11-10 20:15:01'),
(87, 'assets/img/products/25/টাঙ্গাইল মিষ্টান্ন-2.jpg', 25, '2020-11-10 20:15:02', '2020-11-10 20:15:02'),
(88, 'assets/img/products/25/টাঙ্গাইল মিষ্টান্ন-3.jpg', 25, '2020-11-10 20:15:02', '2020-11-10 20:15:02'),
(89, 'assets/img/products/25/টাঙ্গাইল মিষ্টান্ন-4.jpg', 25, '2020-11-10 20:15:02', '2020-11-10 20:15:02'),
(90, 'assets/img/products/25/টাঙ্গাইল মিষ্টান্ন-5.jpg', 25, '2020-11-10 20:15:02', '2020-11-10 20:15:02'),
(91, 'assets/img/products/26/টাঙ্গাইল মিষ্টান্ন-1.jpg', 26, '2020-11-10 20:18:55', '2020-11-10 20:18:55'),
(92, 'assets/img/products/27/টাঙ্গাইল মিষ্টান্ন-1.jpg', 27, '2020-11-10 20:22:41', '2020-11-10 20:22:41'),
(93, 'assets/img/products/28/সন্দেশ-1.jpg', 28, '2020-11-10 20:26:50', '2020-11-10 20:26:50'),
(94, 'assets/img/products/29/মতিচুর-1.jpg', 29, '2020-11-10 20:28:22', '2020-11-10 20:28:22'),
(95, 'assets/img/products/30/গুরের চপ-1.jpg', 30, '2020-11-10 20:30:29', '2020-11-10 20:30:29'),
(96, 'assets/img/products/31/ঘি-1.jpg', 31, '2020-11-10 20:33:39', '2020-11-10 20:33:39'),
(97, 'assets/img/products/32/বুরিন্দা লাড্ডু-1.jpg', 32, '2020-11-10 20:35:55', '2020-11-10 20:35:55'),
(98, 'assets/img/products/33/টাঙ্গাইল মিষ্টান্ন-1.jpg', 33, '2020-11-10 20:41:39', '2020-11-10 20:41:39'),
(100, 'assets/img/products/35/Georgette Embroidery-1.jpg', 35, '2020-11-11 04:40:26', '2020-11-11 04:40:26'),
(101, 'assets/img/products/36/Semi-Stitched Georgette embroidery-1.jpg', 36, '2020-11-11 04:50:43', '2020-11-11 04:50:43'),
(103, 'assets/img/products/37/Unstitch Pink and Selber-1.jpg', 37, '2020-11-11 05:05:45', '2020-11-11 05:05:45'),
(104, 'assets/img/products/38/Georgette Embroidery-1.jpg', 38, '2020-11-11 05:28:32', '2020-11-11 05:28:32'),
(105, 'assets/img/products/38/Georgette Embroidery-2.jpg', 38, '2020-11-11 05:28:32', '2020-11-11 05:28:32'),
(106, 'assets/img/products/38/Georgette Embroidery-3.jpg', 38, '2020-11-11 05:28:33', '2020-11-11 05:28:33'),
(107, 'assets/img/products/38/Georgette Embroidery-4.jpg', 38, '2020-11-11 05:28:33', '2020-11-11 05:28:33'),
(108, 'assets/img/products/39/আচার-1.jpg', 39, '2020-11-11 05:37:26', '2020-11-11 05:37:26'),
(109, 'assets/img/products/39/আচার-2.jpg', 39, '2020-11-11 05:37:26', '2020-11-11 05:37:26'),
(110, 'assets/img/products/40/ঘি-1.jpg', 40, '2020-11-11 05:38:49', '2020-11-11 05:38:49'),
(111, 'assets/img/products/41/মধু-1.jpg', 41, '2020-11-11 05:41:01', '2020-11-11 05:41:01'),
(112, 'assets/img/products/42/Semi-Stitched Georgette-1.jpg', 42, '2020-11-11 23:55:26', '2020-11-11 23:55:26'),
(127, 'assets/img/products/46/cotton lunggi-1.jpg', 46, '2020-11-12 15:37:33', '2020-11-12 15:37:33'),
(138, 'assets/img/products/49/cotton lunggi-1.jpg', 49, '2020-11-12 16:39:55', '2020-11-12 16:39:55'),
(149, 'assets/img/products/53/cotton lunggi-1.jpg', 53, '2020-11-12 16:48:51', '2020-11-12 16:48:51'),
(150, 'assets/img/products/53/cotton lunggi-2.jpg', 53, '2020-11-12 16:48:51', '2020-11-12 16:48:51'),
(151, 'assets/img/products/53/cotton lunggi-3.jpg', 53, '2020-11-12 16:48:51', '2020-11-12 16:48:51'),
(152, 'assets/img/products/53/cotton lunggi-4.jpg', 53, '2020-11-12 16:48:51', '2020-11-12 16:48:51'),
(153, 'assets/img/products/53/cotton lunggi-5.jpg', 53, '2020-11-12 16:48:52', '2020-11-12 16:48:52'),
(154, 'assets/img/products/53/cotton lunggi-6.jpg', 53, '2020-11-12 16:48:52', '2020-11-12 16:48:52'),
(155, 'assets/img/products/53/cotton lunggi-7.jpg', 53, '2020-11-12 16:48:52', '2020-11-12 16:48:52'),
(156, 'assets/img/products/53/cotton lunggi-8.jpg', 53, '2020-11-12 16:48:52', '2020-11-12 16:48:52'),
(170, 'assets/img/products/54/cotton lunggi-1.jpg', 54, '2020-11-12 17:06:24', '2020-11-12 17:06:24'),
(171, 'assets/img/products/54/cotton lunggi-2.jpg', 54, '2020-11-12 17:06:24', '2020-11-12 17:06:24'),
(172, 'assets/img/products/50/cotton lunggi-1.jpg', 50, '2020-11-12 17:08:09', '2020-11-12 17:08:09'),
(173, 'assets/img/products/50/cotton lunggi-2.jpg', 50, '2020-11-12 17:08:09', '2020-11-12 17:08:09'),
(177, 'assets/img/products/52/cotton lunggi-1.jpg', 52, '2020-11-12 17:14:15', '2020-11-12 17:14:15'),
(178, 'assets/img/products/52/cotton lunggi-2.jpg', 52, '2020-11-12 17:14:15', '2020-11-12 17:14:15'),
(179, 'assets/img/products/52/cotton lunggi-3.jpg', 52, '2020-11-12 17:14:16', '2020-11-12 17:14:16'),
(180, 'assets/img/products/52/cotton lunggi-4.jpg', 52, '2020-11-12 17:14:16', '2020-11-12 17:14:16'),
(181, 'assets/img/products/51/cotton lunggi-1.jpg', 51, '2020-11-12 17:23:06', '2020-11-12 17:23:06'),
(182, 'assets/img/products/55/cotton lunggi-1.jpg', 55, '2020-11-12 21:37:16', '2020-11-12 21:37:16'),
(183, 'assets/img/products/56/cotton lunggi-1.jpg', 56, '2020-11-12 22:28:37', '2020-11-12 22:28:37'),
(185, 'assets/img/products/58/cotton lunggi-1.jpg', 58, '2020-11-12 22:33:47', '2020-11-12 22:33:47'),
(187, 'assets/img/products/60/cotton lunggi-1.jpg', 60, '2020-11-12 22:36:22', '2020-11-12 22:36:22'),
(188, 'assets/img/products/61/cotton lunggi-1.jpg', 61, '2020-11-12 22:42:36', '2020-11-12 22:42:36'),
(189, 'assets/img/products/62/cotton lunggi-1.jpg', 62, '2020-11-12 22:43:48', '2020-11-12 22:43:48'),
(190, 'assets/img/products/63/cotton lunggi-1.jpg', 63, '2020-11-12 22:45:18', '2020-11-12 22:45:18'),
(191, 'assets/img/products/64/cotton lunggi-1.jpg', 64, '2020-11-12 22:47:19', '2020-11-12 22:47:19'),
(192, 'assets/img/products/65/cotton lunggi-1.jpg', 65, '2020-11-12 22:50:12', '2020-11-12 22:50:12'),
(193, 'assets/img/products/66/cotton lunggi-1.jpg', 66, '2020-11-12 22:54:05', '2020-11-12 22:54:05'),
(194, 'assets/img/products/67/cotton lunggi-1.jpg', 67, '2020-11-12 22:55:53', '2020-11-12 22:55:53'),
(195, 'assets/img/products/68/cotton lunggi-1.jpg', 68, '2020-11-12 22:56:55', '2020-11-12 22:56:55'),
(196, 'assets/img/products/69/cotton lunggi-1.jpg', 69, '2020-11-12 22:58:02', '2020-11-12 22:58:02'),
(197, 'assets/img/products/70/cotton lunggi-1.jpg', 70, '2020-11-12 23:00:19', '2020-11-12 23:00:19'),
(198, 'assets/img/products/71/cotton lunggi-1.jpg', 71, '2020-11-12 23:06:56', '2020-11-12 23:06:56'),
(199, 'assets/img/products/72/cotton lunggi-1.jpg', 72, '2020-11-12 23:22:17', '2020-11-12 23:22:17'),
(200, 'assets/img/products/73/cotton lunggi-1.jpg', 73, '2020-11-12 23:23:36', '2020-11-12 23:23:36'),
(201, 'assets/img/products/74/cotton lunggi-1.jpg', 74, '2020-11-12 23:26:07', '2020-11-12 23:26:07'),
(202, 'assets/img/products/74/cotton lunggi-2.jpg', 74, '2020-11-12 23:26:07', '2020-11-12 23:26:07'),
(203, 'assets/img/products/74/cotton lunggi-3.jpg', 74, '2020-11-12 23:26:08', '2020-11-12 23:26:08'),
(204, 'assets/img/products/74/cotton lunggi-4.jpg', 74, '2020-11-12 23:26:08', '2020-11-12 23:26:08'),
(205, 'assets/img/products/74/cotton lunggi-5.jpg', 74, '2020-11-12 23:26:08', '2020-11-12 23:26:08'),
(206, 'assets/img/products/74/cotton lunggi-6.jpg', 74, '2020-11-12 23:26:08', '2020-11-12 23:26:08'),
(207, 'assets/img/products/74/cotton lunggi-7.jpg', 74, '2020-11-12 23:26:08', '2020-11-12 23:26:08'),
(208, 'assets/img/products/74/cotton lunggi-8.jpg', 74, '2020-11-12 23:26:09', '2020-11-12 23:26:09'),
(209, 'assets/img/products/74/cotton lunggi-9.jpg', 74, '2020-11-12 23:26:09', '2020-11-12 23:26:09'),
(210, 'assets/img/products/74/cotton lunggi-10.jpg', 74, '2020-11-12 23:26:09', '2020-11-12 23:26:09'),
(211, 'assets/img/products/74/cotton lunggi-11.jpg', 74, '2020-11-12 23:26:09', '2020-11-12 23:26:09'),
(212, 'assets/img/products/74/cotton lunggi-12.jpg', 74, '2020-11-12 23:26:10', '2020-11-12 23:26:10'),
(213, 'assets/img/products/74/cotton lunggi-13.jpg', 74, '2020-11-12 23:26:10', '2020-11-12 23:26:10'),
(214, 'assets/img/products/74/cotton lunggi-14.jpg', 74, '2020-11-12 23:26:10', '2020-11-12 23:26:10'),
(215, 'assets/img/products/74/cotton lunggi-15.jpg', 74, '2020-11-12 23:26:10', '2020-11-12 23:26:10');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(7, 'Dhaka', 'DHA-2020', '2020-08-04 04:16:29', '2020-08-04 04:16:29'),
(8, 'Outside of Dhaka', 'OUT-DHA_2020', '2020-08-04 04:16:56', '2020-08-04 04:16:56');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` bigint(20) NOT NULL,
  `review` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `customer_name`, `email`, `rating`, `review`, `product_id`, `created_at`, `updated_at`) VALUES
(7, 'jafor', 'jafor@gmail.com', 5, 'Best', 19, '2020-09-17 10:46:24', '2020-11-08 10:09:54'),
(9, 'mahin', 'mahin@gmail.com', 5, 'Very good at quality', 72, '2020-11-17 00:27:46', '2020-11-17 00:27:46');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_id` int(10) UNSIGNED DEFAULT NULL,
  `shipping_cost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `name`, `email`, `phone`, `address`, `customer_notes`, `region_id`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(80, 'Ali', 'zamanshovon.iotasit@gmail.com', '495634', 'dhaka', 'anything', 8, NULL, '2020-08-04 04:23:16', '2020-08-04 04:23:16'),
(81, 'Ali', 'zamanshovon.iotasit@gmail.com', '495634', 'dhaka', 'anything', 8, NULL, '2020-08-04 04:23:43', '2020-08-04 04:23:43'),
(82, 'Ali', 'test@email.com', '0141433414', 'Dhaka', NULL, 8, NULL, '2020-08-04 05:19:01', '2020-08-04 05:19:01'),
(83, 'Ali', 'test@email.com', '0141433414', 'Dhaka', 'dfgdfg', 7, NULL, '2020-08-04 05:19:48', '2020-08-04 05:19:48'),
(84, 'Ali', 'test@email.com', '0141433414', 'Dhaka', 'dfgdfg', 7, NULL, '2020-08-04 05:20:44', '2020-08-04 05:20:44'),
(85, 'Ali', 'test@email.com', '0141433414', 'Dhaka', 'dfgdfg', 7, NULL, '2020-08-04 05:21:04', '2020-08-04 05:21:04'),
(86, 'Ali', 'test@email.com', '0141433414', 'chattogram', 'anything', 8, NULL, '2020-08-04 05:21:43', '2020-08-04 05:21:43'),
(87, 'Ali', 'test@email.com', '0141433414', 'chattogram', 'anything', 8, NULL, '2020-08-04 05:22:27', '2020-08-04 05:22:27'),
(88, 'Ali', 'test@email.com', '0141433414', 'dhaka', 'dfsdfs', 7, NULL, '2020-08-04 05:23:38', '2020-08-04 05:23:38'),
(89, 'Ali', 'test@email.com', '0141433414', 'Dhaka', NULL, 7, NULL, '2020-09-05 00:10:39', '2020-09-05 00:10:39'),
(90, 'Ali', 'test@email.com', '0141433414', 'Dhaka', NULL, 7, NULL, '2020-09-05 00:10:56', '2020-09-05 00:10:56'),
(91, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', 'asd', 7, NULL, '2020-09-05 02:01:29', '2020-09-05 02:01:29'),
(92, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 02:02:42', '2020-09-05 02:02:42'),
(93, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-05 02:03:09', '2020-09-05 02:03:09'),
(94, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-05 02:04:17', '2020-09-05 02:04:17'),
(95, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-05 02:04:31', '2020-09-05 02:04:31'),
(96, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-05 02:04:53', '2020-09-05 02:04:53'),
(97, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 02:07:04', '2020-09-05 02:07:04'),
(98, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 02:07:30', '2020-09-05 02:07:30'),
(99, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 02:08:12', '2020-09-05 02:08:12'),
(100, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 02:09:16', '2020-09-05 02:09:16'),
(101, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 02:09:32', '2020-09-05 02:09:32'),
(102, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 02:09:40', '2020-09-05 02:09:40'),
(103, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-05 02:22:40', '2020-09-05 02:22:40'),
(104, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:09:29', '2020-09-05 03:09:29'),
(105, 'Ali', 'test@email.com', '0141433414', NULL, NULL, 7, NULL, '2020-09-05 03:09:43', '2020-09-05 03:09:43'),
(106, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-05 03:10:02', '2020-09-05 03:10:02'),
(107, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:11:16', '2020-09-05 03:11:16'),
(108, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:11:24', '2020-09-05 03:11:24'),
(109, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:11:29', '2020-09-05 03:11:29'),
(110, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:11:35', '2020-09-05 03:11:35'),
(111, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:11:39', '2020-09-05 03:11:39'),
(112, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:11:55', '2020-09-05 03:11:55'),
(113, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:14:40', '2020-09-05 03:14:40'),
(114, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:14:49', '2020-09-05 03:14:49'),
(115, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:14:55', '2020-09-05 03:14:55'),
(116, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:15:58', '2020-09-05 03:15:58'),
(117, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:16:23', '2020-09-05 03:16:23'),
(118, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:16:24', '2020-09-05 03:16:24'),
(119, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:16:28', '2020-09-05 03:16:28'),
(120, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:16:49', '2020-09-05 03:16:49'),
(121, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:16:59', '2020-09-05 03:16:59'),
(122, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:17:08', '2020-09-05 03:17:08'),
(123, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:17:29', '2020-09-05 03:17:29'),
(124, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:17:38', '2020-09-05 03:17:38'),
(125, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:18:27', '2020-09-05 03:18:27'),
(126, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:18:31', '2020-09-05 03:18:31'),
(127, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:18:43', '2020-09-05 03:18:43'),
(128, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:19:09', '2020-09-05 03:19:09'),
(129, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-05 03:20:46', '2020-09-05 03:20:46'),
(130, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:21:59', '2020-09-05 03:21:59'),
(131, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:22:11', '2020-09-05 03:22:11'),
(132, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:22:19', '2020-09-05 03:22:19'),
(133, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:22:26', '2020-09-05 03:22:26'),
(134, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:23:20', '2020-09-05 03:23:20'),
(135, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:23:29', '2020-09-05 03:23:29'),
(136, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 03:24:01', '2020-09-05 03:24:01'),
(137, 'Ali', 'test@email.com', '0141433414', NULL, NULL, 7, NULL, '2020-09-05 03:39:31', '2020-09-05 03:39:31'),
(138, 'Ali', 'test@email.com', '0141433414', NULL, NULL, 7, NULL, '2020-09-05 03:39:46', '2020-09-05 03:39:46'),
(139, 'Ali', 'test@email.com', '0141433414', NULL, NULL, 7, NULL, '2020-09-05 03:40:16', '2020-09-05 03:40:16'),
(140, 'Ali', 'test@email.com', '0141433414', NULL, NULL, 7, NULL, '2020-09-05 03:41:15', '2020-09-05 03:41:15'),
(141, 'Ali', 'test@email.com', '0141433414', NULL, NULL, 7, NULL, '2020-09-05 03:41:33', '2020-09-05 03:41:33'),
(142, 'Ali', 'test@email.com', '0141433414', NULL, NULL, 7, NULL, '2020-09-05 03:41:55', '2020-09-05 03:41:55'),
(143, 'Ali', 'test@email.com', '0141433414', NULL, NULL, 7, NULL, '2020-09-05 03:42:02', '2020-09-05 03:42:02'),
(144, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-05 05:30:17', '2020-09-05 05:30:17'),
(145, 'Ali', 'test@email.com', '0141433414', NULL, NULL, 8, NULL, '2020-09-05 05:38:28', '2020-09-05 05:38:28'),
(146, 'Ali', 'test@email.com', '0141433414', '132123', NULL, 8, NULL, '2020-09-05 06:20:48', '2020-09-05 06:20:48'),
(147, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-05 06:22:08', '2020-09-05 06:22:08'),
(148, 'Ali', 'test@email.com', '0141433414', 'dhaka', NULL, 8, NULL, '2020-09-05 09:54:51', '2020-09-05 09:54:51'),
(149, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-05 12:37:17', '2020-09-05 12:37:17'),
(150, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-05 12:42:10', '2020-09-05 12:42:10'),
(151, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-05 12:43:39', '2020-09-05 12:43:39'),
(152, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-05 12:43:52', '2020-09-05 12:43:52'),
(153, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-05 12:45:14', '2020-09-05 12:45:14'),
(154, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-05 12:47:43', '2020-09-05 12:47:43'),
(155, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-05 12:48:00', '2020-09-05 12:48:00'),
(156, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-05 12:48:30', '2020-09-05 12:48:30'),
(157, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', 'daaa', 8, NULL, '2020-09-13 12:36:54', '2020-09-13 12:36:54'),
(158, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', 'asdasdf', 8, NULL, '2020-09-14 11:07:35', '2020-09-14 11:07:35'),
(159, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-16 01:40:26', '2020-09-16 01:40:26'),
(160, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-16 03:56:56', '2020-09-16 03:56:56'),
(161, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-16 03:58:15', '2020-09-16 03:58:15'),
(162, 'zaman shovon', 'test@email.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-18 00:11:01', '2020-09-18 00:11:01'),
(163, 'zaman shovon', 'test@email.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-18 00:11:35', '2020-09-18 00:11:35'),
(164, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-18 00:16:23', '2020-09-18 00:16:23'),
(165, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-18 00:16:38', '2020-09-18 00:16:38'),
(166, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-18 00:17:43', '2020-09-18 00:17:43'),
(167, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-18 00:23:31', '2020-09-18 00:23:31'),
(168, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-18 14:10:59', '2020-09-18 14:10:59'),
(169, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-18 14:22:03', '2020-09-18 14:22:03'),
(170, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-18 14:22:18', '2020-09-18 14:22:18'),
(171, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-18 14:23:15', '2020-09-18 14:23:15'),
(172, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-19 10:40:34', '2020-09-19 10:40:34'),
(173, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-19 10:40:52', '2020-09-19 10:40:52'),
(174, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-19 10:49:14', '2020-09-19 10:49:14'),
(175, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-19 10:49:58', '2020-09-19 10:49:58'),
(176, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-19 10:50:58', '2020-09-19 10:50:58'),
(177, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-19 10:55:09', '2020-09-19 10:55:09'),
(178, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-19 11:51:48', '2020-09-19 11:51:48'),
(179, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-19 11:52:39', '2020-09-19 11:52:39'),
(180, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-19 11:53:22', '2020-09-19 11:53:22'),
(181, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-19 11:55:23', '2020-09-19 11:55:23'),
(182, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-19 11:55:51', '2020-09-19 11:55:51'),
(183, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-19 11:56:11', '2020-09-19 11:56:11'),
(184, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-19 11:57:24', '2020-09-19 11:57:24'),
(185, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-19 11:58:09', '2020-09-19 11:58:09'),
(186, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-19 11:59:28', '2020-09-19 11:59:28'),
(187, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-19 11:59:34', '2020-09-19 11:59:34'),
(188, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-19 12:00:41', '2020-09-19 12:00:41'),
(189, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-19 12:00:49', '2020-09-19 12:00:49'),
(190, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-19 12:01:55', '2020-09-19 12:01:55'),
(191, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-19 12:02:17', '2020-09-19 12:02:17'),
(192, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-09-19 12:02:24', '2020-09-19 12:02:24'),
(193, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 8, NULL, '2020-09-22 12:47:55', '2020-09-22 12:47:55'),
(194, 'Ali', 'test@email.com', '0141433414', 'Dhaka', NULL, 7, NULL, '2020-11-08 08:55:13', '2020-11-08 08:55:13'),
(195, 'Ali', 'test@email.com', '0141433414', 'dhaka', NULL, 7, NULL, '2020-11-08 13:20:36', '2020-11-08 13:20:36'),
(196, 'Ali', 'test@email.com', '0141433414', 'dhaka', NULL, 7, NULL, '2020-11-08 13:21:05', '2020-11-08 13:21:05'),
(197, 'Ali', 'test@email.com', '0141433414', 'dhaka', NULL, 7, NULL, '2020-11-08 13:21:13', '2020-11-08 13:21:13'),
(198, 'md ibrahim pk', 'emonnstu14@gmail.com', '01751552822', 'mirpur', NULL, 7, NULL, '2020-11-10 17:44:38', '2020-11-10 17:44:38'),
(199, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-11-10 17:56:56', '2020-11-10 17:56:56'),
(200, 'zaman shovon', 'zaman.shovon33@gmail.com', '01939504445', 'shanir akhra, Dhaka-1236', NULL, 7, NULL, '2020-11-10 17:58:10', '2020-11-10 17:58:10'),
(201, 'md ibrahim pk', 'emonnstu14@gmail.com', '01751552822', 'mirpur', NULL, 7, NULL, '2020-11-10 20:52:37', '2020-11-10 20:52:37'),
(202, 'test user', 'teer@mail.com', '01723534484', 'Dhaka', NULL, 7, NULL, '2020-11-16 11:37:07', '2020-11-16 11:37:07'),
(203, 'Sakib Rifat', 'shrifat2014@gmail.com', '01681861592', NULL, NULL, 7, NULL, '2020-11-17 12:40:31', '2020-11-17 12:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_costs`
--

CREATE TABLE `shipping_costs` (
  `id` int(10) UNSIGNED NOT NULL,
  `weight_range` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `region_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_costs`
--

INSERT INTO `shipping_costs` (`id`, `weight_range`, `cost`, `region_id`, `created_at`, `updated_at`) VALUES
(18, '1000', 50, 7, '2020-08-04 04:19:47', '2020-09-05 02:08:56'),
(19, '2000', 100, 8, '2020-08-04 04:22:48', '2020-09-05 02:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `title`, `created_at`, `updated_at`) VALUES
(2, 'assets/banner/-1599284044.jpg', 'slider', '2020-09-04 23:34:04', '2020-09-04 23:34:04'),
(3, 'assets/banner/-1599284058.jpg', 'slider2', '2020-09-04 23:34:18', '2020-09-04 23:34:18'),
(4, 'assets/banner/-1599286091.jpg', 'another', '2020-09-05 00:08:11', '2020-09-05 00:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `city`, `zip_code`, `status`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(22, 'zaman shovon', 'zaman.shovon23@gmail.com', '323123123123', NULL, NULL, NULL, '', NULL, '$2y$10$TEHP9gunk04vn2r3AQltluRnJpLDvzLmdQAjYwjxWCx4g5S/9wf36', NULL, '2020-08-30 13:34:01', '2020-08-30 13:34:01'),
(23, 'Anwar Maruf', 'anwarmaruf347@gmail.com', '01631348479', NULL, NULL, NULL, '', NULL, '$2y$10$V5tLAD3y9L.zRWI2RtF1kucZ6jUO.cJZbcSbrqM4uDV6tvZum6.nO', NULL, '2020-11-10 17:37:48', '2020-11-10 17:37:48'),
(24, 'md ibrahim pk', 'emonnstu14@gmail.com', '01751552822', NULL, NULL, NULL, '', NULL, '$2y$10$sA48tAnMzVEfuOJcVQr68.8tHspGfNJzaGsgNO/kiuZ3wd9uNn5W6', NULL, '2020-11-10 17:43:04', '2020-11-10 17:43:04'),
(25, 'Olaf Hodkiewicz', 'Pearline.Wiegand30@gmail.com', '11278233495', NULL, NULL, NULL, '', NULL, '$2y$10$/42T4F5kAHdZ9dXUv5kepe5A2iAmH9aJD5r8WxM0PLlv2Kv/ChRaK', NULL, '2020-11-12 03:20:51', '2020-11-12 03:20:51'),
(27, 'Sakib Rifat', 'shrifat2014@gmail.com', '01681861592', NULL, NULL, NULL, '', NULL, '$2y$10$2l00DY9vyUX.mre/M210M.9e3ML4BQHiEJb.bdjItMFDzYSHXpZg.', NULL, '2020-11-17 12:39:33', '2020-11-17 12:39:33'),
(28, 'Adam Willms', 'unicoar@unicous.com', '17152182841', NULL, NULL, NULL, '', NULL, '$2y$10$RouBFqvjtLYyBUir.oW01uaEUspW1SwMjrKRJMG2ffodOxEObyX4G', NULL, '2020-11-19 05:09:54', '2020-11-19 05:09:54'),
(29, 'zaman shovon', 'zaman.tester@gmail.com', '01939504445', NULL, NULL, NULL, NULL, NULL, '$2y$10$uSYH5TbX05uGmc7LyhvdiOazn9hFRKr8uWAvOIitWtpA2waTIIKE6', NULL, '2020-12-01 13:08:22', '2020-12-01 13:08:22'),
(30, 'Mike', 'Tester@app.com', '2321312', NULL, NULL, NULL, NULL, NULL, '$2y$10$Gfu2Gds6glsreG8u27PJMuHV6NWTYXi5FSfc0YJhAY/j/fOi7C7w2', NULL, '2020-12-01 13:10:18', '2020-12-01 13:10:18'),
(31, 'zaman tester', 'zaman.asert@gmail.com', '01939504445', NULL, NULL, NULL, NULL, NULL, '$2y$10$I0E6ziWYYiLbN1WcqkTLX.ZzHNsj3jHc3l93QUkMJh.pPJIiwFix2', NULL, '2020-12-01 13:12:29', '2020-12-01 13:12:29'),
(32, 'testing', 'tester@apps.com', '221312312', NULL, NULL, NULL, NULL, NULL, '$2y$10$T.RLAmwnqAnWOTtu/54fKOFB7gll00l0BgvLMauOu/5rnYbGlaYm6', NULL, '2020-12-01 13:14:25', '2020-12-01 13:14:25'),
(35, 'Takeout1', 'take@mail.com', '23234234', 'asda', NULL, NULL, NULL, NULL, '$2y$10$Y5GOM1AytcC2TjQ3uHtrYuGKobWSElhUvIu8VqJKfAgeGmGo1ShYS', NULL, NULL, NULL),
(36, 'zaman shovon', 'make@mail.com', '01939504445', NULL, NULL, NULL, 'shanir akhra, Dhaka-1236\r\nNikunju-2,Dhaka', NULL, '$2y$10$e8PetH6hk2OGNJc7MdIRFuoYQoNIJHraIUmAi1Qcc4sPEVOYvZ4L6', NULL, '2020-12-01 13:28:07', '2020-12-01 13:28:07'),
(37, 'owl', 'fa@gmail.com', '34234234', NULL, NULL, NULL, 'asasda', NULL, '$2y$10$3qvHdD85N39h.3/SLA8yvOvMdR13Kryh62jCmDVH9rAxHZfdDkSj.', NULL, '2020-12-01 13:28:46', '2020-12-01 13:28:46'),
(38, 'maker', 'maker@app.com', '01922312123', NULL, NULL, NULL, 'jatrabari', NULL, '$2y$10$GMIBvNIETVDWY5WE0u4KJ.ST7VnawfJv7QG9yXWKFXp3euZxqb0vq', NULL, '2020-12-03 13:28:37', '2020-12-03 13:28:37'),
(40, 'Md sajib', 'ms.sbt00@gmail.com', '01991100131', NULL, NULL, NULL, 'Adabor', NULL, '$2y$10$arxET0hAlz0P0A4q0Q2SMuLvDrz4v7S4HWZsEk2Sbtu.mA4ovis8.', NULL, '2020-12-08 15:45:05', '2020-12-08 15:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `utilities`
--

CREATE TABLE `utilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `about_us` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_statement` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_conditions` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipment_policy` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_policy` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `how_to_return` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boostings`
--
ALTER TABLE `boostings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_department_id_foreign` (`department_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_department_id_foreign` (`department_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `get_coupons`
--
ALTER TABLE `get_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `get_coupons_product_id_foreign` (`product_id`);

--
-- Indexes for table `guest_details`
--
ALTER TABLE `guest_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monthly_ads`
--
ALTER TABLE `monthly_ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `monthly_ads_product_id_foreign` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_shipping_id_foreign` (`shipping_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_region_id_foreign` (`region_id`);

--
-- Indexes for table `shipping_costs`
--
ALTER TABLE `shipping_costs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_costs_region_id_foreign` (`region_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `utilities`
--
ALTER TABLE `utilities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `boostings`
--
ALTER TABLE `boostings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `get_coupons`
--
ALTER TABLE `get_coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guest_details`
--
ALTER TABLE `guest_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `monthly_ads`
--
ALTER TABLE `monthly_ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `shipping_costs`
--
ALTER TABLE `shipping_costs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `utilities`
--
ALTER TABLE `utilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `get_coupons`
--
ALTER TABLE `get_coupons`
  ADD CONSTRAINT `get_coupons_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `monthly_ads`
--
ALTER TABLE `monthly_ads`
  ADD CONSTRAINT `monthly_ads_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipping_costs`
--
ALTER TABLE `shipping_costs`
  ADD CONSTRAINT `shipping_costs_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
