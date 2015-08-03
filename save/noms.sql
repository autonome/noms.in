-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: noms
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uri` char(64) NOT NULL DEFAULT '',
  `city` varchar(64) NOT NULL DEFAULT '',
  `description` mediumtext,
  `state_id` smallint(5) unsigned DEFAULT NULL,
  `country_id` smallint(5) unsigned NOT NULL,
  `flickr_id` bigint(20) unsigned DEFAULT NULL,
  `curator_id` smallint(5) unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` int(10) unsigned DEFAULT NULL,
  `modified` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uri` (`uri`),
  KEY `state_country` (`state_id`,`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'portland','Portland','While you’re in Portland, don’t be surprised if you happen upon a kilted man playing a bagpipe while riding a unicycle. That\'s the same kind of whacked out passion you’ll find in the food culture here.  Hell yeah they have chefs with meat grinders tattooed on their forearms.  Damn straight if you enter a pig from Iowa into a local food competition you need to be prepared for a brawl.  Portlandians are fiercely resolute in their food endeavors.',37,223,5251037943,1,1,NULL,1298922057),(2,'chiangmai','Chiang Mai','You thought you knew Thai food. With nearby borders of Burma, China and Laos, the Lanna (north) food is a cultural mash-up. From herbal sausages to Burmese curries to Chinese markets to barbecued frogs, Chiang Mai will spin your tastebuds around.',0,208,5299291846,2,1,NULL,1298715056),(3,'hanoi','Hanoi','Hanoi has 6.5 million people, all bent on blowing your mind with culinary creativity. DIY motorbike kitchens, ice cream fanaticism, cross-cultural noodle cornucopia, and the whole damn place powered on \"fresh beer\". Bring elastic pants. And a helmet.',0,229,5319553986,2,1,1294380961,1298400625),(4,'seattle','Seattle','Seattle may be known for the Space Needle, the beauty of the Puget Sound, and the distant Mount Rainier.  For me, the real landmarks are its food destinations.  I have to start my food adventures at Pike Place Market, and let my belly lead me to the next stop.  Salumi to the South?  Le Pichet just to the north?  Anchovies & Olives a little to the east?  Dear Belly, where shall we venture next?',47,223,2054456648,1,1,1294380993,1298715360),(5,'vancouver','Vancouver','You only need to be in Vancouver for 1 hour in the summer and you’ll be ready to move there.  Waterways define neighborhood borders, beaches crawl up to city streets, bikers pedal and kayakers paddle their way around town.  But it’s the clean air and delicate conifer aromas, with pockets of wafting garlic frying in Chinese woks, beef short ribs sizzling in Korean barbecues, and shrimp tempura smoking from Japanese izakayas that will win your heart.',52,39,111220912,1,1,1294381007,1298747779),(6,'sanfrancisco','San Francisco','',5,223,157988911,4,0,1294381056,1298145812),(7,'washingtondc','Washington DC','',0,223,0,NULL,0,1294381084,1294381485),(8,'neworleans','New Orleans','My experience of New Orleans is that it\'s a city of too much; too much booze-soaked music, too much rich food, too much humidity, too much sorrow. It\'s a city very much in the South but with an identity unlike anywhere else. I\'ve never been in a city inside the United States that felt so little a part of it. It\'s a mixture of the elegance of Europe with the broken infrastructure of some communist backwater. Moss-draped boulevards lined with ornate mansions have potholes deep enough to lose a tire. Get there quick before sand and sea swallow it whole.',18,223,2645345487,3,1,1295722869,1298926927),(9,'chicago','Chicago','',13,223,0,NULL,0,1295743629,1295747260),(10,'portland-me','Portland ME','',19,223,0,5,0,1298749994,1298750131),(11,'boston','Boston','From nanotechnology to oyster farming, Boston is known to geek out on pretty much everything. In-house butchering, Fernet-Branca and handmade burrata are familiar sights; Boston can even boast its very own bean-to-bar chocolate factory (take that, Monsieur Wonka). The city is ferociously walkable, with clusters of neighborhoods defined by respective townie roots, the new-school influx, and next generations of the eagerly hungry. Go on and make history.',21,223,1397029646,5,1,1298750136,1299698516),(12,'newdelhi','New Delhi','The people here may be as bi-polar as the city’s weather, but take a bite from Delhi’s myriad kitchens and either of two things will happen – everything will make sense or you’ll stop caring if it doesn’t. Secret recipes originally crafted for the Mughals and Nawabs will make you want a lavish life forever, tangy South Indian gravies will lure you into mischief and blissful Bengali cuisine will leave you sighing for more. Add to this, midnight Punjabi meals, freshly-brewed wheat beer and chickpeas with bread for breakfast and you’ll stop trusting everything you’ve heard about Delhi. Or maybe you’ll stop trusting yourself.',0,98,0,7,0,1301132753,1301133401),(13,'sandiego','San Diego','Sun-drenched San Diego sports spectacular surfing, generous ocean views, and friendly locals who radiate a cool, laid-back California vibe. While the city’s food reputation once hinged on beachside fish tacos and tequila laced margaritas, today it’s burnishing a more sophisticated palate with an emphasis on local. Of course, it helps that chefs can tap into a year-round growing season and nearly 375 organic farms in the county to support them. We think this city’s on the verge of losing its one-flip-flop-still-in-the-water reputation.',5,223,4106385154,8,1,1306695850,1306696455),(14,'sonoma','Sonoma','The town of Healdsburg, in Sonoma County, is the locus of wine activity for several wine growing regions, such as the Russian River Valley, Dry Creek Valley, and the Sonoma Coast. The region is home to 14 Michelin starred or mentioned restaurants, but without the year-round crowds found in Napa Valley.',5,223,5484041146,4,1,1315244654,1315246511);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(64) NOT NULL DEFAULT '',
  `country_iso` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','AF'),(2,'Albania','AL'),(3,'Algeria','DZ'),(4,'American Samoa','AS'),(5,'Andorra','AD'),(6,'Angola','AO'),(7,'Anguilla','AI'),(8,'Antarctica','AQ'),(9,'Antigua and Barbuda','AG'),(10,'Argentina','AR'),(11,'Armenia','AM'),(12,'Aruba','AW'),(13,'Australia','AU'),(14,'Austria','AT'),(15,'Azerbaijan','AZ'),(16,'Bahamas','BS'),(17,'Bahrain','BH'),(18,'Bangladesh','BD'),(19,'Barbados','BB'),(20,'Belarus','BY'),(21,'Belgium','BE'),(22,'Belize','BZ'),(23,'Benin','BJ'),(24,'Bermuda','BM'),(25,'Bhutan','BT'),(26,'Bolivia','BO'),(27,'Bosnia and Herzegovina','BA'),(28,'Botswana','BW'),(29,'Bouvet Island','BV'),(30,'Brazil','BR'),(31,'British Indian Ocean Territory','IO'),(32,'Virgin Islands, British','VG'),(33,'Brunei Darussalam','BN'),(34,'Bulgaria','BG'),(35,'Burkina Faso','BF'),(36,'Burundi','BI'),(37,'Cambodia','KH'),(38,'Cameroon','CM'),(39,'Canada\r','CA'),(40,'Cape Verde','CV'),(41,'Cayman Islands','KY'),(42,'Central African Republic','CF'),(43,'Chad','TD'),(44,'Chile','CL'),(45,'China','CN'),(46,'Christmas Island','CX'),(47,'Cocos (Keeling) Islands','CC'),(48,'Colombia','CO'),(49,'Comoros','KM'),(50,'Congo','CG'),(51,'Cook Islands','CK'),(52,'Costa Rica','CR'),(53,'Croatia','HR'),(54,'Cuba','CU'),(55,'Cyprus','CY'),(56,'Czech Republic','CZ'),(57,'Denmark','DK'),(58,'Djibouti','DJ'),(59,'Dominica','DM'),(60,'Dominican Republic','DO'),(61,'Timor-Leste','TL'),(62,'Ecuador','EC'),(63,'Egypt','EG'),(64,'El Salvador','SV'),(65,'Equatorial Guinea','GQ'),(66,'Eritrea','ER'),(67,'Estonia','EE'),(68,'Ethiopia','ET'),(69,'Falkland Islands (Malvinas)','FK'),(70,'Faroe Islands','FO'),(71,'Fiji','FJ'),(72,'Finland','FI'),(73,'France','FR'),(74,'French Guiana','GF'),(75,'French Polynesia','PF'),(76,'French Southern Territories','TF'),(77,'Gabon','GA'),(78,'Gambia','GM'),(79,'Georgia','GE'),(80,'Germany','DE'),(81,'Ghana','GH'),(82,'Gibraltar','GI'),(83,'Greece','GR'),(84,'Greenland','GL'),(85,'Grenada','GD'),(86,'Guadeloupe','GP'),(87,'Guam','GU'),(88,'Guatemala','GT'),(89,'Guinea','GN'),(90,'Guinea-Bissau','GW'),(91,'Guyana','GY'),(92,'Haiti','HT'),(93,'Heard Island and McDonald Islands','HM'),(94,'Honduras','HN'),(95,'Hong Kong','HK'),(96,'Hungary','HU'),(97,'Iceland','IS'),(98,'India','IN'),(99,'Indonesia','ID'),(100,'Iran','IR'),(101,'Iraq','IQ'),(102,'Ireland','IE'),(103,'Israel','IL'),(104,'Italy','IT'),(105,'CÃ´te d\'Ivoire','CI'),(106,'Jamaica','JM'),(107,'Japan','JP'),(108,'Jordan','JO'),(109,'Kazakhstan','KZ'),(110,'Kenya','KE'),(111,'Kiribati','KI'),(112,'Korea, North','KP'),(113,'Korea, South','KR'),(114,'Kuwait\r',''),(115,'Kyrgyzstan','KG'),(116,'Lao People\'s Democratic Republic','LA'),(117,'Latvia','LV'),(118,'Lebanon','LB'),(119,'Lesotho','LS'),(120,'Liberia','LR'),(121,'Libyan Arab Jamahiriya','LY'),(122,'Liechtenstein','LI'),(123,'Lithuania','LT'),(124,'Luxembourg','LU'),(125,'Macao','MO'),(126,'Macedonia','MK'),(127,'Madagascar','MG'),(128,'Malawi','MW'),(129,'Malaysia','MY'),(130,'Maldives','MV'),(131,'Mali','ML'),(132,'Malta','MT'),(133,'Marshall Islands','MH'),(134,'Martinique','MQ'),(135,'Mauritania','MR'),(136,'Mauritius','MU'),(137,'Mayotte','YT'),(138,'Mexico','MX'),(139,'Micronesia, Federated States of','FM'),(140,'Moldova','MD'),(141,'Monaco','MC'),(142,'Mongolia','MN'),(143,'Montserrat','MS'),(144,'Morocco','MA'),(145,'Mozambique','MZ'),(146,'Myanmar','MM'),(147,'Namibia','NA'),(148,'Nauru','NR'),(149,'Nepal','NP'),(150,'Netherlands','NL'),(151,'Netherlands Antilles','AN'),(152,'New Caledonia','NC'),(153,'New Zealand','NZ'),(154,'Nicaragua','NI'),(155,'Niger','NE'),(156,'Nigeria','NG'),(157,'Niue','NU'),(158,'Norfolk Island','NF'),(159,'Northern Mariana Islands','MP'),(160,'Norway','NO'),(161,'Oman','OM'),(162,'Pakistan','PK'),(163,'Palau','PW'),(164,'Panama','PA'),(165,'Papua New Guinea','PG'),(166,'Paraguay','PY'),(167,'Peru','PE'),(168,'Philippines','PH'),(169,'Pitcairn','PN'),(170,'Poland','PL'),(171,'Portugal','PT'),(172,'Puerto Rico','PR'),(173,'Qatar','QA'),(174,'RÃ©union','RE'),(175,'Romania','RO'),(176,'Russia','RU'),(177,'Rwanda','RW'),(178,'South Georgia and the South Sandwich Islands','GS'),(179,'Saint Kitts and Nevis','KN'),(180,'Saint Lucia','LC'),(182,'Samoa','WS'),(183,'San Marino','SM'),(184,'Sao Tome and Principe','ST'),(185,'Saudi Arabia','SA'),(186,'Senegal','SN'),(187,'Seychelles','SC'),(188,'Sierra Leone','SL'),(189,'Singapore','SG'),(190,'Slovakia','SK'),(191,'Slovenia','SI'),(192,'Somalia','SO'),(193,'South Africa','ZA'),(194,'Spain','ES'),(195,'Sri Lanka','LK'),(198,'Sudan','SD'),(199,'Suriname','SR'),(200,'Svalbard and Jan Mayen','SJ'),(201,'Swaziland','SZ'),(202,'Sweden','SE'),(203,'Switzerland','CH'),(204,'Syria','SY'),(205,'Taiwan','TW'),(206,'Tajikistan','TJ'),(207,'Tanzania','TZ'),(208,'Thailand','TH'),(209,'Togo','TG'),(210,'Tokelau','TK'),(211,'Tonga','TO'),(212,'Trinidad and Tobago','TT'),(213,'Tunisia','TN'),(214,'Turkey','TR'),(215,'Turkmenistan','TM'),(216,'Turks and Caicos Islands','TC'),(217,'Tuvalu','TV'),(218,'United States Minor Outlying Islands','UM'),(219,'Uganda','UG'),(220,'Ukraine','UA'),(221,'United Arab Emirates','AE'),(222,'United Kingdom','uk'),(223,'United States','US'),(224,'Uruguay','UY'),(225,'Uzbekistan','UZ'),(226,'Vanuatu','VU'),(227,'Holy See (Vatican City State)','VA'),(228,'Venezuela','VE'),(229,'Vietnam','VN'),(230,'Virgin Islands, United States','VI'),(231,'Wallis and Futuna','WF'),(232,'Western Sahara','EH'),(233,'Yemen','YE'),(236,'Zambia','ZM'),(237,'Zimbabwe','ZW'),(242,'Ã…land Islands','AX'),(243,'Congo, Democratic Republic of the','CD'),(244,'Guernsey','GG'),(245,'Isle of Man','IM'),(246,'Jersey','JE'),(247,'Montenegro','ME'),(248,'Palestinian Territory','PS'),(249,'Saint BarthÃ©lemy','BL'),(250,'Saint Helena','SH'),(251,'Saint Martin','MF'),(252,'Saint Pierre and Miquelon','PM'),(253,'Saint Vincent and the Grenadines','VC'),(254,'Serbia','RS'),(255,'Solomon Islands','SB');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curators`
--

DROP TABLE IF EXISTS `curators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curators` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `twitter` char(32) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `bio` mediumtext,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curators`
--

