-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: igetlombok
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `igetlombok`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `igetlombok` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `igetlombok`;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departureDate` int(11) NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `vessel_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `complaint_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES ('201806011332480000001',1533254400,431776,1,4,NULL,1,'2018-06-01 06:32:48','2018-06-01 06:32:48'),('201806011340540000002',1527811200,746133,1,6,NULL,1,'2018-06-01 06:40:54','2018-06-01 06:40:54'),('201806011340540000003',1528156800,645080,1,10,NULL,1,'2018-06-01 06:40:54','2018-06-01 06:40:54'),('201807040235340000004',1530748800,542695,1,14,NULL,2,'2018-07-03 19:35:34','2018-07-03 19:35:34'),('201807040623060000005',1531267200,431776,1,4,NULL,3,'2018-07-03 23:23:06','2018-07-03 23:23:06'),('201807090219490000006',1531180800,431776,1,4,NULL,4,'2018-07-08 19:19:49','2018-07-08 19:19:49');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings_has_travellers`
--

DROP TABLE IF EXISTS `bookings_has_travellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings_has_travellers` (
  `booking_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `traveller_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings_has_travellers`
--

LOCK TABLES `bookings_has_travellers` WRITE;
/*!40000 ALTER TABLE `bookings_has_travellers` DISABLE KEYS */;
INSERT INTO `bookings_has_travellers` VALUES ('201806011332480000001',1,'2018-06-01 06:32:48','2018-06-01 06:32:48'),('201806011340540000002',2,'2018-06-01 06:40:54','2018-06-01 06:40:54'),('201806011340540000003',3,'2018-06-01 06:40:55','2018-06-01 06:40:55'),('201807040235340000004',4,'2018-07-03 19:35:34','2018-07-03 19:35:34'),('201807040623060000005',5,'2018-07-03 23:23:06','2018-07-03 23:23:06'),('201807090219490000006',6,'2018-07-08 19:19:49','2018-07-08 19:19:49');
/*!40000 ALTER TABLE `bookings_has_travellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `termsConditions` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Blue Water Express','http://via.placeholder.com/100x100','Debitis nulla qui accusamus aliquid illo possimus. Dicta eligendi nobis labore voluptatem. Enim ab sint saepe. Est quidem in atque. Libero sint officia delectus expedita iure. Eum sunt occaecati voluptas autem dolorum. Dignissimos quos voluptatem eveniet aliquam. Consequuntur ipsum praesentium ab quia. Iusto impedit qui ad autem cumque saepe. Autem temporibus eos reprehenderit laudantium. Pariatur dicta quisquam id impedit sed quia maxime. Nemo qui odit temporibus enim voluptas. Iure beatae aut omnis aut. Et ratione sunt asperiores saepe. Qui id eos quia deleniti ipsam. Quod aut et exercitationem blanditiis. Eos voluptatem temporibus et fugiat culpa. Corrupti sunt dolorum ut ipsam quia. Id ut voluptas magnam suscipit qui. Aut quia ex qui ex. Et expedita est sit aut quo. Nam dicta nesciunt eum sed. Officia quia et non incidunt ipsam. Repellat aut eveniet illo consequatur necessitatibus minima vitae. Doloribus nam suscipit vel sunt animi dolore delectus nisi. Dolor eius et modi et quae adipisci. Quisquam ut error omnis voluptas. Numquam perspiciatis sint dolorum. Voluptatem dolore et sed voluptatem qui. Corporis explicabo necessitatibus non qui. Est occaecati beatae voluptas nobis. Distinctio nulla ducimus voluptatem ea vitae est. Iusto corporis repellat nihil officia aut id quas. Vel et ad debitis aut sit et quasi velit. Corrupti voluptatibus dignissimos perferendis. Reprehenderit in mollitia iste enim recusandae qui. Adipisci eum alias aliquam nihil sit aut hic. Eaque voluptas aliquam dignissimos et. Vero sit sapiente quos rem corrupti. Perferendis commodi voluptas voluptates omnis in ipsa. Et quia atque voluptas non id. Est quos voluptas quia quasi ad assumenda qui. Voluptatem perspiciatis minus et impedit id vel. Vel dicta magnam quod quidem eius rerum. Itaque quod totam vel sint. Odio ut amet et est sapiente voluptatem. Quia mollitia autem quo neque ipsum ut velit. Sapiente rerum non beatae ducimus. Laudantium quia deleniti quae ea praesentium consequatur ipsa. Mollitia eos pariatur qui aliquam id. In non quod nostrum. Qui magnam mollitia unde natus magnam autem. Recusandae voluptas libero debitis. Odit quod est similique. Porro sint aut tempore at. Sunt dolor asperiores ea et molestiae libero ut facere. Quaerat hic ut autem est in provident sit consectetur. Consequatur quis at quia amet harum. Tempore doloribus et similique necessitatibus rem. Reprehenderit tenetur error ut autem voluptate. Est occaecati quod dolor fuga rerum. Laborum nisi autem porro qui ex illum soluta tempora. Aut repellat maxime provident expedita quam et voluptates. Veritatis qui optio unde est voluptas et. Ut quaerat mollitia ipsa reprehenderit possimus omnis. Iure illo eligendi blanditiis. Voluptatibus et aperiam nesciunt qui aspernatur porro accusamus delectus. Et quis veritatis sed modi. Et perspiciatis maiores nobis odit earum earum et. Ut itaque dolores quidem et sed quia sapiente consequatur. Ut labore quia fuga possimus eius excepturi dignissimos enim. Illo aperiam amet dolor quia. Nesciunt voluptatem minima perferendis cum. Non sequi voluptates dolor at quia. Nisi similique cum odio fugit doloremque fuga. Eos atque dicta amet voluptatem sint corrupti eos. Ullam voluptas doloribus sint et quia est. Autem provident est sunt sequi repellat et. Qui reprehenderit inventore eos non similique. Nisi eius ut molestiae sunt expedita nihil. Iste tempore debitis magni odio et dicta nemo. Nemo error non autem odit autem voluptatem quisquam. Repellat voluptatem beatae error sunt esse expedita eaque. Tempora dicta sed impedit. Ea id velit consequatur et veniam sit. Ut animi neque ullam nam aperiam exercitationem atque ut. Molestiae sed blanditiis quas voluptatum. Ad quas molestiae officiis maiores. Labore tenetur libero ea modi. Qui sapiente est omnis autem veritatis. Omnis vel labore rerum sed praesentium. Corrupti ea blanditiis est et. Repudiandae aut doloremque non ut ab. Hic dolorem natus aut dolore. Fugit nam voluptas hic ex. Reprehenderit ut officiis hic illo autem nisi aut ducimus. Consectetur accusantium iure omnis accusantium suscipit. Eos voluptates a veritatis nemo sit. Assumenda consequatur suscipit vel id id rem. Quod deserunt vel corrupti aspernatur nihil aliquid. Dolores neque veritatis aspernatur reprehenderit itaque. Autem eligendi voluptatibus aut est eveniet labore perferendis. Eligendi quam ipsum sit magni voluptas. Ullam dolor qui consequuntur quia accusamus at. Qui voluptates ut ratione molestiae saepe et. Error fugit officia optio vel itaque aut aperiam et. Aliquid vel quasi ipsam. Eum itaque aut pariatur et laudantium id. Voluptates odit quam ut repellendus optio possimus illum. Suscipit ut et distinctio voluptatem autem hic repudiandae nihil. Consequatur qui omnis saepe ut ut. Voluptatem inventore voluptatem ipsum facere sed. Perferendis voluptates laudantium corrupti praesentium totam omnis.',NULL,NULL),(2,'Eka Jaya','http://via.placeholder.com/100x100','Quasi id ducimus libero quis. Debitis beatae repellendus expedita. Praesentium autem fuga sint delectus. Rem minus quas explicabo odio eum. Cupiditate eum voluptatem harum incidunt ullam nostrum non. Ab consequatur autem totam aut. Et quo consequatur dolorum et ex omnis ut neque. Consequatur velit totam veniam rerum nam similique. Optio et cupiditate nihil ullam voluptas sequi. Harum dolor saepe dolores et. Repudiandae voluptas id sed est est accusantium. Mollitia voluptatibus alias qui veniam minima. Adipisci nemo nihil soluta autem rerum dicta. Perferendis et totam occaecati est a eligendi. Voluptatem voluptas voluptates omnis recusandae error tempora. Cumque aliquid sint doloremque sapiente. Consequatur et et veniam ut quisquam voluptatem. Illum eligendi id occaecati quia perferendis aut. Quis ipsum repellendus quo ut voluptas omnis saepe ad. Praesentium sapiente adipisci illo aliquam sequi tenetur. Non facilis provident dignissimos consequatur quam veniam dicta. Quas nesciunt inventore ex. Ea blanditiis iusto amet aut nisi neque. Optio alias reprehenderit error ut rerum laborum natus. Rerum est et sapiente ratione. Rerum corrupti nam aut sit. Culpa voluptate nobis aut optio est. Iure molestiae deserunt porro tenetur omnis. Nihil facilis dolorem vitae officia. Doloremque omnis odio et blanditiis modi. Rem eligendi sunt architecto ipsum esse est. Blanditiis magnam eum consequuntur dolores quo voluptatum. Consequatur unde vitae dolor ut ut occaecati quia explicabo. Aut hic sequi saepe eum quia aperiam velit. Voluptatem labore quibusdam aut porro voluptatem omnis. Quis voluptatem culpa deserunt. Animi quidem ut fugiat aut voluptatem eos. Recusandae omnis repellendus est delectus eveniet est. Sit et nihil ut quo fugit laboriosam et. Sed consequatur dolorem aut id accusantium ut sint. Quia nisi consequuntur et inventore accusantium sed rerum. Officia at itaque unde repellendus accusamus. Ut itaque rerum unde ut voluptatem sunt et est. Sint quos fuga quae porro ut esse eligendi. Molestiae natus optio dolor doloremque dolor est. Similique eveniet sed sunt quo itaque beatae alias. Nisi magni aperiam deserunt molestiae facere eum voluptates. Officiis quibusdam adipisci perferendis blanditiis qui blanditiis dignissimos. Velit dolor est optio. Repudiandae aspernatur et modi est. Tenetur in vel neque ducimus. Autem iste in architecto quaerat nobis. Aliquam ratione eum esse similique rem est. Inventore possimus corrupti provident temporibus dolorem nesciunt. Recusandae quasi sint consectetur ut laborum ex nam non. Rerum quis id at. Sequi veritatis aut voluptas sint placeat. Est repudiandae id id eos. Quo eum voluptatem quaerat placeat voluptas. Est minima nam perspiciatis esse et eligendi quibusdam. Quibusdam facilis quia doloremque voluptas sed accusamus. Voluptas quod voluptas eos dolor est ipsum voluptate iure. Et occaecati amet tenetur eos qui sint corrupti. Architecto nobis eum aut nemo. Expedita omnis est ratione. Delectus omnis doloribus odio officiis aliquam non. Dolores debitis aut est. Maxime quasi qui eum saepe dolorum ea. Repellat cupiditate quas et. Nesciunt magni vero inventore rerum. Blanditiis alias numquam rerum vel. Eum neque dolorem ullam aperiam omnis. A velit quo qui at aut velit ducimus. Corrupti accusamus suscipit sapiente vel officia quos quam. Facere quos et quidem eum. Molestias ullam reiciendis in optio saepe voluptatem voluptatibus. Beatae nostrum nam suscipit dolorem qui consequatur. Quia voluptates repellat dolor ut magni. Incidunt dolore rerum quia et. Id provident consequatur repellendus hic praesentium. Occaecati similique facilis autem. Qui delectus nisi perferendis et cum tenetur. Rerum maiores temporibus ut unde consectetur. Nostrum itaque sed omnis eligendi nam. Culpa illum a occaecati vitae. Enim doloribus repellendus suscipit provident eos velit. Mollitia rerum voluptatem voluptatum possimus quasi a. Dolorem eaque ut soluta blanditiis. Ut explicabo quisquam id fugiat dolorem. Incidunt sint provident rem atque qui pariatur fuga. Ut sit in nobis reprehenderit voluptas quis aliquam. A ex voluptatibus officia sed maxime delectus vel. At labore perferendis nemo non repellat tenetur et. Et cumque ea aut voluptatem voluptas sed sunt. Sed nihil molestias esse molestiae. Alias officia atque nihil aut. Quis id recusandae fuga dolor corporis dolorem harum. Corporis eligendi est qui ut animi ullam rerum. Ipsum similique ea temporibus nesciunt. Distinctio cumque sunt molestiae quis non tenetur et. Officiis et dolorem facilis consequatur dolor. Reprehenderit mollitia harum ad quisquam ut sit eum. Aut aut laboriosam adipisci suscipit quis. Et tenetur aliquid rerum necessitatibus nam aspernatur. Quo et quidem est maxime temporibus expedita impedit. Reprehenderit ducimus sed magni. Non laborum ab deserunt et placeat exercitationem explicabo commodi. Veniam autem molestias ea sit aut similique quo.',NULL,NULL);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_responses`
--

DROP TABLE IF EXISTS `complaint_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint_responses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaint_id` int(11) NOT NULL,
  `admin_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_responses`
--

LOCK TABLES `complaint_responses` WRITE;
/*!40000 ALTER TABLE `complaint_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_statuses`
--

DROP TABLE IF EXISTS `complaint_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_statuses`
--

LOCK TABLES `complaint_statuses` WRITE;
/*!40000 ALTER TABLE `complaint_statuses` DISABLE KEYS */;
INSERT INTO `complaint_statuses` VALUES (1,'New',NULL,NULL),(2,'Resolved',NULL,NULL),(3,'Waiting User Reply',NULL,NULL),(4,'Waiting Admin Reply',NULL,NULL);
/*!40000 ALTER TABLE `complaint_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_types`
--

DROP TABLE IF EXISTS `complaint_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_types`
--

LOCK TABLES `complaint_types` WRITE;
/*!40000 ALTER TABLE `complaint_types` DISABLE KEYS */;
INSERT INTO `complaint_types` VALUES (1,'Inquiry',NULL,NULL),(2,'Refund',NULL,NULL),(3,'Reschedule',NULL,NULL);
/*!40000 ALTER TABLE `complaint_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaints` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaint_type_id` int(11) NOT NULL,
  `complaint_status_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ISOCode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'Indonesia Rupiah','IDR',NULL,NULL);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_of_places`
--

DROP TABLE IF EXISTS `group_of_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_of_places` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_of_places`
--

LOCK TABLES `group_of_places` WRITE;
/*!40000 ALTER TABLE `group_of_places` DISABLE KEYS */;
INSERT INTO `group_of_places` VALUES ('G1','Bali (All Ports)',NULL,NULL);
/*!40000 ALTER TABLE `group_of_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (24,'2014_10_12_000000_create_users_table',1),(25,'2014_10_12_100000_create_password_resets_table',1),(26,'2018_05_28_134202_create_group_of_places_table',1),(27,'2018_05_28_134649_create_places_table',1),(28,'2018_05_28_135104_create_routes_table',1),(29,'2018_05_28_135414_create_companies_table',1),(30,'2018_05_28_135528_create_vessels_table',1),(31,'2018_05_28_141656_create_places_has_group_of_places_table',1),(32,'2018_05_29_035759_create_table_vessels_has_routes',1),(33,'2018_05_29_132645_create_sessions_table',1),(34,'2018_05_30_053811_create_nationalities_table',1),(35,'2018_05_30_062305_create_bookings_table',1),(36,'2018_05_30_062534_create_travellers_table',1),(37,'2018_05_30_105642_create_payments_table',1),(38,'2018_05_30_105820_create_payment_methods_table',1),(39,'2018_05_30_110055_create_payment_statuses_table',1),(40,'2018_05_30_110805_create_currencies_table',1),(41,'2018_05_30_135416_create_bookings_has_travellers_table',1),(42,'2018_05_31_110408_create_complaint_types_table',1),(43,'2018_05_31_110718_create_complaint_statuses_table',1),(44,'2018_05_31_110948_create_complaints_table',1),(45,'2018_05_31_162121_create_complaint_responses_table',1),(46,'2018_06_01_034358_create_tours_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nationalities`
--

DROP TABLE IF EXISTS `nationalities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nationalities` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationalities`
--

LOCK TABLES `nationalities` WRITE;
/*!40000 ALTER TABLE `nationalities` DISABLE KEYS */;
INSERT INTO `nationalities` VALUES ('ID','Indonesia',NULL,NULL),('AU','Australia',NULL,NULL),('US','United States',NULL,NULL);
/*!40000 ALTER TABLE `nationalities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_methods` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES ('bank_transfer','Bank Transfer',NULL,NULL),('credit_card','Credit Card',NULL,NULL);
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_statuses`
--

DROP TABLE IF EXISTS `payment_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_statuses`
--

LOCK TABLES `payment_statuses` WRITE;
/*!40000 ALTER TABLE `payment_statuses` DISABLE KEYS */;
INSERT INTO `payment_statuses` VALUES (1,'Pending From Traveller',NULL,NULL),(2,'Pending From Bank Confirmation',NULL,NULL),(3,'Confirmed',NULL,NULL),(4,'Failed',NULL,NULL);
/*!40000 ALTER TABLE `payment_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payeeFullName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_method_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `booking_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'Frans Siswanto',431776,'credit_card',1,1,'201806011332480000001','2018-06-01 06:32:55','2018-06-01 06:32:55'),(2,'Frans Siswanto',746133,'credit_card',3,1,'201806011340540000002','2018-06-01 06:41:03','2018-06-01 06:41:28'),(3,'Frans Siswanto',645080,'credit_card',3,1,'201806011340540000003','2018-06-01 06:41:03','2018-06-01 06:41:28'),(4,'dsfsdf',542695,'credit_card',1,1,'201807040235340000004','2018-07-03 19:35:54','2018-07-03 19:35:54'),(5,'sadasd',431776,'credit_card',1,1,'201807040623060000005','2018-07-03 23:23:13','2018-07-03 23:23:13'),(6,'aa',431776,'credit_card',1,1,'201807040623060000005','2018-07-03 23:24:49','2018-07-03 23:24:49'),(7,'ada',431776,'credit_card',1,1,'201807040623060000005','2018-07-03 23:25:04','2018-07-03 23:25:04'),(8,'sada',431776,'credit_card',1,1,'201807090219490000006','2018-07-08 19:20:10','2018-07-08 19:20:10');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (1,'Padang Bai',NULL,NULL),(2,'Benoa',NULL,NULL),(3,'Sanur',NULL,NULL),(4,'Serangan',NULL,NULL),(5,'Gili Trawangan',NULL,NULL),(6,'Gili Air',NULL,NULL),(7,'Lembongan',NULL,NULL),(8,'Senggigi',NULL,NULL),(9,'Teluk Kode',NULL,NULL),(10,'Bangsal',NULL,NULL);
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places_has_group_of_places`
--

DROP TABLE IF EXISTS `places_has_group_of_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places_has_group_of_places` (
  `place_id` int(11) NOT NULL,
  `group_of_place_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places_has_group_of_places`
--

LOCK TABLES `places_has_group_of_places` WRITE;
/*!40000 ALTER TABLE `places_has_group_of_places` DISABLE KEYS */;
INSERT INTO `places_has_group_of_places` VALUES (1,'G1',NULL,NULL),(2,'G1',NULL,NULL),(3,'G1',NULL,NULL),(4,'G1',NULL,NULL);
/*!40000 ALTER TABLE `places_has_group_of_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `departurePort` int(11) NOT NULL,
  `departureTime` time NOT NULL,
  `arrivalPort` int(11) NOT NULL,
  `arrivalTime` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (1,4,'08:00:00',5,'10:30:00',NULL,NULL),(2,4,'08:00:00',9,'10:45:00',NULL,NULL),(3,4,'08:00:00',6,'10:45:00',NULL,NULL),(4,1,'08:00:00',5,'10:30:00',NULL,NULL),(5,1,'08:00:00',9,'10:45:00',NULL,NULL),(6,1,'08:00:00',6,'10:45:00',NULL,NULL),(7,1,'09:15:00',5,'10:30:00',NULL,NULL),(8,1,'09:15:00',9,'10:45:00',NULL,NULL),(9,1,'09:15:00',6,'11:00:00',NULL,NULL),(10,6,'11:15:00',1,'13:00:00',NULL,NULL),(11,6,'11:15:00',4,'14:30:00',NULL,NULL),(12,9,'11:30:00',1,'13:00:00',NULL,NULL),(13,9,'11:30:00',4,'14:30:00',NULL,NULL),(14,5,'11:45:00',1,'13:00:00',NULL,NULL),(15,5,'11:45:00',4,'14:30:00',NULL,NULL);
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('2TAENRyTLmNYuVql0Nb8I9DNJGLaWI96r4VTJLQi',NULL,'178.248.202.12','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531305369),('3LtEOFpw4puF9T2i6S5ioSGh4NmeRvIbWQhke5Dl',NULL,'125.167.177.106','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovL2lnZXRsb21ib2suY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1531272283),('3pGrgJaV4AFTLzW5kOFfFe9mupkUXNNgeYRI6Yq4',NULL,'87.252.171.230','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531256691),('6OfuDH3BSBK2l6HRJRU8dP6pcScpa8VoBQ0XxOB2',NULL,'191.253.40.9','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531280119),('7izFjicqBfm2X3KFTwSkc0C8GhuyPf0iwaCa7P45',NULL,'201.69.86.117','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531283505),('7n5W27hnrHLVDqn9OMITbriHMfTKkRmVhWpHJXYe',NULL,'46.152.153.103','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531277238),('9DLMAf9bFwaRjKQnI7hsp2fwafG79Tg9GVQhsR8b',NULL,'85.98.40.95','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531300363),('9qEClupLVCUu2prOcxPVvD4MZRwBSva4jtBkGlHJ',NULL,'80.51.212.171','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531251491),('Aa731doIwoD3fsJzSN16VL4AXlM8TUqB721rhlUB',NULL,'36.75.132.12','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovL2lnZXRsb21ib2suY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1531274394),('aFrE7kYCorcN4lgtzjtHrmSk53q9ybpfUt3Ep4XR',NULL,'202.152.7.238','WhatsApp/2.18.156 A','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovL2lnZXRsb21ib2suY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1531300212),('aKmRaBXigA2jzrnqBR2NeECgwjpKtuSKZg7dXlBQ',NULL,'190.94.148.15','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531299487),('bbUVi8RYRUKk4UvtQGqPvSVw1Xn1wq0xFNa3tuI6',NULL,'170.78.206.148','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531302968),('BQpOJ5HdfNDe3I58atvCSlqt2p7jvLNgp7UOJlz1',NULL,'115.178.250.150','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovL2lnZXRsb21ib2suY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1531301908),('CC50ueZwrzi6bM84ugXp2oBS8yPlqf61J6nr2UKg',NULL,'66.249.79.134','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovL2lnZXRsb21ib2suY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1531277535),('CmzMCFrL5yh12hchnu6WI75vDWeQJP2DdFwoaKZp',NULL,'115.178.250.150','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovL2lnZXRsb21ib2suY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1531301913),('GLcQPrfQMEr0XKbhF1PLFWQBBmATRKkttrhS1OY3',NULL,'123.249.9.149','','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531258215),('GZprqPhzQDEavlhhKOE6gTUpmWKMHJFY9UizxRTu',NULL,'197.245.129.211','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531313600),('hr6rEp0Pik2VC6M2me2bma0IhqV85qiAi2VNKa09',NULL,'189.19.102.147','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531296941),('hW3OCMLgTaBLsCgM6Duz9iWN7M19yxIwQjVCJ8D0',NULL,'143.202.224.24','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531296826),('HwSZdFusrsfYvVP59HGWW2TbInOUVkGX1ab2tiQT',NULL,'5.198.161.69','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531256123),('HZUZwb7FzLpC2Nxxnrtp51ofXLTXAalHT3yppaDO',NULL,'190.94.141.107','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531256887),('jya3Vjp6FxzwTZD1WJI0ODw55AEKxhqbB4l6Ucpf',NULL,'209.126.136.4','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531288469),('K1gcBxUQBmz1Xkh32XAMrc0q8M5i2kLHPyEvWhcg',NULL,'62.182.206.118','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531313170),('kmdpmtwOODbYZptwDxhSxh6aIXSKkHg6QBzjPyqx',NULL,'185.47.163.217','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531302353),('kthb9bUI1jxbeACcynr4RXOqWEjTIsX0MZ9pf5uI',NULL,'190.94.148.15','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531299486),('lJmgCTSAIjc2xlKy3BUrYG8cld1C2WBfcixCdUWL',NULL,'46.101.99.120','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531302411),('M2Kt2rqGYS6e6qRIcDpMla0e8EvzRSsYGetCTB9t',NULL,'179.228.82.188','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531301185),('moAFPtjW89GUAbnIjJB8RVMMhfmyoLwJ0rvpxUj3',NULL,'114.30.74.233','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531266828),('nhxDPC7lbUHIgSoG2jLddevDgzFqUvh2O4zi7Nr8',NULL,'80.78.74.130','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531292232),('o02XbKLW9fyJz5Tbd8pYuihjFnNi1vk5YVg4CrU2',NULL,'185.211.68.109','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531315086),('o1sDDXC3udnFjnNieBQWG6eKO2dkABlc4H5su4lb',NULL,'125.167.177.106','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovL2lnZXRsb21ib2suY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1531320810),('p5f1M95K2zIb9jpttIbYxWseoOsZca9mUPrwTDUE',NULL,'125.167.177.106','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovL2lnZXRsb21ib2suY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1531278649),('P8D4XNT49TSJkR19ThdNcqV7GG2kUwRzg4KVqMIS',NULL,'189.19.102.147','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531296941),('pab2lVdgmRsG8IsbkgRwjZmTOE9jcQzmw6h80ZxK',NULL,'202.62.58.29','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531319213),('puUM1tN8RDavxRqXVSgEBD8LNBHAiGawEbEeqxqI',NULL,'66.249.79.136','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovL2lnZXRsb21ib2suY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1531260094),('QJiV2cyX178F1IvvHu3p7LdYrBVXKpgfU1ESr4fA',NULL,'46.101.99.120','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531302412),('qKCNWwgoouKuobZMoNpM2L5GNnaF7U09wfpBScEK',NULL,'74.202.20.26','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531256307),('QvgZpZUrFQ6DgEuG8EmYbfPG6pO6zMPxpogzt43H',NULL,'177.95.3.92','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531256217),('Rd5kwrsXzuL2auQDIBZbB4Ek89HlzBnPS82Vw2nw',NULL,'197.215.213.68','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531263181),('s21Oz5TS4xpZosd8zkLWF5qybxxdZudjNnoPPGBV',NULL,'201.43.115.91','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531253624),('TMXA2xgV78ZqbSHrLkX94OR8gB9yAmE1VkqImCwa',NULL,'195.9.142.194','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531296067),('TOWw6gwDszpPuzsCtqqKsAP5cQMLWSvkmrgOX1Wd',NULL,'1.64.255.200','Mozilla/5.0 (Windows NT 6.1; WOW64) Chrome','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531304461),('TRLIQekuNpEPMwwJpQDCBoVPYlNTo7x7upc6KXLL',NULL,'74.202.20.26','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531256306),('uFO7Mo070YAz4uLgLrGzIi91QRWrit5JtjZpSOBb',NULL,'202.62.41.165','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531279557),('Uu8nnNmtJ9VUfunqERRLHuswU5HcCqTH1LbGROfX',NULL,'202.152.7.238','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovL2lnZXRsb21ib2suY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1531300200),('VhM42IcsWfqDl55tiLzkR5lAhlSgzMjfPkP8lw0m',NULL,'190.94.141.107','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531256888),('WcwQCdKMU0bUeAccJcq6ApDuzywvS0gfNuZntH8W',NULL,'167.249.103.140','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531258895),('WEMxPfD7p2xAqsk39iPNKMWvYkD0DZk4NTOa8e8m',NULL,'103.75.100.178','WhatsApp/2.18.203 A','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovL2lnZXRsb21ib2suY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1531321004),('X29q023FiFsSegxDo1LEZ6q1Pq7cYwMiQhIF3K64',NULL,'5.198.160.165','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531282294),('XHgPklY2aB6aNmnIhtU09RcbkfJU89kWpRWI5Okz',NULL,'189.19.102.147','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531296941),('y9KlzGOTP2Q72ETaraRfwwlH223Vib05Dqwuc0kc',NULL,'138.36.188.28','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531254304),('ymSKjrvnoZYFbVr8w6yghdhnrx3dfyufcwOQDE6x',NULL,'186.211.102.54','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531262409),('YqkMYiihucPKILuuDiejz79SbiFu9GGiEVVjDl01',NULL,'203.78.114.125','Mozilla/5.0 (Linux; Android 4.4.2; ASUS_Z007 Build/KVT49L) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovL2lnZXRsb21ib2suY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1531303476),('zOJh1Nopejj7oG25APIehdDUM2QHsuqqkpwaUlZN',NULL,'197.255.188.212','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YToyOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cDovLzEzOS4xNjIuMTIuMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1531286584);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS `tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tours` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours`
--

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;
INSERT INTO `tours` VALUES (1,'Komodo',NULL,NULL),(2,'Rinjani Mountain',NULL,NULL);
/*!40000 ALTER TABLE `tours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travellers`
--

DROP TABLE IF EXISTS `travellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travellers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personalID` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ageLevel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travellers`
--

LOCK TABLES `travellers` WRITE;
/*!40000 ALTER TABLE `travellers` DISABLE KEYS */;
INSERT INTO `travellers` VALUES (1,'Mr','111','Ngawur Pertama','Adult','ID',1,'2018-06-01 06:32:48','2018-06-01 06:32:48'),(2,'Mr','111','Ngawur Banget','Adult','ID',1,'2018-06-01 06:40:54','2018-06-01 06:40:54'),(3,'Mr','111','Ngawur Banget','Adult','ID',1,'2018-06-01 06:40:54','2018-06-01 06:40:54'),(4,'Mr','123123121','sdasd','Adult','ID',2,'2018-07-03 19:35:34','2018-07-03 19:35:34'),(5,'Mr','213312','sdfsdasd','Adult','ID',3,'2018-07-03 23:23:06','2018-07-03 23:23:06'),(6,'Mrs','1232132','sasas','Adult','ID',4,'2018-07-08 19:19:49','2018-07-08 19:19:49');
/*!40000 ALTER TABLE `travellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Frans Siswanto','+6281234076146','franssiswanto@gmail.com','$2y$10$f.z8F403qvvDIeUVIVRxGOqpY8m70HpepwsWDNRoCK03xG3LXy1Tu',NULL,'2018-06-01 06:32:48','2018-06-01 06:43:38'),(2,'adad','12124123','adsada@gmail.com',NULL,NULL,'2018-07-03 19:35:34','2018-07-03 19:35:34'),(3,'sfs','2123123','ada@gail.com',NULL,NULL,'2018-07-03 23:23:06','2018-07-03 23:23:06'),(4,'ada','123123','ada@gmail.com',NULL,NULL,'2018-07-08 19:19:49','2018-07-08 19:19:49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vessels`
--

DROP TABLE IF EXISTS `vessels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vessels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vessels`
--

LOCK TABLES `vessels` WRITE;
/*!40000 ALTER TABLE `vessels` DISABLE KEYS */;
INSERT INTO `vessels` VALUES (1,'BWE IX',100,1,NULL,NULL),(2,'BWE VII',50,1,NULL,NULL),(3,'BWE V',35,1,NULL,NULL),(4,'Ekajaya 23',180,2,NULL,NULL),(5,'Ekajaya 25',210,2,NULL,NULL),(6,'Ekajaya 26',210,2,NULL,NULL);
/*!40000 ALTER TABLE `vessels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vessels_has_routes`
--

DROP TABLE IF EXISTS `vessels_has_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vessels_has_routes` (
  `vessel_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `effectiveStartDate` int(11) NOT NULL,
  `effectiveEndDate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vessels_has_routes`
--

LOCK TABLES `vessels_has_routes` WRITE;
/*!40000 ALTER TABLE `vessels_has_routes` DISABLE KEYS */;
INSERT INTO `vessels_has_routes` VALUES (1,1,472429,1514764800,1546300800,NULL,NULL),(1,2,460006,1514764800,1546300800,NULL,NULL),(1,3,596212,1514764800,1546300800,NULL,NULL),(1,4,431776,1514764800,1546300800,NULL,NULL),(1,5,481159,1514764800,1546300800,NULL,NULL),(1,6,746133,1514764800,1546300800,NULL,NULL),(1,7,547776,1514764800,1546300800,NULL,NULL),(1,8,546184,1514764800,1546300800,NULL,NULL),(1,9,747669,1514764800,1546300800,NULL,NULL),(1,10,645080,1514764800,1546300800,NULL,NULL),(1,11,543241,1514764800,1546300800,NULL,NULL),(1,12,650019,1514764800,1546300800,NULL,NULL),(1,13,437976,1514764800,1546300800,NULL,NULL),(1,14,542695,1514764800,1546300800,NULL,NULL),(1,15,606416,1514764800,1546300800,NULL,NULL),(2,1,734015,1514764800,1546300800,NULL,NULL),(2,2,516573,1514764800,1546300800,NULL,NULL),(2,3,488088,1514764800,1546300800,NULL,NULL),(2,4,529288,1514764800,1546300800,NULL,NULL),(2,5,623201,1514764800,1546300800,NULL,NULL),(2,6,552716,1514764800,1546300800,NULL,NULL),(2,7,477894,1514764800,1546300800,NULL,NULL),(2,8,517523,1514764800,1546300800,NULL,NULL),(2,9,644530,1514764800,1546300800,NULL,NULL),(2,10,502984,1514764800,1546300800,NULL,NULL),(2,11,641765,1514764800,1546300800,NULL,NULL),(2,12,438303,1514764800,1546300800,NULL,NULL),(2,13,671910,1514764800,1546300800,NULL,NULL),(2,14,467946,1514764800,1546300800,NULL,NULL),(2,15,518445,1514764800,1546300800,NULL,NULL),(4,1,449420,1514764800,1546300800,NULL,NULL),(4,2,681507,1514764800,1546300800,NULL,NULL),(4,3,625390,1514764800,1546300800,NULL,NULL),(4,4,475499,1514764800,1546300800,NULL,NULL),(5,5,732404,1514764800,1546300800,NULL,NULL),(5,6,482295,1514764800,1546300800,NULL,NULL),(5,7,642177,1514764800,1546300800,NULL,NULL),(5,8,721452,1514764800,1546300800,NULL,NULL),(5,9,637503,1514764800,1546300800,NULL,NULL),(6,10,742313,1514764800,1546300800,NULL,NULL),(6,11,481393,1514764800,1546300800,NULL,NULL),(6,12,425082,1514764800,1546300800,NULL,NULL),(6,13,678812,1514764800,1546300800,NULL,NULL),(6,14,748603,1514764800,1546300800,NULL,NULL),(6,15,734766,1514764800,1546300800,NULL,NULL),(6,1,745454,1514764800,1546300800,NULL,NULL),(6,2,661659,1514764800,1546300800,NULL,NULL),(6,3,504609,1514764800,1546300800,NULL,NULL);
/*!40000 ALTER TABLE `vessels_has_routes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-11 21:57:10
