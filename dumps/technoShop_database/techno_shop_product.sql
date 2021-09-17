-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: techno_shop
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `discount` int NOT NULL,
  `defaultImage` varchar(1000) NOT NULL,
  `image1` varchar(1000) NOT NULL,
  `image2` varchar(1000) NOT NULL,
  `image3` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_idx` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (16,1,'SAMSUNG A52',730.00,'Operativni sistem Android 11, One UI 3.1\nRadna memorija 6 GB RAM / 128 GB\nBaterija [mAh] Li-Po 4500 mAh\nSIM Dual SIM\nFHD+ Super AMOLED ekranom koji doseže i 800 nita1 za jasnoću čak i na jarkoj dnevnoj svjetlosti. Eye Comfort Shield2 smanjuje plavu svjetlost a Real Smooth funkcija održava iskustvo gledanja glatkim, bilo da igrate igricu ili listate sadržaj. Sve to na ekspanzivnom 6,5-inčnom Infinity-O ekranu.',15,'https://t.infibeam.com/img/othe/0441617/9c/96/sma526galaxya525gawesomebluefront.jpg.89694d9c96.989x800x800.jpg','https://cdn.alzashop.com/ImgW.ashx?fd=f16&cd=SP051c248','https://cdn.movertix.com/media/catalog/product/cache/image/600x/s/a/samsung-galaxy-a52-5g-dual-sim-awesome-violet-128gb-and-6gb-ram-sm-a526b-ds.jpg','https://med.greatecno.com/193699-large_default/celly-glass-protector-2-5d-samsung-a52.jpg'),(17,1,'SAMSUNG S10+',1890.00,'OS: Android 9.0 Pie Exynos 9820 Octa.\nDisplay: 6.1\" Super AMOLED 16M boja. Rezolucija: 1440x3040.\nProcesor: Octa-core (2x2.7 GHz Mongoose M4 & 2x2.3GHZ Cortex-A75 & 4x1.9 GHz Cortex-A55).\nRAM: 8 GB.\nInterna memorija: 128GB, podržava microSD.\n\nKamera zadnja/prednja:\nTriplel 12MP f/1.5-2.4 26mm + 12MP f/2.4 52mm + 16MP f2.2 12mm/10MP f/1.9 26mm, Video snimanje: 2160p@60fps.\n\nMreža: Wi-Fi 802.11 a/b/g/n/ac/ax\n\nBluetooth 5.0.Baterija:\nLi-Ion 3400 mAh.',35,'https://mobilecity-live.s3.ap-southeast-2.amazonaws.com/wp-content/uploads/2021/03/01015204/K02-8-600x600.jpg','https://samsungmobilespecs.com/wp-content/uploads/2019/11/Samsung-Galaxy-S10--600x600.jpg','https://static.turbosquid.com/Preview/2019/04/16__03_49_39/01_sig.jpg7C1FCA6C-1AB4-4D1A-906F-683CCFF3178ELarge.jpg','https://mobilecity-live.s3.ap-southeast-2.amazonaws.com/wp-content/uploads/2021/01/01012933/A02-600x600.jpg'),(18,1,'HUAWEI Honor 10',930.00,'OS: Android 8.1\n\nDisplay: 5,84\", 2280 x 1080\n\nProcesor: Octa-core (4x2.4 GHz Cortex-A73 & 4x1.8 GHz Cortex-A53)\n\nRAM: 4 GB\n\nInterna memorija: 64 GB\n\nKamera\n\nzadnja:Dual: 16 MP (f/1.8) + 24 MP B/W (f/1.8), gyro-EIS (1080p), phase detection autofocus, LED flash,\n\nprednja: 24 MP, f/2.0, 1080p\n\nBaterija: Li-Ion 3400',0,'https://canary.contestimg.wish.com/api/webimage/5d53f9e5c1bde3428ebec2fb-large.jpg?cache_buster=bd999806c92c4af0fa24067ca3650b5d','https://v9y9v6a3.rocketcdn.me/wp-content/uploads/2018/11/KXO_honor_10_green-600x600.jpg','https://cdn.techjuice.pk/wp-content/uploads/2018/10/Huawei-Honor-10.jpg','https://cdn.shopify.com/s/files/1/1272/4897/products/118-083-174_QB_grande.jpg'),(19,1,'HUAWEI P20 Lite',740.00,'OS: Android 8.0\n\nDisplay: 5,84\", 2280 x 1080\n\nProcesor: Octa-core (4x2.36 GHz Cortex-A53 & 4x1.7 GHz Cortex-A53)\n\nRAM: 4 GB\n\nInterna memorija: 64 GB\n\nKamera zadnja/prednja:\n\nDual: 16 MP (f/2.2, 1.0 µm) + 2 MP, phase detection autofocus, LED flash, 16 MP (f/2.0, 1.12 µm), 1080p\n\nBaterija: Li-Ion 3000mAh',25,'http://www.elektro-m.hr/luxPictures/webshop/2019/01/hires/29_091128_40_huawei_p20_lite_crni2.jpg','https://cdn.shopify.com/s/files/1/0278/5135/8280/products/SmartphoneHUAWEIP20LiteANE-LX1DualSIM64GBPretoLivreB_b88b86ee-1e00-444d-a3ba-786b35a822cb_600x.jpg?v=1605023195','https://www.globalguds.com/wp-content/uploads/2019/09/Huawei-P20-Lite-Dual-Sim-64GB-Gold.jpg','http://www.elektro-m.hr/luxPictures/webshop/2019/01/hires/29_085522_91_huawei_p20_lite_plavi3.jpg'),(20,1,'iPhone 11',2250.00,'Zaslon Liquid Retina HD\n6,1-inčni (dijagonalno) zaslon LCD Multi-Touch od ruba do ruba s IPS tehnologijom\nRezolucija 1792 x 828 piksela pri 326 ppi\nOmjer kontrasta 1400:1 (uobičajeni)\nZaslon True Tone\nZaslon sa širokim spektrom boja (P3)\nHaptic Touch\nMaksimalna svjetlina od 625 nita (uobičajena)\nOleofobna obloga otporna na otiske prstiju\nPodrška za prikaz više jezika i vrsta znakova istodobno',0,'https://assets.swappie.com/cdn-cgi/image/width=600,height=600,fit=contain,format=auto/iphone11prohopea-600x600.jpg','https://selltell.lk/wp-content/uploads/2020/05/iphone-11-8.jpg','https://static.compareindia.news18.com/compareindia/gallery/images/2019/oct/appleiphone116001_141658346140.jpg','https://cdn.movertix.com/media/catalog/product/a/p/apple-iphone-11-en-blanco-de-256gb_1.jpg'),(21,1,'iPhone 12 Pro Max',2700.00,'Zaslon Super Retina XDR\n6,7-inčni (dijagonalno) OLED zaslon od ruba do ruba\nRezolucija 2778 x 1284 piksela pri 458 ppi\nZaslon HDR\nTrue Tone\nŠiroki spektar boja (P3)\nHaptic Touch\nOmjer kontrasta 2.000.000:1 (uobičajeni)\nSvjetlina od 800 nita (standardna), maksimalna svjetlina od 1200 nita (HDR)',30,'https://specifications-pro.com/wp-content/uploads/2020/05/iPhone-12-Pro-Max-4-600x600.jpg','https://static.turbosquid.com/Preview/2020/10/18__17_14_12/01.jpg2D68387A-3FF2-4C65-9375-487DB4CA9537Large.jpg','https://cdn.shopify.com/s/files/1/0079/5602/products/CAEN_Tile_4_iPhone12_Pro_Max_Blue_grande.jpg?v=1608787478','https://duxducis.eu/eng_pl_IPHONE-12-PRO-MAX-Dux-Ducis-Fino-nylon-case-green-71789_1.jpg'),(22,1,'Sony Xperia 1 III',1650.00,' ZASLON: 6.5 inča, OLED, 1644 x 3840 točaka\n PROCESOR: Qualcomm Snapdragon 888, 8 jezgri, 2.84 GHz\n RADNA MEMORIJA: 12 GB\n INTERNA MEMORIJA: 256 GB 512 GB\n PREDNJA KAMERA: 8 MP\n STRAŽNJA KAMERA: 12 MP + 12 MP + 12 MP\n OPERATIVNI SUSTAV: Android 11\n BATERIJA: 4500 mAh\n DIMENZIJE, TEŽINA: 71 x 165 x 8.2 mm, 187 g',0,'https://specs-tech.com/wp-content/uploads/2021/01/Sony-Xperia-1-III.jpg','https://static2.4gsm.com/eng_pl_3MK-Hybrid-Glass-Sony-Xperia-1-III-5G-Lens-Protect-Protection-For-Camera-Lens-4pcs-Glass-93200_1.jpg','https://cdn.shopify.com/s/files/1/0640/6363/products/xperia_1_ii_group_green-large@2x.jpg?v=1609218141','https://i.pinimg.com/originals/14/21/6a/14216a001916f24f590543866ce8a62f.jpg'),(24,1,'LG G8 ThinQ',860.00,'Čipset: Qualcomm Snapdragon 855 Mobile Platform\nZaslon: 6.1-inčni 19.5:9 QHD+ OLED FullVision (3120 x 1440 / 564 ppi)\nMemorija: 6 GB RAM / 128 GB / microSD (do 2 TB)\nStražnja kamera:\n16 MP Super Wide (F1.9 / 1.0 μm / 107˚)\n12 MP Standard (F1.5 / 1.4 μm / 78˚)\n12 MP Telephoto (F2.4 / 1.0 μm / 45˚)\nPrednja kamera:\n8 MP Standard (F1.7 / 1.22 μm / 80˚ s AF)\nZ Kamera (s tehnologijom ToF)\nBaterija: 3.500 mAh\nOperacijski sustav: Android 9.0 Pie',15,'https://ak1.ostkcdn.com/images/products/is/images/direct/bba4f384e558ca4e1ca073e5ba3da18b45cc6acc/LG-G8-ThinQ-128GB-LM-G820-Platinum-Gray-Verizon-Refurbished-Smartphone.jpg','https://atlas-content-cdn.pixelsquid.com/assets_v2/248/2480702986666382611/jpeg-600/G03.jpg?modifiedAt=1','https://canary.contestimg.wish.com/api/webimage/5db90cce2bad4d0742aec6d7-large.jpg?cache_buster=c0dec2efab1f5371b11f5145d90d0be1','https://www.deepspecs.com/wp-content/uploads/2019/01/6-lg-g8-thinq-deepspecs-com-600x600.jpg'),(28,3,'HP Notebook 250 G7',600.00,'Veličina zaslona 15.6 \"\nRezolucija FHD 1920 x 1080\nn, N4020, 1.1 GHz, core 2\nRAM memorija 4 GB, takt 2400, DDR4\nSSD 128 GB\nGrafika UHD Graphics 600\nOperativni sistem Free Dos\nOptička jedinica Ne\nBroj HDMI1\nLAN (RJ45)1\nUSB 2.01 kom\nUSB 3.1 gen12 kom\nBluetooth Da\nBroj ćelija baterije3\nMasa1.78 kg\nBoja Tamno Siva\nGarancija 1 god\nOstalo web camera, čitač memorijskih kartica',0,'https://tehnodepo.ba/wp-content/uploads/2021/01/Hp-laptop-250-G7-1F3J4EA-600x600.jpg','https://mobilnitelefoni.ba/wp-content/uploads/2021/05/laptop-not-hp-250-g7-197P4EA-2.jpg','https://mobilnitelefoni.ba/wp-content/uploads/2021/05/laptop-not-hp-250-g7-197P4EA-3.jpg','https://mobilnitelefoni.ba/wp-content/uploads/2021/01/laptop-hp-250-g7-1L3L8EA-3.jpg'),(29,3,'HP Notebook 15s',770.00,'Display: 15.6“,\nRezolucija: 1366x768\nCPU: AMD 3020e (1.2- 2.6GHz, 4MB)\nRAM: 4GB DDR4\nSSD: 256GB V\nGA: AMD Radeon Graphics\nPovezivanje: WiFi, Bluetooth\nPriključci: 2xUSB3.1, 1xUSB2.0, HDMI, AUX, SD card reader\nBaterija: 3-cell Boja:\nBoja: Siva\nGarancija: 12 mjeseci',0,'https://www.instar-informatika.hr/slike/velike/notebook-hp-15s-eq1020nm-1n7z9ea-156-fhd-0391334_3.jpg','https://pcmarket.ba/wp-content/uploads/2021/08/444U5EA_2-600x600.jpg','https://www.abcshop.ba/wp-content/uploads/2021/05/2L3Y1EA_1-600x600.jpg','https://mobilnitelefoni.ba/wp-content/uploads/2021/06/HP-Laptop-15s-eq2069nm.jpg'),(33,3,'LENOVO Notebook 14w',650.00,'Lenovo Model 81MQS02K00\nDijagonala: 14\" \nTouchscreen displej \nRezolucija ekrana: 1920 x 1080 (Full HD)\nProcessor: AMD A6 9220C / 1.8 GHz \nRAM 4 GB RAM\nPohrana: 64GB HDD + Micro SD od kartica 64GB\nOperativni sistem: Linux\nGrafika Radeon R5\nWi-Fi',15,'https://shop.imel.ba/wp-content/uploads/2021/04/81MQS02K00-1.jpg','https://www.t-shop.com.pk/wp-content/uploads/2017/05/Lenovo-Notebook-E41-80-1-3-600x600.jpg','https://www.abcshop.ba/wp-content/uploads/2021/05/210525160014094526-600x600.jpg','https://laptop-hunter.com/217630-thickbox_default/notebook-lenovo-14w-81mq003kus-black.jpg'),(34,3,'ACER Notebook Aspire 3',830.00,'Ekran 15.6\"\nRezolucija 1920 x 1080px / Anti-glare\nProcesor Intel Celeron N4000 (1100 - 2600MHz) / 2/2 (fizičke/logičke) / 4096KB\nMemorija 4GB DDR4 (2666Mhz)\nHard disk 128GB SSD\nGrafička karta Intel UHD Graphics 600 (200 - 650 MHz)\nOperativni sistem Linux\nPortovi HDMI, USB 2.0, USB 3.1 x2, LAN, Audio-combo priključak\nLAN\nBluetooth\nWiFi\nStereo zvučnici \nTežina 1.9kg\nGarancija 24 mjeseca ',0,'https://laptop-hunter.com/181472-thickbox_default/notebook-acer-aspire-3-a315-22-46ya8-nxhe8et00h-black.jpg','https://images-na.ssl-images-amazon.com/images/I/417GwPuMhOL._SS600_.jpg','https://technoshop.ba/upload/catalog/product/10901/31728-laptop-acer-aspire-3-a315-34-c73g-nx-he3ex-0_60707ba5647dd.jpg','https://mobilnitelefoni.ba/wp-content/uploads/2021/01/acer-aspire-3-A315-53-P7SK-3.jpg'),(35,4,'NIKON Digitalni Fotoaparat D750',3250.00,'24.3 Megapiksela\nBroj autofokusnih tačaka 51\nBaterija EN-EL15 7,0V 1900 mAh\nDimenzije 140,5 x 113 x 78 mm\nEkran 3,2 inča (8,1 cm)\nMogućnost eksternog blica Da\nFormat datoteke fotografije JPEG,NEF(RAW)\nWi-Fi Da\nGPS Opciono\nKompatibilni objektivi Nikon F mount\nKontinuirano slikanje 6 fps\nManuelna kontrola Da\nMaterijal kućišta Aluminijumska legura\nMax brzina zatvarača 1/8000\nMemorija SD,SDHC,SDXC',30,'https://cdn.shopify.com/s/files/1/0537/0599/8518/products/d750_24-85mm_grande.jpg?v=1612959531','https://www.backscatter.com/ITEM_IMAGES/nkl-1543_2.jpg?resizeid=6&resizeh=600&resizew=600','https://cdn.tecobuy.com/media/catalog/product/cache/2/thumbnail/600x/17f82f742ffe127f42dca9de82fb58b1/n/i/nikon-d750-kit-af-s-24-120mm-vr-lens-digital-slr-cameras.jpg','https://taudemoshop.com/static/images/products/600-600/60/e529199fb9f9af4a4c6000242a8200ca-0.jpg'),(36,4,'NIKON Digitalni fotoaparat + DX 16',2100.00,'Display\n8 cm dijagonala; TFT LCD osjetljiv na dodir sa promjenljivim nagibom i uglom gledanja od 170°, približno 100% pokrivanja slike i manuelnom kontrolom svjetline u 11 nivoa; približno 1040k tacaka.\nGarancija 2 godine\nMemorija / slot\nSD, SDHC (u skladu sa UHS-I standardom), SDXC (u skladu sa UHS-I standardom)\nModel proizvoda Z50',0,'https://kulsha.com/wp-content/uploads/2021/03/27277654fe3a5864d1cfe595d88fdc6813739d9d_1570675641_IMG_1264081-1.jpg','https://cdn.sharafdg.com/cdn-cgi/image/width=600,height=600,fit=pad/assets/3/b/e/0/3be09dbee977e23ff0b80285f8a8e04f50dd376b_1570675726_1511294.jpg','https://cdn.shopify.com/s/files/1/0579/2448/5297/products/2343242342_grande.jpg?v=1624275315','https://www.backscatter.com/ITEM_IMAGES/nkl-1634_4.jpg?resizeid=6&resizeh=600&resizew=600'),(37,4,'FOTOAPARAT NIKON D5600 AF-P VR',1300.00,'20.2MP 1″ Exmor R BSI CMOS senzor\nBIONZ procesor slike\nObjektiv Carl Zeiss Vario-Sonnar T* f/1.8\n28-100mm (35mm ekv.)\n3.0″ LCD u 1,229k točaka Tilting Xtra Fine\nFull HD 1080i/p Video pri 60 i 24 fps\nUgrađena Wireless i NFC mogučnost povezivanja\nOsjetljivost pri niskom osvjetljenju do ISO 12800\nMulti Interface Shoe i kontrolni prsten\nBrzi AF i manualna kontrola ekspozicije',15,'https://lh3.googleusercontent.com/proxy/QRxPbFEBsOrwFMtv-3BUfgh0KVoya4jq26EjSET5hBonPtu1jeOla9NE8VQQyiBP2DBH63l95Y24T-Du01-_7gOToASR4ncuQhI_rv6uKjlSWYIT9KKGGEk5OL0SSc-2hw-8Vo7TN9IApEalf9azIP4H4aOs','https://www.adeyelectronics.com/wp-content/uploads/2020/10/2-78-2-600x600.jpg','https://erokomari.com/wp-content/uploads/2021/05/Nikon-D5600-DSLR-Camera-with-18-55mm-Lens-5.jpg','https://taudemoshop.com/static/images/products/600-600/60/cd23c74c929f65d55e2d768ec8ad14fd-0.jpg'),(38,4,'NIKON Fotoaparat DSLR D5600',1555.00,'24.2MP DX-Format CMOS Sensor\nEXPEED 4 Image Processor\n3.2\" 1.037m-Dot Vari-Angle Touchscreen\nFull HD 1080p Video Recording at 60 fps\nMulti-CAM 4800DX 39-Point AF Sensor\nISO 100-25600 and 5 fps Shooting\nSnapBridge Bluetooth and Wi-Fi with NFC\nTime-Lapse Movie Recording\nAF-S DX 18-140mm f/3.5-5.6G ED VR Lens',15,'http://thenewcamera.com/wp-content/uploads/2017/01/Nikon-D5600-image.jpg','https://www.audiomax.ng/storage/2020/10/Nikon-D5600-Dslr-Camera-2.jpg','https://erokomari.com/wp-content/uploads/2021/05/Nikon-D5600-DSLR-Camera-with-18-55mm-Lens-5.jpg','https://canary.contestimg.wish.com/api/webimage/5eff919465a66e017d429500-large.jpg?cache_buster=b6b6033656e987b6d0b075f6d879bc6d'),(39,5,'Bluetooth zvučnik JBL FLIP CHARGE 5',200.00,'Proizvođač : JBL\nPovezivanje : Bluetooth\nVodootporan : Da\nJedinica mere : kom\nEAN : 6925281954894\nDo 12 sati reprodukcije\nNe opterećujte se sitnicama poput punjenja baterije. Flip 5 vam omogućava do 12 sati igranja. Neka muzika traje duže i glasnije uz zvuk JBL-ovog potpisa',0,'https://www.instar-informatika.hr/slike/velike/zvucnik-jbl-flip-5-bluetooth-vodootporan-53042_1.jpg','https://hotspotelectronics.co.ke/wp-content/uploads/2021/03/JBL-Flip-5-all.jpg','https://cdn3.volusion.com/xzwdw.xzhmz/v/vspfiles/photos/6925281970122-2.jpg?v-cache=1602134117','https://www.ididust.com/wp-content/uploads/2020/07/JBL-FLIP-5-Portable-Bluetooth-Speaker-891232-_meitu_5-600x600.jpg'),(40,5,'Bluetooth zvučnik JBL CHARGE 4',300.00,'Bluetooth verzija: 4.2\nPodrška: A2DP V1.3, AVRCP V1.6\nFrekvencijski odziv: 60Hz–20kHz\nTip baterije: litij-ionski polimer 27Wh\nVrijeme punjenje baterije: 4 sata\nVrijeme trajanja reprodukcije: do 20 sati (ovisno o razini glasnoće i audio sadržaju)\nUSB punjenje: 5V / 2A\nBluetooth snaga odašiljača: 0-20 dBm\nFrekvencijski opseg Bluetooth odašiljača: 2.402 – 2.480GHz',10,'https://mobilnitelefoni.ba/wp-content/uploads/2021/03/jbl-charge-4-speaker-1.jpg','https://mobilnitelefoni.ba/wp-content/uploads/2020/01/jbl-charge-4-1.jpg','https://nexteldigiplanetuae.com/wp-content/uploads/2021/04/white-jbl--600x600.jpg','https://www.apmpllc.com/image/cache/catalog/JBLcharge4104-600x600.jpg'),(41,5,'Sony Bluetooth zvučnik XB22',255.00,'SRS-XB22 zvučnik\nUSB kabel\nZvuk Extra Bass™ s načinom Zvuka uživo\nZvučni efekti s funkcijom Party Booster\nZačinite zabavu treptećim svjetlima\nVodootporan i otporan na prašinu (IP67)\nVrijeme rada baterije do 12 sati (Extra Bass™: do 10 sati)',0,'https://www.kenyatronics.com/images/getImage/phpu2dNiv/800','https://i0.wp.com/mobishop.ba/wp-content/uploads/2020/08/bt-ex-2.jpg?resize=600%2C600&ssl=1','https://canary.contestimg.wish.com/api/webimage/5d9711227f8b094c5b7cc643-large.jpg?cache_buster=bf25961bb663298335746de07705233c','https://i1.wp.com/mobishop.ba/wp-content/uploads/2020/08/bt-2.jpg?fit=600%2C600&ssl=1'),(42,5,'JBL GO 2 Portable Bluetooth zvučnik',60.00,'Proizvođač : JBL\nPovezivanje : Bluetooth\nMikrofon : ne\nVodootporan : Da\nJedinica mere : kom\nEAN : 6925281975639',0,'https://mobilnitelefoni.ba/wp-content/uploads/2019/12/jbl-go-2-1.jpg','https://touchtocart.lk/wp-content/uploads/2021/04/JBL_Go2_Detailshot02_Midnight_Black-1605x1605px-600x600.jpg','https://cdn.shopify.com/s/files/1/0523/7080/0803/products/JBLGO3PORTABLEWATERPROOFBLUETOOTHSPEAKER-BLACK_600x600.jpg?v=1611340371','https://gadpops.com/wp-content/uploads/2020/10/JBL-GO-2-Portable-Waterproof-Bluetooth-Speaker-5.jpg'),(43,6,'Printer HP DeskJet All-in-one 2320',120.00,'HP\nTip proizvoda: Inkjet printer u boji, skener, kopir\nModel proizvoda:DeskJet 2320\nFormat papira: A4; B5; A6; koverte\nObostrano štampanje: Manuelno\nBrzina štampe: 5.5 do 20\nObim štampe: Preporuceno 50-100 mjesecno\nKapacitet ulaza: 60\nPovezivanje: USB\nOstale karakteristike: Printanje u boji do 4800 x 1200 dpi\nMemorija: 128 MB SDRAM, 32 MB flash\nGarancija: 1 godina',0,'https://www.nabava.net/slike/artikli/1715/normalized_/normalized_Multifunkcijski-uredaj-HP-DeskJet-2720-printer-scanner-copy-WiFi-HP2720_358ab6fb.jpeg','https://www.instar-informatika.hr/slike/velike/printer-hp-deskjet-2320-all-in-one-pisac-inp-7wn42b_1.jpg','https://www.melcom.com/media/catalog/product/cache/image/620x678/e9c3970ab036de70892d86c6d221abfe/1/1/113396a_2.jpg','https://www.instar-informatika.hr/slike/velike/hp-deskjet-2721e-inp-26k68b_1.jpg'),(44,6,'Canon Printer PIXMA TS3151',157.00,'Canon PIXMA TS3151. Tehnologija ispisa: Tintni, Ispis: Ispis u boji, Maksimalna razlučivost: 4800 x 1200 DPI. Kopiranje: Kopiranje u boji. Skeniranje: Skeniranje u boji, Optička razlučivost skeniranja: 600 x 1200 DPI. Maksimalna veličina papira ISO A-serije: A4. Wi-Fi. Boja proizvoda: Bijelo\nGarancija: 12 mjeseci',10,'https://www.hardsoft.hr/slike/velike/can-pix-ts3151_1.jpg','https://www.techinn.com/f/13735/137350894/canon-pixma-ts3151-multifunction-printer.jpg','https://global-ink.co.za/wp-content/uploads/2019/06/3150-445.jpg','https://www.univerzalno.com/wp-content/uploads/2021/04/1-31.jpg'),(45,6,'Canon Printer PIXMA TR150',780.00,'Obični papir\nCanon High Resolution Paper (HR-101N)\nCanon Plus Glossy II (PP-201)\nCanon \"Everyday Use\" (GP-501)\nCanon Matte (MP-101)\nMat za obostrano ispisivanje tvrtke Canon (MP-101D)\nOmotnice\nOdvojive foto-naljepnice (RP-101)\nMagnetski foto-papir (MG-101)\n[Prilagođeni format]\nširina 55 mm – 215,9 mm, duljina 89 mm – 676 mm',0,'https://ae01.alicdn.com/kf/U74b64c7046234f07876727b651cbc544s/Printer-Canon-Pixma-TR150-1200-dpi-WiFi-Black.jpg','https://www.hardsoft.hr/slike/velike/can-pix-tr50bat_1.jpg','https://i1.adis.ws/i/canon/pixma-tr150-with-battery-eur-paper-tray-fra_8ff5fbbfd1144d1e99e705711d69d06b?$prod-spec-hero-1by1-jpg$','https://www.avtera.ba/catalog/media/118528/md/0/prenosni-printer-canon-pixma-tr150-sa-baterijom.jpg'),(47,6,'Printer PIXMA G2460 EUM/EMB',560.00,'Brzina štampanja\nDuplex štampanje\nMax. rezolucija\n4800 x 1200\nTehnologija štampe\nInkjet\nKarakteristike\nMaksimalno vremensko trajanje jedne upotrebe\nCrna: 6.000 stranica U boji: 7.700 stranica\nUlazni i izlazni kapacitet\nUkupni ulazni kapacitet\n100sheets',10,'https://www.univerzalno.com/wp-content/uploads/2021/04/1-30.jpg','https://tadviser.ru/images/3/37/Pixma_G2400.jpg','https://www.lamaplus.com/all/obr/600/ICAMCG02XXUG_01.jpg','https://www.univerzalno.com/wp-content/uploads/2021/04/1-29.jpg'),(48,7,'DJI Dron FPV Combo',2900.00,'4K: 3840 × 2160 pri 50 / 60fps\nFHD: 1920 × 1080 pri 50/60/100 / 120fps\nVideo formati\nMP4 / MOV (H.264 / MPEG-4 AVC, H.265 / HEVC）\nMaksimalna brzina prijenosa videozapisa\n120 Mbps\nProfil u boji\nStandardno, D-Cinelike\nRockSteady EIS\nDostupno\nIspravka izobličenja\nDostupno\nPodržani formati datoteka\nexFAT (preporučeno)\nFAT32\nGimbal\nMehanički domet\nNagib: -65 ° do 70 °',10,'https://shop.imel.ba/wp-content/uploads/2021/04/DJI-Flash-FPV.jpg','https://store.uav.tools/wp-content/uploads/2019/07/DJI_FPV_Fly_More_Combo_Mode1_1-600x600.jpg','https://www.instar-informatika.hr/slike/velike/dron-dji-fpv-combo-promo--cpfp0000000201_3.jpg','https://p.turbosquid.com/ts-thumb/vH/c938B4/1f/dji_fpv_combo_00/jpg/1618011823/600x600/fit_q87/c1146ffc0183d6e25eb378754746c69ff5cdc27b/dji_fpv_combo_00.jpg'),(49,7,'DJI Dron AIR 2S Fly More Combo',2700.00,'Quadcopter sa ugrađenom kamerom\nMaksimalna brzina letenja 54 km/h (15 m/s)\nMaksimalna brzina uspona 21.6 km/h (6 m/s)\nMaksimalna brzina spuštanja 21.6 km/h (6 m/s)\nAutonomija letenja 31 minuta\nPozicioniranjeGPS/GLONASS\nAutomatsko zaobilaženje prepreka\nKamera 20.0 Mpix\nMaksimalna rezolucija fotografije 5472 x 3648\nMaksimalna rezolucija video zapisa 3840 x 2160\n4K UHD snimanje\nSnimanje zvuka\nOpis kamere- Senzor: 1\" CMOS\nEfektivni pikseli: 20 Mpix\nVeličina piksela: 2.4μm\nUgao vidljivosti: 88°',15,'https://www.instar-informatika.hr/slike/velike/dron-dji-air-2s-fly-more-combo-promo-cpma0000035001_1.jpg','https://www.instar-informatika.hr/slike/velike/dron-dji-air-2s-cpma0000035901_3.jpg','https://i2.wp.com/mekline.ba/wp-content/uploads/2021/05/httpssync.bawp-contentuploads202104DJI-Air-2S-Fly-More-Combo-600x600-1.jpg?fit=600%2C600&ssl=1','https://cdn.shopify.com/s/files/1/1377/7807/products/DJI-Air-2S-Fly-More-Combo-Drone-CP.MA.00000346.01-dynnex-drones_grande.jpg?v=1618577738'),(50,7,'DJI Dron Mavic AIR 2 Fly More Combo',2200.00,'zuzetno jasni detalji\n1/2-inčni senzor slike\n4K / 60fps Video\n48MP Photo\nPoboljšani HDR\nFoto\nVideo\nPanorama\n34-minutno maksimalno vrijeme leta\n240-min maksimalno trajanje RC baterije\nOcuSync 2.0 10km udaljenost snimanja\nPrijenos video zapisa 1080p / 30fps\nFocusTrack\nInterna memorija 8GB\nProširiva memorija putem Micro SD kartica',0,'https://www.anigota.hr/slike/velike/CPMA0000016703_77840-596.jpg','https://www.anigota.hr/slike/velike/CPMA0000016703_77845-596.jpg','https://canary.contestimg.wish.com/api/webimage/5ecd62e5b01a3f60dc221a6a-large.jpg?cache_buster=38efc940142a1e3a21b76417a19ae129','https://cdn.shopify.com/s/files/1/1377/7807/products/dji-mavic-air-2-combo-CP.MA.00000167.03_grande.jpg'),(51,7,'DJI Dron DJI AIR 2S Combo',2150.00,'Brzo puštanje, malo buke, preklapanje\nSklopiv \nGNSS\nGPS + GLONASS\nJednostruki kompas\nPojedinačni IMU\nInterna pohrana 8 GB\nInteligentna letačka baterija\nKapacitet baterije 3500 mAh\nTip baterije LiPo 3S\nTežina 198 g\nMaksimalna snaga punjenja 38 W\nFotoaparat\nSenzor\n1 \"CMOS\nUčinkoviti pikseli: 20 MP; 2,4 μm veličina piksela\nLeće\nFOV: 88 °\nAF, 35 mm Ekvivalent formata: 22 mm\nOtvor blende: f / 2,8\nDomet: 0,6 m do ∞\nISO raspon\nGPS + GLONASS\nJednostruki kompas',10,'https://www.instar-informatika.hr/slike/velike/dron-dji-air-2s-cpma0000035901_1.jpg','https://www.instar-informatika.hr/slike/velike/dron-dji-air-2s-cpma0000035901_2.jpg','https://mukhba.com/wp-content/uploads/2021/05/Falcon1-1.jpg','https://cdn.shopify.com/s/files/1/1377/7807/products/DJI-Air-2S-Fly-More-Combo-Drone-CP.MA.00000346.01-dynnex-drones_grande.jpg?v=1618577738'),(52,8,'HP ProDesk 400G7 MT i5-10500',1700.00,'400G7MTBaseUnit-RCTO / GLD 180W / i5-10500 / 8GB / 512GB SSD / W10P6 / DVD-WR / 1yw / USB 320K kbd / USB 320M Mouse / VGa,HDMI,DP',15,'https://xcelldirect.com/pub/media/catalog/product/cache/0ce22de3d2b00069a350b885e11e70fd/h/p/hp_prodesk_400g7_1.jpg','https://shop.ctech.ba/bs/wp-content/uploads/2021/04/HP-ProDesk-400G7-MT-i5-10500-293Z5EA-600x600.jpg','https://www.didakta.ba/images/products/7EL74EA_191025114456369.jpg','https://business.sharafdg.com/wp-content/uploads/sites/11/2020/10/a2a0a240c0fd3900c39a4fb4c837fc14bdae9a16_c06388174-1-600x600.jpg'),(53,8,'LENOVO M83 PC',950.00,'Procesor:  Intel® Core™ i5-4460\nGeneracija:  4th\nRAM:  4GB DDR3\nHDD:  500GB\nGrafička:  Integrirana\nKučište:  SFF\nDVD-RW:	 DVD\nGarancija:  12 mjeseci',0,'https://www.reboot-it.com.au/assets/full/58847.gif?20210309035946','https://cdn.shopify.com/s/files/1/0825/1477/products/lenovo-thinkcentre-m83-sff-computer-33ghz-500gb-4gb-win-10-pc-base-units-lenovo-pc-858245_grande.jpg?v=1613993887','https://ak1.ostkcdn.com/images/products/8438750/Lenovo-ThinkCentre-M83-10AM0002US-Desktop-Computer-Intel-Core-i5-i5-2917f560-122f-4056-a608-d15c1edaff21_600.jpg?impolicy=medium','https://cdn.shopify.com/s/files/1/1167/3148/products/Lenovo-ThinkCentre-M93P-Desktop---Back_32f74b2e-38d8-46c6-bc15-fcea9a43e042_grande.jpeg?v=1574202068'),(54,8,'iMac 27\"',5500.00,'Zaslon: Zaslon Retina 5K\n27-inčni (dijagonalno) Retina 5K zaslon rezolucije 5120 x 2880 s podrškom za milijardu boja\nSvjetlina 500 nita\nŠiroki spektar boja (P3)\nTehnologija True Tone\nMoguća konfiguracija s nanoteksturiranim staklom\nProcesor: 3,1 GHz\n6-jezgreni Intel Core i5 10. generacije radnog takta 3,1 GHz, Turbo Boost do 4,5 GHz\n3,3 GHz\n6-jezgreni Intel Core i5 10. generacije radnog takta 3,3 GHz, Turbo Boost do 4,8 GHz - 3,8 GHz',0,'https://www.abcshop.ba/wp-content/uploads/2020/07/apple-imac-27-6c-i5-31ghz-retina-5k-8gb-mrr02cr_11.jpg','https://iapple-eg.com/wp-content/uploads/2019/10/41lXDHh5FqL._SL1024_-600x600.jpg','https://edata.pk/wp-content/uploads/2021/04/3-2-600x600.png','https://iapple-eg.com/wp-content/uploads/2021/06/large_1596787880_iMac27-inchRetina-3-600x600.jpeg'),(55,8,'Mac Pro',6200.00,'28-jezgreni\nIntel Xeon W 2,5 GHz\n28 jezgri, 56 niti\nTurbo Boost do 4,4 GHz\n66,5 MB predmemorije\nPodržava memoriju od 2933 MHz\n1,5 TB\n12 DIMM utora od 128 GB\nPotreban je 24-jezgreni ili 28-jezgreni procesor.\n36 računskih jedinica, 2304 stream procesora\n8 GB GDDR5 memorije\nDo 5,6 teraflopa jednostruke preciznosti\nDva HDMI 2.0 priključka na kartici',70,'https://atlas-content-cdn.pixelsquid.com/stock-images/mac-pro-2019-pc-computer-tower-XleRkDC-600.jpg','https://www.wearesync.co.uk/wp-content/uploads/2019/12/mac-pro-2019-600x600.jpg','https://static.turbosquid.com/Preview/2020/02/18__04_29_06/1.jpg3B556319-7B4E-4763-94D2-3C7E47348CEELarge.jpg','https://static.turbosquid.com/Preview/2019/09/26__07_03_43/Apple_Mac_Pro_2019_Set_00.jpg0AA0610C-0247-403C-90BA-47610D24CCFCLarge.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-15 11:41:19