LOCK TABLES `curators` WRITE;
/*!40000 ALTER TABLE `curators` DISABLE KEYS */;
INSERT INTO `curators` VALUES (1,'Ryan Snyder','ryansnyder','ryansnyder.me@gmail.com','Ryan was raised in a funeral home, and consequently takes everything too seriously. Especially food.  He doesn’t shy away from smoking 25 pounds of pork belly, nor from undertaking an intense year of “study” sessions to become a <a href=\"http://www.mastersommeliers.org/\">certified sommelier</a>.  He writes about charcuterie on <a href=\"http://meatclub.in/\">Meat Club</a>, and hosts recipes with his venture <a href=\"http://www.foodgeeks.com/\">Foodgeeks</a>.',1,0,1332787000),(2,'Dietrich Ayala','dietrich','autonome@gmail.com','Dietrich was an espresso jerk in Seattle, a catering chef in New Orleans, a dinner chef in Seattle, and finally hit rock bottom after buying a computer, which saddled him with an addiction to technology as well as food. He and his family live in Chiang Mai, Thailand, where he eats unreasonably well during the day, and makes <a href=\"http://www.mozilla.com/firefox\">Firefox</a> better at night.',1,0,1298714916),(3,'Crystal Beasley','skinny','crystal@skinnywhitegirl.com','Crystal is a designer who wanted to test gaming theory in the real world.  So she created a <a href=\"http://www.kickstarter.com/projects/1673171669/pielab-a-game-laboratory-food-cart-by-skinny\">Kickstarter project</a> and raised $1,600 to build a pie cart. She baked her Granny\'s favorite pie recipes, and sold the slices after games of roshambo. Her next mission is to revolutionize the way women\'s jeans are made and sold at <a href=\"http://qcut.co/\">Qcut</a>.',1,0,1413295477),(4,'David Scheidt','thecuredham','david@mastroscheidt.com','David has found time to cook in Italy, Morocco, and Thailand, start his own wine company in Sonoma County, write the food blog <a href=\"http://www.thecuredham.com/\">TheCuredHam.com</a>, build two custom barbeques, climb The Eiger and maintain his day job in corporate investment finance. David currently resides in Healdsburg, California.',1,0,1328213328),(5,'Christine Liu','liuliuliu','liuliuliu@gmail.com','Christine Liu careens around the city one darling bite at a time. Her writings on local food, drink and fashion have been published in <a href=\"http://www.boston.com/bostonglobe/\">The Boston Globe</a>, <a href=\"http://www.bostonmagazine.com/\">Boston Magazine</a>, <a href=\"http://www.budgettravel.com/\">Budget Travel</a> and <a href=\"http://www.dailycandy.com/boston/\">DailyCandy Boston</a>. A resident of Somerville, Christine is often seen indulging her penchant for small pleasures, like squirting sriracha on noodles, sipping negronis at midnight, and taking her MacBook for refreshing little walks.',1,1298144723,1303496262),(6,'Sunny Brown','esunnybrown','bsundown53@yahoo.com','',0,1298144752,1298144785),(7,'Yousuf Rangoonwala and Kalapi Gajjar','nomsinnewdelhi','','<b>Yousuf</b>: As someone who’s grown up eating Gujarati, Bengali, Pakistani and Burmese food at home, Yousuf minces no words when it comes to his love for food. He\'s a daytime advertising professional, die-hard Chelsea and Batman fan, former barista, and writer of an unfinished Chicken Soup for the Indian soul and a lifelong seeker of divinity in food.\n\n<b>Kalapi</b>: Kalapi sleeps occasionally. He laughs a lot. When doing neither, he eats, discovers new places to eat, works in advertising, designs comic books, does social experiments and edits films. He dreams of photographing birds during the day, creating new typography at night and is secretly working on \"Refinement Techniques for the Punjabi Man\".',1,1299903896,1299904137),(8,'Clare Leschin-Hoar','c_leschin','ryansnyder.me+clare@gmail.com','<a href=\"http://leschin-hoar.com/\">Clare Leschin-Hoar</a> has been exploring San Diego after recently relocating from Boston, discovering her new city is much more than just a craft-beer powerhouse. Good eats can be had in pockets throughout the city, from upscale La Jolla to hipster-heavy Hillcrest. Her work has appeared in the <a href=\"http://online.wsj.com/article/SB124421534407589317.html\">The Wall Street Journal</a>, <a href=\"http://www.sandiegomagazine.com/currentissue/\">San Diego Magazine</a>, <a href=\"http://www.eatingwell.com\">EatingWell</a> and more.',1,1304959361,1306776056);
/*!40000 ALTER TABLE `curators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` smallint(5) unsigned DEFAULT NULL,
  `place_id_1` smallint(5) unsigned DEFAULT NULL,
  `place_id_2` smallint(5) unsigned DEFAULT NULL,
  `place_id_3` smallint(5) unsigned DEFAULT NULL,
  `place_id_4` smallint(5) unsigned DEFAULT NULL,
  `date_start` int(10) unsigned DEFAULT NULL,
  `date_end` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date` (`date_start`,`date_end`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,1,1,12,11,9,1391241600,1451635199,1,1298156131,1406189739),(2,3,19,34,18,16,1301641200,1304405999,1,1298156278,1304463732),(3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1298156292,1298156292),(4,11,50,33,29,51,1304406000,1306911599,1,1304463232,1306776515),(5,13,54,52,53,55,1306911600,1309935599,1,1306776519,1309996745),(6,4,21,25,20,15,1309935600,1321862399,1,1309996524,1316962910),(7,14,62,59,63,65,1353484800,1354348799,1,1321999863,1356102772);
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `place_id` int(11) unsigned DEFAULT NULL,
  `title` varchar(128) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `credit_name` varchar(128) NOT NULL DEFAULT '',
  `credit_url` varchar(255) NOT NULL DEFAULT '',
  `rights_name` varchar(128) NOT NULL DEFAULT '',
  `rights_url` varchar(255) NOT NULL DEFAULT '',
  `flickr_id` bigint(20) unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `place` (`place_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `place` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `address_1` varchar(192) DEFAULT NULL,
  `address_2` varchar(192) DEFAULT NULL,
  `city_id` int(10) unsigned DEFAULT NULL,
  `city` varchar(96) DEFAULT NULL,
  `state_id` smallint(5) unsigned DEFAULT NULL,
  `zip` varchar(16) DEFAULT NULL,
  `country_id` smallint(5) unsigned NOT NULL DEFAULT '223',
  `website` varchar(192) DEFAULT NULL,
  `flickr_id` bigint(20) unsigned DEFAULT NULL,
  `latitude` decimal(18,14) DEFAULT NULL,
  `longitude` decimal(17,14) DEFAULT NULL,
  `weight` tinyint(3) unsigned DEFAULT '0',
  `user_id` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `status_city` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` int(10) unsigned NOT NULL DEFAULT '0',
  `uri` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `location` (`country_id`,`state_id`,`city`),
  KEY `place` (`place`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (1,'Pok Pok','Lunch at Pok Pok','Ike\'s Fish Sauce Chicken Wings are reason enough to visit Portland, let alone Pok Pok.  This is perhaps the finest example of Thai street food you will find outside of Thailand.  Be sure to taste the neua naam tok, a flank steak salad that is laden with lemongrass, mint and cilantro, and the som tam, a thinly shaved papaya salad that is as zippy as it is spicy.  Sweetened iced teas, condensed milk coffees, drinking vinegars, you name it - they have Thailand down.  Make sure you arrive before noon on a hot summer day to get a prime spot on the patio.','3226 SE Division Street','',1,'Portland',37,'97202',223,'http://www.pokpokpdx.com/',3937465679,'45.50458200000000','-122.63214500000000',0,1,1,1,1294222733,1299991534,'pokpok'),(2,'Beaker and Flask','Dinner and Drinks at Beaker and Flask','The reverse-engineered cocktails at Beaker and Flask will blow your proverbial lid.  Negronis are made with aquavit and Cynar, and you\'ll barely recognize the difference between it and a classic negroni.  The ravioli gnudi is a must-try, the chantrelles roasted with bone marrow are hauntingly delicious, and the millas (fried polenta topped with house-made bacon, poached egg, maple syrup and paprika) might be my favorite late night nosh.','720 SE Sandy Blvd.','',1,'Portland',37,'97214',223,'http://www.beakerandflask.com/',3754401391,'45.51885700000000','-122.65806500000000',7,1,1,1,1294222832,1299991423,'beaker-and-flask'),(3,'Huen Phen','Northern Thai Delicacies at Huen Phen','Lunch is open air seating out front, busy and loud. Dinner is in back, quiet and serene, surrounded by thousands of Thai handicrafts. You might wait a bit regardless of when you go, but it\'ll be worth it - the selection of Lanna (northern Thai) food is fantastic. The nam prik moo (crispy pork chili paste) is a great combination of heat and sweet. The Burmese pork curry is a succulent experience of silk and cinnamon, with large chunks of tender pork hanging off the bone.','112 Ratchamanka Road','Phra Singh, Mueang Chiang Mai',2,'Chiang Mai',0,'50300',208,'',4279948897,'18.78598800000000','98.98520600000000',0,2,1,1,1294223182,1299991182,'huen-phen'),(4,'Soi Lamduan','Lunch at Khao Soi Lamduan','Get lunch early, because this place is full of locals who come for one of the thickest, headiest renditions of the north\'s emblematic soup.','352/22 Charoen Rat','Chiang Moi, Mueang Chiang Mai',2,'Chiang Mai',0,'50100',208,'',4882785448,'18.79750100000000','99.00236500000000',0,2,1,1,1294223590,1299991171,'khao-soi-lamduan'),(5,'Poom Chai Gai Yang','Poom Chai Gai Yang','Sure, you can get a wing at carts all over town, but this place grills it up by the half bird, and it\'s so tasty you *want* it in bulk. The som tam is fresh, crisp, cold and not so spicy that your palate is seared. They close early - once we got there at 20:30 and the grill was already cold. The address is for Chiang Mai Ram hospital. Facing the hospital, walk left for about 100 yards - it\'s the bit entryway just past the 7-11. Yeah, the one with the giant grill covered with chicken.','Chiang Mai Ram Hospital','8 Bunrueang Rit',2,'Chiang Mai',0,'50200',208,'',5413514368,'18.79394000000000','98.97805600000000',0,2,1,1,1294296874,1296746284,'gaiyang-somtam'),(6,'Sudsanan','Beers and Live Music at Sudsanan','Centrally located and yet so hard to find, Sudsanan is an old wooden house at the end of a dark unpaved driveway... just off one of Chiang Mai\'s busiest streets. A great Issan menu, live music just about every night after 8pm, and cozy pub feel all make for a nice place to meet friends and lose hours to idleness.','30/1 Huai Kaeo Road','',2,'Chiang Mai',0,'50300',208,'',5312378708,'18.80320100000000','98.96453300000000',0,2,1,1,1294300768,1299991149,'sudsanan'),(7,'Huay Kaew Mukata','Huay Kaew Mukata: Epic Thai Feast','Imagine an open-air structure with 500 people, an all-you-can-eat buffet of Thai food both uncooked and prepared, a hot-pot over flaming coals at your table, live comedy and music, and servers in very short beer-branded dresses refilling your glass with ice and beer, over many hours. This is mukata.\n\nThere are several large mukata places in Chiang Mai. The biggest is behind the Hillside Plaza on Huay Kaew. The entrance is the just to the right of the Hillside Plaza, down a long driveway. Any tuk-tuk driver will be able to take you there as well.','Hillside Plaza & Condotel 4','50 Huay Kaew Road',2,'Chiang Mai',0,'50300',208,'',5359331445,'18.80023200000000','98.97028000000000',0,2,1,1,1294307167,1299991162,'huay-kaew-mukata'),(8,'Clarklewis','Happy Hour or Dinner at Clarklewis','Walk in the door, and you\'ll be greeted by a waft of wood-fire smoke from the open kitchen oven.  Clarklewis is owned by Bruce Carey, who almost single-handedly revolutionized the Portland food scene in the mid-90s with his restaurant Zefiro.  Here you\'ll find a farm-to-table focus, with a quality kitchen crew that is always banging out amazing noms.  Whether you\'re looking for house-made pasta or spit-roasted pork shoulder, a happy hour or a 4-course meal, your belly will thank you.','1001 SE Water Ave #160','',1,'Portland',37,'',223,'http://www.clarklewispdx.com/',3950061015,'45.51512100000000','-122.66585100000000',0,1,1,0,1294310680,1299991497,'clarklewis'),(9,'DOC','Intimate Dinner at DOC','When you open the front door, you walk right into the restaurant\'s kitchen.  DOC is a small, 24-seat restaurant and it\'s a good idea to secure reservations.  It features Italian-inspired dishes that focus on letting its few ingredients standout.  Ask for the 5-course chef\'s menu with a custom wine pairing; your palate will get rocked.','5519 NE 30th Avenue','',1,'Portland',37,'97211',223,'http://www.docpdx.com/',2698234968,'45.56308400000000','-122.63495200000000',4,1,1,1,1294315650,1299991412,'doc'),(10,'Saraveza','Beers at Saraveza','Saraveza is one of those quaint, campy pubs where you\'ll find a panty-house covered leg lamp, a dust-covered Spuds McKenzie, and mongers who really know their shit.  Between a hand-selected tap list and old Viking refrigerators filled with great bottle selections, this is a grand place to quaff some microbrews.','1004 North Killingsworth Street','',1,'Portland',37,'97217',223,'http://www.saraveza.com',4479806971,'45.56254000000000','-122.67725900000000',7,1,1,1,1294316426,1299991246,'saraveza'),(11,'Barista','Cappuccino at Barista','Award-winning barista Billy Wilson has taken espresso-based beverages to a whole new level.  Choose from any of 3 rotating bean selections from places like Stumptown, Barefoot and Intelligentsia, as well as lesser-known microroasters.  Wilson owns 2 shops in Portland, one in the Pearl District and one on Alberta in NE Portland.  Either makes a great place to meet up with friends and to sink your teeth into a cloud of microfoam.','539 Northwest 13th Avenue','',1,'Portland',37,'',223,'http://baristapdx.com',4755361335,'45.52692700000000','-122.68446700000000',1,1,1,1,1294317706,1299991518,'barista'),(12,'Tasty and Sons','Brunch at Tasty and Sons','A tapas-inspired brunch that will leave you wishing you brought an extra stomach.  Start with bacon-wrapped dates and chocolate potato doughnuts, followed by cumin-maple glazed yams, veggie frittata in a cast iron skillet and a Moroccan Chicken Hash.  Yes, yes, yes.','3808 N. Williams, Suite C','',1,'Portland',37,'97212',223,'http://www.tastynsons.com/',4528843255,'45.55029400000000','-122.66640600000000',7,1,1,1,1294321877,1299991465,'tasty-and-sons'),(13,'Cartopia','Cartopia','Portland has been described as the city where food carts reign supreme.  You can find cart pods throughout the city, and almost every pod has a cart worth visiting.  Cartopia at 12th and Hawthorne is the first pod area to gain notoriety, thanks to the throng of geeks converging to partake of its late night treats (notably fried pies, crêpes and poutine). If it\'s lunch you desire, head on downtown to the carts at SW 10th and Alder; if you\'re looking for beer, hit the carts on N Mississippi and enjoy some deliciousness over weizens at Prost!','12th and SE Hawthorne','',1,'Portland',37,'97211',223,'',3755368062,'45.51220500000000','-122.65366800000000',9,1,1,0,1294370934,1337192164,'cartopia'),(14,'Le Pichet','Brunch at Le Pichet','I heart house-made charcuterie.  This French-inspired diner is walking distance from Pike Place Market, and is a great option for brunch.  Take your pick of pork rillette or chicken liver terrine, a lovingly-prepared salad, and a gratin dish of jambon, eggs and gruyère, broiled until a light, bubbly brown.','1933 1st Avenue','',4,'Seattle',47,'',223,'http://www.lepichetseattle.com',4550155219,'47.61090300000000','-122.34237500000000',1,1,1,1,1294644719,1300558160,'le-pichet'),(15,'Anchovies & Olives','Casual Dinner at Anchovies & Olives','If you\'re in the mood for seafood, you may not find a better place to enjoy it than at Anchovies & Olives.  It\'s yet another restaurant by Seattle restaurateur Ethan Stowell, but this in particular is standout, as its concise and refined menu focuses not on salmon, but whatever seafood is in season and the freshest catch of that morning.  Stop in at happy hour for the oyster power hour, or for a casual dinner to taste the Italian-inspired dishes that use a minimalistic approach to highlight house-made pasta and that day\'s fruit-of-the-sea.  I, for one, cannot wait to return.','1550 15th Ave','',4,'Seattle',47,'',223,'http://www.ethanstowellrestaurants.com/anchoviesandolives',5363024455,'47.61511800000000','-122.31274600000000',4,1,1,1,1294644780,1300558129,'anchovies-olives'),(16,'Sofitel Plaza Hotel','Rooftop drinks at the Sofitel Plaza Hotel','After a long, harried day traversing Hanoi\'s deathtrap streets, head 20 floors up to the Summit Lounge at the Sofitel Plaza hotel. The sounds of traffic have faded, the sun is drooping from red to orange, and the server is waiting for your cocktail order. Drinks, snacks and desserts, with a view of Ho Tay (West Lake) and west Hanoi, is a fantastic way to end the day... well, ok, to get ready for dinner anyways. Open at 16:30.','1 Thanh Nien Rd Ba Dinh','',3,'Hanoi',0,'',229,'http://www.sofitel.com/gb/hotel-3553-sofitel-plaza-hanoi/bar.shtml',5356410085,'21.05081100000000','105.83941000000000',0,2,1,1,1294644794,1299991224,'sofitel-plaza-hotel'),(17,'Salumi','Sandwiches at Salumi','Mario Batali\'s father created this house-cured charcuterie shop.  It\'s open 4 days a week - Tuesday to Friday, 11am to 4pm - and at 11am there is a line that wraps around an entire street block.  Trust me, it\'s worth the wait for a sopressata sandwich on a fresh ciabatta bun with provolone, grilled onions and peppers, and a swath of garlic-laced olive oil and pesto.','309 3rd Avenue South','',4,'Seattle',47,'',223,'http://www.salumicuredmeats.com/',5399009187,'47.59972500000000','-122.33038200000000',2,1,1,1,0,1300558175,'salumi'),(18,'Madame Hien','Culinary comfort at Madame Hien','Northern style Vietnamese cuisine in a beautifully restored French colonial era building. The food is prepared in such a comforting way, akin to French farmstyle cooking. The pork belly, braised in a silky dark red chili sauce, keeps you sinking further and further into your chair. The parade of food and elegant surroundings ensures you\'ll stick around for a few hours. (Picture by http://www.tripadvisor.com/members/atodmccarthy.)','15 Chan Cam','Hoan Kiem',3,'Hanoi',0,'',229,'http://verticale-hanoi.com/en/madame-hien',5342429138,'21.03005900000000','105.84783300000000',0,2,1,1,1294644893,1299991203,'madame-hien'),(19,'Bia Hoi','Bia Hoi','Bia hoi is Hanoi\'s famous \"fresh beer\". The places that serve it are not hard to spot: tiny plastic chairs around low tables, crowded with loads of Vietnamese men pounding back lager served in cracked glass mugs. There a bunch to choose from in the old city area, but the one we loved the best is marked on the map. For more, check out the Squeak Ice bia hoi directory, linked on this page.','1 Nhà Hỏa Hoan Kiem','',3,'Hanoi',0,NULL,229,'http://www.squeakieice.com/hanoi-bia-hoi/',5342465496,'21.03436900000000','105.84725800000000',0,2,1,1,1294648097,1295789156,'bia-hoi'),(20,'Uwajimaya International District','Uwajimaya International District','Uwajimaya is a large Asian grocery that helped revitalize an entire section of downtown Seattle.  The store itself is fairly massive, and features everything from an overflowing produce section, to an immense selection of sauces, to rice cookers and other household goods, and finally to a diverse food court.  Surrounding the store, you\'ll find a small town with restaurants dishing out dim sum, udon and any Pacific-focused delicacy your heart could desire.','600 5th Avenue South','',4,'Seattle',47,'',223,'http://www.uwajimaya.com',4168128192,'47.52439300000000','-122.32821100000000',8,1,1,1,1294695247,1300557942,'uwajimaya'),(21,'Pike Place Market','Pike Place Market','Every time I visit Seattle, my first destination is Pike Place Market, which is situated between the Puget Sound and downtown Seattle.  You\'ll find fish mongers tossing today\'s catch, while vendors man their stands selling handmade jewelry, local produce and flowers.  But the real treat is the plethora of shops offering fresh-made noms. The aroma from the Daily Dozen Doughnuts stand will draw you in like a magnet, you can taste the goods at Beecher\'s Handmade Cheese while watching the cheesemakers at work, and the Russian bakery Piroshky-Piroshky serves up their savory namesake stuffed with beef and onions.  Sure, it\'s a tourist destination, but it\'s one place you simply won\'t mind being a tourist yourself!','1501 Pike Place','',4,'Seattle',47,'',223,'http://www.pikeplacemarket.org/',3570667490,'47.60882900000000','-122.33999000000000',0,1,1,1,1294924724,1300558342,'pike-place-market'),(22,'Portland Farmers Market','Portland Farmers Market','Between mid-March and mid-December, the only place to be on a Saturday morning is the Portland Farmers Market.  You\'ll find 4 street blocks sectioned off to allow a throng of foot traffic to saunter between hundreds of produce vendors, food carts and spontaneous musicians. One April morning, I returned home with lamb shoulder raised by a local farmer, loaves of freshly-baked bread, as well as fiddlehead ferns and morels, and made one hell of a feast with friends who were visiting from out of town.','SW Park Ave & SW Montgomery St','',1,'Portland',37,NULL,223,'http://www.portlandfarmersmarket.org/',2521112677,'45.51227600000000','-122.68457300000000',8,1,1,1,1295207050,1298427163,'portland-farmers-market'),(23,'Naked City Taphouse','Brewskis at Naked City Taphouse','The Naked City Taphouse is a local beer geek\'s paradise. Here you\'ll find a rotating tap selection of Pacific Northwest-focused brews, and the servers can talk in-depth about each of the beers on the list.  Naked City also delves into the art of brewing, which allows you to choose from solid house-crafted brews and other hand-selected brews.','8564 Greenwood Ave N','',4,'Seattle',47,'',223,'http://nakedcitybrewing.com/',4298344630,'47.69183300000000','-122.35509000000000',7,1,1,1,1295209631,1300558092,'naked-city-taphouse'),(24,'Oddfellows','Mid-afternoon Noms at Oddfellows','It\'s mid-afternoon on rainy Seattle day and you need a reprieve from the Pacific Northwest consta-drizzle - go to Oddfellows.  Its creaky wood floors, high ceilings and tall windows create a cozy atmosphere to listen to baristas steaming milk for your cappuccino while watching the rain fall outside the window.  Stop in for coffee and cupcakes, or for a pre-dinner snack of deviled eggs, salt cod fritters one of their renowned apéritifs (perhaps as a prelude to the nearby Anchovies & Olives).','1525 10th Avenue','',4,'Seattle',47,'',223,'http://www.oddfellowscafe.com',5363699386,'47.61473800000000','-122.31946700000000',5,1,1,1,1295266832,1300558115,'oddfellows'),(25,'Campagne','Get Gussied Up for French Dining at Campagne','I\'ll admit it, I\'m a sucker for great foie gras and Burgundian pinot noir, both of which have been know to skew my bias for a place. Campagne provides a quaint dining space near the Pike Place Market that is worthy of a special occasion meal.  It serves up all sorts of French deliciousness, from the aforementioned to a roasted rack of lamb with a hearty mustard crust, to duck confit sauteed with savoy and cabbage, to roasted veal sweetbreads.  And the sommelier will quickly discern your taste for wine and recommend an outstanding bottle; for my party, it was 3 amazing bottles of premier cru Gevrey-Chambertin.','86 Pine St','',4,'Seattle',47,'',223,'http://www.campagnerestaurant.com',3123386601,'47.60972700000000','-122.34134700000000',9,1,1,1,1295268496,1300557919,'campagne'),(26,'Rocky & Carlos, Ladies Invited','Rocky & Carlos, Ladies Invited','','613 W Saint Bernard Hwy','',8,'New Orleans',18,NULL,223,'www.rockyandcarlos.com/',5378974967,'29.93892800000000','-89.97069500000000',0,3,0,1,1295744580,1296580809,'rockycarlos'),(27,'Casamento\'s Oysters','Casamento\'s Oysters','Upon walking through the door you would be forgiven for momentarily thinking you had entered a clean, well-lit, turn-of-the-century subway station. Really this panorama of floor to ceiling vintage tile is a temple to the gulf oyster. Order at least a dozen raw. Eat them plain or adulterated with lemon juice, hot sauce or horseradish. Other options include the famous oyster loaf; a pile of delicious fried bivalves dressed with mayonnaise, lettuce and tomato surrounded between slices of Texas toast with a pickle spear as garnish.','4330 Magazine St','',8,'New Orleans',18,NULL,223,'http://www.casamentosrestaurant.com',12388292,'29.92059400000000','-90.10105400000000',0,3,1,1,1295745349,1296530763,'casamentos'),(28,'Luke, a John Besh resto','Luke, a John Besh resto','Luke is by far the least wanky restaurant inside a Hilton Hotel I\'ve ever been to. Prepared with a notable Louisiana twist, this is the French brasserie food we all imagined we\'d be eating on our semester abroad in Paris that never happened due to reality and meager finances. Now that you\'re an adult, live the delusion. The belt driven fans, vintage tile and newspaper racks are just like the real thing, and the waiters at Luke are friendlier than those found in Montmatre. The charcuterie is varied and not to be missed, as is the happy hour where oysters are 50 cents and drinks half off. Two dozen on the half shell and at least three French 75\'s and you\'ll be well on your way to forgetting the pain of staying home that semester so you could finish up that minor in mathematics.','333 Saint Charles Ave','',8,'New Orleans',18,NULL,223,'http://www.lukeneworleans.com/',3739976662,'29.95064200000000','-90.07025200000000',0,3,1,1,1295745999,1296703448,'lukes'),(29,'Eastern Standard','Cocktails at Eastern Standard','Bespectacled, vest-clad, pomade-slicked bar manager Jackson Cannon wrote the book on classic cocktails in Boston; he also probably letter-pressed, hand-stitched, and leather-bound it as well. Eastern Standard\'s drink menu reads like a restored artifact, straightforward and surreptitious in its thematics (Standards, Sparklers, Table-Sized, Tiki-isms, Mocktails, &c) and employing house-made infusions, syrups, bitters, elixirs. Of the many excellent cocktail geeks\' options in Boston, Eastern Standard is worth a tipple—for the impressive cross-section of guests (it is in a hotel, after all), a perfectly graze-able brasserie menu, and a serious industry contingency (can you smell the Fernet?).','528 Commonwealth Avenue','',11,'Boston',21,'',223,'http://easternstandardboston.com',4738769440,'42.34873500000000','-71.09635600000000',1,1,1,1,1295746471,1299991478,'eastern-standard'),(30,'Myers + Chang','Lunch at Myers + Chang','It\'s scientifically proven that Myers + Chang will send you into states of shock for both cuteness <i>and</i> yumminess. Distractingly adorable husband-and-wife team of Christopher Myers and Joanne Chang (of wicked-good Flour Bakery - it\'s right down the street) give you hokey-fake Confucianisms and blasting rock-and-roll along with delicious turns on Asian classics like dan-dan noodles, banh mi or pork dumpling potstickers (à la Mama Chang). The well-seasoned woks (you can see them firing) each have their distinctive \"hay\" if you pay super close attention. Go for lunch, as it\'s just as fun and way less stressful than during the dinner crunch.','1145 Washington Street','',11,'Boston',21,'',223,'http://myersandchang.com',5169529705,'42.34377600000000','-71.06613600000000',5,1,1,1,1295746490,1299991120,'myers-chang'),(31,'Erbaluce','Dinner at Erbaluce','Erbaluce is a downtown gem, a mystical 5-minute walk away from wherever you seem to be, yet tucked away from the madding crowds just so. Drink gorgeously off-the-radar wine, delight in candlelit company, and be stupefied by simple pleasures like unctuous veal ribs or brightly sweet wild Maine shrimp. The flavors are comforting and unexpected at once, as chef (and dry wit) Charles Draghi creates an Italian tour de force that squeezes every type of pleasure out of exactingly sourced ingredients.','69 Church Street','Bay Village',11,'Boston',21,'02116-5418',223,'http://erbaluce-boston.com',5484154191,'42.35016400000000','-71.06844900000000',3,1,1,1,1295746502,1299991091,'erbaluce'),(32,'Oleana','Al Fresco at Oleana','With its deft orchestration of Mediterranean and Turkish-influenced spices, Oleana warms you from the belly out. Dishes are opulent and layered with complexity (and incidentally, most are vegetarian-friendly)—from pomegranate spoon salad, draped with gigante beans and fried shishito peppers, to the much beloved baked alaska (we suspect there’s a fan club). The Eden-esque patio, a cocoon from Cambridge\'s stirrings, is sensually lush with flora and <i>de rigueur</i> in summer months.','134 Hampshire Street','',11,'Cambridge',21,'',223,'http://www.oleanarestaurant.com/',1737676075,'42.36964300000000','-71.09585500000000',2,1,1,1,1295749364,1299991061,'oleana'),(33,'Hungry Mother','Late-Night at Hungry Mother','Boiled peanuts, salty-soft nibbles. Blackened little curlicues of tobacco onions. Pimiento cheese sandwiches tempered by dainty celery sticks and a fried pickled okra that nary got away. This tiny refuge for Southern-swayed appetites is a local obsession with its quietly genius beverage program, gratifying late-night menu until 12:30am, and mismatched dishes for kicks-grandma\'s-ass desserts (whatever it is, get it à la mode). If you’re tucking in for a serious dinner, reservations are wise; but we find that securing seats at the tiny bar is worth the gamble.','233 Cardinal Medeiros Avenue','',11,'Cambridge',21,'',223,'http://hungrymothercambridge.com',5023641753,'42.36911900000000','-71.09016100000000',0,1,1,1,1295749447,1299991109,'hungry-mother'),(34,'Bún Chả','Bún Chả','Hot smoky charred pork cakes. A mellow broth with a hint of sweetness. A mountain of rice noodles, and a plate with a pile of fresh herbs. Complete the picture with fumes of pain wafting from a scary giant bowl of mashed chilis and garlic. Put it all together and you get Bún Cha Quat Dong Xuân. A popular spot is in the Hoan Kiem area, on Hang Manh, but the name comes from the Dong Xuan market area, so you can find it at a few different stalls in the area.','1 Hàng Mành','Hoàn Kiếm',3,'Hanoi',0,NULL,229,'http://maps.google.com/maps?ie=UTF8&cid=11142479607157027044&sll=21.032406,105.848663&sspn=0.002959,0.005681&hq=&hnear=&t=h&z=16&iwloc=A',5342060241,'21.03201500000000','105.84843300000000',0,2,1,1,1295786296,1295788454,'buncha-hangmanh'),(35,'Commander\'s Palace','Commander\'s Palace','The citizens of New Orleans are absolutely gaga for parades. So strong is their proclivity towards processions you might just find yourself invited to join a kerchief waiving one in the middle of brunch as jazz trio marks the beat. Such is the scene at Commanders Palace and Institution in of itself since 1880.','1403 Washington Ave','',8,'New Orleans',18,NULL,223,'http://www.commanderspalace.com/',4851490910,'29.92868000000000','-90.08426000000000',0,3,1,1,1295891102,1296582156,'commanderspalace'),(36,'Cafe Du Monde','Cafe Du Monde','Cafe Du Monde is a well-oiled machine where vats of chicory coffee are made in filters the size lampshades and beignets come out of the kitchen in a fluffy powdered sugar torrent. An army of swiftly-moving, petite, middle-aged Vietnamese ladies will ensure that your fair share of delicacies make it to your table. The ever-moving apparatus is a far cry from the coffee and donut shop opened in 1861. This is what it takes to give you and every other tourist that classic moment and taste of New Orleans. Would you prefer to wait in line for an overpriced, over precious artisan-made cupcake? Join the hoi polloi and the masses. The coffee is piping hot, the beignets pillowy... all served promptly.','800 Decatur St','',8,'New Orleans',18,NULL,223,'http://cafedumonde.com',2311135250,'29.95748600000000','-90.06185800000000',0,3,1,1,1295891669,1296532553,'cafedumonde'),(37,'Guu Izakaya','Drinking Foods at Guu Izakaya','Sure, you\'re not in Tokyo, but Guu still feels like a real izakaya in a couple of important ways: just after work it\'s always loud, always full, and it all goes great with beer. The menu has pub basics like edamame, agadashi tofu, tuna tataki, but then it twists and gives you creations like kabocha-krokke, a ball of kabocha pumpkin wrapped around a hard-boiled egg, battered and deep-fried - a Japanese/Scotch-egg if you will. While the grill menu doesn\'t have the usual izakaya stand-bys, it is solid enough with ton-taro, grilled pork cheek, with black pepper standing it up, and a beef tongue steak that is so so tender. Guu\'s got Asahi and Kirin on draft, and a whole bunch of shochu options if you had a rough day at the office and need to get properly schnockered.','375 Water St','',5,'Vancouver',52,'',39,'http://www.guu-izakaya.com/',2074747875,'49.28494300000000','-123.11048200000000',0,2,1,1,1296339740,1299991352,'guu'),(38,'Japa Dog','Street Snacks at Japa Dog','A lot of \"fusion\" food is comprised of ill thought-out novelty combinations that just don\'t cut the mustard. Japa Dog cuts it alright, but they serve it up with wasabi mayo instead. This Japan-ized hot dog stand in downtown Vancouver serves high-quality beef and pork dogs with a slew of toppings, most of which you\'d recognize from your local sushi joint. The Oroshi is a peppery and tangy affair: a brat topped with cold grated radish, finely chopped spring onion, and a sweet-salty soy sauce. The Okonomi is the big pig though: silky Kurobuta pork, thinly sliced sauteed napa cabbage, wasabi mayo, okonomiyaki sauce and topped with a fluffy mound of bonito flake. There\'s even more at the stand, and you can mash them up any which way, and there\'s even a veggie dog available.','899 Burrard Street','',5,'Vancouver',52,'',39,'http://www.japadog.com',2696843021,'49.28223400000000','-123.12438400000000',0,2,1,1,1296339812,1299991380,'japa-dog'),(39,'Medina Cafe','Brunch at Medina Cafe','Let me just run through part of the brunch menu: Tagine, saumon fume, fricassé, cassoulet and Belgian waffles.  Typically, restaurants that cover a spread of multi-national dishes put out dishes that get me to elicit a half-hearted, \"Meh.\"  However, I\'ve tasted 4 of Medina\'s brunch dishes, and every single one was perfectly executed.  The most memorable was perhaps the fricassé - braised short ribs, caramelized onions, arugula and applewood cheddar topped with 2 fried eggs and delivered to the table in an iron skillet.  Nomnomnom.','556 Beatty Street','',5,'Vancouver',52,'',39,'http://www.medinacafe.com/',4107856409,'49.28031400000000','-123.10967700000000',0,1,1,1,1296340121,1299991339,'medina-cafe'),(40,'Vij\'s','Indian Dinner at Vij\'s','Vij\'s doesn\'t take reservations, and you could wait up to 2 hours to get a table.  But the moment you walk in the door and your nostrils widen to the spiced curried aromas meandering through the air, you know the wait will be worth it.  Start with the Punjabi heart attack, a spoonful of sweet and spicy cashews, then migrate to the date masala chickpeas atop a bed of grilled kale, and finish with the  grilled lamb popsicles in fenugreek cream curry.','1480 W 11th Ave','',5,'Vancouver',52,'',39,'http://www.vijs.ca/',2794967817,'49.26221600000000','-123.16480700000000',0,1,1,1,1296340370,1299991370,'vijs'),(41,'Granville Island Public Market','Granville Island Public Market','Spend a late morning or early afternoon winding through the aisles of local fruits, vegetables and meats in the markets on Granville Island. Sure, it\'s a touristy thing to do... but in that vein, grab some bites, sit outside and listen to live music while watching the boats pass by.  And while you\'re there, keep a nose out for the sausages at Oyama, and the pot pies at A la Mode.','1661 Duranleau St','',5,'Vancouver',52,NULL,39,'http://www.granvilleisland.com/',111208740,'49.27204100000000','-123.13588800000000',0,1,1,1,1296341140,1296535515,'granville-island'),(42,'Clyde Common','Cocktails at Clyde Common','It\'s hard to complain about being able to choose from a list of over 40 Kentucky bourbons and Tennessee ryes.  But the goldmine here is the cocktail list - perhaps you might be interested in the gin-based White Lady, which is mixed with cardamom-infused Cointreau, lemon juice and frothed egg whites?  Or possibly a negroni aged 2 months in oak before being served and garnished with a burnt orange peel?  Clyde doesn\'t skimp on the nibs either; happy hour or late night, your belly will be set.','1014 Southwest Stark Street','',1,'Portland',37,'',223,'http://www.clydecommon.com/',3633209405,'45.52210200000000','-122.68141300000000',1,1,1,1,1296342709,1299991452,'clyde-common'),(43,'Sunday Walking Street','Sunday Walking Street','Sunday evenings around 5pm, Ratchadamnoen Road in Chiang Mai\'s \"Old City\" is closed to traffic and turns into a half-mile long mosh-pit of tourists and Thais, shopping for art and handicrafts and eating their way through night. The grounds of three different Buddhist temples along the street are converted into food courts. My favorite is Wat Muen Lan, nearest to Thapae Gate. Walk into the court, and you\'ll see twin mortar and pestles pounding out the cold explosion of flavor that is som tam, green papaya salad. Further back and to the right are a couple of tables where you can get khanom jeen, ground pork and rice vermicelli in a salty tomato broth, and khao soi, the iconic mixed-up and comforting soup of the north. Head all the way back and you\'ll find a grill loaded with \"moo toop\" - pinkish, candied-looking hunks of pork. Select a piece, and they\'ll give it a beating with a mallet, cleav it into bite-size pieces and pour a tart and spicy sauce over it. The som tam pairs well, as would a beer if you could get one: You\'re on temple grounds, so you\'ll have to settle for water or juice!','Ratchadamnoen Rd','',2,'Chiang Mai',0,NULL,208,'',5356902167,'18.78828000000000','98.98629400000000',0,2,1,1,1296401795,1299138653,'walking-street'),(44,'Central Grocery Muffaletta','Central Grocery Muffaletta','This small grocery faces the French Market and served the farmers who long ago staffed its vegetable stalls. The hearty creation of Central Grocery, the muffaletta sandwich, is a large round loaf split in half and layered with Genoa salami, mortadella, ham, provolone and signature olive salad. A quarter of the sandwich and bag of Zapp\'s chips will suffice for most appetites. Better yet, order half and save the leftovers for midnight snack.','923 Decatur Street','',8,'New Orleans',18,NULL,223,'',3664489968,'29.95870900000000','-90.06126200000000',0,3,1,1,1296494014,1296534205,'centralgrocery'),(45,'St. James Cheese Company','St. James Cheese Company','The bovine in profile on the sign outside doesn\'t not belie steaks within, but instead the cultured bounty of cows\' udders. Tucked away on a small strip of shops and restraunts on pryatania St. James Cheese Company provides a bounty of choice for those residents of the Crescent City besotten with fromage. Not an expert on all the intricacies of cheese? The staff is helpful, knowledgeable and eager to lend a hand. Also available for purchase are a selection of fancy pants groceries, chocolates, and delicious cured meats. For those not inclined to cook at home, some of the best sandwiches in the city are made here, the ham and brie on baguette being my favorite.','5004 Prytania Street','',8,'New Orleans',18,NULL,223,'',3045832345,'29.92458900000000','-90.10908800000000',0,3,1,1,1296534639,1296702764,'stjamescheese'),(46,'Cochon','Cochon','\"The other white meat\" may be most denigrating description of pork ever. It boggles the mind that such obfuscation and chicanery was used to sell the most versatile and succulent of meats. Thankfully, among the gourmets, gourmands, and gluttons the sweet blob of pink on four cloven hoofs has never gone out of fashion. Cochon is Chef Donald Link\'s salute to those who consume swine from snout to tail, less the oink. The cuisine can be best described as high Cajun and all of southern Louisiana critters make an appearance on the menu at one point in time or another. This is a place to indulge yourself in New Orleans unofficial moto, \"have another,\" whether it be another piece of head cheese, a bite of pickled watermellon rind, or two fingers worth of any of the fine whiskeys they stock.','930 Tchoupitoulas Street','',8,'New Orleans',18,NULL,223,'http://www.cochonrestaurant.com/',4552854495,'29.94240600000000','-90.06742800000000',0,3,1,1,1296702796,1296702998,'cochon'),(47,'Deep Ellum','Beer at Deep Ellum','Pockmarked with all things tasty and sketchy, Allston is like that loyal, slobbery dog that\'s ugly as hell while remaining unflinchingly indispensable. That said, Deep Ellum is a diamond in the rough, a beer lover\'s gastropub with an embarrassment of riches, including: <i>the</i> coolest and most unusual local brews on tap, a curated bottle list spanning a Swedish farmhouse lager to a large-format Dutch stout made from a historic London recipe, and fearless dishes like truffled Gorgonzola fries or the housemade \"best wurst plate.\" You will spend lots of money on awesome beer here; it will be glorious and it will be good.','477 Cambridge Street','',11,'Allston',21,'',223,'http://deepellum-boston.com',1910283246,'42.35389100000000','-71.13694000000000',3,NULL,1,1,1297989358,1299991082,'deep-ellum'),(48,'Neptune Oyster','Seafood at Neptune Oyster','The North End is notorious for a lot of things, but Neptune Oyster is a delightful exception to the touristy, overpriced rule. Diminutive, unassuming, and diva-free, this tile-and-mirror-lined paean to <i>la mer</i> serves the most simple, most fresh, and most inspired seafood in the city. Oysters are a must, with over a dozen varieties dotting the sweet-briny spectrum. You can slum it in luxury with the best-ever lobster roll or a burger topped with perfect fried oysters, or take a spin with the <i>plats du jour</i> plus local farm and crudo specials.','63 Salem Street','',11,'Boston',21,'',223,'http://neptuneoyster.com',5203209122,'42.36318900000000','-71.05611200000000',8,NULL,1,1,1299467296,1299991129,'neptune-oyster'),(49,'Toscanini’s','Ice Cream at Toscanini’s','If you haven\'t learned by now, Boston loves it some ice cream; Toscanini\'s is <i>ne plus ultra</i> of micro-batch ice creameries. If the sheer list of 40+ flavors doesn\'t knock you over (burnt caramel, rather dark chocolate, blueberry pancake, &c), the intensely rich mouthfeel surely will. Charmingly unglamorous, the ice cream kitchen is visible behind the counter and from the sidewalk (behind huge windows). If you\'re taking your scoop out for a stroll, cross the street and hit Central Bottle, the platonic ideal of a modern neighborhood wine and cheese store. (Mind the Vespa.)','899 Main Street','',11,'Cambridge',21,'02139',223,'http://tosci.com',83621734,'42.38375600000000','-71.07242400000000',5,NULL,1,1,1299467430,1299991099,'toscaninis'),(50,'Sportello','Bakery at Sportello','Yes, there\'s mind-blowing handmade pasta and precious salads and altogether scrumptious savories at Sportello, Barbara Lynch\'s ode to Italian lunch counters - but the retail bakery nook deserves full due. Primly organized in fanciful domed plates and stacked on glass, pastries tempt with fresh-baked wonder: wonderful macarons, spiced donuts, flaky croissants, or cookies and tarts laced with fleur de sel and herbs. Though admittedly there are cupcakes for sale (crème fraiche with peanut butter frosting, say), foofy trend-killing cafe this ain\'t.','348 Congress Street','',11,'Boston',21,'',223,'http://sportelloboston.com',3568475177,'42.35060100000000','-71.04860600000000',9,NULL,1,1,1299467532,1299991074,'sportello'),(51,'Toro','Tapas at Toro','Perhaps the best way to encapsulate Toro, Ken Oringer\'s and Jamie Bissonette\'s Spanish small-plates lovechild, is simply to describe events that befall under the steely, watchful eye of the wall-mounted namesake bull: A never-ending crush of happy, oil-slicked, uni-lapping diners on all sides of the wooden communal table. Tripe stew, veal sweetbreads, dewy salads - an endless sequence of small gems sailing out of the kerchief-studded open kitchen. At the insistently carefree bar, an inky Tempranillo splashed into a glass tumbler; a \"Saicar\" thrust to your lips. And despite the beef heart, foie gras and mighty variants on pig parts strewn freely about the menu, Toro is a sleeper vegan-friendly spot (the cauliflower a la plancha elevates the dorkiest cruciferous vegetable to foodgasmic heights).','1704 Washington Street','',11,'Boston',21,'',223,'http://www.toro-restaurant.com',5514548805,'42.33707700000000','-71.07603200000000',0,NULL,1,1,1299742812,1299991139,'toro'),(52,'The Fishery','Dinner at a Seafood Oasis: The Fishery','Go on and toss your seafood pocket guide aside. The Fishery in San Diego’s Pacific Beach neighborhood is a sustainable seafood oasis. While too many restaurants are all talk when it comes to sourcing their fish thoughtfully, this vibrant spot takes it to the plate in the form of locally-caught swordfish nestled in roasted sweet potato purée, local spinach, bacon and hedgehog mushroom sauce; grilled local spiny lobster, or old-school Louis make from freshly picked Dungeness crab and flavor-packed Oregon pink shrimp. The sourcing here is spot-on. Of course it helps that fisherman-turned-owner Judd Brown’s other business is seafood wholesale company, Pacific Shellfish. That means chef Paul Arias gets the primo pickings from the day\'s catch. Check-out the to-go seafood counter for treats like smoked line-caught ahi tuna or rocky mounds of briny fresh oysters. Oh, and that big photo on the wall of Judd landing a monster-sized toothy mako shark? That’s for reals, people.','5040 Cass Street','',13,'San Diego',5,'',223,'http://thefishery.com/',5685273876,'32.80659000000000','-117.25480600000000',0,NULL,1,1,1306696507,1306698945,'the-fishery'),(53,'Tender Greens','Lunch at Tender Greens','This place gets it right from the get-go: bright, airy, with a bounty of veggie-style eye candy. Place your order at the counter, and then stroll past the line where prepped ingredients like crisp, sweet lettuces, grilled albacore tuna, char-roasted red peppers, and a kaleidoscope of Southern California’s local produce might prompt some second guessing, but fret not. You can’t go wrong. Salads here are crisp, fresh and dressed in their luncheon best. In fact, some of those tender young nibbles come from Point Loma Farm -- mere blocks from the restaurant. The housemade charcuterie is a crafted by part-owner Pete Balisteri himself, who lures you with savory tasties like duck prosciutto, finocchiona, pancetta, or the oh-so-good citrus salami. Heads-up on saving room for dessert. Skillful pastry chef Sue Brandenburg takes full advantage of area’s fruit production. It’s a never ending rotation that moves from cara cara oranges and limequats to delicate berries, plump figs, juicy plums, sweet pears and more. Her salted white chocolate oatmeal cookies are keepers too.','2400 Historic Decatur Road','',13,'San Diego',5,'92016',223,'http://www.tendergreensfood.com/',5684700517,'32.73994500000000','-117.20993800000000',1,NULL,1,1,1306696909,1306697327,'tender-greens'),(54,'The Pearl','Dinner at The Pearl','The Pearl in Point Loma oozes über-cool Mad Men vibe without any pretentiousness. Knowledgeable bar staff pour creative house-infused cocktails including a bevy of Bourbon and gin drinks that we’re certain Don Draper would tipple. Poolside cabana seating is the primo spot on Wednesday “Dive-in” nights, where classic movies flicker on the outdoor screen. Chef Aaron Lamont turns out a tempting array of flavor packed dishes. The house-made bacon gets wrapped around black tiger shrimp; pork confit is topped with crispy onions, and a mouthwateringly good burger is the result of Lamont grinding the beef himself to ensure juiciness that only comes from the correct fat-to-meat ratio. Snag a seat on the shag-carpet section and challenge your date to an after-dinner game of Rock ’Em Sock ’Em Robots or other retro games.','1410 Rosecrans Street','',13,'San Diego',5,'92016',223,'http://www.thepearlsd.com',5685270768,'32.72524800000000','-117.22893500000000',2,NULL,1,1,1306697005,1306776208,'the-pearl'),(55,'Craft & Commerce','Cocktails at Craft & Commerce','Craft & Commerce brings an East Coast swagger to this West Coast outpost with a superbly-designed and executed cocktail program guaranteed to make your inner-cocktailian swoon. The drink-list may showcase up to 20 tasty beverages but their compendium is 400 cocktails deep. This is the place to order that gin flip, pisco sour or whiskey smash you’ve always wanted to try but lacked a bartender with know-how. Bring extra friends and order a punchbowl instead. Gin, Bourbon or rum-based punch is meant for sharing, and served out of lovely vintage glassware. The food menu flaunts a whimsy side as well. Add your name to the chalkboard list near the door to snag a table, and then sample the bacon Cracker Jacks, devils on horseback or mini-corndogs nibbles. Need something more substantial to soak up the boozy goodness you’re imbibing? They’ve got you covered there too. Check out the crispy, flavor-packed fried chicken, tender smoked brisket sandwich or homey mac and cheese made with aged cheddar, gruyere and wild mushrooms.','675 W. Beech Street','',13,'San Diego',5,'92101',223,'http://www.craft-commerce.com',5685269960,'32.72082300000000','-117.16886900000000',3,NULL,1,1,1306698306,1306776234,'craft-commerce'),(56,'Coffee Cup','Breakfast at Coffee Cup','This is everything you want in a breakfast joint. Small but bustling. Neighborhoody. Hip. Best bet is to come here with a friend, rather than a group. Plenty of two-tops, busy servers, and strong coffee will perk you up in no time. While they do serve lunch, breakfast is where this place shines. Breakfast tamales, covered in tomatillo sauce and served with scrambled eggs and black beans are a winner; while blackberry banana pancakes (with added bacon on the side, of course) hit our sweet spot. Order an extra plate side of the signature crispy rosemary potatoes. They’re delightful, and you won’t want to share. And when you’re done noshing, take a short walk down to La Jolla Cove and burn off that extra helping of maple syrup we saw you sneaking.','1109 Wall St.','',13,'La Jolla',5,'92037',223,'http://www.isabelscantina.com/coffee-cup.php',5720057612,'32.84690600000000','-117.27296800000000',4,NULL,1,1,1306698790,1306702953,'coffee-cup'),(57,'Diavola Ristorante','Diavola Ristorante, Sonoma meets Italy','In the one-stop-sign town of Geyserville, simple, original, and harmonious describes the Italian cuisine Dino Bugica crafts every day at Diavola. As you enter the rustic wood-framed and brick-walled restaurant, you are immediately greeted by a small, refrigerated showcase of Italian staples; house-cured olives, cheeses, chiles, sausages, and salumi; all ready for take-away. After marveling at the salumi case, your gaze is drawn to the wood fired pizza oven at the back of the restaurant. Perusing the menu looking for that special pizza, you’re reminded of your first trip to Tuscany and notice trippa alla Fiorentina. Then your eye catches oxtail mezzaluna, then spaghettini in pork cheek sugo, and Genovese frutti di mare.  If you were looking for Italy in Sonoma County, you just found it.','21021 Geyserville Avenue','',14,'Geyserville',5,'95441',223,'http://diavolapizzeria.com',4357672709,'38.70646900000000','-122.90413200000000',0,NULL,1,1,1315244881,1321999547,'diavola'),(58,'Bamboo Sushi','Dinner at Bamboo Sushi','','310 SE 28th Ave.','',1,'Portland',37,'',223,'http://bamboosushi.com/',6147391395,'45.52056500000000','-122.63717600000000',0,NULL,0,0,1315245095,1337190777,'bamboo-sushi'),(59,'Guanajuato Taco Truck','Eat with the locals at the Guanajuato Taco Truck','Fri and Sat only. At the intersection of Healdsburg Avenue and Alexander Valley Road is the perfect stop on your way to the Alexander Valley to taste wine. Forget about formality and Michelin dining, you’re about to eat tacos al pastor from a taco truck that caters to both field workers and the wine country elite.  I’d put the al pastor up against any taqueria I’ve eaten at. Wonderfully seasoned and tender pork, topped with the perfect balance of salsa, cilantro, and minced onions all on a palm-sized tortilla. Eating out of a taco truck may shatter your vision of what wine country dining should be, but think of it another way, you’ll never have to wait for a table, because there’s plenty of room to stand.','Intersection of Healdsburg Ave and Alexander Valley Road','',14,'Healdsburg',5,'',223,'',6014631013,'38.64978200000000','-122.86899600000000',0,NULL,1,1,1315245161,1315246159,'guanajuato'),(60,'Alexander Valley Bar','Artisan Cocktails at the Alexander Valley Bar','What was once old, is new again. At a crossroads amongst the vineyards, a familiar dive-bar has transformed into an upscale destination for refined cocktails and premium spirits.  The AV Bar as locals call it, is attached to the Medlock-Ames Winery, a few miles outside of the Healdsburg City Square.  If you’re partial to gin, have one of their signature cocktails, the Verdant Virtue/Vice. If gin isn’t your thing, ask the bartender to craft something for you from one of the many small batch bourbons they offer. The best time to visit the AV Bar is at sunset. Sit on the deck overlooking the vineyard, sip a hand-crafted cocktail and take in the warm breeze and the amber light of evening. You’ll never want to leave.','3487 Alexander Valley Road','',14,'Sonoma',5,'95448',223,'medlockames.com/visit-us/Alexander-Valley-Bar',0,'38.66630400000000','-122.82009600000000',0,NULL,0,0,1315245356,1321999604,'alexander-valley'),(61,'Spud Point Crab Company','Best Clam Chowder West of Boston at Spud Point Crab Company','If you’re an Alfred Hitchcock fan, Bodega Bay is etched in your mind with thousands of attacking seagulls from The Birds. But for foodies in NorCal, Bodega and Tomales Bays’ are best known for high quality shell fish. The Spud Point Crab Company is located in the marina of Bodega Bay and serves an outstanding clam chowder and pure meat crab cakes. The chowder has a wonderful creaminess, well cooked potatoes but not a mashed potato texture, a solid punch of thyme, and plenty of clams. As if the chowder wasn’t good enough, the crab cakes are legendary. Cooked to order and served only at the top of the hour in very limited quantities, these crab cakes contain nothing but crab meat, spices, and a little bit of bell pepper and onion. No fillers, no béchamel, just fresh crab meat cakes. Get there early or wait another hour strolling around Spud Point, either way you won’t be disappointed.','1860 Westshore Road','',14,'Bodega Bay',5,'94923',223,'spudpointcrab.com/',5769867776,'38.32866600000000','-123.05876900000000',0,NULL,1,1,1315245798,1315246493,'spud-point'),(62,'Cyrus','Michelin Dining at Cyrus','It’s easy to recommend Cyrus, the Michelin two-starred restaurant in the heart of Healdsburg. But what happens when you can’t get a reservation, don’t want to dine for 3 hours, or drop several hundred dollars on food and wine? Order off the à la carte menu at the Cyrus Bar for dinner of course. There’s no material difference between the main dining room menu and the bar menu, they just won’t wheel out the impressive cheese tray for you. As the menu changes often, recommending an evergreen dish is difficult, however, one cannot miss with a wonderfully made risotto, Asian inspired seafood dishes, or anything with foie gras. And remember, there is still a dress code in the bar.','29 North Street,','',14,'Healdsburg',5,'',223,'cyrusrestaurant.com/',530929874,'38.61182000000000','-122.87160500000000',0,NULL,0,0,1315264913,1356103054,'cyrus'),(63,'Zin Restaurant','Farm to Table at Zin Restaurant','Not many chefs can lay claim to having their own farm to help supply their restaurant. Chef and Owner of Zin Restaurant and Eastside Farms Jeff Mall can. Not only does Chef Jeff wake up at dawn to feed his chickens and collect eggs each morning, after 10 plus years he still works the line and the pass every night at the restaurant . Chef Jeff proudly makes his own bacon, pastrami, sausages, BBQ sauce, and his very own Z.1. steak sauce for this seasonal American and Wine Country themed restaurant. Of course, there is a hearty selection of Dry Creek Valley AVA Zinfandel on the wine list, and despite their namesake, the wine list is well rounded with many regional offerings.','344 Center Street','',14,'Healdsburg',5,'95448',223,'http://www.zinrestaurant.com/',6351577311,'38.61205200000000','-122.86951200000000',0,NULL,1,1,1321497889,1321999704,'zin'),(64,'Nong\'s Khao Man Gai','Food Cart Lunch at Nong\'s Khao Man Gai','If you stroll around the plethora of Portland food carts, you\'ll notice a number of carts with a 1 or 2 people in line, and then you\'ll see one cart with 30 people hovering around it. Ladies and gentleman, you have found Nong\'s Khao Man Gai. It\'s a simple 8x8-foot cart where they only offer 1 item on the menu. You guessed it - Khao Man Gai. This Thai rendition of steamed chicken on a bed of white rice, is garnished with cucumber and cilantro, and served with an outstanding pungeon sauce, which is a soy bean puree mixed with garlic, ginger, thai chilies, vinegar and sugar. Simple, delicious, and worth the 5 to 10 minute wait.','SW 10th & Alder St.','',1,'Portland',37,'',223,'http://www.khaomangai.com/',6147391395,'45.52067200000000','-122.68176800000000',7,NULL,1,1,1321497995,1337192153,'nongs-khao-man-gai'),(65,'Gold Coast Bakery and Coffee Roastery','Brick Oven Baking at Gold Coast','With a population of 85 people, Duncan Mills is half-way between Healdsburg and Bodega Bay on Highway 116. The Gold Coast Bakery and Coffee Roastery makes the 35 minute drive toward Bodega Bay the perfect spot to fuel up before a hike on the Sonoma Coast. Gold Coast Bakery & Roastery has a wood fired brick oven, their very own Porcut coffee roaster, and delicious daily-made pastries which make for the perfect breakfast. If you’d rather have lunch, that’s fine, the brick oven does double-duty each day, turning out high-quality pizza in the afternoon.  Grab a scone, a dark roasted coffee and enjoy the wind-swept Sonoma Coast.','25377  Steelhead Drive','',14,'Duncans Mills',5,'95430',223,'http://www.duncansmills.net/gccpage.html',6351577763,'38.45286000000000','-123.05306000000000',1,NULL,1,1,1321498101,1321999646,'gold-coast-bakery'),(66,'Alexander Valley Bar','Artisan Cocktails at the Alexander Valley Bar','What was once old, is new again. At a crossroads amongst the vineyards, a familiar dive-bar has transformed into an upscale destination for refined cocktails and premium spirits.  The AV Bar as locals call it, is attached to the Medlock-Ames Winery, a few miles outside of the Healdsburg City Square.  If you’re partial to gin, have one of their signature cocktails, the Verdant Virtue/Vice. If gin isn’t your thing, ask the bartender to craft something for you from one of the many small batch bourbons they offer. The best time to visit the AV Bar is at sunset. Sit on the deck overlooking the vineyard, sip a hand-crafted cocktail and take in the warm breeze and the amber light of evening. You’ll never want to leave.','3487 Alexander Valley Road','',14,'Healdsburg, CA',5,'95448',223,'http://www.medlockames.com/visit-us/Alexander-Valley-Bar',6246827476,'38.66630400000000','-122.82009600000000',0,NULL,1,1,1321663023,1321999579,'alexander-valley-bar'),(67,'The Victory Bar','Late Night Drinks at The Victory Bar','','3652 SE Division St.','',1,'',37,'',223,'http://www.thevictorybar.com/',0,NULL,NULL,0,NULL,0,0,1337190327,1337190419,'victory-bar');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'login','Login privileges, granted after account confirmation'),(2,'admin','Administrative user, has access to everything.');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `roles_users_ibfk_2` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES (1,1),(1,2),(2,1),(2,2),(3,1),(3,2),(4,1),(4,2);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `state` varchar(64) NOT NULL DEFAULT '',
  `state_iso` char(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `country` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,223,'Alabama\r','AL'),(2,223,'Alaska\r','AK'),(3,223,'Arizona\r','AZ'),(4,223,'Arkansas\r','AR'),(5,223,'California\r','CA'),(6,223,'Colorado\r','CO'),(7,223,'Connecticut','CT'),(8,223,'Delaware\r','DE'),(9,223,'Florida\r','FL'),(10,223,'Georgia\r','GA'),(11,223,'Hawaii','HI'),(12,223,'Idaho\r','ID'),(13,223,'Illinois\r','IL'),(14,223,'Indiana\r','IN'),(15,223,'Iowa\r','IA'),(16,223,'Kansas\r','KS'),(17,223,'Kentucky\r','KY'),(18,223,'Louisiana\r','LA'),(19,223,'Maine','ME'),(20,223,'Maryland\r','MD'),(21,223,'Massachusetts','MA'),(22,223,'Michigan\r','MI'),(23,223,'Minnesota\r','MN'),(24,223,'Mississippi\r','MS'),(25,223,'Missouri\r','MO'),(26,223,'Montana','MT'),(27,223,'Nebraska\r','NE'),(28,223,'Nevada\r','NV'),(29,223,'New Hampshire\r','NH'),(30,223,'New Jersey\r','NJ'),(31,223,'New Mexico\r','NM'),(32,223,'New York\r','NY'),(33,223,'North Carolina\r','NC'),(34,223,'North Dakota\r','ND'),(35,223,'Ohio','OH'),(36,223,'Oklahoma\r','OK'),(37,223,'Oregon','OR'),(38,223,'Pennsylvania\r','PA'),(39,223,'Rhode Island\r','RI'),(40,223,'South Carolina\r','SC'),(41,223,'South Dakota\r','SD'),(42,223,'Tennessee\r','TN'),(43,223,'Texas\r','TX'),(44,223,'Utah\r','UT'),(45,223,'Vermont\r','VT'),(46,223,'Virginia\r','VA'),(47,223,'Washington\r','WA'),(48,223,'West Virginia\r','WV'),(49,223,'Wisconsin','WI'),(50,223,'Wyoming\r','WY'),(51,39,'Alberta\r','AB'),(52,39,'British Columbia\r','BC'),(53,39,'Manitoba\r','MB'),(54,39,'New Brunswick\r','NB'),(55,39,'Newfoundland\r','NF'),(56,39,'Northwest Territories\r','NT'),(57,39,'Nova Scotia\r','NS'),(58,39,'Nunavut\r','NT'),(59,39,'Ontario\r','ON'),(60,39,'Prince Edward Island\r','PE'),(61,39,'Québec\r','QC'),(62,39,'Saskatchewan\r','SK'),(63,39,'Yukon Territory','YT');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_places`
--

DROP TABLE IF EXISTS `tag_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_places` (
  `tag_id` int(10) unsigned NOT NULL,
  `place_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL,
  UNIQUE KEY `tag_place_user` (`tag_id`,`place_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_places`
--

LOCK TABLES `tag_places` WRITE;
/*!40000 ALTER TABLE `tag_places` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` char(24) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag` (`tag`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `full_name` varchar(96) NOT NULL DEFAULT '',
  `about` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(64) DEFAULT NULL,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  `state_id` smallint(5) unsigned DEFAULT NULL,
  `website` varchar(192) NOT NULL DEFAULT '',
  `twitter_name` varchar(24) NOT NULL DEFAULT '',
  `gravatar_email` varchar(127) NOT NULL DEFAULT '',
  `fans` int(10) unsigned NOT NULL DEFAULT '0',
  `fanned` int(10) unsigned NOT NULL DEFAULT '0',
  `created` int(10) unsigned NOT NULL,
  `modified` int(10) unsigned NOT NULL,
  UNIQUE KEY `user_profile` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profiles`
--

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
INSERT INTO `user_profiles` VALUES (1,'Ryan Snyder','',NULL,NULL,NULL,'','ryansnyder','',0,0,0,0),(2,'Dietrich Ayala','',NULL,NULL,NULL,'','dietrich','',0,0,0,0),(3,'Crystal Beasley','',NULL,NULL,NULL,'','skinny','',0,0,0,0);
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tokens`
--

DROP TABLE IF EXISTS `user_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `user_agent` varchar(40) NOT NULL,
  `token` varchar(32) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `expires` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_token` (`token`),
  KEY `user_tokens_ibfk_1` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tokens`
--

LOCK TABLES `user_tokens` WRITE;
/*!40000 ALTER TABLE `user_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(127) NOT NULL,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` char(50) NOT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `created` int(10) unsigned NOT NULL,
  `last_login` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `verified` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_username` (`username`),
  UNIQUE KEY `uniq_email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ryansnyder.me@gmail.com','ryan','fb468b5faff3428829d8c366c564342e2b83c90e8cabe0880c',45,1294220918,1413295286,1,1),(2,'autonome@gmail.com','dietrich','20d2fe99663fb8b2250494baf2710d91a2dfc94dffe3c4f753',17,1294221252,1301132590,1,1),(3,'crystal@skinnywhitegirl.com','crystal','62810fa6ef5730706188da50b47d1881fb27f39e98110c1c34',11,1294760466,1321497854,1,1),(4,'ryansnyder.me+jeremy@gmail.com','jeremy','2c79d5ef1df70968011e4fcd1b2523234e9bad561fc66ab9e3',3,1296497153,1296497312,1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifications`
--

DROP TABLE IF EXISTS `verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verifications` (
  `token` binary(32) NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `action` enum('email','forgot','registration') NOT NULL DEFAULT 'registration',
  `email` varchar(127) DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`token`),
  KEY `token_action` (`token`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifications`
--

LOCK TABLES `verifications` WRITE;
/*!40000 ALTER TABLE `verifications` DISABLE KEYS */;
INSERT INTO `verifications` VALUES ('2IRxa3DiCYe33R77QvmAEqYAqEy7WFDa',2,'forgot',NULL,1295782124);
/*!40000 ALTER TABLE `verifications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-30 15:24:41
