-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-08-02 03:39:16
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `django_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add post', 7, 'add_post'),
(26, 'Can change post', 7, 'change_post'),
(27, 'Can delete post', 7, 'delete_post'),
(28, 'Can view post', 7, 'view_post'),
(29, 'Can add guestbook', 8, 'add_guestbook'),
(30, 'Can change guestbook', 8, 'change_guestbook'),
(31, 'Can delete guestbook', 8, 'delete_guestbook'),
(32, 'Can view guestbook', 8, 'view_guestbook'),
(33, 'Can add Theme', 9, 'add_theme'),
(34, 'Can change Theme', 9, 'change_theme'),
(35, 'Can delete Theme', 9, 'delete_theme'),
(36, 'Can view Theme', 9, 'view_theme');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$qA4dRvP6fi4X3TWsiVbwfC$yx6KhOPgJWxWaaQJob/LOiuiohowxzDPAHyWGqc35aQ=', '2024-07-18 11:57:36.614000', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2024-07-05 07:55:00.028000');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `blog_post_guestbook`
--

CREATE TABLE `blog_post_guestbook` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` longtext NOT NULL,
  `req_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `blog_post_guestbook`
--

INSERT INTO `blog_post_guestbook` (`id`, `name`, `email`, `phone`, `message`, `req_time`) VALUES
(1, '何信佑', 'jb22621550@gmail.com', '0902206576', 'Hello world', '2024-07-05 08:17:01.516000'),
(2, '阿里山', 'exas39cfj3@gemakc.com', '0910690193', '', '2024-07-09 08:25:14.138000');

-- --------------------------------------------------------

--
-- 資料表結構 `blog_post_post`
--

CREATE TABLE `blog_post_post` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `pub_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `blog_post_post`
--

