CREATE DATABASE  IF NOT EXISTS `ekrushi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ekrushi`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: ekrushi
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `questionid` int NOT NULL,
  `likes` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkcategory12` (`questionid`),
  CONSTRAINT `fkcategory12` FOREIGN KEY (`questionid`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'You can enhance soil fertility through practices like adding organic matter (compost or manure),\r\n                                                                     conducting soil tests to determine nutrient needs, and practicing crop rotation.',1,7),(2,'In organic farming, you can use methods like companion planting, beneficial insects, and organic pesticides to control pests and weeds without synthetic chemicals.',2,6),(3,' Implement water-efficient irrigation methods such as drip irrigation or sprinkler systems, and schedule irrigation based on the specific water needs of your crops.',3,5),(4,'Choose crop varieties that are well-suited to your local climate, soil type, and disease resistance to optimize yield and reduce risks.',4,13),(5,'You can minimize post-harvest losses by using proper storage facilities, maintaining the right temperature and humidity levels, and adopting good handling practices.',5,7),(6,' Many governments offer programs, grants, and subsidies to encourage sustainable and environmentally friendly farming practices. Its worth exploring these opportunities.',6,6),(7,' Transitioning to organic farming may involve gradually reducing chemical inputs, adopting organic certification standards, and learning about organic pest and weed management techniques.',7,8),(8,' Strategies to improve profitability may include diversifying crops, exploring niche markets, reducing production costs, and optimizing resource use.',8,7),(9,'Signs of nutrient deficiencies can include yellowing leaves, stunted growth, and poor fruiting. Address them by applying the appropriate nutrients through fertilization.',9,6),(10,'Climate change can affect growing seasons and precipitation patterns. To adapt, consider adjusting planting dates, selecting climate-resilient crops, and implementing efficient water management.',10,9),(11,'Improving livestock health involves providing proper nutrition, clean water, shelter, and regular veterinary care. Its also important to manage stress factors and ensure good sanitation practices.',11,9),(12,'Effective grazing management includes rotational grazing, maintaining pasture health, and ensuring access to fresh forage to optimize your livestocks nutrition.',12,7),(13,'Look for signs like changes in behavior, weight loss, or abnormal physical symptoms. Consult with a veterinarian for a proper diagnosis and treatment plan.',13,9),(14,'To improve livestock genetics, consider selective breeding, artificial insemination, or using high-quality breeding stock to enhance desirable traits in your herd or flock.',14,6),(15,'Proper handling and transportation techniques help reduce stress and ensure the safety of both animals and handlers. Learn about low-stress handling methods and comply with transportation regulations.',15,8),(16,'Effective marketing strategies may include identifying target markets, establishing relationships with buyers, and utilizing online platforms or local markets to sell your livestock and products.',16,10),(17,'Consider factors like animal comfort, ventilation, waste management, and biosecurity when designing or updating your livestock facilities.',17,8),(18,'Technology can improve livestock farming through tools like automated feeding systems, health monitoring devices, and data analytics to enhance productivity and animal welfare.',18,8),(19,'Sustainable livestock farming practices may involve conserving water, reducing waste, using renewable energy sources, and adopting rotational grazing to preserve soil health.',19,5),(20,'Explore government grants, subsidies, and agricultural extension services that may offer financial support and guidance to improve your livestock farming operation.',20,13),(21,'Stay updated on innovations like autonomous tractors, precision planting systems, and remote monitoring technology to see how they can improve your farms efficiency.',21,4),(22,'Regular maintenance, proper calibration, and following manufacturer guidelines for equipment use are essential to keep your farm machinery in top working condition.',22,8),(23,'Explore financing options, including loans, leasing, or government programs, that can help you acquire the necessary equipment and technology for your farm.',23,2),(24,'Seek advice from equipment dealers or agricultural experts who can assess your farms requirements and recommend suitable machinery.',24,9),(25,'You can use farm management software to collect and analyze data from sensors and machinery, enabling you to make informed decisions about planting, irrigation, and more.',25,7),(26,' Proper storage includes cleaning, covering, and securing machinery to protect it from the elements and potential theft.',26,9),(27,' Learn about basic troubleshooting techniques for common machinery problems, such as engine issues or hydraulic system malfunctions, to minimize downtime.',27,8),(28,'Look for equipment rental services in your area, which can be cost-effective for occasional or specialized tasks.',28,7),(29,'Ensure all operators receive proper training and follow safety protocols, including wearing appropriate protective gear and conducting pre-operation checks.',29,7),(30,'Explore the benefits of technology like automated feeders, which can improve feed efficiency and reduce labor while ensuring proper nutrition for your livestock.',30,4),(31,'Organic farming avoids synthetic chemicals and genetically modified organisms (GMOs) and focuses on soil health, crop rotation, and organic fertilizers to promote sustainability.',31,7),(32,'The transition typically involves ceasing the use of synthetic pesticides and fertilizers, adopting organic practices, and undergoing a certification process. Consult with organic farming experts for guidance.',32,2),(33,'Organic pest control methods include beneficial insects, companion planting, neem oil, and organic pesticides that are approved for organic farming.',33,12),(34,'Practices such as cover cropping, composting, reduced tillage, and crop rotation can enhance soil health and fertility in organic farming.',34,9),(35,' Strategies include mulching, mechanical cultivation, flame weeding, and using cover crops that suppress weeds.',35,8),(36,'  Sustainable farming practices promote long-term environmental stewardship, conserve natural resources, reduce chemical inputs, and improve soil and water quality.',36,7),(37,' Implement water-efficient irrigation methods, such as drip or pivot irrigation, and use soil moisture monitoring systems to optimize water use.',37,6),(38,' Organic fertilizers like compost, manure, bone meal, and fish emulsion can provide essential nutrients to crops without synthetic chemicals.',38,5),(39,'Sustainable livestock management involves rotational grazing, proper animal welfare practices, and using organic feed and forage whenever possible.',39,4),(40,'Utilize organic certification labels, participate in local farmers markets, and establish partnerships with restaurants and retailers that support sustainable and organic products.',40,12),(41,'Creating a comprehensive budget involves listing all expenses (such as seeds, labor, and equipment maintenance) and estimating income from crop sales, livestock, and other sources.',41,12),(42,'Key financial ratios include the debt-to-equity ratio, the current ratio, and the return on assets. These ratios can provide insights into your farms financial stability and efficiency.',42,11),(43,' Assess your resources, market demand, and production capabilities to determine the right size and scope for your farm. Consider factors like available land and labor, as well as your financial goals.',43,10),(44,' Effective marketing strategies may include developing a strong online presence, participating in farmers markets, establishing relationships with restaurants and retailers, and utilizing social media.',44,9),(45,'  Negotiating fair contracts involves understanding market prices, product quality standards, and the terms and conditions of agreements. Seek legal advice if necessary.',45,8),(46,' Strategies include maintaining a cash reserve, securing lines of credit, and aligning expenses with revenue to avoid cash flow shortages.',46,5),(47,' Consult with a tax advisor to understand the tax advantages and disadvantages of different business structures and choose the one that suits your farms needs.',47,7),(48,'Diversification can include adding new crops or livestock, offering agritourism activities, or producing value-added products like jams or cheeses.',48,4),(49,'Transitioning may involve initial investment in soil health and organic certification. Assess the long-term economic benefits and consider grants or subsidies available for sustainable practices.',49,8),(50,'Look for agricultural extension services, farm management courses, and government agencies that offer guidance and resources to help farmers manage their farm businesses effectively.',50,7),(51,' Consider factors like temperature, precipitation, soil type, and local market demand when selecting crops or livestock breeds that are well-suited to your region.',51,8),(52,'Solutions may include rainwater harvesting, efficient irrigation systems, and drought-resistant crop varieties to optimize water use during dry spells.',52,6),(53,' Frost protection methods include using frost blankets, wind machines, and selecting frost-tolerant crop varieties.',53,3),(54,'Practices like contour farming, terracing, and cover cropping can help prevent soil erosion on slopes.',54,2),(55,' Timing your planting and harvesting to align with the rainy season can optimize crop growth and yield.',55,4),(56,' Factors to consider include greenhouse design, heating options, and insulation to create a suitable microclimate for your crops.',56,8),(57,' Soil amendments like gypsum, proper drainage systems, and salt-tolerant crop varieties can help address salt-affected soils.',57,7),(58,' Humid regions may have issues with fungal diseases and insect pests. Integrated pest management (IPM) practices, proper sanitation, and disease-resistant crop varieties can help manage these challenges.',58,8),(59,' Crop rotation and diversification can help spread risk and reduce the impact of adverse weather conditions on the farm.',59,6),(60,' Local farmer networks, agricultural cooperatives, and extension services can provide opportunities to connect with other farmers and share insights about regional farming challenges and solutions.',60,5),(61,' Key safety measures include providing training, using protective equipment, maintaining machinery, and establishing safety protocols for tasks like handling chemicals or working with livestock.',61,9),(62,'Regulations may vary by location, but they often cover areas like worker safety, chemical handling, and food safety. Consult with local agricultural agencies or authorities to understand and adhere to relevant regulations.',62,18),(63,' Implement safety practices like equipment inspections, proper machine guarding, and safe operating procedures. Provide training to all personnel operating machinery.',63,16),(64,' Establish child safety guidelines, including restricted access to hazardous areas, supervision, and age-appropriate tasks for children.',64,15),(65,'Practices like maintaining firebreaks, proper storage of flammable materials, and having firefighting equipment on hand can help reduce fire risks.',65,13),(66,'  Biosecurity measures may include quarantine for new animals, proper sanitation, and limiting visitor access to prevent the spread of diseases.',66,12),(67,'  Implement food safety practices such as proper handling, storage, and labeling of farm products, and consider obtaining any necessary food safety certifications.',67,11),(68,'  Yes, safety precautions include proper storage, labeling, and handling procedures for chemicals. Follow the manufacturers instructions and local regulations.',68,14),(69,'Properly store and dispose of hazardous materials like pesticides, chemicals, and used oil according to local regulations and guidelines.',69,12),(70,'Look for local agricultural extension services, farm safety organizations, and training programs that offer guidance and support for farm safety and regulatory compliance.',70,23),(71,'Look for agricultural extension programs, research institutions, and industry publications that offer information on cutting-edge farming practices.',71,8),(72,' Many agricultural colleges and organizations offer courses and programs tailored to farmers interested in transitioning to organic farming.',72,7),(73,'Explore local workshops, online courses, and resources provided by sustainable agriculture organizations to learn about these practices.',73,8),(74,' Some training programs may offer financial incentives or scholarships. Additionally, check with agricultural agencies and organizations for funding opportunities.',74,7),(75,' Look for local mentorship programs or agricultural associations that facilitate connections between experienced and aspiring farmers.',75,6),(76,'Farm business management courses typically cover topics such as budgeting, marketing, record-keeping, and risk management.',76,5),(77,' Reach out to local farms, agricultural colleges, and organizations that offer apprenticeship programs to gain practical experience.',77,4),(78,' Farming cooperatives and associations can provide networking, support, and educational opportunities. Search online or ask fellow farmers for recommendations.',78,17),(79,' Some government programs may provide grants or tax incentives to support farmers education and training efforts.',79,15),(80,'Time management and prioritization are key. Allocate dedicated time for learning, and consider online or flexible training options to fit your schedule.',80,14),(81,' Specialty farming focuses on the production of unique or niche crops, products, or livestock that cater to specific markets or consumer preferences, often deviating from traditional mainstream agriculture.',81,5),(82,' Research local market demands, consumer trends, and potential niche products to identify profitable opportunities for your farm.',82,7),(83,'Specialty crop success involves understanding specific growing conditions, disease management, and finding the right market outlets for your products.',83,9),(84,' Yes, there are often certification processes and quality standards for specialty and organic products. Consult with certifying bodies and follow their guidelines for compliance.',84,7),(85,' Effective marketing strategies include branding, participating in farmers markets, building relationships with local chefs and restaurants, and utilizing social media and online platforms.',85,7),(86,' Challenges may include smaller market sizes, while benefits may include higher prices per unit and the preservation of rare or endangered breeds.',86,4),(87,'  Explore agricultural extension services, specialty crop grants, and local agricultural organizations that offer resources and support for specialty farmers.',87,8),(88,' Diversification involves careful market research, risk assessment, and a well-thought-out business plan that includes both mainstream and specialty products.',88,13),(89,'Specialty farming practices should align with sustainable and environmentally responsible methods, which may include organic or regenerative farming techniques.',89,12),(90,' Attend specialty crop conferences, subscribe to niche farming publications, and network with other specialty farmers to stay informed about trends and opportunities.',90,12),(91,' Consider implementing practices like crop rotation, cover cropping, and organic matter additions to enhance soil health and fertility.',91,2),(92,'Implement best management practices (BMPs) like controlled drainage, nutrient management plans, and riparian buffer zones to reduce runoff and protect water quality.',92,3),(93,' Explore labor-saving technologies such as automated machinery and consider hiring seasonal or temporary workers to meet labor demands.',93,2),(94,' Focus on proper nutrition, housing, and disease prevention through vaccination and biosecurity measures to promote animal welfare and productivity.',94,5),(95,' Implement energy-efficient practices such as upgrading equipment, using renewable energy sources, and optimizing building insulation.',95,4),(96,'Consider diversifying your income sources, exploring contract farming agreements, and using risk management tools like futures contracts to hedge against price fluctuations.',96,8),(97,'  Develop resilient farming practices like drought-tolerant crops, efficient irrigation, and improved drainage systems to adapt to climate variability.',97,4),(98,' Build a strong online presence, participate in farmers  markets, offer farm-to-table experiences, and engage with community-supported agriculture (CSA) programs.',98,4),(99,'Gradually transition by implementing organic practices, improving soil health, and seeking organic certification when ready.',99,12),(100,'Create a comprehensive farm business plan, monitor key performance indicators, and continually seek opportunities for improvement and innovation.',100,10);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartitems`
--

