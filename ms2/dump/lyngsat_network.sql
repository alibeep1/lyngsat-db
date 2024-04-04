CREATE DATABASE  IF NOT EXISTS `lyngsat` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lyngsat`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lyngsat
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `network`
--

DROP TABLE IF EXISTS `network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `network` (
  `Name` varchar(43) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Website` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network`
--

LOCK TABLES `network` WRITE;
/*!40000 ALTER TABLE `network` DISABLE KEYS */;
INSERT INTO `network` VALUES ('2M','ma'),('2RN','ie'),('A MAs +','mx'),('A+E Networks','us'),('A1 Telekom Austria','at'),('Aastha TV','in'),('ABC Melbourne','au'),('ABC NSW','au'),('ABC NT','au'),('ABC Queensland','au'),('ABC SA','au'),('ABC Sydney','au'),('ABC Victoria','au'),('ABC WA','au'),('ABE','bo'),('ABP','in'),('ABS-CBN','ph'),('Abu Dhabi Media Network','ae'),('Acunmedya','tr'),('AIR','in'),('AIR Vijayawada','in'),('Al Kass','qa'),('Al Rayyan','qa'),('Al-Majd Network','sa'),('AlbanicaSat','--'),('Albavision','ni'),('Alghad FM','iq'),('Alhurra TV','us'),('Aljazeera','qa'),('Alouette','fr'),('AMC Networks','us'),('AMC Networks International Latin America','us'),('America (Peru)','pe'),('America Paraguay','ar'),('American Family Radio','us'),('American Forces Network','us'),('Antena 7','do'),('Antenna Group','gr'),('Antenna HungA¡ria','hu'),('Anuvu','us'),('Aora TV Satelit','id'),('APT','hk'),('Arabsat','sa'),('ARB Media Qrup','az'),('ARD Digital','de'),('Arktik Telekom','ru'),('Arqiva','uk'),('Arryadia','ma'),('Arsat','ar'),('Artear','ar'),('ARY Digital Network','pk'),('ASBU Bouquet','tn'),('Asharq','sa'),('AsiaSat','hk'),('Assembleia do Amazonas','br'),('Astro','my'),('Atresmedia','es'),('AVT Channels','pk'),('Az TV de Paga','mx'),('Azarbayjan-e Gharbi TV','ir'),('Azercosmos','az'),('Azteca','mx'),('Bahrain TV','bh'),('Bally Sports','us'),('Band Amazonas','br'),('Band Bahia','br'),('Band Campinas','br'),('Band Minas','br'),('Band ParanA','br'),('Band Rio Interior','br'),('Band RS','br'),('Band SP Interior','br'),('Band TriAngulo','br'),('Band Vale','br'),('Bangladesh Betar','bd'),('Bangladesh TV','bd'),('BBC World Service','uk'),('BBS','bt'),('Beta Digital','ie'),('BFBS','uk'),('BHS Telecom','ae'),('Big Brother Brasil','br'),('Big Ten Network','us'),('Bloomberg TV','us'),('Boa Vontade TV','br'),('Boas Novas','br'),('Bol','pk'),('Box Brazil','br'),('Brahmaputra Tele Productions','in'),('Bricast','--'),('Broadcast Partners','nl'),('BT Media Group','cm'),('C-SPAN','us'),('Cable Color','hn'),('Cairo Communication','it'),('Canais Globo','br'),('Canal + Polska','pl'),('Canal 10 Chiapas','mx'),('Canal 2 International','cm'),('Canal 28 Nuevo Leon','mx'),('Canal Capital','co'),('Canal del Congreso 45.1','mx'),('Canal TRO','co'),('Caracol TV','co'),('Castor Networks','nl'),('CAT Telecom','th'),('CCTV','cn'),('Cellnex','es'),('CEN TV','cn'),('Centrul National Media','ro'),('CETV','cn'),('CGN TV','kr'),('CGTN','cn'),('Channel 8','iq'),('China National Radio','cn'),('China Radio International','cn'),('Chunghwa Telecom','tw'),('Ciner','tr'),('City TV (Colombia)','co'),('Club TV','ph'),('CNN','us'),('Connecto TV','ru'),('Cosmonova Broadcast','ua'),('CRP Radios','pe'),('CRTV','cm'),('CruiseSat','us'),('CTN (USA)','us'),('CTV','ca'),('DalSat Global','so'),('Dash Media','cm'),('Daystar TV','us'),('DD Assam','in'),('DD Assamese','in'),('DD Bangla','in'),('DD Free Dish','in'),('DD Girnar','in'),('DD Himachal Pradesh','in'),('DD Madhya Pradesh','in'),('DD Malayalam','in'),('DD Meghalaya','in'),('DD Mizoram','in'),('DD Odia','in'),('DD Punjabi','in'),('DD Rajasthan','in'),('DD Tamil','in'),('DD Uttar Pradesh','in'),('Digea','gr'),('Digi Shala','in'),('DLTV','th'),('DMC','eg'),('Dogus Yayin Grubu','tr'),('Doordarshan','in'),('Dream TV Satellite','gy'),('DTCom','br'),('Du','ae'),('Dubai Media','ae'),('Dunya Media Group','pk'),('E-Vidya','in'),('EBC','et'),('EBU','ch'),('EClutch','--'),('Ecuador TV','ec'),('Ecuavisa','ec'),('Educational Media Foundation','us'),('Edusat','mx'),('Emisoras Unidas','gt'),('Emtek','id'),('Encompass','us'),('Enlace','cr'),('EPTV Campinas e regiAo','br'),('EPTV Sul de Minas','br'),('ERT','gr'),('ERTU','eg'),('ESPN','us'),('ESPN Brasil','us'),('EthioSat','et'),('Etisalat','ae'),('ETV Network','in'),('Eutelsat','fr'),('Eutelsat MENA','fr'),('EWTN','us'),('Express','pk'),('EXRN Radio Network','us'),('Family Broadcasting Corporation','us'),('Family Radio (USA)','us'),('Fish TV','br'),('Fox Corporation','us'),('France TV','fr'),('Freesat','lk'),('Freeview','nz'),('FundaAAo Cultural Riograndense','br'),('FundaAAo Padre Anchieta','br'),('GA¼A§ Telekom Medya ve Iletisim Ticaret','tr'),('Gazprom Space Systems','ru'),('GCI','us'),('GEM Group','ca'),('Geo TV Network','pk'),('GeoSat','ge'),('GeoTelecommunications','ru'),('Global Link','ge'),('Globecast','fr'),('GMA Network','ph'),('GMN','tl'),('Great Wall','cn'),('Grupa Radiowa Agory','pl'),('Grupa RMF','pl'),('Grupa ZPR Media','pl'),('Grupo ACIR','mx'),('Grupo ATV','pe'),('Grupo Bandeirantes','br'),('Grupo JBB','py'),('Grupo Radio Centro','mx'),('Grupo RPP','pe'),('Grupo Telemicro','do'),('Grupo Vierci','py'),('Gulfcom','bb'),('Gulfsat','kw'),('Gyandarshan 1','in'),('Hallmark','us'),('HBO Asia','us'),('HBO Network Latinoamerica','us'),('HBO The Works','us'),('Herring Networks','us'),('High View','de'),('Hit Radio','ma'),('HSN','us'),('HTVC','vn'),('Hum Network','pk'),('I Radio','ie'),('ICRT','cu'),('Ideal TV','br'),('IEN Doros','sa'),('Igreja CristA Maranata','br'),('IKO MG','it'),('IMPD TV','br'),('IMPD TV RondA´nia','br'),('IMPD TV Worldwide','br'),('In Demand','us'),('India Today Group','in'),('India TV (India)','in'),('Indiasign','in'),('Indo Teleports','in'),('Indosat Ooredoo Hutchison','id'),('Intact Media Group','ro'),('InTech','id'),('Intelsat','lu'),('Inter Media Grup','ua'),('Inter TV','br'),('ION Media Networks','us'),('IPP Media','tz'),('Ippica','it'),('Iraqi Media Network','iq'),('IRIB','ir'),('IRTP','pe'),('Isfahan TV','ir'),('ITV Network','in'),('IVG','tr'),('Jahanbin TV','ir'),('Jaya Network','in'),('Jewelry TV','us'),('Jordan Media City','jo'),('JSBC','cn'),('Kanak Teleport','in'),('Kanal 7','tr'),('Kantipur Media Group','np'),('Kasthuri TV','in'),('KBS','kr'),('KC Global Media Entertainment','us'),('KG Media','id'),('KITE VICTERS','in'),('KTN','ke'),('KTN Network','pk'),('Kuwait TV','kw'),('Kuzbass 1','ru'),('Lamhas','in'),('LaoSat','la'),('Latina','pe'),('Liga 1','pe'),('LPB','us'),('M-Three satcom','it'),('M7 Group','lu'),('Macau Satellite TV','mo'),('Manila Broadcasting Company','ph'),('Manorama News','in'),('MarAa+Vision','mx'),('MASN','us'),('MBC','sa'),('MBC (Malawi)','mw'),('MBC America','kr'),('MBC Maser','sa'),('Medi 1 Radio','ma'),('Media Broadcast Satellite','de'),('Media Group','id'),('Media-Comm','us'),('MediaCan','kr'),('Mediaset','it'),('Mediavision','ae'),('Mediawan Thematics','fr'),('Mega TV Network','in'),('Mega-Choice','gh'),('Metra TV','id'),('MFM Radio','ma'),('Mh One TV Network','in'),('MLB Network','us'),('MNC Media','id'),('Moreplex TV','ng'),('MRTV','mm'),('MTVA','hu'),('Multi TV','gh'),('Multimedios','mx'),('MWD Digital TV','mm'),('My TV','--'),('MySat','au'),('MYTV Broadcasting','my'),('NASA TV','us'),('NBC','na'),('NBC Universal','us'),('NBT TV','th'),('Nei Monggol TV','cn'),('NEP Connect','uk'),('Nepal TV','np'),('NER Taipei','tw'),('NET','br'),('Network 18','in'),('New Delhi TV','in'),('New World TV','tg'),('NHK World Network','jp'),('NHL Network','us'),('Nilesat','eg'),('Nine Entertainment','au'),('Nixsat','za'),('North Telecom','de'),('Novo Tempo','us'),('OIV','hr'),('Oman TV','om'),('On TV','eg'),('ONT','tn'),('ORF Digital','at'),('ORTAS','sy'),('ORTM','ml'),('Palsat','ps'),('Panamericana TV','pe'),('Panbetting','de'),('Paramount Domestic Media Networks HD Plex','us'),('Paramount Domestic Media Networks HD Plex 1','us'),('Paramount Domestic Media Networks HD Plex 2','us'),('Paramount Domestic Media Networks HD Plex 4','us'),('Paramount International Networks','us'),('Paramount Networks Americas','us'),('Pasifika TV','nz'),('PBS','us'),('PCTV','mx'),('People\'s TV','ph'),('Persiana Media Group','fr'),('Persidera','it'),('Phoenix New Media','hk'),('Planetcast','in'),('Premium Free','za'),('Pro TV','ro'),('Profen','tr'),('ProSiebenSat. 1 Media','de'),('PSI','th'),('PSM','mv'),('PSN','id'),('PSTV','cg'),('PTV Network','pk'),('Q Radio','uk'),('Qatar TV','qa'),('QVC','us'),('Radio Pakistan','pk'),('Radio Thailand','th'),('RAI','it'),('Rai Way Sicilia 1','--'),('Raj TV Network','in'),('RBI TV','br'),('RCN','co'),('RCS','gh'),('Record Bahia','br'),('Record Belem','br'),('Record CabrAlia','br'),('Record GoiAs','br'),('Record Interior RJ','br'),('Record Interior SP','br'),('Record Litoral e Vale','br'),('Record Minas','br'),('Record News','br'),('Record Paulista','br'),('Record Rio','br'),('Record Rio Preto','br'),('Record RS','br'),('Red Media','tr'),('Rede 21','br'),('Rede AmazAnica','br'),('Rede AmazAnica Porto Velho','br'),('Rede Bahia','br'),('Rede Centro Oeste','br'),('Rede CNT Rio de Janeiro','br'),('Rede CNT Satelite','br'),('Rede FamAlia','br'),('Rede Gospel','br'),('Rede Mais','br'),('Rede Massa','br'),('Rede Minas','br'),('Rede Pampa de RA¡dios','br'),('Rede Seculo 21','br'),('Rede TV!','br'),('Rede Vida','br'),('Repretel','cr'),('RFI','fr'),('RL Liguria 1','it'),('RL Piemonte 1','it'),('RL Valle d\'Aosta','it'),('RMS Radio','ke'),('Roberts Communications Network','us'),('Rodja TV','id'),('Rotana','sa'),('RRI','id'),('RRT','ua'),('RRTM','uz'),('RSCC','ru'),('RT','ru'),('RTL Group','de'),('RTM','my'),('RTM Sabah','my'),('RTM Sarawak','my'),('RTP','pt'),('RTRS','ru'),('RTRS 1','ru'),('RTRS 2','ru'),('RTRS Altai','ru'),('RTRS Arkhangelsk','ru'),('RTRS Astrakhan','ru'),('RTRS Belgorod','ru'),('RTRS Blagoveshchensk','ru'),('RTRS Bryansk','ru'),('RTRS Cheboksary','ru'),('RTRS Chechnya','ru'),('RTRS Chelyabinsk','ru'),('RTRS Cherkessk','ru'),('RTRS Chita','ru'),('RTRS Ekaterinburg','ru'),('RTRS Elista','ru'),('RTRS Gornij Altai','ru'),('RTRS Hakasiya','ru'),('RTRS Irkutsk','ru'),('RTRS Ivanovo','ru'),('RTRS Kabardino Balkarija','ru'),('RTRS Kaluga','ru'),('RTRS Karelija','ru'),('RTRS Khabarovsk','ru'),('RTRS Kirov','ru'),('RTRS Kostroma','ru'),('RTRS Krasnodar','ru'),('RTRS Krasnoyarsk','ru'),('RTRS Kurgan','ru'),('RTRS Kuzbass','ru'),('RTRS Lipetsk','ru'),('RTRS Makhachkala','ru'),('RTRS Mari El','ru'),('RTRS Maykop','ru'),('RTRS Mordovia','ru'),('RTRS Murmansk','ru'),('RTRS Naryan-Mar','ru'),('RTRS Nazran','ru'),('RTRS Nizhny Novgorod','ru'),('RTRS Novosibirsk','ru'),('RTRS Omsk','ru'),('RTRS Orel','ru'),('RTRS Penza','ru'),('RTRS Perm','ru'),('RTRS Pskov','ru'),('RTRS Rostov','ru'),('RTRS Ryazan','ru'),('RTRS Samara','ru'),('RTRS Sankt Peterburg','ru'),('RTRS Saratov','ru'),('RTRS Smolensk','ru'),('RTRS Sochi','ru'),('RTRS Stavropol','ru'),('RTRS Syktyvkar','ru'),('RTRS Tambov','ru'),('RTRS Tatarstan','ru'),('RTRS Tomsk','ru'),('RTRS Tula','ru'),('RTRS Tver','ru'),('RTRS Tyumen','ru'),('RTRS Tyva','ru'),('RTRS Udmurtia','ru'),('RTRS Ufa','ru'),('RTRS Ulan-Ude','ru'),('RTRS Ulyanovsk','ru'),('RTRS Velikiy Novgorod','ru'),('RTRS Vladikavkaz','ru'),('RTRS Vladimir','ru'),('RTRS Vladivostok','ru'),('RTRS Volgograd','ru'),('RTRS Vologda','ru'),('RTRS Voronezh','ru'),('RTRS Yakutia','ru'),('RTRS Yamal','ru'),('RTRS Yaroslavl','ru'),('RTRS Yugoria','ru'),('RTSH','al'),('RTTL','tl'),('RTVC','co'),('RTVE','es'),('RuSat','ru'),('Russkiy Mir','ru'),('Rwanda TV','rw'),('Saba World','lb'),('Sahara Samay','in'),('Sairtek','ng'),('Sanskar TV','in'),('Sardegna Locale 1','it'),('Satelio','de'),('Satview Network','ng'),('Saudi Broadcasting Authority','sa'),('SBA','br'),('SBS NSW','au'),('SBS Queensland','au'),('SBS SA','au'),('SBS Tasmania','au'),('SBS Victoria','au'),('SBS WA','au'),('SBT Rede 1','br'),('SBT Rio','br'),('SBT Rio Grande','br'),('Semnan TV','ir'),('Sentech','za'),('Sersat','ar'),('Sertel','do'),('SES','lu'),('SES Ukraine','lu'),('SETN','tw'),('Shanghai Media Group','cn'),('Sharjah Broadcasting Authority','ae'),('ShopHQ','us'),('Showtime HD East Plex 2','us'),('Showtime HD West Plex 2','us'),('SiBCI','ve'),('SIC TV','br'),('Sichuan TV','cn'),('SICOM TV','mx'),('Signet','ke'),('Silverbird TV','ng'),('Skylogic','it'),('SkyVision','uk'),('Slovak Telekom','sk'),('SMTD','ml'),('SNAI','it'),('SNRT','ma'),('Solar Entertainment','ph'),('Sony Pictures Networks India','us'),('Speedcast','br'),('Sports Inspires Life','in'),('SportsMax','jm'),('SS Creative Solutions','ae'),('STAR TV','hk'),('StarTimes TV Kenya','ke'),('StarTimes TV Tanzania','tz'),('Starz','us'),('Stereo Plus','ge'),('STN','si'),('STV','ru'),('Sudan TV','sd'),('Sun 18 Media Services','in'),('Sun TV Network','in'),('Suno FM','pk'),('Surau TV','id'),('Suyapa TV','hn'),('SVBC','in'),('Svoboda Satellite Bouquet','fr'),('Swayam Prabha','in'),('Sydney Teleport Services','au'),('T-Sat','in'),('T5 Satelital','ar'),('TA¼rkMedya','tr'),('TA¼rksat','tr'),('Taban TV','ir'),('TAP DMV','ph'),('TAS','tw'),('Tata Communications','in'),('TBC','tz'),('TCT','us'),('TDA','dz'),('TDF','fr'),('TDM','mr'),('Team:Media','ba'),('Teleantioquia','co'),('Telecafe (Colombia)','co'),('Telecaribe','co'),('Telecom CLM','es'),('Telefonica Servicios Audiovisuales','es'),('Telemedia','za'),('TeleNest','pk'),('Telenor','no'),('TelepacAfico','co'),('Teleradio','az'),('Teleradiokom','tj'),('Telespazio','it'),('Telesur English','ve'),('Teletrak','cl'),('Televicentro','hn'),('Televisa','mx'),('Televisa Networks','mx'),('Telkomsat','id'),('Telstra Broadcast Services','au'),('TFMediaCast','ng'),('TGRT','tr'),('Thaicom','th'),('The CW Plus','us'),('The Erotic Networks','us'),('The Times Group','in'),('The Walt Disney Company Turkey','us'),('Thema America','fr'),('Tippmix','hu'),('TM Global Communications','hn'),('TMT','tm'),('TNT Niger','ne'),('TopStar','zm'),('TowerCast','fr'),('Towercom','sk'),('TPA','ao'),('TPSD','do'),('Transamerica','br'),('TransMedia','id'),('TRBNA','am'),('Trece (Colombia)','co'),('TrendSports','de'),('Trinity Broadcasting','us'),('TRT','tr'),('TRT Antalya','tr'),('TRT Erzurum','tr'),('TRT GAP Diyarbakir','tr'),('TRT Trabzon','tr'),('TSTV Africa','ng'),('Turkuvaz','tr'),('Turner','us'),('Turner International Asia','us'),('TV 2 (Hungary)','hu'),('TV 5 Network','ph'),('TV A CrAtica','br'),('TV ALBA','br'),('TV ALEPE','br'),('TV Alterosa','br'),('TV Anhanguera GoiAnia','br'),('TV Antena 10','br'),('TV Aparecida','br'),('TV Assembleia PiauA','br'),('TV Azteca Guate','mx'),('TV Barriga Verde','br'),('TV Brasil Central','br'),('TV Cachoeira','us'),('TV CAmara','br'),('TV CanAAo Nova','br'),('TV CanAAo Nova Rede','br'),('TV Centro America CuiabA','br'),('TV Cidade Fortaleza','br'),('TV Cidade Verde PiauA­','br'),('TV Continental','ng'),('TV Correio','br'),('TV Cuatro','mx'),('TV Cultura do ParA','br'),('TV Encontro das Aguas','br'),('TV Evangelizar','br'),('TV Gazeta Alagoas','br'),('TV Gazeta SAo Paulo','br'),('TV GoiA¢nia','br'),('TV Guararapes','br'),('TV IntegraAAo','br'),('TV IntegraAAo Juiz de Fora','br'),('TV Jangadeiro','br'),('TV Mais FamAlia','br'),('TV Mexiquense','mx'),('TV Mirante','br'),('TV Mirante SAo LuAs','br'),('TV Morena Campo Grande','br'),('TV Nacional de Chile','cl'),('TV Nazare','br'),('TV Pai Eterno','br'),('TV PajuAara','br'),('TV Pampa','br'),('TV ParanaAba','br'),('TV PE','br'),('TV RomA¢na','ro'),('TV Senado (Brazil)','br'),('TV Serra Dourada','br'),('TV Sucesso (Brazil)','br'),('TV Sul Bahia','br'),('TV TarobA Cascavel','br'),('TV TEM Bauru','br'),('TV TEM Itapetininga','br'),('TV TEM SAo Jose do Rio Preto','br'),('TV Thathi Campinas','br'),('TV Thathi Vale','br'),('TV Tropical','br'),('TV UNAM','mx'),('TV5Monde','fr'),('TVBS News','tw'),('TVE','br'),('TVRI','id'),('TVT','tg'),('Twofour54','ae'),('UAU!TV','ao'),('UDG TV','--'),('Unisa','br'),('United Teleports','us'),('Unitel (Greece)','gr'),('Univision','us'),('Utkarsh Channel','in'),('VA+','mx'),('VANDE Gujarat','in'),('Vanitha TV','in'),('Veterans Affairs Knowledge Network','us'),('Viacom 18','in'),('Vicus Luxlink','de'),('Vidi TV','ba'),('ViewMedia','uk'),('Viewsat','uk'),('Viva','id'),('Viva Entertainment','ph'),('Vivacom','bg'),('Vivacom DTT','bg'),('Vivacom MCPC','bg'),('VoA','us'),('Voice of America','us'),('Voice of Strait','cn'),('VTV','vn'),('VTV (Brazil)','br'),('VU TV Network','pk'),('Walesi','fj'),('Walt Disney TV','us'),('WAP','--'),('Warner Bros. Discovery','us'),('Wide Network Solutions','uk'),('WiTV Africa','us'),('Woohoo','br'),('Xinjiang TV','cn'),('Xizang TV','cn'),('Zanjan TV','ir'),('ZDF Vision','de'),('Zee Network','in'),('Zee Zest','in'),('ZeonBud','ua'),('Zim Digital','zw'),('ZNBC','zm'),('Zoe Broadcasting Network','ph');
/*!40000 ALTER TABLE `network` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-05  1:16:24