INSERT INTO `blog_post_post` (`id`, `title`, `slug`, `content`, `pub_date`) VALUES
(3, 'Men I Trust', 'men-i-trust', '**Men I Trust** is an indie pop band hailing from Montreal, Canada. Formed in 2014, the band consists of bassist and producer Dragos Chiriac, guitarist and producer Jessy Caron, and lead vocalist Emma Proulx. They have gained a devoted following with their dreamy, smooth sound that blends elements of pop, electronic, and jazz.\r\n\r\n#### Early Days and Formation\r\n\r\nMen I Trust was founded by Dragos Chiriac and Jessy Caron, who were both studying at Université Laval in Quebec City. Initially, the duo started creating music together purely for fun. Their chemistry was undeniable, leading them to take their collaboration more seriously. Emma Proulx joined the band in 2015, bringing her ethereal vocals that perfectly complemented the band’s sound.\r\n\r\n#### Musical Style and Influences\r\n\r\nThe music of Men I Trust is characterized by its laid-back, chill vibe, featuring soft vocals, groovy basslines, and intricate guitar work. Their songs often evoke a sense of nostalgia, tranquility, and introspection. The band’s influences range from 80s synth-pop and French house music to modern indie pop and jazz.\r\n\r\n#### Notable Releases\r\n\r\nMen I Trust self-released their debut self-titled album in 2014, which laid the groundwork for their distinctive sound. They followed up with the album **\"Headroom\"** in 2015, which solidified their presence in the indie music scene. However, it was their 2019 album **\"Oncle Jazz\"** that brought them widespread acclaim. This album, with its catchy yet soothing tracks like \"Tailwhip\" and \"Numb,\" has been streamed millions of times on platforms like Spotify.\r\n\r\n#### Live Performances and Tours\r\n\r\nKnown for their captivating live performances, Men I Trust has toured extensively across North America, Europe, and Asia. Their shows are noted for their intimate and relaxed atmosphere, often featuring unique visual elements that enhance the dreamy quality of their music.\r\n\r\n#### Impact and Future Directions\r\n\r\nMen I Trust has made a significant impact on the indie music scene with their unique sound and DIY ethos. They have managed to maintain their independence while reaching a broad audience, proving that it is possible to achieve success without major label support. The band continues to release new music and tour, with their fanbase growing steadily.\r\n\r\nTheir ability to stay true to their artistic vision while connecting with fans on a personal level is what sets Men I Trust apart in the crowded indie music landscape. As they continue to evolve and experiment with their sound, fans eagerly anticipate what Men I Trust will create next.', '2024-07-05 08:24:51.405000'),
(4, 'Lorum Ipsum', 'Lorem-ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi varius tristique erat, id mollis erat tempus id. Nulla facilisi. Integer tincidunt est eleifend, pharetra ligula in, auctor nunc. Morbi sit amet urna ut lectus posuere efficitur. Suspendisse varius quis velit non egestas. Nulla facilisi. Integer eu dignissim tellus. Sed elementum arcu at lorem efficitur, at sagittis risus tempus. Phasellus semper pretium lacus. Proin massa mi, pretium tincidunt faucibus in, gravida vitae leo.\r\n\r\nMaecenas sit amet diam nibh. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non tellus euismod, consectetur neque sit amet, cursus magna. Proin vitae elit vel justo volutpat ullamcorper ut quis lorem. Ut tincidunt consequat tempus. Proin non laoreet lectus. Ut tincidunt blandit rutrum. Nullam ullamcorper augue eu dolor pulvinar mattis. Praesent porta porta lorem.\r\n\r\nNunc feugiat aliquet libero rhoncus pulvinar. Aliquam convallis interdum facilisis. Mauris facilisis cursus vehicula. Duis maximus urna nisi, vel tristique leo faucibus in. Maecenas euismod sagittis nisl eu ornare. Duis ornare lorem et lacus maximus pellentesque. Maecenas vel neque in arcu bibendum sollicitudin. Nam consequat eros diam, eu interdum odio lacinia ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus tincidunt felis nec nunc hendrerit scelerisque.', '2024-07-05 08:25:13.323000'),
(5, 'Japanese Breakfast', 'japanese-breakfast', '**[Japanese Breakfast](http://japanesebreakfast.rocks/)** is the musical project of Korean-American musician [Michelle Zauner](http://michellezauner.com/). Emerging from the Philadelphia indie scene, Zauner\'s work under this moniker blends dreamy pop with deeply personal storytelling, addressing themes of grief, identity, and self-discovery.\r\n\r\n#### Early Career and Formation\r\n\r\nMichelle Zauner initially fronted the band Little Big League before embarking on her solo project, Japanese Breakfast, in 2013. The name \"Japanese Breakfast\" was inspired by her heritage and a whimsical idea she had while visiting Japan. Her debut album, **\"Psychopomp\"** (2016), was a cathartic exploration of her mother\'s battle with cancer and subsequent passing.\r\n\r\n#### Musical Style and Influences\r\n\r\nJapanese Breakfast’s music combines ethereal soundscapes with poignant lyrics. Zauner\'s style incorporates elements of indie pop, shoegaze, and experimental rock. Her ability to mix melancholy themes with vibrant, lush melodies creates a unique juxtaposition that resonates deeply with listeners.\r\n\r\n#### Notable Releases\r\n\r\n\"Psychopomp\" was a breakthrough, receiving critical acclaim for its raw emotion and innovative production. Zauner followed up with **\"Soft Sounds from Another Planet\"** in 2017, which expanded on her sound with more ambitious arrangements and themes of space exploration and healing. In 2021, she released **\"Jubilee\"**, an album that marked a shift towards joy and celebration, showcasing her versatility as an artist.\r\n\r\n#### Memoir and Multimedia Work\r\n\r\nIn addition to her musical career, Zauner is also an accomplished writer. Her memoir, **\"Crying in H Mart\"** (2021), explores her experiences growing up as a Korean-American and dealing with the loss of her mother. The book became a New York Times bestseller and further cemented her status as a multifaceted artist.\r\n\r\n#### Live Performances and Tours\r\n\r\nJapanese Breakfast\'s live shows are known for their emotional intensity and engaging visuals. Zauner\'s stage presence and the band\'s dynamic performances have won them a dedicated fanbase. They have toured extensively, both as headliners and supporting acts, bringing their music to audiences around the world.\r\n\r\n#### Impact and Future Directions\r\n\r\nJapanese Breakfast has significantly impacted the indie music scene with its unique blend of personal storytelling and innovative sound. Michelle Zauner\'s ability to convey deep emotions through her music and writing has garnered widespread acclaim and admiration. As she continues to explore new creative avenues, fans eagerly await the next chapter in Japanese Breakfast\'s evolving journey.', '2024-07-05 08:25:37.244000'),
(6, 'Mitski', 'mitski', '**Mitski Miyawaki**, known mononymously as Mitski, is a Japanese-American singer-songwriter known for her raw and powerful music that blends indie rock, punk, and pop. With her poignant lyrics and dynamic vocal range, Mitski has established herself as one of the most compelling voices in contemporary music.\r\n\r\n#### Early Life and Career Beginnings\r\n\r\nMitski was born in Japan and moved frequently during her childhood due to her father\'s job with the United States Department of State. She began her music career while studying at the SUNY Purchase Conservatory of Music, where she initially pursued a degree in film. She self-released her first two albums, **\"Lush\"** (2012) and **\"Retired from Sad, New Career in Business\"** (2013), as part of her school projects.\r\n\r\n#### Musical Style and Influences\r\n\r\nMitski\'s music is known for its emotional intensity and genre-blending sound. Her songs often explore themes of identity, displacement, and longing, drawing from her experiences as a biracial woman navigating different cultures. Her influences range from classic rock and punk to folk and pop, resulting in a unique and versatile sound.\r\n\r\n#### Notable Releases\r\n\r\nIn 2014, Mitski released her breakthrough album **\"Bury Me at Makeout Creek,\"** which garnered critical acclaim for its raw energy and introspective lyrics. She followed up with **\"Puberty 2\"** (2016), which further solidified her reputation as a powerful songwriter. The album features standout tracks like \"Your Best American Girl\" and \"Happy.\"\r\n\r\nHer 2018 album, **\"Be the Cowboy,\"** received widespread acclaim and was named one of the best albums of the year by numerous publications. Songs like \"Nobody\" and \"Geyser\" showcase her ability to blend vulnerability with bold, anthemic soundscapes.\r\n\r\n#### Live Performances and Tours\r\n\r\nMitski is known for her captivating live performances, which often include theatrical elements and a strong emotional connection with the audience. She has toured extensively, performing at major festivals and sold-out venues worldwide. Her dynamic stage presence and powerful vocals have earned her a dedicated fanbase.\r\n\r\n#### Impact and Future Directions\r\n\r\nMitski\'s music has had a significant impact on the indie music scene, with her honest and unflinching exploration of personal and societal issues resonating deeply with listeners. Her ability to convey complex emotions through her music has earned her critical acclaim and a loyal following. As she continues to push the boundaries of her artistry, fans eagerly await her next creative endeavors.', '2024-07-05 08:26:12.646000'),
(7, 'Celest', 'celest', '**[Celest](https://celestband.com/)** is an indie band from Mexico that has been making waves in the Latin American music scene with their unique blend of alternative rock,\r\n\r\n dream pop, and electronic influences. Known for their atmospheric sound and poetic lyrics, Celest has captivated audiences with their innovative approach to music.\r\n\r\n#### Formation and Early Days\r\n\r\nCelest was formed in Mexico City by a group of friends who shared a passion for music and a vision to create something distinctive. The band consists of lead vocalist and guitarist Juan Pablo Villegas, keyboardist and backing vocalist Sofia Marin, bassist Carlos Ruiz, and drummer Luis Alvarez. They began playing local gigs and quickly gained a following for their captivating live performances.\r\n\r\n#### Musical Style and Influences\r\n\r\nCelest\'s music is characterized by its dreamy, ethereal quality, featuring lush soundscapes, melodic guitar riffs, and electronic elements. Their lyrics, often written in Spanish, explore themes of love, existentialism, and the human experience. The band\'s sound is influenced by a variety of genres, including shoegaze, post-rock, and synth-pop, creating a rich and layered sonic experience.\r\n\r\n#### Notable Releases\r\n\r\nCelest released their debut EP **\"Sueños y Sombras\"** in 2018, which showcased their distinctive sound and lyrical depth. The EP received positive reviews and helped establish them as a rising act in the Mexican indie scene. They followed up with their first full-length album, **\"Ecos\"** in 2020, which further cemented their reputation with standout tracks like \"Luz y Oscuridad\" and \"Despertar.\"\r\n\r\n#### Live Performances and Tours\r\n\r\nKnown for their immersive live shows, Celest has performed at various venues and festivals across Mexico and Latin America. Their concerts often feature elaborate visual displays and a powerful, emotive atmosphere that draws the audience into their musical world. The band\'s ability to connect with fans on a personal level has made their live performances a memorable experience.\r\n\r\n#### Impact and Future Directions\r\n\r\nCelest has made a significant impact on the Latin American indie music scene with their innovative sound and poetic lyricism. Their music resonates with a broad audience, transcending language barriers and cultural differences. As they continue to evolve and experiment with their sound, Celest is poised to reach even greater heights in the music world.\r\n\r\nTheir commitment to creating authentic and emotionally compelling music sets them apart, and fans eagerly anticipate what the future holds for this talented Mexican band. As they explore new musical landscapes and continue to push the boundaries of their creativity, Celest remains a band to watch in the global indie music scene.', '2024-07-05 08:32:13.547000'),
(8, 'Clairo', 'clairo', '**[Clairo](https://clairo.com)**, born Claire Cottrill, is an American singer-songwriter and producer who gained fame with her viral hit **\"Pretty Girl\"** in 2017. Known for her lo-fi, bedroom pop aesthetic, Clairo\'s music has resonated with a generation of listeners seeking authenticity and relatability.\r\n\r\n#### Early Life and Viral Success\r\n\r\nClairo grew up in Carlisle, Massachusetts, and began recording music in her bedroom as a teenager. Her breakout came with the self-released single \"Pretty Girl,\" a DIY music video she created for a class project. The video quickly went viral, amassing millions of views on YouTube and catapulting her into the spotlight.\r\n\r\n#### Musical Style and Influences\r\n\r\nClairo\'s music is characterized by its lo-fi production, intimate lyrics, and catchy melodies. Drawing inspiration from a wide range of genres, including indie pop, R&B, and electronic music, her sound is both nostalgic and contemporary. Her honest and vulnerable songwriting often touches on themes of love, mental health, and self-discovery.\r\n\r\n#### Notable Releases\r\n\r\nFollowing the success of \"Pretty Girl,\" Clairo released her debut EP, **\"Diary 001\"** in 2018, which included popular tracks like \"Flaming Hot Cheetos\" and \"4EVER.\" Her debut studio album, **\"Immunity\"** (2019), showcased her growth as an artist, featuring more polished production and collaborations with musicians like Rostam Batmanglij. The album was well-received, with standout tracks like \"Bags\" and \"Sofia\" becoming fan favorites.\r\n\r\n#### Live Performances and Tours\r\n\r\nClairo has toured extensively, both as a headliner and supporting act, bringing her music to fans across the globe. Her live performances are known for their intimate and engaging atmosphere, often featuring stripped-down arrangements that highlight her vocal and songwriting abilities.\r\n\r\n#### Impact and Future Directions\r\n\r\nClairo has become a voice for her generation, with her music resonating deeply with young listeners. Her ability to capture the complexities of modern life in her songs has earned her a dedicated following and critical acclaim. As she continues to evolve as an artist, fans eagerly anticipate her future projects and the new directions she may take.', '2024-07-05 08:37:29.077000'),
(9, 'Doge', 'doge', '<blockquote class=\"imgur-embed-pub\" lang=\"en\" data-id=\"nY37Z7H\"  ><a href=\"//imgur.com/nY37Z7H\">My dog...</a></blockquote><script async src=\"//s.imgur.com/min/embed.js\" charset=\"utf-8\"></script>', '2024-07-11 07:35:03.015000'),
(10, 'Markdown test', 'md', '---\r\n__Advertisement :)__\r\n\r\n- __[pica](https://nodeca.github.io/pica/demo/)__ - high quality and fast image\r\n  resize in browser.\r\n- __[babelfish](https://github.com/nodeca/babelfish/)__ - developer friendly\r\n  i18n with plurals support and easy syntax.\r\n\r\nYou will like those projects!\r\n\r\n---\r\n\r\n# h1 Heading 8-)\r\n## h2 Heading\r\n### h3 Heading\r\n#### h4 Heading\r\n##### h5 Heading\r\n###### h6 Heading\r\n\r\n\r\n## Horizontal Rules\r\n\r\n___\r\n\r\n---\r\n\r\n***\r\n\r\n\r\n## Typographic replacements\r\n\r\nEnable typographer option to see result.\r\n\r\n(c) (C) (r) (R) (tm) (TM) (p) (P) +-\r\n\r\ntest.. test... test..... test?..... test!....\r\n\r\n!!!!!! ???? ,,  -- ---\r\n\r\n\"Smartypants, double quotes\" and \'single quotes\'\r\n\r\n\r\n## Emphasis\r\n\r\n**This is bold text**\r\n\r\n__This is bold text__\r\n\r\n*This is italic text*\r\n\r\n_This is italic text_\r\n\r\n~~Strikethrough~~\r\n\r\n\r\n## Blockquotes\r\n\r\n\r\n> Blockquotes can also be nested...\r\n>> ...by using additional greater-than signs right next to each other...\r\n> > > ...or with spaces between arrows.\r\n\r\n\r\n## Lists\r\n\r\nUnordered\r\n\r\n+ Create a list by starting a line with `+`, `-`, or `*`\r\n+ Sub-lists are made by indenting 2 spaces:\r\n  - Marker character change forces new list start:\r\n    * Ac tristique libero volutpat at\r\n    + Facilisis in pretium nisl aliquet\r\n    - Nulla volutpat aliquam velit\r\n+ Very easy!\r\n\r\nOrdered\r\n\r\n1. Lorem ipsum dolor sit amet\r\n2. Consectetur adipiscing elit\r\n3. Integer molestie lorem at massa\r\n\r\n\r\n1. You can use sequential numbers...\r\n1. ...or keep all the numbers as `1.`\r\n\r\nStart numbering with offset:\r\n\r\n57. foo\r\n1. bar\r\n\r\n\r\n## Code\r\n\r\nInline `code`\r\n\r\nIndented code\r\n\r\n    // Some comments\r\n    line 1 of code\r\n    line 2 of code\r\n    line 3 of code\r\n\r\n\r\nBlock code \"fences\"\r\n\r\n```\r\nSample text here...\r\n```\r\n\r\nSyntax highlighting\r\n\r\n``` js\r\nvar foo = function (bar) {\r\n  return bar++;\r\n};\r\n\r\nconsole.log(foo(5));\r\n```\r\n\r\n## Tables\r\n\r\n| Option | Description |\r\n| ------ | ----------- |\r\n| data   | path to data files to supply the data that will be passed into templates. |\r\n| engine | engine to be used for processing templates. Handlebars is the default. |\r\n| ext    | extension to be used for dest files. |\r\n\r\nRight aligned columns\r\n\r\n| Option | Description |\r\n| ------:| -----------:|\r\n| data   | path to data files to supply the data that will be passed into templates. |\r\n| engine | engine to be used for processing templates. Handlebars is the default. |\r\n| ext    | extension to be used for dest files. |\r\n\r\n\r\n## Links\r\n\r\n[link text](http://dev.nodeca.com)\r\n\r\n[link with title](http://nodeca.github.io/pica/demo/ \"title text!\")\r\n\r\nAutoconverted link https://github.com/nodeca/pica (enable linkify to see)\r\n\r\n\r\n## Images\r\n\r\n![Minion](https://octodex.github.com/images/minion.png)\r\n![Stormtroopocat](https://octodex.github.com/images/stormtroopocat.jpg \"The Stormtroopocat\")\r\n\r\nLike links, Images also have a footnote style syntax\r\n\r\n![Alt text][id]\r\n\r\nWith a reference later in the document defining the URL location:\r\n\r\n[id]: https://octodex.github.com/images/dojocat.jpg  \"The Dojocat\"\r\n\r\n\r\n## Plugins\r\n\r\nThe killer feature of `markdown-it` is very effective support of\r\n[syntax plugins](https://www.npmjs.org/browse/keyword/markdown-it-plugin).\r\n\r\n\r\n### [Emojies](https://github.com/markdown-it/markdown-it-emoji)\r\n\r\n> Classic markup: :wink: :cry: :laughing: :yum:\r\n>\r\n> Shortcuts (emoticons): :-) :-( 8-) ;)\r\n\r\nsee [how to change output](https://github.com/markdown-it/markdown-it-emoji#change-output) with twemoji.\r\n\r\n\r\n### [Subscript](https://github.com/markdown-it/markdown-it-sub) / [Superscript](https://github.com/markdown-it/markdown-it-sup)\r\n\r\n- 19^th^\r\n- H~2~O\r\n\r\n\r\n### [\\<ins>](https://github.com/markdown-it/markdown-it-ins)\r\n\r\n++Inserted text++\r\n\r\n\r\n### [\\<mark>](https://github.com/markdown-it/markdown-it-mark)\r\n\r\n==Marked text==\r\n\r\n\r\n### [Footnotes](https://github.com/markdown-it/markdown-it-footnote)\r\n\r\nFootnote 1 link[^first].\r\n\r\nFootnote 2 link[^second].\r\n\r\nInline footnote^[Text of inline footnote] definition.\r\n\r\nDuplicated footnote reference[^second].\r\n\r\n[^first]: Footnote **can have markup**\r\n\r\n    and multiple paragraphs.\r\n\r\n[^second]: Footnote text.\r\n\r\n\r\n### [Definition lists](https://github.com/markdown-it/markdown-it-deflist)\r\n\r\nTerm 1\r\n\r\n:   Definition 1\r\nwith lazy continuation.\r\n\r\nTerm 2 with *inline markup*\r\n\r\n:   Definition 2\r\n\r\n        { some code, part of Definition 2 }\r\n\r\n    Third paragraph of definition 2.\r\n\r\n_Compact style:_\r\n\r\nTerm 1\r\n  ~ Definition 1\r\n\r\nTerm 2\r\n  ~ Definition 2a\r\n  ~ Definition 2b\r\n\r\n\r\n### [Abbreviations](https://github.com/markdown-it/markdown-it-abbr)\r\n\r\nThis is HTML abbreviation example.\r\n\r\nIt converts \"HTML\", but keep intact partial entries like \"xxxHTMLyyy\" and so on.\r\n\r\n*[HTML]: Hyper Text Markup Language\r\n\r\n### [Custom containers](https://github.com/markdown-it/markdown-it-container)\r\n\r\n::: warning\r\n*here be dragons*\r\n:::', '2024-07-11 07:44:16.201000');