DROP TABLE IF EXISTS `cartitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cartid` int NOT NULL,
  `productdetailsid` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk02` (`cartid`),
  KEY `fkproduct2` (`productdetailsid`),
  CONSTRAINT `fk02` FOREIGN KEY (`cartid`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkproduct2` FOREIGN KEY (`productdetailsid`) REFERENCES `productdetails` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartitems`
--

LOCK TABLES `cartitems` WRITE;
/*!40000 ALTER TABLE `cartitems` DISABLE KEYS */;
INSERT INTO `cartitems` VALUES (1,1,1,5),(2,2,2,4),(3,3,3,4),(4,4,4,1),(5,5,5,5),(6,6,6,2),(7,7,7,2),(8,8,8,5),(9,9,9,4),(10,10,10,4),(11,11,11,1),(12,12,12,5),(13,13,13,2),(14,14,14,2),(15,15,15,5),(16,1,16,5),(17,2,17,4),(18,3,18,4),(19,4,19,1),(20,5,20,5),(21,6,21,2),(22,7,22,2),(23,8,23,5),(24,9,24,4),(25,10,25,4),(26,11,26,1),(27,12,27,5),(28,13,28,2),(29,14,29,2),(30,15,30,5),(31,1,31,5),(32,2,32,4),(33,3,33,4),(34,4,34,1),(35,5,35,5),(36,6,36,2),(37,7,37,2),(38,8,38,5),(39,9,39,4),(40,10,40,4),(41,11,41,1),(42,12,42,5),(43,13,43,2),(44,14,44,2),(45,15,45,5),(46,1,46,5),(47,2,47,4),(48,3,48,4),(49,4,49,1),(50,5,50,5),(51,6,51,2),(52,7,52,2),(53,8,53,5),(54,9,54,4),(55,10,55,4),(56,11,56,1),(57,12,57,5),(58,13,58,2),(59,14,59,2),(60,15,60,5),(61,1,61,5),(62,2,62,4),(63,3,63,4),(64,4,64,1),(65,5,65,5),(66,6,66,2),(67,7,67,2),(68,8,68,5),(69,9,69,4),(70,10,70,4),(71,11,71,1),(72,12,72,5),(73,13,73,2),(74,14,74,2),(75,15,75,5),(76,1,76,5),(77,2,77,4),(78,3,78,4),(79,4,78,1),(80,5,79,5),(81,6,80,2),(82,7,81,2),(83,8,82,5),(84,9,83,4),(85,10,84,4),(86,11,85,1),(87,12,86,5),(88,13,87,2),(89,14,88,2),(90,15,89,5),(91,12,90,5),(92,13,91,2),(93,14,92,2),(94,15,93,5);
/*!40000 ALTER TABLE `cartitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_1` (`customerid`),
  CONSTRAINT `fk_1` FOREIGN KEY (`customerid`) REFERENCES `userroles` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,2),(2,3),(3,15),(4,16),(5,17),(6,18),(7,19),(8,20),(9,21),(10,22),(11,23),(12,24),(13,25),(14,26),(15,27);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'seeds','/assets/seed.jpeg'),(2,'Agriculture implements','/assets/Agri Equipments.jpeg'),(3,'fertilizers','/assets/fertilizer.jpeg'),(4,'pesticides','/assets/pestisides.jpeg'),(5,'cattel feed','/assets/cattle feed.jpeg');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerquestions`
--

