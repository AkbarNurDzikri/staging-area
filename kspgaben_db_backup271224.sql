-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: kspgaben_db
-- ------------------------------------------------------
-- Server version	8.0.40-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Cicilan`
--

DROP TABLE IF EXISTS `Cicilan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cicilan` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinjamanId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tglBayar` date NOT NULL,
  `metodePembayaran` enum('Cash','Transfer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlahBayar` int NOT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `Cicilan_pinjamanId_fkey` (`pinjamanId`),
  CONSTRAINT `Cicilan_pinjamanId_fkey` FOREIGN KEY (`pinjamanId`) REFERENCES `Pinjaman` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cicilan`
--

LOCK TABLES `Cicilan` WRITE;
/*!40000 ALTER TABLE `Cicilan` DISABLE KEYS */;
INSERT INTO `Cicilan` VALUES ('008a90bf-b91a-4e9d-b946-49eab9aee752','e364bf3c-caf5-45e1-97f3-e55c9a07cbc3','2024-03-05','Transfer',807000,'Sesuai Dengan Kesepakatan','2024-03-06 11:10:40.723','2024-03-06 11:10:40.723'),('01121ab7-7f4d-4327-8af2-02b62115b60a','dbb3217d-8d31-4c9f-97e9-009b9efd44a2','2024-09-05','Transfer',510000,'Sesuai Dengan Kesepakatan','2024-09-27 07:09:09.095','2024-09-27 07:09:09.095'),('022570a5-3b7d-427a-8558-e327218e1bd3','5a85c886-5b12-41b8-959e-4f7c4a5cf758','2024-07-20','Cash',800000,'Sesuai Dengan Kesepakatan','2024-07-20 09:34:07.209','2024-07-20 09:34:07.209'),('05f166b9-17c5-4da3-8b43-5ccd94b8084b','829b09f6-5409-413f-8e2e-f06019d9a357','2024-10-28','Transfer',852000,'Sesuai Dengan Kesepakatan','2024-12-02 06:14:52.312','2024-12-02 06:14:52.312'),('06596b35-153c-4dcf-a3e3-6da0b4364ec7','8b07358d-f582-4c55-addd-ec4a03f71135','2024-08-27','Cash',900000,'Sesuai Dengan Kesepakatan','2024-09-27 06:51:15.791','2024-09-27 06:51:15.791'),('06b1f9fd-6576-4875-91fc-d2b95b04bf97','3d3b147d-1611-4c43-9761-30910138384c','2024-08-22','Transfer',1360000,'Sesuai Dengan Kesepakatan','2024-08-23 10:41:11.122','2024-08-23 10:41:11.122'),('0b4d8e1d-af17-4c10-ae3e-811f4242190f','8b07358d-f582-4c55-addd-ec4a03f71135','2024-09-24','Cash',900000,'Sesuai Dengan Kesepakatan','2024-09-27 06:50:30.987','2024-09-27 06:50:30.987'),('0ed7910d-bf01-4c99-89e4-23baa20dc27e','d7919d5f-75e1-46b1-8b35-24baa6769dc6','2024-07-05','Transfer',1350000,'Sesuai Dengan Kesepakatan','2024-07-05 03:09:03.979','2024-07-05 03:09:03.979'),('12b1b313-8dd1-4066-9927-371847d717c3','d7919d5f-75e1-46b1-8b35-24baa6769dc6','2024-04-05','Transfer',1350000,'Sesuai Dengan Kesepakatan','2024-04-29 05:43:16.102','2024-04-29 05:43:16.102'),('14a7e1fd-aba9-4ccc-a266-7ac20333f1ac','2ee15f86-04a6-446b-9e27-00959ad09e36','2024-08-15','Transfer',850000,'Sesuai Dengan Data- Data','2024-08-19 03:45:45.233','2024-08-19 03:45:45.233'),('16fbce1d-62da-41b2-9bc5-e23058c3359d','091cf09c-fd46-4d81-ac22-967a969076f1','2024-08-15','Cash',2025000,'Sesuai Dengan Kesepakatan','2024-08-15 09:05:43.825','2024-08-15 09:05:43.825'),('1ffbf0aa-cc70-4fb2-b8be-b8f110deafda','575cc7de-362d-4efe-97bf-03a13387c90a','2024-10-05','Transfer',1420000,'Sesuai Dengan Kesepakatan','2024-10-07 05:58:26.114','2024-10-07 05:58:26.114'),('22e44d92-17bb-41f2-91a8-c63b419f9456','e9ee6ccf-6187-4dac-ab4d-033be9fbf10f','2024-11-15','Cash',3000000,'Sesuai Dengan Kesepakatan','2024-12-02 05:40:46.467','2024-12-02 05:40:46.467'),('23544b41-7c82-415b-a7dd-f2ede6640fbc','e3b64184-78ef-4e82-a21e-4bc066197115','2024-10-26','Cash',610000,'Sesuai Dengan Kesepakatan','2024-11-05 03:36:33.902','2024-11-05 03:36:33.902'),('256c4417-96cc-49a2-ac70-6eee23a81c3f','7dac67c8-f8f0-4a68-adff-00e3dfdde7ac','2024-05-07','Transfer',540000,'sesuai dengan kesepakatan','2024-05-10 09:50:31.935','2024-05-10 09:50:31.935'),('26aa8a2b-6eba-4571-a500-51980a78d81a','8b07358d-f582-4c55-addd-ec4a03f71135','2024-07-25','Transfer',900000,'Sesuai Dengan Kesepakatan','2024-07-26 04:42:59.033','2024-07-26 04:42:59.033'),('29c22cf3-266e-4b57-90b2-6a1c99853604','5a85c886-5b12-41b8-959e-4f7c4a5cf758','2024-07-20','Cash',800000,'Sesuai Dengan Kesepakatan','2024-07-20 09:32:30.358','2024-07-20 09:32:30.358'),('304004fa-b706-468a-b000-c745c21b3d14','091cf09c-fd46-4d81-ac22-967a969076f1','2024-02-26','Transfer',2025000,'Sesuai Dengan Kesepakatan','2024-02-26 09:26:29.760','2024-02-26 09:26:29.760'),('3ae53f7c-acba-4c7b-a0f7-c6e4679e3dc2','aac54303-d8fa-40de-8018-a0781ae7ace8','2024-08-28','Transfer',800000,'Sesuai Dengan Kesepakatan','2024-10-07 06:02:07.228','2024-10-07 06:02:07.228'),('3c0826a0-a013-4888-a510-7221a3a8d1bd','aac54303-d8fa-40de-8018-a0781ae7ace8','2024-06-29','Transfer',800000,'Sesuai Dengan Kesepakatan\n','2024-07-02 03:10:55.089','2024-07-02 03:10:55.089'),('3df6ea78-4e05-4c10-a03e-2070e89b78bd','5a85c886-5b12-41b8-959e-4f7c4a5cf758','2024-03-01','Cash',800000,'Sesuai Dengan Kesepakatan','2024-03-04 01:49:38.892','2024-03-04 01:49:38.892'),('40300d7a-51f3-4c6c-a98c-a7d895153486','1865827f-d2a7-4bf2-b06b-86b7d859574d','2024-07-25','Transfer',1100000,'Sesuai Dengan Kesepakatan','2024-07-26 04:42:30.025','2024-07-26 04:42:30.025'),('404f1b3d-55a7-4b58-8c3d-09038688a483','df5f7840-e0e3-49ef-9582-87d8813fc7d5','2024-04-21','Transfer',900000,'Sesuai Dengan Kesepakatan','2024-05-28 05:22:34.817','2024-05-28 05:22:34.817'),('45074788-dfde-42bb-93fd-412e4ad44781','5473b6c6-7244-4fdb-931e-8a48aec84535','2024-05-06','Cash',810000,'Sesuai Dengan Kesepakatan','2024-05-06 13:38:59.242','2024-05-06 13:38:59.242'),('4a71c4f4-82a5-46d0-96c7-49e0df49708c','1865827f-d2a7-4bf2-b06b-86b7d859574d','2024-08-25','Transfer',1100000,'Sesuai Dengan Kesepakatan','2024-08-26 04:36:12.946','2024-08-26 04:36:12.946'),('4b27d544-a4ff-4339-8a27-7568147461f3','2ee15f86-04a6-446b-9e27-00959ad09e36','2024-06-10','Transfer',850000,'Sesuai Dengan Kesepakatan','2024-06-11 03:24:06.266','2024-06-11 03:24:06.266'),('4bf800f2-6a4f-4cc4-a8ed-d64ae66af7a3','5473b6c6-7244-4fdb-931e-8a48aec84535','2024-04-04','Transfer',810000,'Sesuai Dengan Kesepakatan','2024-04-20 02:38:08.331','2024-04-20 02:38:08.331'),('50c2b12d-1ba4-404c-8764-4fbfb42d785c','e3b64184-78ef-4e82-a21e-4bc066197115','2024-10-05','Cash',810000,'Sesuai Dengan Kesepakatan','2024-10-23 04:13:28.769','2024-10-23 04:13:28.769'),('539be4f1-760b-4538-a6b2-23dcb364dea7','2ee15f86-04a6-446b-9e27-00959ad09e36','2024-09-25','Transfer',850000,'Sesuai dengan kesepakatan','2024-12-02 05:38:47.228','2024-12-02 05:38:47.228'),('58b84956-d770-4ef0-abaa-387e3d056421','5a85c886-5b12-41b8-959e-4f7c4a5cf758','2024-06-08','Cash',800000,'Sesuai Dengan Kesepakatan','2024-06-10 11:22:11.172','2024-06-10 11:22:11.172'),('5ba06e48-16b8-48bb-b2cf-c3f29e1e6f79','dbb3217d-8d31-4c9f-97e9-009b9efd44a2','2024-07-05','Transfer',510000,'Sesuai Dengan Kesepakatan','2024-07-05 06:46:35.673','2024-07-05 06:46:35.673'),('5d563ff9-e738-46ce-86f9-c701ea78d968','d7919d5f-75e1-46b1-8b35-24baa6769dc6','2024-03-06','Transfer',1350000,'Sesuai Dengan Kesepakatan','2024-03-06 11:12:45.852','2024-03-06 11:12:45.852'),('5f22180e-0e08-4861-86f4-21c2df15fbe4','f95b3c5f-57bb-4322-b505-cdb0d7fc145e','2024-09-24','Transfer',1690000,'Sesuai Dengan Kesepakatan','2024-09-24 07:08:27.156','2024-09-24 07:08:27.156'),('61755a87-f9d5-41ec-b869-77c4dcf77183','091cf09c-fd46-4d81-ac22-967a969076f1','2024-09-13','Cash',2025000,'Sesuai Dengan Kesepakatan','2024-09-14 10:16:33.583','2024-09-14 10:16:33.583'),('62e6a8c1-d18a-4609-86bf-1950ad39ccfe','5a85c886-5b12-41b8-959e-4f7c4a5cf758','2024-07-20','Cash',800000,'Sesuai Dengan Kesepakatan','2024-07-20 09:33:06.101','2024-07-20 09:33:06.101'),('6f1483b8-cd0f-42bb-8bda-3d98d88d7e92','1865827f-d2a7-4bf2-b06b-86b7d859574d','2024-09-25','Transfer',1100000,'Sesuai Dengan Kesepakatan','2024-09-27 07:11:06.783','2024-09-27 07:11:06.783'),('71dc451b-1443-47a3-9cb5-e9c09e86e5d8','dbb3217d-8d31-4c9f-97e9-009b9efd44a2','2024-06-02','Transfer',510000,'Sesuai Dengan Kesepakatan','2024-06-03 04:47:03.404','2024-06-03 04:47:03.404'),('73ed2230-d8ca-4157-b7ef-80ffb4222424','091cf09c-fd46-4d81-ac22-967a969076f1','2024-10-22','Cash',2025000,'Sesuai  Dengan Kesepakatan','2024-10-23 04:09:33.034','2024-10-23 04:09:33.034'),('770c3044-fc5a-4df0-9d0a-5ee8edd01877','df5f7840-e0e3-49ef-9582-87d8813fc7d5','2024-05-27','Cash',900000,'Sesuai Dengan Kesepakatan','2024-05-29 05:30:43.697','2024-05-29 05:30:43.697'),('785a9499-4bd7-4db5-a658-d350110b8902','df5f7840-e0e3-49ef-9582-87d8813fc7d5','2024-03-20','Transfer',900000,'Sesuai Dengan Kesepakatan','2024-05-28 05:21:56.510','2024-05-28 05:21:56.510'),('78964053-0ae1-4491-8f93-e3c6aebddbae','e364bf3c-caf5-45e1-97f3-e55c9a07cbc3','2024-04-30','Cash',807000,'Sesuai Dengan Kesepakatan','2024-05-06 06:28:56.459','2024-05-06 06:28:56.459'),('7ca65480-e507-46cb-b91e-a1d9d5a53c65','df5f7840-e0e3-49ef-9582-87d8813fc7d5','2024-02-19','Transfer',900000,'Sesuai Dengan Kesepakatan','2024-05-28 05:21:18.832','2024-05-28 05:21:18.832'),('7caffae4-7548-4ef3-a574-d1c79193d097','aac54303-d8fa-40de-8018-a0781ae7ace8','2024-04-22','Transfer',800000,'Sesuai Dengan Kesepakatan','2024-04-24 04:58:21.353','2024-04-24 04:58:21.353'),('804b6c83-2f8c-4841-809b-f435777ebd55','3d3b147d-1611-4c43-9761-30910138384c','2024-11-22','Transfer',1360000,'Sesuai Dengan Kesepakatan','2024-12-02 05:39:53.752','2024-12-02 05:39:53.752'),('836555c6-dc92-4060-a686-1876479675f8','5473b6c6-7244-4fdb-931e-8a48aec84535','2024-06-04','Transfer',810000,'Sesuai Dengan Kesepakatan','2024-06-04 09:33:38.671','2024-06-04 09:33:38.671'),('86c80bb2-b906-4a66-ac9a-d8d80797ce4b','aac54303-d8fa-40de-8018-a0781ae7ace8','2024-07-28','Transfer',800000,'Sesuai Dengan Kesepakatan','2024-07-30 10:28:17.392','2024-07-30 10:28:17.392'),('884bc92a-f858-40bd-bd6f-2a71f356bf91','aac54303-d8fa-40de-8018-a0781ae7ace8','2024-09-15','Transfer',800000,'Sesuai Dengan Kesepakatan','2024-09-18 08:21:07.711','2024-09-18 08:21:07.711'),('8ba18131-efd1-4e15-a24e-555cdf34b718','091cf09c-fd46-4d81-ac22-967a969076f1','2024-05-15','Cash',2025000,'Sesuai Dengan Kesepakatan','2024-05-15 09:01:19.668','2024-05-15 09:01:19.668'),('8d388fa3-19e2-4c0f-83c2-ad9453371789','5a85c886-5b12-41b8-959e-4f7c4a5cf758','2024-03-27','Cash',800000,'Sesuai Dengan Kesepakatan','2024-04-24 05:09:17.571','2024-04-24 05:09:17.571'),('8ea6d394-5719-49be-abee-5aa7fd63d795','3d3b147d-1611-4c43-9761-30910138384c','2024-09-22','Transfer',1360000,'Sesuai Denagan Kesepakatan\n','2024-09-23 07:14:56.147','2024-09-23 07:14:56.147'),('9e1425a7-32fe-46f1-a010-19819c377eae','091cf09c-fd46-4d81-ac22-967a969076f1','2024-07-16','Cash',2025000,'Sesuai Dengan Kesepakatan','2024-07-17 09:56:44.825','2024-07-17 09:56:44.825'),('9ec5cb05-6f14-460d-89a7-f9c37d04cfbc','aac54303-d8fa-40de-8018-a0781ae7ace8','2024-05-26','Transfer',800000,'Sesuai Dengan Kesepakatan','2024-05-28 02:35:09.745','2024-05-28 02:35:09.745'),('9f0d2784-8646-4ce4-9c54-39766aba2533','091cf09c-fd46-4d81-ac22-967a969076f1','2024-10-22','Cash',2025000,'Sesuai Dengan Kesepakatan','2024-10-23 04:09:55.989','2024-10-23 04:09:55.989'),('9f852883-a2bf-44c4-a909-f066ddbd57ca','6ead53dc-f168-4320-8875-97f3efe21882','2024-10-31','Cash',1775000,'Sesuai Dengan Kesepakatan','2024-11-05 03:32:10.038','2024-11-05 03:32:10.038'),('a5f5a701-00fd-487c-a617-39757371796f','7dac67c8-f8f0-4a68-adff-00e3dfdde7ac','2024-05-07','Transfer',540000,'sesuai dengan kesepakatan','2024-05-10 09:49:50.678','2024-05-10 09:49:50.678'),('a632cc74-d345-4ec5-bd0a-7ca2c73858a0','5a85c886-5b12-41b8-959e-4f7c4a5cf758','2024-05-02','Cash',800000,'Sesuai Dengan Kesepakatan','2024-05-06 06:26:52.122','2024-05-06 06:26:52.122'),('a72de627-4578-4e39-8f86-7622199a2eb6','575cc7de-362d-4efe-97bf-03a13387c90a','2024-09-05','Cash',1420000,'Sesuai Dengan Kesepakatan','2024-09-09 03:38:19.032','2024-09-09 03:38:19.032'),('a7eb17b1-9bad-46cf-beb6-fec00c839049','091cf09c-fd46-4d81-ac22-967a969076f1','2024-06-15','Cash',2025000,'Sesuai Dengan Kesepakatan','2024-06-15 02:34:59.254','2024-06-15 02:34:59.254'),('ad8137be-7bbc-48b5-874f-0a2224fc5205','5a85c886-5b12-41b8-959e-4f7c4a5cf758','2024-07-20','Cash',800000,'Sesuai Dengan Kesepakatan','2024-07-20 09:33:43.456','2024-07-20 09:33:43.456'),('ad907986-f056-47fe-8485-99ab8e1b807a','575cc7de-362d-4efe-97bf-03a13387c90a','2024-11-05','Cash',1540000,'Sesuai Dengan Kesepakatan','2024-12-02 06:13:07.634','2024-12-02 06:13:07.634'),('af62dddd-c2ce-4595-987c-476ed38f2435','3d3b147d-1611-4c43-9761-30910138384c','2024-06-22','Transfer',1360000,'Sesuai Dengan Kesepakatan','2024-06-25 04:21:44.043','2024-06-25 04:21:44.043'),('bad4b444-2f48-4506-940c-75ddd4984abc','e3b64184-78ef-4e82-a21e-4bc066197115','2024-10-14','Cash',810000,'Sesuai Dengan Kesepakatan','2024-10-23 04:14:33.070','2024-10-23 04:14:33.070'),('c25c6606-cc61-4cbd-bbf8-d3022dd3dfb5','3d3b147d-1611-4c43-9761-30910138384c','2024-07-22','Transfer',1360000,'Sesuai Dengan Kesepakatan','2024-07-23 10:02:42.418','2024-07-23 10:02:42.418'),('c2ca50c2-175f-4bbe-8687-4907ab7aac7e','df5f7840-e0e3-49ef-9582-87d8813fc7d5','2024-05-27','Transfer',900000,'Sesuai Dengan Kesepakatan','2024-05-28 05:23:36.390','2024-05-28 05:23:36.390'),('c383078d-3921-4706-b19d-4fdb5e02666c','aac54303-d8fa-40de-8018-a0781ae7ace8','2024-03-29','Transfer',800000,'Sesuai Dengan Kesepakatan','2024-04-20 02:37:35.275','2024-04-20 02:37:35.275'),('c4f17039-058f-4400-8761-e4ad728fdde1','df5f7840-e0e3-49ef-9582-87d8813fc7d5','2024-05-23','Transfer',900000,'Sesuai Dengan Kesepakatan','2024-05-28 05:23:16.339','2024-05-28 05:23:16.339'),('cb99b218-1f94-4781-a970-29e08c714afc','7dac67c8-f8f0-4a68-adff-00e3dfdde7ac','2024-04-07','Transfer',540000,'sesuai dengan kesepakatan','2024-05-10 09:49:27.512','2024-05-10 09:49:27.512'),('d077535e-d795-4344-910c-512911ed3aec','d7919d5f-75e1-46b1-8b35-24baa6769dc6','2024-05-05','Transfer',1350000,'Sesuai Dengan Kesepakatan','2024-05-06 06:25:17.265','2024-05-06 06:25:17.265'),('d27e104b-3123-4206-8fca-a260f61a6b1c','e364bf3c-caf5-45e1-97f3-e55c9a07cbc3','2024-05-31','Transfer',807000,'Sesuai Dengan Kesepakatan','2024-06-01 08:48:50.828','2024-06-01 08:48:50.828'),('d530d231-07f9-4de7-937a-14f2fa9b6934','7dac67c8-f8f0-4a68-adff-00e3dfdde7ac','2024-03-26','Transfer',540000,'sesuai dengan kesepakatan','2024-05-10 09:48:59.241','2024-05-10 09:48:59.241'),('d7ee6c9e-2834-4311-b47b-60509cf8e6bf','aac54303-d8fa-40de-8018-a0781ae7ace8','2024-09-15','Transfer',800000,'Sesuai Dengan Kesepakatan','2024-09-18 08:21:36.837','2024-09-18 08:21:36.837'),('dae74a49-95dc-4da9-8f1d-bff9ec06739f','e364bf3c-caf5-45e1-97f3-e55c9a07cbc3','2024-03-28','Transfer',807000,'Sesuai Dengan Kesepakatan','2024-04-20 02:33:05.674','2024-04-20 02:33:05.674'),('dc1c03ab-6687-4952-9edf-abc1a25c0e29','8b07358d-f582-4c55-addd-ec4a03f71135','2024-09-27','Cash',900000,'Sesuai Dengan Kesepakatan','2024-09-27 06:49:07.551','2024-09-27 06:49:07.551'),('e11c5b1a-e4c9-4580-a2cb-9545c66d7d80','8b07358d-f582-4c55-addd-ec4a03f71135','2024-06-25','Transfer',900000,'Sesuai Dengan Kesepakatan','2024-06-26 08:39:13.673','2024-06-26 08:39:13.673'),('e16fbaca-c005-4060-a28b-ea28e23e97af','6ead53dc-f168-4320-8875-97f3efe21882','2024-09-05','Cash',1775000,'Sesuai Dengan Kesepakatan','2024-09-09 03:38:54.778','2024-09-09 03:38:54.778'),('e2d00021-92b0-47e6-8cd9-0ee37109dfa2','1865827f-d2a7-4bf2-b06b-86b7d859574d','2024-06-24','Transfer',1100000,'Sesuai Dengan Kesepakatan','2024-06-25 04:22:19.798','2024-06-25 04:22:19.798'),('e3de765c-750c-4679-9da6-e9b0ad1a313f','e3b64184-78ef-4e82-a21e-4bc066197115','2024-10-14','Cash',1820000,'Sesuai Dengan Kesepakatan','2024-10-19 10:45:30.298','2024-10-19 10:45:30.298'),('e61e5efb-b8ed-44bc-9b8a-c34eb16fd043','7dac67c8-f8f0-4a68-adff-00e3dfdde7ac','2024-02-26','Transfer',540000,'sesuai dengan kesepakatan','2024-05-10 09:48:35.517','2024-05-10 09:48:35.517'),('e6c27c16-ebc8-45d3-bb59-f13c6cba3d8b','1865827f-d2a7-4bf2-b06b-86b7d859574d','2024-11-25','Transfer',1100000,'Sesuai Dengan Kesepakatan','2024-12-02 05:41:16.173','2024-12-02 05:41:16.173'),('e8c15111-3219-4210-a2c2-890bbe5f4f1b','65a692bc-f4a3-45cf-9c69-c4defe51868f','2024-10-05','Transfer',1775000,'Sesuai Dengan Kesepakatan','2024-10-07 05:58:55.302','2024-10-07 05:58:55.302'),('e9bf926c-3084-404c-ab26-1e4466cd5e27','091cf09c-fd46-4d81-ac22-967a969076f1','2024-10-15','Cash',2025000,'Sesuai Dengan Kesepakatan','2024-10-19 10:46:05.689','2024-10-19 10:46:05.689'),('ea1ce8da-db2d-4600-b9c3-8ef8a65704d1','dbb3217d-8d31-4c9f-97e9-009b9efd44a2','2024-09-05','Transfer',510000,'Sesuai Dengan Kesepakatan','2024-09-09 03:39:58.530','2024-09-09 03:39:58.530'),('ea8fa644-950f-4648-b890-c5e3d2d62486','2ee15f86-04a6-446b-9e27-00959ad09e36','2024-07-09','Transfer',850000,'Sesuai Dengan Kesepakatan','2024-07-23 10:08:52.621','2024-07-23 10:08:52.621'),('eec43c1e-fc75-43b8-8e55-a505bae77576','091cf09c-fd46-4d81-ac22-967a969076f1','2024-03-26','Transfer',2025000,'Sesuai Dengan Kesepakatan','2024-04-20 02:31:58.850','2024-04-20 02:31:58.850'),('f4d96684-3a2b-4831-a4a6-364a0a335127','d7919d5f-75e1-46b1-8b35-24baa6769dc6','2024-06-04','Transfer',1350000,'Sesuai Dengan Kesepakatan ','2024-06-05 05:43:00.181','2024-06-05 05:43:00.181'),('f5bcdf4d-c9c7-4730-8485-b14ad60dca9b','5473b6c6-7244-4fdb-931e-8a48aec84535','2024-07-03','Cash',810000,'Sesuai Dengan Kesepakatan','2024-07-03 09:34:15.008','2024-07-03 09:34:15.008'),('f6107705-9ee0-421e-9036-81df7f3290a9','5473b6c6-7244-4fdb-931e-8a48aec84535','2024-08-04','Cash',810000,'Sesuai Dengan Kesepakatan','2024-08-13 09:30:50.136','2024-08-13 09:30:50.136');
/*!40000 ALTER TABLE `Cicilan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dokumen`
--

DROP TABLE IF EXISTS `Dokumen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dokumen` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nasabahId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaDokumen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `asli` tinyint(1) NOT NULL,
  `nilaiAsset` int NOT NULL DEFAULT '0',
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT '1',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `Dokumen_nasabahId_fkey` (`nasabahId`),
  CONSTRAINT `Dokumen_nasabahId_fkey` FOREIGN KEY (`nasabahId`) REFERENCES `Nasabah` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dokumen`
--

LOCK TABLES `Dokumen` WRITE;
/*!40000 ALTER TABLE `Dokumen` DISABLE KEYS */;
INSERT INTO `Dokumen` VALUES ('01b5dbdc-0102-47d0-b7bc-d30afc06b018','03f0b85f-d8e8-4e78-b44c-217cc75178b1','ATM',1,1,150000,'Sesuai Dengan Persyaratan',1,'2024-08-30 12:35:20.750','2024-08-30 12:35:20.750'),('2c3c4e83-32d3-43d5-a105-f044c4f57da0','788900bc-15cd-4acb-bb07-31318e1311ff','Buku Rekening',1,1,30000,'Kondisi Baik',1,'2024-01-20 02:29:33.793','2024-01-20 02:29:33.793'),('39ec7cfb-a860-4185-8cb0-3643c876d18b','aded9c6b-a50f-405b-b2ca-093cfd326b28','Ijazah',1,1,50000,'Sesuai Dengan Persyaratan',1,'2024-02-01 10:40:43.637','2024-02-01 10:40:43.637'),('49269f68-88d2-4e01-8bf2-1ce66dc3f574','a4c1f0f4-a5e9-455b-b56f-97cd976b20c8','Buku Rekening',1,1,50000,'Cocok',1,'2024-05-06 06:50:05.565','2024-05-06 06:50:05.565'),('5cbfaeff-aac9-4ea7-9d05-d7e309da43b6','0a42a0d1-8292-400b-9ec1-eb2bb6fe77e1','Ijazah',1,1,50000,'Kondisi Baik',1,'2024-01-20 01:34:51.064','2024-01-20 01:34:51.064'),('6ce3d007-b370-456a-9054-2b70135226e1','6eeb98f4-4f6d-4e06-bf4f-cfaf7dac271e','Ijazah',1,1,50000,'Sesuai Dengan Persyaratan Berkas',1,'2024-02-28 04:46:37.501','2024-02-28 04:46:37.501'),('74fb7be4-21a2-4b8c-ae3b-184820d26ebc','586ed67a-031a-4628-ab53-ca546b064326','Ijazah',1,1,50000,'Sesuai Dengan Kesepakatan',1,'2024-05-22 05:36:46.482','2024-05-22 05:36:46.482'),('810dd1ae-40ae-49f0-a9bc-8e93e2c10eeb','9c98cc1e-66c6-43bc-82a8-9445b08935ae','Ijazah',1,1,50000,'KONDISI BAIK',1,'2024-01-17 12:30:32.779','2024-01-17 12:30:32.779'),('8e28f0a9-96c9-405e-b7df-fbec61343e22','882f8899-7335-4026-8c1d-fca2f939456d','ATM',1,1,50000,'Sesusi Dengan Kesepakatan',1,'2024-05-20 04:53:18.612','2024-05-20 04:53:18.612'),('baff61ca-8867-4763-a822-d8ca0822e9a8','5d8fe1c2-0698-4cfc-9233-5b8f35974177','ATM',1,1,50000,'Cocok',1,'2024-03-06 11:32:54.169','2024-03-06 11:32:54.169'),('ce8c87b6-ef39-45e6-8e1e-3d6b94666da5','9121e763-4d4b-4579-b3b9-f46c2e312103','Buku Nikah',1,0,10000,'SESUAI DATA',1,'2024-02-06 01:25:47.091','2024-02-06 01:25:47.091'),('de396277-76c0-4ecf-83f8-36bdc4bfa11f','ee28ce3c-417b-457d-9c34-2c2a6a37718e','ATM',1,1,25000,'COCOK',1,'2024-05-10 09:26:33.294','2024-05-10 09:26:33.294');
/*!40000 ALTER TABLE `Dokumen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nasabah`
--

DROP TABLE IF EXISTS `Nasabah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Nasabah` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaLengkap` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempatLahir` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tglLahir` date NOT NULL,
  `alamatRumah` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kabupaten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fotoURL` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kontakNasabah` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kontakDarurat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaKontakDarurat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hubunganKontakDarurat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nasabah`
--

LOCK TABLES `Nasabah` WRITE;
/*!40000 ALTER TABLE `Nasabah` DISABLE KEYS */;
INSERT INTO `Nasabah` VALUES ('03f0b85f-d8e8-4e78-b44c-217cc75178b1','SITI ROSANAH','KARAWANG','2003-11-19','Dusun Pundong','Pasir Tanjung','Lemahabang','Karawang','Jawa Barat','fotonasabah-b0b3a53f-545e-470c-9104-c490fffe31d5.jpeg','http://127.0.0.1:52940/images/nasabah/fotonasabah-b0b3a53f-545e-470c-9104-c490fffe31d5.jpeg','0808792232','-','-','-','2024-08-30 12:32:57.425','2024-08-30 12:32:57.425'),('0a42a0d1-8292-400b-9ec1-eb2bb6fe77e1','SRI SULPIANI','Karawang','1972-09-22','Dusun Ciranggon II','Ciranggon','Majalaya','Karawang','Jawa Barat','fotonasabah-fefdd50a-e5a3-433b-aa11-fd5424457d9d.jpeg','https://ksp-gabenauligroup.com/images/nasabah/fotonasabah-fefdd50a-e5a3-433b-aa11-fd5424457d9d.jpeg','0895614925712','-','-','-','2024-01-20 01:14:52.944','2024-01-20 01:14:52.944'),('0ddc1e38-a9c5-4d85-b89a-784d9dd246af','IKA SARTIKA','CIREBON','1993-07-10','Perumahan Griya Budiman Asri','Cibalongsari','Klari','Karawang','Jawa Barat','fotonasabah-d4b03bf4-1be7-4f20-be9b-b3aa326fcee1.jpeg','http://127.0.0.1:52940/images/nasabah/fotonasabah-d4b03bf4-1be7-4f20-be9b-b3aa326fcee1.jpeg','083138883737','-','-','-','2024-09-27 06:35:15.095','2024-09-27 06:35:15.095'),('3a89f9b5-5d05-4ee2-93ba-a7298f216945','PIPIT PITRIANI','GARUT','1992-07-17','Perumahan Regency','purwasari','klari','Karawang','Jawa Barat','fotonasabah-118ad5e9-c229-425c-b1fb-5c17bf47481d.jpeg','http://127.0.0.1:52940/images/nasabah/fotonasabah-118ad5e9-c229-425c-b1fb-5c17bf47481d.jpeg','082117182570','-','-','-','2024-08-31 11:07:56.472','2024-08-31 11:07:56.472'),('586ed67a-031a-4628-ab53-ca546b064326','KANDI','KARAWANG','1965-09-10','Tegalasem','Kertasari','Rengasdengklok','Karawang','Jawa Barat','fotonasabah-1c1460fa-53a3-4721-851a-04ee7d9ddb6f.jpeg','http://127.0.0.1:52940/images/nasabah/fotonasabah-1c1460fa-53a3-4721-851a-04ee7d9ddb6f.jpeg','083890425326','-','-','-','2024-05-22 05:35:53.916','2024-05-22 05:35:53.916'),('5d8fe1c2-0698-4cfc-9233-5b8f35974177','OMIN SAROHMAN','KARAWANG','1993-03-13','Mutiara Alam Permai','Pasirjengkol','Majalaya','Karawang','Jawa Barat','fotonasabah-2e0401e2-f40f-4d5d-b834-79f350f0b73b.jpeg','http://127.0.0.1:52940/images/nasabah/fotonasabah-2e0401e2-f40f-4d5d-b834-79f350f0b73b.jpeg','6208986850819','-','-','-','2024-03-06 11:26:44.664','2024-03-06 11:26:44.664'),('6eeb98f4-4f6d-4e06-bf4f-cfaf7dac271e','LIA AWALIATUN NURJANAH','Karawang','2001-03-21','Perumahan Terang Sari','Cibalongsari','Klari','Karawang','Jawa Barat','fotonasabah-3d0ef895-b428-48ef-8b13-4af1178f13ef.jpeg','https://ksp-gabenauligroup.com/images/nasabah/fotonasabah-3d0ef895-b428-48ef-8b13-4af1178f13ef.jpeg','085159434600','-','-','-','2024-02-28 04:45:49.531','2024-02-28 04:45:49.531'),('788900bc-15cd-4acb-bb07-31318e1311ff','WIDYA AYU NINGSIH','Bandung','1982-04-28','Perumahan Mutiara Alam Permai Blok B2/20','Pasirjengkol','Majalaya','Karawang','Jawa Barat','fotonasabah-fbe630e8-e520-4d18-8a73-48850810ef1e.jpeg','https://ksp-gabenauligroup.com/images/nasabah/fotonasabah-fbe630e8-e520-4d18-8a73-48850810ef1e.jpeg','082123796447','-','-','-','2024-01-20 02:27:40.179','2024-01-20 02:27:40.179'),('882f8899-7335-4026-8c1d-fca2f939456d','MARWATI ROSALINA','KARAWANG','1991-05-01','Dusun Babakan Ciranggon','Pasirjengkol','Majalaya','Karawang','Jawa Barat','fotonasabah-f5dd651e-1ac7-423a-ace9-18108974a950.jpeg','http://127.0.0.1:52940/images/nasabah/fotonasabah-f5dd651e-1ac7-423a-ace9-18108974a950.jpeg','0 85714213551','-','-','-','2024-05-20 04:52:16.547','2024-05-20 04:52:16.547'),('9121e763-4d4b-4579-b3b9-f46c2e312103','EVI DAYANTI','KARAWANG','1987-04-09','DUSUN SARAKAN','TAMBAKSARI','TIRTAJAYA','Karawang','Jawa Barat','fotonasabah-35831ba6-258a-49e4-8171-d0bef0e2c2f7.jpeg','https://ksp-gabenauligroup.com/images/nasabah/fotonasabah-35831ba6-258a-49e4-8171-d0bef0e2c2f7.jpeg','081380630090','-','-','-','2024-02-06 01:25:00.466','2024-02-06 01:25:00.466'),('9c98cc1e-66c6-43bc-82a8-9445b08935ae','RICKY JULIANTO','Bekasi','2002-07-19','Dusun Tanjungsari','Pulojaya','Lemahabang','Karawang','Jawa Barat','fotonasabah-d2bec93c-270a-4ea0-b499-2d6e8b9b82a2.jpeg','https://ksp-gabenauligroup.com/images/nasabah/fotonasabah-d2bec93c-270a-4ea0-b499-2d6e8b9b82a2.jpeg','083899907265','-','-','-','2024-01-02 17:50:48.721','2024-01-02 17:50:48.721'),('a4c1f0f4-a5e9-455b-b56f-97cd976b20c8','IDA AULIA','KARAWANG','1993-06-15','Dusun Babakan Karajan','Jatimulya','Pedes','Karawang','Jawa Barat','fotonasabah-e4315b14-5acd-4b46-9131-84ca45fd6b6d.jpeg','http://127.0.0.1:52940/images/nasabah/fotonasabah-e4315b14-5acd-4b46-9131-84ca45fd6b6d.jpeg','0857-7852-471','-','-','-','2024-05-06 06:48:20.875','2024-05-06 06:48:20.875'),('aded9c6b-a50f-405b-b2ca-093cfd326b28','AYU INDAH LESTARI','TANGERANG','1994-06-05','MUTIARA ALAM PERMAI','PASIRJENGKOL','MAJALAYA','Karawang','Jawa Barat','fotonasabah-27a1d4c3-0c52-4ba1-a154-a33001d25c43.jpeg','https://ksp-gabenauligroup.com/images/nasabah/fotonasabah-27a1d4c3-0c52-4ba1-a154-a33001d25c43.jpeg','085777078578','-','-','-','2024-02-01 10:39:59.634','2024-02-01 10:39:59.634'),('ee28ce3c-417b-457d-9c34-2c2a6a37718e','HERTI HERAWATI','KARAWANG','1996-09-05','KAREES','PALUMBONSARI','KARAWANG TIMUR','Karawang','Jawa Barat','fotonasabah-f14fd2e0-395d-4a22-b44c-2725c9c5f901.jpeg','https://ksp-gabenauligroup.com/images/nasabah/fotonasabah-f14fd2e0-395d-4a22-b44c-2725c9c5f901.jpeg','085813048299','-','-','-','2024-01-27 02:51:44.507','2024-01-27 02:51:44.507');
/*!40000 ALTER TABLE `Nasabah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pekerjaan`
--

DROP TABLE IF EXISTS `Pekerjaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pekerjaan` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nasabahId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaPerusahaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusKepegawaian` enum('Kontrak','Tetap','Wirausaha') COLLATE utf8mb4_unicode_ci NOT NULL,
  `akhirKontrak` date DEFAULT NULL,
  `penghasilanTetap` int NOT NULL DEFAULT '0',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `Pekerjaan_nasabahId_fkey` (`nasabahId`),
  CONSTRAINT `Pekerjaan_nasabahId_fkey` FOREIGN KEY (`nasabahId`) REFERENCES `Nasabah` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pekerjaan`
--

LOCK TABLES `Pekerjaan` WRITE;
/*!40000 ALTER TABLE `Pekerjaan` DISABLE KEYS */;
INSERT INTO `Pekerjaan` VALUES ('1bc9424a-6945-4e70-b29f-a85c7e7d876d','aded9c6b-a50f-405b-b2ca-093cfd326b28','ASWARA HANJAYA AKEH','Kontrak','2023-12-13',5700000,'2024-02-01 10:44:22.824','2024-02-01 10:44:22.824'),('2289ec90-f5ae-442a-8d7b-e758c2e4b3e3','9c98cc1e-66c6-43bc-82a8-9445b08935ae','PT.YAMAHA INDONESIA MOTOR MANUFACTURING','Kontrak','2024-10-02',5570693,'2024-01-17 12:29:40.497','2024-01-17 12:29:40.497'),('5b2809d4-3a76-4767-b2e8-41d40a3bfc23','a4c1f0f4-a5e9-455b-b56f-97cd976b20c8','Wirausaha','Wirausaha',NULL,5000000,'2024-05-06 06:51:10.745','2024-05-06 06:51:10.745'),('6151d075-2704-4442-a800-6e2eb0add4d8','9121e763-4d4b-4579-b3b9-f46c2e312103','USAHA BRI LINK','Wirausaha',NULL,5000000,'2024-02-06 01:26:32.459','2024-02-06 01:26:32.459'),('616f484b-063c-4a39-a3b7-9bd0aadc1226','788900bc-15cd-4acb-bb07-31318e1311ff','Salon','Wirausaha',NULL,5000000,'2024-01-20 02:30:23.540','2024-01-20 02:30:23.540'),('82588330-1ae8-41c9-a2e0-d44056034462','6eeb98f4-4f6d-4e06-bf4f-cfaf7dac271e','Guru','Tetap',NULL,3000000,'2024-02-28 04:47:16.249','2024-02-28 04:47:16.249'),('8e48e3c9-2fc5-4814-b678-fa711c315617','ee28ce3c-417b-457d-9c34-2c2a6a37718e','KARYAWAN','Tetap',NULL,5000000,'2024-05-10 09:26:55.368','2024-05-10 09:26:55.368'),('a7fdbf5c-472e-4e41-92b2-3891425e9465','03f0b85f-d8e8-4e78-b44c-217cc75178b1','CSG/CHANG SHIN','Tetap',NULL,5000000,'2024-08-30 12:36:21.779','2024-08-30 12:36:21.779'),('b5cf2cb1-9309-4dcb-9518-4df76771d198','882f8899-7335-4026-8c1d-fca2f939456d','Warung','Wirausaha',NULL,5000000,'2024-05-20 04:53:45.326','2024-05-20 04:53:45.326'),('d89804a1-8b46-44c8-a818-b920dc047066','0a42a0d1-8292-400b-9ec1-eb2bb6fe77e1','Pegawai Negeri Sipil (Puskesmas Karwang)','Tetap',NULL,4027700,'2024-01-20 01:38:53.861','2024-01-20 01:38:53.861'),('ed9014f9-a8d7-46bf-8e75-02876901843b','5d8fe1c2-0698-4cfc-9233-5b8f35974177','Dinas Lingkungan Hidupb Karawang','Kontrak','2025-05-16',2500000,'2024-03-06 11:34:03.428','2024-03-06 11:34:03.428'),('f15af967-f421-4609-ad3e-d881a52d5b55','586ed67a-031a-4628-ab53-ca546b064326','Grosir','Wirausaha',NULL,5000000,'2024-05-22 05:37:14.822','2024-05-22 05:37:14.822');
/*!40000 ALTER TABLE `Pekerjaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pinjaman`
--

DROP TABLE IF EXISTS `Pinjaman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pinjaman` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nasabahId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produkId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tglPengajuan` date NOT NULL,
  `statusPengajuan` enum('Baru','Topup') COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusPinjaman` enum('MenungguKeputusan','Diterima','Ditolak','Berjalan','Menunggak','Lunas') COLLATE utf8mb4_unicode_ci NOT NULL,
  `keteranganDitolak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sudahSurvey` tinyint(1) NOT NULL DEFAULT '0',
  `totalCicilanMasuk` int DEFAULT '0',
  `sisaCicilan` int DEFAULT '0',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `Pinjaman_nasabahId_fkey` (`nasabahId`),
  KEY `Pinjaman_produkId_fkey` (`produkId`),
  CONSTRAINT `Pinjaman_nasabahId_fkey` FOREIGN KEY (`nasabahId`) REFERENCES `Nasabah` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `Pinjaman_produkId_fkey` FOREIGN KEY (`produkId`) REFERENCES `Produk` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pinjaman`
--

LOCK TABLES `Pinjaman` WRITE;
/*!40000 ALTER TABLE `Pinjaman` DISABLE KEYS */;
INSERT INTO `Pinjaman` VALUES ('091cf09c-fd46-4d81-ac22-967a969076f1','aded9c6b-a50f-405b-b2ca-093cfd326b28','6e4926cb-a1d6-400c-ad4f-a646fae441fd','2024-01-31','Baru','Diterima',NULL,1,20250000,0,'2024-02-01 10:46:28.799','2024-02-01 10:46:28.799'),('1865827f-d2a7-4bf2-b06b-86b7d859574d','882f8899-7335-4026-8c1d-fca2f939456d','887a160e-1f7f-42a2-840d-faa63ffa6c6b','2024-05-18','Baru','Diterima',NULL,1,5500000,5500000,'2024-05-20 04:55:03.536','2024-05-20 04:55:03.536'),('2ee15f86-04a6-446b-9e27-00959ad09e36','ee28ce3c-417b-457d-9c34-2c2a6a37718e','24b52403-571d-4be5-bf07-adf9b7664e13','2024-05-07','Topup','Diterima',NULL,1,3400000,3400000,'2024-05-07 08:51:35.384','2024-05-07 08:51:35.384'),('3d3b147d-1611-4c43-9761-30910138384c','586ed67a-031a-4628-ab53-ca546b064326','248d0088-5d9c-466f-825d-6c114bce389b','2024-05-22','Baru','Diterima',NULL,1,6800000,6800000,'2024-05-22 05:37:42.544','2024-05-22 05:37:42.544'),('5473b6c6-7244-4fdb-931e-8a48aec84535','5d8fe1c2-0698-4cfc-9233-5b8f35974177','36a3fa49-02af-437c-bea2-9dae79fa2137','2024-03-06','Baru','Diterima',NULL,1,4050000,0,'2024-03-06 11:37:13.883','2024-03-06 11:37:13.883'),('575cc7de-362d-4efe-97bf-03a13387c90a','03f0b85f-d8e8-4e78-b44c-217cc75178b1','6cd09033-61e2-455e-9578-f80d429c18ea','2024-08-30','Baru','Diterima',NULL,1,4380000,12660000,'2024-08-30 12:34:27.480','2024-08-30 12:34:27.480'),('5a85c886-5b12-41b8-959e-4f7c4a5cf758','0a42a0d1-8292-400b-9ec1-eb2bb6fe77e1','cce80b8e-f224-4912-907f-df02ac35d542','2024-01-19','Baru','Diterima',NULL,1,6400000,0,'2024-01-20 02:13:01.959','2024-01-20 02:13:01.959'),('65a692bc-f4a3-45cf-9c69-c4defe51868f','0ddc1e38-a9c5-4d85-b89a-784d9dd246af','f5fad765-3bb5-4c48-bbdf-db4dcd170a12','2024-09-26','Baru','Diterima',NULL,1,1775000,19525000,'2024-09-27 06:37:30.558','2024-09-27 06:37:30.558'),('6ead53dc-f168-4320-8875-97f3efe21882','3a89f9b5-5d05-4ee2-93ba-a7298f216945','f5fad765-3bb5-4c48-bbdf-db4dcd170a12','2024-08-31','Baru','Diterima',NULL,1,3550000,17750000,'2024-08-31 11:09:22.731','2024-08-31 11:09:22.731'),('7dac67c8-f8f0-4a68-adff-00e3dfdde7ac','ee28ce3c-417b-457d-9c34-2c2a6a37718e','16e90142-c7d8-4acf-9920-52449634cad5','2024-01-26','Baru','Diterima',NULL,1,2700000,0,'2024-01-27 02:56:47.715','2024-01-27 02:56:47.715'),('829b09f6-5409-413f-8e2e-f06019d9a357','788900bc-15cd-4acb-bb07-31318e1311ff','e2b55daa-6efa-43ff-8223-15c77220bdf7','2024-09-27','Topup','Diterima',NULL,1,852000,5548000,'2024-09-27 06:54:07.042','2024-09-27 06:54:07.042'),('83a38d8b-29fc-411a-a9e5-e69baf83ee15','0a42a0d1-8292-400b-9ec1-eb2bb6fe77e1','39cedbd0-4310-4af5-a7fc-87f2fe1d0883','2024-08-20','Topup','Diterima',NULL,1,0,4500000,'2024-08-20 03:44:46.705','2024-08-20 03:44:46.705'),('8b07358d-f582-4c55-addd-ec4a03f71135','788900bc-15cd-4acb-bb07-31318e1311ff','39cedbd0-4310-4af5-a7fc-87f2fe1d0883','2024-05-27','Topup','Diterima',NULL,1,4500000,0,'2024-05-29 05:32:29.434','2024-05-29 05:32:29.434'),('aac54303-d8fa-40de-8018-a0781ae7ace8','6eeb98f4-4f6d-4e06-bf4f-cfaf7dac271e','622bd85b-2f72-427f-a0d1-f9b4c3944d41','2024-02-28','Baru','Diterima',NULL,1,6400000,0,'2024-02-28 04:49:48.474','2024-02-28 04:49:48.474'),('b81292c6-8e8e-4245-92a9-9ddc7f84e3cd','5d8fe1c2-0698-4cfc-9233-5b8f35974177','e6ed9c8e-c8c7-440b-8ed2-f7875ffebcc7','2024-10-26','Topup','Diterima',NULL,1,0,5500000,'2024-11-05 03:39:46.504','2024-11-05 03:39:46.504'),('d7919d5f-75e1-46b1-8b35-24baa6769dc6','9121e763-4d4b-4579-b3b9-f46c2e312103','515ca023-bb66-46d0-957e-9b8d033ef173','2024-02-05','Baru','Diterima',NULL,1,6750000,0,'2024-02-06 01:35:27.117','2024-02-06 01:35:27.117'),('dbb3217d-8d31-4c9f-97e9-009b9efd44a2','a4c1f0f4-a5e9-455b-b56f-97cd976b20c8','54df17cc-658d-4106-a745-4fd7f4d5e19c','2024-05-05','Baru','Diterima',NULL,1,2040000,2040000,'2024-05-06 06:52:39.343','2024-05-06 06:52:39.343'),('df5f7840-e0e3-49ef-9582-87d8813fc7d5','788900bc-15cd-4acb-bb07-31318e1311ff','39cedbd0-4310-4af5-a7fc-87f2fe1d0883','2024-01-19','Baru','Diterima',NULL,1,5400000,0,'2024-01-20 02:34:31.199','2024-01-20 02:34:31.199'),('e364bf3c-caf5-45e1-97f3-e55c9a07cbc3','9c98cc1e-66c6-43bc-82a8-9445b08935ae','ceb264fd-3991-4bc4-9d12-b699950238f0','2024-01-16','Baru','Diterima',NULL,1,3228000,1614000,'2024-01-17 12:36:16.242','2024-01-17 12:36:16.242'),('e3b64184-78ef-4e82-a21e-4bc066197115','5d8fe1c2-0698-4cfc-9233-5b8f35974177','36a3fa49-02af-437c-bea2-9dae79fa2137','2024-08-05','Topup','Diterima',NULL,1,4050000,0,'2024-08-15 09:01:06.910','2024-08-15 09:01:06.910'),('e9ee6ccf-6187-4dac-ab4d-033be9fbf10f','aded9c6b-a50f-405b-b2ca-093cfd326b28','6068ef9c-5762-4c35-924f-5685d0eba331','2024-10-22','Topup','Diterima',NULL,1,3000000,24000000,'2024-10-23 04:24:25.104','2024-10-23 04:24:25.104'),('f95b3c5f-57bb-4322-b505-cdb0d7fc145e','9121e763-4d4b-4579-b3b9-f46c2e312103','115e077a-f1d9-4f4b-b55e-2e6991cbfbde','2024-08-24','Topup','Diterima',NULL,1,1690000,11830000,'2024-08-26 04:39:32.651','2024-08-26 04:39:32.651');
/*!40000 ALTER TABLE `Pinjaman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Produk`
--

DROP TABLE IF EXISTS `Produk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Produk` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plafond` int NOT NULL,
  `interestBulan` decimal(4,2) NOT NULL,
  `interestTahun` decimal(4,2) NOT NULL,
  `profitPlan` int NOT NULL,
  `tenor` int NOT NULL,
  `cicilan` int NOT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produk`
--

LOCK TABLES `Produk` WRITE;
/*!40000 ALTER TABLE `Produk` DISABLE KEYS */;
INSERT INTO `Produk` VALUES ('115e077a-f1d9-4f4b-b55e-2e6991cbfbde',10000000,4.40,35.20,3520000,8,1690000,'Cocok',1,'2024-08-26 04:38:51.112','2024-08-26 04:38:51.112'),('16e90142-c7d8-4acf-9920-52449634cad5',2000000,7.00,35.00,700000,5,540000,'Cocok',1,'2024-01-27 02:56:21.382','2024-01-27 02:56:21.382'),('248d0088-5d9c-466f-825d-6c114bce389b',10000000,3.60,36.00,3600000,10,1360000,'Cocok',1,'2024-05-22 05:25:59.564','2024-05-22 05:25:59.564'),('24b52403-571d-4be5-bf07-adf9b7664e13',5000000,4.50,36.00,1800000,8,850000,'Cocok',1,'2024-05-07 08:49:59.217','2024-05-07 08:49:59.217'),('36a3fa49-02af-437c-bea2-9dae79fa2137',3000000,7.00,35.00,1050000,5,810000,'Cocok',1,'2024-03-06 11:35:52.771','2024-03-06 11:35:52.771'),('39cedbd0-4310-4af5-a7fc-87f2fe1d0883',3000000,10.00,50.00,1500000,5,900000,'Cocok',1,'2024-01-20 02:33:31.799','2024-01-20 02:33:31.799'),('515ca023-bb66-46d0-957e-9b8d033ef173',5000000,7.00,35.00,1750000,5,1350000,'Cocok',1,'2024-02-06 01:34:58.327','2024-02-06 01:34:58.327'),('54df17cc-658d-4106-a745-4fd7f4d5e19c',3000000,4.50,36.00,1080000,8,510000,'Cocok',1,'2024-05-06 06:45:19.941','2024-05-06 06:45:19.941'),('6068ef9c-5762-4c35-924f-5685d0eba331',20000000,3.50,35.00,7000000,10,2700000,'Cocok',1,'2024-10-23 04:19:38.426','2024-10-23 04:19:38.426'),('622bd85b-2f72-427f-a0d1-f9b4c3944d41',5000000,3.50,28.00,1400000,8,800000,'Cocok',1,'2024-02-28 04:48:55.765','2024-02-28 04:48:55.765'),('6cd09033-61e2-455e-9578-f80d429c18ea',12000000,3.50,42.00,5040000,12,1420000,'Cocok',1,'2024-08-30 12:34:07.430','2024-08-30 12:34:07.430'),('6e4926cb-a1d6-400c-ad4f-a646fae441fd',15000000,3.50,35.00,5250000,10,2025000,'Cocok',1,'2024-02-01 10:46:06.967','2024-02-01 10:46:06.967'),('887a160e-1f7f-42a2-840d-faa63ffa6c6b',8000000,3.75,37.50,3000000,10,1100000,'Cocok',1,'2024-05-20 04:42:12.521','2024-05-20 04:42:12.521'),('8c5eb917-8bc3-48c8-adcf-1828beee26e1',3000000,6.00,30.00,900000,5,780000,'',1,'2024-05-29 05:34:22.865','2024-05-29 05:34:22.865'),('963b50d0-b86d-414c-952d-ae694bc9de73',15000000,3.50,42.00,6300000,12,1775000,'Cocok',1,'2024-09-27 06:36:55.164','2024-09-27 06:36:55.164'),('cce80b8e-f224-4912-907f-df02ac35d542',5000000,3.50,28.00,1400000,8,800000,'Cocok\n',1,'2024-01-02 17:52:26.126','2024-01-02 17:52:26.126'),('ceb264fd-3991-4bc4-9d12-b699950238f0',4000000,3.50,21.00,840000,6,807000,'Cocok',1,'2024-01-17 12:35:30.502','2024-01-17 12:35:30.502'),('e2b55daa-6efa-43ff-8223-15c77220bdf7',3500000,10.35,82.80,2898000,8,800000,'Cocok',1,'2024-09-27 06:53:45.477','2024-09-27 06:53:45.477'),('e6ed9c8e-c8c7-440b-8ed2-f7875ffebcc7',4000000,3.73,37.30,1492000,10,550000,'Cocok',1,'2024-11-05 03:39:05.170','2024-11-05 03:39:05.170'),('f5fad765-3bb5-4c48-bbdf-db4dcd170a12',15000000,3.50,42.00,6300000,12,1775000,'Cocok',1,'2024-08-31 11:03:24.814','2024-08-31 11:03:24.814');
/*!40000 ALTER TABLE `Produk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Survey`
--

DROP TABLE IF EXISTS `Survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Survey` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinjamanId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surveyorId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusSurvey` enum('Pending','Cancel','Baik','Kurang','Buruk') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fotoURL` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `Survey_pinjamanId_fkey` (`pinjamanId`),
  KEY `Survey_surveyorId_fkey` (`surveyorId`),
  CONSTRAINT `Survey_pinjamanId_fkey` FOREIGN KEY (`pinjamanId`) REFERENCES `Pinjaman` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `Survey_surveyorId_fkey` FOREIGN KEY (`surveyorId`) REFERENCES `Users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Survey`
--

LOCK TABLES `Survey` WRITE;
/*!40000 ALTER TABLE `Survey` DISABLE KEYS */;
INSERT INTO `Survey` VALUES ('05ae035f-31ce-4b0d-a708-3b9ddefb8026','829b09f6-5409-413f-8e2e-f06019d9a357','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai Dengan Data-Data','2024-09-27 06:54:33.161','2024-09-27 06:54:33.161'),('063391b9-bc6d-4d76-a37d-209f5b2a9020','2ee15f86-04a6-446b-9e27-00959ad09e36','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai Dengan Data-Data','2024-05-07 08:51:43.439','2024-05-07 08:51:43.439'),('085c7320-8ea8-4e16-84ec-0e5101bf2056','e3b64184-78ef-4e82-a21e-4bc066197115','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai Dengan Data-Data','2024-08-15 09:18:00.702','2024-08-15 09:18:00.702'),('18e5353a-b047-47f3-bdbc-572d10a1e25b','d7919d5f-75e1-46b1-8b35-24baa6769dc6','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','fotosurvey-75490d2d-bfb8-4d37-b595-89880760d79d.jpeg','http://127.0.0.1:52940/images/survey/fotosurvey-75490d2d-bfb8-4d37-b595-89880760d79d.jpeg','Sesuai DEngan Data-Data','2024-02-06 01:45:41.665','2024-02-06 01:45:41.665'),('2a77f279-4765-4ce9-bc6f-220b775ee10d','65a692bc-f4a3-45cf-9c69-c4defe51868f','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai Dengan Data-Data','2024-09-27 06:37:58.167','2024-09-27 06:37:58.167'),('2c6eb8b3-ffa6-4567-a35b-d9ccf8d0381d','df5f7840-e0e3-49ef-9582-87d8813fc7d5','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','fotosurvey-8c818bae-1a00-43e0-afbc-bccc1add2537.jpeg','http://127.0.0.1:52940/images/survey/fotosurvey-8c818bae-1a00-43e0-afbc-bccc1add2537.jpeg','sesuai dengan data-data','2024-01-27 02:57:49.275','2024-01-27 02:57:49.275'),('426271e9-27bc-462e-9e02-7828f242d7b2','5473b6c6-7244-4fdb-931e-8a48aec84535','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai dengan data data ','2024-03-20 14:20:40.082','2024-03-20 14:20:40.082'),('4a762279-a430-4dd3-8c92-7766b2f80f5f','83a38d8b-29fc-411a-a9e5-e69baf83ee15','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai Dengan Data-Data','2024-08-20 03:46:01.087','2024-08-20 03:46:01.087'),('4d967182-96c4-4631-8207-bd0c6034a250','b81292c6-8e8e-4245-92a9-9ddc7f84e3cd','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai Dengan Data-Data','2024-11-05 03:40:05.839','2024-11-05 03:40:05.839'),('5aa64133-740a-4960-97e4-5284b75300f4','e3b64184-78ef-4e82-a21e-4bc066197115','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai Dengan Data- Data','2024-08-15 09:04:12.060','2024-08-15 09:04:12.060'),('74bb631b-cac5-46c1-9402-3b81ec39b2d5','5473b6c6-7244-4fdb-931e-8a48aec84535','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai dengan data data ','2024-03-18 11:07:37.647','2024-03-18 11:07:37.647'),('7e5dc9b5-f850-4954-b92d-4d34f4e2006a','8b07358d-f582-4c55-addd-ec4a03f71135','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Cocok','2024-06-01 10:33:35.733','2024-06-01 10:33:35.733'),('802a082e-ead4-46d7-99c8-4491b21c32f7','3d3b147d-1611-4c43-9761-30910138384c','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai Dengan Data-Data','2024-05-22 05:38:32.102','2024-05-22 05:38:32.102'),('827e6659-b316-4b7f-a4b8-a6fd606caab6','dbb3217d-8d31-4c9f-97e9-009b9efd44a2','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai Dengan Data-Data','2024-05-06 06:52:59.966','2024-05-06 06:52:59.966'),('86ee8851-f5ad-4e02-9e6c-9178c116fca3','6ead53dc-f168-4320-8875-97f3efe21882','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai Dengan Data-Data','2024-08-31 11:09:36.475','2024-08-31 11:09:36.475'),('8f81fb40-e910-413f-b54c-9fe3a764d2b7','091cf09c-fd46-4d81-ac22-967a969076f1','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','fotosurvey-cd742d1f-9c19-48e2-8dc0-065e9a889d0a.jpeg','http://127.0.0.1:52940/images/survey/fotosurvey-cd742d1f-9c19-48e2-8dc0-065e9a889d0a.jpeg','Sesuai Dengan Data-Data','2024-02-06 01:45:35.305','2024-02-06 01:45:35.305'),('8feded5d-50f5-4d2f-a5a0-1fcdf65930af','e364bf3c-caf5-45e1-97f3-e55c9a07cbc3','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','fotosurvey-c5d540d1-355e-477d-879f-018346b3b0e9.jpeg','http://127.0.0.1:52940/images/survey/fotosurvey-c5d540d1-355e-477d-879f-018346b3b0e9.jpeg','Sesuai dengan data data','2024-01-20 02:03:27.801','2024-01-20 02:03:27.801'),('935df2e7-1355-49f8-b850-c93eeacaa4ad','1865827f-d2a7-4bf2-b06b-86b7d859574d','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai Dengan Data-Data','2024-05-20 04:55:39.574','2024-05-20 04:55:39.574'),('9d29f79e-868f-4336-8dac-ee4882ed42b5','575cc7de-362d-4efe-97bf-03a13387c90a','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai Dengan Data-data','2024-08-30 12:36:53.537','2024-08-30 12:36:53.537'),('9d45e997-3b5d-45e3-9926-dea3308f2c94','7dac67c8-f8f0-4a68-adff-00e3dfdde7ac','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','fotosurvey-f97a11ca-159f-4e08-b225-e5a0821262cc.jpeg','http://127.0.0.1:52940/images/survey/fotosurvey-f97a11ca-159f-4e08-b225-e5a0821262cc.jpeg','Sesuai dengan data-data','2024-01-27 02:57:42.424','2024-01-27 02:57:42.424'),('b8acf0fa-4442-4927-aaa9-8a17aeb71dca','aac54303-d8fa-40de-8018-a0781ae7ace8','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','fotosurvey-daa9d20e-6261-47b5-9692-5467db1f3518.jpeg','http://127.0.0.1:52940/images/survey/fotosurvey-daa9d20e-6261-47b5-9692-5467db1f3518.jpeg','Sesuai dengan data- data','2024-02-29 04:24:16.573','2024-02-29 04:24:16.573'),('bcf33dad-a7b6-4486-b52c-02db1890fb76','8b07358d-f582-4c55-addd-ec4a03f71135','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Cocok','2024-05-31 02:43:06.382','2024-05-31 02:43:06.382'),('c5ae576e-2251-4907-9e89-d30050113db8','e3b64184-78ef-4e82-a21e-4bc066197115','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai Dengan Data- Data','2024-08-19 02:56:16.321','2024-08-19 02:56:16.321'),('d5c465eb-636c-4c6b-984e-69fdce5889e7','5a85c886-5b12-41b8-959e-4f7c4a5cf758','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','fotosurvey-9904c635-ce44-49b6-bcc8-159a45ee2b48.jpeg','http://127.0.0.1:52940/images/survey/fotosurvey-9904c635-ce44-49b6-bcc8-159a45ee2b48.jpeg','sesuai dengan data data','2024-01-20 02:13:14.099','2024-01-20 02:13:14.099'),('e6ec0695-55d8-49eb-8371-b5c5d96c981f','e9ee6ccf-6187-4dac-ab4d-033be9fbf10f','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai Dengan Data-Data','2024-10-23 04:28:47.735','2024-10-23 04:28:47.735'),('f59f9ab7-7048-410d-8d4f-d5bdea6c98d7','f95b3c5f-57bb-4322-b505-cdb0d7fc145e','4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Baik','',NULL,'Sesuai Dengan Data-Data','2024-08-26 04:42:22.227','2024-08-26 04:42:22.227');
/*!40000 ALTER TABLE `Survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaIbuKandung` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleName` enum('Admin','SuperAdmin','Surveyor') COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `Users_username_key` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('30cf65ba-81f1-4c7e-9283-fc4c0a875f8e','Masden Samosir','masdensamosir','$2b$10$oI96Qq9Oz/XqGW8wacllK.68RfybSVHqUfjHUY7ol6Z9AwUPnnIM.','kerenita sitanggang','SuperAdmin','2023-12-30 20:31:56.749','2023-12-30 20:31:56.749'),('374850cf-a3b8-4e9b-bdf1-e181f76b7424','Administrator','root','$2b$10$3dMcdZed7G9gB/RkG.6zDugOJKhW8Nib99aGhW93WlaMOzdQfvEBC','Hawa','SuperAdmin','2024-01-20 02:22:47.083','2024-01-20 02:22:47.083'),('4e6fadab-7c6c-46f6-b4bd-55d97bed92a5','Maria Chastra S','mariachastra','$2b$10$HuhQaqCkxBObHFdijJNqluzp6FcLVYchpXLfvpLscsOqlt3w6cCh2','Romasi Aritonang','Surveyor','2024-01-18 04:23:11.063','2024-01-18 04:23:11.063'),('e7b38e25-e1b4-4f5e-9404-92ca16215278','kIKI','kiki','$2b$10$40e0Fx8eqgwOhaX/a007c.xIMTB910vcM9cV1.Ue8KoqszUpgfS8O','Hawa','Surveyor','2024-05-28 02:46:32.504','2024-05-28 02:46:32.504');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('ebcffa81-c387-47be-b09c-54b45a811396','25f9b3a058834e06e0d867ef353b996567cfc710245270497f650e6927978ede','2023-12-30 06:23:35.668','20231230062335_first_migrate_in_productoin_mode',NULL,NULL,'2023-12-30 06:23:35.154',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-27 23:09:44