-- --------------------------------------------------------

--
-- 資料表結構 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-07-05 08:17:01.518000', '1', '何信佑', 1, '[{\"added\": {}}]', 8, 1),
(2, '2024-07-05 08:19:58.630000', '1', '12345', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-07-05 08:20:41.307000', '1', '12345', 3, '', 7, 1),
(4, '2024-07-05 08:23:26.470000', '2', 'ㄘㄜˋ ㄕˋ', 1, '[{\"added\": {}}]', 7, 1),
(5, '2024-07-05 08:23:59.383000', '2', 'ㄘㄜˋ ㄕˋ', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 1),
(6, '2024-07-05 08:24:06.861000', '2', 'ㄘㄜˋ ㄕˋ', 2, '[]', 7, 1),
(7, '2024-07-05 08:24:51.407000', '3', 'IVOT', 1, '[{\"added\": {}}]', 7, 1),
(8, '2024-07-05 08:25:13.325000', '4', 'Lorum', 1, '[{\"added\": {}}]', 7, 1),
(9, '2024-07-05 08:25:37.245000', '5', '連外北因且老苗休間主見爸北室胡', 1, '[{\"added\": {}}]', 7, 1),
(10, '2024-07-05 08:26:12.649000', '6', '夏目漱石', 1, '[{\"added\": {}}]', 7, 1),
(11, '2024-07-05 08:28:17.056000', '6', '観情外はかぞう計就とりぼ勝画ょ日禁', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Content\"]}}]', 7, 1),
(12, '2024-07-05 08:29:35.767000', '2', 'ㄘㄜˋ ㄕˋ', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(13, '2024-07-05 08:29:46.895000', '4', 'Lorum', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(14, '2024-07-05 08:30:04.167000', '4', 'Lorum', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 1),
(15, '2024-07-05 08:30:51.797000', '3', 'Trình tạo văn bản giả Lorem Ipsum Online', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Content\"]}}]', 7, 1),
(16, '2024-07-05 08:30:58.305000', '2', 'ㄘㄜˋ ㄕˋ', 2, '[]', 7, 1),
(17, '2024-07-05 08:32:13.549000', '7', '太水虎青自給飛想們', 1, '[{\"added\": {}}]', 7, 1),
(18, '2024-07-05 08:37:17.032000', '7', '太水虎青自給飛想們', 2, '[]', 7, 1),
(19, '2024-07-05 08:37:29.078000', '8', '為甚麼要考試', 1, '[{\"added\": {}}]', 7, 1),
(20, '2024-07-11 07:13:04.853000', '8', '為甚麼要考試', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(21, '2024-07-11 07:24:38.731000', '8', '為甚麼要考試', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(22, '2024-07-11 07:35:03.019000', '9', 'Doge', 1, '[{\"added\": {}}]', 7, 1),
(23, '2024-07-11 07:44:16.228000', '10', 'Markdown test', 1, '[{\"added\": {}}]', 7, 1),
(24, '2024-07-18 10:32:19.622000', '7', 'Celest', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Content\"]}}]', 7, 1),
(25, '2024-07-18 10:32:40.699000', '6', 'Mitski', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Content\"]}}]', 7, 1),
(26, '2024-07-18 10:32:59.819000', '8', 'Clairo', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Content\"]}}]', 7, 1),
(27, '2024-07-18 10:33:22.396000', '5', 'Japanese Breakfast', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Content\"]}}]', 7, 1),
(28, '2024-07-18 10:33:47.176000', '3', 'Men I Trust', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Content\"]}}]', 7, 1),
(29, '2024-07-18 10:34:08.660000', '2', 'ㄘㄜˋ ㄕˋ', 3, '', 7, 1),
(30, '2024-07-18 10:34:22.065000', '4', 'Lorum Ipsum', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 7, 1),
(31, '2024-07-18 11:40:30.430000', '8', 'Clairo', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(32, '2024-07-18 11:42:11.531000', '7', 'Celest', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(33, '2024-07-18 11:43:54.821000', '5', 'Japanese Breakfast', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(34, '2024-07-18 12:13:23.826000', '8', 'Clairo', 2, '[]', 7, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(9, 'admin_interface', 'theme'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'blog_post', 'guestbook'),
(7, 'blog_post', 'post'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- 資料表結構 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-08-02 01:28:16.660530'),
(2, 'auth', '0001_initial', '2024-08-02 01:28:16.864879'),
(3, 'admin', '0001_initial', '2024-08-02 01:28:16.913884'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-08-02 01:28:16.920876'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-08-02 01:28:16.926876'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-08-02 01:28:16.964885'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-08-02 01:28:16.988873'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-08-02 01:28:16.996872'),
(9, 'auth', '0004_alter_user_username_opts', '2024-08-02 01:28:17.001872'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-08-02 01:28:17.037876'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-08-02 01:28:17.039913'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-08-02 01:28:17.046874'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-08-02 01:28:17.055883'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-08-02 01:28:17.063880'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-08-02 01:28:17.071037'),
(16, 'auth', '0011_update_proxy_permissions', '2024-08-02 01:28:17.076875'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-08-02 01:28:17.084902'),
(18, 'blog_post', '0001_initial', '2024-08-02 01:28:17.090882'),
(19, 'blog_post', '0002_guestbook', '2024-08-02 01:28:17.095875'),
(20, 'blog_post', '0003_remove_guestbook_title', '2024-08-02 01:28:17.104873'),
(21, 'sessions', '0001_initial', '2024-08-02 01:28:17.120902');

-- --------------------------------------------------------

--
-- 資料表結構 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7vfuddspjueimg6e5sasqivpnnvtc9ic', '.eJxVjEEOwiAQRe_C2pDSAcq4dO8ZCDCDVA0kpV0Z765NutDtf-_9l_BhW4vfOi9-JnEWSpx-txjSg-sO6B7qrcnU6rrMUe6KPGiX10b8vBzu30EJvXxrZFB6IEdgxoTRoUMg7Uay1hhtp0kb5CEnk51FpgQmKcuQs45RAWXx_gDBWTee:1sUOH2:6GJ_6SVMFinOn8cSAzP6HPj05_a7e0Q4_lg8HFH4_3E', '2024-08-01 10:22:08.737000'),
('8u8eziv4ghvf2tg2spbo5cm38ug6ujr0', '.eJxVjMsOwiAQRf-FtSFQHB4u3fcbyMwAUjU0Ke3K-O_apAvd3nPOfYmI21rj1vMSpyQuQovT70bIj9x2kO7YbrPkua3LRHJX5EG7HOeUn9fD_Tuo2Ou3VoO3xpFLqIrDDOSUMU6lgXUwnoMu1nMhcCGQ15bPYCFbzQDE5G0Q7w_M9zda:1sQjFQ:z8WZk7dmmHbYxN6OHpbbz0NzbO14YmzJvVm2dOMT6lo', '2024-07-22 07:57:20.854000'),
('9invxvnhvb8gez10t1gfs6d4xikim7il', '.eJxVjMsOwiAQRf-FtSFQHB4u3fcbyMwAUjU0Ke3K-O_apAvd3nPOfYmI21rj1vMSpyQuQovT70bIj9x2kO7YbrPkua3LRHJX5EG7HOeUn9fD_Tuo2Ou3VoO3xpFLqIrDDOSUMU6lgXUwnoMu1nMhcCGQ15bPYCFbzQDE5G0Q7w_M9zda:1sPdpg:Y_f0TiMam8lOi25Qy0bbi1tdY96bTeessQStuhGt6JA', '2024-07-19 07:58:16.998000'),
('epqqkh5van6w51pz78lmmnizh0h36kdj', '.eJxVjEEOwiAQRe_C2pDSAcq4dO8ZCDCDVA0kpV0Z765NutDtf-_9l_BhW4vfOi9-JnEWSpx-txjSg-sO6B7qrcnU6rrMUe6KPGiX10b8vBzu30EJvXxrZFB6IEdgxoTRoUMg7Uay1hhtp0kb5CEnk51FpgQmKcuQs45RAWXx_gDBWTee:1sUPlQ:LYp9HxYkSR_i9HBCXFkGYSi_WOmokdYSiZcUHbKq8rA', '2024-08-01 11:57:36.618000');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 資料表索引 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- 資料表索引 `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 資料表索引 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- 資料表索引 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `blog_post_guestbook`
--
ALTER TABLE `blog_post_guestbook`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `blog_post_post`
--
ALTER TABLE `blog_post_post`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- 資料表索引 `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- 資料表索引 `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `blog_post_guestbook`
--
ALTER TABLE `blog_post_guestbook`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `blog_post_post`
--
ALTER TABLE `blog_post_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 資料表的限制式 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 資料表的限制式 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