DROP TABLE IF EXISTS `customerquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerquestions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `questionid` int NOT NULL,
  `customerid` int NOT NULL,
  `questiondate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkques` (`questionid`),
  KEY `fk_cust_11` (`customerid`),
  CONSTRAINT `fk_cust_11` FOREIGN KEY (`customerid`) REFERENCES `userroles` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkques` FOREIGN KEY (`questionid`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerquestions`
--

LOCK TABLES `customerquestions` WRITE;
/*!40000 ALTER TABLE `customerquestions` DISABLE KEYS */;
INSERT INTO `customerquestions` VALUES (1,1,2,'2023-09-01 00:00:00'),(2,2,3,'2023-09-01 00:00:00'),(3,3,15,'2023-09-01 00:00:00'),(4,4,16,'2023-09-01 00:00:00'),(5,5,17,'2023-09-02 00:00:00'),(6,6,18,'2023-09-02 00:00:00'),(7,7,19,'2023-09-02 00:00:00'),(8,8,20,'2023-09-03 00:00:00'),(9,9,21,'2023-09-03 00:00:00'),(10,10,22,'2023-09-03 00:00:00'),(11,11,23,'2023-09-03 00:00:00'),(12,12,24,'2023-09-03 00:00:00'),(13,13,25,'2023-09-03 00:00:00'),(14,14,3,'2023-09-03 00:00:00'),(15,15,2,'2023-09-04 00:00:00'),(16,16,3,'2023-09-04 00:00:00'),(17,17,15,'2023-09-04 00:00:00'),(18,18,16,'2023-09-05 00:00:00'),(19,19,17,'2023-09-05 00:00:00'),(20,20,18,'2023-09-06 00:00:00'),(21,21,19,'2023-09-07 00:00:00'),(22,22,20,'2023-09-08 00:00:00'),(23,13,21,'2023-09-09 00:00:00'),(24,23,22,'2023-09-10 00:00:00'),(25,24,23,'2023-09-10 00:00:00'),(26,25,24,'2023-09-11 00:00:00'),(27,26,25,'2023-09-12 00:00:00'),(28,27,2,'2023-09-12 00:00:00'),(29,28,3,'2023-09-13 00:00:00'),(30,29,15,'2023-09-13 00:00:00'),(31,30,16,'2023-09-13 00:00:00'),(32,31,17,'2023-09-14 00:00:00'),(33,32,18,'2023-09-14 00:00:00'),(34,33,19,'2023-09-14 00:00:00'),(35,34,20,'2023-09-15 00:00:00'),(36,35,21,'2023-09-16 00:00:00'),(37,36,22,'2023-09-17 00:00:00'),(38,37,23,'2023-09-17 00:00:00'),(39,38,24,'2023-09-17 00:00:00'),(40,39,25,'2023-09-17 00:00:00'),(41,40,2,'2023-09-18 00:00:00'),(42,41,3,'2023-09-18 00:00:00'),(43,42,2,'2023-09-19 00:00:00'),(44,43,15,'2023-09-19 00:00:00'),(45,44,16,'2023-09-20 00:00:00'),(46,45,17,'2023-09-20 00:00:00'),(47,46,18,'2023-09-20 00:00:00'),(48,47,19,'2023-09-20 00:00:00'),(49,48,20,'2023-09-21 00:00:00'),(50,49,21,'2023-09-21 00:00:00'),(51,50,22,'2023-09-21 00:00:00'),(52,51,23,'2023-09-21 00:00:00'),(53,52,24,'2023-09-22 00:00:00'),(54,53,25,'2023-09-22 00:00:00'),(55,54,3,'2023-09-23 00:00:00'),(56,55,2,'2023-09-23 00:00:00'),(57,56,15,'2023-09-23 00:00:00'),(58,57,16,'2023-09-23 00:00:00'),(59,58,17,'2023-09-23 00:00:00'),(60,59,18,'2023-09-24 00:00:00'),(61,60,19,'2023-09-24 00:00:00'),(62,61,20,'2023-09-24 00:00:00'),(63,62,21,'2023-09-24 00:00:00'),(64,63,22,'2023-09-24 00:00:00'),(65,64,23,'2023-09-24 00:00:00'),(66,65,24,'2023-09-25 00:00:00'),(67,66,25,'2023-09-25 00:00:00'),(68,67,2,'2023-09-25 00:00:00'),(69,68,3,'2023-09-25 00:00:00'),(70,69,15,'2023-09-26 00:00:00'),(71,70,16,'2023-09-26 00:00:00'),(72,71,17,'2023-09-26 00:00:00'),(73,72,18,'2023-09-26 00:00:00'),(74,73,19,'2023-09-26 00:00:00'),(75,74,20,'2023-09-26 00:00:00'),(76,75,21,'2023-09-26 00:00:00'),(77,76,22,'2023-09-26 00:00:00'),(78,77,23,'2023-09-26 00:00:00'),(79,78,24,'2023-09-26 00:00:00'),(80,79,25,'2023-09-27 00:00:00'),(81,80,2,'2023-09-27 00:00:00'),(82,81,3,'2023-09-27 00:00:00'),(83,82,15,'2023-09-27 00:00:00'),(84,83,16,'2023-09-27 00:00:00'),(85,84,17,'2023-09-28 00:00:00'),(86,85,18,'2023-09-28 00:00:00'),(87,86,19,'2023-09-29 00:00:00'),(88,87,20,'2023-09-29 00:00:00'),(89,88,21,'2023-09-29 00:00:00'),(90,89,22,'2023-09-29 00:00:00'),(91,90,23,'2023-09-29 00:00:00'),(92,91,24,'2023-09-29 00:00:00'),(93,92,25,'2023-09-29 00:00:00'),(94,93,2,'2023-09-30 00:00:00'),(95,94,3,'2023-09-30 00:00:00'),(96,95,15,'2023-09-30 00:00:00'),(97,96,16,'2023-09-30 00:00:00'),(98,97,17,'2023-09-30 00:00:00'),(99,98,18,'2023-09-30 00:00:00'),(100,99,26,'2023-09-30 00:00:00'),(101,100,27,'2023-09-30 00:00:00');
/*!40000 ALTER TABLE `customerquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderid` int NOT NULL,
  `productdetailsid` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkorder` (`orderid`),
  KEY `fkproduct` (`productdetailsid`),
  CONSTRAINT `fkorder` FOREIGN KEY (`orderid`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkproduct` FOREIGN KEY (`productdetailsid`) REFERENCES `productdetails` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,2,2,4),(2,2,17,4),(3,2,32,4),(4,2,47,4),(5,2,62,4),(6,2,77,4),(7,3,5,1),(8,3,16,1),(9,4,3,1),(10,4,14,1),(11,5,56,1),(12,5,62,10),(13,6,1,5),(14,6,16,5),(15,6,31,5),(16,6,46,5),(17,6,76,5),(18,7,12,1),(19,7,70,1),(20,8,7,1),(21,8,8,2),(22,9,42,1),(23,9,44,2),(24,10,78,1),(25,10,80,1),(26,11,20,1),(27,12,3,4),(28,12,18,4),(29,12,63,4),(30,13,34,2),(31,13,32,1),(32,14,70,2),(33,14,62,1),(34,15,30,1),(35,16,28,1),(36,17,26,1),(37,18,4,1),(38,18,19,1),(39,18,34,1),(40,19,20,1),(41,20,74,1),(42,20,76,1),(43,21,35,5),(44,21,50,5),(45,22,42,6),(46,22,44,5),(47,23,32,2),(48,23,31,2),(49,24,25,2),(50,25,18,1),(51,26,6,2),(52,26,21,2),(53,26,36,2),(54,26,51,2),(55,26,66,2),(56,26,80,2),(57,26,20,1),(58,27,48,1),(59,28,21,3),(60,29,86,2),(61,30,29,3),(62,31,7,2),(63,31,22,2),(64,31,37,2),(65,31,52,2),(66,31,67,2),(67,31,81,2),(68,31,12,1),(69,32,43,10),(70,33,64,6),(71,34,8,5),(72,34,23,5),(73,34,38,5),(74,34,53,5),(75,34,68,5),(76,34,82,5),(77,34,3,1),(78,35,27,10),(79,36,72,6),(80,37,46,1),(81,38,6,7),(82,39,78,2),(83,40,34,10),(84,41,9,4),(85,41,24,4),(86,41,39,4),(87,41,54,4),(88,41,69,4),(89,41,83,4),(90,41,18,1),(91,42,38,1),(92,43,68,1),(93,44,68,1),(94,45,35,1),(95,46,62,4),(96,47,42,1),(97,48,16,5),(98,49,14,4),(99,50,45,1),(100,51,10,4),(101,51,25,4),(102,51,40,4),(103,51,55,4),(104,51,70,4),(105,51,84,4),(106,51,88,1),(107,52,69,5),(108,53,27,1),(109,54,23,1),(110,55,54,3),(111,56,11,1),(112,56,26,1),(113,56,40,1),(114,56,56,1),(115,56,71,1),(116,56,85,1),(117,56,31,1),(118,57,86,1),(119,58,29,3),(120,59,38,1),(121,60,38,1),(122,61,12,5),(123,61,27,5),(124,61,42,5),(125,61,57,5),(126,61,72,5),(127,61,86,5),(128,61,90,5),(129,61,5,1),(130,62,5,1),(131,63,6,1),(132,64,46,1),(133,65,8,1),(134,66,31,1),(135,67,27,1),(136,68,14,1),(137,69,10,2),(138,70,13,2),(139,70,28,2),(140,70,43,2),(141,70,58,2),(142,70,73,2),(143,70,87,2),(144,70,91,2),(145,70,32,1),(146,71,10,1),(147,72,25,1),(148,73,38,1),(149,74,46,1),(150,75,47,1),(151,76,14,2),(152,76,29,2),(153,76,44,2),(154,76,59,2),(155,76,74,2),(156,76,88,2),(157,76,92,2),(158,76,56,1),(159,77,66,1),(160,78,12,1),(161,79,54,1),(162,79,56,1),(163,80,21,1),(164,80,50,1),(165,81,15,5),(166,81,30,5),(167,81,45,5),(168,81,60,5),(169,81,75,5),(170,82,20,1),(171,82,23,1),(172,83,42,1),(173,83,44,3),(174,84,78,1),(175,85,29,1),(176,85,31,1),(177,86,72,1),(178,87,42,4),(179,87,50,3),(180,88,48,1),(181,89,34,2),(182,90,62,3),(183,90,66,1),(184,91,5,3),(185,92,47,4),(186,93,5,1),(187,93,3,4);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `shippeddate` datetime DEFAULT ((curdate() + interval 7 day)),
  `customerid` int NOT NULL,
  `addressid` int NOT NULL,
  `storeid` int DEFAULT NULL,
  `total` double DEFAULT NULL,
  `status` enum('pending','approved','ready to dispatch','picked','inprogress','cancelled','delivered') NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`),
  KEY `fk_storeid` (`storeid`),
  KEY `fk_cust_id_11` (`customerid`),
  CONSTRAINT `fk_cust_id_11` FOREIGN KEY (`customerid`) REFERENCES `userroles` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_storeid` FOREIGN KEY (`storeid`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (2,'2023-07-01 16:57:20','2023-07-05 16:57:20',3,3,4,14760,'delivered'),(3,'2023-07-02 16:58:34','2023-07-06 16:58:34',3,3,4,2620,'delivered'),(4,'2023-07-03 16:59:03','2023-07-07 16:59:03',3,3,4,1700,'delivered'),(5,'2023-07-04 16:59:51','2023-07-08 16:59:51',3,3,4,10620,'delivered'),(6,'2023-07-05 17:02:19','2023-07-09 17:02:19',2,2,4,18450,'delivered'),(7,'2023-07-06 17:02:45','2023-07-10 17:02:45',2,2,4,470,'delivered'),(8,'2023-07-07 17:03:28','2023-07-11 17:03:28',2,2,4,740,'delivered'),(9,'2023-07-08 17:04:01','2023-07-12 17:04:01',2,2,4,1700,'delivered'),(10,'2023-07-09 17:04:50','2023-07-13 17:04:50',2,2,4,1500,'delivered'),(11,'2023-07-10 17:05:54','2023-07-14 17:05:54',15,7,4,250,'delivered'),(12,'2023-07-11 17:06:23','2023-07-15 17:06:23',15,7,4,12400,'delivered'),(13,'2023-07-12 17:06:49','2023-07-16 17:06:49',15,7,4,3470,'delivered'),(14,'2023-07-13 17:07:20','2023-07-17 17:07:20',15,7,4,1550,'delivered'),(15,'2023-07-14 17:07:41','2023-07-18 17:07:41',15,7,4,600,'delivered'),(16,'2023-10-01 17:08:34','2023-10-02 17:08:34',16,8,1,5000,'delivered'),(17,'2023-10-02 17:09:23','2023-10-03 17:09:23',16,8,1,4000,'delivered'),(18,'2023-10-03 17:09:53','2023-10-04 17:09:53',16,8,1,4560,'delivered'),(19,'2023-10-04 17:10:07','2023-10-05 17:10:07',16,8,1,250,'delivered'),(20,'2023-10-05 17:10:34','2023-10-06 17:10:34',16,8,1,1500,'delivered'),(21,'2023-10-06 17:11:41','2023-10-07 17:11:41',17,9,1,5250,'delivered'),(22,'2023-10-07 17:12:15','2023-10-08 17:12:15',17,9,1,6350,'delivered'),(23,'2023-10-08 17:12:54','2023-10-09 17:12:54',17,9,1,5500,'delivered'),(24,'2023-10-09 17:13:24','2023-10-10 17:13:24',17,9,1,6000,'delivered'),(25,'2023-10-10 17:14:04','2023-10-11 17:14:04',17,9,1,1200,'delivered'),(26,'2023-10-11 17:16:12','2023-10-12 17:16:12',18,10,1,16950,'delivered'),(27,'2023-10-12 17:16:37','2023-10-13 17:16:37',18,10,1,750,'delivered'),(28,'2023-10-13 17:17:01','2023-10-14 17:17:01',18,10,1,1200,'delivered'),(29,'2023-10-14 17:17:29','2023-10-15 17:17:29',18,10,1,1600,'delivered'),(30,'2023-10-15 17:18:01','2023-11-16 17:18:01',18,10,1,960,'delivered'),(31,'2023-07-30 17:18:52','2023-08-02 17:18:52',19,11,2,8760,'delivered'),(32,'2023-08-01 17:19:32','2023-08-03 17:19:32',19,11,2,12000,'delivered'),(33,'2023-08-02 17:20:28','2023-08-04 17:20:28',19,11,2,720,'delivered'),(34,'2023-08-03 17:21:13','2023-08-05 17:21:13',20,12,2,19000,'delivered'),(35,'2023-08-04 17:21:42','2023-08-06 17:21:42',20,12,2,25000,'delivered'),(36,'2023-08-05 17:22:06','2023-08-07 17:22:06',20,12,2,1800,'delivered'),(37,'2023-08-06 17:22:24','2023-08-08 17:22:24',20,12,2,150,'delivered'),(38,'2023-08-07 17:22:48','2023-08-09 17:22:48',20,12,2,1750,'delivered'),(39,'2023-08-08 17:23:12','2023-08-10 17:23:12',20,12,2,1400,'delivered'),(40,'2023-08-09 17:23:43','2023-08-11 17:23:43',20,12,2,16100,'delivered'),(41,'2023-08-10 17:24:39','2023-08-12 17:24:39',21,13,2,20400,'delivered'),(42,'2023-08-11 17:24:58','2023-08-13 17:24:58',21,13,2,250,'delivered'),(43,'2023-08-12 17:25:14','2023-08-14 17:25:14',21,13,2,320,'delivered'),(44,'2023-08-13 17:25:34','2023-08-15 17:25:34',21,13,2,320,'delivered'),(45,'2023-08-14 17:25:55','2023-08-16 17:25:55',21,13,2,400,'delivered'),(46,'2023-08-15 17:26:29','2023-08-17 17:26:29',21,13,2,4200,'delivered'),(47,'2023-08-16 17:26:49','2023-08-18 17:26:49',21,13,2,600,'delivered'),(48,'2023-08-17 17:27:13','2023-08-19 17:27:13',21,13,2,600,'delivered'),(49,'2023-08-18 17:27:41','2023-08-20 17:27:41',21,13,2,5600,'delivered'),(50,'2023-08-19 17:28:10','2023-08-21 17:28:10',21,13,2,1150,'delivered'),(51,'2023-08-20 17:29:10','2023-08-22 17:29:10',22,14,3,25400,'delivered'),(52,'2023-08-21 17:29:38','2023-08-23 17:29:38',22,14,3,750,'delivered'),(53,'2023-08-22 17:30:03','2023-08-24 17:30:03',22,14,3,2500,'delivered'),(54,'2023-08-23 17:30:25','2023-08-25 17:30:25',22,14,3,1050,'delivered'),(55,'2023-08-24 17:30:57','2023-08-26 17:30:57',22,14,3,720,'delivered'),(56,'2023-08-25 17:31:44','2023-08-27 17:31:44',23,15,3,10620,'delivered'),(57,'2023-08-26 17:32:04','2023-08-28 17:32:04',23,15,3,800,'delivered'),(58,'2023-08-27 17:32:42','2023-08-29 17:32:42',23,15,3,960,'delivered'),(59,'2023-08-28 17:33:31','2023-08-30 17:33:31',23,15,3,250,'delivered'),(60,'2023-08-29 17:33:32','2023-09-01 17:33:32',23,15,3,250,'delivered'),(61,'2023-08-30 17:34:44','2023-09-02 17:34:44',24,16,3,29200,'delivered'),(62,'2023-08-31 17:34:58','2023-09-03 17:34:58',24,16,3,2500,'delivered'),(63,'2023-09-01 17:35:21','2023-09-04 17:35:21',24,16,3,250,'delivered'),(64,'2023-09-02 17:35:36','2023-09-05 17:35:36',24,16,3,150,'delivered'),(65,'2023-09-03 17:35:56','2023-09-06 17:35:56',24,16,3,120,'delivered'),(66,'2023-09-04 17:36:13','2023-09-07 17:36:13',24,16,3,2500,'delivered'),(67,'2023-09-05 17:36:36','2023-09-08 17:36:36',24,16,3,2500,'delivered'),(68,'2023-09-06 17:36:55','2023-09-09 17:36:55',24,16,3,1400,'delivered'),(69,'2023-09-07 17:37:15','2023-09-10 17:37:15',24,16,3,900,'delivered'),(70,'2023-09-08 17:37:59','2023-09-11 17:37:59',25,17,5,21150,'delivered'),(71,'2023-09-09 17:38:14','2023-09-12 17:38:14',25,17,5,450,'delivered'),(72,'2023-09-10 17:38:31','2023-09-13 17:38:31',25,17,5,3000,'delivered'),(73,'2023-09-11 17:38:50','2023-09-14 17:38:50',25,17,5,250,'delivered'),(74,'2023-09-12 17:39:22','2023-09-15 17:39:22',25,17,5,150,'delivered'),(75,'2023-09-13 17:40:00','2023-09-16 17:40:00',25,17,5,300,'delivered'),(76,'2023-09-14 17:40:52','2023-09-17 17:40:52',26,18,5,10510,'delivered'),(77,'2023-09-15 17:41:19','2023-09-18 17:41:19',26,18,5,250,'delivered'),(78,'2023-09-16 17:41:52','2023-09-19 17:41:52',26,18,5,220,'delivered'),(79,'2023-09-17 17:42:28','2023-09-20 17:42:28',26,18,5,360,'delivered'),(80,'2023-09-18 17:42:51','2023-09-21 17:42:51',26,18,5,1050,'delivered'),(81,'2023-09-19 17:43:41','2023-09-22 17:43:41',27,19,5,31850,'delivered'),(82,'2023-09-20 17:44:07','2023-09-23 17:44:07',27,19,5,1300,'delivered'),(83,'2023-09-21 17:44:47','2023-09-24 17:44:47',27,19,5,2250,'delivered'),(84,'2023-09-22 17:45:03','2023-09-25 17:45:03',27,19,5,700,'delivered'),(85,'2023-09-23 17:45:29','2023-09-26 17:45:29',27,19,5,2820,'delivered'),(86,'2023-09-24 17:45:45','2023-09-27 17:45:45',27,19,5,300,'delivered'),(87,'2023-09-25 17:46:19','2023-09-28 17:46:19',27,19,5,4350,'delivered'),(88,'2023-09-26 17:46:35','2023-09-29 17:46:35',27,19,5,750,'delivered'),(89,'2023-09-27 17:46:58','2023-09-30 17:46:58',27,19,5,3220,'delivered'),(90,'2023-09-28 17:47:24','2023-10-01 17:47:24',27,19,5,3400,'delivered'),(91,'2024-02-14 20:39:31','2024-02-21 20:39:31',16,8,1,7500,'picked'),(92,'2024-02-15 09:40:40','2024-02-22 09:40:40',16,8,1,1200,'pending'),(93,'2024-03-16 14:01:24','2024-03-16 14:06:02',2,2,1,3700,'delivered');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_order_insert` AFTER INSERT ON `orders` FOR EACH ROW BEGIN

    INSERT INTO ordershistory (orderid,status)

    VALUES (NEW.id,NEW.status);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_order_update` AFTER UPDATE ON `orders` FOR EACH ROW BEGIN

    IF NEW.status <> OLD.status THEN

        INSERT INTO ordershistory (orderid,status)

        VALUES (OLD.id, NEW.status);

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ordershistory`
--

DROP TABLE IF EXISTS `ordershistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordershistory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderid` int NOT NULL,
  `status` varchar(30) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fkorderid3` (`orderid`),
  CONSTRAINT `fkorderid3` FOREIGN KEY (`orderid`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordershistory`
--

LOCK TABLES `ordershistory` WRITE;
/*!40000 ALTER TABLE `ordershistory` DISABLE KEYS */;
INSERT INTO `ordershistory` VALUES (1,91,'pending','2024-02-14 20:39:31'),(2,91,'approved','2024-02-14 20:39:58'),(3,91,'ready to dispatch','2024-02-14 20:40:04'),(4,91,'picked','2024-02-14 20:40:47'),(5,92,'pending','2024-02-15 09:40:40'),(6,93,'pending','2024-03-16 14:01:24'),(7,93,'approved','2024-03-16 14:04:20'),(8,93,'ready to dispatch','2024-03-16 14:04:30'),(9,93,'picked','2024-03-16 14:05:50'),(10,93,'inprogress','2024-03-16 14:05:55'),(11,93,'delivered','2024-03-16 14:06:01');
/*!40000 ALTER TABLE `ordershistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mode` enum('cash on delivery','net banking') DEFAULT NULL,
  `paymentstatus` enum('paid','unpaid','cancelled') DEFAULT NULL,
  `transactionid` int DEFAULT NULL,
  `orderid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkorderid` (`orderid`),
  CONSTRAINT `fkorderid` FOREIGN KEY (`orderid`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'2023-07-05 16:57:21','net banking','paid',111,2),(2,'2023-07-06 16:58:34','net banking','paid',112,3),(3,'2023-07-07 16:59:02','net banking','paid',113,4),(4,'2023-07-08 16:59:51','net banking','paid',114,5),(5,'2023-07-09 17:02:19','net banking','paid',115,6),(6,'2023-07-10 17:02:44','net banking','paid',116,7),(7,'2023-07-11 17:03:27','net banking','paid',117,8),(8,'2023-07-12 17:04:00','net banking','paid',118,9),(9,'2023-07-13 17:04:50','net banking','paid',119,10),(10,'2023-07-14 17:05:54','net banking','paid',120,11),(11,'2023-07-15 17:06:22','net banking','paid',121,12),(12,'2023-07-16 17:06:49','net banking','paid',122,13),(13,'2023-07-17 17:07:20','net banking','paid',123,14),(14,'2023-07-18 17:07:40','net banking','paid',124,15),(15,'2023-07-19 17:08:34','net banking','paid',125,16),(16,'2023-07-20 17:09:23','net banking','paid',126,17),(17,'2023-07-21 17:09:52','net banking','paid',127,18),(18,'2023-07-22 17:10:06','net banking','paid',128,19),(19,'2023-07-23 17:10:33','net banking','paid',129,20),(20,'2023-07-24 17:11:41','net banking','paid',130,21),(21,'2023-07-25 17:12:14','net banking','paid',131,22),(22,'2023-07-26 17:12:53','net banking','paid',132,23),(23,'2023-07-27 17:13:23','net banking','paid',133,24),(24,'2023-07-28 17:14:04','net banking','paid',134,25),(25,'2023-07-29 17:16:12','net banking','paid',135,26),(26,'2023-07-30 17:16:36','net banking','paid',136,27),(27,'2023-07-31 17:17:01','net banking','paid',137,28),(28,'2023-08-01 17:17:28','net banking','paid',138,29),(29,'2023-08-02 17:18:01','net banking','paid',139,30),(30,'2023-08-03 17:18:52','net banking','paid',140,31),(31,'2023-08-04 17:19:32','net banking','paid',141,32),(32,'2023-08-05 17:20:28','net banking','paid',142,33),(33,'2023-08-06 17:21:13','net banking','paid',143,34),(34,'2023-08-07 17:21:41','net banking','paid',144,35),(35,'2023-08-08 17:22:06','net banking','paid',145,36),(36,'2023-08-09 17:22:24','net banking','paid',146,37),(37,'2023-08-10 17:22:48','net banking','paid',147,38),(38,'2023-08-11 17:23:11','net banking','paid',148,39),(39,'2023-08-12 17:23:42','net banking','paid',149,40),(40,'2023-08-13 17:24:38','net banking','paid',150,41),(41,'2023-08-14 17:24:57','net banking','paid',151,42),(42,'2023-08-15 17:25:14','net banking','paid',152,43),(43,'2023-08-16 17:25:34','net banking','paid',153,44),(44,'2023-08-17 17:25:54','net banking','paid',154,45),(45,'2023-08-18 17:26:28','net banking','paid',155,46),(46,'2023-08-19 17:26:48','net banking','paid',156,47),(47,'2023-08-20 17:27:12','net banking','paid',157,48),(48,'2023-08-21 17:27:40','net banking','paid',158,49),(49,'2023-08-22 17:28:10','net banking','paid',159,50),(50,'2023-08-23 17:29:09','net banking','paid',160,51),(51,'2023-08-24 17:29:38','net banking','paid',161,52),(52,'2023-08-25 17:30:02','net banking','paid',162,53),(53,'2023-08-26 17:30:25','net banking','paid',163,54),(54,'2023-08-27 17:30:56','net banking','paid',164,55),(55,'2023-08-28 17:31:44','net banking','paid',165,56),(56,'2023-08-29 17:32:04','net banking','paid',166,57),(57,'2023-08-30 17:32:41','net banking','paid',167,58),(58,'2023-08-31 17:33:31','net banking','paid',168,59),(59,'2023-09-01 17:33:33','net banking','paid',169,60),(60,'2023-09-02 17:34:43','net banking','paid',170,61),(61,'2023-09-03 17:34:57','net banking','paid',171,62),(62,'2023-09-04 17:35:20','net banking','paid',172,63),(63,'2023-09-05 17:35:36','net banking','paid',173,64),(64,'2023-09-06 17:35:55','net banking','paid',174,65),(65,'2023-09-07 17:36:13','net banking','paid',175,66),(66,'2023-09-08 17:36:35','net banking','paid',176,67),(67,'2023-09-09 17:36:54','net banking','paid',177,68),(68,'2023-09-10 17:37:15','net banking','paid',178,69),(69,'2023-09-11 17:37:58','net banking','paid',179,70),(70,'2023-09-12 17:38:14','net banking','paid',180,71),(71,'2023-09-13 17:38:31','net banking','paid',181,72),(72,'2023-09-14 17:38:50','net banking','paid',182,73),(73,'2023-09-15 17:39:21','net banking','paid',183,74),(74,'2023-09-16 17:40:00','net banking','paid',184,75),(75,'2023-09-17 17:40:51','net banking','paid',185,76),(76,'2023-09-18 17:41:19','net banking','paid',186,77),(77,'2023-09-19 17:41:51','net banking','paid',187,78),(78,'2023-09-20 17:42:27','net banking','paid',188,79),(79,'2023-09-21 17:42:51','net banking','paid',189,80),(80,'2023-09-22 17:43:40','net banking','paid',190,81),(81,'2023-09-23 17:44:07','net banking','paid',191,82),(82,'2023-09-24 17:44:47','net banking','paid',192,83),(83,'2023-09-25 17:45:02','net banking','paid',193,84),(84,'2023-09-26 17:45:28','net banking','paid',194,85),(85,'2023-09-27 17:45:44','net banking','paid',195,86),(86,'2023-09-28 17:46:19','net banking','paid',196,87),(87,'2023-09-29 17:46:34','net banking','paid',197,88),(88,'2023-09-30 17:46:57','net banking','paid',198,89),(89,'2023-10-01 17:47:24','net banking','paid',199,90),(90,'2024-02-14 20:39:33','net banking','paid',1,91),(91,'2024-02-15 09:40:41','cash on delivery','unpaid',NULL,92),(92,'2024-03-16 14:01:24','cash on delivery','unpaid',NULL,93);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productdetails`
--

DROP TABLE IF EXISTS `productdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productid` int DEFAULT NULL,
  `unitprice` double DEFAULT NULL,
  `stockavailable` int DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `supplierid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_supplierid` (`supplierid`),
  KEY `fk_productid` (`productid`),
  CONSTRAINT `fk_productid` FOREIGN KEY (`productid`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_supplierid` FOREIGN KEY (`supplierid`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productdetails`
--

LOCK TABLES `productdetails` WRITE;
/*!40000 ALTER TABLE `productdetails` DISABLE KEYS */;
INSERT INTO `productdetails` VALUES (1,1,120,1000,'1kg',1),(2,1,240,1000,'2kg',1),(3,2,300,996,'10kg',1),(4,2,550,1000,'25kg',1),(5,3,2500,996,'1kg',1),(6,4,250,1000,'1kg',1),(7,4,500,1000,'2kg',1),(8,5,120,1000,'500gm',1),(9,5,210,1000,'1kg',2),(10,6,450,1000,'1kg',1),(11,6,600,1000,'1.5kg',1),(12,7,220,1000,'1kg',1),(13,7,400,1000,'2kg',1),(14,8,1400,1000,'1kg',1),(15,8,2800,1000,'2kg',1),(16,9,120,1000,'1kg',1),(17,9,240,1000,'2kg',1),(18,10,1200,1000,'1kg',1),(19,10,2400,1000,'2kg',1),(20,11,250,1000,'S',1),(21,12,400,1000,'S',1),(22,12,800,1000,'M',1),(23,13,1050,1000,'10m',1),(24,13,2000,1000,'20m',1),(25,14,3000,1000,'16L',1),(26,14,4000,1000,'20L',1),(27,15,2500,1000,'10m',2),(28,15,5000,1000,'25m',2),(29,16,320,1000,'15m',2),(30,16,600,1000,'30m',2),(31,17,2500,1000,'L',2),(32,18,250,1000,'S',2),(33,18,350,1000,'M',2),(34,19,1610,1000,'S',1),(35,20,400,1000,'S',1),(36,21,150,1000,'25kg',2),(37,21,270,1000,'50kg',2),(38,22,250,1000,'25kg',2),(39,22,500,1000,'50kg',2),(40,23,700,1000,'25kg',2),(41,23,1400,1000,'50kg',2),(42,24,600,1000,'25kg',2),(43,24,1200,1000,'50kg',2),(44,25,550,1000,'25kg',2),(45,25,1150,1000,'50kg',1),(46,26,150,1000,'1kg',1),(47,27,300,996,'2kg',1),(48,28,750,1000,'10kg',2),(49,28,1400,1000,'50kg',2),(50,29,650,1000,'5kg',1),(51,29,6500,1000,'50kg',1),(52,30,600,1000,'25kg',2),(53,30,1150,1000,'50kg',1),(54,31,240,1000,'100ml',1),(55,31,500,1000,'250ml',1),(56,32,120,1000,'100ml',1),(57,32,220,1000,'220ml',1),(58,33,250,1000,'100gm',1),(59,33,325,1000,'250gm',1),(60,34,120,1000,'100gm',1),(61,34,240,1000,'200gm',1),(62,35,1050,1000,'25ml',1),(63,35,1600,1000,'50ml',1),(64,36,120,1000,'100gm',1),(65,36,200,1000,'200gm',1),(66,37,250,1000,'100gm',2),(67,37,500,1000,'250gm',2),(68,38,320,1000,'150ml',2),(69,38,150,1000,'75ml',2),(70,39,250,1000,'100ml',2),(71,39,300,1000,'150ml',2),(72,40,300,1000,'150ml',2),(73,40,600,1000,'250ml',2),(74,41,700,1000,'25kg',2),(75,41,1700,1000,'50kg',2),(76,42,800,1000,'25kg',1),(77,42,1610,1000,'50kg',1),(78,43,700,1000,'25kg',1),(79,43,1400,1000,'50kg',1),(80,44,800,1000,'25kg',1),(81,44,1600,1000,'50kg',1),(82,45,850,1000,'25kg',2),(83,45,1700,1000,'50kg',2),(84,46,1200,1000,'25kg',1),(85,46,2400,1000,'50kg',1),(86,47,800,1000,'25kg',1),(87,47,1600,1000,'50kg',1),(88,48,1000,1000,'25kg',2),(89,48,2000,1000,'50kg',2),(90,49,700,1000,'25kg',2),(91,49,1400,1000,'50kg',2),(92,50,900,1000,'25kg',2),(93,50,1800,1000,'50kg',2);
/*!40000 ALTER TABLE `productdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productreview`
--

DROP TABLE IF EXISTS `productreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productreview` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productid` int DEFAULT NULL,
  `customerid` int DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `review` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `productid` (`productid`,`customerid`),
  KEY `fk_customeruser` (`customerid`),
  CONSTRAINT `fk_customeruser` FOREIGN KEY (`customerid`) REFERENCES `userroles` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_productid2` FOREIGN KEY (`productid`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productreview`
--

LOCK TABLES `productreview` WRITE;
/*!40000 ALTER TABLE `productreview` DISABLE KEYS */;
INSERT INTO `productreview` VALUES (1,1,2,4.5,'Nice Product'),(2,1,3,2,'Nice Product'),(3,2,2,3,'Nice Product'),(4,2,3,4,'Nice Product'),(5,3,2,4.5,'Nice Product'),(6,3,3,3.5,'Nice Product'),(7,4,2,2.5,'Nice Product'),(8,4,3,4,'Nice Product'),(9,5,2,5,'Nice Product'),(10,5,3,4,'Nice Product'),(11,6,2,2,'Nice Product'),(12,6,3,2,'Nice Product'),(13,7,2,4.5,'Nice Product'),(14,7,3,5,'Nice Product'),(15,8,2,1,'Nice Product'),(16,8,3,4,'Nice Product'),(17,9,2,4,'Nice Product'),(18,9,3,4,'Nice Product'),(19,10,2,3,'Nice Product'),(20,10,3,3.5,'Nice Product'),(21,11,2,2.5,'Nice Product'),(22,11,3,1.5,'Nice Product'),(23,12,2,2.5,'Nice Product'),(24,12,3,3.5,'Nice Product'),(25,13,2,4.5,'Nice Product'),(26,13,3,5,'Nice Product'),(27,14,2,4,'Nice Product'),(28,14,3,4,'Nice Product'),(29,15,2,3,'Nice Product'),(30,15,3,4.5,'Nice Product'),(31,16,2,3.5,'Nice Product'),(32,16,3,3.5,'Nice Product'),(33,17,2,1.5,'Nice Product'),(34,17,3,4,'Nice Product'),(35,18,2,4,'Nice Product'),(36,18,3,4.5,'Nice Product'),(37,19,2,1.5,'Nice Product'),(38,19,3,2.5,'Nice Product'),(39,20,2,2.5,'Nice Product'),(40,20,3,3.5,'Nice Product'),(41,21,2,4.5,'Nice Product'),(42,21,3,4.5,'Nice Product'),(43,22,2,3,'Average quality'),(44,22,3,4,'Better than expected'),(45,23,2,5,'Excellent product!'),(46,23,3,4.5,'Very satisfied'),(47,24,2,3.5,'Decent quality, but could be better'),(48,24,3,4,'Satisfactory purchase'),(49,25,2,2.5,'Not very pleased with the product'),(50,25,3,3,'Could be improved'),(51,26,2,4,'Good quality product'),(52,26,3,4.5,'Satisfied with the purchase'),(53,27,2,3.5,'Decent product for the price'),(54,27,3,4,'Met my expectations'),(55,28,2,4,'Above-average quality'),(56,28,3,3.5,'Fair purchase'),(57,29,2,2,'Not as expected'),(58,29,3,2.5,'Could be improved'),(59,30,2,4.5,'Outstanding quality!'),(60,30,3,5,'Impressed with the product'),(61,31,2,3,'Average product'),(62,31,3,3.5,'Met my basic requirements'),(63,32,2,4,'Good value for money'),(64,32,3,4.5,'Satisfied with the purchase'),(65,33,2,3,'Average product'),(66,33,3,3.5,'Met my basic requirements'),(67,34,2,4,'Good value for money'),(68,34,3,4.5,'Satisfied with the purchase'),(69,35,2,2.5,'Below expectations'),(70,35,3,3,'Could be improved'),(71,36,2,4,'Good quality product'),(72,36,3,4.5,'Satisfied with the purchase'),(73,37,2,3.5,'Decent product for the price'),(74,37,3,4,'Met my expectations'),(75,38,2,2,'Not as expected'),(76,38,3,2.5,'Could be improved'),(77,39,2,4.5,'Outstanding quality!'),(78,39,3,5,'Impressed with the product'),(79,40,2,3,'Average product'),(80,40,3,3.5,'Met my basic requirements'),(81,41,2,4,'Good value for money'),(82,41,3,4.5,'Satisfied with the purchase'),(83,42,2,2.5,'Below expectations'),(84,42,3,3,'Could be improved'),(85,43,2,4,'Good quality product'),(86,43,3,4.5,'Satisfied with the purchase'),(87,44,2,3.5,'Decent product for the price'),(88,44,3,4,'Met my expectations'),(89,45,2,2,'Not as expected'),(90,45,3,2.5,'Could be improved'),(91,46,2,4.5,'Outstanding quality!'),(92,46,3,5,'Impressed with the product'),(93,47,2,3,'Average product'),(94,47,3,3.5,'Met my basic requirements'),(95,48,2,4,'Good value for money'),(96,48,3,4.5,'Satisfied with the purchase'),(97,49,2,2.5,'Below expectations'),(98,49,3,3,'Could be improved'),(99,50,2,4,'Good quality product'),(100,50,3,4.5,'Satisfied with the purchase');
/*!40000 ALTER TABLE `productreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `categoryid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkcategoryid` (`categoryid`),
  CONSTRAINT `fkcategoryid` FOREIGN KEY (`categoryid`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'oats seeds','For healthier and nutritiously growing food preferences, Oats are largely recommended by the topmost dieticians and nutritionists. Oats are the quintessential healthy food and make for an excellent and highly nutritious meal or even a snack. Being considered a superfood with an abundance of dietary fibres, beta-glucan, and several essential nutrients, Oats have become an everyday partner of every health-conscious individual. However, not everyone is familiar with the different kinds of Oats, having different generics, available in the market. Goodness and Wellness are the two common essences amongst all the different oats varieties. Let’s have a better understanding of the different types of oats, their key features, and nutrition components.','/assets/oat.jfif',1),(2,'wheat seeds','Wheat is the second most important staple food after rice consumed by 65% of the population in India and is likely to increase further due to changes in food habits. Wheat is mostly consumed in the form of ‘chapati’ in our country for which bread wheat is cultivated in nearly 95 per cent of the cropped area. ','/assets/wheat.jpg',1),(3,'corn seeds','Corn is one of the world’s most productive and dominant crops. It is grown extensively as food for both humans and livestock, as a biofuel, and as a crude material in industry. Corn is the third largest plant-based food source in the world.','/assets/corn.jfif',1),(4,'cluster Beans','Cluster beans, or Guar beans or Gawar beans, are annual legumes. They are a popular veggie in India. Cluster beans, also known as Cyamopsis tetragonoloba, are a member of the Fabaceae family. Plants like guar legumes live in symbiosis with nitrogen-fixing bacteria of the soil. This symbiotic action makes guar crucial in crop rotation cycles and replenishes the soil with essential nutrients for the next crop.','/assets/clusterbeans.jpeg',1),(5,'okra seeds','Product Description Number of seeds: 30 Seeds: Okra - Lady Finger Variety: Export Quality Seeds Germination: Min. 70% Plant to plant spacing: 20 cm Sunlight: Prefer Full Ease-of-care: Easy Best if grown directly from seeds Perfect for Indian climate; can be grown at Home in Pots and Gardens. Soil Preparation: Vegetable grows well in any fast-draining garden loam. It thrives in soils with a lot of organic matter, as long as they’re not too acidic. Incorporate 3” (8 cm) of good garden compost or well-aged manure into the bed at planting time. A slightly more alkaline soil than most vegetables (pH 6.5-7.5). Adaptability of this variety: Areas: State of Andhra Pradesh, Karnataka, TN, Kerala, MP, Maharastra, UP, Uttaranchal, Bihar, Jharkand, Haryana, Punjab, Delhi, Rajasthan, West Bengal, Chhatisgarh and North eastern states.','/assets/okra.webp',1),(6,'sunflower seeds','Sunflower Seeds is the perfect choice of Farmers for quality output. It requires around 4 kilograms of seeds to cultivate in one acre. Approximately yield of 5-6 quintals from one acre of Sunflower field. All the details above depends on the Fertility of Soil, Amount and duration of Water and pre-treatment of seeds before sowing. Also Climate is huge factor in quantity and quality of Every Yeild, Presoaking for 6-8 hours of Seeds before sowing is must. This enable to softening of thick outer shell for easy Germination.','/assets/sunflower.webp',1),(7,'pumpkin seeds','Pumpkin seeds are rich in vitamins and minerals like manganese and vitamin K, both of which are important in helping wounds heal. They also contain zinc, a mineral that helps the immune system fight bacteria and viruses. Pumpkin seeds are also an excellent source of: Phosphorus.','/assets/pumpkin.jpeg',1),(8,' Rice Paddy Seeds','VISION CRAFTED Rice Paddy Seed for Sowing - Basmati seeds for farming | Basmati seeds for cultivation -1121 Variety (1 KG, Basmati 1121) Pusa Basmati 1121 is the first early maturing Basmati rice variety with seed to seed maturity of only 145 days and average yield of 4.5 to 5 tonne/ hectare. Pusa Basmati 1121 is a semi-dwarf (110-120 cm).Basmati rice variety with sturdy stem and plant height ranging from 110 - 120 cm. It takes140-145 days','/assets/ricepaddyseed.webp',1),(9,' Bajra Seeds',' Its annual seed bajra when compared to fodder bajra will re-grow after each harvest (multi-cut),\r\n                                                                     fast-growing cover crop with an extensive root system and heat-loving summer annual grass. It can grow 7-11 feet tall with long depending upon soil conditions, low water requirement, drought tolerance, slender leaves and no leaf blades. The leaves are similar to corn/maize but are shorter and sometimes wider. Fodder quality will be high due to low fibre content if cut frequently. Seed rate is 9-10 kg/acre, good seed germination like above 95 %; spacing is 0.5x1 feet for single seeds sow. Irrigation is 7–9 days depending upon soil conditions and suitable for anywhere climatic conditions in India. Give irrigation immediately after sowing and life/second irrigation on 3rd day from date of sowing then irrigate once in 10 days. Conduct on first harvest 60th days after sowing, then subsequent harvest 30-35 days once. It’s having 8.93-11.5 % of Crude Protein and Fat contains 4.81 %. Green fodder yield is 27-30 t/acre/yr. Used primarily for pastures, grazing, green chop, silage and hay. Good green fodder to Cow, Buffalo, Goat and Sheep. Improving milk yield and body weight also.','/assets/bajra-seeds.webp',1),(10,' Muli Seeds',' Long Radish Seeds for Home Garden | Farming | Vegetable | Hybrid | Kitchen | Planting | Terrace | Balcony | Eating | Mula | Mulia | Mooli | Muli | Mullangi | White Mooli - 10 Gram : 834 Seed How fast do radishes grow from a seed? : Plant radishes from seeds in early spring, four to six weeks before the average date of your last spring frost. In fall, plant four to six weeks before the first expected fall frost. Radish seedlings usually take three to four days to sprout, but some varieties take a few weeks. What time of year do you plant radishes? : Radishes do best when grown in cooler conditions, and are tolerant of cold weather. Loosen soil before planting at least six inches deep, a foot or more for long types. Plant seeds from April through early May, and again in August. Are radishes easy to grow? : Radishes are quick, easy and fun to grow from seed, ready to eat in as little as four weeks. These compact plants can be grown in even the smallest of gardens and are great gap-fillers on the veg plot. Sow small batches every few weeks for harvesting throughout summer, to add a crunchy tang to your salads. Best Suitable for Terrace Gardening, Grow bag cultivation, Kitchen Gardening, Terrace Gardening & Roof Top Balcony Gardening. Organic Vegetable seeds, Best for planting throughout the year. Best in class germination, Suitable for all Seasons, Fresh Seeds. Easy to Grow - Can be grown in indian climate/weather conditions. Do not use for food, feed, or oil purposes, Seeds are only for Gardening Purpose. Very showy High Impact Bedding all season Vegetables for all beautiful gardens and landscape to keep your garden noticed by all.High Quality Seeds with Germination rate of above 90%.','/assets/muli.webp',1),(11,'Hand Sprayer','User instruction: Pour  fluid into the Garden sprayer and with the help of air compressor, pump-in until the pressure fills and then adjust the nozzle for either fine mist or for pressure jet. This sprayer has dual flow i.e Mist flow and Pressure Jet flow and the sprayer has a capacity of 2 litres. Can be used for multiple purposes. . This lawn sprayer is not suitable for corrosive or acidic solutions. Adjustable brass nozzle. . The high-quality brass nozzle can adjust the intensity of the water spray from direct injection to fine mist spray. An arthritis-friendly easy grip handle, efficient pump and trigger lock make continuous spraying less straining Spray plants and more - plants need fertilizer, pesticides, insecticides and even neem oil, and of course water.','/assets/handsprayer.jpg',2),(12,'Garden Scissors','Garden Sharp Cutter Pruners Scissor with grip-handle This reliable tree Pruner is ideal for all varieties of general pruning tasks. Its cutting ability is stronger than ordinary pruning shears. Be a good partner for your garden work. Sharp and reliable can easily for most of the lightweight pruning work, also can help your to do some heavy duty for less than 3/4\"\" diameter size tree branches. ERGONOMIC DESIGN Lightweight metal ergonomic handles with rubber cushioning for a comfortable yet solid grasp. Features: 1.Premium durable, sharp & reliable bypass pruning shear is a must-have for any gardener! 2.Material: stainless steel (handle material pp plastic); 3.Prune your favorite plants, flowers, bushes and hedges with ease - smoothly cut through stems, branches, roots, vines and more. Our blade use non-stick coating for rust resistant, lower friction when cutting and prevent the blade gumming up with sap or debris. 4.The forged stainless steel handles of the pruning shear are ergonomically designed to always be comfortable, even after long hours in the garden. Handles feature a non-slip rubber grip as well as an easy-to-use security lock. 5.Long-lasting, Dependable and Reliable','/assets/gardenscissors.webp',2),(13,'Hose pipe',' PVC HOSE PIPES, Used For Gardening , Car Washing , Bike Washing , Pet Bath , Floor Clean , Construction , Agricultural, Sprinkling , ETC. Our Long Lasting Hose Pipes Are Made With Premium And High-Quality PVC & Abrasion Resistant Materials And Are Designed For Both Hot And Cold Conditions. Our Hose Pipes Comes With Accessories To Make Them User Friendly And For Perfect Gardening Experience. Made With ?? In INDIA','/assets/Hosepipe.jpeg',2),(14,'Balwan Battery Sprayer ','You can use the Balwaan Battery sprayer for agriculture, sanitizer, chemicals, farming, gardening, and many more purposes. This sprayer pump is 12 volt 8 ampere. It will get fully charged in 3-4 Hours. With a fully charged battery, you can use this 18-litre tank 15-20 times. We give our customers the best quality pump. No manual efforts are required to create pressure. Continuous & Mist spray. This sprayer has multiple applications and is widely used in agriculture, horticulture, sericulture, plantations, forestry, and gardens. Note - Damage parts not covered in the warranty','/assets/batterysprayer.webp',2),(15,'Mulch Film ','Blocks sunlight and prevent weed seed germination without chemicals Protect soil from water loss due to evaporation. Good for water conservation Increases crop yield due to low pest attack Material : LLDPE Plastic. Quality : 30 Micron, Usage: Weed Prevention','/assets/mulch-film.jpg',2),(16,'ShedNet ','This 75 % UV stabilization protect to direct sun rays. longer life durability. Sun protection and dust protection netting material usable: - usable in garden and farm plants for UV sun protection. Usable in window, gallery and balcony cover. usable for car cover for dust protection and sun protection. usable industrial machinary covers. Usable for stop working construction part. Usable for home roof shade to protect sun rays. Usable for indoor outdoor curtain. item color is green but can be changed normally light green or dark green.','/assets/shednet.webp',2),(17,'Pickaxe ','Strong Wooden Handle Made for rough use and long lasting Alloy Steel, Hardened and Tempered Ideal for Digging','/assets/pickaxe.jpg',2),(18,'Weeding Hook ','This Agricultural and Gardening crop cutting tool is specially designed to remove weed and grass. An excellent product with sharp zigzag teeth For smooth Cutting Performance.','/assets/weedinghook.jpg',2),(19,'Axe ','ERGONOMIC DESIGN: Our Hatched is Designed with a Shock Absorbing Anti Slip Grip, Cold Resistant Ergonomic Shaped Fiberglass Handle which will reduce the strain on your hand, resists slipping and adds comfort.\r\nEASY STORAGE: The head comes with a Rubber Protective Sheath for safe storage and transport. After use, simply apply the rubber protective cover and hang the Hatchet from the hole that is featured for easy and convenient storage.\r\nDURABLE CONSTRUCTION: The Forged Carbon Steel Heat Treated head which improves its density and makes the axe more durable produces smooth and quick splits and stays sharp longer than traditional axes. You can count on this Hand Axe to deliver superior, long lasting performance.','/assets/axe.jpg',2),(20,'Favda ','Agriculture Tool Primarily Used for Digging.\r\nIt Contain a Blade Attached with a Long Handle.\r\nThe Handle is Very Strong & Spade were Made with Sharper Tips of Metal.\r\nHeavy Duty Gardening Spade with Strong Wooden Handle Suitable for digging, balancing, forming hard/raw ground soil\r\nlike as a kassi fawda khurpi spade or hor shovel','/assets/favda.jpg',2),(21,'Urea','Urea is the chief nitrogenous end product of the metabolic breakdown of proteins in all mammals and some fishes. It occurs not only in the urine of mammals but also in their blood, bile, milk, and perspiration.','/assets/UREA.png',3),(22,'12-32-16','This is one of the highest nutrients containing NPK complex fertiliser with total nutrients of 60%\r\nNitrogen and Phosphate are available in the ratio 1:2.6 as in the case of DAP, but in Mahadhan 12:32:16 also contains 16% Potash additionally\r\nMahadhan 12:32:16 helps the young plants to grow faster, even under adverse soil or climatic condition','/assets/12-32-16.jpeg',3),(23,'10-26-26','Improves nutrient availability & reduce nutrient loss.\r\nIt increases crop yield by 10% to 15%.\r\nIncreases CEC and nutrient holding capacity of soil.\r\nRich in organic carbon and mineral substances essential to plant growth\r\nRetains water soluble fertilisers and releases in root zones as needed\r\nIncreases plant uptake of nutrients\r\n','/assets/10-26-26.jpeg',3),(24,'Diammonium Phosphate (DAP)','Diammonium phosphate contains nitrogen and phosphorus, making it suitable for a wide range of crops. It promotes healthy plant growth.','/assets/dap.jpeg',3),(25,'Potassium Sulfate','Potassium sulfate contains potassium and sulfur, benefiting fruits and vegetables. It improves overall plant health and yield.','/assets/potassiumsulphate.jpeg',3),(26,'Iron Chelates','Iron chelates are used to correct iron deficiencies in plants, particularly in alkaline soils. They enhance chlorophyll production.','/assets/chelatediron.jpeg',3),(27,'Zinc Sulfate','Zinc sulfate provides essential zinc for plant health and development. It is crucial for various enzymatic processes.','/assets/zincsulphate.jpeg',3),(28,'Calcium Nitrate','Calcium nitrate provides calcium and nitrogen, benefiting fruiting crops and overall plant health.','/assets/calciumnitrate.jpeg',3),(29,'Boron Fertilizer','Boron fertilizer is used to prevent boron deficiency in crops like broccoli and cauliflower.','/assets/boron.jpeg',3),(30,'Liquid Seaweed Fertilizer','Liquid seaweed fertilizer contains trace elements and growth-promoting hormones, suitable for a variety of crops.','/assets/ls.jpeg',3),(31,'Admire','Admire contains Imidacloprid, one of the world best selling insecticides. It is a systemic insecticide belonging to the chemical class of neonicotinoids and is very effective against various insect pests','/assets/mira.webp',4),(32,'Rogor','It can be applied by mixing 1-2 ml with a liter of water and spraying over the concerned plants.\r\nRogor Is 30% EC Formulation Of Dimethoate\r\nIt Is Highly Effective In Controlling The Sucking And Caterpillar Pests\r\nIt Is highly Compatible With Other Insecticides And Fungicides','/assets/Rogor.jpeg',4),(33,'Antracol','Antracol contains Propineb, a contact fungicide with broad spectrum activity against various diseases of rice, chilli, grapes, potato and other vegetables and fruits. Propineb is a polymeric zinc-containing dithiocarbamate. Due to the release of zinc, the application of Antracol results in greening effect on the crop and subsequent improvement in quality of produce.','/assets/antracol.jpeg',4),(34,'Avatar','Avtar is a Broad-spectrum fungicide, which controls large number of diseases with its multisite and systemic action. Avatar is an effective fungicide that is useful for all crops and vegetables.','/assets/Avtar.jpeg',4),(35,'coragen','\r\nCoragen® insecticide is an anthranilic diamide Broad Spectrum insecticide in the form of a suspension concentrate.\r\nCoragen® insecticide is particularly active on Lepidopteran insect pests, primarily as a larvicide.\r\nCoragen® insecticide is powered by active ingredient Rynaxypyr® active which has a unique mode of action that controls pests resistant to other insecticides.\r\nCoragen® insecticide is selective & safe for non-target arthropods and conserves natural parasitoids, predators and pollinators.','/assets/coragen.jpeg',4),(36,'Zyme','V-Zyme Sport is specially designed for turf , its a unique formulation of micronutrients with amino acid, growth-supporting co-factors and biostimulator, consisting of various minerals suspended in amino acids.\r\nThe micronutrients are used in such a peculiar form that ensures the bioavailability of these micronutrients to the maximum extent. Such bioavailability of these micronutrients is rarely seen in any other products available in the market.','/assets/zyme.jpeg',4),(37,'Melody','Melody Duo is a modern fungicide containing the two active ingredients Iprovalicarb and Propineb.','/assets/Melody.jpeg',4),(38,'Goal','Goal® contains oxyfluorfen as active ingredient which belongs to diphenyl ether.\r\nAs pre-emergence, Goal® forms a chemical barrier on the soil surface and affects weed plants through direct contact at emergence.\r\nActively growing plants are very susceptible to Goal® as post-emergence action','/assets/Goal.jpeg',4),(39,'Targa-super','Targa Super is selective, systemic herbicide of Aryloxyphenoxy-propionates group. It is used to control narrow leaf weeds in broad leaf crops.','/assets/targa-super.png',4),(40,'Profex','Profex Super can be used for lerva type insect killing. It can be used for all types of vegetables, fruits, and flowers. Also, use for home garden plants excellent result.','/assets/profex.jpeg',4),(41,'Sarki pend','Perfect mixture\r\nQuality examined\r\nCompletely organic\r\nLower price\r\nFree from damage by water','/assets/sarki pend.jpeg',5),(42,'Kandi','This useful to cow, Goat, buffawlo. This is one of the most important feed for animal','/assets/kandi.jpeg',5),(43,'Bhusa','This useful to cow, Goat, buffawlo. This is one of the most important feed for animal','/assets/bhusa.jpeg',5),(44,'Milkgen','Form: 3mm roasted pellets\r\nCrude protein: 24%* (min)\r\nCrude fat: 4%* (min)\r\nCrude fiber: 10%* (max)\r\nMoisture: 11%* (max)','/assets/milkgen10000.png',5),(45,'Pragati','Dairy Gold is a balanced source of essential nutrients required for body maintenance, growth and milk production. It is manufactured using good quality grains, oil cakes/ meals, brans, molasses, com- mon salt, minerals and vitamins. It is comparatively cheaper and highly palatable to the animals.','/assets/Pragati.png',5),(46,'Buffgen4000','Form: 3mm roasted pellets\r\nCrude protein: 22%* (min)\r\nCrude fat: 5%* (min)\r\nCrude fiber: 12%* (max)\r\nMoisture: 11%* (max)\r\n','/assets/buffgen.png',5),(47,'Dairy Gold','Dairy Gold is a balanced source of essential nutrients required for body maintenance, growth and milk production. It is manufactured using good quality grains, oil cakes/ meals, brans, molasses, com- mon salt, minerals and vitamins. It is comparatively cheaper and highly palatable to the animals.','/assets/dairygold.webp',5),(48,'Kapila Dairy Special','Contains By Pass Protein & Fat to increase the absorption of fats & protein.\r\nContains 3.5% Fat, 25-28% Crude Protein and other minerals.\r\nKapila Dairy Special (By Pass) is beneficial for cows of foreign breed.\r\nRecommended for any dairy breed of average weight yielding large quantity of milk.','/assets/dairy-special-small.jpg',5),(49,'Amul Nutri Rich','Amul Nutri Rich, Cattle Feed - Bis Type-1, 50 Kg Bag is a feed that is rich in protein and minerals. It is specially designed for cows that are pregnant or lactating. The cows will produce milk and their offspring will be healthier. The cows will also be able to produce more milk for longer periods of time. Bis Type-1 is a quality cattle feed that has been developed to provide optimum nutrition for dairy cattle. The ingredients in this feed are carefully selected to promote rapid growth and healthy conditions for the animals. The result is a product that not only improves the animals quality of life, but also the quality of the milk and dairy products that are produced.','/assets/nutririch.webp',5),(50,'KAPILA HI PRO','A feed that has just right amount of protein (24%) and fat (4%),\r\n                                                                     Manufactured under International Organisation Standards. It is made of completely natural products that will help your cattle to give milk to its full potential and remain healthy for longer period of time.','/assets/hi-pro.jpg',5);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questioncategories`
--

DROP TABLE IF EXISTS `questioncategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questioncategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questioncategories`
--

LOCK TABLES `questioncategories` WRITE;
/*!40000 ALTER TABLE `questioncategories` DISABLE KEYS */;
INSERT INTO `questioncategories` VALUES (1,'Crop Cultivation'),(2,'Livestock Farming'),(3,'Farm Equipment and Technology'),(4,'Organic and Sustainable Farming'),(5,'Farm Business and Economics'),(6,'Farming in Different Climates and Regions'),(7,'Farm Safety and Regulations'),(8,'Farm Education and Training'),(9,'Specialty Farming'),(10,'Farm Challenges and Solutions');
/*!40000 ALTER TABLE `questioncategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `categoryid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkcategory1` (`categoryid`),
  CONSTRAINT `fkcategory1` FOREIGN KEY (`categoryid`) REFERENCES `questioncategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,' How can I improve soil fertility in my fields?',1),(2,'What are the best practices for pest and weed control in organic farming?',1),(3,'How can I conserve water in my irrigation practices?',1),(4,'What should I consider when selecting crop varieties for my region?',1),(5,'How can I reduce post-harvest losses and improve storage methods for my crops?',1),(6,'Are there government programs or subsidies available to support sustainable farming practices?',1),(7,'What steps can I take to transition from conventional to organic farming?',1),(8,' How can I improve the overall profitability of my farm?',1),(9,' What are the signs of nutrient deficiencies in my crops, and how can I address them?',1),(10,'What are the potential impacts of climate change on my farming practices, and how can I adapt?',1),(11,' How can I improve the health and well-being of my livestock?',2),(12,'What is the best way to manage grazing and forage for my livestock?',2),(13,'What are the signs of common illnesses or parasites in livestock, and how should I treat them?',2),(14,' How can I improve the breeding and genetics of my livestock?',2),(15,'What are the best practices for handling and transportation of livestock?',2),(16,'How can I market my livestock and their products effectively?',2),(17,'What should I consider when building or renovating livestock housing and facilities?',2),(18,'  What is the role of technology in modern livestock farming?',2),(19,'How can I implement sustainable practices in my livestock farm?',2),(20,'What financial resources and support are available to livestock farmers?',2),(21,' What are the latest advancements in farm equipment technology that can benefit my farm?',3),(22,'How can I ensure that my farm machinery operates at peak efficiency?',3),(23,'Are there financing options available for purchasing new farm equipment or technology?',3),(24,'Can you recommend a specific brand or model of a tractor or combine harvester that suits my farms needs?',3),(25,'How do I integrate data collected from farm technology into my decision-making process?',3),(26,'What are the best practices for storing and securing farm equipment when not in use?',3),(27,'How can I troubleshoot common issues with my farm equipment without calling a technician?',3),(28,'Are there local equipment rental options available for occasional use rather than purchasing expensive machinery?',3),(29,'What are the safety precautions I should take when operating farm equipment?',3),(30,' How can I make the most of technology in livestock farming, such as automated feeding systems?',3),(31,' What is organic farming, and how does it differ from conventional farming?',4),(32,'How can I transition from conventional farming to organic farming?',4),(33,'What are some effective organic pest control methods?',4),(34,'What practices can help me improve soil health in organic farming?',4),(35,'How can I maintain weed control without synthetic herbicides in organic farming?',4),(36,'What are the benefits of sustainable farming practices?',4),(37,'How can I reduce water usage in my farming operation while maintaining crop productivity?',4),(38,'Are there organic alternatives for fertilizing my crops?',4),(39,'What are some tips for managing livestock sustainably?',4),(40,'How can I market my organic and sustainably grown products effectively?',4),(41,'How can I create a budget for my farm that accounts for all expenses and income?',5),(42,'What are some key financial ratios that I should monitor to assess the financial health of my farm?',5),(43,'How do I determine the optimal scale and scope of my farm operation?',5),(44,'What marketing strategies can I use to sell my farm products effectively?',5),(45,'How can I negotiate fair contracts and pricing agreements with buyers and suppliers?',5),(46,'What strategies can I employ to manage cash flow on my farm and ensure I have funds when needed?',5),(47,'What are the potential tax implications of different farm business structures (e.g., sole proprietorship, LLC, partnership)?',5),(48,'How can I diversify my farm income to reduce financial risk?',5),(49,'What are the economic considerations when transitioning to organic or sustainable ',5),(50,'Where can I find resources and support for farm business management and financial planning?',5),(51,' How can I determine the best crops or livestock to raise in my specific climate and region?',6),(52,'What are the key challenges and solutions for managing water resources in regions with irregular rainfall patterns?',6),(53,'How can I protect my crops from frost in regions with cold winters?',6),(54,'What are effective strategies for managing soil erosion in hilly or mountainous regions?',6),(55,'How do I adapt my planting and harvesting schedules in regions with distinct wet and dry seasons?',6),(56,'What should I consider when selecting a greenhouse or high tunnel for extending the growing season in a cold climate?',6),(57,'How can I manage salt-affected soils in coastal farming regions?',6),(58,'Are there specific pest and disease challenges that farmers face in humid climates, and how can they be managed?',6),(59,'What are the benefits of crop rotation and diversified farming practices in regions with unpredictable climate patterns?',6),(60,' How can I connect with other farmers in my region to share knowledge and experiences related to farming in our specific climate?',6),(61,'What are the key safety measures I should implement on my farm to protect myself, my family, and my workers?',7),(62,'What safety regulations and guidelines apply to my farm, and how can I ensure compliance?',7),(63,'How can I prevent accidents and injuries related to farm equipment and machinery?',7),(64,'What measures should I take to ensure the safety of children on my farm?',7),(65,'How can I mitigate the risk of fire hazards on my farm, especially in areas with dry conditions?',7),(66,'What biosecurity measures are important for preventing disease outbreaks among livestock?',7),(67,'How can I ensure food safety for farm products, especially if Im selling directly to consumers?',7),(68,'Are there specific safety considerations for handling and storing pesticides and chemicals on the farm?',7),(69,'What are the best practices for handling and disposing of hazardous farm waste materials?',7),(70,'Where can I access resources and training programs related to farm safety and regulations in my area?',7),(71,'What are the best resources for learning about the latest advancements in farming technology and techniques?',8),(72,'Are there specific courses or programs that can help me transition from conventional to organic farming?',8),(73,' How can I access training on sustainable farming practices, such as regenerative agriculture or permaculture?',8),(74,'What are the financial benefits of attending agricultural training programs, and how can I find funding for them?',8),(75,'Are there mentorship programs available for new farmers to learn from experienced farmers in my area?',8),(76,'What are some essential topics I should cover in a farm business management course?',8),(77,' How can I find opportunities for hands-on training and apprenticeships on farms?',8),(78,'What are the benefits of joining a farming cooperative or association, and how can I find one in my area?',8),(79,'Are there government programs or incentives to encourage ongoing education and training for farmers?',8),(80,'How can I balance the demands of running my farm with the need for continuous learning and training?',8),(81,' What is specialty farming, and how does it differ from traditional farming?',9),(82,' How can I identify profitable specialty crops or niche markets for my farm?',9),(83,' What are the key considerations for successfully growing specialty crops like gourmet mushrooms or exotic herbs?',9),(84,'Are there certification processes or quality standards for specialty or organic products, and how can I meet them?',9),(85,' How can I market my specialty farm products effectively to reach the right customer base?',9),(86,' What are the challenges and benefits of raising specialty livestock breeds, such as heritage poultry or rare breeds?',9),(87,' What resources and support are available for farmers interested in specialty farming, such as grants or training programs?',9),(88,' How can I diversify my farm income through specialty products while managing the risks associated with niche markets?',9),(89,'What are the environmental and sustainability considerations for specialty farming practices?',9),(90,'How can I stay updated on the latest trends and opportunities in the specialty farming sector?',9),(91,'How can I improve soil fertility and structure on my farm over time?',10),(92,' What are effective strategies for reducing the environmental impact of my farm, especially in terms of water and nutrient runoff?',10),(93,' How can I address labor shortages on my farm, especially during peak seasons?',10),(94,'What measures can I take to enhance the welfare and health of my livestock while also improving production efficiency?',10),(95,' How can I reduce energy consumption and make my farm more energy-efficient?',10),(96,'What financial management strategies can help me maintain a stable income in the face of market volatility?',10),(97,' How can I adapt my farming practices to changing weather patterns and climate conditions?',10),(98,' What are the best practices for marketing and selling my farm products directly to consumers or through local markets?',10),(99,'How can I manage the challenges of transitioning from conventional to organic farming practices?',10),(100,' What steps should I take to ensure the long-term sustainability and profitability of my farm?',10),(101,' What is your crop ',10);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Shop Owner'),(2,'Customer'),(3,'Supplier'),(4,'Shipper'),(5,'SubjectMatterExpert');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipperorders`
--

DROP TABLE IF EXISTS `shipperorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipperorders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderid` int NOT NULL,
  `shipperid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkshipperorderid` (`orderid`),
  KEY `fk_shipperid` (`shipperid`),
  CONSTRAINT `fk_shipperid` FOREIGN KEY (`shipperid`) REFERENCES `shippers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkshipperorderid` FOREIGN KEY (`orderid`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipperorders`
--

LOCK TABLES `shipperorders` WRITE;
/*!40000 ALTER TABLE `shipperorders` DISABLE KEYS */;
INSERT INTO `shipperorders` VALUES (1,2,2),(2,3,2),(3,4,2),(4,5,2),(5,6,2),(6,7,2),(7,8,2),(8,9,2),(9,10,2),(10,11,2),(11,12,2),(12,13,2),(13,14,2),(14,15,2),(15,16,4),(16,17,4),(17,18,4),(18,19,4),(19,20,4),(20,21,4),(21,22,4),(22,23,4),(23,24,4),(24,25,4),(25,26,4),(26,27,4),(27,28,4),(28,29,4),(29,30,4),(30,31,3),(31,32,3),(32,33,3),(33,34,3),(34,35,3),(35,36,3),(36,37,3),(37,38,3),(38,39,3),(39,40,3),(40,41,3),(41,42,3),(42,43,3),(43,44,3),(44,45,3),(45,46,3),(46,47,3),(47,48,3),(48,49,3),(49,50,3),(50,51,1),(51,52,1),(52,53,1),(53,54,1),(54,55,1),(55,56,1),(56,57,1),(57,58,1),(58,59,1),(59,60,1),(60,61,1),(61,62,1),(62,63,1),(63,64,1),(64,65,1),(65,66,1),(66,67,1),(67,68,1),(68,69,1),(69,70,5),(70,71,5),(71,72,5),(72,73,5),(73,74,5),(74,75,5),(75,76,5),(76,77,5),(77,78,5),(78,79,5),(79,80,5),(80,81,5),(81,82,5),(82,83,5),(83,84,5),(84,85,5),(85,86,5),(86,87,5),(87,88,5),(88,89,5),(89,90,5),(90,91,4),(91,93,1);
/*!40000 ALTER TABLE `shipperorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippers`
--

DROP TABLE IF EXISTS `shippers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `addressid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_shipperuser` (`userid`),
  CONSTRAINT `fk_shipperuser` FOREIGN KEY (`userid`) REFERENCES `userroles` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippers`
--

LOCK TABLES `shippers` WRITE;
/*!40000 ALTER TABLE `shippers` DISABLE KEYS */;
INSERT INTO `shippers` VALUES (1,31,23),(2,32,24),(3,33,25),(4,34,26),(5,35,27);
/*!40000 ALTER TABLE `shippers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smeanswers`
--

DROP TABLE IF EXISTS `smeanswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smeanswers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `answerid` int NOT NULL,
  `answerdate` datetime NOT NULL,
  `smeid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkuser21` (`answerid`),
  KEY `fkuser22` (`smeid`),
  CONSTRAINT `fkuser21` FOREIGN KEY (`answerid`) REFERENCES `answers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkuser22` FOREIGN KEY (`smeid`) REFERENCES `subjectmatterexperts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smeanswers`
--

LOCK TABLES `smeanswers` WRITE;
/*!40000 ALTER TABLE `smeanswers` DISABLE KEYS */;
INSERT INTO `smeanswers` VALUES (1,1,'2023-09-02 00:00:00',1),(2,2,'2023-09-02 00:00:00',1),(3,3,'2023-09-02 00:00:00',1),(4,4,'2023-09-02 00:00:00',1),(5,5,'2023-09-03 00:00:00',1),(6,6,'2023-09-03 00:00:00',1),(7,7,'2023-09-03 00:00:00',1),(8,8,'2023-09-04 00:00:00',1),(9,9,'2023-09-04 00:00:00',1),(10,10,'2023-09-05 00:00:00',1),(11,11,'2023-09-05 00:00:00',2),(12,12,'2023-09-05 00:00:00',2),(13,13,'2023-09-06 00:00:00',2),(14,14,'2023-09-06 00:00:00',2),(15,15,'2023-09-07 00:00:00',2),(16,16,'2023-09-07 00:00:00',2),(17,17,'2023-09-09 00:00:00',2),(18,18,'2023-09-10 00:00:00',2),(19,19,'2023-09-10 00:00:00',2),(20,20,'2023-09-11 00:00:00',2),(21,21,'2023-09-11 00:00:00',3),(22,22,'2023-09-11 00:00:00',3),(23,23,'2023-09-12 00:00:00',3),(24,24,'2023-09-12 00:00:00',3),(25,25,'2023-09-13 00:00:00',3),(26,26,'2023-09-13 00:00:00',3),(27,27,'2023-09-14 00:00:00',3),(28,28,'2023-09-14 00:00:00',3),(29,29,'2023-09-15 00:00:00',3),(30,30,'2023-09-15 00:00:00',3),(31,31,'2023-09-16 00:00:00',4),(32,32,'2023-09-16 00:00:00',4),(33,33,'2023-09-17 00:00:00',4),(34,34,'2023-09-17 00:00:00',4),(35,35,'2023-09-18 00:00:00',4),(36,36,'2023-09-19 00:00:00',4),(37,37,'2023-09-19 00:00:00',4),(38,38,'2023-09-20 00:00:00',4),(39,39,'2023-09-20 00:00:00',4),(40,40,'2023-09-20 00:00:00',4),(41,41,'2023-09-21 00:00:00',5),(42,42,'2023-09-21 00:00:00',5),(43,43,'2023-09-22 00:00:00',5),(44,44,'2023-09-22 00:00:00',5),(45,45,'2023-09-23 00:00:00',5),(46,46,'2023-09-23 00:00:00',5),(47,47,'2023-09-24 00:00:00',5),(48,48,'2023-09-24 00:00:00',5),(49,49,'2023-09-25 00:00:00',5),(50,50,'2023-09-25 00:00:00',5),(51,51,'2023-09-26 00:00:00',1),(52,52,'2023-09-26 00:00:00',1),(53,53,'2023-09-26 00:00:00',1),(54,54,'2023-09-27 00:00:00',1),(55,55,'2023-09-27 00:00:00',1),(56,56,'2023-09-28 00:00:00',1),(57,57,'2023-09-28 00:00:00',1),(58,58,'2023-09-29 00:00:00',1),(59,59,'2023-09-29 00:00:00',1),(60,60,'2023-09-29 00:00:00',1),(61,61,'2023-09-30 00:00:00',2),(62,62,'2023-09-30 00:00:00',2),(63,63,'2023-09-30 00:00:00',2),(64,64,'2023-09-30 00:00:00',2),(65,65,'2023-09-30 00:00:00',2),(66,66,'2023-09-30 00:00:00',2),(67,67,'2023-09-30 00:00:00',2),(68,68,'2023-10-01 00:00:00',2),(69,69,'2023-10-01 00:00:00',2),(70,70,'2023-10-01 00:00:00',2),(71,71,'2023-10-01 00:00:00',3),(72,72,'2023-10-01 00:00:00',3),(73,73,'2023-10-02 00:00:00',3),(74,74,'2023-10-02 00:00:00',3),(75,75,'2023-10-02 00:00:00',3),(76,77,'2023-10-02 00:00:00',3),(77,79,'2023-10-03 00:00:00',3),(78,80,'2023-10-03 00:00:00',3),(79,81,'2023-10-03 00:00:00',6),(80,82,'2023-10-03 00:00:00',6),(81,83,'2023-10-03 00:00:00',6),(82,84,'2023-10-03 00:00:00',6),(83,85,'2023-10-03 00:00:00',6),(84,86,'2023-10-03 00:00:00',6),(85,87,'2023-10-03 00:00:00',6),(86,88,'2023-10-03 00:00:00',6),(87,89,'2023-10-04 00:00:00',6),(88,90,'2023-10-04 00:00:00',6),(89,91,'2023-10-04 00:00:00',7),(90,92,'2023-10-04 00:00:00',7),(91,93,'2023-10-04 00:00:00',7),(92,94,'2023-10-04 00:00:00',7),(93,95,'2023-10-04 00:00:00',7),(94,96,'2023-10-04 00:00:00',7),(95,97,'2023-10-05 00:00:00',7),(96,98,'2023-10-05 00:00:00',7),(97,99,'2023-10-05 00:00:00',7),(98,100,'2023-10-05 00:00:00',7);
/*!40000 ALTER TABLE `smeanswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `userid` int NOT NULL,
  `addressid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_storeuser` (`userid`),
  CONSTRAINT `fk_storeuser` FOREIGN KEY (`userid`) REFERENCES `userroles` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'Manchar Store',1,1),(2,'Rajgurunagar Store ',4,4),(3,'Narayangaon Store ',28,20),(4,'Karegaon Store ',29,21),(5,'Junner Store',30,22);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjectmatterexperts`
--

DROP TABLE IF EXISTS `subjectmatterexperts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjectmatterexperts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryid` int DEFAULT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_smeuser` (`categoryid`),
  KEY `fk_category` (`userid`),
  CONSTRAINT `fk_category` FOREIGN KEY (`userid`) REFERENCES `userroles` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_smeuser` FOREIGN KEY (`categoryid`) REFERENCES `questioncategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjectmatterexperts`
--

LOCK TABLES `subjectmatterexperts` WRITE;
/*!40000 ALTER TABLE `subjectmatterexperts` DISABLE KEYS */;
INSERT INTO `subjectmatterexperts` VALUES (1,1,8),(2,2,9),(3,3,36),(4,4,37),(5,5,38),(6,6,39),(7,7,40),(8,8,38),(9,9,39),(10,10,40);
/*!40000 ALTER TABLE `subjectmatterexperts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `corporateid` int NOT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `corporateid` (`corporateid`),
  KEY `fk_supplieruser` (`userid`),
  CONSTRAINT `fk_supplieruser` FOREIGN KEY (`userid`) REFERENCES `userroles` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,12,12),(2,13,13);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userroles`
--

DROP TABLE IF EXISTS `userroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userroles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `roleid` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`),
  KEY `fkroleid` (`roleid`),
  CONSTRAINT `fkroleid` FOREIGN KEY (`roleid`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles`
--

LOCK TABLES `userroles` WRITE;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
INSERT INTO `userroles` VALUES (1,1,1),(2,4,1),(3,28,1),(4,29,1),(5,30,1),(6,2,2),(7,3,2),(8,15,2),(9,16,2),(10,17,2),(11,18,2),(12,19,2),(13,20,2),(14,21,2),(15,22,2),(16,23,2),(17,24,2),(18,25,2),(19,26,2),(20,27,2),(21,12,3),(22,13,3),(23,31,4),(24,32,4),(25,33,4),(26,34,4),(27,35,4),(28,8,5),(29,9,5),(30,36,5),(31,37,5),(32,38,5),(33,39,5),(34,40,5);
/*!40000 ALTER TABLE `userroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ekrushi'
--

--
-- Dumping routines for database 'ekrushi'
--
/*!50003 DROP PROCEDURE IF EXISTS `deliverorderscountbymonth` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deliverorderscountbymonth`(

    IN given_shipperid INT,

    IN given_year INT

)
SELECT all_months.Month AS Month,

       IFNULL(delivered_orders.Count, 0) AS Count

FROM (

    SELECT DATE_FORMAT(DATE_ADD('2023-01-01', INTERVAL n MONTH), '%M') AS Month

    FROM (

        SELECT 0 AS n UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL

        SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10 UNION ALL SELECT 11

    ) AS numbers

) AS all_months

LEFT JOIN (

    SELECT DATE_FORMAT(orders.shippeddate, '%M ') AS Month, COUNT(*) AS Count

    FROM orders

    INNER JOIN shipperorders ON orders.id = shipperorders.orderid

    WHERE orders.status = 'delivered' AND shipperorders.shipperid = given_shipperid  AND YEAR(orders.orderdate)=given_year

    GROUP BY Month

) AS delivered_orders ON all_months.Month = delivered_orders.Month

ORDER BY STR_TO_DATE(all_months.Month, '%M'); ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCategorywiseProductCountByStore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCategorywiseProductCountByStore`(

    IN given_date DATE,

    IN mode VARCHAR(255),

    IN store_id INT

)
BEGIN

   IF mode= 'today' THEN

    SELECT categories.title, sum(orderdetails.quantity) as quantity

    FROM categories

    INNER JOIN products on categories.id=products.categoryid

    INNER JOIN productdetails on products.id=productdetails.productid

    INNER JOIN orderdetails on productdetails.id=orderdetails.productdetailsid

    INNER JOIN orders on orderdetails.orderid=orders.id

    WHERE DATE(orders.orderdate) = given_date AND orders.status <> 'cancelled' AND storeid=store_id

    GROUP BY categories.id  ; 



  ELSEIF mode='yesterday' THEN

    SELECT categories.title, sum(orderdetails.quantity) as quantity

    FROM categories

    INNER JOIN products on categories.id=products.categoryid

    INNER JOIN productdetails on products.id=productdetails.productid

    INNER JOIN orderdetails on productdetails.id=orderdetails.productdetailsid

    INNER JOIN orders on orderdetails.orderid=orders.id

    WHERE DATE(orders.orderdate)=DATE_SUB(given_date, INTERVAL 1 DAY)AND orders.status <> 'cancelled' AND storeid=store_id

    GROUP BY categories.id  ; 



 ELSEIF mode='week' THEN

    SELECT categories.title, sum(orderdetails.quantity) as quantity

    FROM categories

    INNER JOIN products on categories.id=products.categoryid

    INNER JOIN productdetails on products.id=productdetails.productid

    INNER JOIN orderdetails on productdetails.id=orderdetails.productdetailsid

    INNER JOIN orders on orderdetails.orderid=orders.id

    WHERE  DATE(orders.orderdate) BETWEEN DATE_SUB(given_date, INTERVAL (DAYOFWEEK(given_date) - 1) DAY) 

    AND DATE_ADD(given_date, INTERVAL (7 - DAYOFWEEK(given_date)) DAY) AND orders.status <> 'cancelled' AND storeid=store_id

    GROUP BY categories.id  ; 



  

 ELSEIF mode='month' THEN

    SELECT categories.title, sum(orderdetails.quantity) as quantity

    FROM categories

    INNER JOIN products on categories.id=products.categoryid

    INNER JOIN productdetails on products.id=productdetails.productid

    INNER JOIN orderdetails on productdetails.id=orderdetails.productdetailsid

    INNER JOIN orders on orderdetails.orderid=orders.id

    WHERE  DATE(orders.orderdate) BETWEEN DATE_SUB(given_date, INTERVAL DAY(given_date) - 1 DAY)

    AND LAST_DAY(given_date) AND orders.status <> 'cancelled' AND storeid=store_id

    GROUP BY categories.id  ; 

    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetShipperOrderCountByStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetShipperOrderCountByStatus`(

   IN shipper_id INT

)
BEGIN

      SELECT

        SUM(CASE WHEN status = 'ready to dispatch' THEN 1 ELSE 0 END) AS readytodispatch,

        SUM(CASE WHEN status = 'picked' THEN 1 ELSE 0 END) AS picked,

        SUM(CASE WHEN status = 'in progress' THEN 1 ELSE 0 END) AS inprogress,

        SUM(CASE WHEN status = 'delivered' THEN 1 ELSE 0 END) AS delivered,

        SUM(CASE WHEN status = 'cancelled' THEN 1 ELSE 0 END) AS cancelled

        FROM orders   INNER JOIN shipperorders on orders.id=shipperorders.orderid 

        WHERE shipperorders.shipperid=shipper_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetStoreOrderCountByMonth` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetStoreOrderCountByMonth`(

   IN given_year INT,

   IN given_storeid INT

)
BEGIN

WITH MonthNumbers AS (

    SELECT 1 AS month_number

    UNION ALL SELECT 2

    UNION ALL SELECT 3

    UNION ALL SELECT 4

    UNION ALL SELECT 5

    UNION ALL SELECT 6

    UNION ALL SELECT 7

    UNION ALL SELECT 8

    UNION ALL SELECT 9

    UNION ALL SELECT 10

    UNION ALL SELECT 11

    UNION ALL SELECT 12

)

SELECT

 MONTHNAME(CONCAT('2023-', MonthNumbers.month_number,'-01')) AS month,

     COUNT(orders.orderdate) AS order_count

FROM

    MonthNumbers

LEFT JOIN

    orders ON MonthNumbers.month_number = MONTH(orders.orderdate) AND YEAR(orders.orderdate) = given_year AND orders.status <> 'cancelled' AND storeid = given_storeid

GROUP BY

    MonthNumbers.month_number

ORDER BY

    MonthNumbers.month_number;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetStoreOrderCountByStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetStoreOrderCountByStatus`(

   IN store_id INT

)
BEGIN

   SELECT SUM(CASE WHEN status = 'pending' THEN 1 ELSE 0 END) AS pending,

        SUM(CASE WHEN status = 'approved' THEN 1 ELSE 0 END) AS approved,

        SUM(CASE WHEN status = 'ready to dispatch' THEN 1 ELSE 0 END) AS readytodispatch,

        SUM(CASE WHEN status = 'picked' THEN 1 ELSE 0 END) AS picked,

        SUM(CASE WHEN status = 'in progress' THEN 1 ELSE 0 END) AS inprogress,

        SUM(CASE WHEN status = 'delivered' THEN 1 ELSE 0 END) AS delivered,

        SUM(CASE WHEN status = 'cancelled' THEN 1 ELSE 0 END) AS cancelled

    FROM orders WHERE storeid = store_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetStoreOrderCountForMonth` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetStoreOrderCountForMonth`(

    IN given_date DATE,

    IN givenStoreId INT,

    OUT todaysOrders INT,

    OUT yesterdaysOrders INT,

    OUT weekOrders INT,

    OUT monthOrders INT

)
BEGIN

  

    SELECT count(*) INTO todaysOrders

    FROM orders

    WHERE DATE(orderdate) = given_date AND orders.status <> 'cancelled' AND  storeid=givenStoreId;





    SELECT count(*) INTO yesterdaysOrders

    FROM orders

    WHERE DATE(orderdate) = DATE_SUB(given_date, INTERVAL 1 DAY) AND orders.status <> 'cancelled' AND storeid=givenStoreId;



 

    SELECT count(*) INTO weekOrders

    FROM orders

    WHERE DATE(orderdate) BETWEEN DATE_SUB(given_date, INTERVAL (DAYOFWEEK(given_date) - 1) DAY) 

    AND DATE_ADD(given_date, INTERVAL (7 - DAYOFWEEK(given_date)) DAY) AND orders.status <> 'cancelled' AND storeid=givenStoreId; 

  

     SELECT count(*) INTO monthOrders

    FROM orders

    WHERE DATE(orderdate) BETWEEN DATE_SUB(given_date, INTERVAL DAY(given_date) - 1 DAY)

    AND LAST_DAY(given_date) AND orders.status <> 'cancelled' AND storeid=givenStoreId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTopFiveSellingProductQuantityByStore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTopFiveSellingProductQuantityByStore`(

    IN todays_date DATE,

    IN mode VARCHAR(255),

    IN store_id INT

)
BEGIN

 DECLARE totalquantity INT default 0;

  IF mode= 'today' THEN

   

    SELECT SUM(orderdetails.quantity) INTO totalquantity FROM orderdetails

    INNER JOIN productdetails ON productdetails.id = orderdetails.productdetailsid

    INNER JOIN orders ON orders.id = orderdetails.orderid

    INNER JOIN products ON productdetails.productid = products.id

    WHERE DATE(orders.orderdate) = todays_date AND orders.status <> 'cancelled'  AND storeid=store_id;





    SELECT totalquantity, products.id as productid,SUM(orderdetails.quantity) as quantity,

    ((SUM(orderdetails.quantity)/totalquantity)*100) as percentage,

    products.title as title,products.image as imageurl FROM orderdetails

    INNER JOIN productdetails ON productdetails.id = orderdetails.productdetailsid

    INNER JOIN orders ON orders.id = orderdetails.orderid

    INNER JOIN products ON productdetails.productid = products.id

    WHERE DATE(orders.orderdate) = todays_date AND orders.status <> 'cancelled'  AND storeid=store_id

    GROUP BY productid

    ORDER BY quantity DESC

    LIMIT 5; 



 ELSEIF mode='yesterday' THEN

    SELECT SUM(orderdetails.quantity) INTO totalquantity FROM orderdetails

    INNER JOIN productdetails ON productdetails.id = orderdetails.productdetailsid

    INNER JOIN orders ON orders.id = orderdetails.orderid

    INNER JOIN products ON productdetails.productid = products.id

    WHERE DATE(orderdate) = DATE_SUB(todays_date, INTERVAL 1 DAY) AND orders.status <> 'cancelled' AND storeid=store_id;

 

    SELECT totalquantity, products.id AS productid, SUM(orderdetails.quantity) AS quantity,

    ((SUM(orderdetails.quantity)/totalquantity)*100) as percentage,

    products.title as title ,products.image as imageurl FROM orderdetails

    INNER JOIN productdetails ON productdetails.id = orderdetails.productdetailsid

    INNER JOIN orders ON orders.id = orderdetails.orderid

    INNER JOIN products ON productdetails.productid = products.id

    WHERE DATE(orderdate) = DATE_SUB(todays_date, INTERVAL 1 DAY) AND orders.status <> 'cancelled'  AND storeid=store_id

    GROUP BY productid

    ORDER BY quantity DESC

    LIMIT 5;



 ELSEIF mode='week' THEN



    SELECT SUM(orderdetails.quantity) INTO totalquantity FROM orderdetails

    INNER JOIN productdetails ON productdetails.id = orderdetails.productdetailsid

    INNER JOIN orders ON orders.id = orderdetails.orderid

    INNER JOIN products ON productdetails.productid = products.id

    WHERE DATE(orders.orderdate) BETWEEN DATE_SUB(todays_date, INTERVAL (DAYOFWEEK(todays_date) - 1) DAY) 

    AND DATE_ADD(todays_date, INTERVAL (7 - DAYOFWEEK(todays_date)) DAY) AND orders.status <> 'cancelled'  AND storeid=store_id;

    



    SELECT totalquantity, products.id AS productid, SUM(orderdetails.quantity) AS quantity,

    ((SUM(orderdetails.quantity)/totalquantity)*100) as percentage,

    products.title as title ,products.image as imageurl FROM orderdetails

    INNER JOIN productdetails ON productdetails.id = orderdetails.productdetailsid

    INNER JOIN orders ON orders.id = orderdetails.orderid

    INNER JOIN products ON productdetails.productid = products.id

    WHERE DATE(orders.orderdate) BETWEEN DATE_SUB(todays_date, INTERVAL (DAYOFWEEK(todays_date) - 1) DAY) 

    AND DATE_ADD(todays_date, INTERVAL (7 - DAYOFWEEK(todays_date)) DAY) AND orders.status <> 'cancelled'  AND storeid=store_id

    GROUP BY productid

    ORDER BY quantity DESC

    LIMIT 5;

 ELSEIF mode='month' THEN



    SELECT SUM(orderdetails.quantity) INTO totalquantity FROM orderdetails

    INNER JOIN productdetails ON productdetails.id = orderdetails.productdetailsid

    INNER JOIN orders ON orders.id = orderdetails.orderid

    INNER JOIN products ON productdetails.productid = products.id

    WHERE DATE(orders.orderdate) BETWEEN DATE_SUB(todays_date, INTERVAL DAY(todays_date) - 1 DAY)

    AND LAST_DAY(todays_date) AND orders.status <> 'cancelled'  AND storeid=store_id;

    

    SELECT totalquantity, products.id AS productid,SUM(orderdetails.quantity) AS quantity,

    ((SUM(orderdetails.quantity)/totalquantity)*100) as percentage,

    products.title as title ,products.image as imageurl FROM orderdetails

    INNER JOIN productdetails ON productdetails.id = orderdetails.productdetailsid

    INNER JOIN orders ON orders.id = orderdetails.orderid

    INNER JOIN products ON productdetails.productid = products.id

    WHERE DATE(orders.orderdate) BETWEEN DATE_SUB(todays_date, INTERVAL DAY(todays_date) - 1 DAY)

    AND LAST_DAY(todays_date) AND orders.status <> 'cancelled'  AND storeid=store_id

    GROUP BY productid

    ORDER BY quantity DESC

    LIMIT 5;



 END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertpayment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertpayment`(

    IN mode VARCHAR(255),

    IN paymentstatus VARCHAR(255),

    IN transactionid INT,

    IN orderid INT

)
BEGIN

    IF mode = 'cash on delivery' THEN

        INSERT INTO payments ( mode, paymentstatus, orderid)

        VALUES ( mode, paymentstatus, orderid);

    ELSEIF mode = 'net banking' THEN

        INSERT INTO payments ( mode, paymentstatus, transactionid, orderid)

        VALUES ( mode,paymentstatus,transactionid,orderid);

    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `NotAnsweredQuestions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NotAnsweredQuestions`(

    IN given_userid INT

)
BEGIN

SELECT questions.id, questions.description

FROM questions

LEFT JOIN answers ON questions.id = answers.questionid

LEFT JOIN subjectmatterexperts ON subjectmatterexperts.categoryid = questions.categoryid

WHERE answers.questionid IS NULL AND subjectmatterexperts.userid=given_userid ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-28 21:35:23
