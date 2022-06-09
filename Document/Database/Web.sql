-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: webProject
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `username` varchar(30) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('duy','duy@gmail.com','123'),('duy1','duy1@gmail.com','123');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `userName` varchar(30) NOT NULL,
  `productID` varchar(30) NOT NULL,
  `amount` int DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `confirm` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userName`,`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `cid` int NOT NULL,
  `cname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'bag'),(2,'cloth'),(3,'hat'),(4,'shoe');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(30) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('bag1','\'Edu\' Leather Holdall','bag1.png',50,'Crafted from full-grain leather for a robust finish, the \'Edu\' holdall from Conkca London is the perfect companion when travel is on the agenda. A zip-over top secures a spacious compartment that comes lined with a natural, untreated 100% cotton lining alongside the external zipped pocket that provides easy on-the-go storage. Comes with an adjustable fabric lined leather strap with a drop length of 70cm and leather carry handles. Adorned with metal fittings and the embossed Conkca London logo.','bag'),('bag2','Midi Backpack','bag2.png',35,'The HYPE. Midi Backpack. Designed in our midi backpack shape, which is larger than our standard size. In our standard all backpack fabric base, finished with the iconic HYPE. crest badge, front pocket, rubberised diamond and embossed pullers. This is the perfect size to transport your goods from A to B with extra space for essentials, your go-to back for nights away, swim practice and those times when you need an extra outfit choice. The straps offer supreme comfort with just the right amount of padding.','bag'),('bag3','Black Weekend Holdall','bag3.png',42,'Part of our range of bags, this weekend holdall comes in a black faux leather and features two short handles and a long crossboday strap. Main material: PU','bag'),('bag4','3 Stripes Medium Duffle Bag','bag4.png',46,'This duffle bag features a top entry zip compartment, side storage pocket, and top padded adjustable shoulder straps. Finished off with a 3 stripe print and logo branding. Boasts a maximum carrying weight of 6kg,','bag'),('bag5','\'Helm\' Leather Holdall','bag5.png',100,'The \'Helm\' holdall from Cultured London is crafted from leather with a richly textured finish. Inside the bag is a natural and untreated 100% cotton lining secured by a zip-over top and a large zipped pocket adorns the front of the holdall, ideal for on-the-go storage. Matching leather handles allow you to find the most comfortable carrying option, alongside the adjustable and detachable canvas webbed strap, with a drop length of 80cm. Embossed with the clean and minimalist Cultured London logo.','bag'),('bag6','\'Newtrav\' Rucksack','bag6.png',32,'Made for long commutes and weekend escapes our Newtrav backpack is designed in crisp, lightweight fabric. The straps are padded and adjustable for comfort, whilst the spacious interior allows room for all your must-take items. To help keep things organised, we\'ve added two water-bottle holders, an external zip pouch and a carrier for your earbuds. The best part? It can be folded down for easy storage.','bag'),('cloth1','Cotton Double Stripe Short Sleeve Shirt','cloth1.png',25,'Striped shirt from Maine. In cool, breathable 100% cotton with a handy chest pocket, you\'ll be wearing this bold striped shirt all the time once the temperature rises. Perfect with jeans, chinos or shorts for a cool summer look.','cloth'),('cloth2','Marl Overcheck','cloth2.png',23,'Overcheck shirt from Mantaray. This shirt is the perfect extra layer when the temperature gets chilly. Made from a heavy marl fabric with a check pattern all over, this long-sleeved style will look great with jeans, chinos and even corduroy.','cloth'),('cloth3','Short Sleeve Seersucker Shirt','cloth3.png',20,'Short sleeve seersucker shirt from Red Herring. The smart choice for the warmer months, this shirt is crafted from a tactile seersucker fabric, with a handy chest pocket and a camp collar, you\'ll wonder how you ever managed without this versatile shirt. It works with just about everything - shorts, jeans and smart trousers, as well as under knitwear or jackets.','cloth'),('cloth4','Black Double Breasted Velvet Jacket','cloth4.png',80,'Black Double Breasted Velvet Jacket','cloth'),('cloth5','Diamond Print Shirt','cloth5.png',33,'Diamond print shorts sleeve shirt from Mantaray. Get ready for the new season in refined prints. Featuring a diamond print all over, placket buttons, a front chest pocket and half sleeves. Looks just as good with shorts or jeans, paired over a plain tee.','cloth'),('cloth6','Horizontal Stripe','cloth6.png',12,'Striped shirt from Mantaray. Designed in a bold horizontal striped pattern that is both modern and innovative, this short-sleeved shirt is a great investment piece. Wear it with jeans and trainers during the spring, or over a tee and shorts come the summer.','cloth'),('hat1','Breeze\' Ripstop Bucket Hat','hat1.png',25,'Retro-style bucket hat made from moisture-wicking polyamide ripstop with EcoShield DWR finish. Vintage-effect Craghoppers embroidered logo.','hat'),('hat2','Adidas Performance Cap','hat2.png',21,'This cap uses ClimaCool technology which provides zonal ventilation for cooling comfort, while the moisture-wicking headband and relaxed fit make it easy to keep running or working out. UPF 50 plus for sun protection and a matching brand detail finishes off the look.','hat'),('hat3','Trespass Evanesce Trilby','hat3.png',12,'The Evanesce trilby comes in a retro woven design. It is finished with a distinct, contrasting ribbon.','hat'),('hat4','Long Beach Cap','hat4.png',12,'Get kitted out for the summer with this classic cap. It features an adjustable strap at the back and upper eyelets to provide breathability.','hat'),('hat5','Classified Panama Hat','hat5.png',16,'The Classified sun hat is expertly crafted in a classic Panama style featuring mesh fabric framed with khaki green detailing. It boasts a necktie fastening for ease of comfort and wear, a concealed inner pocket to keep valuables safe, a Coolmax sweatband at the lining and is decorated with a faux leather logo badge attachment. Boasting UPF50+ protective fabric technologies, the Classified hat will be sure to keep you as cool as the cucumber floating in your iced water.','hat'),('hat6','Flat Cap','hat6.png',21,'Flat Cap by Ben Sherman. This Ben Sherman baker boy cap is an absoloute must-have which will add a vintage feel to your look.','hat'),('shoe1','\'Leighton\' Trainers','shoe1.png',49,'The black Leighton sneakers are a Vegan lace up style with unique toggle fastening at the front. Pull tabs with branding at the front and back of the ankleBlack and white two tone soleThis product is registered with The Vegan Society','shoe'),('shoe2','\'Camrod\' Leather Chelsea Boots','shoe2.png',40,'From Bertie, the Camrod Chelsea boot is perfect for smart-casual looks. Effortlessly styling, it features a round toe and elasticated panels. Complete with a pull tab and buckle detail for a contemporary finish.','shoe'),('shoe3','\'Silas\' Premium Leather Chelsea Boots','shoe3.png',105,'The Silas Chelsea boot is a classic, practical and smart-casual option. A timeless classic designed with a smooth upper burnished toecaps. The dapper pair is finished with elasticated inserts and pull-up tabs. An easy go to essential for formal or casual wear','shoe'),('shoe4','\'Edgepoint\' Waterproof Walking Shoes','shoe4.png',42,'Opt for a classic weatherproof style with the \'Edgepoint\' hiking boots by Regatta. The water-repellent Hydropel technology sheds moisture and the seam-sealed waterproof and breathable Isotex membrane provides watertight protection. Shock-absorbing EVA pads cushion the feet with every stride. Vegan friendly.','shoe'),('shoe5','\'Phelix\' Leather Boots','shoe5.png',49,'With a tan leather upper, the Phelix ankle boots are a casual staple. The ankle features a stitching detail with suede details on the ankle and lace up eyestay. The back of the ankle features a small red tab all sat on a black low sole.','shoe'),('shoe6','\'Truman\' Premium Leather Boots','shoe6.png',105,'Stunning Jodhpur style boot in premium Brown Leather with a grain effect, It comes with a single strap adjustable fastener for comfort and stability and a Patina finish across the toe and stitch detail, this timeless style which works well with both jeans and trousers for a chic and casual style.','shoe');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-09 20:52:30
