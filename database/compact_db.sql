/*
SQLyog Ultimate v8.82 
MySQL - 5.5.5-10.4.6-MariaDB : Database - compact_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`compact_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `compact_db`;

/*Table structure for table `info_about` */

DROP TABLE IF EXISTS `info_about`;

CREATE TABLE `info_about` (
  `aboutId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `contents` longtext DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`aboutId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `info_about` */

insert  into `info_about`(`aboutId`,`createdBy`,`createdDate`,`contents`,`updatedBy`,`updatedDate`) values ('04b1d205-cdb0-42b3-8fcc-bd1f8ebf7df4','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-04 05:58:11','<p class=\"ql-align-justify\"><span style=\"color: rgb(17, 17, 17);\">Druk Holding and Investments (DHI), the commercial arm of the Royal Government of Bhutan, was established in 2007 upon issuance of Royal Charter in 2007 \"to hold and manage the existing and future investments of the Royal Government for the long term benefit of the people of Bhutan\". DHI, the largest and only government-owned holding company in Bhutan, has shares in 21 different companies operating in the manufacturing, energy, natural resources, financial, communication, aviation, trading and real estate sectors. Of the 21 portfolio companies 10 are fully owned (DHI-Owned Companies), 4 are controlled (DHI Controlled Companies - 51% and above) and 7 are linked (DHI-Linked Companies - below 51%).The Ministry of Finance is the sole shareholder of DHI.sda</span></p><p><br></p>',NULL,NULL);

/*Table structure for table `info_files` */

DROP TABLE IF EXISTS `info_files`;

CREATE TABLE `info_files` (
  `fileId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `fileExtension` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `fileUrl` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `info_files` */

insert  into `info_files`(`fileId`,`createdBy`,`createdDate`,`fileExtension`,`fileName`,`fileUrl`,`updatedBy`,`updatedDate`) values ('107dad44-1b1b-43c7-b141-9499c62fd389','91e6d937-8f62-43c6-9e96-c96d35362917','2022-03-31 11:06:43','pdf','reactjs_tutorial.pdf','D:/compactfiles/compact/2022/Mar/31/reactjs_tutorial.pdf',NULL,NULL),('667d0511-9af7-4e15-bf03-6dc35dddad53','91e6d937-8f62-43c6-9e96-c96d35362917','2022-03-31 11:06:35','png','login.png','D:/compactfiles/compact/2022/Mar/31/login.png',NULL,NULL);

/*Table structure for table `info_general_support` */

DROP TABLE IF EXISTS `info_general_support`;

CREATE TABLE `info_general_support` (
  `generalSupportId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `contents` longtext DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`generalSupportId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `info_general_support` */

insert  into `info_general_support`(`generalSupportId`,`createdBy`,`createdDate`,`contents`,`updatedBy`,`updatedDate`) values ('449149d4-3c25-4550-b28e-c883a77730e6','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 12:30:01','<p class=\"ql-align-justify\"><span style=\"color: rgb(17, 17, 17);\">Druk Holding and Investments (DHI), the commercial arm of the Royal Government of Bhutan, was established in 2007 upon issuance of Royal Charter in 2007 \"to hold and manage the existing and future investments of the Royal Government for the long term benefit of the people of Bhutan\". DHI, the largest and only government-owned holding company in Bhutan, has shares in 21 different companies operating in the manufacturing, energy, natural resources, financial, communication, aviation, trading and real estate sectors. Of the 21 portfolio companies 10 are fully owned (DHI-Owned Companies), 4 are controlled (DHI Controlled Companies - 51% and above) and 7 are linked (DHI-Linked Companies - below 51%).The Ministry of Finance is the sole shareholder of DHI.</span></p><p><br></p>',NULL,NULL);

/*Table structure for table `info_technical_support` */

DROP TABLE IF EXISTS `info_technical_support`;

CREATE TABLE `info_technical_support` (
  `technicalSupportId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `contents` longtext DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`technicalSupportId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `info_technical_support` */

insert  into `info_technical_support`(`technicalSupportId`,`createdBy`,`createdDate`,`contents`,`updatedBy`,`updatedDate`) values ('e806fa4e-1fb9-4b56-87ad-eea5ee7a7ce4','91e6d937-8f62-43c6-9e96-c96d35362917','2022-03-31 11:06:25','<p><span style=\"color: rgb(67, 67, 67); background-color: rgb(249, 249, 249);\">His Majesty the King, through a Royal Charter, established DHI as a wholly government-owned holding and investments company on November 11, 2007</span></p>',NULL,NULL);

/*Table structure for table `md_company` */

DROP TABLE IF EXISTS `md_company`;

CREATE TABLE `md_company` (
  `companyId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `isParentCompany` char(1) DEFAULT NULL,
  `logo` blob DEFAULT NULL,
  `logoExtension` varchar(255) DEFAULT NULL,
  `logoName` varchar(255) DEFAULT NULL,
  `shortName` varchar(255) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `md_company` */

insert  into `md_company`(`companyId`,`createdBy`,`createdDate`,`cmdFlag`,`companyName`,`isParentCompany`,`logo`,`logoExtension`,`logoName`,`shortName`,`status`,`updatedBy`,`updatedDate`) values ('0fce1201-3b20-4dc7-922e-9c6bb76b608f','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-01 05:05:18','C','Bank of Bhutan','N','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0È\0\0\0È\0\0\0­X®\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0%\0\0%IR$ğ\0\0dÇIDATx^í`•ÕûÇ¿ëî#ÆèîR:Q1°ÅÆÆÆî¿èOIÅL@@Aîî”Üˆ1b¬»·÷ÿ|Ï}ïXÜİİÈô~ôeÛyë¼ç<ÏsÓ6š\0+V¬˜ÄVÿiÅŠXÄŠ3XÄ\n\n\nôß¬ü×°ÖA*àøñãXü×bìÙµyy¹hÒ´)†n]»éWXù/`UL:Ìıááˆ=‹Ã‡!%%áÃ1òú‘xáÅñğpw×¯¶òoÆª e˜:e\n¦L‚İ{÷ÀÑÑ¶¶¶¢)X´h¦ò)¢OEKiÒ¿Íƒğğpı.+ÿV¬\nR‚ììlôìÑÉI)ˆ9­‡1Ñ1prvB`P ¾üâK<ÿÌs°spÀÜ?æbĞÀúUVşX+é%°‘ÒÂÓÍhÙ¬î¾ë.ôéİ·Ür3N:¡®ûÈXÄÆ_À!ƒ0rØ5øäÓOT¸•\'vo	úïÿyìíí1âÚkEN!îB.Hı£‘¸QŸLÿíÚ·×¯‚r½n=\Z¡¡¡xíµ×–†=zÀAJ+ÿ.¬.V\r9qâ¦J%44÷Şÿ\0‚Ä\r³òï¡ÖäÜÙs8{î,ìììô€6<\\ƒüWPX[têÔI]—˜˜ˆ“\'O©ópù_]WÃsO**,‚‹‹Ú¶m«ş>³gÎˆ{Ä;KßË{Ê‡éÿÊÿ¶ö¶pqvA~~>²²²V\\ñŞ¶m›º·H+2Ş¤0Ş¯+ÿ3.ÙYÙ˜9s&¼<=1hğ`ø 77G¾·@Å—Ï­W¯bccqúôiØÚ]ôlU¬ùá%(”tbútèĞA5‰9£ÒØXR•½¯r*+3¡!¡hÑX¼ßqR”;-=]¥/)**RïkÒ¤	¼¼¼Táù;vªg2¾íÚ·Ãùóçq!ö‚Jw4oÑ\\•À™™™Ø·wœ]œõ»\róĞø½%óT+ÔĞ¢Exxz`ÏŞ½(d¿åAÎUôŒkaA!Ú¶k«ú©Ø,Ï¸¤¦¤¢{÷îpssC||<{{x{{£iÓ¦ªô¯\nµ¢ o¼ş¶mİ&(™_\"C=åƒİ<Ü•TÉk.œ;;ÇÜ—_~Y}Ôã?Í7‰Õ\rR÷ÅÇÇ#?/Oî,™(\Z¼äã\\]]U‚ææäáÚëF`üø—€WÆ¿Œ]»wÃÏÏWe:ğy2†ñP	-‡½„ñƒ)¸}úöAÎÃ¢?\" 0\0OœˆN;!1!Úw@DÓ&JÏ`¼(|T(•ä²ün«*ğ$-5U5ÏøñÜy×h\ZÑDâí†™³gª€qãÆáàß,ßË80NÙ¢˜ÉIÉê~õÙòÌS’_}õî¸óC¸°g÷<3îiÉTê´ô4d¤e(A+‡<§0¿\0\"¤?H\\¨h%Ùµs§jl8$qIMK•or€·¯œÑŞ¨1¦ñ™¼ã¢€Ïúu&>ÿìØˆíóñöÁæã£>RÏğEzó­71òºëTŞvË­8{^)JÓH\"Ã8úø‰Ò¸\"Aò8/7Ş>>pq•ïHIS\n÷¿?Â†õëñúk¯K^°Öšœ*†+S=£$LæÛÀÁƒğùŸãÀxóµ7pğàßè?` >ô1Üİİqï=cp,2Rd&ıúõÃ»ÿ÷’£ª`¯ÿ¬gÄr3aöíÙƒŞWõÆ=cî)şæÛmÛ±nİ:„ÖU	öØ£á¾ïWçD»;wég\'\',_ºL5Ï=÷œTKeº““#V®X©êø<I˜Q£nTç>¬2ØEáÂ…ÊÂºº‰\"i°³·C $43O”.W2…?CBBŠ¦wŸŞR¢ÙcÆwßá†G¡}C=ãÏ?ÿD½úõÔu´øÌD\'UÒğ™Nç4©w~•(€¥F^®²¼|Îó/<§E ,X\0ÄÅÅ¡W¯^R_IÇñ¨(Õtœ>ıûaôm·*ËÆï.**„›dîĞaCÕó8J:téÚUÒs-vïÚAaäÈ‘Ê˜ÒÆµUëVhİºµb€%ãİwŞ…¸Ø8‘wŒèt-\nÅ¨ÌüùW)áÎ«tZ¿v­¼˜ºBÿùgŸ#.>9\"hƒ\Z¬Âû÷ï)S¦ ]»vêwró7‰òíR%Áİ÷Ü£™qóòòÄ_‹aÉÒ¥xñ…•1Z¾|9=¦ò”ßEÏx~\r~œñ232qó-7£EË–¥F2ğ™,±©\\7Œ\Z¥ÂZµj…fÍ›cË–Í¸ã®;”rÄ\'Äcö¬ÙhÑª’“äz×*+‡B2¥ZˆõÖzuï¡9Ú9hÛ·o×Døô3Ó$!´–Íšk­Z´Ô&Mœ¨ŸÑ4±ôêçÍ7Ş¬5‹hª<qRıMxÆx¨È(­u‹VZë–­´¯¿A5°oß>mØ¡ZXH¨¼k…&\n¡‰0j/Iğó×yx¬£‰Àh?ıø“ÖBâÒ±}­g·ZzzºzÆáC‡5IDõ;áµR\"j¾>Zÿ>}µİ»w«çŠ’j];wÑB‚ƒµéŸ|ª¾OJ=íİwŞÓ¤´Ğ\"ÂÃµ÷Ş}O“UÏYºt©úidõš5Z×N]´aõµ©S¦ª4×®ø;Õ7ëéR¦ï‡ï ïh¬Í™3GÅÑˆ1­J&#ÆDÒû&mäˆ‘Zttt©g0Nø@Ò>üàC=ÔÀêÕ«µæÍ´õêkÑ§¢õPM;zô¨&FRışëÌ_µzÁ!ZËæ-TxI;ª…øjß}û¢©4­_/LëĞ®½¶dñ=TÓî¼ı­EÓæ*­™¾¤äw†—ı¾ÔÔTí˜¼7/ÿ¢¹{ŒÖ¤q„6|Ø5Ú¡ƒ‡ôĞªQm¹EÛÑÖAÛ¶}›R1ï½û®Ö¨AC%˜%Ù´q£^¿‘<c»R1íÚ´Á\nÓfÎœ£‡øş»oµ@_M¬¾b@|fÍÏÛW{ì‘G‹„…¨L6t˜&ÖR-ÏO>©5–8øûo=ÄÀ÷ß}§ùxzkß}ó­\"´j•Ö¶u-$0X›2yJqÆ–$KL,·R0*FU9)ÓçêŞòüIzHÕÙ¼e³Ê‡Ÿ~üQ)MTT”&²öúë¯é!¨œ;uÒEÈMB2oÎ\\QPmôM7ë!¹õæÑÚ“=¡ÿe€éQ\nğâ¿«0*m¶xêïš2kö,ÍËİS5òzMêKzhÕ¨V?ˆh#’““áëï«*Ü•áíë«\\oo=ÄÀúõĞ»o´—bšH|ÔOSªzLfVªb ]üğQ7İˆ¡CË»$¬/°®!«‡»tTrbî}	âĞ¹k7´)ã¢øøŠ\'5½®C‚Ämcå>¿ _=ÓÔsÙd,ŠŠ|P¹W[·n…”~8rä2$¼dMÁ†;ù½®RÓ2%ãbøñê8|øˆR\ZğõñC÷nİõt!›6iŠÌô\nê<‚Ôa²²³Ğ QC=ÄÀN©ïH	‚±>¢‡ ëV¯r²rô`Åò,uº±t™Ù¨‘””¤ò«¤›e)N·•1¦ìT‡j)ıÑÜ|V¦Å§•Œ.?ˆn~å‹—(ßÿ½÷ß×¯0ø¶\'O>ß~ó->úßG˜2i\n~Ÿ7ë×­WãŸ(PFºvï†¼ì<©âè•d6>kó¦Mˆ”\nYvN¶\ng†µhŞLù«ÊqÕéÜ±“*sPàØ\n\ZŠ¿ÿş§N,Â\0_ïr÷Jı#X¾õ£’ï2BßzÓÆ\r8sö^{ùU4oÒWõì…Î:¢MËV¸uô­øX*½›7mVuS0=ã¥óó?ãÑ±â‰G—ã1<÷ìs˜ éºLüûcÇ×LÁú­jPÙ±}‡\n%ˆ\'ŸÀ/?ı„[Fß¢ú‚Êâ)õˆ=ÏMáîá‰¢y¾ÔıJBÀ1lgbN«úÉAIOÆÑÕÍMµ@±nl©ÊÊÌ@¤í÷?€!ƒ£ß~¸é†Qxò‰\' ®+ÄeÅÙ³gÕµ–àççoPèêé†¢Z•ôúõëK…ÇEU,_{åU¬‘Š8ad6nÜˆ9³~CBb¢jİIJJÄ±\"Ó?Ÿ^={ªëÈ´)S±jå*¸¹ºa—d–8˜RÉÍS­.RÑn.•®.]º`ğĞ!¸ñÆUÓİÔÉS‹“î¯¾ü\n¿şò‹ú}åÊ•êYıôWÖŠÍÀMåÉÉ)¥Tª}ûRü¼ø9eá7Ü~ûíR™İşÆüy¨&Ú#Gà¡‡FG)1×’8;9«ŠaÙp#;¶oÇd‰»»»›|Ï`Õ4ÌÊu¶Tz332pHŒÓ­AıŸqÛ·cìØ‡US±¶Öñ;Ù A‹l#q´•Ê-a©Å4ûøÃP¿AÕ\nwÍˆáèß¯ƒ‚Ô5F\ZGD€Í±GÁ¡Ã‡Ğµ[W¬]³/½ôã•víÖ\r/<û<„>}úWlÙø UfÄO¼‰œìøøøê!P\rÎ_€í’–{víáÏAP`zËsŸyî4lØP5H°¢ÎÀ?æÏE:£‡§§J\'6C¯]½F”ø‚Jã={à¦›nÂèÛoUén¶œ±)ßP†Tj)H„$ôÃ’‰/½ğ’ú #Åõ\ZûĞÃÈÊÈD½úa*Á.Ä]€§|ìŠ¥Ë1|øÕÄğĞĞz÷ô8Q„jh-§T´”+ÂâõàÁƒ˜/	öÇ`õªÕ¸îº‘Ê8?•¥KAQjjŞXYFöÅÌš9ëÖ®Ãû¼¯„Œ}-%¡¥çû+‚q`KØ«¯½¦âÍV0ºBRÁÇ–M[ğ©(zã&¥Ü\Z\'ggxz¸”ÎDQîïï×ßxÍ¤Dóõñkë¡„‚-`şı{÷aŞï¿c§(Ò×_}…8ùş	~PªÕ…­…-D¸]\\Üà$†‰\nÆ÷eˆfO>û4¨ĞÛ¥txîégÅ´Ç#byG^;\\T_ÃÕ½¯ÆÊ«ĞIJR²níZ´c,.¬Ä‰-ƒóÌÇœ9s0xÈ`¼ğâ‹*ŞM\"š ¯0¿BÃÂ¾Ü¢|4kÚL*yÙdK·’ùÎ8oÙ¼?Ì˜¡Zòn¿ëvÕÒF÷òXä1t—vôèÑJqØÌwÑ; Âœ•¼İ³g·Ü¿EëJå¢>ûüsªÏ¦\"‚‚Cà`\'n¶äIÅª]	b1«Í½cîÕ>™6MÿKÓÖ­[¯½ÿşûÚ®;µ#Gkâ&iß|ıjy		ÒÆ¿ğ¢ºN„Kı¬¶®ÄÄœÖ¤TĞ¤„Ò‚åŞ¡ƒ‡hâ³jß~k¨³¥¨d+Œ‘ÈÈ(müó/jíÚ¶Õ®êÑKûàÃšøüúYMµº8ØØiÃ¯®åääè¡ásËÂë6mÚ¤¾ùfm@ßşZ›V­µ¯¿øR?kàë¯¿Ö|¥ò>yâäRÏ¨ì[ˆë ½òò+ª(,¤¶`ÁıŒåäË{ù}3©\r2LóğôR\r$%Ùµk—¶|Ù2ı/M*¯±Å\n¼ŸñØ±c‡öùôÏµ!ƒ†híZµÕ¤tÓNŒ¦æ›Ls’‘‘¡Î?~\\1´,•L{r::Zûñ‡´mÛk]:uV-‹.R­Oùy¦Ÿm„q[¿~½öòË/kŞ^ÚÕ½zi¢XúÙòdef©ÖÍ×ŒĞbÏÇê¡U£F\nÂÌ0\nM¡¦lÍš5š³£“Ö¾m»R	h„Ï`3£)Øj\"VM»uôh-40¸XAÌÁLœ;gæïë§]İõ*£Œ¨Œ1|„I1…`ÒGÕı_ñ•j`îœ¹Z° 6ñã‰êÕAüoí‘±c•A¸áúŠ—ÍÖÏ=û¬6mÚTMüwVLÏ?ÌPÍÚÿû°t³­¥°	ûÓO>ÑZ4i&Š?Is²sĞÄ\rÖÏ–†ùÄt±4~û÷ï×†½Fópu×Ì¯š1à»¶oÛ&\n<XëÙ½‡&u(ıLi˜Í›6Õ®:ìŸQª°tÉR•€Ï<ıŒ¢©æF–´$<úôî­ÚÁ?ÿü3íì¹³úUáı3fÌĞÿªZ©·hIIû8ˆ8\'Ú Í6óšã‡?hÓ?ıTÿË\0û<\Z7×>şèãj+‰ŒŒÔú÷é¯yyxj{öîÕC5íüùóª4¾ºg/í¥ñ/é¡Ã8ìÛ»Oõ=ImEËÌÈÔÏT6ÿÒÒ3ıÅ-ÔCËÃófÎ—EÜ_Õç²rùr=¤j0./ŠWòÀ}˜,Ùh°»t0”RW¼‚º\r\Z6Pú©q*A}¤¨ô÷öÕü¼|TE€¯¿æîì¦úXºwë¦Í=»¸í½ª\nRì‹èÛ»OµÄë7lĞš„Gh¼ÿÉ~ªğŞ;ï*™ñı÷zÈEXR³TêÚ&ˆ\"”×Ò%Ë´ÆÂU\Z†‡hÍš4Õö úRjÂ®»ôßLsãõ£ôß./,aMy Ìßş}ûiı{÷«¶‚T«™·º¼ûŞ»«ZK~t¬TÔ#)-ñÉ‰ˆMˆÃ¡£‡±rÍ*Ìš3¯½ù:Š\nŠpß=÷bPÿAªB+Ê£\0Ö”vÚIåÛ|SoUá@E¶ì•¬¼W—‘×_§ZÎæÍ«‡\\„×÷?˜€µë×aúôé¨‚%-†¸ê|nN.fı6SU^?ÿòsÜÿÀğõõCÔñ(<0æ>™ïo1G§.æû¼æÍÿ]ÿíòÂa>lñ*8î­&ß|YK#)É)ªrX´Ä,1ú\\uµªÔ…7l¤}óÍ7úÙêó¢Xàí:ˆ?]{%ëc=ºvÓŞyûİ\Z— „®Tó¦Íô¿*æ¾1÷©’õÆFiëÖ®3XS)¡ËÂÆ“†õêk;wîÔCşıˆbhÏŒ{ZÕS.kOzM‰‰‰Á¯¿üŠÿ{÷=lÜ°Q--À˜1cğç_‹püÖÏÔG\'Ã€Åê7ş•ƒÍœNN(ª¤GÜR8€¥&;]ÍñİŒïğá¨ş‘[n¾o¿ù¶”(!öüyı\n7Ü0\n®înª	õ¿‚­­ê0fS}uùG¤eË–j´*û?¦LŒï\0‘Ç\"õ³åa\'Õ“ãTCJ¢OR}+5ÁİÍYÍ¨M8´Å[Ü,öoÔ\rDZjš\Z–R/iŸ|\"éÚß|õ5Æ¿ğ¢\ZZÿÒ‹ãU/û¸\'ŸRºo¿óê“ù/áãë‹14õßTÆ?¢ Ğ²U+•±ìãppöšOx‚É17RYUC3~›9‹.Âm7ßŠwŞz[ı©ôYóÅW¯ÅDMÊQ™èğÔM\"\'q¬¬1rı\r×ã‹¯¾Ä›ï¾¥z³9®éË/¿T+´pÜ{®9Œä¿e«Fè®Ö?Î÷ß}¯¹8:i;tV£c?q\\\ru<p öä“Oj×ªZf‚ıƒ´éŸN×¯ª\ZË–,Õ\Z„†UØéU]ÆÜ3Fû¿wÿ¯FÍ¼FRRSTİ‚Í¾UıPìP;pà€\ZR~:ú´j5ü¯2kÖ,-¢q„w!N©\ZÿH	bŠ{ï»[wn¿;£®…ûï»_\rÃhÔ(·lÂò•+1mÚ4,^¶[¶oU-Q+ÅJ&&•Jb	!A•­,AX*ÕB)âåi˜òZ_µV;ºx\\L¢M›6èØ±#ê7¨ç³ÿkøøøÔ¨eñŠQÒ®m;lÜºÅÿÿûhß¦Ş÷İrnWƒú\rÔ,(vw«ú\n‡:¯zUjgg—ÚôÚµÑlü_†j•1¬f~_Q\nBü¤R5ã‡pïı÷©ˆ?ˆ^=zâ™qÏ`ñâÅØ°~ƒjÛ¹cş95®Êˆvp®|m—\"6’šù\\¨¡–„šs#8İJõ	­W×©¦èV‡+r],\nı !ƒÔÈW©\'¨9Û·nÅ¼9óÔ(Î£Gâ¡‡R%Mu 1áhÒá#FÔZ«IJHTóï9j–MÔ5Eê!hĞ°š^`¥zøùùI>W­ŒÕáŠ_‹Ô0ié”ZÊ…­;mZ·QCÒk\'=U«ô1]A*Fm(aû=›\'ÿËuˆ\ZëÂqV¬˜áŠ«ƒX±r%aU+VÌ`U+VÌ`U+VÌ`U+VÌ`U+VÌ`U+VÌ`U+VÌ`í(¼Ìp¡´œ|KÎÅùù=¯E@j~ìmlàê`ùnv6ğs³C¸—3ê¹;ÀÁÃ ­öìrcUKL~A!vÄfcçù¬ËÅ–”Bd‹Bpµ¿BIyŠ|}ÄçièYÏ®é‰ø=Vƒƒ››œÓ`gkì#Zs}°#:úÚ£G˜;šúrğ]m¶R«‚\\N§çaut\n>=˜‰Èô¤‰B¸‹‹KÁ\0Îş,)Ú\\Ê®@Ôa¨g\ZR23±1ÏöœÌV<J›¹”\\\0ÄIICÍ\nv†:bLko´\rtŸKõãY1UAjIÂ³™X€U19X[ˆÓ\"ÌÍ]lÁ€û22‘Õ\Z±%æFóo–&^öèí[”3˜uÁ	®~AòL9Q\nC6ÙêªÅu²£s‹•W„6À\r\rİqc3/´ôv‚³CíPş¯cU\Z¡áXR.ŸÎÄüã©Ø+E…«-¼ì!%…\rÊŠxI’¥$tv€›-zÚ§Á)#?—,¨<µ‚â’ÃÆ\ZI®daLNÂ¤”êâ„›z¢g¼åùVjF9á¾q‘‘†½ã.5Æ¡áö¨V_íËqûÕ]ârr*%3g`á©tN-„«T¢½Å…ªL°Yj­‚ÜD1’Q(.ÕŞØüçÇ€PØæ[¤eaŠ±DJÌ×à!Y7$Ô	Ãz`D¸G­\r¿7ETT¢\"£”;x)³iB™ä+¸8·v Ì¸WÕ¿D”SO?ùŸMÿÌäJuµM±‚ØÛ«5¯¸w„Ÿš4mŠ:¢}Çö’ Wš²h˜•i“q4)¶R©ğµ@1øIRj„¹9¢Ÿ¸S^	Ñ8XäŒ­\n‘ïO\')vji&¢rİ¤B÷nX}7<ÖÒCê)núÙÚåë¯¾ÆW_~iXgì6£Ñ¦‚p{„àµw÷âf¢ºtQ[CÔ&åä“©ÓÔ’–œœt¹`8sáğã9AˆkaqWª>ıûâÎ;î¼¬ñ©ˆã‰Ùxm_\nö_ÈK]?¶Ç\n–(G²Xö`GÜì’ˆ¿Òp$Ãq.RçÒ5Y\ZÓ™¢$…rx¹ÚâÑæ^x¢·z®]!æ&F_|ö™JƒKYR•Ä(/<øNÎ;§¼pOø:à®»ïVK·Öådú´Oğù_ü£É9İüxî/ÈM÷¹sÓ]÷Ü^|A¿âòóç‰4¼º+	ñâyI©al~µ„T*‡—3îwÇòÓÉØ]îŸnW¦–R&+nº¯ÿZ248Ês\Zû9aá `8Öb%ş›¯¿ÁŸ®~¿n¹)(/œÍY(÷qäßƒ\rÂÄÉ“ô+ªO…*_>³.´\nœË‰ö,Q¸ĞÜ7_@ß\0ìØyqo½ËC>Ü‡Ç7Ä#;¯>R×¨Šr°Îææ€±6&;mBàîêjR9˜â¹,õmh†J>İ¥šâ¦âˆÏAûy§±ëlÅûÖEŒ¥÷BWò\"ŠºdÉxûá?æëWUËS&Ö\0~¼ò9½½Ñ¨q#èÓ/¾ğ‚Ék›„¬|Ü¼ô^İ“\ne…«âgSè‹DĞÃr‘‘—•Y~ğ÷ÑĞè[\Z†x:ÒrÅSMœÑÆ½l\r³EA{V65ûÈ7¤æiè³<3%égş]0(/\\Q±QD8yè!ÜróÍf775Ç¯ %áÇ·lÕ¿Íş\r=ø`¹ık“³iy¸kåYüu.-İ¥MÅ¨‚r–\0>N¶hã”‡c)ğõ¥)]r¡\0§æßî=‹u£Ğ,ókTˆÑÁ€—“òØí^C¸SŸ¯(	q[1uO<\nkAù®Th\\Ã7ÆÖÍ[pëM·àÄñ“úË©S\nB¨$\\[—j¾øü8wîœ~¦ö8Ÿ‡{VŸÃÆ„4q±Cu«Ğš”®¶\ZlÅÅY–ê‡2nUYìlDXİıpĞµ!æÚ4Çc;sp!=·‡Ù#ÈÕéj÷¸šÁxJ*ÄÙïOÁÔ}	òïU–âaõë#2*\nO>ñ¸Ú*»*Ô9!´Ø´q“jqË®æ\"Ö¦HÉÎÃİ«Ïc{r\ZÕH9“M!ò‹àåá®2«2Ø`LErB\"|Üñs²ÖœÏÂµaÎâ[‹sVu>Õ(W{L%™°#Şpâ_\n+íşşjù¨	ÿ7A­7f)µ¢ ´êÕ9j•„kcı>oæÿ^³Š˜‘¼‚BÜ·!»D9\Z:—­F³Â,•hquL	)+ãR‡W×#ŸèfW„ôœ|Ø9V¹•ôz\ZögÛ#5·½½\r•÷²äTâ~±Ã¸•…ãÂÜEIŞÚ—‚?\\:wµ,¦dÁ’£&0Ï‚‚‚°nİZ|ùùzhåTØÌË=º-‰ëÕYj“ÏfËƒ±ßƒÍ¹4mUµÜzŒ²9óæÖhÂ<©ô¿¸9¿Ê‚7‡–—ùv\n¾‹†îşNØš§Å˜>TâÙäâp–\r25{¥EòO·ÔG¾KöF}Gƒõ®\nLÖ\"\\¤DsÌÅoIn”*‘ñ9¬›ŒnäŠÙÑÙêN9¨\r<ŒlM·‡£‰k²äYrİìŞ~è.ZXªÒÌËôâö{UÍcÂ{)+<Ø‰Íw©´©â³Ø¸“œ’ŒÅ‹— EËzhÅT[AxW\'äÆïì³¨JDù\\®\Z˜˜”¤vBbÑ—œ˜ÿ@ÿjmğ{}¯½ö²Ru&íŠÃGÒUe™GY¨ lÉºİ[\\’XOø‹¯¢‚ºØc€k\Z¶¤Ù#:ßIÍtÏÂœ5ôñ+ÂG\'mÑÈÉTûUåäËMaùhå†9‰npuVÏá;eaÅÕÎ¸aU\Zøú”Ë–.ÃCasî8ş²m\0g›òÆŒß‘ÁRHêKëz£QŸá„TEAÒÒÓp×wUK^¸ü,ï?}*Z-={öÌY„„ÃÓÓKu	Xú<>‹û¥påûY¿ÍÖC+¦F\nÂÍ]öîÛ§6©	ÔêèèhLÿt:şù§z6—­§e	¼[%lÜ´Q-V\\U–ŸLÅC›ä96p§ßa¦R–HükÍmğŞ¾$¸ºûŠ`’®è°ÃÌs\ZÎepĞ¢²Ş!nö¸E*ÙÓ÷\'AsáªaÈ´sÏ‡a\Zæ&ºÂßÍE½™âøw–†•³1h·Z»” ™%û‡šºáÜÑCXê!u›ŠkUÙEhéíˆ?G„ÂŞÖ²N?K„y¹{×nääé!Õ‡#.²²2ññÇS±lÉ\"œ?{A!AjÈ’%P®ş}kÖ­C—®õPÓT5¿JÁR /¯æ»ÅòÃ\"\"\"0iò$<|HíKÈıùXBYŸ×Î]¹E(Ë±¤,¼½796ğ¨@9OÅŠ\0e‹ÙÓŒ–…#w£%ß£2‹ÄÍ*RÊÂs¬§äâ\\Ğ»±/òè,U\r>ÇA^ŞÖÓE¶öğpu+~/İ¢ÁØqğÂ]L·‘ñZ\'Û\"¬M.Tñ2‡³¼çhjŞŞ~ùê#Õ®¹··Ş{ï-lß¹o¼ó†’Êc{o^Ã}S¾şúK=¤bj¤ Ä’U~üëo¾&NTu“œœıLÅ0\\Å{ù²ezˆeJİéçcˆLëìhŞıá9WI­sùèè%õ®ÒW‹ñF–³ÔòÅJ‹¨ÊiºjibÁÇç¡‰«\rZ»U^¡.	“–*ÅCûüT,;—§¦ãş8‘]„;#\\±0VÎW ütÏÚxäãH“\\cşİ´¬ò¾?Ngb}Lİèmgœ~x,>ÿòÔ«§¥%2éîîukÖUÚá\\c¹TŒ1O{\nöõšsìØÊå«Š÷·„g31#2\rÎŒÆåù\0‘ÂÃÉùhëœ‹dt£LòœŸ”îkÏç¢…Ÿ#lä:£5w–b$\'§»ãsĞ/ØõDË8p±Œ~•ƒÏ.’\'K„8q.Y®âÖé‚@)5\\Rb°×±L¸N¼ÆËÉ	ñIğòõ‡fAc\n]Ì$Q¼¯¦#-çÒV¨-¸ÇåK/½,uO‹ö}¡bQVöìŞ£‡˜æŠUrçw¢GÏY÷ôò”\nÿ=Ä<Yâ.}w4ÙEæ]«’°D8”V€–şNâŞ„¸9—šWˆø<;´òr,V 	VÿìJ\'åc¸o.Ù#^J–ŠJ~Ë¹Ü\"8KiúP;œ=…•™ŞğÕ\'@ñ‘çÄ]»¿‰+Vî>ŠÀ réÃkDû…ºbÓşãğõğ¨Ô^ã,\n¾ò\\æ`)bÉ]W}ûõÅ€-npswÃæÍ›ô¿LsE+ávÑlÖ³Ä*ğº,SÍç³0?&”FX§`Â©rÏSsÉKâ/Ïú5¦\07†ÚBÜşbx] ½©À‚x„f\'à¹[uA¢Ô]²\nm)Æ:S>1]~gSæ=-|q»Ë9lÙ½Kr‚áä,EŠá¡ùRü4ótBÓ´(lul{­¼¥gÔ8}½‹G6ØJV«<ıŒ¸H„95iYtâ3êN)BÆÜ;F5XÒõÀºoJJ²ş—i®xaÑéîîQéÓbpôïéèÓzˆy¦íO†‡H­Ô¹«„‹ğÃÉ|ŒnáƒcY…eJÖk€ŸOåaJ{{Ê(„±]…%‰½½X~¬ÈpÃ§2x4ÏÁØ t¼ÒÊã\Zà™ÀD¼t‡¶®ÅwñÎØkßNŞâZ•®Ë¦{ëà§¨Ld»»]%¡õ\npİ¹£Èò6yMEP¹<%â+.äaÙYº¬–šÆÃWê£–” t³â.˜EpÅ+ˆŸ¿\\Ù¬iÁ³%£  _ÿ«bvÅf`áÙxÛWıó¹vÕßbêmllqsˆc97‰îÚT\r‡Óìğn{O\\²ñÓM^™cçˆ$ÍòñY´#>ÌÂûëcÊ3˜r,ñ@´o+:xÀÛË[´Â`ı™œ[r›¸V{AŒƒ”bíËê8“*½À£s0éxTì-k²-…|§§-ş8–ŠtÁ¯CøúúZÔJILàX´Š¹â„Q5*¿ş½­qˆp-?”ÄxOK¹÷ÕİiÓÈ0£Ôœ\ry½»”Lïˆ ¥à½¶ˆ’‹xQÉ™èN¢Hù\"¸i…¶pó	‚kH8ÜB\ZÃÍ¯rá;GÕ3Î{xÈ‘+Åİ]`{t6øÁŞİK^WZAùŠ\\)=®oà‚ècQ°ñ	ƒ	%²Î³__€Íjo¬ÛåÀµ\nÓÅK§^y®xÉÎÉAAe~0İ°Êv3=—–ƒùç\nT›ua¢²obÑy[ÜÙÈÄª—|\Z•¨HMÅÿÚ¹ÁE„-_®Êá-©(Œ…œ.:äwÖYŒÏc/=£@ï\n³ëÙ#˜“áB/ºMåë¼Ş_üÀV6	Xšå†tÍNŞS™˜†qÈ•÷ştPüô*¸hÿ4iééVæCeËW¼‚œ:uJu\0UÖ«ÎaÏ~H¨ùy4ÎÎÕÆ´_p!®öà¨z¬KBÑmæb‹ùñ¶øûL\"î®W„ÖŞ¶ğrv!E×Œ=í¬Scv²¤1.ÔTÏ½¿\\ßÅÇúg î|~HôD¡”2vR\')+¬wØHu˜O>ÖFÆ\"ÙÁÎ5åÀ¨5”blElâ2kŞ~9ÈÎÉÆ…óç-Ú •ÕÇÇüØ³+^A6¬_¬ì,‹ÂefdªJ½9¦Í@£\Z*aï9NçEg¡“¿#\ZxØ«Œe¡À®LuÆÂèl´µËÄp¯,ğ/B—\0\'„»;¨Ò‚\rEçEşRä§½=Â=ÑÑÏƒ5\\ãtMrÎbQt\næ¥I}Ì?H)GYXrˆA?¿\"ä&^À>»@ÀÙfR¿¢zP	ã¤>³àxİè8Üµs—JÃîÀ•AñöñÕÿ2Í­ i©iØ¼y³ªpUV‚öº7kÖTÿ«<‡2qZêğµõÑt’s5ì‹ËÂ56¨ç^^Iø.G{[œ±qÇìsÀÚ9HÈÎA[-µx\\ë›ÛêÛàzy¸) C]’Ğ³0-³cP‡İÉ…˜yÎÇ\\\Z!ĞÓUrµ¼[Å7&Š	°ADn,%ÚÁÆÉİĞ£_Cøì`\';ÌJ7\\áüôãOg)I-PŒôôìÙKÿË4W´‚üüóO8ô÷!‹ŠKºW½ûö†›kÅ«±¬É@0›vË9\'Õƒ™@:Zˆ¢$·†\"TÜªlq·J¾¿;È•Î.8\r/lJqÄ\"q½6e:b«Ü·/.‘‰Y8’œm‰9X•â€å©X‘ê†v!pö¯MAqİ¥$|ö‰MÍ:lv?7ÃÍ_*øµó|£Ÿƒ\rV\'B+´¬.øO1ÿ?°wÏÕ¿Q™‚Jot½”ƒ/%æÏÇŒïgˆPYä^]ˆ½€‘#¯ÓCLó×Ù<¸èB][P5;ìÎrÀoÇ³qG˜†îN8œU¤ú@Ê\nµ›­\'{$Ù»#ÎÖ1ğÆ±Êó@T\'ÎÙû#ÖÑ)NŞğt÷PCHXy/gf?ç“ŸÍÖğe/ß‡oÏ: Û=Îj­\né¼ê´åÃx.7ìŸ:uªò\"*“ÂÁ°ìy¯Œ+RA&Mœ„çŸ}ù•B¹¿eô-zHy’3s±ŸÎ¾H–¥o•0kœÓ\\ğå‘LŒ·éÛ®^8V(uÆ¯¼¢Ø‰Èóp±·ƒ‹ƒü)‡³uk¨%•UAÃ1‡‘ÙEğtsÁò!n˜÷ÓLLÍj\0·ÀzpT‘1q_M’¥ä•È3~ÀØ‡Æ\"1!Q\rp­¬ô »~êä)<òÈ£zHÅÔHAØºÎa5…ÄÑEúdÚ\'hÓª5&}<Qõ†:8Vşl&Fll,îp¬Z‰±\"&å¨N½Zò<ÊÁ<a¿c®£;îÙo‡?ÿÁÚşNèãï€x±ôÇÅ–)V¦«*ÀT.ŞË†²É²Tùıãëp÷}±;ŒB ‡§®Tµk2Ím13:ÛğC¯‚õÒß«¯º\nãÇ7¬‹eAÿå…¦8„©m»¶zhÅÔhÂTzz:füøƒR’Ê†‚”„÷r\"VÂ9sÑÂ…j™qÅ’ªÌcBÙˆEøí·ÙhÚ¬™Zß$áé)ğ!fÔ¥„V\'Wş=Ÿ˜ˆ÷ZÚÂÅÃÛâ‹p Gê\'EvÈR»J¾Oª,´4ü¿áçKı_~·Qõ	G[øÙä¡¿·«S–í8‚¥áğ}aå£jŒD(R\"”o¸Dö¢]µtÂeéÄñX½nEƒOKBÙb…š‹-pîÊ+°fõ\ZõÎ@e©aéó8¦/ö|,–._†6mÛè¡Sã9éçÏŸ·h aIJ>×V›£p9\\áUI8¾7)1	ã_}?üp)!+Ë3/`qt¦*A,ù®ZAŞ“šWÇìŒô/DD\'â¤Îp Ó¹öNj!‡üBdHÑÀutåu›«È™¯“²µØŠğ‡h¹hëZ€¹dË‰Ø“ç	—€5låruà‰ àd†˜Ñ\ràçz±d¯Ê”[º6111UÊcb”z,üòÂùU•^w!N¼ûğÆ›oé¡æ©±‚T—’Ï®ÊG\Z¡UIIIÁğ#ğïÿŸJ0sŒZv»ã²áVñW5E“oÍE@V::9g#,ĞÎ\n{\'µN•TÜ]l\n‘“W€tÎÃ&\'7nîH*²ÅÎ“Iˆñ…‡TÜ½¤¢_Ñt—\n*ÈqQCÑ%ÄC­š‚Ô„šÊïg¥CÇøâ«/àçgÙÚ—_Ztø‘Æ£ªğ¶BtïŞ\rÏ>÷\\¥ÊA²ä5ºWsÙ¡pyˆbº{zã°c(æ%ºá—\róbò±%©ûÒ5œÊ,ÂñŒ\"œ”ˆLÖÄ`ş;üzÁK²ıQÖanğ%ºÜÊ¡ĞôLÚ?Ó£^y¡r$%%©‘¾œ­j©rLAª¨@ê*İ»wÇG?FÃ†\rô3æaå¸„úG`³½Ty}í4øyº#8¬²½p\\óÀLlÌ”ŸyŞ8ãè‡BŸÖk?/øÛÁ¦ˆŠñi¸\rL§8Ö1Ø\0Ô±S\'Lš2Ií#Rêœ‚VÊ\n\nPdbh‡)R³ó!cú°W\nÊ\ZŠ›È–\'ÎçzUNâ:9Êïö¬š³ïCÎ«ëô{şI¨õ¤êqÛcÕ1Ø‚˜“S½¸:© ì)İ»{/†‚Ù³*_É„¥ï•£uöÏXh“®(œœÕDº¡C†bÒ¤Éz¨eÔ9¡?I«êêîªÚ¾Ç=õ^yùdeÖ­9V./”nó÷ŞÛïà‘‡A¦¸]–P7],½2Áş.7úıwßáí·ßB^®é\n$‹XŞRßSœûT¶¶Ö•[Ùš·h®†1=ğÀÃÍ:¬±‚PX«{Ôl[§’ü8ãG|0a‚Z\Zo{¸üÍ»ÿ&˜]±@ \'å×\0Sr`éQ°{ Qx#¬_µÏ=ól¥V³Æı j1by©ÁÆXµ™[«ñ¬SğpvqV.%‹à‡Ÿ={Ó?ŸQ£nÔC/2téYŠË‡qå5+U‚¹{<·³{úàúæ×î­jG!{±«ïåx;£²p´{ĞIuä…Ï ¼<óì³xö9Q”\n¨¶‚ğ6QwÜq§Z+µªmóœJ›š’¢:Æ\nóópút4öîÙ«ŞËaÈ\\±TåãÕÆŸ¢(+V®D@`€jàæåç°óB6\\­%Iµ`_Î‰<\r[®	F‡ ‹S\nª¢ Ü	àTù¤,¡¥ˆæ‰¬¥gd Wä†Sjãããpèà!5Ï(/T¢ªÊGc|şÅçèuÕUzhij¤ ôµ{Ïn¸º¹Uy¸	›i©X\\Â³Hîå¬ACàü•+W`ÕÊUjk_³ñ(Ç‡±äûfè![{Ëb²àhgËô¶RE”‚äj8:*\r¼/\n´TA(¼ûöîCVn¶Ìª2¡|)ÈŸ\";l¶9}‘ÇaíšµbWÀÁÎAU’v8·jÕ\n3gÏ2ÿ\Z™SZkºF|0[	ªr¨’ÂÛ¾¢\0Üı§Aƒ¸J´ø¡±á—™¿bı¦\r¸ºwoœ‘D°¤2e„Ïİµs7öîİ«‡hên«V\\¿2zêL5šÀ^•O?¨ˆÂƒeãŠ)™0wp¤.—õ£É­õë7«ßcî»ß|ÿ-ÖoÜ€Ûîº]5çææX./tÕ¸îÌš¢Æş•¤¶¡ÒQ«¿ÿá{,ük!r²²‘iáš»Ê\nØh˜6yŠbàªP$hå·°bìÿhì$–¹ÄHŞ*s‰Jnæ9‡‘L˜0;÷ìRËYº«-e-55Uõ§\\¿Ò\\ñyç®]°]>ÚÃÓ«J}QQÇqüøqı/±|ÎRË/Ö¤Zp•úÇ›Z¾ŞÔ?EXXöìÛ‹\Z¨Á¬–¸[,.\\¸€;ÊïÁ_\'j¬R[´d‘ò-)±X„sù—=Ré7ìîˆ \'â¬JR%($±¹Ehéoh5ª,[¶\\UÜ¹dTeĞ…c‹Ö¶mÛô‹Ô	!~¾~xíÍ×}*Z¡æ`±Ië±iÃ=ÄÀõ!†­Æ¬T	ƒQÑĞ+ÄUı]W˜öÉ\'HNJª´A€\rùyù8s¶\\cSQrÿı÷K¥ÊQÍU7‹Uì£)éW	sF‚|?«êV,‡Ëvö°…«sõ+èÿ=zö@»öí•ça*K‘bq!¶t?MR2âºë+­€ñƒYŠ°905%Uº…yÁ§Î}ñ?ËêÓ9E¸¿•—! Á’aÀ€JA*«‹8::¨ş•©°—¤Î‰Kó¦M\róĞ+ù`Nå¥¢äå—Ÿug˜#çjuïÃÿ!TY+néà††ÛºFÓ¦ML¶N•ÅÖÎ9Ù9ª#²$uNNœ*õ)‰8Y(Ì7t.•äá¶Ş’eöõ°R!\\CxT¨=šx×-÷Êˆ¯Ÿ¿EòB8\Z¤ìµuNA\nó\n,jº#¦’¥e ;;ê‹$X1…ã¸“Ñ-¼%Í\rauÌLËVz¯ˆ:§ Üõ‹Ê¬{ÌíìT“oilğ`wÄHÆ[İ,óĞˆtÏªg [¯ê¦†ÄÅ%¨ºHePx]Yeªs2²aã†âŒæ(,*T›á›ZLìÚôó³CJ™-¬\\„b’’_„{š¸ È­ö—2½p+	vşQ*3¨tÅ]\\İàVf:¥ 3³mË¶JWĞ£à³ôà€Ç²x8ÚáŞ–ŞHÈµ–\"ÁóÖvÖØ_¤Äü(İ+•ØØóX¶l™\ZÃUìÿğóõQÛ·•¤NÉÇ#EãˆÆ•ö¦ó<¡5‰ˆĞCÊ3 ¾z8 ^¬du¯/)’†7„»ÕÙÊ9ùàı	jÄ8]rsĞ ²eÔ××O­ÔX’:£ ï½ó®\Zÿo‘{%ÖÀÓÓºw×CÊâæ€ÇZ{ÁV¡’Ò÷?Er¾†¶~N¸%Â‹Òc8QÇøåçŸ±`şøY°ã­’‘«-›ë!©\n2îÉ§ğ³|ppHp¥K8lÀÅÅ={V¬ dh\\+Vòl.—ß±B2‹¸~XîpCÃ\Zmÿ\'ùlút¼õÆ[ª4°¤+//AÁèØ±“r‘\ZËEMšĞ*cÇÎèÙ½.\\¨JKßÅ\nz›¶mák¢şQWG{<ÑÜİlÅÕâÚ¯V¸ÖØ5õÜpGKóiW-.qI}*úö€É“&«Y†•¹VFòÄ Ö«Wí;´×C.R#¡Àš›Ef)¬3°˜ãæ\'Ñ\'£ñëÏ¿ ÏÕ}0¸ß\05\Z300Ğ¢¦:ÂÊ9ãôôÓOë!æiì†\'[{Â×Ş°yæ.¢íç\n¼Ó£vkß\\T6ÈÔR”¼ˆ§§Oÿ}î<<ÚvTãïXÑ¶T^8³•÷n¿ãV“÷ÔhÊ-—t|ûwTZjU.¹³Ë\n9V*\r	‰ñÈLÏÀŞıû°~ízá à *mƒ@ß„øÜ0ê|<i¢Z9TÎW¶Åaæñ,5ëËı×à€ÄÔ‚\"Ìï€\r,weé”[æ\r‡”õÍ×ÈÊÌ¬r½÷sY§ŒÌœ;wéiijŠöÊ+Õ{)/Ü! *òB¸B×®]Õ6¦¨¶‚çğsº4ÚQx/{Ø;8(íåò½ŒRU?”Pa]œ]Ô–,h]’Ä¬\\Ü¿6[ãóàÇu@ÿC0­Sò4¼ÚÑO´·|agRÕUMN8‰\"-‡U7B¼ßÖÎNN°ã®\\’×”Ry¡·Ág~óİ·èĞ¡ƒZš\Z)±ä\ZK¨Î–„¥\0-Ë¬ßf£OŸ>zhÕˆIÉÁµ+b“UˆQ’šÅ¨nÀÜ‹Ï.Ä˜fnøèêŠwèªˆª(¹Rä…ñ ¼ĞºïşûôĞòÔØT2¢µqÔú¤üØ^|±ÚÊAê{;cfÿ ø8Ø6å×Ãÿ­0ó#3\np[w|Ğ+Ğx‰1•÷Õ9jK\rz>wİ}·Yå uŞ—`ÉAßvÜ3Oã©qOé¡Õ§•¿æFjN>Îç¡nö!W¿ë¨(ÇƒÍ=ğ~\0ØÕÑŞòªBå8y7ß|Ş}ï]=´bê¬‚°ˆäDN¶õÕ×ğüóÏ[TÄ[B§ W,¼¶>Ü%uNÿ‡£ˆ>œ[xà£pwüo(ëGÅ£O>†‰S&[$/u2ï¹xwrvrVÄ=şäãµ¦Fº‰’l¹®‚ìpF”¤¦Åú|›²Sò\nñz{/|vU\0ÜÔR/ÿnè‚s*q>ûâ3¼ıöÛjŠ­%Ô)á¸\Z6ËqÙÒ¾ıúaùª4h~¶ö©çåŒ}7ÕÇ\ra.H*ĞÔÆıuQğÔB\rÙòóíÎŞx³{lşÅn=–lRæ¹l¥Zµf5n»ıvı\nË¸¢„É:?»Ùr(2·Ğúú›oäøºÜÈËK³£=>í„§ÄqyJÍ¯[c·ØĞÀaßñy\ZšzÚáçŞx¨mÕšrë\nFy¡ëÍİlÙmĞ¤iLš:I--ÊŞòªR¾™÷“OñÅ_¨‡_nªdIAígÇPHhˆZŒÇèÛï@¯JÆW]JHÅ´ƒ©ØŸ‡ g[ØK†\\©ºbl‹Ï+‚«ÄrH„Şiï`Ú_ÅfŞ/E^(œ¬\0_N(/”…Á9å\\´<B”Â×ËwŞ}\'úôí«_]=Ê)‡ô¿ÿ‰‚ö¡Vë%‚Of<}Dvù»¸º Q£F\n\nB¨h;÷ıhÕª%Ú¶k+Úf¸éæ\\Z.¾JÇÌ#iˆÉ)B})V˜LW’¢ĞqJ,(Bn¾†ÎÓÌw6÷–ĞÚo¸6u\Z>şßG*\rõÀK+/ü‡¥µjØ°!ê…ÕC`P üŞÍ›7C‡NÑ ¾e›»VF9Ù´i3¶lŞ{•ñ—îù`§†¦sR„ã®‹ZûV¹7ür²56³¢R132ùò!NëùO*\nc&õŒ˜ìBtò¶ÇıÍ=1²¡{œ®Œ;v`Ë¦-bÍ‹tƒzéàæ­œGY¡‡Ã‰s±ëëç«vğ9ªmÊ)ÿ,tÉ`‚^êD½”äag|6¦îIÀâsyjk…\0GØÉ7]®E²©|W®”Ä§D1Z¹ÚâV¸)Âõ=8ÿÒ¦ï¿]^Ê)ˆ•êq<%ÿÛ“„EÑ™8\'®MC;H5E	°!™¹ê—\ZÁì2Œc×T|,·¾ò“ÓÆ§ôôÅÀ†ğtª›sÈ¯D¬\nRËh(Ä¼C)ø=&Û¤2¡@C˜ƒ\rŒëCPI8êÛ¨+ÚË¬ÿFEàïÌ)Ş›,K“b£ƒ»\rºzÙãõò¸òW^¯‹Xä’’“1éR_ÉÁ¡ôq4\\‹ïi£İT¹’òì[)[²0Gè¦iÎ-9b9OC\\·0g{øH±tu€…¹ •ZÇP÷±ri°*Èe£I9…ˆJÌÁ±ä\\U¢œÏ³AJv.Ä#+U°ÄğuqPóRBE“œmĞÊÇ\rı¼`w™›RÿëXäÇDò3¨6*,VjŒUA¬X1ƒµ¼¶bÅV±bÅV±bÅV±bÅV±bÅV±bÅV±bÅV±bÅV±bÅV±bÅå†šœ8qû÷ïWSaËNNá¥^^^hØ !\ZE„W:pnÿı8y¢xà6§ĞvéÚEınŠ¥K–ªUKø.İºÀÇÛôü\\EqÍê5jv§ZvïŞ]Í.;yò¤ÚÃĞİÅ®î®<x°Éå€fş:S]ÏyÌ\Z…£‡…óÜ¹Àºuë°iãFµª8§|6iÒW]Õ]»u5¹”W§_²d‰\ZÖnn²Ó»eë–hÑ¢…r¦û¾ıûpèïCÅkÑ–„çııÑ¬i35]¹,‹/Vóµ9g¼iÓ¦hİ¦µ~¦4ÉÉÉj«	OwOµoxWÉ+®	ÀÓW¯^­f™ræ«¯¾\Z!!¦—)ıõç_ÕÌP¾«M›6ˆh6ªõË,]š);\'·—X}„Ók7Jšs!¦qrJ2Fm2-Œ¬Z¹J}ó™Û\ZpMS¤¤¦`Íªµ(’ïâLÅÎ]:—^„\nR’ß¯…kşŞ~Z æíá¥y»{ªÃÇÓ[ıí`k¯\r<D;xğ ~Wy2³2µk†U×i®îZÇvô³¦<hædï¨ùyûj/>ÿ‚–_P Ÿ)Í‚¨qš³£vë-£5É@>ç·9*ÜÃÅ]‹ˆˆĞ$aUxIyú™âk:wè¨=zD?S1¢´ÚçŸ}¦5¬ß@¥AxÃFZx9ägƒ°úš—›‡ÖIµ`ş‚rïŒŒŒÔ<İ=Tz2ü}ü4?/Ÿ‹‡|+ŸéæìªMxÿ}ı®Òi&| âÍ¼	g0]½$Oxøzúhî.nš·›§öÔ“Oi§£Oëw\ZèŞµ›æêä¢úhŸMŸ®‡–çĞ¡CêŒkËæ-´\rë×«ğ£Gªğ\0_ÍOâºqÃn\noO/•×„KzÌWa7\\wƒæêè¬¾ÕøÍL‹`‘/ê¹zzğw¾«$Pyå!ß\Z¢ÎûÍ·úYÓ<şØ£šƒ½æ)ùÜ¯O_---M?Sš£Gj>’–”»n»jbˆô3ÊM=swwCıõ•ÖÒ\nĞŠÛÙÛ)WPX€±¢Ü—á¤”4£®»6m+^Şjíİ³™YjOAÂgqa†¨¨ãbuMïÈ\r7›6kª¬­nûqÇå×1rwsƒ¯‡7‚êÃ¯Ä.Bnn.¨Š\0¿\05‘_¾O…™4q2fIéÑ¾];øùøaêôihÖ¬ü¶[%IMMÅ¯½ßçÍ…¯ŸŸŠ#7óqt4lÍ“¥,WcûĞCxùÕWK-êèà¤JNnåàèè\0{Gß’Q\r@~~Xÿ`=¤<Ü\",,´²Ü´ŠjÕıÌ—ÄÄDõÜysçªEÒ>ø±Ú~Œ„††ª’™süÍmhé(qtstF£ÆÔ79;sŸMÃ›ÀÓÇS^i3‹®…Õƒ“³“zãI\Z4l ¥c+)Y\\UIjkkXÓX¢ğ§½úÊIáßT¸‘\rë7 ]âß¬e5€[|ûÍ7¸ÿûõ+Êãååˆ¦ÊaÉ3eò¼şÆëúÙ‹PÖ\Z†7RŞDH½PUJ–¤œ‚¨Œ“ƒ7pBüO¿ş¬Š\nÃD¦kóİ·ßªkcNÇ`ÙÒe¸{Ì=êï’lÙ¼©é©Jp¸–Õ‘#GTBÌ3/½ü’~Uy¸:]\'ºß|õ5ZJ¢tE)—Ğ§Ò–4ù÷ó‹Ì’ü6k6¤P.¯yõõWÑ¦uı¬iøè_…ßŸ§Œ\0ïë? ?n¼ñFµ´LA~ø¿üú+öïÛ\'îH¨Zá£}ûvja;†9Û4t	î»ÿ´’÷R!U›çóòs^ñ¦£FRÄmvÍ0<ñä“¢tÎ¢@bR\"æÎƒï¾ûøûÀHé^¼7Ÿ¯ÒE²F£Æëä\'Ó¶$Ì•Ş*U*Æö†÷ğ\'¹÷ş{1òº‘¢8.Jr²2ğĞƒ)%äu£o^½û  ¯@%HN÷1¸øiiéJvø~?1N¶b¬ããâÕ~ù;wíB—ÎÕ;Êsñıb˜,˜¶mÛà†Q£T˜~úf=Îe©°Á‹íE ¹Ê­-\'-á=¢ô·332áêæ\n)¢ô;.‡½{÷©¥ıüñÎ»ï(KÌõ‹¶lÚ¬_U1|·»‡»(`´ÚN‹Ö¦&lŞ¼“\'O–øº 1!¯½ö\Z¨Ÿ­˜˜èÓøòó/”%¦q$uš÷\'LÀÕ½{#$8D¥Ç°á×`ÂD)Ú«ïcZ±Ä)3˜Öªk·ÎèÑ½z_İKWógï«0pÀ@4KVù¢”ÜÏ›ë?yyyª÷…K=Š¥Vxx¸ZSŒ«	ÒÀUó¢_OìØ¡£Z³÷ÕW©uÍz^u•’\ræ3\rG»víÑCdêê«{âê«zJ:*ö\n\"£\"E–ö*cÔ½gO\\3|¸ú6–4‹-R×˜ƒï`éMyıìÓÏpøğaıŒe˜­eW”`öbÁ”ä©ğ•·ÂÜ6æôiõ!WIb4—Š§±¸NOOWKÅT?ˆÏ¦F»‹[±qız|õåWúYËaÜYb~÷íw”’9}O?ûŒX¬[\rUÂÎ;qúÔ)Ÿ0Q†»ï¹»”Ûa„ÀQ7İ¨J\Z]bÙ¤î¡Ÿ5`p«¤¤®)\\›˜;t•„®rOäœ‡(ME»óšŠp®â^Õ…^ãiÄ\\šìÛ³çÎU;JuëŞ÷Üs2¶Ì‡M6)Å©µæš¸{§cN‹1yò~K1« tuÊòóÏ¿`½íi±î;uÂğÃõ3Ù¾}»jå¡ÖÒê’‡+Ê‘†qğ×Â¿T˜)¨nb!Gİ8JYDúú“>ˆm[¶êWT3™	’,\nüÁ„pJ„œ~ùwİgDA,¸w÷µŞ•«½X9.jW]ºtQ‹˜±†õƒ#eJVÆ‰JÂ·kİ–\Z%7¨¤!údÚ4He±±±è%F‰­1e¡ÿŸ\'¥¡–<ø½tgèIdÕ5—\n–\r†òÁ<\\ œ²D™àÇõÅqÍ4w%ôl]c«¢9øm-[¶Dß¾ı¤dÍÂ’¿–âÇLo·f\n“\nB?“\ZÊ8}Å?äÑ­KWüß»ïªŒşhâD,Y¶DU‚J{>‡R	ÎuQYzúîé©ê÷ÇO(+`\n\nR~A¾Êä»î¾.âqa°áÃ®Ñ¯0ÄÏNÈ‘„ù¿÷ŞSî]›&Mšàƒ?0kAKÂ8}æ4œ]œUœX14·}ºbE…Eêc‡ègP i)¹§Ş_‹şR{x¹sçaã†\rú•Ãxb¦Ôyúõé‹¾rô—Œg¾°ÒÊÒœ;lMš<	¥+ÒªT–úÁ´)SÑ±}tïÚ­ÔÑ¹c\'ÜyûíhÚ¼©È+31g°uËfõİtÑh€Èã_DJJŠ’“Ë—«0SPNY—¥ÁzxìX4hP_5 ¼-ETd”~•y*”>œ>57áÃGGì…XNÅY»f\röìÙ£_}‘öc·¸Lä¾RIÁ!;uDÃğ†êşÈÇ°yÓ&^Z¹Üü\\$Ë;n¼é&0@Å#H,Èà†•ÜÕf/ft„Â+%Ø’Å‹•PSÙ‰ÒÎ5W¿¢røø)\r_ºjîî®f•‹A¶Òğ\Z	Rq.	ÃhÍ¦MŠx\0H†ñxì‘GpÇm·á¥—_Ö¯4ŸÃÒıUÇE‰yLùóüæ³gÎ`Ñ‚…8~ü¸~õEø¼—ÂÆxPYK3~ë•Â®İ»”˜,–?M›©­Éu7\\‡„¸õ=û÷íWòhöEµlÕcî½Wn\Zõë®½Vs(Q›¢ÂçƒX1ÿí÷¹Xºr–,_ŠßæÌÁ­’™g\'`O©4M8I¿ÃpÏ¾}û”kCß°³ê´Q¤pÓÍ7©ŸI	Irİ~ÃMe‘²—JÂŒ$Ôö†R	åfŸÿı·XÊïàçëWé–ÂL<Ö	¨Œ+ÔÏ>û´ÉFS°9ÑU\\=Æƒ÷§§eªŸ‘ŸgXjŸ†GP@ù-Íx?K™\r\Z¨µcy„ÉÁJ6ãW%e9‡\r†ù`ÉŠ¥X¶r9¾ùş;U×£ûõçŸbØà¡RR­Ğï2ÀïàÁF6(´iÛ¦ÔÑ®};„7n¬”­&PÉjzsfÏ†›;Who&ù¶*]éî2ÿÛ¶o«ò8)9	Ë—-Óï2ÏCcW«¯ª¿±»âéqOKÑM…ŠbmR}”¯*V…­X]Êø²=zôPÇ›o¼©Šê·ßz÷?ø€ÒJn…FÂËÛKY´…R×Ø¼i‹|X¡Ú”Ms´è,Ø2qZ*òs°5ëÿ&¼‡ûÇÜ‡Ğz¡˜$®]¯\0½¹Ö¾ƒ¥Ï]R±¦[È…ø®»ïº[·mS‰k&\Zxíšµªÿâ¼¸ééğö2X±²\\ˆ½ ú\"x_NV¶¸*Íô3è²±îğä¸qª˜\ne„½ÓUªK#¥kv.‚CCÑ©s\'=Ì@?Éxn	1á½÷•+ÅU×Û‰\"P!ÓŠÂûÈ£HıîFV–Ê ´éĞN1À¼4\Z,>Ãœ¹\\¿¥ZDGGãØ±Hƒ .ëì™3ñÇ¼yª	šñ¡KKy£ÂP–h¸-QÎ·ßycî£Fc,cÂÖ@ÖiX‚šÂ¬”V €B¬÷P ØÚC¢¢E>­6Ï­[»³gÏÂ)y~›õ6oÜ¬>‚–ı ”l«·„Nâ?ñÔ“âBœArÇ,ñÁYŠU”>ºv¼§sçÎ¸÷¾ûEAí\r®×¹XŒáıÊŠáwuèØÉRÄs¥û}û÷ª~ŸŠØ¶}›jà·gfe¢uëÒÃ9(`lndQÏá$\\±Şxps—ˆˆÊû@\"ÌL*\\YºJ]„†ÆŠ.[KÂ8˜k2§³CV*/Kl¥òw|\\œáDø|6£ó:)GU\ZV—Åı¥Œ4ëÌ÷?.Äìß~S²Ä¡B4x|>;YÙj\ZU¦Õ°\"‚‚ƒñêë¯I)R`ğfÍ–újN…ÊeŞŒVÀ¹óç–VlYØìK6I½‚Ä°½zâÅ—ÆãåW^Vƒãå÷Ì8%8t³rÄíâø\"^o	>ø †‚sgÏ)_Ÿï¨¡LX£Ğ]wıu¸íö[‘‘–¡ZCşøc¾ÔGf«sæ`+]“fMTã.\\Àwß~gÒ9uòæÿş»\\nöÓ»wo“-^Œ³¥ßkcÚ—…ñ0ÖÍØÉëªPÑÕ´²õë‡)¥¤ñù}Şïú™Ò|üÑÇªõ×ÙÙØJ‰_½-+¨‹ÿZ¬˜ß1âÚxåÕW”©CdêÉ§ŸR†€{ì³4Ø½{·~wå0yì1eğh¬ÍaVA¨U´B¬Ñ}`àºõëğÉ\'ÓÔ@0B«Ø³W/uÍÂ?ªfQ\nçM7ßŒ\'Ÿ|O‰K1îé§å‡§Ÿy£Fİ¨ÚµÙÙµiıFÕìk)Ÿ~6]u<RÁ*Òx…œ¢0–¬3°L_›÷²ØşôÓO+-ÁØjòÈ£ªoeB®Yµ\ZO<ş8Ö®]«¬Ú©“\'1G¬Ú³ò]‡QBË¦ì×ßzSBíc/u±LQRæErR²Êî¾5oÎ\\L4I¥ë)lÚäĞ˜Úâ{Ç(¢»³mÛv<ñ˜¤ƒ¸Ÿ\'NP2ïˆ«ıóO?©‘\nT;Š1l¥ß]5Ø™ÇFæ¡¿Ÿ?“w=şÄº=-r$?E®®¾º·2H<öJ–Mì–ò¤xıÅ§klÎİ6}FŒ–€%6¯2Ã‡^ƒëFŒÄÏ¾ îÑAymã_yIùè;·ïÄ©\'•P6‰h¢†—¨G±XÖÒªM+4ÿœ•îÈÈc8|°tÏfÉkËBş‹/¿T#Cù~îQöR~,ï/ûÑ,§L›*nD¼ú¶®ÿ}ğa¥•Ò;î¼CgÎœQé²sÇN¼øü¸áº0ú¦[T?ıe–ô‰_K×KÆE.~¿:ø\ZÀá+¤RzİÈ‘’/CqäÍµÃG`Â„	ª–\r\"4PôÉ£RÕ{¥4±«Îß+DÎ1İØ@Q¶äş@Ÿ~}pRòØE”„ŞÂ‹âªŞqëxô‘G1wî\\e,©¸TÌgŸN¿Ó4Œ‡1¯ÊÆé›¯¿V,‘ıııŠÇó•½¶ÿÀˆg~ºº`ßŞ=jïó‹\\üf~)>ş‰’¾Ç—rˆ •‚£yC9bÔÏß0rÔ×Oó×†q4ªƒÖºEK5zÖÈ5C‡iÎöNj”ìK/×CË#ÖX»óö;4G;{:Úã>¦‰UWç†6Œæm\Z¦ıúË/*Ì\"Øê^G;‡R£yçÎ™«Â¥Ò¥5nÜØähŞ?,T×„«°ã\Z§‰ÅÓÏšFêSÚ3fh†k¾Ş>ZãFáZDxcupD/G°víÔY[½fµ~ÇE\"£¢4/O5ÂµIãmãÆúËáû\'¼oÍ[/$T\n0Œ€-™/ÑËw4XÛ¾m›~§]»inN®æå³Kæ-É+/¿¢ùxyk¾Z£\rµ&áê»ê×Óì`«}ø!MJ5ıjÓH=E½\'Ğ/@ğñ/%GÄÙÑIøeÚÎ_`l\nQF­[—®š·»—f/2ùé´Oô3šöØ£ªQçZß~ıôĞò¬X¶BsqrÖÜ]µnÊæ-7„-KGS•Ÿ²\ZÅK9â³AıúÔC\r-$‹şgW\'ÕGÑ²U+„V0_€°½-|‹c¶6Ñú°‡ĞN\\Î[hXAßÇùb1¥ÒÕ¶Muÿ	qy‹Ûd\'~©·T,»õèQ®$!+–¯€|¹*íìmíÕ|ck9x=wßÚ¶m›ê±¦KÅa&t1;I}ÅtéèŠ°qáÀKã(ÛªÀæi6‚°t0ZIº{{—ße‰s#\nŠ\n”5m¦MšègJÃhÅŠªRÎ—1¦Ò…ı0LC6»§¥§ªÑ­[·Aß~}-Ú(“y¾déÉ3g5l¦m›¶jô5áŒÛ·ÁÑÙ.’§:w®°…£˜ì;€ó±ç•l†ˆ,´iÛV¥Ñvq9o„­^¡AAjdxE°U3)1AíPÕV<z*F¬kóZ±b³•t+VşëXÄŠ3XÄŠ3XÄŠ3XÄŠ3XÄŠ3Xä2À–ôŒÔTÕÇc¥naUË@A|l·n€cÆY¹2°*H\ràç‡NÄãÔÙdddçbÏÑó8Ÿ†RS‚\n‰„¿ÿFÖIÉ¶öËÖ%¬\nRróò1qö.|³ì(â2ğò·Û°j÷™RÃ‹òrqâÄ,sjC1È?wN?c¥.`U\Z`og‹¸´<Ä¦ÂÁÖgS£æ1]T®q›êæƒ…qÎ8å\ZÈe!õ3VêV©\'c0İ1$$eÂÍÙjd¸öòK¹ÓNÎè>¤>| 3í\nOÓSv­\\™XÄ·ßv»\Z±jŠÙÖ/Ä#ŸnÁõo¯À‰s™pçÌJq§¤~áâX~¦_t|¾¿\'O—^éÄÈ[¯¿¡–ŞyfÜÓjò“•+«‚”CÙ#ÃgÓ?ÓC.òóÒøuEvL‰Ø9cäf\'îU®¸ZRlHÑæåŒı1o/ÄsÓVÉ±\Z\'Ï%!+¯÷Çâ|rùùàÃ†UÃò·íØ!Ã†â­7ŞÀñ(ÃšMlæĞğ²”œ)ij\noÉó„—\r#¦m¥4V)Ã„ÿ{_	ë\'S¦é!ùcÛy<=º-Z‡û+ÁŒOÏ3¸TRzÄ&gáèùt\\Û+?¼9Ÿ\ZˆOGáå¯¶ÁËÍR_±+ãqŞuhHhñê”×\\s\rn»ënØ;:©yÖœŞËYƒ¿üò‹:ÿ—\\ÿÂ/á¶Ñ£1iâ$üïÃÑ¥Sgµº`vV6Şzó-¼ñÚë¸é†±jåJuÏÆõåú[qû­·aÍšÕj•?,ÀËã_ÂàA1uêT5Có¾ûîS×s>Æ—œµyŞÚ$M¬\nRNãœzN»õÎÛÔ¤ ’dçÁÙÙIı~&AêŞõqÆ#ğùŸ–/Ã’ÿÄÕÉ!^j‘Cãni9şœZ§©$\\Ü¹aƒúxòñ\'ğü/`åêU8%‹—¨ÕDüı|0gŞ<µ¢àÀ±ïÀ~4NjUw.F0sö,¬X±R­²²jõJü2óWüïã”RqB[dd”ZçvÍÚuÊpÓ[·«÷SA8­6(¤ü–ÿE¬\nR‚…ş„¯¯–üµÁÁÁ˜1c†~Æ@«WlÜÍyÏ\ZÂC¼±úƒáhæ”¬B´óBã`7ä”^*ÉØëQ¶îN8sËó”„–Ÿóß9ëÛ)ëo¸K—.A½úaj•Ò§o4ÔWNñö5Tü¹·Jhhˆš£Íå}(ìTÎhä:Ã.Î.Êmk.‡aFhhX=5/ÿí÷ŞÁò½ÜK£k×®êœ«‚“–®Ö¶ºıÛÑºmk>\\Mé¥ûaäşk[ãÀ©<0y=æ¬>ŠÉ³vb[d2Z6öÇ-ıš\"¿ÈFu\ZÉe)#_ÜÿŒ<Ã¾%áª\ZëÖ®-^l`×Î]˜={¶ªpXJ4—ñ¸-ZÿşıÕ\nç\\k–S³E¨õÔäTp‰®ĞŸ Ö·\nğ÷W‹p®‹Ü¶C{dd¤«µƒÓÒ3“gXQûĞ=»é¦›ğÓ?áÈ‘ÃÊÕ³bÀî-Aÿı?\r÷7äÊát[¸çbÓÓº\ZMğvEÛF^8p\"[öœF(ƒ—«º5õG»Æ¾Ø,­ú ­(İ´u;O¢{«th\Zˆƒ\'Ğ£U0\Z…\\œ3Î¥„\Z5ÇÂ?aŞœ98£•ó¢9ç¹¸xË–-U+BŞ|Ë-j‰®TÂ¿äw.@Ç…êè\r6Ìû])ÇšÕkqÍğkÔƒqqñXôçBµsw\nãR^^âVªg9sVÍ%çœşÈ¨(øùøª5Í¬èpNºMËÍÍÕòòòô¿ğoQı¯‹ääæi±	éZZf®–’­efåªTS2µùİH\\R¦–•§V%ILÍ’ûòõ3¥áêÜËP„[1ÀÕZN<Y¯’q”F=—defiâ–i>ğ€Ú‹ïìÙ³Å+ºdddjQQQjŸEq»´ôôt-??¯x%†ydìXíLÌı/+ÄºhÃ¿„q­~ÿıw<<öa=¤jÜpıõ¸EJ©;ïºK±B¬\nbÅŠ¬•t+VÌ`U+VÌPÎÅâ63Z=/+ÿE¸š|ÉmÊ)—çb¾V±ò_„Íæ%—w-§ ì„bÉ•®­XùC¹/»Ê»µËŠ3X+éV¬˜Áª V¬˜Áª V¬˜Áª V¬˜Ábaÿ‡~s¦7°ÌÈÈĞÏT>«6s¹8yò„Ú1ª¦p‡à’°åéPÙ³Mµ§pX|ä1Ë¶@®)|?ç˜7p½pKm®PòÛ¹I)÷Ç¬hş~TT¤Ú«,œ#¥6œµ‹$)1QMÕ<s111X²t=¦Ÿ­{öîC||¼şWíAAÛ¼i³şWõ à-[¶LÿËÀ¶m;E+ŞgÜRV­X…¥K—êæ•Ø@Í\04;p:T*ÍØoE¹\\P¸øÎËÁ™³g0{ælµqªQA?•+W\"=#]­°ÿ~N8ßeş‚…8qâ”š:À)ÍF;ª&1şkV¯Áş}ï3‡Å\nÂD)((D·îİĞ±SG\\Õ«\'vlß^lõx~Ïî=j;NÜ1B­ån¹ÜÚwÉ’%¥v•-ÌÏSx­(·ş5ÂçnÚ¸©TâZ0‹ŒŒ¬Ğğš6¨á¾êFø\n=wh­ŒU«VÉ÷íP–È(EE\Z’’“TqgÛ’°suËÖ-êÊ`<8 Ò‹ğûX‚ßCEøûÀßjš-ç©á|­òü\r6{~¹õsI˜6ŒcÉÉ^|\'\rç‹0˜F•Á}¹åµq«nöÀÕÍ°·8ÓŸû\ZîØ±+V–LâããÔ´e>§dÒø0•mÃ¨vDæ¦ÿÆûıõW\\uÕUèÖ­›ÚsŸ%‚QW‹àbğàAèÓ·/:u6ìIÄIiJ~9Wfé²òñ5…Å\nÂ-—9©†ğ\'3ˆÛó\Z{YìòàD£Õ«WãØ1CéBk÷áªHrBÒ×_]¼ˆ3œ9’ÿ{ÿjš+á=œEçææ¦ö¾¦°\ZWåX½j5~şåg•èìõ4…Š§­ƒÚ˜“„•tò”ijÓMn¾9eÊ^övöpëx­1sãc±kÇv„‡‡cÖ/¿ÏÌ”R…ßÌùŞœõÃŒPjùÑ2äåäâî»îÆ‰ÁÈTï`•qˆ·R¦…äÚ5kÖ`ëÖ­*œéÅ…œåw¤JÍ›\r¥%•`µ…={ö¡aÃømîï8tØ`t\n$ı~ùe¶nÙŒĞzõÔö4ZÁM0£ODHHGWÏ&TjşM‰”gşªÒÊVşûğ“T89&‚»pÑbµ9ç®»yô¢8qâD4oŞçÎÇŠÁ2,.a\nÊ–ÚDT-<f€JÏ81-‚‚ƒ”Ì?w^(É(xyyâ¯¿şÂâÅ‹‹å‰FÄËËKòÉàÎ9r]:W¼©gI,Vf ]ªÉ\'áÃ?Â¼ß‡vq?rNüoÙª¥Š?*Y·îTj:÷MïÑ£‡šï|â¸a6ïÍËÏU<şØÃÅûzsÃzÎŸæóz÷î¿-¿=]+È/@ı°ú¸öÚk•0š‚s½›7Pû•3^„óËïs·ŠK÷îİÕÎºTÂŠèŞ£;|ƒĞ¨Q£bÃàã\'ÖiÈ0DDDàÁ±c¡¸œäğ¡Ãj3û¶mÛ¢u›ÖÊRsnwE¨}âßyûu¼ıÖ;*ÌÑéâğ†ĞĞPO†õë×O)	¡iØ¨!Z¶lY<_Êk,yN<…DQ®Ñ£oFÓ¦Íğø£cşü¿Ô9‘pQD\\3bZ·j…°úaÅSvMÁR,==Såe¯«zç3ßçîæ®~§PvêÒEy\r„›‹£z¦òõÅ@6Lí¼{Ç]w Y‹fê–Šü&ÎŠl-ù[—‹Ó1§Õ9SĞ0–,}î½÷^Lxï}ìŞµ³fÎ*.]¨0§NŸ–ğ]èÙ³§šm9şÅñú]R\ZÉwìÚ³S&OÁœßæˆ‘0¤_eX¬ ´ mÛ¶Á3Ï=‹ñã_À„	ïcİ†uÅnÎO?ı¬üA&ZrrŠØOƒÖ3òœºJŒƒ ù1„š½lÉRØØ;¨¢ßH~‰§£±aı,Z¸}$A=Ü\r™â(Ö³}ûöê÷Šà;ã{·µ.(!NÈÈª¸RL!æ=%ás%¿…–Ÿh’Š1gÎˆK·FÅ—[=Ê46ÅÏyü‰ÇUÉ–ŸË%„ñå¼tº‡š¸tlqu3lKÌ<`ÊÂÒ0Nùo#¶R¢KxMíìì^¼©¾¤¹½ƒé-¥	•¢C§ª¤á\\õBq¯‰\róõb²–úNwwõ\rT’”Ô8¹1Æ›Æ†lÖ(äŞ>ŞjûåŠ(™‡¤‹(ä‹/‡‹‹n¼éFÔkP~ş~òü\"xxxaÈĞajÁ‹&Mš¨m¬)ŸœL¶{çnÜ}÷İxú™§1áƒ	˜9kşDóTIAÎK‘xV\\«ã\'NH…2\ZÅ	”š–.¥D{9g‰¼Ñ:±A«OŒÆŒ\'éÙè.Vş‰\'Å_‹—©V-ŒF#ÔÙ´ä]%QŒîG’Q¸*‚qâõGÄ… Lzõº\n;$C¸b-í¡CÑ«GÅ«wP¸’“â‘\"Ênü–|Ö™Šïfzpñjâçë‡æ-Z¢ƒ(çs·CB_½\"ò$=èòZÒNÚaíúuÅßÈL¥kÂ•nDJ’ÁxP!ùí\\ˆ‹L¦i¾^‚ğZ?µø÷qß,u­–-\"Ô9^—››#?ÕŸz²â„õGQ ›o¹Yí7ÎÖ$B%4–X…r?-¸ºÎL–t´à[6oQuî§nlXhÔ¸‘ò2¨€\\q¥EËÊı©>ïäOÂJ:eõ®CRróÛy?]uºÏÜãŸn¯¡Ñe\ZÒ÷ğtW­L—\\ÖHê*¬SV†Å‹60‚tâ•¢œ“ge‰î\0ñ“ˆìÿ4O*L¹Ro¨OÍeÉ¡â&úÜ`^e¦›—·—Ú	Ú@ŠzÖ5šD„cï½hÒ´‰ú`*}Eº[Eb½BBC”à³ÉÏ¢©–L¼vïŞ½*¸>ïÙ31*‘haš53û¦à3˜©¬_Hå–8==Meœß’#\nÒDêa|¾&–ûè±Hœ>­JÀúõëëO*Oº<38$¸ØE«\'g\'%8LŞËå€(¤´ÜºuT \n\'+î,•ııı•Â0Mé\n*AğòPÍ¾çÎ¥ùEÿşÔ}ŒoFFš|wSe•é3m*NÖƒXÏcË\Z]:>Ÿ°BÌ8R	²s²”;ktiLO¦=ÏÓróş„Ä$%\'RÂ0­h\09Š8©ÄC„4P„µlIa„ßÆsüV\ZÖ9víŞ+Æ+9¹ù6tˆz©*\ntñqñˆŒ:®Îq\nºªŒ\'V˜÷§OŸAÿ¾}TéUU¬h¼ÜÔ©ÒAşc¥­6 Rò}FËZULÅÕX\ZP,¡¤+UERÌ³´,9\\º*0¾Æ¸2-ùncı§$ÊšÊe¶6;\0T¤êÆÃS/O\\USq°”ŠÒñc¸Q¸«Ó‰¥ŸC.\"ó˜Ï6%£<giŞëh^+VÌPuõµbå?„UA¬X©àÿX:oô–u \0\0\0\0IEND®B`‚','PNG','bob.png','BOB','A',NULL,NULL),('1',NULL,NULL,'M','Thimphu TechPark','N','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0È\0\0\0È\0\0\0­X®\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0%\0\0%IR$ğ\0\0şIDATx^í½ %ÉYßû|ÎMwf“vµÊÒ\"$±\"d0ÑcŒ`Ì“	6Ælñ3Ø#0ø-YÈ %XiP«U›sœ¼“gn:ù¼ßï«sfŒ×ØÌÌÎìŞº·OwWWUWõı¿PU]]™b#l„ğ†êt¿6ÂFøÂ@6ÂFx„°°!l\0d#l„G\0ÙáÂ@6ÂFx„°°!l\0d#l„G\0ÙáÂ@6ÂFx„°1Õä<³ÚutÜuò¾h·ªqåÖ§ÅRkëôÊF8Sa ç`¸íäş¸úKŒåµcqÛ=±ÿèjtİè| ºıjT/Š-sOŠo}öÓâ_|ÇU±¹1Í¸N{Ø\0È9ºİnüŞ;Şï½ácqOçdêŒQëd¬šÑïwb<\ZGú±´ø¬Ø>ü1nlÁ`9^¼¥ÿşï~E\\~ùÓ’6Âé\0yÃÁ£\'â5·¾;>rÇu±zdìCcô£WÒ2¨…a\'ª“•¨sÚéíˆÍõoŒFçQ/F%j1sar\"vníÄ/ÿ­gÆ×?õÂiÉát…\r€œåğş£·Åkß÷ú8ô?~`oì\Z#“JŒ\0E%16­Rç\0æ¯ Zê17|Al¯<;Úã­1®×£VíG}Rz¥ız5z“jlíÔãÊ\',Å«¾ïÊ˜k#œ–°³®ßugüô«5œ?\Z÷·Æ\0\r´@-¢VGSLb2œDeÔ\0$„ñ\ZZ\"b¾÷äX<?\'—Çx2ŠQ}õê€t\0J-&•NL@Öò¤ıÉ8~ô9õø×ßó5Ñj6-e#üÃ@Î`¸şÖã7>òæØÛ¼+÷OÄO¬€‡ù˜44ŸĞÕJTÆ“¨”JLP\Zu\0ÂVY “˜ë>#¶œüÆ˜£)\Zãè¶ODSØLÈ:Pª1®Õbh‚2+½VLÆõ¸¬=Œÿï/‰ç=åéÓšl„ÿÓ°3¾pßñs_|}İCÜººŠOÑµ5šQ…!š`3›˜Ÿ\nÀÀç 6YÚÊ…qÁñçD£ÿT4Æ8ªµ	æU%0®bT#¿&Xkh\0Fl‰Öx.\ZUA2ƒ¡C[£XŠ^üÈ‹·ÆëW{—ğ6\0r\ZÃoßöîxçû_‡çêñÙŞ‰¨ú1®vĞUkØ¶2æ­1\0 “\ZÚfö|<À¬\ZG«_‹fwGtVsƒ­èŠšb“\Zà©6¢\Zlc@ÒlÄÏİŞİJt\"ê8ìµu@Hy£Ñl.ÄzÿdŒíxÆÅïú‰¯Osm#üï‡\r€œ†pı¾Ûã•ïyS|ìèu±¯¾‚_¹SÃÃÂ\0×\0ÆÆ¿€Ò#ò\nL^aVz©8ªã&>ŠÎòÖØ|ìÉÄïÄ\'Á/©ŒĞ5ö“àŒWğ3êY£V¿#¢£æ©`f5FlÆy­à¬İ•Á\\LzkñÕÛŒWıÄwÅ‹óÓ\Zo„¿lØ\0È_!,wWãŸ¿çUqûâkb½Ñúüf˜F¦Ê\0 ˜Dœ§Æp8‘Ïõ!@é¡eFl\0d8KG®ˆ¥µ‹bT­cyñS(-jh‡1¦UÍk8çNªóç^°Tjm\"\0×«Õ&fY5÷†#İn\\uÅBüÓ_\ZıËšqá/6\0òz?õ±ßˆvßZ~0º“Õ/Ø«TÑú\0‰SCÕ\n\0IêÇ0ùˆc¶>~ñCM«* Á´ªt«±i×ó0±¶F\rLr„ëlpyÔD\0>ŒÇ´I¥‚‰UA‚\n`A‰W€S­	\ZÁ|0½¢Ò‰Ag>F+GbëâbüÍ+·Æ¿şÎ+Ësl„ÿeØ\0Èÿf¸nïÍñú/^ÿış÷Do2ŒQ{sú\0j{Æ8à°öT{e&4ÇdÒM“ª2\\ŒÚ \ZCÀa÷le½[÷?9ÚÇ/Ša£c£iÄ…\ZDs\r šZĞP©eFOÕxATÃ¼ãšÇj‘\Zæ–åÖñaN®ãÂ-Õø—ß|y|Ç•E§…ÿ²1l\0ä/\rNÄë>ò¶x×şkãs«wã$×Ğ1\02ó€\0Râs¸,rpR×*L®šã#»x1¬¯GëäÖhœXŠM‡Ÿ‚B–šÚ´L­0ı›¨9ôI<„\r˜8Ó£5Œ›¤YE:µ\0SÇ*Ú¦ÓìÄj´£Mş!ñíÉJ|7šäŸÇWÅÒÆpÉ#†\r€ü%Â¾ãg?÷êøÈ}åI¸£µ`ô2À7#¤ûĞ¾(L\'±‘â=âÆ¦UÍ™!±“Ãè `Ó]O‰…“;I€iV˜HcM(bp¿š!ã0¡€@ñ7H/L˜&Zƒ„iv€¨Uğw\Z\r\\úztª­rmĞZ$Ã0Ö€šó—]uAüÜ·?9\Z­…¼ãFøÃ@)Àà¯»şêøÓ=‰wìùb´àÃV,Áå£èW»1àÀ±CuˆtÖ9W{Ø­[ÕÇà|$€$1‰ªC´‹¦Õ`‹{pÈ^czTïFm4V¢hÍ.ş„‰ÚAUFŠ_A9í\"V«x\r€†tÜ‘Ú$Í3vì*¬¿j´F1i\0´z35ß¨9]4ÚÜ¨ÿà…;â¼èÒ¸xÛo¶ş\\Ø\0Èÿ$¬†ñï®{m¼ã¦wÅ}µÑÀLiÂÌN‘b~jøÕõ‡ªP€”hôÙ”ÉT³Bë¨“¦Úæ½ÛbËŞ\'Äó¦ô¯‘¦eW4Éø‰Zç¡½>EEgß½Qú\'ú\"5Î2B |İÂu\0Ã=SƒÔç£Ò°\0ğÕÑ\0(ƒ€áü+/\ZÆ¿xÉsã¹—oËÛm„‡Â@ş‚píşâ·~4^{û5œ\r¢ÚšG€“Ù\'0ºc#üˆÂò£Ôş_Ç¸O6N‡’v4Š:\0ÑLªvqĞ.Äæİ“´…TÇqãäSJ£Ú£|U…ŒŸÃ¨Ğ¥fqg¼éˆO€xl¢\r0Úd`æŒâ|Øh³ç\ZÀ©“¯VoÅI´Úz·W]±9~öÛ/zª&ßF˜…\r€ü¹ğ¶ëŞ¯Şõñ¹å=Ñêc›Ï5ñ-äx»dùÅ|\Z¶AŒÇ=Ğ\0œ¦Ö($ÈBgå¶Ğ(vjUöïŒ…vÄ<~ÁZ{\rĞÔÇHqÓ5tñ1‰`ò„AÎ¯Âôî£qŸİ¹3Pø#Hf\Z%}}Í-|šj\'ê˜W­XÃoïD¯É3¡Qšh=}ù	šÆ®àıëÍxî¿øøºç_Å7‚a ¯ùäÕñÚş îìñÒ|Ì0­>Ä”å}\0‚•¥%}H—¦Ó`u#H£Ö( ¡uN¸N¨Ş­ûÕ…¨4×‘ä˜_0ºeÊØcÎÓ4\"†d|5q5Â)wHæÏ”ìS“˜fj–e—¯©\0WUñ§G£ódŠ&¦Õ­Qq\0Ô\0N³®QiF¯º‡{İxş…ëñ#Ï¿0şî‹7@bØ\0È4üüu¿o¼ùê8QY‰vs	-1‚{ø‚ 	£9\nsÂ©£±×ª\0dd§šC\r¢&!i*˜U!p oãè–¨í]ŠæÊv|\ZéM^{¥†Ù5[Ê\n\"#)s{{\'ã›ÇtãÉ,\\ã”ëú9\"$¤qÑé*T$ê\0£WÃ=™DÛ»ÚWã¨io˜…ÍE«2Š~§ËÃzl›ŸüÆgÅ|ÃÆ¨»\"çqşëş0şÃõ¿{ë£ƒ	âˆ·Npmˆ¤´Ú€ƒtšI:å˜j€f¨.åiGÄĞjA3a,aæÔúõhîŞãöV+øê%Êk	\n@U±ÿ–2ÓÙ‡éKWpª6½R$\ZyÒ–c3…q¯ãk¹š`ym¤É6˜v;SW)},?ÒåËXœç=Ç8ì“aÔûİØJY{ÇÅo|ğŞøğõ·{×Çux\\kÃ{ÄoİøGñÛ7¿;F‹}ìój4ì%Â4Ò´Ê Dgç*Ùt¨–€#GÉ„ğ\"Œi·®Éá9~`Xm°IíƒŞÙ×ŠÎ—¢1:D‘Á8¤{a|\reT²¹­V8r2£š€¨LC|šSÄœT4VÏ2ÌÍ~\n•¢Y0¯Ô2ú&Õ©6QVqØQ\'œ;Ú^Ã7qÎ–}‡8ƒã1şH\r!q0=có ~üªK1·™÷y<)÷øğ÷+nøÃø÷×¿6V¶¢][Œy|%°Ú@¹‘~€R:7óø#ócîp<·9D:s¬¦¨L_éGM1y°8Ş‘³uµõkvûo±Ü_N·Øüáj of‚¼/ ò¾Æ	 ÷Ó`½¤«5fç§V0¯7ê^wÚ°e†1öcÌ~ØG£{1\ZÏwTìÂNV±Çæf;n:ÒW|àŞøĞí{²üÇcx\\j›Şï¾óƒñonıÃèTÇÑŒ¹èÃœm™Í;(RUeL%sj$ñ(™‘=Œ6†áHe²õ¶>¶ûhd)\Zcƒ˜;¼Õ;Ÿ•î9GKæ\0¿ì•\"¦ô:!÷½<®ZğœCqµ‹¿9¨FA#L\ZD‘\0æº5L‡Ä¸,W­Ã÷1Î²0íİjX@éå²Ë7pÖ+8éUøqsäÔ²XâÙºõf¥ÎWnÇË^ôôøîç_ŒCoYŸğ¸Ó Ë++ñÚÏ¿=~î3¯†E&lí¦„DF´×H).ãåøœ¦,ÿ–$í|¸$µAcÁ¡ãìKOÄIÑ54ËmÙcÕ@s&óÈ´ét¤R(ÚÉû$/ç’„$+ÈI¨¨4ş²~™ß‚Ô8¤Ï™ŞsÌ8®WôKô9Øg½ñKÒÿ@[ŒÇê4ÄdPÇAÍfÁ¼œëúÆã	ªÑMXe7îÅ¯¡InÙsÌ*=®Âã\n GNßúÜÅŸÜõÑ˜ë,Åœ/5!m]ü VÁBZÊÄ)Ñ§ÌšSE`>yQs*p¡ c-£Âø°SqRĞFµ>Ì¼wKTÏÇ¸†ÓğÒdB[$?{{šEn–k™np”N;Ç¤ Æ›>ã¬[ôĞqú%–a¼q\\š™]Ó¤–Ê½WpŞŠàqs<B»arUFİ¨V£6èÅ\0ºZiGKµşz,µZñàú$^õÛâswì¶ô,ûñ?\07Ş|ç‡â—oüİ8ÑZ‹9L‰L\rSUaÊ™@8\0([òŸ6¿R0FæO>#¤Ô†Á&vû\"©+ìë‡ç¢µkG4û‹1¨Ã„Õ\0$@”‘e­ÂÔ2ñ´Lîk=¼¡·Òw°\\È:xVö–„’·ø\\á8¸·ş–Í–\0§.e¦\"{ÛG¾´EığCìa¨ö»(ÅÕè’n0ÒdT £Îs-ğï½ãxüò»o/Üw2áqÌğ{?ÿù–·E~-4‡S=rÍŒÌ=rtÚ5¥¶\\jÎÂ¼2«]¥r¦¦R:¿Ú5ŠÅƒfoÔV›Q9°=ZÃ¹·F1lP.JY„{BdÎÆå¼0µEë—@ï)“Š4Œ\n H7J­ v!M2;ç©ÅˆÎBHí5‘åÇŞ `ŠÓî	å¦óÎm*CÌCÍ®¼)èëÃ5hÓ…v–¿\rçãƒ»kñÚ=[ÎrëáqOÜÿ¥øùÿzÜ¿º;æêKÅáÎÅÕ`PÇjÅ‰vÌ }…	lÂ¢0Tò ‡¹‡‰f<©eåû9ı|Pú¾ÍQ;ÙÀ)çªÅ\n¸\ZyÍWeqˆÙÛ­ZÅI µ:¾ (Ù5ËÆ^³níÀc¹¯|`5¢ Œâ1 ²B™pz™Í´[1;.f¢Y<Ç\'AKô­.\0¡MF£J´º]”Ì2XY#Ó‹ı*4©‹íøÄ®aüÖn‰}GOPĞc;<æò¥ƒwÆ/}ê5qÃÉ›b¾Õ†ÓÎ³[Ç)§{4bÃNª˜Îä,g½’b\nÑÑí4_DŒÇ0U­?ƒJF_Öá­Ñ8<ŸÓ6ª¨•6àkNÚVLš€­UŞ÷íU,ø?uÒ7¸æ9€©Ú«$HP²X\ro\0±ÖÅzğ—xà<ëH4¿R“ğçyªQ<DÂ›½~‰“-{“\0”úd¼ë€2 ½«¯ŒÖ£šø\"•ÑZÌWÖc¥7‰ÿü‰ñ–Oß\'WW)ï± k’ş1î9¶+şŸşr\\søúXjo:ôP¥Cø®ÆØ4ü\r«\nÎ´¯õ¹æ”šD&\ZÈ(ğÒPÀ8øCå{æ\\·3¨æ˜¶{k½õ»­eÀPï‡¹•ñ¦|cÔÀŒÉsÀ.kåT§fœ#é9Îè”îé{$ÜÀKœ+ùejëgr¯ay$p8ÊÁÂsA‘&–eZ–ÙÍ€V®“Ş8Éç[†uê×¢Nã:B£±™4<Sét”Fƒk\nLÓF5ê8ğ+“¥ØÒÄ~Å–ø‘?16Ï/æÓ=ÖÂcVƒÈ`¿õù·Æ;ï¾&\Z›bÒ‡eN-9E`È00œÜâ !ûd¾™’ÒW@Èm˜EvéÊtø+^UN`\\!õíŒşÚ¦U§hˆú\\ŒÚø%ÍfšQj†q»“v+F@Ä~ÒšJ{Í9Räãz´æ\"ØWÛœ·ZE³Àœ5Ê©6k”…éWÄ0»¦¡@`sŸ\ZÃÓEjŠiç3\'¼\n^|N	Á‰P´GKÊécã¡Â£ÏÁ:EG~2à´#,0Ã,w2YÅÚJìÕãåï?¿÷Ñ›½Ëc2<&5ÈÆ~ÏŸ—½ï—b­­wZ9Rí@ë³ÉX2’\\¶‘‡`¤x­\"o‰¡Nl.\nê8dÊ®ÖÇƒšå$æ\Zì‰§Æx×&óÅh1·\Z®=…¤(“: ô~S“)94×·‚É9Q{eïVâqjiY!Z\'šMÇYSHpÚ«ä(şºø†¡A¦\'s)\nçòú/0òCËä\"Æg>•ÖãıÑi22ê¢UªšøE5}$À\ZõvtÈ3òmÅZ\'\Zµ…èó\\ûˆwş“¯?ëò?¶Âc o¾ı}ñ“×üF,Ï÷£İœÇ…©`Œ\Z@ñaDƒÛÒìI„SórÂ ÇeBn; \ZÂXù*­½>itçĞF.},6õz±z××D}m.æa¢–« V›1¬¶ñ3`x$ş¦s±·šKõp™ĞÑz!á;ÚB¾«»Œ-2³Éz[‘io“ÒÜÔ9ğçÂsÓºYÙZæ·îÌ²ıõi‰Ïç-á”Æ!¾ÄúÌĞ:˜Ç’\\¾Èát;<®ÕĞ‚µWç¸Îq­ç›‰îWÆíX\Z=ÿñ¥_ßüìË²ÔÇJxÌäæ½÷ÅsŞø÷¢9×ÄZ™.’¼> Ù«ƒ|qHŞ“1rƒ!f›c\"ÎÁÒº*³rÈ°‘ç¼ØÔô[Nç%Ïrl:²)º÷>\':±™òûÑÂÂ·aSàQVÕiåHbÀQÖ«ROÈtÔ`8aĞ½wT“PzÑq¬£ã”—ÒËÓGÅyTT$ë”c9Ö-ó–ãœî\"¨y®Q·…+\\ãŞù¼\nsQÏjš”ø\ZÄ‹Ğ Póå{%†çHMRï %1],Ò\0äµÆ\\Ü¿ÚMõ£ñŞô\rñ¬Ë·SÈc#<¦\0²kå`üßoùõ¸fıÚØì;Ãqô\Z8±øuÆôÊùH0`Ñ\"%(=e6İX‹FfƒÑqÈÁ¾7[)±7eÚ&Õ=OŒæúbÌµ¶dÚV£\rv0‡œ{•/%-|rï›À\0,Ü{Ï	Ç^ò¦ìÄE6‡ÿ2»`A[x?§Ö—1\n+Hùé\'\0ü‚Š=j=|…ô-x–œmœ¶\"ù¹O›æ÷±üCl‚ÆìÖE-«\"Z-!ˆ‹ù„åê\r5! áµjƒèhJâ´÷çãuxñb5^şÒçÄ3.~l|?Q*=fÂo|ş-ñÎ#À×]HÆV‚ÚÚJÈ”¶<.Í\\xc\ZÒä hrdbË,%zÅñyHf#“c¶`„Ê±MQ[İ-’®t‘®|[/p¦+Ùm‹£­S\rSÙ­ëµ¡’·UEÃ ™š8ì\r\'*óa«Çcö#7G-Êl-±-r>$µ×&¤u0qpê«œi}¿¼‘{ÇVJw2Hwß/6ç)\r\0©<‡¾ùÈAfò˜)< ĞŒgÍ÷c\'áÜ}mè””ò¢7®Ç*z±ƒ¢ß} /ç\r±¼îÜÿó?<f4ˆH_õ¦Ê–Jt&ózí÷\nÖÿ8uV%¢1L\0§Èè)I§AáêTGGh—›`ÆŒ0\'ÃÚcşz´0qF{¿<æV.ŒZÇ¼‚_‚¶ÀSÇçpéÑ\n_\0$”YâÂÒÜ˜ûÙ¥Ë;>gëfœ@¤^Ô¡@•€*¡¤üÓ!W›è‹LrJÌªFÉ).<[Õá¸‚ÑO\Z9]Ó‹z¦95 E9·±ôÖq?ëÀŸØOå‚ÔĞ4Ló«–kuÕtìS›ÎWt\'hÅÚ0\Z\rèÚØ„v\\Êş‡F Õğ÷ î‰nÄoşÍãï}ÕÁêù½z£”8ïÃ}\'Œ»úås.Ÿƒ]õ¡)£5bÃ;ğ—]¹§	Ã±ÿ2çé_Ÿ\\Sò”6®ÉP€+ói®\0Á:Nw\0(¤+0\0Ú#_J‚I*irÈ(ÜŸòÛj²1L6„“\\ed¬É‚¨‘g@&É?rCâ«iªhFÍnbµ‚S³oÎc*Î§ùÔZ2`57L:4’šË›õ9˜˜zQ–>ƒkbœÇN…¬–Áz¥–å	Š´Èg‡>°û4º)Hëƒ~\'khg‰ÓÿñÏª&ßÀ¥UÑ­E{®¿ôÎ;â÷9±‘ÏãpŞk’òÇ?ö›ñ×ÿIlÆYÆÄc¸h+©‡±€ˆlÈ2»=Iç´sş•Zù– Çjü<\ZşÊxÔ…9(ÍWouŒe€åùhì¿,æ—¯À,B¢×ph±Éaöª´±kHÕIöb‰M@@rÁiµ\nLê—4åÒQ³È§l:íşÙd­”`6ş‡³†ëú‚WßÄãœ®î¤CtÎ´U({ÀØ*¾å>7×¦,ZûHî\'|T­¾¯™åÒ¥ÖI_Ä»ÉıLÃ¸Ús<æÏ;ÁŒ¬¢]ÚäéÓf;<ÙOİ:‰×ÿıgÅÛ-ù¼Iÿó9Ü¼oo¼óşÅhæ€ÑZ}{’F1 ‘ê0‘ãC\Z¯âŠ…€,”f‰ÌçHµ]¾œÀÄqMÒdO“i\\ON©Äjøk;„ÊN­SD`ÆZ—rç)geÀ„:ëÜÈ1÷iZ¹	Ô4c`Bî)óñ“q2ªÕ×Ùcî¨h7É¥ypŠ8şüŒ	šÂ&ø1WğU*ø\"µNE3o‚Ó&\rû\nşJ¥Óˆú5v©¡Ú´M1ıìÉ²ƒBí™İÉ))¬;7âËC;îb]íÇ“7b-šÃe\0©ÜPƒ¬ÆYáBt£×mõå¸}ÿJüÂ;î#Ëë<Èùxìó7[=¿òÑß£\'GS§s;E{èBÑiN°Ï†åxF·Á¼6~È¼Ä{<²æp„ZwŞÍï:c½2¤å€>¸Ú‰†=>Íå4²—J¦®Ã¼iÓS–v¸š üR–¶KS§4áfÚ,ÿ¦yÜ¨`JpÊ`‚$ßcwàÎwXØWÔUÀQÅy¯t‰Ró«	XÑgó“l¦ihbvÕ›Å\'@›éÔW[jÊÒ‚‡.;è§3^>úãóğøj_•OQ@é°—ÏPcŒ™~:N£°’¶ÑëÅf,Ãß¾?^÷Ñ;b­OÚó0@™ó3¬ãˆşşg®«ÿ)Ò»»™£í\\íF-Rµ[V	I\\v\\ª=Ì¨¹@fß?›ZEm’SÉûò Lƒ²5bSs§|îÄ“b“ÂÏ1“\nÖ®Àœ˜-5®­±Uv­¢	,×;Ï4UœrkÃFÕ4íŞÈr+È9ICŞf©:L§v¡5Çtü`¢Ih’A§½öörÍ§Ü·b8¿ı¹M1œ[$ÍVö8Öóh9\0U$˜¤®×«FI°[ÇÔÆº³ùÙ·ffİwF¨èÁĞãù\"]ÿd49Év`I?s­I7{çşëu‡âº;LË=¿Ây/í¿;~ıÖw w—pQır˜\"0„QsOùÏšÁ¥e2áÃ›,Jıœš.sÈˆJñ‘LLv÷$ß=të‹0ÈÿFÏÁ<0¬÷ÔIp	>M3¡éÂ¼VîÉ–¶K‰Ï©\"0X^!Ú„ô	¬†ÒÛ:‘·Š9V·Ìši+ÑŒ€ã\Z[šyœ×Øªú;š]€F}Üà\Z H?¨ÉMìv„¿&qÓ\\Ó? £†àsP“ûBCªÃŞ*jg:kn!TØëÆAìäNğ[¾Î‹×Ç÷óUæmÑ‹Æ`9~ûÚ½qd¥K‚ó+Ø6ç]èúñ¡{?û»³§ÇotøÎCé³‡lH¹M™oNPB\n£±Ë÷°ÉÈºçæ \ZCÓŠ)e~LÒU0à:¦Ë†@#Hêiú¸œ…r˜¾…RWÆ\"M‰´lÒOAl¯xSÑí’%^ÇÛ…¬‹¶®UÅÙ$ú	Ü&Y¦à“\'…\0ŒŸÚÄ^1{ÃŠ¢©L,Lª‰=^í¹h`9¡R3Ë°:iëW\Zø/Å1Á“>›`Q ¡’÷	8ôìò»íÔİ÷D|45İSt‚vç`¦íÒXXŒŞ²?^ùŞ›‰÷ÉÏŸ\0…Ï¯`§Ûµw_¿ğÉ×FuÉ†Ó”¡	“§u<a:¸Ó?G‡§†{9Ø³´öhØÔ\Zj»5óí9˜ß`m‘˜>sÇ7Çüêæ‡¯çæ©«¯ Ææ4®måİ¼—Œo\\öÇH\'E\ZŸSÛ­„wç^e–­@²¶{L¾,XÍ³åêB˜E¥ËXéN]œé›še,H\0ÆÿÄAÅ!üp~k>·±q~šmM89ÆùxN“Ë^87QSÏŠ\'O»§Şl‚Zø&ş­;&%O–(5O«8ê¸õI7Î:BcÓ–-ñºO>×ß(Ÿï|	…{Î£°¼¾¿ö¥7F¥İ‹¹œÓ²a–L\nã¹v®ŸKV²!af=Òpmdƒös:¨BDFPßx‘Ï³!)³ÚŸÖ‰‘”0›“‡s	 L`	:³¦/wQö—›8÷)KÉQj´†~HãZú;¥jµ—¦—Ò¸f¨JÑçÅ³¡ê†2¬1YÀÃãP5È†ä°8ÍŞ­àqg}ØhGìí\r«8½>Ç[œr&x®i¥4gA€gg„tRÛ±¹*ŠÚ-—eÕy×)Ïşè¼×xÖÉÜöxÙï_{?o\"w\0¹şè½ñÁ{?íÚæ”ø3Uå¨_şi7™T)®Ä5—&Œç!é¦\r^µûÔF†íFj\Z»á|s¬¨öUÔè¹ŞBÔÍFC;İ[“>Ê”wœ),Ø,Í\rNJ ÖØrÈƒ½\Z#µEÖ¼L&…F™ã2R•I)^£1éjÄûÂ—Lçæ“zŸì±ã,—<•¹Ù\Z¹ş.Çö|ÙÃå\'\0@ec4G‡~Ü^Èi+c¶‰ï±4Ô&šfšc¤!¯¦«Iº|fîZõÌ8ªÃåntz½ÎúdóƒãĞp›ã¸wå‚ø[ÿùsÑ@ãó œW\0Ytã·>ş&\Zš¦p^6Tcâähw\Z9ìy*^ñ³íî*\n­%z& míÎ4=E”vöºR[PRú‰5Ú±ÑWc”O´œ†‚ØœÔœSê{OòQ%«Õ;ÔZÚìj\"\"8§ˆ¨•ZfNÇ»T°80éEAÈÔH¤1däá‡sãìRÍySÔ“X\0c}¹LùeQl»[Á!Œ=øjX5ŠÈ÷T\Z\0Á¾ŠÇšUv/AS»‚Ñ(®üÎ–ó¼HW§œôQLŸ\ZÿŒÍwø©Ÿ\ZF­èº[\rI²»8èƒLšÑ˜,Ç:¦×“6UbÏÁCñÏŞ•iÎõPä<š/¿8ŞzÓÛb~i{:æC˜Æ½v…>D.ØŒd…C•î>`ùø¥€áÆItÀPi¬L†i–Ø¦š	ù¡Ilk8ÓõpÛÇ·R6RUûRÆ fˆWzzdQïc¾„V2gáY½€Æ0İ¥ƒ·QaM%M,µ’ß!µAÑ%’Ñdu€;‚ùìQÊ<©¥\n`ÔuÍK¥<{EF6.ÚÎì4ÖW¨4\0šÓ7Çøcü	\Z¤7×Œ>Hg~8ß‰›“)X9\0$Ì³üAŸmHÚ‘aUxgk±‚öª\0¤—Ò\r©cÃQ´ı–¶Å½îúX^;÷“†çC8vèp¼üº×Gå‰—E³G£ÛX¨í†]›0’ó…Û ©’ñÓ\0e>Œ˜\\Ÿ\\K(ÌœœkC³©LÒIUJFR•	H¿A=šj)©Å½ò‰4³f¼Ji0¨Ş÷”÷_I„M%á}œ¶>Æ¡Í|v\00A˜vŒÎ}¹©á<+šUvj|¢˜P·çì0&eX¯R}2qã:ÌX¢[¥~ŒÖšOV¾¹îgàœÇ…æpÀQ\rRoDİ‘x@å(¾ã.ù.	B\"M.Gñ#‰³¾ÅÜµ2#À ¢}@Ò;êH p½¿C¬€~sS,lÙß÷o_‰Œ€0çpVçEø×Ÿ{6í‘˜Ça>©\\_¥!h†n½H3lä-DtÚİ<^G•4LU·Ú0HZÍ|Á¥ıï¸‡ ¨!í¢¶ÕîB4Ö–à·6\Z‹Ò1öõ&~‚-3ÇŒÊn˜ÔÁ5ßQeï$HÔ6mô±Ë\'0¼W“C1Í5„\\Ÿæ”Î9bíjó26Z _Ï×¹@\nåR5•*÷¥î~·Ä1‘	ñéø{/*+ğ)Ç^¯i@9q4}í€Ï1î4qÚ[1^Dƒt:Ñm`¬á¯qìëíE|÷f´ ½oÜÖ»šĞ®ç>Ä©5ÉLº<_ IÈ;^NôñL6G—çlwÆÎMíxï±gÇgoßEÆs7œ“õ3:¯üÖ¶l˜QmTo AÖœ‚­İKãh§×`V_o¨ÁHu$\\š-ğ±&×ìÅ¡YPê÷aßÉ3‚2³ëŞI	©7w¤‹»Ÿ•µÑ¡¬!ÌÑ«[f3æ`´^@PfxX?A’ŒŒDö¦\nò	i‡¾}\'Ó›×Î\0;°åó½o*D*X\0¬¯P\'£ï²ç@\"ç4µÓÈgøB´LıHès/vĞ)§ÅSœ@qd_sÈÚ©[G\\°gÌÛYbú¤Ïwä1ŞÒqX>²8î­æ¼ªj®\0‰ä<+LZÁ\\1\r÷ËOÏ!4\Z.í]ªHm#¥}ÙjÒğ…cî]FÎ.ÖŸqZõYi5cKu)>ÿo¾š¶¢Rç`87kõçÂ?|Ç+bxüÁèĞ:¤ék(i\0	\r§õÔ†œJB):m˜\'#Ê±%¯\"Õñ’tu…E*µS\\ÀrYµß‰Ú “),‘q~y¼†Óé×üò”‡“!Î,\Zf4ÁœÜÈ/ÈNpîIç<\\5‰Úb3\\P×\'k”…„¯ô)½G]{œëä’¦í´>Û¸Ö‰ âxÀ6tÌ gĞœÊT8š”Òf0¤‹ãBI\'é 88Î·2JÿÂÄP¢\0”m\0ˆjC}|“j‡_eÔQ@Àêø#±L\Zv	c‚5y@lÀ!¦—K¬JåºŠ²³\0“ßhª™!+èbßLsãm±oùhüÄï}ÚHøs/œó\0Ùuô@¼áƒ¿íí— eÚ˜4<¬©®±QÃÆvê“<Û8‚”¹J!!Í(âŒOu’íH\Z¥\'‡eÖ®Èd$Åx‚VÑa²œÌè\'ÈZÃö¥£\0s@Í›À¸•1&Kj86öp_JgM_Ê)\ZbØÌı4Q|)«NœËì8×©…C›”Ô#MBî7t= ™Ş•àÅXq‘»\\$Uê‡ªï¨ÛÉ\0»7í’-ZE·&gHë™‘Ş—½Eqœ!aî&6Z07Ï«É\Zìk8êíúR´‰Ç¹¯Ø£%HğSœVkIÀ¥™Í\r´IÕ¡Â\"xTÍšŸù\n¦«:Zm6œœˆ‘)ïşÌıñÛïı8	Ï½m{.‡ß½şİ—ÌSQ(İGİ§fPúMœ6Íw(`Jš\'#ì°!Eæ‘ìÅI¬L‘”>eÎÔ”OéõÛæ>M¬‰ñh‘|h$a_3)˜ã9îRòUal\'\'cQ?´ƒ‹ÇMjÎ;êFƒòZ0nËı:‚bx)kí`,´>T\rãü/oM“¦Z\0\r^6\0jÆr48n±Ícæ´`¸¦û|\'AGêÑµ˜3ÜH@¹¶¶›8à>üSÎçN\Z(õ!Ôæ„Hü5Å\0Ó¨0ÖÙúNaA“hj:¯+_%.^2\'…äbƒöÜÃ×ÔÌ9®#ÍˆÌu1ÛjãĞ‡zîxZü»›kıó>Hıß¿8FÛ:QïAøŒg?>\rXÏq&\Zñ,Á³g)E5\r ÔÓn§Ášöæø8©…np‘T&`^\rdªÓá‰¦Üš£òËóÑ~ğÉ±íèÑÇÏP^›t\r´D~GDÓÂ7\0e68Q	ª³îÜ(M?x{@Q/?Z3iÀü0ªï§´í6¥<Ç,|±Š˜™¼–KõÔH#ı\r‹E\rä²A¦å¸Ïãé˜>ÇRÔ‚€XĞûNT®Ûç=ªÄ4 2¿&óÍ„ˆ“,¥¡]¶N œBB9Ù‹¨|w\0½ ·>H¯¨Ñxy.ˆ5å8Ö§ÜÙ:\\\n°\\áòÕ¸J+\'XêwÈ~kÍ­´a3şÖó¶Å+¿ç¥’çH8§ò¶ë?çõ?‹OúòX³ÿŸÿfO\0i4å‡õÂT97Ê¦¶×*}dGàà7À˜¾I˜RfJÑ—qÆ=RvC\ZégÈr®Ô~ÒŞpItæ;ÑlSÌW‡‘[HRs\r\'³h!€øÙLŞ\n2¿ÓÈÜÊëÂT~_İ…¡T³U‹&v}ÛÎ:õ9îáz;»K©¿¥5@šË¬sˆÁ¾½W*~é}tı‹	v›éœ¯+İÊùhybjÊ-û0u™JÂıĞ´fE”d§†ŒYÄÃ: è+µ¾½(&ıA~tÇğÔˆôŸhM^[H¿ˆûfyi—÷M FÌeëK[µj‹qd¸››ËqÛ/~\rU™/u;Â9µ«±ı-Ö/éÄ¦n\'N4‘JƒzÌõ ¿­ë0²Î¯3`µ÷ePy Æu5ˆ\rŞ@Ò—±\Z˜tÙc£T$]®œÇÊà2¼Ò´Ò£a×ÆK.ûºøÃïúÕè®/Gg£¨Ù¤V”%KòŸüåşÏ„‡G˜@ğõcØÅïàìÌÕÅ¿yÿ=ã¸ißá¸ëşqßşã±ÌÍ3èÁœs­\0Dº’ŞEì‰kÀômßU	¤ó\0AÔ÷RËd¢¹x|ª\00jê‚&u.äÏ­GS\0œ³K¦LVì-£ @Q/AÀ4ù¤›@Ká79…}èà¬&ÏVé\rH\'@üÏ\0-@yÇyì…ÓÔ‚â…r\0#?;—@Ñ<C3:ÛXP¶â¦íß|â ~ç\'^’õ9Â9wÜñ©ø[oùñ¨l¾Y‰äE‚Õ¾´£)„ä§ÅR*)æÑÌªÕibÚ áªHáºßéàrÚÂÉš\r¥wÉî]{YÆë²Ì¶Ê…ş¡ø…«¾7şİ·ı¿ä¡‘e\"ø?\nÜ{Jawnò¯dn9È˜ñ“¸÷}ñ‰[ïÏŞ½;ö­Tâ RõÁÑ\\¬Œth#¶m_À/áZ0j±‚Ocïš=e¾¢¤ TÔpìûéhó\\æI†ç¹5k¸ŸO#,R²³ŸË ÊCh€8-3(ÀV|‡|À—¢°E]Ee0ü–|ô×É«Dİ~w%G÷É¯)XÆK$eR¶ŸÒv™¯)W°—“VÅüİ¹u.Şö£WÆ·m¶:z8gòuğÓñ‰}_ŒVk.—çwÌ£–‹]Ñ>\0ÙœR\r<Ğ|Ú¶ìS}“Î	O0\r¡ÉÛ0!×g\0ÑæÎràe{šZø9Õ|g{µ\Z¿÷??|ÕÙ•d5ô©”ïLÈsÙ?E}…î\r—ÿ·wÇŞ“ƒ8>¿-jE˜¾­Í¾Øâ™xà1ÒÚ¸¬‹½h©·`:!!3*T3úYºjTò0„¸H^•¡¾Ñ¬s°Q\r¬ÀÄÖ+YFí«	@ˆ@™¹ô ¡|?D?ÄúØ‰Ğ\"“±ö÷)lŠ\ntôsU£™6l-Æáµf|×—ÍÅïü__5­Ñ£ÎI€Üz÷ñÜ×_.Ø-l„N7b·¡‡H±b*‘0[§¡;ÉÑiWü†bBdÿ¼’5w4„íK¶Ni>Ä‰µgkÒÕ~éF«Ww|ÿ¯Æ·>ı¥Bç@põ–“«]´Î$®;<‰÷}æ¾¸ëÀƒqÛƒİ8>Ä$ë´bai‰‡…Nš10³ã!:õv¨\r4wôàdÈ&³B®;\r_ÍP^Oæœ2ì°°”rİ†’P-\0QËHÈ±=‹:ê÷²££ªVÁÔruÇt4¹š\0©aùÙn”I{Ø&ÕiØ9ÜÀõ6ç¢[iÅæÁÉxùß~r|çW=Ë»<ªG?÷Âßÿü«cĞ¢Ñ‘>j‹v	CCá~`!Ù°Y«ğUÚl\\‰m+Ê»‚‚ÔöG‰Un“^`(@„ì\0›€£ı2½etVF±£rî8Š†²mi.vl¿qÅBü‡ï~Fü÷{Q¼ùï^¿ö\r‹ñ;Ñ‘ƒqòØZœXDÜ„˜¤ø0N}©ŒûiîÔ°urB&Ï›\ZZù.¿Ï.­íôĞ×!©5ß$\n´Ö§È8q¡~‘¦ :Ú‹ºğ‘\\&¨ßt¯fpü¼Iy–‰YÍÕú	êã@¨½,uÁ¬ B°i*ÖÃx°_‰;çB8ç4Èİúáøş«!†¾Š	áˆ=·WIdËÚ8êzˆ–C:ª9< €‰†Ò±uêG†p†«ÁGõiset)c€4£¥ª\0n¤:é­Ä3W/Oÿß¯¥çşú²$vŸ`\rŸ£ËşÎ»ïÿô¡{ãûçãpg.æ+±¥Yvµ|æZàw ’üé4Ãøö(å‹V2®}¼j\0V(…Aä\'¢¥±ôXvvˆ#m.b4c¦É¥¶ÏïŠ`b¹:Š3‘ìCœxgøR^Ã6á~4Å\ZDÀL;Î#Á´–\0ë(^ÿ÷ßö¬‹ò9­ÀŸ[áõÿc¤K&o¦[FyiD{F1ÎfµAó\nÒ»%Â9P\"–	zâGÓ‚xó{Ùv(m™8Êé6°ùˆÈ¾{U\n¶ôE;.ŠÅsÄIü_…’{ójÇR;.ÃÁıúç>-şÛ?úÆxå?7~îëwÆ‹·õãÄƒûâÀIÀT]ÂülâtaÚ’_d×˜=U~şÖ‡ñÑÀhŒ–½RĞ¥¡¯½5±%ü¡ÁÉ+S#Ù“æT»«n“¾\0rLˆc¿	9Dë;AÒ\"S`°®f1åÓR`’k€p½Şv£\Z½Õ~¼ã3wE¯ç¼°G/œS\0Yí®Ç=ØŸQmæ7G­³W…†£-RzÉÃJ;+®òw³±<ĞÌrªC¾fÉîL‚yu˜gÆ´¿i0Cİ²ˆ’jì@œò¼Ë¯È^Ÿó14›Í¸hËB¼ä9[â§¿á	ñê—¾ >ü³ßÏÛqà®âÈîƒùšÀdzHG·]E¾Í±®}u\0C×0Ñ\0F›óºşipL_-õ“²Ğá¹êšVvQ;OËngÀá”Gåı$Ä°üÁäZ«WcpÔzj!„YWíG¿Ö°ÁşJìlWâC7ŠÜäò¥^8§¸às»o‹]ã´2¶¬²Ê†PåUûZU‚bª\npfk³rr^yv**Íà2ÀÑ1o^§ĞœW£ØëóŒÍçÿ—’æÂ[æ\ZqÉæ¹¸rçb¼î¿<>ğOÿôk—b{ôâà‘ãéø×yŞšóÁ`Ğ*šÛ©„Ôz˜løcÉÀ-§½Jš´\Z^Ò:JtÉˆŠVH©mÆú\"N÷}’–ïò×£Gy]ò¬“¦hôoz\n4ée!\0+öz­q×UÒ.Ä[>ßKŸêÑ\n3~zôªáW?ú¦X_=B#9ŞZOPÉŸ>\r¤ôâ‡èdõl”SÁkÄé¼ç“©Uü+IÉg—`0¹¶´å‘Pµ\0±ëb©µ‰Ä ).ÇüúÚ§_ÿì[où‡_ÿèÊfØw2öéqµ½1Ğ5|š|w äBqúhÛµúb–T4‰¤Õ7‘ÖÄBL•oK¡!R9—:Í¯lùrÛ°Ù°èí\Z{¯¸—¯ğê¤»r³`µüæã£»ÖâÁ“ŞzZÒîœWß~]\\{ğ6Èq¥M+wÛìì,xP«ØS´‹ş†-$²Ç…½NûÔ3ÛªJ6A€ù‚çÎÎ-ùÍK:€²yáüğ?şwƒ&Ğ‹xÚÎ¥øéo{n|øŸ]ßsY/¼ÿŞ8||f‡.h2ˆN¬¡]¤[ÑM5ˆt‚v9ÖQƒˆ‰\\À„ØœíB›—Ú_Áã†ïSao>W±wpv\rmÑ¥N=Î]|;AQiÆN¶qrrĞ·~şéœıpÎ\0äšû®‹õş‘´_›6T@ªØ5™lnÛà<Êè¹ä\rgƒqœ¯œ\n&Óñ£	`Wfy? 8xTñ”GÓ†¶™m2§Ã;ğRb3`çOˆıÅ¡;6/Ä/ßÿşï|y¼ée_û)‹qtïŞè P\\{ØynjØ<’]ÁP,µ±4v/¤´³+9\'$S4\nGj}ÚÒïÃA’\Z…s?÷àKc«¾„f71y²}HTĞ,˜u˜~ÛƒxÃ\'öÇÍ»gÍÏv87\02œÄƒİÃØªYÆî\" šÒF- äõ\\»\nÂ;QÑÆÉÉnÉü%d£e£¸8©v\n[–¦@\rP¾}ş‚Äò,{€lyŒj?—_°/yö%ño_òôø×ßü´Ø½wì=e`Üšoú1:FS£mómNÈ•Ú\"…” Ù>h©¦£ràQM¢#³‘ËÂÛn¾F _2ÀYÛ„öÕÜ\ZÇ1«pz­{×«ñ–Oßiág=œ\0ùì¾[ã¦Ã¨Q(,K»à\"%	\\†iJ×nŠÿí­²qR¥…ôÉdş°Ù8ªy5C–Xöe:|),ä¾.hœbXR	¶½óØòAşW¡İ¨Å·ÏÇË^ti¼û\'_?øœˆ]»ûqtˆo/q—Ó±¦—Ä0sšSœ¨‡ÇŒÒIíBêÜd9ç\'5‰¦`Áï	?púÕQ¬ÔÛlEs¨ı}ÿ?gPĞÖv5>qÿ£³ØœÏò¨‡÷Ür]ìÛ}GJG[]ÎGÎe/SÎ%’XŞ†(ÀÑS™^Ïó‡¢§IÊ–ÁrJ°dóäìŞŒá+kkk1ÚU\Zïq¶-4â¯=}[üÜ·<5^ûıO§LÆÊ‰µ Ç -˜Öñé–²ˆ JÂ©I‰˜Â9;AšÚ¢D•’\Zzsìûùv;™Ô2ìÕZ¨ıjŸf((QM2¿xë~|êCyŸ³u€¬¬®ÆçÜ‰juÂ\Z„“‰%&”Öz*Z†–ÖIps¹Ï‚H`›\"£§il¼œqÿNA…›L“³9gH«ûñ¸m1şös·Ç«^ú±º|4¯ùVŠ’‹Ğ0±´dóµß|…½¶`b¤™\'K$‘vù\0‡ZÄ`rcjùâ¦@óIöƒ±Ÿ´D\"ëñ¶k¯÷ÊY\r:@®½ëH†ÏGlÖ1.s~Ê*íÒFÎÆ0¥Né$	UÛ˜Zy¥ ‰<ö°”s{AÌ“;ã2¥l³Åi«Æ}§$tòw&šZ¡ƒ4ÿÊ\'ïŒ·¾ìªø™¯Ùö<«ÎAL²\"ı\'$b\\ ıTÈè˜—ï™ä‹l¶¨4·Íl#O	1š´ø™ùmÆª/ù\"r%Ö1³V\ZÍèbzÙùâ§âœê¿©9wŞÙÃÔ:»¯æ>ê\0¹ñğıqtå¤i%Ãæ4µæ;l)ƒ$ºUE-”cBR	y	 dŠ<)\0Ë4œš.Áe\\êfïØTÔå2a\Z*ñí_vQüÈ×<!^õİ—Åæ•Ñ[öxÇ)Öi4„­AKÇA\ZlNY‘®¶[š\\¤³%K.îLD\n»~…:÷Kg}Ô] ¥oâ\\9§¨4Ğ:Ç{µøİ%K}†G-hËŞ³Š]ÙÁiS9ñ\rÕ Ïº¡¸M©pOÂ&³óã€!¿™6¯ó+&r\nIf6]Ã,UÉì¾4WÒ°¤Ï÷áÏ„›æâû¾æŠxõß»2®Z<+G÷Ãß£Ôõ‘3«]¤Ò%ù\nÒGÙ1b{IcC¦±ë×sRÚıÛ\04NíÑy×9‡-¹İ£À@ÊÑwøbëb3şôú{b÷‘³×åû¨ä®½÷ÇûoştÄâ&^LD‚d>…ˆ˜qÓKnSZ?¦Ÿ¿6P1¤ŠájÙ™¬¤Ë–,àÉ\0feÎÒn„?:ív|Ós.‰_ü®çÆó´)<è¢r“œÈXÆ<0•Hç*.ÉTĞWŞOE‘´¶}!²fmšÀ€afre/bn€¤^Ş8tµ#ÁÒ§|»„íNYôãóœ=gıQÈÇîùR<°ïöˆV\'¿tË²Ÿ‚ ¸xT<Ä»>Œ‘5£ô*<”èšXş	LğPR5	Mflî,—ˆrÌıf’n#ü…áO¹4şí·_/}ÁÎØÒ÷Ò]Šô$¦ª3„¾Cš]¤ÍIŒî¥5¶l—¤¿y±4HNÍÁ÷N8ÅÄâ¼f\'YŸ4¾òÛYØôÙ“d<;Á*>*áÀ‰£ñ{7ï«€ÃŠÈ›’Ğ7s¬ƒÈd])$s›0y<SÛ…èrG&â§!˜nzhYÓ_ËÅWÿ3o#üÏÃŸ°%şÅ7]ÿø«ãdÇ÷@šÑêc¬Ö»4Q\'§¨(íÓG™¶DRÕfÌ†.Ç›{!¤Ùå¹¶«‘œ§…&¡í»¹$l\rYÚîY‰ÕggeøõptíD|á›#ærªuµG]ç¢Øõ—J$ı\r™xÏ9É}!åRWòŠ§Ò‹å~Jó<V\n™™8¶ŒcsP1óÛœio„ÿUxÊ¶¹ø‰¯¹4ê‡vEÃ7ñıª®l’½°r‚ŠBÎ€Ñ‹=£1{†¥†-Í®ÌI»arÑ˜.æ\'HV‰oØËµÒOÜ}v¦Á[÷³&ÃQ¼õSïŠ~¬£†ë‘«îŸL\n\0ˆö¬^ıÁK+õ…=ObóìS#$2Å)PÌB–<ıÉkfõØÆ²m4˜AcäÛØá/¾ğ©ãø5ïŒå;oÍ­Å¨÷ ãQ\0SÍŞ+M.»zíò•ÑŒ“ö¹>°máô\Z\"}Å™y«Ÿú%©‡\0‰³|œ«3œ\Z´¹İŠW^{v&0Zï³V{İxûÍÏŞ+_³´\Zöy§/\0‘²¯İÒˆ½’\'UI	F•PÄ‰”O$·Û\nS¸MËrg:Kšïçûê–\\ÒºÔC¥o„G×|èú]ŞÇ>=wÇÜ\\-¢iå€\"†ç9yÑxòä‚&ó<µ†Y¦B^0Ñ ´sÀ\\[kÂ^­u’ÔæZñ¹]«ğÑ™OäQÈÁî‰¸·{ÑâÔv@€ĞpyËâœrK§PÒ~)…Í)_åG“Izæ!’\'È8.7	üŸf –9;OÉåfP‚¡EÖÆıpµÅğÈáŸ¹!>óù{bnëö˜«tãŞ^Ã»omõ‹‘òøIlÛ°$™mB{…T’=d¥™hÇ™pãºœé„Uâü¬‚ßbqŒ¤ÇyW«¡Ş/Ü}€Dg6<*\0éú±ºz˜çwpâ@¡¬H2®lÍf—3G‡\">5pI@€ÄÕK®ãDşÙy^åXÍ|Ù„LîKĞÏ™•X\ZgGzËq¸{n.¤|®g:¼ñ-}ûOâ˜W£ºi>\'ÅŞk?‹Ë\'cSG¿ÒUë‡	|=ÆQ‹»´CJCO¥;{É†Ë ¦ñ2F^jÀå·>yı®â8’©ÏdH¾<Ûáƒw}‡†±%\0„HSG5‚ØD³)ì9ËÖ{µRªx>%,!+O”’©h¼²½E¨™×k%x8K[¶²Ó$p¼>ŒıkÇJüFøÃ½ˆO}aOÔšs¹V±_ÜŸÛ•õµ8ô±k¢qäX,4lÓ­ZÌ-\'2Ö«.çk¾nL¡R-DP”òó\0­‘m\rÉOÅ))N=AhVÑòõF|hwËâ!~8áì„gÃÇß±´˜ç†$ÏéL^£ò‘g„áDó)ÿfÌTlSÍáa&×‰Wğp®û2ÍUoZšÎ^®<°ê ”#c—F=²¼G\n½öæ8|t-šZjêš<Ù/àS»÷Ø÷Ék£pj…$¶o ú\nµíÜ¢üK¶×ÃÀQ\"¦[„vVnExúñÑ¾¾	Iä›ôbß±3;ª~Örß¡}qëî;qĞç¦ì\n(R+ğÄFs+ÿ8-½XÒª\0Èã‡Ïgi¥µåY¢?)y<àB¦™‚,Ë\0%¯[ATú7Ú¼½n¬Û\0Èÿ,ìİ{8şôı7Æh8‰v[fÕ$P·\n`æcøÀıqüÆÛ£å\'Sší>‰”‰íuÈípK›¥4³!ÜÏÚLs×`›\0ŒìîHã2º’Ÿ¢#w8Š÷İ´·¤=Cá¬ä>û§±^÷scJ‚L!ëêKÈ¨ÉÒÒMú&»bM:ıË£i\\æŸm¦©\0ÄƒY¾‡‡r3qfzI¸Ö]+É6ÂÿŞqÍçã3_Üƒöh—¶QÂ»¾&P6­6F±Ğ¬ÆÊ§?½›oIsªM›h&æÚ¤\0jÖFdãüÙÊmœ‰Ø\r9·Ó€Çm×¸÷57-×ÏP8ë\0yûsM\Z˜>Y“‡f¯\ZNg/Ñ‰Ó´,Ç’®6gú\n\0ÓúÇ5‹ys³¸<·àÊ:¾Ş«DºgÆùg÷£3#7½åğ£»Ó¹\Zn¿{O¼ùjXV§YÊU›Ğ¬Q6ÚÑ1ß÷hWcùæ/FíŞûbÁãwBˆ{\rñŸ³JÔ*´gáBh?³$f!d›”ö/éê\0¤|/ePiÇİ\'ÆáGÎT8»\0áYw¯á!-¤8Õı§ÿ\0òÛ\\Ë.Ø$šòšÇ¤dKÇŞ<yMÌñ,ÙÜ¦Äd(qn¤³ûqvu–ÏÅlŒ¼\'ã7ÂÃÃ8®yÿgãÖ{÷Ç¦-óœM²²’ïqàŠK_¿¯ıjšBó¨÷ÇğK7Æäè	L-M«	šDSkHZÁ‚Õ`3i/%6J›Í‚mLdé¡æuN5³|Od@Û¯D+v9sÓNÎ.@ ÂÊ`%ïšß²Ë§iÎu:ô õ´)/o·ü“lüÉÓIËò’QM3€45Î$å8+Aæl‹	§YK 8‚ûN•Õ\r3ëá¡?ÅÍ·>MıŞJ1“4«\\\\\'ÚåD\'hWµôÃE.ëÓj¶bxàÁX¿é–h:\r\0Ù¶~‰ªVñ› ÒœåÛŒ²K£N[.,´[¾¼Ã!ÚÃ—¨Ô*~=÷Îı«%É…»ÎRøÂ¾»¢¿z:(©5£`i\"8äøäÚÆ•Õ9¹Ğ-‰)éLO¼ùòRÛ8“Q‘%u¹W†l„é½Ü!Æl¨‘…`ì9v0ö>ûï?ŸËácŸ¼=nºåPlŞ²D{Øe«öpK“	€èƒÈ¿°Ú¾*Û\08òÃ{n‹Æ½÷D:ûÈ&ÍÒ˜ø™äw¾™h›Ø^§šÆ¶š¶Wi$veÓZp%z=î¾ãØ™fg ÿñƒoæ0°½EJqÁÃ¦‰”Ç&N d|9–y%JH[”ÇÀÇkódÚéibzbúrd21‘`0‡EšL©è;	+Ãaï¢é6B†£GOÆøµ?Š=ûÇÜ\\²É6Å´ÕŸÈµ ¯s«Ñ–®ªïI-*GÁ×ãäÍ·ÆÁÓ±Û£*\0á2mçâä¶A†YC¤VšÆeÚæ³TÜ»ê¢Ø‚mËƒaÜpPkÖº§7œU€¼ë‹Íñ	‘Îõ)±/³{$!òB_’ñ9ó£‰Ÿ$EnD¹ö…x²ŒÌÃF4×°’I\\\na-–Âü›ÏãsqH&;-ˆß»8¼öè,3s.†ë>wK|ò3ÄE_€ÖwÑê6 qùıèGcNÚµ-´‡¯Éöìo‚¤æ\\?q$ßz3Îz7³LğWl\ZW_¦4´\r6İg;Ëî‰Kóa˜æ·7\"÷õ³»ŸŒaÏ%TO8k\0Ù}ä@¬ŒI­!w©˜œ\"wŸÒB_@¢$—K06éEH|H+ı‘Ùuóe\Z.dY&ç8Áçå)@ü±€Ì3&\rd#hÊ™¯_ëÅí‡î›¦y|‡îú0~ï¿.¶\\qy™£†I¤¢–(K‹¢üböÛâ[ä›~ê Íz3ÊE¬kÑÖı¸ãhîßº]úhèİ\Z¢	ÙsÌäFÊQ\"²Ù„‚H¿%[‘Û•OasOAHÄ˜DGÖ×ãĞòy÷ßøi®›Àğ}¨	=¹½Ì®Ô$Spd7V\"Àdœ\'³K(Á=§lªh¯\Zï±l®¿‘™ÓlJÍt*”²,&Uë”_RyÎQµÖšàq>ö‰[ã]ï¿?:Û[(Yˆ¦Y\nÍœçTôÉ¸M{ÙåÛ„™\nñõLoû¶b\\ç:\ZCÓj6=~Ã­±°r2š\r¢ëe:DfaÄ4+ØOÛÄÓ‡ÆKh÷ÖAöF©Kµ5ˆcİQ|ş`š§=œ5€|ä/¦öHgL+3ò_˜Ô}şä.¯åÛ,]	…X…á…]~©ADDf1@+¥8]!¥Ox¥hóúç=JãpœÚ„c€{Ï±}1è>ºoy´ÃêÚz¼â7ş8¶íhL…\Z$Jçí!Z§£Îi¶+>‡SÔ½–+[&e…Z¥õV=>ûï¹#ZÃJĞ\r&9õDÅøP{XV\nÃ	æn6QŞR–…{N„5xéÈê8>}Ï™™`zV\0Òöã{nˆhÏÃÇãğåÉ4­¼È&–ËM–\'/ÌŠ*j‰å™ûÔ.Æ{LlÉÔ©qÔI½$òÌçH ¨%,&Ë†ÌøgÃLJŞ°ë®Øw`ß4öñ®ûÌqí§ˆ‹/YŠÚÈñ™-ò“ÎĞ2q‘\\„îÖázYó\nCóËo:½ÄÑo¿\Z6ß¨Ç¡oÚ¾ƒ(2»>æªM,—*ÍEyìO½DÈÁb?/:û +i]S«‹©wèäy½ÇÆï‰h¡r!H2!”ÍAŸT¦Mîò¹‡Ïºz\r{” 1ÎÄeÀÏ\"Ô\r‚€ëş[†\rhŞªèiŞ‡Å–c{Tş¢^‹ÃåøøŞ[2şñ\\Wş—÷Çögà{«øõ¢ô9dzA\"2 §@°çIs¶Ğ­Çv|\0”*Şşˆšy˜Í½Qœ¸íöX¢y]Ï:¿n³ÛıëÔ5‰Å¤ÕÜ*§$4fÀ…á”]hoî5\0€Ç×Ïck×¡½ë«)UPJŸÎq>¨Ôàá5“ôKfLì¾ˆ§%©×œ$®<H\r”ä*‘›xVNI[ËAÙJÚ9=ô\0I¸6ZìFë=.Ã8~÷uŸ‰ë>qW\\pQ\'†Ø9É€ ªe5K…€t6>ßÁa¯Îğª¶u1ÉôM\0IÃnájljV£wÿî¨Ü}0–šM´\0¦’ÓEÒÆ\ZaÎ¡WÚ¯´J¶O¥ÍÅu…g“H´ÏÉş$Öz§ÊÉCÜwÃíÎmÚ´)2¥—`0@y‰ª;/)3½fõò#“4Š1³­$)¦Y‡pœ¾é,\'ik8•¡\\Ë“éN\rv*nvK3n<Š[÷İËİ³³zÆ¹>zİÍñ«ÿõ=qÅsŸãî8_ŠRnIÔlÍ è½X	Š™ö\0j®g:ÿŸ¦Ñ©î€Q½µô¾ïÔ\\Û¯“ÎÑõ¼ Í5Ë8/È˜nÆQfv¾è_ª8êõ8¼Úûşå€Î\n@>tÇ—\"æŞîó9Âãó ùı\rÍCçqG¦/œf“W¦Z¦€Kâ±óº›\'ş[î4½a€²(dŠ¼TÒ–,DøoZ¤Üƒİ“q¯Úïq&ñÃ?ùû±ùòÍ1¨1{šQ£õk…†jç¬ùáÿòfGN9‘ÎS­áŸZ&\"—23ZeB96y«M¹÷İë÷Ü[æüâ0ÚäiĞ¶ŞË²œ&Ÿ‰ 6ç ´îÑL\'û£8p–:+\0¹}?Î®ö$ŸÈgöÁ‹”(Î7‘S°$ŒKÂÂúÅÍòÚô:[–ªT!oFK4óLï“_eş²H\ZPW$av«rXÊC*­#Õ.Ÿù×:Ï¥ğù/Ş\'–—b~“ãHQÃÑÆ<JºÉäP¶t0Õ}ñ ¦LÍ¿@1].—™J|!4ñÅ\r\Zoïtâ$\0q,ÄÅ;š\0B7_K •qf7oi?ª°lj\Z|ê¢D¿dµšXËƒnœ¬vy¢B”ºE“‡Vò(ÁóÑ§ÏŸÔÈİtŸ@à8“Ë%ÉŒx^–¡=Ì2Œ(qåòC³\"\r>¸[BeZì,Œmu\ZøxïdÜqh9á¶;wÇ?ş™7ÄËwF\rQ›àXëp#½ô5tÎİ$di;6A“¦•xqne\ZâÕ$úD©y\\¢T$ÕSö/Ô¢»ÿP½áö¸¨æH\"mF,°Sm’Å=üh\nl½¼àÄG\\÷Şz9yú§ÍîvÆÂõïİÇñA\Zd^»•ÒG^V‹&1üñåõS[Ï4*ßUŸ‚!¯QÀÌT+kùª=HMC¨9Œ›™X¹%‚JHé3“Fæ±™9HÍ&ˆHĞõ•x×]Ÿ‹UˆÿXNÙø…_û£8ÔëD³í5ç ¹]L~ÇÃ¹Sj™²€C	ŸfUÃ.]é‡É…PÉÁBçJ°q\r¡DÂé\\#ˆAwÒàTû©è^«|½å/ŞÍ“ËQm¡çËU~©XŞpf…\rÄ/Á_6j]l3›Š¨NúêÚéM/rÃ=»ï‰Xs:2ŞÒh$Ãûğî @¦\'£º™:“c˜9Á‘¥h@A•\0ÊÌœ˜—-WFtOÚ$T–ùËÇ=-\r`\n¢LoeW\rv˜±Ü9ıê°ì-ËŞ’f-nİsgÜºën3=¦Ão¾\'îß_Å…m9áw?’F\n™ß‰‡0»4vÅgíŠ’ñX%õM¼i€IŸ-‹¢ÌôC¡1\\4ëÑ?q _=2´™i£fÕ9ZCò8j–F`oY6?×eÛ»Á}]Ë×O&œî`•Ïh8|òh2ZuèW‚TÀİå¾RÈØ0±Ïœç§~‰ĞS%kî@PÓHÔìšå<Wcä_ÆW“(Ñ\n`¼^¶Œbó1•_±ÜH’DÏıÎ.gJÈ!áû¥Ÿm©{Oî‰Ïİ{ö¿lt6Ã®}‡ã§~ñwâÄÊ(Zõ”F5†Hw_n•jüå7Ì!²N·ôQS¤)%es4]¡Î55É­:ñí?Ø–°-MC#®=è\0A,Ö»qüÆb~ĞtVÓ¡Å&¾‰Z«®VP‘ÂË¦±‰\'cÚKào™ˆƒİlÜÓ\Z¸Õ™ƒÁ ®¾å“ÜÅ^nå[.å‰RÉÀF´g³6éõ#R‹H‘¤\n×`ì4›,O\"¥‰å÷v	›¾ÄYâŒdJ´ìu!p•$Ş«”›Ù¢„öÏïã‡ı¨iÌÕåøè_Œ¾\0†å•õøÅß|{:ÖNí‘’Y&ã˜×”Í’z”äŸ™V\n¶(T¸\nÙì¼ê¹æ”çIs‘ş_Š£¤w¶	“½bÃqªs1™oFÿÖ»£17‰6å%¸œ1l‹pN	Ö„v2³‡4\ZíYuŸm_îh¢ÙíÎHØ¿Ü¼ëÎÈ©œÃõ“´\'sQ°‡ophüÈÑn$yrÓ3Ú8‰•4)it‹R)\0È)+l?­°)Pf¡€ƒ®û>‚×m|áQ·ìLl~µ	·nŠ[º‡bÏÑÇæäÅ÷ì†øÄ—E§}ÏÃ±9ı¼|½Ö¥?%\'Çn¶‚K\'HOûÙ„öbùg;¤JBšĞ6ÛĞ8Ëğ\\Ë\0-QK@N„ÛÉÛîŠöh„_‚_AšO±JSO¹µ˜V¥\\-µ“õ/™à´†Ó_âÃÂÑîrœv“ı4W]é!djŸZ¦N•É©J…ŒÖJ\Zã\ZØx‰•›ñÄ’Îëªâ¡Ï6à8D¢Ñ`fw#@Jò²Iü¤|’E{*³<b²¿ÕˆıÕ8±vö¾IqvÂ$<t2®ùÈ\rĞ°Ãcvx^èæôYPiá‹à\\»j{ÒGÓ³˜²®Òü\rMmKSğäØˆD—…³…fLÍı0„6Fôı8§¦X£Ãş0úî‰“î._Œö¥*ÀS“2¸7=mS*”ÁÅäJ§Œ5<ıaz›3Uz ;UÓG“5- ­* _ö\Z%Ê±m“Á¤R–ôÙ•+í\r	ÒN%RŠ¹i7°q£¡&Ë|ÓMò•-ÿ¬‡\rMV{B,Úxÿg½`Y—V;öÙpİ»KÃc$ôû½ø…ÿøøè§z˜VÛ1•Ù¾§A›Mí–vTØnhÓàÓá0Ê÷üœ3×kìg&—&®³k]GWŠjÄ–^FNÙü \ZÀk~Ga5Ñ¤[ÇÖv;ªƒµXùôrÖo¥™Å­š”ë;ìúŸ)4™¥|÷Ö¦Fœ[Z!§9x§3v­Näm º‡eµ<­Ñ©öÈ¸LT‚Œ+!|Vi ³.¥ z~ÇP†7¹\0óXF6qæ¡L—à!	÷\ZÒ`å›ÙÍ¯zWá›mÖ)»’›èr\ZC¢dï}àK±ïÄccĞp€éø©ÏïŠÏÜ°óK0fÎ#Tˆ¡ík04äöÅ\'@P‚ø‚““uÀm÷¹Xí•¦­P&2—\\U$zv´¨ÑÙ´°ÇIWî5ªDºJuA5\rP&ÃhvW£¾¶l‡g¶§å›ö ©™(«´\r#OP®÷·å¨ƒ÷;İ!åL…ÛöO¿áãòLÙ!!}x\ZM«S!{¥Œdƒ©Gj…TÑ^#“éTÆq,xLHC•Qˆg#x˜#y,Z5œy•Fî§÷÷–nE@)±ŠSj’ì-Û¼-n¿ıÓñ?‘éÏ÷pómã~ıZØ³sOÉ3`ZåA‡—4’Ê%_ºşU\"©G€Hs,ı5‰Õ,¾óaz‹3gjˆ©É•S‡l/ÚT+N­Ğ‡¾5›†pp¶QkEu¹½{ˆ‰|)×ëv9§vÈæ²<Ü	XÁÇ¡MzŞù \'r/jî4¢Irš’ÆhË@ û)ƒ›Pâå$E8İ§÷²ÌJã©¼ÂÇ¤·4‹F¤õeş-=¢ÑíÎUk•âŠùØøç PÖUûd\n#Ï¡\\ãiTsÔ¸Sëwİ’=sçsñšß»6îÙµó›ë0z\ZB?b;?hTqó}IÔ¡…ãc»q¥7›3rŸ%éÇ˜eÙ¥	¦¶€Š2Uú˜€a6¢I5¡ı5¹rqhŞ:`H2¤¦¯èÖ¹ï ×c{vGcÒ¨®E3Ğu5—š]¸”´ì5{mN5XÊé\r>Ë]Ô¦O“ßóaxŒ”ôò>‡3)^º< ÄÊx¥KŠ2ã•F\'x¤ÈÃò–ßU‡©\'rÖ¬)Z…<šæ³ñfOn1o‘Ó{Ù¨ÙƒÊËG«¶sg¼æŸ½ïfs—a0Å\'?sw|âÖ±åÒ-(eéƒÃ#úF`RTs6Íç_AC5…ä‚6&Xr­\\¥7i“ÆlšP°{işæÆ¥PKÆ&\r[S;»æ¡qs€ßcÛä,›TŸ†4Œñƒû£	`e|î’[špY¾›7`xøÍ2‹Ø=½aÆ&§=(©¯ß};ÄFÃ‡J\0@0v.ù\"&â}ºÙCËÀ\\óŠáÔ¯¯•™ÎàBçE7M/óNÍGÚ¬™ÆxvÜ›;CS3³y“ié·ûøJ¾QƒÆoT¢UKæË%6WÆ-‡wMs_A\Z¼ÿC7Å7ÿğ›¢¾TÆÜ:t‚.æViA;¹´Î†ÍØ\rÇ$ÁĞes ĞEáéI{ºò«\\¤1‰Œ$=í®®÷İu7ù ßùàßN”*íµØ7¯KAs•E›±ÑhÇhy5NÜ··¬éË½óE*ş4Íuš€ÙÄ9F\"À³cE>:ÍáŒäÁCûcÅEâxH—€‰!6B-\'Ã¡KdfĞÿÙ–|ë3\"O6 /%ËØj)(qLïu·lœ\"i<¬Á…X˜ué¬“/§F\0A“;åg· iÄ—ígƒ!èRaù~´ïJç_ŞƒHëÒ™‹»wßŸjı|ûùß‹g?çY¹¼BC÷z”—Ô`ØìÒYæ™¡÷¤\n\'s}4<<®ƒ…v*BŒ4“l¨ì<!2—k°¬	¦LªLOßC©Î.ùÉŞH\rzJç~µ¾¦ÛrÔ¿S&ß=÷¢º¾‚ïÑ‹AcC\ZÄïŠøõãô3¼½œK™DöÑBmXì¢EŸáôosFÂm÷ÄÕ¥Fé.Ì§R	co&ñSèÌV˜6ım ™VÉWj½.c\'ª”!æ™¦™ 8l$/(¢ˆƒàjï¡Œo£O%Œ@°U}ÙÈB>.§k±pIkH½íAÎ S\\rqüú[ÿS|æ§‘çGèõ‡ñü¿ùïbé‚o‰vNr8¡Ï#A3Ÿ»1âN\rQêã+ØE/=G¥ß€æ°M`RG¹µ‹\0…ÕLÏP4µZ˜\r_ÇÙ#ö#´ÇĞs4È0ZW¢ßô#®-Ú¥\r£»jJÄZm=\Zø=­Ã+Q?|×om§Ãc®;–sÄlBïßTGù8ôxóKÎS9ÍaÖü§=ŒpfGD\'\Z¡&yet2x5Ã©mV¤\0›\ZÀcE‘ìë‰\rbÒ©o1rb£H<,Ù|*­Ü`n¯YŒ?v5\n.µÉĞN\0%\r¯£½Ş3[a@¼÷ôVŞ‹\ZìÓÜ’%ŸaH|ï¾&†½\'ÄÒ“Ñ¯¬#¥íqBjÃè<h2˜Ÿm®Ô¥…íâ†Yåt3k¥7›ƒ§ù:€$–4æ#­Mã ĞKúzÙ±i_*ó²»ú:R>6„=QÛ§ÙG#5\ZqrıDtˆ&&œ‚ÊéJˆ+L.ë£ÃO[tGâk\nC®V4áNsğ±ÏH¸ãèŞXGEJ Ux¨~SÈhÉ¥Ià¢=”øZ™ö	ÏØ0yÓrÌÇ^5›óDO!:ME±j|\nî3*ù”ˆdSZbFd¿y2€~ŠÌ!,“|”a}Jµ\\ û–zÙaâŒÕJŸçyúSãg^ù3qğø¹?&\"ó~Ç?~]¼ïSxÚs¯Œ^·3N?[ ÃËãÚ#å8„·SLjĞq!×ËÖÙët{ôÒ°	`lU´‹tE9Ñ>jŒ\nq¶ñÄM8ñP„@O`™´W&¦İf3Ó^Q¹Ïp­\'ï»?æ—×ci¢Æ’?l³aZÊNso¨İ,†ç™ïœ~2ã´Óî;¾?™.—ˆÌÛHà¼T‚Ç%:·I±xn§´N|pA ¥wÆñÃóÌ+ÑI{„¡¤WU§%—\r˜ƒ‡fáG-f²Ã@Ã·±0ß»ç“–\r€”ZhÄ}çÁ’@?õËoˆ~ì¦øº^\ZËÇG½ÚáQxf_„ü³Õÿ‡t´JHÓ‰Í”²£äHÒĞVãuÊO5Ár¨`ZMP)#äD3k\n”,Ø¶QË\0ÌzÍsrœ,Ba&e3Bj®İÁñc1\\YÉNbs¡ëz­É­C}œ_Ã2±¹Ù®ÄÖÅ9kuZƒ,vFÂÑŞj2Ur¥wõªŞø“C„À9ŞÁiéNµ!8·Gd@¤ÇvQ`úœjÈSÚcäzÓBh›_•Ëi	VMÂ±’ld,öã£¨i8«¨9ÚÆ†do·¤õ\ZÒøöb9\"¤¥·y1şã‡ßZn†şò7Çß²/^xÕ·ÅÑî~4Ä\ZuG`Ö8Èçø‡¯Ô–Î\néB¦)‰3È´Ó cì&d8Êæt¢§¤¥Ÿ­ÓLê¨Eü!8(4µ3Bjœ6XŠÜ,c„É=PÒºeÛà¨·¡uCp8sÈ$;X*Ô95uN‰ñ~²Y«ŞŠÅ–&Ûé\rÛNS˜ÄÁö‰%G	iÂœ\n<a2¶ò”t4”c&)«í^	\nÏI“€\"]–APKÉÌ¹q,èdp‹W²Ñ(9HÅ¹Ì d,`48í\0Å>yMˆ±Ò‹:&ĞL9í$«ïİ(‹{ Öâø“·½\"î:|n.èğ#?{u¼é=Ëqé3Ÿ_µ\nùê8¸v‰ú0˜»…E„O%Í5³¸6ã‘\0Sg€n‰Ó*´\n1Ùá|ãíÛ{¥™¥­ÖzÜ×¤\ZäõñÉ4JšsÜOú¬¾-ÁÅÒV\"›?É¶8¶w_úë¹D©ÏPÆÈ…ÀM?“L³ºUÆ–Å‡¡ú4…INk8xòDìÑF×xŸ‰¢¤·„ (6:ò—%œÚ%ö‚A¢dÚÒ(y>‹3H$óëŸ\rqĞmX4†s°¢tArá#Â(ì)oLãIãG(¸*#±°K–ïğ­\nÒŠkvŸ’¤^çZ½\'ø(çÏxÅ¿š^<WBÍñÇqİç÷ÄĞ…XÅYã¨;„®Œü†Ç*’»ëÏáHºB„Ë›(›É\0#«mr‰3yå\\é#†˜NÃA&–Æ¤£`Pk\0…’-ó¬ƒme~m]EÕKû|+@w†{ğk½š¯Ê‰å¨tÑ~uó›·‘õGª‚ƒ¸!šë²-­xö¥Û3ÍéSN=½¡;èÆšÓÜeŞYÏ‚’\'%ø¬8N>7ŞFb›ÂFy8j·ip´¼hÒ*r¦A§S¿¥âËYÄ§c‡ÄI‰É¿`IAjs?_ú!{¾ìƒË.Jî¯úW…\'ğ\\«Ğà:·ç?,-Æ¿ôéÅs @†—ıÌïÅÛ>x(š[vğl<!`p©Sû¹‚µòL“6ÉËÀŸÍ—8Pq<äyL›¢4’TÔ¤jàÀ@#ùN»£âC@2À¼JAä&8ø·Ó&Qna¨&€*c|ŠúômEYSŠMsw`¾Çh°Ín?Ú8§â×á\'¤6,X%®1éFÛügNC \Z§?h¶8‡\'{(T›¯Lãğê”JÆVDÆç–	< t~ËĞ½À¡QN™h	\nâlØiÃ%ewËÇò¼øi²yªÖà<¥åúE)}™É•=_y²Õï½xò7H§<Tr>ZjÆÇnúiığ¿vuüégÆ±eÇÖ¨7Ñ¬7ó¹a\'H%ÛË‚¾ÈêÇgdFGyRWú^ù¼³Pèb¾ôÏl‡~¹’ÃnÕ\Z´Ô­¢5úC5°ZºŒw(x`\n-ù€ö’\r|ëpäÀ$Í;$µÓ³¡…³½ËT_»õÄöÖr °ï`%´oÑ„hÃ:i4]Y~SkÑJŸö N{8¾~2Vì¥ò¹é»O]9Rª@¹Í¨‡Á`Ñ!^u¯œæ—A&NmâYl3ÊË(¤œ]¼£Ç©´yÍ_˜ M1\ZÃD%a‚É	FSa†Ù¼Ö“r„©J½¸g¾mø„\'Äwÿ›Îò­pÏ=÷Æ÷üØ‹·lo\\ºsSöğÔyV<şm@ãÁ•£Zmr¦Æ‘læ9hµ$©Ê{øšT</9Ù›Ê˜çwI3Jf4£È3ĞïÀÿÈãa†šXlÙƒU@£“®n3\r÷ÈF‡Ö´™>I‚silwó\0çbö€¦•}IãÓ¨ñìœ!iÊ8–ZxÂÖ6eœş {ö S6–Õ¶³×[\'M0äôné‡4(Š1‰%ã%“z½JÂ% 5Í6Ó %º³²[WÊx_¸l46}\rã½³œù«v²«·HV®«å¼‘÷âŞ9-F³áÒòU’6ëq¬3ŒŸúıWXƒ³ö>x0¾ï§®›îjEgşÂ˜40œªƒ”È)m^ªª¤Õ5­4K\\ÆÈ¹R<—b@_‹£\\„ºöÜkúægÒ ‚½cvÁë|»ÊúÀŒ|SÊ½üÌ‰WûfbŠIJÉM“CÇ1~EN\nå¾åîD‚ò·Ç\niË ó(‡Õœ§pÍÍÉ:¬5ŠíÕxÑg``­N{Xhv¢½0ÇÈl<QªfoEkùî­¼œ„2áOÕpÑ.S@ÀĞ)af€1­L;Û†Åø“÷ HD¥¾Zb\nŠì1Éû—†Q³ä‚\0¶éD Ãy$‹4(ÚsnbS/’¦SŠáçY¥ùøİ÷¾9îÙ¿Ç;Ÿµğ¿óşøŞüæTvÄÒöy½üÑLA\'\0dÇÊ“ÇJNŞÀ‘Ì	€ŠÖà¡‚#vû\"¢id}}3è7ñ•X…Ã¨›ÓäGh\n5Äm1Ä/ĞI|1ş¦@Êi%€&µäñ~e@Ğ*P®¯.H9iY£-ü²ÔhPÒÛÎ\n*»ØÙS¿µ•XY>™À­\0*›yˆ/eÇA­_‹K›µxş¥\\=ıaÊQ§74ª­¨ã£C­l01 _’*ó«9¤–\\:;V“ jRY°˜EpäuÎSÛg^¼f:¶ô+h	n®ÚGÍ‘ª>“SL“-{±”¤æµ¨¬±eoƒª•”å>9]?J)Æ1Zd!ğ+ğ*kVÂË_ñŠxã[nîx1êó˜LÒŠçujº\Z°ŠÏAÍòI<J PW_™MmÀyÂ‡<Òsfÿ«OªXõÙIAå´‘)mÔ¶ATmSÏaĞô58iv9`8r¼rÉZæNÁæ&ÙØ;m>…4…\'¾.+HÕjœìYóYÜcF%($¹€qjÊ¯ƒ´Ô}Ü\ZÇüâ|lZ8ıc †3zÍ)hŸÑEIéNcH=Ú@dÈÖ”p…I“ ÷Æ¹Op°÷znüX—O1°BKÎF°xYÓ	i5{×<§E«U²û„}‚–LÉT:Ëóßïãf\\‘†¥ú4h¯_zÍ:õøÀ}gŞY¿öÓWÇK~èwãßwyÔç\n7A’ua3EÙ¯)C}$“dƒ\0ú’¡Ab¬“F#’1IÈÌ/-Jf‘Ì¯Å6Æ„\Z©I\0ÃĞø¾ñ\0­1pM\\î“šmnSXŒÙlĞÌ&³=rĞ1ï[j–ã0šUšZ$r”\\-”ï‡\0”V½ı&ïX¯yj´¯J´ÑüÏ½te{úqúÃ¥-qÅ`)\"?¬!¥SoK½Qö|H°dü$ ?/)X³à¡…¤6ùäÒb±qÍ½ifÇ˜WÚÀYøZzinˆ”r0|òrİò+Üç=Hgú(Y¦×Œó30M/6ß×P•sØ¿v(şÙûd>3áW^}süè/Ş»Ucn÷obXsP\r@½4cÒ¤-4ã”\'RJXíQ4HÙ|Xéé¯ŒËÆsÖœ´‰®	5Á„\nLªq³*ı\r95³&£‡IÅ½Çvói\"?,H?É&-K/`”ŞHk÷P(o~ªE,Æ4Ò·´—)[ËıØ‹UÁ¯ÚªJ{Ì#Ø.Ùæ3>¼´Óşì¦PGŒüÀ¿)²3Û‡ü(6$9ÖÙÓş…¨)•eúam+yQ$x¦{Ó¥ÍŸÔ+ñ)Ñ=—98ÅÍa„|³Ğûp®TJFÏó’T¥‘+õq=_ËÍ:À©a¬›åÛ ìÊ=ÍXª¢T­Ô›iëø¿çúkS²à\rËï/şæoÅkŞzmÔæ®ˆÅÚ|Ôa±D…Îã¾;jf `õ¤1•SÚJÕ¯•­˜UY4ç0.4<\nŒHÕ¿@Køl\n)Qºn½Æ6ğZ7µÉM¢9&s{Ræ´pBšTHË5î=Ë$Ñ©\"X7»x%wú\"¨\\(º6”·ò|å§İ¼kç½tÓ™éÁ2”§:á»¾ö›ãÇ^øÇ×x lS»E%#”ö¬OÃ&“ÏBzvnÆ›½ÌJL;eö¼~ª¡§çöÙ-›×UÇlšQH›<f£)T<i§ŸºF½à‡œêî¹exŸl<6÷RçY9Ö«‚3ŸÓX´éæZqßƒwÅ¿zãofUşê¡¿õÆ?ˆ|Û«ã?Ò‹wÎÇ\\í|ıº5Ì‘Rğ÷´ÅyaÆ$!´Ë®mÎsŒGVR;ğX2tÎÅJºGÚ|*%<eëWp4¦l»m\'}\0¡sî(9Úr<ZGæáèë‹¨©Èê=gÀ±ÿÌqQ³i%)ù1M‚àpòjşÊÙ	Ïï´Ñn~yjh^êïG¤Çİ\Ze=ù¶Ìw&‚4=#aia1~æ¯_ÄQNíœå	¥i$\ZN$Ã±I›SUŠO™sF3‰–ÇüØSB\'²öü˜^MCy5—’ùælöh_Wí-ñØ)(}\rÁÀgCy>Õ2Å¼šmDÈ93@³“Ù¾eZ-¬ñøÔõwÖo¼o_|õKß¯|=&ZbæK}£L.%³‡§>œ‹F¿…94Mí‰‚kø#vá*¹+(3	g(i³Âü£ìº=µa\"©-hŸÚÈnÓJŸ0LR“Š5hã«@ĞWó™¥µ4à~6‡¡0}¡Q‚@Bz{‹“^\0ñppTh	,Œf[v6Xa¬§\\³Ş¨Ÿ\\‹íê›Œ~«Ğı&à¶yM¬3\nW¡ğä\'>%~ñ[~<âÎã9w_æõ”n2àÔÌšJ\r$OdKB¸²A©Ÿ\Z„ÍÆ›f t	Æ— ‘\Z{TÄ@&÷¼\0!§ÔkOSìñ4è£LóÌ¶\\z(ÑÌæ>¯sò+£Ó©¥ÑrœfÓ¦¸şÆëâç_÷k¥¼ÿÍpí\r{âk¾ç¿Äıôûcıx×fk4ç6Ã@ó<.÷MFDªçyÒ÷ÖNçy¨Ç¬—JŸ#Wş îÆÛÄi…&M­ºt!ÚgP[°i6åx†€2€â”ÏõCh‘{ç_\0T¬fC)Îx~Ë|X”û°x›Y˜iP<ÏcÃ<V\n`Iœ–€çN´t@0t‹5p4F»a#?ıÂùºg*œQ€¸¤äZd­\Z£õe$»2è8Î\0â–Œ%µ}l=ş•¶©[¶…5uóÚŒ ÙÈ^4/òROËË©ó”ŸÅæ\r-bO.B—ùgï@¢u\"¯İ›ù&¡eùg<Ï{LÕ>0¢\r)‹–•\"«±Ò¨Ç[>ùÁøìíùá»ØÖ¿ô›ÿä_ı—8±ÚŒåÌ/Lb®¡ƒ×Ú»rº==Ô\"8¶á3ŠM…ÊìWç–ZdİSˆ[OÍ)Ò¹6˜‰RƒçcÀdö@¡=Ë$NÁ!H¦Î8\0”\0šUì“>¯maYÔ×fÌà=²¡\0Ş‹ƒ¶¢=¸æT‚‹è’zª´&Ê¾–}\'u?üyr9ÚˆzÒºÿQ—\\ùä¼Ó™\n³\'9caç…Ûã§¿û¥1¾ı Ï$qå¶¢¼—!SB}\nZNû9§e{.ÅänCÆ±·ˆD%e:¯Oãlã4±Œ×O¡) 0»ıõÄKyÜ²Ì’i•–gŞY¹î©UÉEëÆæ@dæArs˜LØiÇ®C÷Åï~øO¢¯éòaßƒ‡â­×|4~âç¯‰·¼”TŸó‹sQo8Ç[	™~S\rƒ‚çtÄßÙ•èÁT˜@.z³|Wü+ÃsÁ\\	bCújhö<¿~S2.ÏàøÅHß,AyÔ[?CÀh‚ægjù>rŞÇ&KQÎì¶ìuşgôKrgîËfó$ÉÈœ¦Y½˜V„€|‘¤õYÂGƒ+W<A`×Ö1/©O¥Éuü¯Ú8¾ö©šáŒ…¬Î™NRü™ïıøÑ¯ş—1ùÂMQ£1& ?š2OZ\0BàŸÔh˜|Cõáûà“=zùf_6¿\r:6’íRZˆVÈaoKyè9A_Ä.YVGÑ‡””ç\\—Á‘¦Wjêä€—•ù¦×L—Ú…z»ÚA–Ó*e\'-¯E}lÒ!.×$®şâµqÇîû­Áÿ¾xË-ñı?õÇñCÿì}ñ_Şt0n¼c5:ølssÍÔeí©©6€!Êtq4•Ï*»Áe9ùÓçµÓGô	[•8İrôpd\ZßÛiJÙKÅ9¾Åd¼ÆñJšW}|s{³tÌÓ¬2­ 7ïiq¶H©A†i=&Ëª‚0»ufŸ`ğ\\0Ø;•i¬0Ù½Îså\nòÕ›3í±\nÀPê:üà×¾ê“XÍÅS.XˆK6Ÿ™)&³PûEÂôøŒ…¥ù…xöSwãæ»nŒĞ¤5’!müj\"LF<,„œÀˆµì!²kX@e3dcx]¢æ|)bNõ8eãğã?­cƒdÚŒ&mšÓtîgâÎË0&1uJppm\nšÒÚã5tÊ,U@@³ 5¸­J¬=íèÄ·¾àEÜa{öÏ|io¼ë×ÇzÃ\'ã}½XíbzÊ00X›<9ÆÕp¢åüsÄò­l9óÜy®ÀAÀµè³‡ÍzÙ%ÒñFHi.M4¥‚¾@H­Aü!à8Hj}he‘”–åJ×¤¯g\']Ùk™…d.ş÷PPË<÷¹¨9\0HSk\nµƒÚ$íÂŠmN:|ó:€âìŠ¹mÛc}¡««?påB¼øi;²g*Ğæ>ÎÙ	·ß¿7^öò_OßõáˆgÚw\re”\"Jw¥ˆ¢Æ«aB¸ÜŒÆO™³áœ²mM³ø±Ú2x¡?Af&?-”Äö\Z*XõoÃ˜Î•Ämé\\YÈé\"‰?û*e†,¶\\·.¹%Hˆâb2÷Ê‰ÚîŞ«\"ØÇQG³øÅ¤±öıq\\ØßßÕwGwy1vïÇÊúBôHs|y­…NJx5Óaüeeì¤n™®Éü>QIš¬•T1^AâÅi\ZÏİQ_¥°³zgõÌ®[Î³×NP§¬çh9`NıŒ4£x¦ÔÜ³ê{–o} Ï]•ğ2vÒÃco[*—)\\`#/‡Æ§Ö ²›ßç%_ú¢äsç¼í‘à mñ? +ñNZ´xiëSŸGvyÚ³+>òO¿*®<ƒ]¼†³\nÃgn¼+~íwŞ\Zoßûö¨µs<¼-ø2#„Ìå`0e nq„³]’˜ågºÉ5³xM¡Ù‰6™\Z [VÀ©O”©Hb[ÏÖ±ïm:êc~‹“4¶Js…s3æ”YríMÎ×]p\0_A‡ºÑ‰ùã±£ò”hW6iôÊ¦ÍÇ€Ñz)Í}³Nó§Zi\'†òFA\'ãYZ¤s®_E½eÏ’4=,v\nré7x”Å\0PXÈ(5ÀÚ…c:ª-ÆšTj\Zã¾à„CX“W@ÉÉàyïdı¤›µãÊêÕò™ EÖaš#W„1\"ã©3ÇÅô‚ù)_™‹5ä`²@*iJw.qâ¦³>¨Dû’+âØ•—Çdÿıqë¯|g´\Z¥g*œu€Hİ›îÜ/ı—¿toŒµnqç$5QpQ:kjîÃÔ‚™“¶4 œoÄÉ-¦MSbšGía|ƒ´6­eRdãHL©ÍuÁ‘é(Ó<~†X-ez$gš[úyóLÆæçr¬\r<YIi˜yh¾~ëq{4â9Ñ©?)6W¶7ŠzusÎ)Jó†*å<$l†ìÅ¡#„¤­á‡ûI“uÎ03lü%P€Óî{>+W\n3*LH“R°\0µF\r­0ĞïC[¸˜›&—\Z\"p\0àq™²î”‡ş(MS^µ,n\rò–)HŒ\"Z¦Ùä!#œ·öe(ÓY\'ƒ>bavkX´C6‹ù¾…Ö„QÃ˜—ÌyÌnÒ ™[QkVb}Ôê%Æ\'?1®ZêÅ»òÊMÎ`8û\0™†«ß{{üÛ×¼!î\\ßãíû£_ñSÑT¢¹BìD‹FRRfıÑÉ´Ñ¤L*ÉmS¤²q|×‘IíÀ±ZfÚ°¶ÍÅ)U ÙR²Dæ¡D0ŒUÊµ¼âŸèkä²6™—²±İõ£&˜M•ÆX¨m¥ÚÎXˆ¥èL.á.›Ø`v¤²¯¢fÅiBùŞ…h–Éy>Z:â‚1ËİK(qå¼¤ÉVâÓÜËÌüK\'˜?»¶ap§†8Và\\´ô-RsBßÕ0$ùŞ9\0±.éOQ˜BÈÁÇR%i+İI=nÉİˆu°Ê©½féÒ¯T%-¸fLï>ënZÛº†YÉ±&WÑ¶%’Ö›ùIè:¦Öæ+Sİ­í8pÙeñªo‹üºçf­ÎdxÔ\0ÒíõããŸ¹#^õ‡_Šëî¾-:ì‹“Ã#±>9\ZlxÇÆHq{^3Ë¦5=š6R9SJ™(×¸rj´×¦RVjç0\Zß¶B2%ùa \\—‰t™ÇÅ›íN¥<<?Á€ŠÇ§Áæb®>íÑ6 °ÆÜ\Z­É&\0rA4“É`îQ¾Æd-ìVæhÒÌšÈ@Í©ôBÜ^;MIk”İŞˆu™VÕîÓ\"È“ŒÇ3’œúâs§	å,\\ëÛOóI­à\'Ô(Å´RƒHö¤sSHÌzÇöĞÁÑ’G\'ßiùåZ®%“[-…EjcrfòBë4‰(§ø¦•Îü\'B(Í8ó%\0ñÕ\Z4¡­]Ğ.M16§˜80˜Áz¬Ú\\úÕ8BşgÆo¿ô©±móæ’æ†G\r ³ğ¾ßÿÏ¯|4ºÍf4¶ôâÄ³«~g¬n‡­hĞz‡T3§™f« v\':pjãÒÔ‚ÕòIŒ^\Z “álb¥?leæ£V4·´Ã5u†.ØLşXá:æe·cKÌUvF+®\0E§vq´Fó)=íôrï@9H‡-=š°ÁX¹*›5ğ“eé¢\0ˆLeıÃyì†Ÿ2œÕsŸİ´ì}]ÕŒ¼ c/´¨(ÏX^“©ŒYÈÃ¾şê‹L<ACáÜªé©wæú€ŠäM’ŠoıM«%Ãg}	É22¸Çü¸×WIÇÛkĞ4±`¶ì€‘ùÙÛñœ_ÂMjX!ø8Wc¥y…F)i1¯-cRGsô\'±rt5­Œã#oÿûñü+Î¬s>:@VW»ñ¡kwÇkŞt{Üv`=v¬F|B„9® q‡1t®Ñ„s¶qe\raŞEîõeOZ‰MÆ‘ù|œtÒ)Ü=MM˜à2—L+ Êiú:ˆclİZlAµoŠ:ş@£º)jã¥ÔíŠØĞ\"´×}ëF¬¯Ù5Ä¶\\Óë„a}ëĞˆ9\rDfä§`hêRw`H˜BS—ì’!)\'õ£õÊ@Şé³å#pRqJıaô|ÑKP	L(Í%¥¸«KN†ë€\0¼;5]3Ê^*ÁÁŞòóe1€‘=y„ºX·¼?á!\r\"úÉ.êq`	êİ·ÖÓÇ\'EqÎ}>6¯å}¦šB°ø5´L~nš¸ôÇ +XH\"*ÍØµo%.Ú1ú_Iü\\¼ì{¿<ër6Â£Yøè\'ˆ_zÕûãşƒµØ±ãB¤1¶rµÃú2£ÁƒÚ*­Š$tI@âÒÚô¥Aaz%G+š¥??µ‰`1…Ì@\Zå˜ßà«U]ÀÆQÇó”R\0ÒÎX~‰«„tØ›Æ{À\\˜b¹P\Z9ìÍû#vsäZÛ]¡ß!“ÒèŞ^&4öù\'ÉIO©³Y¸šV¦)µ+\ZÂŒJfSsâ|VÊ9¥-½U<£Ì?ˆ·™v4X\']é½R³•´ú¤—i)sÖ\rîÔTnSZå³Á´ÒL&sóg\r¬qéİJ¤×²ˆ\'}\nŸéu;üĞÂlÊˆš§y%=,ß4U;&Ê¸‡Z¥Š¿á,şÃË«	ú—~Û³âk¯º(¾ó¯?ğœ¹©íQ8g\0bøĞ\'nŠ×¾éKñ¥Ûc_îÌicGTÁ¦¡Šgƒ;€MÃ’GVN	(3ÒÂJ´QÆ°1Iè,×d8ü-~ƒ“ãH\'%”’³@„aHuâÆY\ZÈF…ÓÕj2ZmèªLüqÍ#}$¿Ü”{Mº$±L„9#zZ^0r¶\0—ôw‡Ç2‘	\'¥ªõQ[(­P2;`Ğñ$S­àXF¾ågoYÆ! Èã€Ÿ‹LH“Ïã$^ÒÍãäòi=”à2±ÚC¦—†TlìSd62Å÷à—ç¶ËVf÷’à+]¸ÎLN ™°T&íTÜŞÇŞ,µ²ï×=r<6/LâÛ¾é+â²sñßğÔ¸ôâ-Öê¬‡s\n †Ï~éxõë?ÿb/¶mÛQaLI/3)ÍàNÎ4Ï9<¶m—4°†·­gcšÏn]ãeÒÂHK\Z%Kµ8™SG‘È‘’Üc¯rnº,\n”xc¼—@ñŒÆöÎi>©IÊõ’Æ½UR˜Æ_5ü#øË&@ªfı,ææ¯8à^×¡Fchş¤©„†pKĞARâòımÓ\nLã#(õ\'h÷”Q¢0êôY¹”üœU(GRSHj\'ÓCkkk|jŸ­é³ĞÜc¿X¥£\r}\0&T¥â÷?JY‚BàW&0}{9iS©µce@-9¾â‚züĞw?#¾ñë¾,vn;3‹1üeÃ9Ã·í‹7şÉçãï¿?6m¾(¶·0§\\±3¤o£ĞP3“G	ír”ö´èÌ¦„¥!ÜÙ€¶¦f–ÌšâáH$$r–€‚+4IlzYA¦ÉtäQ†9ÌS˜XÃ#*ùÔ*%28K‚Z0”Ù¾”UÂd2}É‘qYê’]ÊìsITöjöKä¨·ààºc\Zú	¢9<O3*M-v¤Ó„ÊA×¼›ÌÉÆMÓt?­QåÜ.ã2â]Û\'1“Sì=Ì÷P²5²NµŒî*ÒÔ-Ë×š4«Z«¡ÕöìT.©m›1ª¶£×oÄñ•õø²Ë+ñ×^øÄøº>=^üUWHG=œ“\01ì?°?Şô§wÆŞzc†XZZ´¶eËÍ•fmİ6}MQĞáx§”²A“}³%³áM™ºƒëÉÙü%¿Lr*Lo•1JÊ<+yŒËøR@öd•œ2\"¥pâyaı\"Á5?fi’s\rDÈ€—¦ ^0tÎ©	|&âÒ‚&{¢ôléƒ™_Phˆzi è¤‡õã7âÍ¹&”³ÇOîµ.jËà/ı‹ü·cAÃ“Ø\0HóJ\Z²™.œ†á³X’æ\n›lì¡r‰QU`!¾Ğú¸ë’±sG#¾ùÅ__vY%¾ê¹Oˆí;/HÒœáœÈ,üş›?¿ûİq´‡Î@âÌcÇFt„=?4È¸	@”F0\rO·0ÃÔ°i5l|Y!ã•Â8ÙšÓß’şaáá”qÊ))ÄÖ,ë4M2ùÃJù„eˆl%eWªc#É˜Ä8K@Ï…dÌb:çøD…ç:_Ùù ³€(\0É)ë¦ÑYOP•Jå;*”w\n–/#ÓäpSĞxê8ˆ& irù®£<¨¾Eš‚	² •¤³6“8ªÔ1¥œËybÍ4S¿C\0ùNË›k8hF«ÙQ}ÿğ%Oˆ§]Ş—|Ó×Zås.œó\01¼ó·ÆÇ¾´?şø=÷ÇÂBFÓ§ÙíF•y£ÙÀœÂ4i.s5Wú°aU32§×“™\r6ü,ÈÎ¦™†‡\'yØ1<V—Oå!Q’RN™ú#£yÓr˜ü³S!ç/ÉĞäSê‹’âO¨=\n@ŠÆP‹è_öÆ	i ²\0„eå,c%¿õğfšU#^ê”jå¯ÕIB‘„t0AÆûgU‡Ù¸™ŸáŸÿ’paóKT	\nù\ZLlU{ÙRH	»qi»m‡ø½®KøLâòËvÄKp¼ë­J|ÿ·?+:meÏÍp^\0ÄpßcñæwŞïıØ}±ÿh#Dm æğU¾?Ácè &S¦¤„¹Ô(´¸_ÄÓ¤àBJHNüÏ ´r, böB•rS6™DFd\'ÓÈH‚ª ®0åôš%•d2Îå}ÎìJí¦7¢6$2¸YG2}¯ü)Ä C4‡ ÊE¶Lœ)K¹Ü3_ğÖÜ7Wƒ¤øÒÍš‘l%Ì&æçÔ²N>‡ÿÔW€¦<çt#øÒ·\0$:æ8ÖùµAŠÈÑvÂŞg®Ö[Ü¿İa=Ö—\'±ØÄs¶)¾ş+ŸO{ÊÎøÆ¯½¬Täç\r@2LúñÇ×Üox×®¸ëà!˜¡smE€ÀW<Š®¤„9²Ì_ÎšµíbåOf2±`ğ-½\ZŒdÎä¡¼`şÂgSvçdš#yl–›`BN]ö\'É¨r!·Lb³sÌm\\\\›}æãÚ 9¾áFœ\ZÂ1güj†¹¾°\Z\"%S“GÅ“å{?nn\\ZV»™Ï¤s–é©zû|Sí@”t±æ&îô=)|ÄPjŒ´@”ä˜…:ÛVGŞ)ÿµ4±œ|Yµ®]ØÕ¸hÛö¸iöÂç.Å‹®Ú/|ŞÓ³Üó%œ_\0™†O}éşøÀ§vÇÛ?pg¬®ôci¾mlÚ\\FéF#Ê|ÅòfO‹:ö!À†)É“8V²\'[şšşd<á$qZÀÃQŒ-@D9^`!0¯Œ\' <MéÎaš?M¿œj®/!pŠ&™™We¯rê¹ÚÆ¹b‚)í0àÆ³É…Yp†Âä<|Ásö¤éq…zç¨65r},õ4¯üM†f‘y,ÈŞÂ@œ^¯,‡¹Ê¿O{A05ĞöRõ“èõ@íÆS/»0ñä­ñ•W^Ï~úÎxæS/\n\\—ó.œ—\01¬­âŞñÅøägˆ;w‰“+ãXèlBÕaNÿÃFô“cjSìâdš\"3µ²¾Êª$—fL3ÕÄP~¹\"\02¯åÉØšœg7ª¥\"éÅ†bd2>çJ}µ‚Ëí¤9\0dübJ©Ô„k\0ÃòF–£áz¶”y­Ÿ¿Ô{Z½r?êdHyüg›Öô©|Şˆ;ie9>œï\0 ĞùNÍN¶&•çn\\Ã”\Z²O“–z\r{£pÿ‹·-Æ¥Û7Ç%÷â›¿şªøò/Ûl›/7?OÃy&qÏ‡ã}×İb»ë^Wä¨Gga!rÎ›¶>@q®•¦—ì›ÒW›:©2Iá#˜ƒ´×†Ò9™†y§LSËˆ%M:Ö	FJæØ*{’ÜdXşKúdv5ÇSM‘Œî1[i$ˆ\n@JÖ±€Î·³ŠÖ€ôég$§[/ŸŠú’.ı,ü„R÷€’Ñi#ÚG\"u>#ZÄc\0‘ßfœjgÎª…A¸â¨kF!şëhÎ‡£Nôúø<ƒ¯_´mOº¢/¾êËâyÏ|b<ñ²zÌ-œù™¶g#œç\0y(|î¦ûã-×Ü÷ïZ‰;ö¬iXÅâ(¡Á+¨şš&–N+€Éß`g9F^Jû|#ÈMÄù.‚d‘0\nÛ\r“Ã’yQXÀˆòò³2=[q¢enÎÕá€¦ùòû†:İÄ4­q…ùÑ Y.w0¯;µ¡åÁØšXä(RŸ:XK§½”)!6¨\0 ½~&ÙKpxÙËğj\'PœèxUg[€é«qâ=µ§Ên\\{«zÃA¬üXæ|lb»`K;®¸hs¼àÊ¥øšçîˆ‹/¾”²[á1Ãñ“kñÀcñÇï»5>ú…]±ÿĞZ´š‹˜^mÌ$f]_¡œ/A†)OÓ¤©¤ùã÷5@ŒŒƒ%3\n&Ó«‘I2ÖõÉí]ÊÅÛÈŸ«4r­|EIğSM(ÓÁôšWú\"¾î÷Hjò¨9(€MQ>ÿŞU\0{œæ’uäd\0\0d~v^¢L\0í³\0ŸXß`Ä¿-®–È©PZBm#\nrŒ\\ƒçv0Ï÷jª8ÜÄ×›­XÅ¯è®cë¦ù¸xçRüµ«.‰§>qK<íÉ;ãI—m‹†å<FÃc\n WğzL¯»ã[NÄ®ı£¨w:±´Ø Áa0_\n‚‡óµRŸ^ÎªcÚDF‘±`Í6»qètñağ¢9Æemnx¢™§ó/`bıÎk¹b#iC^w…ÉôUJ9Y\\şMBêCîÂê	À€´WÕ¸VOm—úŒ –±ê£	• QS¤ÉUÌ¤t®ó:{´ª#ö )¸Öà\\Ó«7hÄ¨ïØ…=hËñ„\'lÂáŞÏzÚÅñµ/xJ<ïÙgv-ªs)<fRÂ8®~×íñöwİ“ùzÜ»ûXyp5\ZK›££VáºÜ	o`Æ YjNŸ€™Kæ,ZÄA5M§±ki&%@œKDœKª¦™„)•ã~–[ºtÉ@2Ú4jüœ@éB\\°üÄ£\0Ôœ’ùÖÑ¥Fğ\nZ¨éœ24ƒ3?œ$h\"{“@Bæu°n¶ØÁ\0­Ğ,\0¬¼l¥&ÑìªG³ÖÊ—‘z$u²·ÚÚ`]va<iûRÔÛõè/oı–gÇ|Ï3¹æØã+<ÆòP8rìP¼ñ÷Äg¯İ»WWâà‘åì…ñı‚¹vÍA\"¤¯qj\rÁ\0C\'‡&—\n\0\0óÊ“Øöu_k•¡új5@jrÎ§\Z%»ŸÓ\'\0jM0™~j?eyÜ¿L“·\ZVF2S$€f˜\r¾ã•¾ÄÄwZd\\µ¦’\0á\"yœIë[élãSèwp–£58À7“Î$6Ï/ÄSwl‹ZwßúÏŒoyÑØ¾\rÔÏï^¨¿jxÜ\0äááßşáxïoŒne[¬\rã}Gb¸Ş‹Æübt¨:ó…q	¼†©TŒ0Èì˜?HÿaÍårÔ*i„%8¼–¼œ{6¹ßü.§}è£8”¦­™eÚDE–]^¶âX \n5˜‰ô4ùüÓÜ\"½ïqç—•ˆ/ÀğZ©e~Sƒs¿Ÿ1¡)İõAøıÁz³;/èÄâæù˜ã¹67×âYÏ¸ ~âşh¶|y#ÌÂã ³päØJì?²¿ó†Åî{Œıƒ-qgÔÉ€­¦ˆ‰äMA’úCóJÇ[M‚£-d¸SÒaP¥—Á‰Ó#”n^7\0@Ò!=`H_CûŠ#\";2¿~şŸ×5“¸ HAJ…Ka¡åè¶ïeŒ¸î¢šPæ_ï\rc¡9…&Ù¼0›;+±ië||ç·¿ ®zîãâså97Â_×\0ùóáõo¿+>ø©[ãäz7öíF–óÚ1èVb€ä…ß¢ƒgQ‡gYWºŒap$ocv©$«=T¦(Àğ\Z 1ü\ZM:íeœE³SM‡zª9\n€Ø§fPKPõqá9ã)1¯õ‡.zíB\0mÑB;D}.\\İEŸw^²-.ŞÖŒ›·Æwşõ/¯zŞRyØğ—\n\0ùÂzw=şë®cG\\dakì;\\‰ƒÇÇqâä –»İèOëNÇxe-˜²„–aó£—šSSMmádÊ<l\0#~şT©~–f\Z Ó·H0¯I¥‰EÊ: €<gó\n®Z#\Z±ĞšVc.:j\\°­íXŒV{Íêr,u*ñCß÷-±eÛÙYä±6\0ò—«İ^|êó·Çç¯¿+:ÖŒ{÷V‘à•8vüdøq»Nå{ıƒ44Å`cM,ı§i¨)²ç‹¿oaO”¾ˆÌîz^i\Z	’l–)`pú-yË–Åhà[,Îã²\0 >ñ’ãO¿$^ğåOM.‘´NgØ\0È_!œ\\¸ıŞÃñşİ\0H–ÓÁµ{uİ¹áÇ`S+”÷Éñ;Ğ6]4P*‚&Q½áëÂä²GÊ^µJ€`ViZÕÕ8~fyYüïøêxÂÅÄ¶­ÕhœpæÃ@Îj(Zá¡ Tp 6Â96\0²6Â#„\rñµ6Â#„\r€l„ğa a#<BØ\0ÈFØ6\0²6Â#„\r€l„ğa a#<BØ\0ÈFØ6\0²6Â#„\r€l„ğa a#<BØ\0ÈFØ6\0²6Â#„\r€l„ğa a#üOCÄÿà\\ÄÅºÄ$¦\0\0\0\0IEND®B`‚','PNG','ttpl.png','TTPL','A','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-05 12:14:50'),('1fc797d2-fa7c-4750-9815-9b7bf4016e1d','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-01 05:07:08','C','Drukair Corporation','N','ÿØÿà\0JFIF\0\0H\0H\0\0ÿá\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿş\0*\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0È\0È\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RğbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ıü¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š	À ŠÃ¾ø¢ézÂØÜjğÜ³mÃ´1şøÚl#Ö·È Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( ŠÉÆú{k\Z•‹L°Ë¥„iÚVT@w	=\0ê{f²/~-ÙhG¿ÚÖş`ŠY­$„\'fpv‰’Jœ\0Xñ@mcxÿ\0]“Ã¼º‡ş>\0XáôÑØ\"ıpX{VÊË\\ŸÅ{¨íít3îN	Xéçn;à/J\0‡WğµŒ¼ğí­½®¡wöPÒ,¼y…‰O5˜çæÊ¹=S\0duZM³YiV°É!–HbDg=\\€?yƒµK¸uXşË!ßMko‚7‚infP}UD=ÇÊGjõuû£é@EPEPEPEPEPEPEPEPE…Â‘“×§½\0)8çş<ø²,\Zæ9R(íÃy—8B~Sµöï\"4Taƒ,‡h`P+¶@Ûñ·mô[I­mn¡mREÛ\Z\'ïZÜ“# ÉÚ3.p‹–`‰A}{6—ç­ÄB=­nÅ—Ë@ ,{g“÷>nÓ·Ì,|µGelÇ›/øƒUÆukæÕ!’fB—†âXÄ¯òªìShªY†ÕŞ±€@_Ş\0\Z—ŒoŒ÷—sMosqˆŒ-ç¶ ‚DhŸq.Ìå¥Qå®›\r3KÔ¯ô-jÏL¹ğş§©_Ÿ«Eö‡lá‘ØüÌùtb$iÁgÚXÑ|<ş¾¸¸Õ#¼±Ô.JyrÉÉ±u”lÙ¸3#¤„Òæ!Æ# Q7f‡Ã?Úö‹ªˆu¸u›ë{ƒ$i–Ÿé”ÚrV1&C“æl`ÿ\0¼ë?ˆ·^3¹†\ri¼A÷‘n#ëæDV4x,HP	%\\YXÓ¯µ7´½ºÓâµ™šÙ\"{¹Á…²©V\nIb„FÚä€Ì1Œøôí	e›V±I5&Ù¯SO´B„~é³(;cùÎH\0±ŞÇ».wŸ4‰ã½¾šñdi­à‚(¦`˜7;qÉùzr}*¼‡á‰l<ã^ÃPºû2ê1Ù¼/;ƒµ„EJ1Ë#01’A¯Z†ê+œùrG&ÓƒµÁ¨–åGbJ(¢ÂŠ( Š( Š( Š( Š( Š( Š( ¹øFÿ\0Å²ùmòtøcÜ P?Òdù³¿p+´| V^\\•$!^¢«êÚµ¶…§Mwy<V¶Ğ.é%•¶ªs@;­ÁyáÙÅ¼Ömoc)É…*\\ùŒ‘¸E0Èó#RXròXGªŞMw}š¦Æ…|˜ÄêªÁ•äpUC321ÒÃB™•‡–:Ÿ‰³Iâÿ\0Ãq%³I¦´cì¢ñ^ÑeeÃm(Ørƒe¨A’HÆ›YJnÉ5ÑV¸‡ÍaŒÙ Ììx‹;)sş®Fº*’F­¡\ry$ûkXê:…¾—£adóÅÕÂ²dËh„H‘€ß0a*Ä®$ÎswÃÖ¶öÓMc}šl²‹8µ(Dš‹2Çò,ycq(a Ü\nA`ÀŒ-=Áú·ŒuŠİBÖ÷o.$€ÃxdÒ.æË\rÅ$$;˜Èz+øã[õµ’úâá|<-í¾ZÀ“qö€Li²Ñ@L)È #5­nõèìíM•Û_$h%\'\nJLmÈ¦Ù™7´Š™\n7csµ^ÏÁ©ksc\r½­¢Ü_„K\'ÏxC7–ˆ†N[ÌT™ÖM©·’¥Cí*¾0[ZÍ6ğùPÜ^\\Ë\";\\*Şi—s¶!\'1° œÄÊ\0¯Søu¤xwRÑ,á³›ûBM5¡¸- )\"ÉåÊ¸	+ÆÓÔdäĞ;—Š¾ÆÇq©I\Z‚Ó¦ëHäÏ0ˆşä`€áÉ+Ì¥ë³ø] ÿ\0d‹ã>‘k¥êÊ-f–Ù6Ç|ŠG é»‰$Œ†8‡Ä^µñV‰u§ßEçZ^Fc‘3ŒƒÜ  A\0E\\EØ¸¬îU…¢Š(\0¢Š(\0¢Š(\0¢›,‚$,{Tlÿ\0dşt\\	¨¨RçqéúÔÔ\0QE\0QE\0Ts]Åo$I$ˆ3lŒ1Á‘°[ÔáXãĞÚ¤®?ãF’ÚŸ†mäİåGct·2L\"2}¨ádÀÁÂ»!lvÁh°®Wâ‡u\\EöVòÖÑ|Øğ¥¦9 …( €Ä0S.ğ¤Æwƒüv54Xî.l.üÈÚ{{ÛGÿ\0F¼‰XaËe,\rÄsO!|WãgüSáÂæ†\rxx¿RŒ•û/‡ŠŞ.áÙ§È…}ÆòÃÓµyùmƒËéû\\mXÓ÷šWôïò=·(Ææ5}†”ªK´Seæô7µ8AY-æŒÇæKäÊª‰ºåşø¤$b0û\ZYœ©â?r¹­yÚ¥Ş ®~2xåY	*‘\nêwe<…Vy˜m“i^á_ÇÏøh†ÿ\0ğ–-…¾Ÿ?‰<æKYßíoj±ÜŞF\0b\"V6v*Q0m¼2O£Mö_9¦HËÛ—lË#ª…ÜNOÍ2™7‘¼ÄrDÑ–ìÂb©bhCAŞJI÷M]?š8ñ˜J¸ZóÃW\\³ƒqk³NÍi¦Œßğ9ĞÄ«yu=ÄÉË¨t»;7™ÙÉVYæØ¤bèV0UrêXl\rKèdÑõİVÍáf¸šîæáây1{òŠ¼m^IòÆíû“U¾è²x†}h.%KÈn|€›I™~`O;Š©\\ó¤*Fó]Ö©¢ßh–2\rÉæ­p †%w“!KLß7É8\'{›nt\\Ã¡Àø•55†ò8Úo´È@EšöP×8h£0³³‘AÃíGFìÖÿ\0ÃßÛ½ö—ı’KpMvÑ¬~RİYÏ1qå‡n\n;Â@r2IÎKüyá›;	lôÙõm:°Äğùqî×jçy‡\'yb\0ÿ\0AÂ€Tµcü*øX_Å\\Ğêv¶:xóOÎÑ‹[¤U…£G\n¡Ãl\r»æÊ¢ãfNğ6g¬EñÖ+Ãô7\ZJ‘”–í£?|W`­i g\09ÊKgáM_Ó´ù£Ğmõ{âÆÎŒBîèªïr¾y\0±<2zfº¤ûƒéXÆq•ù^ÅY­X´QEPQ@Gq!W¼ñÚ¤¢€?;à¢Ÿ¶Ç¿€~*Ót—Ö<%á»=rnm?° k«…&%šê<näİ¢÷ö®Oöqğí1ûW|*—ÅşøÇuk\nŞÍgö[İVâfŒ)$yq²€wtü+Kş§ÿ\0%_áÿ\0ı‚nÿ\0ôrW¹Á¿äÏşÆßı\Zş§B¶cÆØŒ§ˆ«ì£ÒU$¬íÒİ[ÒÇôUJÔrÎÂçL=%ZrI·N2ºæšÖéôŠ>QøûB~Ô¿±o‹mmüYâ-dEpÇìÒj	§§êêb¤ç•Éƒ_^~Á¿ğRı?ö­¼ÿ\0„k_³ƒÃş7,pÂI³ÕQF] ,K+¨äÄÅĞX3\0Û}óã—Ámöøs©xWÄVŸjÒõ(ö±[H>äÑ“÷dCó)ÆA ş$ëúgˆ¿eï×V±Ü}—ÄŞÖŠá\nf‚L¤€wG\0ªø=MVyˆÍx/J¼kÎ¶£³ŒÛ“]Õß[k­{4Óár~:ËkaêaáCI]JšåŒº&Òé{)\'{]4õ²ıäCò/®)Ù¯øñºÊ‡Qx™5Í\'HÒukX5°úÍÀXìíî–;Ùg_”y“F0ÁCFW/üOá­ÇÄ¿øOK¹»ñ6«­j‘iou¦@³íšIb_6M»×ß»Üdã\'öŒV}—á£	×­óÛ–í]ßk-İî~„ÈsSœpô%/g~k&Ôm½ŞÊÖî}Aº¨ø‡Ä6şÒ¤¼ºYÚŞ1DÒŞ!AÂ¤\0äàW€şÖŸğPß‡³v©ƒª\\k:¶µ}j³µ¾„æ´‰ÆQŞFuD,9P	l`à	å_öÅğœ~\nÑ|I¬x‚ÏHÑõ¨!X–Yn\'O%do&Ïwœøq°”c 9}€´® Ëj¸w^ôõ’º\\¾·Ñş®æÂ–\'êóä«¤\Z‹|Ş‹w÷Xú\'Uøœ’iêÚ\\/5ãK\Z.£–İ\\3…m²lefPwasÀçš—MøŸ§İèò]\\ù¶şHŞêQ˜²2Ê€p2§¨ó?ì·ûPxwö’ñf¯…×Ä»´u‡í·7Óµ¡{™%1<QÄÛŠ£$Š˜,f\\ääÕÏˆŸ´Ÿƒg]:Hu_iku14¶w÷BâóíÉ(İm»`°s™k†C•ÜHÒw—TÂ}z5£ìµ÷›²ÑÙêüÑ²Ê/û>T%í´÷nZ¤Ö‹É¦{vØ$†vY/£±Ôn¤ºòğò2K¿c…_¾rFÄ/,<°!¿7¿à±6\Z§íC¢É &›¼şµó–ÉQc—HÀ`Š‹ƒ‚¨í_\\şÌßµ5íáû­kÂ°Ëoı“wıözœ±Å-Ò,p»»fa<Îèü´npVRÈ¿ğWÏ7Š?hOŞ5¬Öeü)\n˜¤‘”‹ÛÀÃ*ÇÀ©<Wç+b°øŞúŞ©EÊ-uW¶‡êá18>/XLL\\\'ÍJ/¦‰ê{¿üúÊ¿dÇ5­ÔÏ«[ê¦+iS,W—-0vÅ6ìòr˜`#ÚïÅ–…q¾ÚÖÇPg-\rì—dÍcìòuœœ¸!y3WşÃšUÍì;ğïW±’o¶Gu©qçˆÄ7yvÈãr°ÚU$B‡ƒ¼r»˜·AñöæøWğkW{bûRòÅªÜh¶pÍ5ü[¦P$Ü©‹#¡e,œà.9úşÌ°¸.Á×ÆTP²§«vûï~Hø\"Êñ™‡ãh`©J¤½­M\"›Óêû/7¡î_³••–›-Å¼’/ö„hÂß÷ ^ş:WÚ	mh˜|²)=OÄ{¹4-wDÕÚ	f³Óä•n<±–A\"…sÀ’Işî:+È¼7®ÍIñØëZ~±&gyuÖa.#ì¬àŒ\0›¡Ù${A\"UgC¸²²§Äø(†¾Z[k:Lw—ûí/N…ßQµ;C,›äW‰Á]š0Cn9è±Xü>‡ÖqP†÷“²ü-ÏšÂåøœEªáàç;ÚÑW…şóÚt;(|qá¸n55·’áüÖXfeÎÖùåÚYxR3ÁàóÁ¬Ú+Ãºµ÷ÀOi~ÕcğÖ¹&™\"é·ˆvY\0Êã\0•İ÷w($nÈâ¼{àgüsáŸÇ/Š>µ‡ÄZ-ö­\'‘c.§kp]L~ì[’GÚÍÑw`@ÎHgâİŸ‚ügˆ|U˜4Ë²Òj_èâæ6øÖ9ÙÄD©ÁØy1FAÚWƒšeÙ®sÃVR§¬\\¢ím5×£Iİ?™ßŒÊ3,§\nxÊ4”c(Şúé¦©¦Õ­ògÄ³÷À?ÚàÏíoã©ôH[XÓå’ëÏj‰yÌo	·<r<®71dÎÂ ~Súsğ_Äz×‰|\ro/‰Æ=z$Šö+8$†˜6UPHÌÄyl‡q?6was´|³¨ÁA~ÏñÏÃºú¿/<Yxš{ˆ`K;(ò\"[‡™$G˜6–É<“ì?¾#xá‚uj\Z„ô»X­ZS©8±ÊÑ°ØâC8Æ‘3mûûÕ°m=Á¹nQ—P«»êÆ2÷œ¤šRi_T’½’¾¬úN7Ì³œÏF¦i„Tg(¥8¹E7efÛµÛ¶ˆ÷,óFkç?‡¿ğRï‡??h}áÿ\0…_W×.µ†œ.¤–E”&($˜ŒÈVFÈŒ€Bc$‘Thoø*WÃ/Ùëâ]Ç†oÛ\\Öõ-?ı•m°éïÔ¤ò .	Tİ·¡Á¯j\\Y“Ç,SÄCÙ©r¹_Nk^ÉõÑßCÂ‡	çRÄÇ°³ö’:+¿-íÌ×Euml}5EQğÎ¹‰¼?c©Z™\Z×P·æñ˜Ûc¨eÊ¶\nœÁäQ^üdšº>}¦™zŠ(¦#óOş§ÿ\0%_áÿ\0ı‚nÿ\0ôrW¹Á¿äÏ_şÆßı\Zğßø.Ÿü•‡ÿ\0ö	»ÿ\0ÑÉ^åÿ\0Zÿ\0“=ûoôkğœ—şNF+üÿ\0IıÉ°Áéu®«òş\nãáøt?Ûw\\š%\nÚ¶›a{\'[Éçò„Wë‰uŸøGtËï%î>ÇÌbFUi‚Hˆã¹¿à¨~?·ø‡ûhøk=Ò[é–özrarÅ’İ×ŞY$t#ÕH¯_Æ©Cû–î¤m÷Kô<c?õŠrÊ”¯éÍÖÇŞ_±‡Â­ã¯üÏáí‡‰ô/VXôÛ˜m^öÊ+–³>dğ¬‘ùŠB°N2+òïöq×fğ§Ç¯êPÙÜj·Zn»eq\rœ_ëo¥I‘’ëó;\0£İ†köö[øc7ÁÏÙ·Á>º_.óGÑí¡º_îÎc\r(Ïıtf¯Æ/ÙÊSí\rà	ìÇâ]5¾WòÛ‹¨\rü\'ß·Zøÿ\0°r¡–›\\µQnÊ÷J’×½Ï°ğÇL³éÅŞœ›’Wv´½«ÓµÕ¶>ñ÷ü;Å¿¼G¦ø£VñBkzÇŠõ%¿ñ6–L¿e‚R^V·l–\0²¤@¢‚#Sò‚ ôŸğT¿…ğÇÀVÒ´K;MXëébš”6±Änì ‚X\"‹z€X\"Gààşë<¦¾«X#1]I4—–æâÇ¶òÑ¡A`€‡ESåù.[†Ù‡=Õkç¿ø+¥±¶ıœà¥·†KB?³âc²İ^ÚvWŒÖÃäã‰a_Äü!–e¹aWzq»r|Îë­Ş·»m÷løã,×5â,².§»NvŠŠåIJ×VZ4’IvHòÏø#æ‡µâ/ˆËs\ZÏlÖ:}³ Ÿ|Ò\\FŒ°§k6~b\0ëÔq_ş\nÇğÿ\0EğÎ£àkMÒô+PñÛî5ôÛe–Sög)0yÕ¤î8bd|Æfÿ\0‚?Fßğ”|F‘mn.İ4ëŠhc0KçJÉ(ó]õ+Ç^¬Cş\n÷©Ç5¿€lã·¾²0Ë<–×²M’% l¹%dÇ¸2±ÎãÏJøhÒ„¼1æ’M«ÛM¿|¶í¡÷Ò«R>+òÅ»J×Wß÷×¾¿‰ØÁ\'tªşÌ:ú]K7ösxÓ$\0$Ë ±ƒÊ)!8RÒ˜”äc…-^\'ÿ\0U†ê?ÚÚÖád“@Ü¥?z>ßz<ÅH]ØË>rç\0^Åÿ\0™²[€ş\"İ¥Ã©y#i?zÙÀ…tÖ1\"• ´¦E^H_—’\0çÊ¿à®ğY~Ğú0)O/ÃØ•B²¢ÈuâÁCq·\'¢|£:VÙ÷ü›|7ı¹ÿ\0¥3ÿ\0“£‰õ©ÿ\0¤£ßÿ\0cïi?\r?à›ºN¹â{‰-ôM/NÕ®-6 )5á½¾ˆ!8Ï˜|ÈÖ5Ü ³1ä®G˜şÁ³F£û]ü\\Ö¾0xÏíVºL7ÅôµşiïSnÂ…\r²ª($|Îœ£ŠùóâOÆ­zÿ\0ö]øoğü¨µğåŠ^êá£nu	ŞúéFşå–ÇúÜ‘÷Xı÷û|t_ˆ?²‡„äğıÅ¾?†£şÊÔ´»[8ü¤6Á7à¸9–u‘fQ¹n”w®®Ça³Ü~+®ÿ\0w„£NJ-|u9c®½ õ{3Šòü_eØìÛ¿yŒ¯Rkş]Òç–ŠßjmkÛDõ.şÕŞ&ñ—ÂÏ…-£øOGÕµj-‚Acö«= ìŠdŞÏ±a‹íYB7)’Üìsû;ê\n>ëxÓMÅšåëÜëWíx·—DŸ$HÀ[]ïBYÜF	là}!ãéÑ| Öu-–’ŞÍåçÚF`ŠX*GRÉ!<Û‹:ıOËÿ\0iÿ\0~Ô^\"’ÃÁ±ÜxwÁ~\Zµ†Êï[º²[Ëé\"`°B?w&}òù»¹`+ôœÒ8\ZYÍF&r©YÅÆfµø§g¦Ú96’JÇåùOöl¾N4èFJUk;§¥”!ÍÕ]İF)¶İüÏ‰ÓN?ÿ\0ie³°‘£:‹ÎÆSÉ¾Ú‡•#`8<Šıfı¡,ü\'ñ	´ÿ\0x}|E˜íÄĞ,Ë¦àÉoæD„ç.ƒz‰ şMø²Úh?iÍVºšúá<_4fæá—Ì¹q|ÃÌÆîcÉ(\0É;xÅ~¥xŠ»´±õ+˜®\ZA¾âé¯—eófu@VßË‰CòàÀŒ7ğ‚Œ*SÌ¨Î+—™{¯Uöş]ú•ªB¦WZœš—#÷•Óû\Zß~¯ï?-dØSı¤~\ZÄÉÍqâ=16Î¾dNMÌ\\:ÿ\0óÈî3_¬µ¿ìıá[¯Ù\'ÆÓêZ6•«jš/†5[«;û›(ŞâÒo²³ï‰ˆ-İ]q\Zd’2)c_ù:…\\çş*}(ÿ\0äÔUû!û^ÿ\0É¥|Lÿ\0±KUÿ\0Ò)«ÂZp©ÃÙ„*$ÕŞUğ~2Ô>#ËgM´ìµZ=f~DşÃÚî¹áßÚ{Ã7³ûÄ²G{i¤Á ıØ¹šÊxc’N\"ŒÉæ¹şäoß\0ı]áÏø#>§£|nğ~§¬xªh2Şµ÷‰ÌöæŞi$_Şív2¬Òü¬Çk,y$ó‡üşOËá¿ı|Şé¾î¿g%şïzÏÂ¾ÀfÙLªcâåìê·v’vƒzlï¢wè´¶¥øÁÅYOÆ]5iE);&Úæ©®õ\\·mZÚ½o A”˜ş”Sè¯èƒù°(¢Š\0üÓÿ\0‚éÿ\0ÉWøÿ\0`›¿ı{—üsåıäàŸø¨/ôkCöÿ\0ı<#ûOø»@¾ñÄK_ÜhÖÒÛEÆß\nì­œI\"‚¸ãÖ¼ÛÁğEÆ±İCñKÄ÷6s\rë&•6Âeö3‚=À¯Å±sŒ\'b3Œ5VVKÚF/XÅ6Ö­Y®ÇîRÏ²<gá²LV%Ò©wû¹Ii)»&¬Óî}!ûmşÒıš¾êš¶³\"Iy{–ºU†G™rWå\0àRC;…Pz’ª~\Zÿ\0‚wşÇúçÆoÿ\0¾ ZLtµÕ§WQ´rë7Òo¸ì#ıR¾$ÁÆòËŒ¯_²¾Á5¾ü&Õ ÔÛF»ñF±jCCâ+¶ÔdˆñÊ£b% €A=úW§x·Ghu|ÈnæÓïÊ3Ék¿Î´™@¿wó…*•û¥NxbWëñ3_7ÇÑÇg6P£¬)Eó.m=éÉ¨ßmVózŸ†âª>__’İÎ¶“­%Êù?–NVNú¶îû-\rı+_²ñ“Õ…İ½å»p$†A\"çÆG~zkğ¯öw»m?ö‚ğÂªÈÖş$Ó¤\nÀÅn¢ H‘Ğ‘_²7ú¼^³—PÂM/PÓ-‘Ú…Õ¨…äTq€[äŠE]ÃrH„©;¾+øÿ\0òøG¯ü\'¸ñ¥¯5Ïˆ1ÛŞIko5µ´š=˜’2HÁ?×¨¥ƒo\nHÍx>#pŞ36Ì2ø`¹o)>i%¢p{nöè¡ğÏŠ09._˜ËÍjŠ\\±rÕª›½\"·Ñ6¯­®}}¥Éo—¥Ä—º…å½¬ZµÜV¢H’ÎHY>eÚQó(Tn	X$\0¬OÌßğU›şgI#_/ûSM¹’Apó	PÁx‘J|À4™s´“µU{ô÷Û‰ú.•ªÇç‰mRö¡}ó\\Ä‘ÛÊnİ¦ë$ğ¹A³ıfÌ‚°òïÚ_Iğ_ÄQ¾øŠûnµâ¨§M5	\"•(á¾QµZ0Éæ\\¨F»OíøªŒ1¹F\'\n‘Rœ\\UÚ·4´Š¿›ÑÂ5çÎ0¸Ú”äãNJNÉß–:É®öÛòGÍ¿ğJ¾øñ+Å«ã»Ë6ÓZÓ ——yÇ$29hòí.²dtËÇ\\wş\nã›‹\Z7‚|OáÍ\r4__\\ßÃ¢ÎĞµ´ÚæÑoæŞ8À~DŒ•&×f|¼ûWìÅÿ\0…ğ(Ô­µÿ\0ëÚŸ‹m­İ4™mÎÜ±D‘Døg2)WC´Sr2§Ò¿nŸÙgÂÿ\0µŠ¼ ê~2Áğøf;¹<ˆíı&7[qåÆìËl¡…Ã|¯Âñ_“áxC‰?ÕJ¹5hÅ4×$S\\ÎóR|Ò¿*KV’ÕõzYş·ŒãN\\eK=ÃÎrZóÉ§ËSq\\±·3oDÛÑt½î¼\'ş	;k?ÀXBÌÚ×öİÌ–ÑµÇ–ˆMŒ/Ü¶Õ(ğ1ÉÎŞ»xòÿ\0ø+©¿im%¡¸k‹fĞTÂÅüÀÛ.÷aÿ\0‹/¼““†,£…\0}³ğëş	×ğ·àÖi¬xcD›TÕìÕ¥]Rê¶^J¥J–ˆ#W\0’\"îÁCÃšòOÚoö<Ñ¿iÿ\0‰ğø¯\\ñcé¶\Z>mnlôËO3\n/$–K…™ÉÄ,nÇÊØ`éTífœ›VàúY\Z„eZ.;KK&Ûm´­kê•ü®xÙ?\ZäÔxÖ®)J4&¤õ·qI$“{ÛKÛÎÇ‡ÅğLüXÿ\0‚gøoP·³Y5\rÉwu`Ñ\róH¢şçÏŒ€IÛ*0ÀÆCÚGÆ$ÈóOØOãÊüø¿\r¡,á¯4v·ğÛH7,NÇ#h\"I\"-.Šûÿ\0à÷Á½à§Ãy<9¥Ùİi¶°ÏöÛˆ§½ûjÙ]4[®w—Vo21 wÚ6œø>·ÿ\0Ÿğì¿µ]FçÄ\Z¶Ÿá»‹™ÓJ†Î/6AanÓ«2€Å¢DÄC&M£%A74à<ã\r[.Ìr˜¯oF0…D¤’|‰+İÚé«Åé{XôòŸòLN3Êó™IaëNs¤ùo%Ï\'+$®“R´¢ïkßĞ¯ÿ\0Vñ=æ‘ğ§Ãz5¿—i¥¨²jĞÃtfóeµWØ%9ÈË$Ò2à‚Ûs6Mr¿ğMŸÚ3Â	¾x£Hñ§—y%ë^Û‰ká,	\0Š¹.ùSò\0‰@	Î¼xÏöMğÅ/‚š·…-n®¤‡E¹TÓ¯-5íF·¿h¼ãûéNYRİG˜­´fÚ€k7ş	ñû\nøÃ®¼Qk¯/.¼3{$6·`Cö+i@(¬‹È­.|Ã’ä§–Œ\0Ş¬{ñÙxøº–s†ö|²‚ZÊê6,’^ì¥gª²JûØóp<E.­‘âİNxÏ™Z6rnW‹oŞŒSIEİŞÊêö±ğ‡ÄKÿ\0+ö™ñİä7V[|[s<ñNŠ³[§;::‚T:ò@*FH¯Ø?xVÛW—ÄZ…¬ÍL\"IPÈ±NÍ)ĞH  fHÀ]£wÉ?%ş×ğO_†şøÙ?‹<Mã­cL³ø¯²hğiùio.§E\08TÜîø1ä€N3_O~Ë?üğ‚ÓÄĞõY¼G•ı¯lÚ¡¾Ô­`Ã%ºÎÌîËòïe^L´bŸ‡¹.;(Åãhây©%o}9}¶½Õ‰;Ù´ì†^%q_à°ğ|ÔàÓ\\Gì){Í¯…«hšÕj~KşÆöœøRÌÀøI´Iÿ\0§¨«öCöº}ÿ\0²WÄÎ¿ò)j½ëÊjùsàßüûÃÔá¸ñgŒuGjÊa·Óà\Zb¤c{‡’Lñü„†¾«ñOÀ=-ÿ\0gm{áş„Í¤éúÆ“{¥Å,²IxÖææ9¥f‘ËÈÛ¤,w>IÏ4xwÂ¹¶U•âğ¸Új.¥Ü}äİùmk-5ïÍò+Ä¾0Ê3ŒÛ‹ÀTrT¹T›‹JÊIİ7gòåùŸ”?ğLcÛÇá¿µÍçş›®«öz&Ü¹éÏzù\'öjÿ\0‚Føà‡ˆ´İRÖ5ïx‡I.m§>ÖP‚c‰·G!äe à‚	ëtM‚½¯8o’å“ÃãÒR”Ü’Nû¨­m¥ôèÙâø­ÅY~}›Ã—6á(İ«]©Iİ_[{İRŠ(¯ÒÌBŠ( „ÿ\0m=cÂ¾ÿ\0‚”xS^ñ^§áû^İê\r=o\ZíoW2s€£-Â’UA\"Çì÷ãfı…ÿ\0`Í/Z³ûˆï¾#x„Ká}\"Úí…•œ—ûD­+.à±,nòas¿z~j÷O‰_²LŸlüG»Ô,[EÑ|;q¡\\èóÚ[Q-Ê¾[pUM³Œ‚­œÆs^Iüÿ\0Z€šïÃßøN£‡IÓüIÿ\0	‚fO%Æ‚à¾#•‹\"•váBáÉ“-•ùMl§6Ãã±8Ì-+ÊN«ƒVºn4ìİ÷Råj)í%w£ºı^s”b0\\.³QŠ£í›MFUn••Ó2rkâ‹ij¬ïx“ö·ø§ğ·âÿ\0Œ>k¶>Ö5ø|\'?Š¼1cisomz!^Úh\Zg`ÍåLªDƒ9ï|ı±|Añ£ÂŸ\nn´}:ÇRÔ<EáíO]ñ\r¤VLYbØEn^@‘´×®ª¾a#b¿#«±øSû8ë?[âGÄkH×|dÚ$~´L²k]>ÆØ9’B«#»<²ÈÌK©Ú\'Åÿ\0bØù´¿ƒÿ\0\Z4ı\'^¸·‡Ä7š—…<7ª¬GıÆ‘\rÙ ]Mp	7˜w2í„sšX¸AÎR„ı¥“kš1‹Œ£}õ–°w½”£wsÎ—ölä£Ô¦©\'$¥Ë)IJ²è£îÎÉ+¸ÊÖLÒğçÇ?|Hı±¡ğ&¾Ş–ßVğ“êöÃG¸yNzŒñIi,èø¸ÚLÈçjçw\nœƒ‹ÿ\0¬Ó-üKû.ipÏgö¨íüG©Í<sÀ^Ô!@ª~a±¤´d…/Ğ]gÁOØÆ?\n~)|=ñ,5ğıÇü!^_=´Z$sD²»ª¦%Âà,XÚ7aSö`ø?¯~Ê?³f­á½Jk-^õY$[ˆ7[¬ŞmÄqKÌåHM¨r~écÑ’àój™N6J*²÷šn*j“ŠÑëª’Ó¶ÉuŒÊ)å•°˜	ÅÊNÊIIÁÖRz­4pnıú³åÏºG‡`øÅûQÙÉà†× ”i©eyeg[xuŒ,Zíöêª2ø[yˆ†Ú2Ã¨ñV‹ñKödŸÂz…Ÿ‹­n´AtÍLFöÒêOŒVàÈŒã‘\Z>Ûˆ`p¤®Óè\ZWìÑâH|{ã}Iñ½´?¬\"³\"M{ËËvŠÁ¢‘b1b“\"IÀ$°ùT…ùsZ—²lz>7†|BÑè	ã™4øä¶v¼Ô\róC²¾å\0‰%2nÆä!UW|\Z</™Fu\'\ZDú\'eŠö‰­u\\Éó+«$º£è*ñ^XáN­ùiµoy«¼²iétı¢Q\\®Îí½“0üû}x»Â²¯ÅOMcá[øÄŸÙ‹GrlîbŞßÌ 6á†9ŠÆ0¤â®ë_¼Wâ?Ú§Â^û.—<ºæˆş!²‘Y­ïÚÕ¦@¥‰†@„ä1*ˆ?{œ¹ı˜u©¼ñSÀí¯Cggñ;^]^Í×Mqio –4mç{ªÇå¶#Ã¿;”zo‡±÷ˆ5Š>ñ5çŒôİBMÃ’è³¤švÙ\Z$ŒI,™@±KÙ˜HH Ø¾¦Ætc>{~ï™Ş=*Ïú­éòìµ^g‘Š©Ã§K’ÿ\0¼åV—Z4ù-¥•ªóïóĞ—öø“ñcÄ~ø•«hhş)Añ-İÒ\ZŞO´ŞÏQ†ÚâK”†Şß1gI&G;™«Ããç‰|eñçÇ¼ÿ\0„Ri´ßÉ­ií¤ßÜ-›Jñ©šÛ\"WIQ˜$lé’1Eê|ûø¿Køgñ‹À6^:Ót½/ÇójV‹’â`³¶Ò¯ ˜……–/)£U,\0Îà©ÿ\0b/üñ£âË¯é:¬7^‡ÃqiïnÌŒÑ”ªGq‡ÚÛ²Â„Âœ=£\ZTgu&æÜ¢ïwSÍ¿äu’iİã±j¸šîP³ŠTÒ„•¬©´ôI_ãMzİ´Õ¼×Bıµ¼qà„ş$]Âvv^8×$ÑÜÛ¤é=©{é—mª}Ô‰FÒÙ2±b¹\n\n\núâ·ÄÛ‚ß\ruÿ\0GbŞ^`ÚšCmæ[£ÇÎĞ¤’¦EÜ¬,\nBã­â~ı‘¯¦ø}ğ»ÁKâèm?á_ëÿ\0Û‡P—L¸h\'iwhŠSäæY$MÎñP’rB¨¾6şÉğüS²ğ®Ÿm|ÖšNâMcY‚yg™uHmÉC³xRÏ*ÄL¹€C×5ëåÎèàë,UåQÂŸ/3NÓpJ{tSÕ÷Ö×<¼îYLm©Ú4”êsò©+ÁTnëw%Û­Œa…[Ú7Ä~Ó|G¦øª?iö>!{˜®[{AcŒj+æ)Ê34·zåü´ÀÎíÕÚx;ö¾×~şÄÿ\0¼uáÿ\0ü;Ğu/\røÖ]\ríìtç·µ™p¾k¬nÈ$$\r¸\0WÑ_¿dk~Ñß> xoRÓü7qàSqô_c2\rFÖ\\\n…e\npÓÄœs‚F+Ìdÿ\0‚kk×²·Ä‡2x»I¼oâ³â8n×N‘†¦h™Ñ¿x<ÒRÆa‰#|êÉó¼%ƒÂ\'j~Û’JÊüñŒ¡k¶Õ¦äµì›Ğú	gY?v=ëQĞö‘jZrJQ©ğ¤é¨KNöZÜäÿ\0nOÇÚç…~ßxãOğş—iqñ_Fm×N‘ç™,Ì¶n$\'\r)fÁTT£`¸*Ç¹¯ôÚ³ã¥¿„ü¥à_\r&³§c¾ÕÃ¡ngq2©İAÎ0+Ñÿ\0koÙkTı¢¼à=7O×4ı&ãÂ#²×$¸¸³y’ao‹µcWSó3/ÆyÍb_şÇ\ZåïÇÏ‹3 Ò–ßâG†×AŠÏìR-ÜYÇš_~\0Ş¤í\nÄ©ƒ]•²ŒÎ:Uh©4åäÚm¥N¢tÜRµ´ÛKmÛ*«–Â†!¨¸Â¢QJI&êÒk×š\nmŞúï­0ğ7íóñ/Wµøªê\Z/ƒãĞş+j¥ŞyFãíAÅÏ•¾5İ¶$PËÍ#1S¹\0\\ø—ÿ\0ñlş7ñ*øDÓ5İ?Á¾!A}é÷·Z¯ˆ™X-Ô–òCû¨lØPáËg8ÀFŞµÿ\0‚yëÚOÃ¿z%¯‹´Ÿ´ü#Õ¥Õ&»—K‘£¿İ8Qb‚0FÒKŒ›»]GÂ?Ù;Æ_>.øêïÂş0Ñağ_µI5É´ûí&K‹½:îBL¾K¬È˜lã.­€¨6¤¶tp¼Dã\Z5e4Ÿ\'4“‹’~Æ7¶«ER÷óèãsLV\'†bçZ„\"å>X¾u/m.[èõöV¶Ú_U+Ïƒ?l|Pı©õïZê~\rğKøo\\[/ì]~ÆâMS]²]ÆK‹yÑÇ½Âå#ØFKƒõd\')_:üKı¼Iñ÷ã‡õojŞ]Á¾![ÑäÒ´©bÕäŠ/š+9gyX,~`Wr î#€œôT1ùK|××d4ñĞu–6ïŞ÷[İ¯ğ¦Ôm¶–RŞÉÜùöX	*2À¥Ê¹¢µJKûÍ\'.mõø[µÚ°ê(¢¾ˆùğ¢Š(\0ëM€?úôâp+‹ø‹ñZX\\[èš•ŠêV¬\ZæI-ZêŞÎ1ægVTˆ¨¾vÉ@RH ßÅ‚ŞøÏcckâ×Z¶Ón–öÚ;Ûb™C*¾€Ì9õ5»¤hÖ^°·±±µ·³µ¶‰a‚#Çj0ªª¸\n `\08â~ ñÎ£â­>ŞK›[íF8ä–e?gĞïX¶í„œ9e2ù‹´™·.Â¡$¸Ô<H°iío«KŞ]¬Bş£·™“œ·LÊ7„&C¼§Ãc8á©ªªŠæ{»jíµŞåK9ASmò­•ôWŞËÌ÷s„=\ryİıİ¢jšn¬Ëş‚%vŒ¸V–ßqhäCÁ$.áÒD=ğ÷~/Õ5É,ïö±æÜ]Ao$qO,f0g‰Éß6ŠÌ[wëêÖ7Úş£5Õäpß_Éºğ¥Xÿ\0ÔÀ²nDŒE;K§%T´na·)Ÿ1Öê	ğå¾›·ÒÉ¨[HL­b)’*~V0¬ ”\n¤\06ŒœĞÒ4ãâe†;kæ‘¶[Ao<,$6ñ´¶Ò„S€ËX$;¹$ƒŸ› VÒáµÔí´ÖÓìw,Z$KfŞLM€Šä“2C¸lèOÈrÊèİOÂ4mc[ûO˜ó[XÀ BË·oÊ¡S 9FûJÀ6IëL¢§À­RãS›í·šl6à:Å-„\'…Yv¨ûÎıŸ*îvHÿ\0…	ÚWø¨Á¦xÇZ±’âÚÃR’\'·³˜ìD½æ\0èşYÇörÀWÍeÉ8f÷SÒ¼ïÁ\0íü3¯¦¡}q­-œ&ŞÍ­³€\Zl³,’ª€À\\.F1€²…b/‚\ZMÅ•İÁY£›J³C±EÊÆÒg‰dÎ%T(>e\0fFbş2Ç§x›B’Åî¬¦šÔ³ÜXµäpÉ</Ê¹b6°fe-¹W$Hîa^‚ï¯>!Í¤ËjšösµüsİXˆõGÀVmêÊ\Z7ó\\²¼2.âWìeÛèş}qÖMvòëV-d–m=‘£•wÉ*\"ä:âF;¹m¬Tmf#×<)ñRßÅ/ºÒÖky¡„ÜFÎèÛĞ\r¸)%y‰ÃrCgµy<qá\n×^l\Z”ÍoCkÌ8;bhòÛ 1™b¸\n<±ŒæJÜø¡ê1xŠÇQû,vúmõŒÒæßS{¨#bĞƒÂŠ¡Ì‚F,‡iÇQ\"Që»yü1@\\RÑRP…rhÛKE\0f€¸4Q@W\'4´Q@Q@íÑYş)²şĞĞn¢kéôÕhÎë¨d¼\0rX3\0ê{f€2ü}â}6ÆÑ´ë£u3^@í$vÒ˜]!í&ä/mÅ×\'€I¯ÔŞÖò(íã—OµÒô¨Y£;¯ôxK62Ç½ÊieÆÇ#¸q-½ã«ôIio5K{ÇWææŞh­b@2-—šC€·9A1ìmù7‚oxK9£Ôd“M¼i%0N±ùÒÇ4¤\"\0FÆ;‘U˜¢VlîE)h™v/ßxÍbšêçí—IµÌîÆ²ºÈÁ÷íY¤\'SL2*JüûJÉ¨Ûİùv25ÃZŞ«ÛEwtòÅ\Z?“n‚İ¥+åoyC0É+µ\0Âš4x·ÃÓZÅn©¨K<×İJ)ò£Uâ?¼G@\\œ†cÕÛ>¯©è6:Ô-å­ämÕg‰dSøhæSÅ´Íbh§’{K>+¤ùÑŠŸ³é/Ú0‚Ë…ª’OÌŒÜ‚£`æõİbGQ†Õ^5lGmö;¹¿Ó,möÚó$åòË0\\2KË‘ìš¿À­Q»kˆa6ó3+dâdF7–\0ÿ\0E¡ç¾\"øeÃHmæ¹Óg{ÌCo¸¼‰µ@,ï“Ì[8VA’0?„—[öRÃr\\+I\"Ê‹r&3…‘Ø+¶(Ù\nÍ<l¬¡Ä`^´>|E’ïÂQÇ¢İ[ØŞØ¬“>—wóµ	Y~ĞÅØcfô ÀÃWh±ğ§_½ğ¬ÚŠ´M¨F®RÎâÚ)¦¸BìäîÚ)s•P­å—Û¸ıƒq¥ØI­& –&Bbµ‰fYæ‘Bø\np^ueãÈS·;)†§­|KøÒş³·m.Ô^\\Mj/V6›ÍS´ˆFÒ6ÈÑù	83€ÙãĞ‡Jğ&Óc×f‡E¾¸m¯x--^óN[G.Ù„‚FmòíPˆC²åTg\r°û_ƒ¬.t¯	é–·“}¢òŞÒ(§”ŞlŠ€3g¾H\'ñ©jÃLÒ®?âÆ•zlcÔ,m¤½kxŞ)í£’HØ«nQüL­\Zü¼åZO•»\nİR3È¢øYªøûÃÚ=»^ê\ZzHIÄ†©ÄŠày-†XĞQ†\0aG>Ÿáİ\n?iÚÆÍ\'—¹šGtÌY˜à–bO\0\0«ÀbŠ\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0+‘ø±¥M¨é¤ÕZÃLVE­Òİ1p\'’ÌT*C\nåO]\\çŠ¼qâíFßíÒ[éÖä·‘m–F ‚L»²¿)eù@ ;AÚT„Õ.-¦?KÓãŒî[©Ayy!z)äÏñ“!n\r\"–ËğÇ„¯îõÉ<›;xï‰–K‰“1}ªK‰YVy\0Nm„‡;Tïä(Ü¤ú¯ˆü\"Ú­†Ÿ§ÚL¶\Z|¯Ÿ(|J¶4Çóì9¢:ÕıÃ–^µhl­ÒÙŒZG8Ë³YY‰\'j®øB×ÃP)8Úè¦Én6i>bÇıÕÜÌÁG\0±ÅkQEHfŠ(ø‘â«\né6¿e7¹¿º[H¼ÆÚ¡Š»p@-³h$`3xÍy¯ü,5uækÈRcİCtk}2.	_\"4hó#1E›äänëìzæ…iâM6K;è#¸¶‚ÈãŒ‚#¸ €A‚È7Â8<1a5‡ôİ-t›®e°wkuWÚÈ®ªü•UÔg#$\Z‹Ïø?áÍ†¹ãÈ59n Òc¶·Ôdµ“Ì\rurÒHQäŞr\n´BCÆæv$’õ¥F=+Ÿøqàù<áØà¸“Îº`¾iYWj…URy (œbÍ» ©c\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€?ÿÙ','JPG','drukair.jpg','DCL','A',NULL,NULL),('8e50d60c-f2a9-4316-a5fa-b56950f68bf2','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-01 05:06:30','C','Bhutan Power Corporation','N','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0È\0\0\0È\0\0\0­X®\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0%\0\0%IR$ğ\0\0ğÅIDATx^ì] UÕ¶§ûÛÅ½\\ºIQ00PÀTlÅn±°°0AÅEEÁ	éî¸İ§ûì?æº‡g¾÷Ì÷ßûÿM<Ş³óì½ÖŒ1æ*FÁåßVN<ñDTVUbâÄ»pâ	ÃS{ÿ+ÿ*Ñ§şşW~§4z\ZSßş\Z™<y2ü	¼üâËÈÉÍÆ‹/ÍLù¯ü+ä¿äwJYy^yåœ>z4Z¶l•Úû×Ëe—]†U«VbåÊU©=ÿ•¿Rşk ¿A‚\0fÑ(fÌ|{tÂóÓ^‚ÉdLı×ÉÆğúë¯cÒ¤R{ş+•ü×@ş‰ìÛ·OO›¥K—¢¾¾—¿gu6òòSgüïˆTÛş½ûPÒ²EjÏå¯ÿ\ZHJ|>\\.WjˆÅbĞ Ú¶kƒQ§†#GÂhük¢E\"‘€Á`Hm5‰Ïïcåè`±ZÔïêtºÔ‘ÿÊ¿TÄ@ş¿J0Ôúôé§ufq\Z•TëÒ¥‹öõ×_kóçÏWÇ¯D\"­¢¢B[·v­6}útí†nĞzöì©=úè£©34mÜ¸óÔï®Y³&µ§IäZÙÿÃQoP½^¯:gİºµZë’–Z‹Íµ½û÷ª}~¿_Û°~½¶gÏµı_ùãòÿÚ@Ö­]§½úêkšßçWÛÉdRÛ´i“vá…j·İv›Ú÷kdı†õÚ£<¢]~ÙeÚ Aƒ4F\"Íf¶(…vØZ÷nİ•1ØìVmÀÀCSWiJ‘\'Ş}Wjë{‰F£Z„‘X<®]0nœ6åñÉZ PûDìß¯YMv­s§N©=šöÁûï«ß¼{âÏïù_ù}òÿÚ@~«HDØºmkj«Ijjj4B ¥˜Çª=şøãÚŸ}®µnÙJ»ó+êİ÷ÜM#±¥¶ş±ìÜ¹S[²d‰¶aãí“O>ÑæÏ›Ÿ:ò½Œ:e´6|Ø‰©­&Y¿n]êÛ÷²yófí©§¦j=zôRQRõŠ+®ÔÈ¯RgüWşü×@ş‰ìØ±C»şúëµ´t—R¬Î]:§|/û÷í×&Ü6!µÕ$ï¨\r:ì°ÔV“Ì™óºÇ?Ç£}öÙZ¿~ı´6mÚh&£I]“—“¯mÙº%uV“Œ:å4íÆoLmı\\ÊÊÊ´Ì¬,íã¥ö4ÉûïÏÕt:½ºouuujo“lŞ¼IEªd\"‘Úóÿ[şk ?‘P(¤=ÿüóÚèÑ£5‡Ã¡”è0*ú¢E‹´G£d»ªº*uv“¼úÚk©oßËZòŠâfE©­&‰„›¸ÅÖ­?B%N8Õ¿ÿÔÖ÷2ïÃyZ¯n½Õµ<òpj¯¦¿|¼6ù‰\'R[?—ÏÉäš»~r½Ÿ‚c?ä+bl²O>=4)µ÷ÿ·ü×@(âµo¿ıv­¤¤D)GÇµ£>JÓéuZ8NÕ$rü…çKm5É#>¨=øğƒÚÍ7Ş¬}C‚Pú÷í—úö½ióæÍKmıX„dËıß{ï½ÔM«­­Õ;æxõ]È{çNµ1cÆ¨í»ï¼[{çíÙêûß¹ß\'‹?Im}/OĞ°^}íÕÔÖ÷’•­\Z5*µõ_ù¯Pîºë.Íd2©ÖE”ëµŸD‡‡~X1bxjKÓÊËËÕy&›Y³§;Õ÷={¨c³Dé(Gq”6uê´ÔÖÏå›o¾Ñš5+Ô¬V›Ö¼¤˜0íĞŸe¥n¿ıNmÂ„	Ú¬Y¯hŸ}úYjïÏEÈ~\"‘LmÑ\0~­ÏÀ^Z«6­´\'¦LMíı^ÄÈóÿ7)--UµÏ!‡h‹ıÜàş¯Êÿ;yõÕW•÷<(’¹r-|ã‡òÌ3ÏhGydjë{)*)Ğ\Z\Z\ZÔ÷šê\Z-¨ïeÁ‚µóÎ§wvàÀÔŞ&yîùç´SN;5µõûEH|ûVíR[¿Njëj´÷ç¾§\r|˜2„â¢æ©#Mòå—_iĞ©¦±ŸÉw«¾Ózwï©®“F²}ë×­OñSş_ÈöíÛUå>÷ˆ$òöÛo§¾ıXz÷îı£ôªÈ}÷ß¯½óÎ;©­¿/_/ûF«ªú1_R<èĞïS½DvïÜÁOmı6ilôh‡=@•İ„ÚwÛm·j<öˆú.\"ğnÌØ1Œ¬]Õv}]¶wï^­m›¶Zfz†Ö¥c\'uıkt:ÿWåÿ´H´°X,Ú§K—¦öü}yá…´îİ»«\n—k®»î:µÿİwßUá‡\"°iâ]S[¿]ºwíúö¿/÷<pÖªUKõ}ÔèQZ}}½ú.\"Qòê«®RerÚ¨ÓR{5­†\"ûÎ;g\\jÏ÷2sÆ•’¥ÚqşÓåÿ¤ˆRTôââæZfffêÈß—´´4íğÃWœcÎœ9ÚwÜ¡\rv¢vùåWh>ò}ë÷AÙ¾}›¶eóÓ®¿VÎ?ã|•øw‘æiãÆSm%Oò›ek‡\r˜ÚÒ´ÙŒ¸RÆÖoHíÑT+¿ì“O×.S{ÿ³åÿ”¼ñÆ›$·VE¸.\\˜ÚË—d…İzë­©­ß.;vnK}k’wŞ}GİS\Z¼õúlíËO¿Hmı{ˆ”×wß}—ÚúeéØ¾£öÑ‡¥¶4­Y~6 ÿ÷F#b5[´‘#F¦¶4måÊ•Ú§Ÿşóşï*ÿ\'äå—_VÑâ ÷œüCÙ°q£Ú_YY™ÚóÏE\ZåÎ3Vëİ«·väĞ#µFocêˆ´/|ªef¸µ¾}IíùmòÍ\'ßh¾;7µõŸ%W_ueê›¦-[¶L•k,SÛK—,QÛ?”ûî¿Oí§òŸ(ÿÑòÎ;³5WšSÓA§½õVÉ¾ù¦›‰©[©ï?”ñãÇk;tHmıc¸árº´“O9E;ÿüóµ,B´®İœ^»víÏ”á×JUy…öş¬_N\nü»ËşıûIğ›2x\"íÛ·ÿ[*\\8Ü´i?Na‹ñü´-é?Işc\r¤²ºJ3[ÌänmßŞçí³²2´çşÜCäå«Ôí?éÿTV^Úú^~ğÁÔ·ï%??ÿw÷øıâıÅ©oÿÙ²téRíâ‹/VßÕßÿKò±n½õ–Ô·KVvÆßÚ8J,\Z£××ı,m{P¦OŸ¦]1şŠÔV“DcQíÜqçjİ{vÓ†9B)ÃÇ7eµ¤Å[äÿ»Lš4IE]i›ùÕÂºIüô÷ú™´P—]vyjë{éÙ½‡úûÎ;spû„Ûñü3\n±aıf<ıÌtuì MF|øÑ\\œrÊ)©=?–ÂÂ\"L6³fÍJíî¼ëv|üñG8æ˜£qÆ§£ÿşX¾|9î¹çlÜ¸UUU©3ÿÿJ§N——‡Ö­[§öü}¹ñ†ëÑ¢EŒ9{.ºôr8œ.>|0¶mß:ãßLR†òo+ÒÅ¡¸¸Xá}ùlßöãÖnÁÄååç©®Gq”vÇ]wiÃN8AÛ³÷çƒ‡Æ«}ğL¤UËÖÚ¤{¿ï¨‰üçâç•H$8HÔÿ‘ìÛ½WÕÓÑC‡¦ö4ÉÕ×^§ö_xÁ…©=ÿ>òom OL~BÜé£OWÛçs®Ú‡¾WÚ·ß~K;ê¨£4ŸÏ—Úó½4õEúå0>bøˆÔ·‹§±QKÄÿÛÕû¯·XWRwİ}OjÏ÷\"œ²¸¤…3´O—}•Úû¿/ÿ–\"¡mÛ¶ª0ç}ôã¯÷Ş{Ÿæ°;S[¿_¤”tøûwé.²{Ï&mEé*mwùzmwÙFí£šµÚš}k´­›µÕÕµõU´İµ»´\nÏ-n\ZvûŸ&g}–6óÅS[¿,wL›¤ÁmÌygkÁÀßO€ü´ÿÛ_%ÿv“6ø*0 ÿ\0|ùå—0<™È“SÄ¬×^Åª+R{~Ÿ<ûÜs:ôh´ú‹æµŠ&ãØ^»•Ø*Ã¾ªİØ»w\'–(öD*àñùĞXY\n‹½\0ú†(êšÇPltÃ¶b»)ŠÌªÌnDÍXã1˜âIÄô:D¡ƒÁ›€M3cPz\'¸-v– }~[ä¤g£U~	\nİÿ»³®ü3‰D\"°X,©­Ë\rÜ†Çnš„ÜÌ,Ü÷Àı¸èâKRGš¤ ?ËÈ×|·\Z+V­ÄáôGÿVrøá‡+£?~<¦NšÚû½$IU°6»\r‹-Â|€iÓ¦¥ş>YğÑ<â	©­ß/Şh\0eu¥X³sæ¯Yˆ*}ö%Ëà±„N†‘p!ÒèC àE~ëÄœ˜lfèQ„=IØ\rzh. ¤×ÃZ­áôÃ0gÁ‡(O‹ÀLÀj4!+7~c]I1’„ğ…Œ\'@8É¿I˜\rVè’:$Ãt)ì€­zaP‹CĞ« rì™©§ıß©·›nº	ƒ\rÂÌ™3Ñ¬Y³Ô`ôi§cíšï°}×ÎÔKß>½1çıPÔ¬#†Çˆ#páE¥ş¹òoe Ï?ÿ<Ö¬YƒsÎ=ıûõÃÚµk-&cÑ‚%¨¨ªDšÍ¾ıA«vmÑ·,_ş\rF:\rGutêÿ:©‹y°rÿzÌ]½+v~‡]4jdèm°†¢0…b°SašVƒ¥	r­ˆÇ¢ˆ›õpäe!‰¬&FIs˜_#¨bÔéãî„9£fâÆW¯ÁüêÈpjh€§¡Ù­Š2hHÒHÌ¬ºˆ‰Å¤G2©Ñd¤É”…5ÊÃğÔÖBWCØjBœÆ˜ë.D÷¬8´YWÙ¦/º¦wH½Íÿœ}öÙj¼;ï¼·N˜€{&Ş‰eexfú³p8©³~,„Ç˜óŞ\\}ÕÕ(+-CÇÎíáõøSGÿ\\ù·ƒX~¿ó>ú‹.ÂÌ—^Dff&n¼ùFœzÊ©hÛ¦mê¬ï¥[×.Å•¸ä’‡á¿BÖWlÄ7¾ÃÌ-s±­±}ÍÌN˜jC¢pæ¥+Ï7ËüYÄèá	Ï÷y‘–°Bj¨¬¯ƒ)Ã»Û},†\rÈ4 Áó”VbÊ™“L A‹âöŸ„±Ø[\\¸?ˆ0\rÌšáäïÄ`aäP•Ç¨ç7…øO¦eĞsËÌıˆÑˆü$ü!Äx@o5\"nHÀ›Œ İœ‡>%½0¾ÃØ²ÜéEŞÿ}œ|òÉ0` ¾ùæëÔŞ_/:uÄgŸ}†ÜÜ¼Ô?OşíDäb†Ëç_x×_w=}ìÑÔŞ_–X<¼œ\\*Ö8Ä‰Õg¿ı6†s,²³³Sgı~ÙQ¿¯®}Ö.Äf]\r6\\N\'ÌF£šùÛI…wë8P^Š´œLèÈÄ»\'u¢¨TYF‘ˆÓƒ7À¶ -ê€ÇDE]\rLN2èİú,¤ÑÓ—%jÑÃZ‚7îxƒÙWOÄ-/ßMÎÈç9{ËàLOƒ!Í†¨œD‹ÓòôˆIáïéh	şÕËï2¢Ä˜êíz¸ã:ş.`iˆ ä	!ÊëLf>—hˆGà£\n˜ôv.\Z€‹ºŒ£:\rú—Ok>ëåY8÷¼s%i”Úós¹ÿşûpûíwàÃ?T³Ş”[o›€Á‡†ã;>µçÏ“ÿÙ¶mÚ·oŸÚú¹äÑ<ğàªqğ×ÊÕ×\\ƒóÎ=wMzÛ·ïÀ¶õkÑPß€ôŒôÔ¿^ê#˜³j{\n*Hï-Û[Âc\"ÆØ@ü¯Ó!Bn3˜5Ú¡?Ğ€,» *ğ\"TÔd2D;&£¯‘† LQzv‹f›zC\ZxD†ƒ°l]Ğ‹YC.GšÕ†c_¾¯Ÿ3I\ZäÅ‹nG!\rË™–†xv\ZB„OĞÑ8LI¸\"FV¢A*}ÌÂÔéÕ=-4\n“–¤ÂÑ8\rF„MFÄtXôNC4ˆ0Øß@ã!Âh³\"BHèõ4\"©OââÃÏÆ¸.g¡CQ›¦BùHóæÍñÒ‹/âÈ£Jíi’IÜG(UIçÇÆëe–áå—_Â9çœ«¯Y»\Z	:„CzõVÛ¦üË\rdÏ=8ôĞCQ^^ÚósÙ´i:wîœÚú±”Ÿ¾Í!Æïõ¢S×qâHØm<-[µTçİvÛíèØ¡ÆŒ=Gmÿ\ZY½÷;<òåd|ä]½Íˆ–:LB&-°æ\"äÁEO­§‡ Œr„uğù¼°ä8•\"r“^\\ƒ5©‡ô1T6Àê×Ã”ãF<ÃD5—ú­Áãİ¬ä/0#ogÜ‹óŸ»	ó|†\\‡á±G·\'EG\ZŸÑeÄv›q7ŠêğÑ¼¿ÅlAÂiDPøHœ,AÃáséø=`K¨H¦“N|æ¤€/\Z˜Le\Z6\n?\"äª\nÁb²\06\Z_ˆ/cÙúÑ¸Á‡fÖ,\\ìÅ8gĞ°šm©’úkdÆÌHs¥‘WRÛÒKáÆoP=( ö‰|õÕW8Œã¶ÛnÃ}÷İGşEcgY\Z!ãùGå_j ÒÒÜ…BèÒ¥V¯^\r“É”:úÏåÈ#Ä§Ÿ~ªáPİ>şŞœµ_|ù)úõ¨”çŸÉëßÁM+¦\"Jƒ+4¥#ìâ³R±ôI2áD¨2\0„˜¿Ø\n5R\'bĞ)#±èl¨C’Ê…t*q,]‚:Æwuì¨Ş{\0®4’Nh¬Ä(yƒ^®Õ¨¸„Cš(¯.\n/òFâ¤^Gã˜™—Bk›ûçxãê§0·n	^Ú69Œ&f\Zg7Šì=!8íN4f™‰‘ğE“æ‚%+\räF5VF£~4Z„|D“ˆ’2nAPˆ,ä(Â´€ÆO^cdÒùAFJFL-œ@Åş\Zdh.œ7x4.?öBÚÑoÊ¿FêjëPßP\'!ì1Çƒ`0ˆ]»v©È!Îœœ•¹©®®Vİ[F>\ro½5[í{ë­7‡™2å)µıgÈ¿i\nù6™ÌèÖ½¾ıö[…!‹‹‹SGÿ±lŞ¼Y‚L.-ö,„L<Êß5/¾@éÊhq*ùCŸ=÷Åø¥`wúàlfG Kğx–¨Q\ZC•-šˆ\"3¡#Î—â¢?‘Ÿåo‹×RÂı	Â-1u+™¶[3\"[u••ä,ŒBiğhÄÿÉ(ï\rEÈÓ¨”æ„‰üÚ„Ü€\r‰˜£İÖ .vÎ8\Z§9F*ÿéíODu‚p6¨‹éõ©ØéNxY}áhyÙ¹(iÙ>êêê`ÓáLò\'ù\'’ß1Åô„{F˜	³ÌAeL<Ç¢·òÙ“üÄ`´Ëî“&˜MÄÒiéÍ,ÈXOó8¦oz\rı:\n§Îƒªú¿\0~¯deg¡mÛ¶(((ÀºuëHºsU*ş78öØcÿVçrLtá£mtQûÄ¸V¬ø%-š«í?Cş%DÒr‚//¹øb<óì³©½À’%KĞ£GdeeaÇhlhT©½V­ZÁjµ¦Î–.]‚;wáb^ÿC©©­Á\'‹?ÁªïVá»U«QU]‰í¼Ï9„U/Îüå•˜\"ñ\0şêE<¼üÔgkH£¢¥ædû4xíÂhˆÑ$y†P0P‰\"¥:2QCxCÅ’:¢Jñ•ÿQ3jê«`Ğë¨p&\ZNÁh‡\ræÌ4Fò\Z…‘Æ|AÄıa\ZD1\Z˜F§¡£Úµ?&¼g|úŠ5Zoóà¨3Oƒ;¯\rr\Z8zŞğ\Z*‘IˆèÇè$Ü\"^UCH+Î‡OÔP[[$<Â!ù:¾³Ñ#Á°–`$±™Mpg¦CÏï~¾‹Ğ´p×jçs¸„ük°Ç%©^KTE8MÏ‚ĞÂÕ6‚©v¥¯Çt;:æul*Ü¿@&Mš¤ ”èPQQ/^Œ‘#G*ôÑ¡CSšºW¯^ŒÊz|şégÔ\'ŞxãM\\yÕØ¼i³2¤?\"¹TT”£°°Æ_1SŸúqã_”JR_€úúz•:qÄwÜq8¤K7têÙ=uÖÏeåÊ•xrê“¨,¯À!C`%Á4ªef¹1`àahÕâ—{•¾¾üÜøÍDB=2®5zNê#Õœ^S¯ÅA¥sW¡5-¢CÈD,‡Ş-`ˆ)‘<j\\4ˆŠã­ñ#ÓìD¦Í`À\0I¯f¦áp›Áè£G7C_ECÀ3\rßd·¨ÅşŠf[y#^}ª7mÁ8\Zïaû`öÑW`nÍ*ÜüÉxyøØU³|û’êq,éâRk˜0/€‚Ue5\nZÙÜ.¥Ø	_\0š\'»Ù€°Û•GÏçNòe Á\0òssç3DÂaD<^¤çeÃ£°L„Ù“fD•zÈ‡ÆlfDÿ­E+‚Æ ™SECsáöá· $ç¯Y«äæ›oÆÃ?¬–‰ĞÓØ%¢¼úê«8ë¬³~´dÅÅãñ FıÊÎÎIíù}ò—ˆ„ÄH´yø‘Ô&illDFF†jA7oºwÿûqPªjª°âÛ0Ñwìq©½ÿ\\VîY…Qs.C#†ôô<Ø&ÅÃ°65…lzv	ôŠx—§éhz´ò1¼W×!Zè@­#¬ ã\n=ªŒ Æ×iè•>˜f2HP)£t¸¹ìá$\r¾ò\Z‘ìÍ²1“Ğóú¨9±µ>ê‡#ÑïŸş †<zî;áBôê2#? Q4îDg*c«Â#1{ÄyH¿ù$XYhÑ£º£Yö\0L‘tÔùJ+n´\"bdTÊu!Aƒ	ÖYù’V İó\ri¸:êkê›\r‰x<C›ÏmŠ#hfQĞÑèƒ¤òŒ8~F\0	¼ì6\ZñˆÛù&V´Ln³LbŒLÑp¾\r8§å©xòÒÇ¤Èÿt8p :vì€3şµk4ş¥òÖ[o©E(—-[–Úó½ˆbzê©xçwR{ş±Á\r¶Ø¬¿>“²Ç{\0ãæ\\‰ï*×¡¸¨D‘kCÒFåH\"&-x)ï(¸I¯‹ñ/•ƒä\\ì†KeÊ2Ó2e¦4•JF‰IEyBœ‘„9şqW‡alğCOãMDãŒJ@ˆüÀh6Â—…ê4Z72ZdETC]÷*=‚V;¾JÀ½‡LÄy-‡Âƒr¼½èMLÿò¤lÍHÄˆ!L|ÿ’…XğŞÓx*ñ!ò}Tş6¸Q¸›[PÇ\"i°\n…âh0!HƒŒ¸¬ĞfÀLLJv‡ïiNa‹TT×,F¤§Ùaáß°ÁÌ\"à±H¡ÊZ$ƒXrÜğfë`3Î	Ä¢h,éÖâ	za)OÂJƒÔ²¡2íˆêãÓk×•WáÁQwâÒ.ç©kşL©%¬ÎÊúãí[¿V)©ïº,X°@¥á~\Zï»ï^ÊçÏŸŸÚóÏE\nÇdüõ¯™_¾†‹gß\09ŒÌ|Â)ªµØ‚&í‚Ç©¤ª-A‹C3Ò½ÒÅŠRK\ZTHşÈ\'ÂÁ ŸHw¸àÑEy\rGZ¨)ŞP²ZÖdq§‘t’i&~7#Áïæ|7´ü&Ş•!Ç#Çáõj¾vş´Ÿd:ŠàùÃnD¹Ğe<Œç·|¢\Zğ\nzØÉ‹\\:Â4f	÷ˆ~Gâ•\rïÃåHcÈƒ?Z¯§æ4—j“±ó~.r§‰F!™\'2ò]Õ{ñ÷ÒÅÈWäıòI„ã:¾JD ÿÕWTÁ‘æDVóD$!@¨(õç½Œ4’ÓóZ»İ‰4wŸÓ\0OÈ¯·‘QY—Õ…tk\ZŞülæ®ZŠÑİ£şz‡öÏ$Á²¶XÌä¨ÿ|`ÖŸ%M5ıIœâ†n@MMMjO“tíÒ.Lmı¹òÑÆ¹8lê<°|*lÅN˜Ò	;¨ÈB@İ””§Ig gÔÃj\"\' œ2P‹4i\'`‰$ùWx’×efä ê«ÔtÂBÎı	*¬€}Õª@£1»hôôIF É™É=HŸ©yaé¶\nÌLCôX„<I¸Ã:48M(å5×6;[m¥8búé¸¾Ï ìÿn:ü4”ó9Êü\Z\Zv…Ä°|ÅW(Ìn…®ÖÖˆDcğj4Œ\"Ÿ†FVA\Z\rÉ“gÓT+½ËFãà=Çâ;‹‘èÉ½„Øí$ø¬›\0Ÿ+ ÁÅDóàu3a\"9R•!‚+£`TÀ™€CÄ²“ÔEŒ†£¡7ğœH:¹¹K;q\0U{ÊaYµoÕ	5ù;Ğş¹cñîÚÅR-ŠœsÎ8ÎÔÖ?–#Œ+®ŸÚúıò—B,IÏlğ“Ê©«¯#økrè;‚{qÁÌñØS½qrˆBr›`<¢Ğ“Ğañ:B#	s<AD–¨IE&=\rÄárò$éác0H+4Â$¨=F3 BÖ5Ô“3¹auZJHK¹˜½³‰†Å&2{=­KOb+c±Ê½“4BÑ)Ì¿†¬p‚Q‡ğÏa†¿!Œ\r§=…‡6ÎÂ[[>CZÜˆ\\g&Î0Ã[Äœ­ëğôÚE¨Ü³ö=q¼:ù\r¬Øö-^ó\\&DxOwá•ÏŒ’B$¨ôU¥eÈHKƒ%İ\rUZÊcÔo†¾?Qxê=ÈjV€y‡tÉ7‘»4\ZËª`°Ó‰¦ÁÇw´Gh„Œ¢\"|U‡B”¥{OÜÂ›òı¥¾“ğL§ÖÇh£GVN>BÆ:„xFeƒò{ã­‘OÀnûeBı[D\"šõƒrË-7ãıŞÇqÃÇ­×M@^~SÖª´¢Å…Å˜8éÜuë=jßï‘¿bIÃÎå—_¾}ûbÇíØ»oŸÊRıÙ²·~†NòÌ$²‹³a çFé­ÍV%:Ğ8LTJQú¸xïêZÂ„ôùé„\Zá<>8]N*BVñHŒ$5¢ZgíÉ€@m<×Eî`à½ôÄîö5KĞÚ¢ä4	ÉÑ#‡h8~æ ¹A˜ÊiãyQiXd`IRÛ‚4°®œ×cî_ğ,bv˜]Äòä9K¶¬Ä3›— -£×½G‰ö}£®tV|±×pŞÙ°AWˆĞÎsÜˆ?¬xBuu9²›åÁNNbT#¥æû0ò÷éøU†ËAø%\n^ÑXKƒ1ÀE\n.İãı^’í0²³³NFT¤•6s„üA÷)¨)İl,…N‡×ñ•d‹Ópl;\ZÈC‚Rş:7aaî\rÛ»ğì·¯£gn´Hÿ¾[ûïq:¥yË\"¬X½Ÿ,^‚CûÂ¡ƒÀE¸Ù«g/Õ\"ßõÎ¸üÂ+Ñ§o´kó÷»6ı#ù—´ƒ”­[¶¢CÇ?·‹õ¦ò­şäh8Úæ\"ìLÂDÅ·ëm¨¯¯%N&`…JêV”Ez½&4*¼RéŸTï%t\nĞ›æ£¶±qÂ(»…ğƒ#™`å‹²GC0šLHÏÌDÒ¬)ï+Šd#4³’À\Zè1Ei¤”[§Z«E!©44”\rEZÖ-äÿæ(Òi”Q:òZ*ä“‡_•í®…Ï#ŸŠ+-Ş1F¿µ.=ª‡?D]<ŒÃZ\rÀq]»Â]™Q=NÁ9nÂûĞ%Ö\nñ˜õ¥¥*³–åF’Ò«P‘¤+‹”‘ÊÊgâ»sğ÷õärŒº\Z¿¤Û —Ğ™È¢RùÛAc˜ç3ŠzšVÿµ’™/#4¬p4BØ–$¤³Àî´#lÂFò8:u$Øu„¡0£™cT˜bŒ¯ª´\Zwu®òóÉ7~«lÛ±\rÚu ô\\¾}R=‘©É:>÷êÕß¡\'Äã÷\"#‡\\)œÄîİ»Ñ²eS7¤ß\"ßÇªüÙÆ1cÅ;8åÅó©d1Q˜\"’Æ4+Œœd	àÿš„T fˆ#¦#ó*~ˆE”‘dd¤#;3&«4îÑ¯º`Ì¶\"«0‘PAO\0j€1Ë¬Üd9Ó­óÂW^ÆŠ\ZDwWÁ¿ù\0âeÄªğ¨Eh_\rô;ªa,÷¢ÜHb\"¬²éIö5”hYÙõHÌ_¼™¼>3äG¸±‰†ZdĞİW\Z(×y2Ó» ¶³iô˜uÉ\ZœÔë¸*í„„ŒNˆÂLc6jŒN¼ˆTi1#_½©{‰”„piß	\ZÕû}°ĞÀ3Šóá,ÊBZa9„UTt¿	ˆIY1Bu:Ó`¥WNò:“Ó‚ôl7r²3` ó(ÛS¸\'gÂ“ğFI?\r/J$¥OK\"Ãé€ƒ%Ahšk°¢#¹ÊõŸİ±3Å@ş˜_nß¶)\"|şùgê¯ÖõgÆ)§5ÍZ3ÿÃyĞ£?î¾ënÕø,<ò·Ê¿4‚ü™2îåëğú¶‘—ë`á›`%*3\'èÁÌ°Ó“I+{vn&¢ıâMÅÅ	5 (\'Äi\"¥V£Á’MŸP‰JDXmÍJƒÎE¾ ­a<ß‘$9­IÂBîâË%l£òZêË¡HÍn—ÂñfF¥H0Œ\ZO#²ò³èq-H2Òˆo¨¬‡«††ç!XBø‰ãŒÁgb`a7Œ~èRdõn\rÇWÛˆŠ­ûÑ¾¨úä¶ÇàÎ}Ñ¾uTÇcØ½ğ#LÛü	Šòšá­KÃ%ÏİÕé¥(8 ]^,¨±†‘gwÀÄûT[B\nNeF5¾ßÛÀ‡àsÇjêMäX	$|Qzş$¬2&…%¦â}%«*ÚX¦ŞÒ¾ŸÄ”ª{}’°Mz\'ù¾V½Km©.İìŒr\"\ZX2¿¬¨mdùò>İ‚	K“(›”zâs”5T@¿7ŒooZŠ¢ü_×İè—ä³Ï>ÅG‰¹|€á#F¨}“&İ¯:ªJr(â©§šFœwŞyXöÍ2lÛ¾MmÿZù4áÏÄ¦p9ôyı¬8;Ém”ú¶°b¥ßQˆ0!\Z†Ä;š¤A+¦¢—8\"}¨¤5¶³ŠÌï²¦¥Ñ‡§¦î¢4DÍÒ?‰œV“ôkğ’lfd!Áˆ &\rtÑóJËyÌD–ÓÁE/)fõuÈt¥Ãáp!Ã,tW¾ÂüZØ<Q¼{Çl<>ÿ|½è=”wnNËt`Xf_Ô	İKÚ¢ÔÛ€ÏJ7ãëkQY»	úP9$ ÛÉ‘^~vÕÀ“_ÍB$`@»¼B¿jTé#pägÂF¥¢ÖÙtÈóñ}ÕD‰#ä?$ÕVò\'i\nÈµ¤[0Rë9ˆ/á§rÅY9ğË(x–OR‹PÑÉ½hL’zÉl	ÑÊ÷•ÁEGáÎ4:áX6B,úB[\Zœ8%©8\Z^RH>‡)d€wÅ¼}ÙLì6Pş.ÙG^+½4Œ„‰G~Ş=_|ı}æy\\|É…©³~¿ü!9åÔ‘jÈãòå«R{şZ‰$£üÔ0€3+C\rÒÅ4Ø¢ôê:„Z\n)÷ÖÔÁM²)ƒˆ$u¥‹¸¡@H5ÿ	y•¬/FäÄb¨	Ã@¨àhæFˆŠ—,di@(F•@!‰Ò‘ÏN¯êU¦H0¾‰Ş1Éã‚Áä0~F3\rD<p‚ÏPêEes+\n\"ô2¶ÁyÃÎÇeÓ\'¢sa.F÷†NmZaO}9–lø_l^½Şj¥lÖtÉœÙ`±š‘°QJà”Œ¸qØ8½òdôÊAÀ…ÍhEbgŒòÌ…ˆ~éƒq*i”*ª£Cà6•9Áã|}îIÂF!†-©_bFò2éeœˆ%¨ûÚ¬“N‚ü‚¿‹‹‘¨ ª®—2daĞø©ôÑ\"t\ZÒ½&À¨e`™›ÂMFapa¶Ò¨Xf‘ï%|ˆ¡<I¸)¯•«·bÆ©`TŸÓäÎX9æ(,^¼T\r§NTşœ=v,¾øì3”’$>>ù\\{õ\r©#¾ø#~¸ïH„s%2‰ùÔ“d°QByÂ¿/ˆ†¨‡89\rÒs8ÎÊ•jÒ©F@UµÄëäR½Ü”W7ÒJ”‘Ã¥õhS€0c„Ş„ªeê$Ä;Nïj!,ÓÅ¢4*D: ŠrÅå/ÊD…“Ö‰$	qyi9É¼EeÂüYQì$õ»ı˜1æ	´0·Âf_üşF¼ôåSØÜIö@üo×Áædä\"¹g$oo’÷‹…Pš–@n(\r}!,¾n\n}áIÌ\nnE†Å…,F¯Lb}À=ù’;+·$$Fºr¾†RN>&Ë‚:\r)3i’Èª²C¢	ü£şÇ²ÑÚÉ0`9_öéÅá¨r×«T9ÀøÈ*ïOÅî\"¿%°-ŒÑ±aTµ¹l*KÈâƒ¤9BØWé&6²Ş6TãÙ£&â¬~Mã@şˆ¤9]Cˆ±îÿùİ‹Å¨„M-Ûï¼3›oœê¶páÇ2äHµÿÏ’R%†¿4–ä¶‘•–äïH—mâi·%ëC3`¥YéeihôVÊ¥ÎÕ‡…Åê•SU»ˆ‡N}‘HÂŠeÅëMz„kH’H/Èæ9êKX)•\\\'Êâuê=±¢À[ø]şòÎ’TUÏ#Æh’¾|5µT <éômÑ§ö†SKA”¿³¥zvÒôé°kvìüMéÒ\"ˆ?#Msã$ÏI}œ¿O®Ãw/¯i@Oc˜rMxyóBÌ[=Û÷î Ü\n ‹Ú˜í@uML4-Ã+…ÑÌÈÆÇT¡ÒJŒšeĞÄÇ$óÆ\'çÿDÑe¤»*7î—Wkš‚Ï$eÁcM¢,GØt½ì—kä\"¾¿üQmPä#õu5H0úæ1¢“ÏèHæ%\r®Háí¸µçù¸êøËx§ß\'W^y¦N}JÍi0ì„?>SÈŸÊAyæ\\vÙeèÛ·¾üò+˜ÍÒûí\n½{Ç\'† ,7‰|›¹h’R}˜x˜NBÆ,¬,«0B<¹ˆYrô2&\\*ZºƒĞ€XYÒa/.L¬SEKx¬I)¤ºÉ)¨¤¡Z/¼‘É®…Pª	C¥ˆ¨T1^ë”®VêIz$`±8G!TD‘YFôÊ\"!Úú(šÓpTËş¸àĞ‹á G¿x!†­RÏó¿ûs‘‹œ¤fr]%¡Y˜Ên‚fµ!È°b»Q“Dv­Ué6\\4d,Îë|4f”/ƒv g2»ıÕxáë÷0ûÛ¹ğ0Š¶éÒ‘åDƒª¨´µ>N˜G£ëe@	Ë2Ép*ªm`=ÉuSuiĞÓ¤ã£F&e,‘Zœ”LõÎ¡§‘ÎR¶:Åõ¤G‚pÂZŞWÆH§O#Ã•\\/ÔàA´Ñ‡X›L:$ ¨N†ÙJã$¸fë<tÄõ¸`ğ8Uõ¿Eî»ÿ^ÜqûxçİÙ8õ”?®‰ü©rPzè!ÜrË-ª•óLíıíH„Ñé¹¡0°B¬\\iÖ¨ÙšFïLŞ ~MàTÿPÄûŠæó›¸/¾š¼œÆs¬(	Äªø]ö«ë”‘ˆh°ÆIÊé:}Üæ_É÷‹\"ˆ1	†G‚^¸¼\ZO²™Ş æŠ0è£¡oå@\ZH|cpFmœw.9ì\\ô(ìå{¶áÁµ÷á›m_ …µ\r^>k\ZÎzó6ÜpÊh´ŠµÂ•ß‰í±HÏh3aš%P+\r0dÎ@ˆ<!¬ó!ØØ€‘ù}qÇ‰·ã­¯¡f¯\'y\n†=wò2ŠqFşÑ¸fğÅh‘Õ\nï­\\Œ»?y\ZÕ¶\0,Ù~Õ‡M&™{Â°HÖâTEå äÌ0cy™‡”iw!ÓI²®óbJÔú~LN“¨c™5•‰@Oş¡aÈ1)ëT©JQÑˆC’\rÆ(i¥G°Ìk«\r##3‡‘?J#¤##ñ§GZ¿e;Ş6glÊJı\Z9í´Ó°fíZìÚùËóhı¡ıù\"ı÷ÅîB¡0Ò\\.¼úÚË©#¿^Ö7îÂ¨Ï§‡Š*Ü/yş„ÁÂ°LÏGO%]çX…*S\"^LZ²ã¬‘˜ü%•œ?i\0Ï:*¦Ä“ä#uØô­©.YÛÊ‹.DYQ>ñ†Ü¶Ó8²42é3h™<^ÈïŞjÔ_z B£ÉöÍ¨`1ìİ¼%ÉLÜ×ÿ|sù|ÜxÜ\røpËBtŸqşäì#,Ê/i\rgF¶ŠNQòƒ‰/ß‡©ëfbÖù³ğdÿ	Hk,C2T£³ú´^pÂš´hj7N~·q)®}ç	L\\÷\njZèQ¬Bk>\\T¶·}ß¡Ç+ç¡×‹£Q¦•áóÀº3Á˜üÑpÕf¡´<İ‰€MW¾	-[Ú±ÏDM–EYNôq9PP_‹#RÈhƒ×nWå ¥!0´éÃ-ù+…e%İm$«?b0¢PEÌŒ|ÒõFz0ğu§8ĞÈhetXQ]U+ëI²„âÜ4ò4iïÙ®3n|u>ßó­ÔĞ?iï\ZzìPÂ©ãÿãùK\"ÈEº©_ré%Ø²u‹šM¯[×n©#_¶D÷¡ÓCıPPP„‚´<øJë`¡›²æe¡QGâšŒ¦UÈJÜ,•\'ûšŒ¦	%Ó1ªıŠĞ§¼™`ğƒF!P@®M²†¤;J” ]FÿIï\\³ànîÓRÆÇû8‰b{+\'ôi(Î@e4‚æ~#FôÁ…}F¡UN[Ì¬]Œ—–ÏFYåXHDÍ*„ÍIcAƒ®\n-IÎŸ\Z~Nz÷f¸t5GpT5Gt\ZˆÇ¾„ÙeŸ#¤V«áÊn\'áŞûÖ3ñŞöoQh+D0¹\'7?Cíófİ„Ì´|è¥½#¦±7FàŠXÑ¶°¯ƒî-ÛcMù\Z¼øÙ[XÖ°§Feƒa.G:ÂnÂE*«%«ô2t[Î²ö™,_ñÿ?QÜ©Ñièi(F^M)XUŒDi”2\Z•äU\r\n¦Énşsj6ÔVWÃì2«å¤{Ê\"ò‰tşJÂÄ©+/}Ù¿œ‰*+«ÀôéÓ0aÂ­jº§¿Jşr9(BôT¾šPIfK”µ¿(Äét†7SìL\'Z%ÓáİÚˆd0‰´–¹ˆ¦éaIº•…ÍB•éH£0Ş,İá&*¤$IÔ©à’“‘.æR±¦ÚãõM¿/&•,PMÓ¤-@Œ˜ç	1>D0[ÍˆWx¡§òI:ÓåÎÆMNÁØCQÚX‰½‡o÷¬CÌR]y§Š!÷“ùDe9L0Q‰\"}	¦Ÿü\0†Í¹6­ŠÔ‰\n{ò8Z[ºášãÇ¢Ş¿O|ø<\Zı ªıIL|ûzÔêüjÚŸ}!2œÔêtÛc0Î|ı24ËdTJè¹¥¥^‹õü$\":”|YC.C#>âTŒ?áLøü!ÌüöL[õâŞ\0Z–#NÖFãÒEpÒP¾·™Y™,Ë˜r?­)–*ËVºØÙ	ô„¿±bÑ8¢|O)[#C¸´¶l&D¤«¼¦B¤F,&ÍªO›×_‡ìì|•PI°’ÄIK¤\'âq\'9fÄí-k‚·?‘5kV¢gÏ?g²;¾+ÃvIş–şù\"Jøôôéxì±Gqÿ¤{ñÆ©ù¡txá(4ja8$Ì*o/ID y~‰j€«©ª€ëå§¡Şƒ†ºFQqEH½uH“Æ¬8+N‘Dš\0Ã‡D\ZQ~[2Pj,mE}§\'”ïÂ«D\Z~¤lÌ`&» 	Ğ ö‘»Ã„³ºÇg=\rãf#´ÏƒìÉg£İô+0»ü54¶(E¢e6CVsòˆ6ÈdÂ§Ò\Zëh(’v¤ËD	TÉÂ5‘Ü(ÜÑæçà“òwqÉãg¡Ov_¬¼å[ì&ï¸vÖ•´²¢Y—æäY0„øîÕ\r,P+y\nß”/æ3%Qo5¡ÒiC£E\Zï4ú’hN\\8:1^?õgĞâÔ!˜üÁë¸ïØÛÑpËR|2n2ºfµ@¬*ê†Bä\'Q–¹“ÏéHHŠ\\¢‡8”ŸwIÄ•¿&òÁúòZT–U#”ÈnPÉ‹X˜÷¬ªE]u#y•då$ı+.^/»á‘feT:q@ê~4:ÈlÍ\rGºèêÄQÏıòbG†q|·zÆ7½{÷Æó3f¤öşX~•ÈğØnİºaéÒ¥©=¿_$³uûíwáô³ÏÆ¼ç¢úcEnûàlóî…³M1’1¢f\'‚<_—“‹Š ™­ò`Ës¨i;uiVØ2Ó‘^\\\0ƒ‹x™Ú]RÈ(o@°ÊKøB\"ÍŠ’Jòñ€F’\nåT~IëÊ¨$á”Œÿ®\"éaFK¦N¨‡¿±‘rÛá™wbéı‹q~·Ñh gœñíû°÷ê†ËÚvFvµ=´-ŸQ{\r<®X½4<=l±4øÍ2XŠQE dŸdøïV4\"menìp>ük<µú¸ïï±óï›‰£ìİ°³¶[¬Q˜Kr¨H!„ê+s„¡7ÆáˆĞà©¬ô¸ú„‹oj!äÒ \'®©¨†“Ñî‚ó/ÃÂé³1¤U7ÌÛ¿Ìˆù;¿À]#¯Á‡×¼Œ›ƒ\rihX¿A«îZà\'S\"±ä›¥;o\nªJéY)ªJË´ÍhSÒîL7Lä6‡›.ÍZ6Wå-=«¥ñP—IFPºµÈL*fr!‹j\'ï*m+VVNV£•¾…-‚=áÍ¸şİ[åGÿÄğì³ÏÀD½:¤wø\ZüX·~=.ºà‚Ô?–_±dn¢C9DŠÈ5×\\£– û{æ‹D’)>:°Ãß¿¹-ağPg¤\'³¸Ph±ÃäI ìñ#öÂ•†¤#Cpo”LDTt’‰ÑÄQ6•»ÁK³L\rÁ&¬œ0ÀNş`¤÷…éİ\ZB$‹2ä•ˆ™\Zà¹¬ˆƒ\rIBVêt6şn3\\ÙıdœÔçpÄÁókŞÃ_ÏC~E\Zî¹ü.\\øÊ°g‡qTûÎ8¦ë±è+ÆÊÛ1³r	>õo \rÃê–ì›…¿m&Â¯6ÆĞ,‘‰§O¾\rcßºU6‚Şz®µÄug\\úêJ<=÷Eìs1B¸tWúÑ%³9®}BŞ\ZÜşö#h$dÑ[â8?ÚÃ;çÌ¾én;’FßW‡\Z|‚SGÏ<¸M\\Ük4V¾Ø±\nß~ó5æïXgİ†Õ»wbÚî…È6ØpXZ[\\8à$ŞñP|w`3^ù–•¯E\"½i†BŞÛ¡&ÀBˆ“ëØHp¡¢¬\n6—îŒ4„#!–µAP”n+éa1®8!\\Ãñ·|bVr<Fºªjde0*\ZL)îØÔveIÆà)ÂÔ,š-†];1uô4œÚæûéF«ÔT×_Š÷Ş›£Æ\n=óÌÓ~âğÔÑ¿/¿*‚Èšr\r\r\rÄè\ZæÌ™£B¥Ë¼V2Ëá1iµ>ùÕ+`¥Á%‚AxéáVÉĞQ™ê3®‹Ğ0ˆûé¡âş(|5h,dñF&Eîh(¬8¡5QiC UH—’¦ÈÑ”[ÑEL„g>\ZT52›Ñ«r/?ÆæÄÈÅf4¤ÇPæÎ@ÇæGàó‘Ó°ö²·`¡r¸ğ1´yæ<<÷İ@I9]²©4!ddÈà•ÆoqÉ«wá„wïÅ{ÕëpS«°ëøéx»ÿèÙUõNTúHJ‰¹ı•QúÈ£1‡êüHÖkxfğåxô¼{ğü‡oá²©w`wœåL#×Wá2daSU.›r\'¶|µË®ygö†òÊJs3PgÏ@©#•î,”Í$¾It´´Á}GÜˆÕç¿+²Á”ÏàÜg.ÅÔ5/bFĞÇ’BÖ8Úõõ¦wßØŒ±s\' ç“#0oÏ\"L=áì¾îy\\ÕÿZ¤Å-¨©İ*Ã.Äl„Š4rWÔPeP5@º32á‡Õ¸ü¡¬ûÕ5Q[[#°dìtÂ-yÄ{Çˆ„³èY?ª§19‡Œ\\‘cò/j¤3ä¿¨ÀàVp­Yq!®œ}jt¿Q>úè#51Hn^.úô9D-QVZú«ŒCä‘t™£èúë¯Ç†\rpêi§âI¢mÛß>—ëa/Ÿ„¯’[Ñ2lAÔ•\ZVB¶Î¬\Zå¬Òö`øM&ˆYiúF\r~/œÙNBq™ZG2$4z)}MRõÎÍmU‰«pq½Á‚ÆõpÙí°dzÈÌdáj¼u>´ÌjƒáFàŒvGÃò`ÚâW°`û¨¬ŞcN\n\nh¸ú½¤}İqÙÀÓqñKw\"Ù¨5kHOä \r5 ‰7•Å0ÌÖg‘µï†÷Ë×à‹eaıö°åà¥k§`áü7qúq#ğàúù˜ÿÙÛ°e˜àtŠ‘cˆµz™	Ã<e5pó«2Ì0×xñÒĞ«ànV„Í[w¡m—8éå›UĞg6ëÓ»\rBµ/ˆËŞÃÇ¥‘´ëá0x`³Õ˜õì„{üxãÄ›ğõÖ˜Zû	Œä-¤jÀ•î¦ªG‹œ¶¸§İÕJ©j=õ˜öé+X^¾•`Q¤]>œ»ª‘MÇ“È²Áoˆ*G\'£í! è	BŸï–JkjœŒÓy\\@Z†FXY]‡8*=×…0yGœL¦R2ĞèôÕ~˜ıFÄ›e#bn„!ê%s¡¨*‹omšEñŸÉc=‚iÓ¦’\ZôÄô§§£° 0uä·ÉŸ’Å’[¼üÒKxø‰ø²œ~ê™¸ë¶‰?šüíïÉ3+§á²Å÷ÁÕ¦ˆÄ6€f‚+Í\r¢YXé]4¿„Ì‡KåO°À%Se«ÒPÕPÜ–jÙÉTÉ[—p&ìğTÖ)!ùv™Ó*	“›C\\ìc]•†=0ÖF0ÜÑW¸=:ôTîıO?Âwºmpçº‘k± Y Š •²ÁjF¤a]Ä†£C\n:àÍo?†+ÃŠ¤ÛFbIü«&ÿ	ªN“«UÉ\rä‡M8©UoäõFE¸_®ú§ö>’éOV-Æj‹Å.¬2\'_B2@QŒ€$±f^ÂÅh[£Ê¦E÷7 {F	úw‚\r¾İ$Áû1¤õ¡¬„.[HÌ^}69šÄ—Ø^ÓYa\"$’‰&Ì2‹¿srIlöÖâËÀ>4£#²ãpÑHŠ±è0	Ìô#âİ¼HÏ‰¬%j=“¾y·–?­Ê†¬H:âŒF^Ötr”äˆ¥¼(ªƒ7ß¡\Z¥7¨‰$ı`‘Ì–Ö¦4 ¿]ššHúÆQFÒó\Z±VÅr´:É+Íˆ™yï»×ïÅ´ÓÀÙı¹¥\\àÜä\'&ã“O>ÁÕW_…SN95uä÷Ë_’æóş5±—Ë™ÆPv¢jéü%‰…‰O¯Í‡y@{8ABN+2Í4„zŠÌo\r‰rTb³\0¥öaL3ÃD¢Ò…UÁJë8kƒÇeş\\\"4\n½¤ùzIÏˆ“gØ“\r(wZ`+7`êĞËPRÜ3¿Y„,§K´tÕ×!B~,È\"Œ³ §Ş\0‡ôÆmG¥KDálğÁ™“7†O2Vİ‘BéŞ¡×§B˜éµ¥•ÌËß•LòY¸ ÛIğğÜW–¾é˜“N¿,\\ŒPH<=n4šDÀ†+°ÒìG›\Zjv,Õ¢cQ;\\ÛâXl¬Ü…Ê?…eeóSÉÅ!ÑÀâ|o#I°\Zó–LœôWã³ñÖ’µƒÌ¸˜fD‘›Î§ï\Z°ˆ“$\'tÈ~š|şé:X^˜à¡!êõ˜8h.Xt>ß¾‘ee‚¥Ğ\r/#¾\\mâ½Ò&Ô•U#N#u;¨ä¬IñKû†´‰5ğ^q–[Nv6¶$ÂäëÖ\"Ã|QD‰\0ìEÙ00šÉäu!~2ü|ÎP:“/¯yÍœßG„\r›7bş¢E„İ	\\~é%\nşÿYò—ÈA‘\\Û·oÃÒÅŸÁævâ¸ãE‹ÌÇ{ÃÇwã±îEqŸ>ˆ[İH²‚]1/\\TYx&NÏ&^M ‡<¤4êÑ\ZÜÑ€Ì9,`=Â\ZUK‹§ÉDp2u¦sé\nabíˆÙH7ë8ï)“E§\'k±Ùœ†^æÖXrÚ«X_ó\r½~%âiTj™|À{ÄŒÃ<o+ªÌ„?\Z@^¹Ok+N8yÉ_è¥µ°5ˆ›\\0dØ±°éèıh°‘8Ò%ÅIi`+6äà¥á·âµ÷ßÄ©#ÎÆ—Ë>Ãäw§\"J8”)½]eé•QÈh\'„tXPk\"@Â^àÊÅ=Ã®…ŸÛ÷ åaqÑÔñÈË°¡:€¡Y&\Zù›–¨†ÜV>[¥#WHi\Z-˜ÏK-TÔ2ı¹@¹¤éæ¡5õ>Æ¿„Yúc¹sJàuîE>Ø\ZIàÌCoÀë½.Á\rË^À»kŞVSŒ’<B%™5¦)ÊTzy_F_¯×« ±Ì¼‰EÅà¦#2ÒFeÂ¢\r£fL£ã²A””q=ÒZf3¤5ò‘´xíämõqÔàù³’Èªscİø…jÁ¢EŸ E›hÓª5~ËDè¿VşRù¡Ä©¤ë6mA^f6ŠŠ\n¨ö\Z:¾|&¢5û‘gt¢¦e¢I\n>ÄX`!z[é~*sÃÊdËâY¥+‚`]9H ‚=/\n*#ÿHÅ%Fû‰ÒXä\ZéÉ*\rL\Z÷Kwér§÷—i8K‰í{i°dììªÙƒ“^¿áŒ l„oñ$1°f„~·¶¼év#÷_›+mT8ç6Ãg1 +d¡RúX’pƒÈläI_Æpæ°tÒ“ãôŞFÂNÒHiD7?ıf|õ64ìßŞçDÛåÌúú=Ìÿv6œt$ tóÉû\ZÃğ}p4ZpÓà³pFûCqï“S0•F}éqc0ºCŒøèBÂt˜È±Òíì¼¾QEÈ\"=\0X4„;v\Z¾Ì3´hÈ÷ÇhI­$Ä¬yµÎ!¥©ïš¸*¬$ŒÑè¡ó	!›´h—ÇŠ[‡^ƒË»ÆC«îÇôes‘ntÁ¤³ÊÉT“fYUKî Wcê›&sˆ©9ˆ\r„È2AÇºê\"¬\Z÷i„|ƒü‡°lWJò‹PŸBƒ%„,?¹\"ë*jf÷&P¦£heFã¾:\\Ñqî=æ:õ¼¥4•È¿@¤½w·®Ê8Dî_õjX8ˆÑ;6+óÃF¬ÚH’g	Ò°Â’Ò€d$Æ—É/éÙèÔĞOsºì§g©¬“ÇNE-ãÍM2ÌÄºftáÛ…Yiòõ@Òká½th® âVªç¨±4P‘j	Id²+o+]çCÄÆ¤g8Pçó£°¡ÁbC0—\\Ff:$q¶í¬A#;\Z(ƒ1Øˆ	z’$ŞÒ‰@GÂ­nÔw§çìíF¤ÀÓú˜\Z›î§R53¡§\'læÇ+gáì7 [QkÌÿ<:çtÂÚ\n–C=¢„ug–‡¥—Ì&ñ£Ó%\'â½ÆíHïi%$’Îğ&è¢ôÂ,/—;^ÂJoÀ«&qÓ¢QÕ÷ÉBÑø^dĞ€¦\Zi(ÒÕİ×B&¨È2°JÚƒ‚t[¼_\"[2DrL¡ó²†‘ì‡*T™Œ\0|_«Lg4Ã_ÙHhFãŒ›ÉsÍéõ¦<æ\0¼8\"i	„I4\Z$ôü\r\Z«Æº•ù3’NÄÉIõµÈiç†ÇíCÑÅ!I7Û\Znã“(E\'UDg!3¯<öå+¼‰zœ?Ud‚ën¸½9DmÿËä‡’d8²x2J,iôf^5!€ŒLLh„‰XSÖĞÃĞÕzÆY1ş ²â˜#ôDT\n‰‹Ö@ï¯m ™$\'a:âiŒFFVB’œ^ÊÀs5z¬„1¢à‹¤ã=&é\"!=\0{Ì†9Št’×¦÷Ô$\"¼KErÑ+Jç»z+=dAô%¹06Ï„-=¡¸†úF/<õ„d~\rî¨6s³L Á\ZG¨œ™ôœmQEÏ-k`¸xÌQI­5¢Z\"‹ŞòE÷â’EcøĞQ˜yìíŞ˜yÂÃdè‘LA‡ş‘ÍçË©’§e.Áîq8é¥“ZXq¯Ş—)-nE^\\Œ|e–”ùÀøÑ’,Â*F/Ş\\Æ‚¨gÒÊ-„/-‘\'Äèİ`—±ö1—`Äa¤45Í’¨ã}’FÑhX\rÌ2¸Yëªá%I–ï0Ûà ¹4\'œ1!Ÿ¡¿Û’VB8+ù#C BèXG‡˜@vF&<Œz3ÏcùØÉ,|VYµ×çr³,©~—Ï«G\"-‰ñ/Ş¥çŠ¬,på•Wª™à¥mïÙ§ŸEqQöïÛÿ\rÄëõàºk®Ç»óŞJí‘™ÕW§¾ı~=ã|j¦uAÏB¨d!„10äg²ĞMA­X«$Ù5á$i³Pªjk Y¬P#÷¨åâ×ÌŒ\\8.Dêx|O¹úøÈLadt\'¹„tŒ|k\"d2ÒÃ™HŠ“¼§,¤&¢Ñ dqKQ#”ôß¢U(EaàQkqDCAât\Z\rFGƒ0ò#§i4lG¦®‚l8íiˆy#¨)¯%$¤ëè©¸’SĞ‹û­1dä»Y	Œ‡²¸g„ğÉƒŠ†Zì¯@G%Ù°|nšr#š7;SÏŸ†ßë·ï€WæÀ\ZĞ\Z»òÉ\r\nÒ¬¬GyHF[;#äien\\/#¨£$§ƒÑ­|–8I¯%nRüÊB£µÕe>-;•ÜJÇ`¥\"Š{é‹Äµ˜Òx¤Œ1–“@UI8ğ€ÊŠH×œ8ËKÆŒ¨1÷.;rr_©à52ËK%¢^F0–ÑËœ3²	}^„ö×\"YİHÌúÈÍA2‡Q— AzşÚhŒvòÀ¨?‚Æj\Zª ³ÒË|®7V\'¹$¯yß<DAÈzü27´$fdrÃŠŠ\n<ıôÓjt¬Ì/‹6/iş÷\räË¯¾€ÛìœløêªÁEÄíNÃË¼¦¾ÿ™¹ù5¼[¶ù9Í‘‡U/Ğd&š‹Ş¤’Ó´œ<däæA/Fä¶#­0A*T˜Ê ³I«‡4ÿI‹quyÒHn[´j…œÂ|•ujÜÓ\0Ï~‚öù­\n#^M^‘á¯VB0’Ri™\rÅ ‘0’Š5Ñ1ÉÕS¤dXáÒĞåcØ\rùè÷Ö ±¯\n\Z+ÎŒR±D‰dæÂ2B€ìœ,5míª¦µ©”ÒCƒ&\r³ÎO“4ˆ\ZaÌµÁÚÌ\r{‹\\„İ!¸	5Ÿ?õ%,¼âM<¶è1ènù†uøèñwqm¯ãİ]†P8†0ùF‚Q¬²‘Q2ÅÉ¢ôºq>«,æ’g±™áÈË„#;Ce¥$Êz+k®kä§¾êz4–V£¡–FD©…ãjé:\"CeÅÄGØ£ä]Œ ²X•5W˜Š¤ówd\0– <W\ró#Ë:dçe!#›Ï&”«ó àõÃÏ`ú#A•|È¤a2Âéøœµ6jí„Ã,£tzZcõ4\n‡YÙn¤e¥«Õ€ÕhK&—´3’¥ÛÉ‹MxtéÓê™ş™ÈıfÌ˜¡Öe—Ä,9.KgÈz™Òx(“¨‹Áüp½v‘_4-7áğÃÃKÏ=á¶[qŞØó‰û²ÕšqíÚµAÙ¶©3»<ûåØ›çĞÃÚ­£g´3„\Z¨¼Ù¤e8QiP³dxÔ©>¤(!?H0*P±©âËªlijğM5é,Ì@~1†ç¤ÑÉ2Òv+\rT×Õ ºÂ‹|†ùjïnLYù\ZX4…ÊIå\",ˆŠ’P!dê	9\'ÓEÃËƒ3Ë¼ü|µì—‘QÇ×Ğˆš²\nåmŒcõº 2ÒİÈÊÌBmi-±³Û ºšhÒrLï(İ1âôœd´ˆÔ’„—Váœ—âùkŸÇ>İjœ4c¾®^‡®Î˜½ê#œüâ´ÔåbÎ%Ó1˜p¬jÅ*\Z)X«b”‘×ÒXãT*sœ“D¿‘¶	i¡–Œ+ƒ7« Î;éRÎÂ1ì™\Z¶zÌZò*™ƒØÊÈ\"S®Ê8vGÔ€B«­¦Ï¼¼r+¶7VcCí&8h,2@Š`5iE—éÂ::1–½´CÙVdåg³İüm¬ü}émm¤a„dÖ“¬ä‘M|D\Zmƒt<23¤ËMnÂô^ˆ$Â¼7¡2£–0Œ¯w0Ã€\'·¼†°WTëg\"«m½ùæ›8å”SpòÉ#±ÿ>ÕóãàÄé«JJJRgÿ²übËJO²m÷n”´ü~A1¥K?Ã™g7ß~K‘™Ïÿå^O|ztš:äÕ¢ê<XKëi,¨°Q£	d†u¨wéá7!t ábwACºFöfØ¶¹ÒÌNÀÁJô•{h,qdâH;CĞ%ü!¼¡²ş%vØÊĞfY‰´i5{Pši\"Î†Ë¦7¡Ì	:}ä†dâfZ$¿KºÔ@E‘ôrT`ñ’to±ØtÕb2²‡ié@(Áç#Vp„I\\«¼¬Ş(9¤ÌN2r/\ZĞRë€\'È1†<2\nÇul‡k‡_‡µ»¶âÅog¡ÜØ\0g®•È÷ fwê2ÙBØíà°œB<6âZzü$&Ì›€¹pÙQ#qÆ«ã‘•…kÑ\0…GQ	e†yÉ*É²ÔÒß,Aü.U­Råı\"=¶CBœB”åç!	!-7fÂ+Y¾zf9~F¤¤ÕäººB2vÁæd¹DÓÔÈAéù,J$T8›t%	1z-ät^Qş“~YÂ—$ñ.áú\\4f{˜Ñ\n7ëp˜a¡CJÄÕh|qy;õ^’î×óW<&òqdF±;Ûˆ]õÀ=®Ä‡Q¯	GÔl‹kÖ¬&Úq«U©>úhuì÷ÈÏdş‚ù˜>}:>ú°	R<i$^{õ5Øl6œ1útÌ~÷Ô74 U›V¡¿­oÌøÅwàƒİŸ ™Ù†úZØìÒ+×N>ÁH éY)†DÙä!oµÉ \\yT––`T/¡=H|Ï°²S“«+B­Bäè£Üã¤g’v55HËÎ‚Ÿ˜!LOè&\'±ñ7j*X²</\'?aF)¯P‚¿kŒ\'éåY™ÄóÂC„±ê’*ƒ•,†!°Jú‹éMVdHøwx`§RÖÄˆ™	¥Ñ/;]f_tŞf\njÍøN¾:huøğŠ·Q[¹Ñ³·}ö>6íÛHäoDf³Vˆ$ı„:^#Éil#Ñ¶˜4†šú:œĞ¦?Îê?‡Dr°5P‡‡ö}[ÁœK.Æ– £1z“°xŒĞ%äA²¸ON&|6*³\"ORq’fŸaD°SZôœÂÃÈ|åÈÊÊG4ƒïÊ¢Ài%úøİÂód(€ŒjšœO”Y\Zf…x±ŒK³ÈMBqÉñ œÃC²œ¶]oU3°”WVª9µìŒöFrÌ0Rã³I/l	 &I¨H\n_›•°jfé#.˜´£djƒfT]ò\rË7ˆ];w¡C—j¯?C~f Û¶oÇ¯¿†‰ïVÛmÛ´Á;†ëŞ£6mÜªöË¬şnµêÿk¥åcaÊwB_Ú\0Ã£-‹\nD­7É²R	’~Í‚\n° H\0éô(2\ZPÇ°-]°İ#,D=N€J+Yñ0b`2íŒŒ#—¦™•®ğo8ˆÌ’B\Z=LŒFg´©Ôd”ûíäTÆL\ZĞ)ªéi]¬LÁøF½0\r>K)b¢Dhˆò’J?+Jz§Ö2\Zfæ7£\'LÒ#\'.+…ÑeBC¦†Œ2*Jp¡ßiCÆ¡{û4¢0Vm[sËb´0äÏ…ù“vö/Iw‚mÛUv.fß‡lzo•ªÊÂÎˆC‹û«%›—”‡YïNÇöúRÔ»IŒÓLpŸ§Ó­ÛÈÇ|<ßKb ±d¤¥îØ£3’\ZÈ |·0A¢Œ™ÑIv5Ô¡ºª….zq\Z	—ô…ìN°¨2^	–íA\"\Z¤æà>1V2àDuu+¡ZÍeÖFéÕ ÁébäEA?df\'9†,¶*ıµT›:oi#ä’›È}‰Œ„’b`rÉzÆˆ\nl¸é4¢Æ:ì\'ô9h*†uí\'jö§Ê/B¬Å‹`è1Çã„“†ãˆÃ†à†ë¯ÇömÛÑ«w/­dsYÆ¹¡¡éé©«ş±|¾ı3œşÎUÿFäíäc•R$Óäÿš5É8fi ôÒè.ó2²hœ,:F†ˆÊÕóLo’“Å³I‡ûˆHèÙ	Åñónò‘ò6ÑÓ5ì¯ƒ7\'=v*ˆ89CQ³\"ì/ß7IoÌJbÒK¸D£#„W=‚¥eò8éÂí§A¦Eã„T\"¸˜8œ I‹‘5Èv¦Á@¾ÓÈßJPÉLu\ZFõŠŠæ-ğUå2,\\¾W\r\ZGehÀ\'bæ·ë`J÷ÁìĞÁSRãN\Z8!YtéÜ•T±¢Òá©#„+á¢S/Âé½‡àÕ†\rXñÕb\\sìÉHsäà›Š­˜³|>¾.]‰€ÙGRKon/@\r:¼½Y’^DM#/Êw3š4µt£$ÌTà>\"s[2ñSùd©åf’øÇMTPz	éTØëuª·BSa‹cb5p[µ5ò<{LÒíFT3BHúØ.³ÁPô	–ÀHÅ²´2bˆã‘Ş¼ÁšFˆ&N£X¥,Ó¬D/b’L³²>ü±ª†\0\ní˜Ó(\ry14ë4Ì8í6õ¦ü¢DYˆ­Û¶!Ë?¯¤Fş•´(Ác=ÓÈôeÍÁWf½D^R«ı\Z9æÑS±Å°éôYz8V•#J`qÂÀà_yù8¨¨ŠZ˜Y¸îgzp~¤ŸQŒ¡¡Êà\Z½›‘•ä\'B/¥³áõQ\Z”t›0“$Ûã&øöV\"3-\r¡,ú@’\ré)œÇQUW…Ì¢Õ¼Œ¬v^cáo\nÂ’âesÁíŒîH„èİÈ)ü–aœt±KĞ÷2Üó7¢Û*•\'µ´.ÆÀÂ>¸ Çqè•Ñë·ÀäoŞÁ§{?G}x/º¦·Á”‹&ã²—\'à¬ÓOFKg7¼ğŞCXØC^ËŞCêG:ƒ‘.–‰½ŒBîm>İr .væ|³æM{pú‰\'¡Ïœëa\"©=$ZŒQy‡àÌnÃàj…÷w|…9Û–`eÙzò5;linøxß¬I¶ìGĞëCfó|F\r	\'¡	²Fìo&4‹ØÔHáZF\0–¯##á¬5)ÿ‰Qıä”\nÉ˜ÖŸœÃ’‘]ÂÍ$İ%J#‘ÅÆwÒ«†Jîã¶´ÀK»W„ÑBf=±Ğ„D›ÍtTÜ–ÅŠTgFşÌ£• ¤³JHÆ®¢‚ç“k¥;PWãÅÆ‹\"Ïşëö¯•_4ŸÊ°‡¡G—n˜ôàƒ(//C3zŞ={÷ EÉ¯[Õt{ıùôh´¤g¢HèˆOt¢1äÃèÁ¨ ¢KY¸†LÁ£¦‰i\"	«¬·Z`¶Øa±’+ĞÂ¡‚~ÒEŒDxR’…f¡‹Á‰bKİFğd$ÑPCƒKã–ÕÁcôşÄôÒn5»¢TˆtÑ¶¬¨¯ª#¯p‘ŒÊ‚92½ñ.Æ‹Ö¨¶Ó<Q,„Sõ„o;ºd†?Z5Ãı[ğúöøxÇìİ²İ[¶CCNÂ†:´âÑcïÂ3®D³ƒšõÂ=Çİ…Å›W`òo#N¯Ÿ‘Æ¦“§[Íh¾>ŒkFƒÂÍpÇËcuÃ^\\×m$ë1\'N‡^:0úYPEâ[ÆçÜ±/No8Në}$\rxæã×ğÈŒç‹ĞĞrİÔR“Z÷=XäDƒ/‚È¾\n4ëß±Ü$¡kîˆnFY¢ÆC¨•ŸK&å/ë¡DYkCYg‚Y)¢BQX¨*ÊH¯êˆ”¿ìc%›èİ§`=‡	%5ò4éî\" ÚH!İÌtˆâ0Å`ev1¶˜@kõ[r‰^zÕ¯LzGÈÒn~÷VTC_Ì:ñÔàªŞgà~îìÿÔ@î½÷µÖ‚,ü/Ş¾EË|ıõ×(&şµòÜ¯á–µO 8ÇÆpnD£ÎL(C¢Èc2©˜ô:•şSÒéöBşÀ¢cL\r3\ZI„¥BÔfB:}aHŸõ¸L:N‚¡‡“uÀã>?ôÄ«HgØÂx,…Üş¥2¨àÒì	’{0ÊÄˆ¥É£Ò2Óé%Ñ`¶ÙøI†ôj½¼Ü<•ßWkó÷{Ìt¢1èEVÒ£ZöÃè>§¢ ¨|•;Õ‡ÏX†±JtÔÙ‘Nã,{`-ÉWıŠö˜h ‰N˜yäDŒ}úJÔv§m!RŸÄyÇÃ˜ÎGã‰ŸÆÛ•« ¥Û‘VË²y\'ŒøŞmìğdöiI/®Î?ıŒÄU÷\'ä‹ÀÖ2ïc@Ğãƒ—Å’—\rßµùMËÇe¸2Q’ß…ŒRÉtvVìB€ŠzÒãIC˜ğÁèzÙìL”\"?ê‚¹šÆ#ØšÆ¨Ésd•Û4’é4›>\nÌ2V†Ğ¤ÀòŸ”¹b„İ$áA.%™-19GOÉbD2öCiË[e¬¸!F$RÌBÉ>1º¦ÈÎxÍº´ÑÈ¼¦$ë=’\0¹KU^§aBçú<Ì;ÿ×-\nûkå\Zˆ’5Ìe¡‘§zJå«œ8ıl|İ€éÙ÷4Ê4˜Ü¯E¤£!ù\0¿Ë,\'¤~Ä¤ô(R”ümñ$Ò\\)7kJæ¨Ê,HV¯?ˆœ‚l…\rÄÉ1âæX4\nW¦‹!œ€×ñ<›á˜ĞL‚µtÇ1Z5İ[ ôİâ\'Êß6Ò“d“#¶y7š5oŸ#†Z]#dM’½y8¤koœqÄ)84§\'*É_^[>ó×~‰=y0¤mâ9j¡š˜ÅI%¬‚+;»ŞÏ‹P¬‚]0eÔ$ôy	<y•è¢/`$¡‘TÕ£¯?Wœs6yªñéšïpmßQ¸jÈ°fÃéÊCnW¶e{°7áÅ@sœÛíD<±kªs\"ğÊàÈ•Ş	„•õTäJVÌXŠnö6˜5ëUtMõ-\n‡Âj]ù}UÕ8°j+ªJ÷á¦)wÂ0„Ïyh¦ê?%=,õ²$¿FX£Í¨&—H^KŞ)ÊnÉNWãldÍÅ¹Ã-ŒNtÆ8£5¯aÔPXÒÌä2pŠ·…|²*ÈHˆ#‹ÑH¢FÈnBĞH#àuNŞ]&Üˆ(¨%I\Z¥Ô¹UşR_bf\Z\'9¼^—@&™té©ğÖÃ¯gÄ­mÀ²›>G§œVê]ÿùE‘ÇK.¹-[6ÇÖ­ÄÆT¤mÛ¶\"#3¹9¿maö@Ä‡îSB\"?öR_,¯]gT ’:ÆH’QC\rR¦Cã!L2°¤7®š#—\"SvÌQdE³`ñ&Q[q\0é­²\\f°!Væ…ÓiFÔÙt‰×K«pŒ^Kæ½’Í—¦w’ÒÏZ(Æß7ó9‚„8™>bö••X]`F¼eNæâŠ.CqhÛ¡¨Vã¥åoáíuQ¯…3Ó,»ş^”÷°ÌÈ\'¨k$ŠÅBÈ+È…W‹Àï2!¯A´ÄÌ\'á´wn&İ…XÈŠ†l*	´6\n]yïN|£Í1ìì‘(ß_N(ÛÛ6mÆñGß{9î,´êŞ¾hŸ|¶y‡4Cf—\\˜ZX—C8´)Š/§-Dû’6Ø²u•ÖÂräkòUç/\\ˆ·g¿‰Û¶!cÌØ1¨MV¢õèî˜½â=¨«¤¢“üK2Bê½ ¿\rä|ÅE…ätct*A:\"£VãÓ\räj Z]-šåRÅõ¥ğyÎ|Tïöå$ªCh¨­†•\"«y[¸‹s17ĞQùÒ\nï„ÕeaÄ‰ &<RÜ$ËSOÃJH·xÉêÑ |F\'a5\rõ(ã°dÜŠ•uHAy}.ë7úü¶ö¹$?3‹/¾X5Ã¯\\¹Rµ2~²äcœyÆXåÑ¥9~Ô¨ß6÷¢µqÁG7Âİ¡i~!»QÈÌ´ş@ÀGº´Ç§1ª%\nXâù¥q¨iÄ \r…ŞQR¾²è½=`§·±£ôÀ>¤·HGÂ,¡˜ä­ÚOâfa44“4fÑó	¹OğniÉù\'%¬Š\ZbÜ/ÄŸØXG†Ç}	=f6†\';áÜîgb@¯£T£d#CûèOnÆÊÕŸ\"f¨+Ãq°ÑèæıÓáJIîéù,4‚¨©ó#¿°HlZejø(&ki%xî”qâÛ7H\"fc&j	‹¾ì27Œ¸\n/?ù4¦N|­ÛuÂí÷ŞÉïG{òŒ3Ï<½zõT3˜——–aÃ†Ø°y;fø6¯Xw[5è¤e`Ø™£ğĞ”GeI£aR¹è;}KÈ„».™€ÊPÏ(<{şlıf9ét=¢}¸mÒ­ª.á@³’VÈo–¯æ- ‡—±V:½\0Íİh5¤#Êãuj©éfºLh\rtˆá(ìÅé¨eäÙöÔ\"œÚåhø6ùQ“á.]ğÚŒ/tç#Ô!ˆ¢¡=PTÔª\nTúÊaÏ·ÃäÊg½…İ4¾ëÇ	ÔiG!§•fÚH•È¥7ZaZDI2Â´´tÄüs^hÚñ\'ÈäÅ™3qáEÑCèi’Í[¶¨í®|¹\'&?†óÎ‡ŒŒÌÔÑ.—¿y>:°TÍ0˜îÌ`ÈŒîÈÌ…F˜©`á@ˆÄ-„´t7ÃyYç«ª2*–ˆZ‰F#¼Äé¡dâ\0„’¨¬.GzI•–ÑÂdC¤Ü1sÀ.†EòN\rB¨ë¡W‹2úHë¸tĞ³ÅhP$z~¯OËCKÅIİG`hÛÎˆƒ¸iîT$2ôÜß‹>›1°2»\Zfa_À‹Õ¥›±²ô[lmÜ?\"pXèuY¾(òŠr V®&D“;Û6ÚPg¬E¾±œ2	ÇÏ½vr‰xšëÚ¢EÈ‰òİeØ±f¾ı|%:¶ëŠÍ›×ã¶»oS½•}ì‰¦rP9\Z>Ÿ_D\rÍ}ƒŒ¯¾ù™„±G0ÒXmM½•c–‹E:™¤Í•[ï¸‘lï@øğ\\–·ùïøñäuSğîgïáë÷éĞ®¹ıëa§D5£ÂÎ5;põ5WãĞ½PÜªÅ˜üÊ3xáë7ÑëÖãÑPVÿç»¡ÛF¦»~sÕë`ÊCªåè:\r9½;wRÏ#RY¾Ó¦¼ :9ŞÿÈD$Ú¸ĞkÜŒÆ@ÅöíD°çéP||Û¬VŠ­Å(]W}_}\r»ÙHã<Ö¢LxÕ(y\ZS,@\'GçY«ÃÊ‹ç\"ÛŞDş¨üÈ@¤1G¦G‘~W?”©SŸÄW\\…;wàÚë®Å‡s›ZÙöÜ©¨7×P™iñôÄF‡d$BĞúqµ´Y±£;Q„|ƒL€$tĞ2älò#ë|Hc“fg<Õû+	ûÜHÒV¤ÉKšiÃûëŸ—FYç›QB‹\'ÔHÃÊDO¤|„	Ôg’fôÏíŠózÄˆfQ­ÕáÙ\rcÑæeT¼JT„<8»ó Ó¢®œ;\rõ­Òà\n3:ÓËõiÑ½šµA3WBµ¬Øºlûûí^Tiµ\nKg,°è¤åßA#ªA®V€N˜„óçßôª\Zj¼8­Å™xöŞ)hÓª\n0ëí™¸xÜx–‘ü˜CûãúÛïÀ±Ç7Mç/c¿¥ñMâ«•ï3jÔÙ(Û\0·	Ÿ.Z¢ÎI†¤<è`Œ1¤İÏÜ,=¦¾(:½j\n`,wÃüU\0Õ_@\'Â¸³/ƒóÎ:}¼\0óf¿£Õ‚:Â¢ş‡+Æ§±ÉlˆL{l2º÷ï‡SF@ñ°vĞ…bHl–ú5 {‡¶Ø¹mLé.FŠš7/Â’%ŸË¨zŒÑ÷™šl[¹Áù/ÁMW\\ƒ-¥Ñëö£¡ïì@`u)4ò)CMFo¨AÙœ-¨_S{zˆ­MzöHïW€â^ÅğY¥-‰‘åùĞI`T‹ßß½ä‡ò7‘Ş–Ç;_}ñ%**ËÕòÍïÍy_tÁ¸qxğ‘GT‹¨tÆ“åœı3©Ö Ë‹#Q˜fƒ#G\'§¬c-ƒyLa*/¹ˆŞ\no½WùÄ´¼xÂ†M>q	‘•ò–’kW\"X…`SZ€“õ:zÖ(r›ç¡~D¢‹,ËßÛ¨Ò½ñl;I\"«ŒÑÏ“{Pí«GÉ„Ai%×îh×u ;€×7|…W¶-Ã~F]ÜƒæÄgV¢ÜF«cœ‚’Œ¶¸pæıìbåe„à1yà5\'(×Á\ZNC^ak8üH^ØíòDC±§¶ËwmÂšªİØ*å;{ĞÓİŸú2ZŸßáÏ·’œGQÜ¦\r½{:¶UìÇÒ…Ÿ ¶¦©€ï¼ş†2”’N¨œQqÄ<1å	Âº&\róû}8òø1ä˜¡¨©(Ã‹Ó©gkS4çq\rº²0‚~ãb[ãv¸¿5ÁRnÀı÷Ü‡CUg‹hTøO<5å8áÄ›–± °3*­ZıÖ¯ß€Ì,£K#ê6×3º~Œñw^{îúåÅe¬¸ô	û±°.ü8ô\n~Ä0|·é3tú4Ø~T–Ö!İ–ƒÚ­å¨~sï1§^>Æò}7íØ€	·Ş¢Š}¾ìè»YĞsÔ@T÷\"dõcÄ¡ãñhï+R¿óÇäGä«o?Ç şƒ±déRÌxa&^ıUµ¿Kç.øhŞ‡hÑ¢%úôé†ñ—_óÆ]¬ı#y{İ|\\°ü> 6\Z©€^XHôä>s\0Æ‰q‚˜S3¡¡®$:Á0›FÜÉ‹Y§’w’Ç“ê•ÖlÉ:	»ğ&Şø£påg Ì.m!&F#W£††ªjØÛ2øJ·†0ñ¿™!8†S9	[]¸]XçÛ„W~ˆıu»árX¨€}?)nRiP¿-2ŸãZ\rÄ¡Í»ã¾ÉY¼0x0‡Iâãf„“~èí:¸‰›Ã„\\¤“¨\'ÁÜ±¿nc¬{c8¦Ï1p\'EÚ\'°lû2|óîr—‡p 7‰îÉL<úÚdtiÙÔ]Çïõ s÷®¸şšëñù—_Ò{×bÑâE„¢fU×^sŞxóM”——Âãñ G§˜ûÑ?y¤òîZwÀ¾=û‘†N]Úcàá‡aì˜óá\"Œ›:í)\\sõ58óô3`fTKÃØS¿o¼óæÏ‹…–`Ù×ËP[[‡vİ:¡¾¦’FW¥8gyE9–.Y‚sÇƒfÅEXE~úùÒÏğèÃ ä²Âfî¼öz\\|Ö8q\ZŞ|ç#ìÙ»ƒœ¢–Œğ\'ªHÓ«Sôt4N}#æ÷íhóç|ˆóÏ¾\0ygå\"~^1j?-Es[¬~ıL¾õIœ}æY˜õò³xjÒ4tìŞ¯Ì…Ö=:aHŸ!8°iÖG7¡åáíP¿—{ VşıC2~(?2µëÖâ±‡Å»¾=;v©®İïğ.½ä\"TVV«séÕ\'Ÿrn»½©¯Ö?’IK¦á‘³Pb·²‚\rj~«£…¾8‡š\'sÄÈ-,ôîÒ0RÛ¨º—èÌv„,T7r³‘„Îd„Ü¤p!Ä`âÙÉˆí=õ„ƒé48D‡Yƒ[ºùí¦±IZ°È	¿[‡pcCı1cìcxwÃ\ZÁ½°Íj†ÓÈó„HĞMÙü®Hf o!$äÑ°b\r^dYmğeJfGÚn’ğ[\rˆÊ5á$Ú<¿7k.Şx}¶šQ£UëVX±b9vìİ‰æÍŠ°ïÀ~i¼6»¶éÆÀÁıÑ£k\\|Ù%jü‹TDIY|hãÆMŠŒWVVâæ›n‚Ãél*Ì”ÈàÑ§FĞÀˆÃñò¬Y0“û\\|ÑÅjX³Tf‚å±gß~|0g.Z¨Z¦\rË×İp­‚,ß%¼òÆkÈËÍAÛöí1dğ`:¾¾èÔ©#Ú´iÛôCYçeÍš5Ê°®ºú*œqÆHÏH\'dZªFßÉëdÍõä\rwß{7\Z\Z\Z‘›“‡·Ş~İºu‡Ål‚™¤^+\nÂK)‹nÎ\'„{óÍ·›IÃîİ»«ßëÒ±¼Ò0Ù&½úuÃö\r;é”ÛâÖ«oR$/<,¾^¾F»g÷ääó}šº°¼ùÒë¸ğÊ‘}ItaÄÿè¶ïùıù‘ˆ<ôĞÃè×¯êf²gß´jÑ\n{öìQ³+J+¨À—ukW£­øŸÉØ7®Æ¼ğwh.zâ²Ğ¦B…Š`ì„\'N¶\n\"dZåì¨|²\\ZœÄRZGbÜÏDŒ0H&}Ó9-ğRm	£EF\nYMÖÀğÒÉúç‚q“ôŞT*oXÍ.3aXêbøüªÑ6§5Ú¾s$ªJ+ ·ĞBIŞ…¬;‚¼¹KF§4èƒpÄ\rªã‰Ì8®K\Z…b×zàÎÍ&5Š Ln£áêtv¸«\r¨™¿½ã±ö»\rèÖ»úÒ‹—,ÆÓ„<2(GF½<r$j%W®X©z±3v,Æ¿Gu”*«k¯½U|ŸW^yC‡Íòí¦æx‘Åüß|ó\r´kÛS¦LÁ^;å©)˜òød7lÊKK]\na¾—‡yO?ıŒZCCÚDd™²Ñ§Ÿ…\0#ßeâÄ»ğÉ\'KT_;™„B¯¨¨zôè©vØaä¢;±}ÇvÜwï$lÛ¾™ş:œEã¹ãÎ;ñÒÌ™(\"ïh×¦=n¼ñFtéÚEİ7I£•”íå³Ï?Ç“&!\Z‹àÕW^SsŸuïØEÙÍ0şÖ+p`G)ÊCh^•«–ã\Zì)\'5Mf-ÏV^Q6­[«m‘S†ÄÜåóà¢5,/Oíıcò39(R)â\r_{í5œuÖYj_Ïİp8Ãö”)MkOÿ3é÷üIØï¨GN<Î`!Á¡æÁQ7íşxÓĞZ\Z\Z½G®!é\\á—f·¨Ùö„§K[ˆ9˜@c1)=_ZÉ©Ôj~§p~`~v¯Mª®Ò!B¡*Tr™HÈ{¢,‚E¾‚‚ô{édÔúÅ2,ˆğ·xà¥@N\ZN+täK¶4Â&“NåŒ¬äGI\Zœ9D“kF½)¤îÛÖÖ\n;^Xï·¨¯mêú?zô(åao¹ùÕgí³Ï>SÎEÆ=_véeØ¹«i¡—õë×+Ï)­Ü2ìSr<‰°D‘eË–©‘oR«V­Â1ÇƒsÏ=W\r•Ù,GÒØÚ·È€ ‰<2<á`æQÒ³ÒA¶å˜”Ÿü•5Ât¨šŠÇ™ŠJãÈ-wlß`Î»sÔZâ²OfË<œÄü¤“NR.iÿë®»Ny,&c,Úµk‡Ç­© ï¾û.:tè öÉÌš/<ÿ‚2¦/¿úŠQ©ÓßË3©î$©g•{‰|ñÅ8öØcUõŒ3ÏÄ²å+Ñºe+F©,ÜrÛòÔyV:ÉM7 É3HÄºúª«0öœ±¤K0ù±É(0d!¿c1Ê\Z+1kæKªœşˆ4¹“ŸÈAãxú™§ÿf7Üt½šà×\Z‡?ÜˆjMÆK+·^u1F¦89&c´eÀM!\'Ùîº³QhK‡¹!‚C±¤]åŸêÌH¨#ašÁAyü¤ôê¥÷7ØÍpO(-#a“ğË…²r+ ¡f%U‹¹ŸÎµûŒ„i±°ÌÑK‚mp!`´¡Ú`EÂ×®õ1#ù…,Ûl¦áÉäfH¿±°ô”4’ ›œ¨4ZAƒÑ’ÆŠük8ıä°ä‹…èJØôí·ßª!bâ{¢ˆâØY¹½é­åœsÎQ£Üd´ÛÁÙ\'e„ÛË/¿Œôôt8[¶lQ×L:Uÿì³Ïb.¹‚LÕÄGà¾ûîSkB^qE=ŠŠÈQª¡•Ï Ÿ¨bxåÅ_D÷İUÖOŒ`ãÆ˜I%½÷Ş{ÕygŸ}6?şx5F[]tÑE(++S—>\\¡‰æÍ›ãÂ/DÿşıqÁ “Sfn_ğñÇêwåú;âÀêyât–b°òC‘sÄ…S=ÁèøâÌ1€&\'×Íc	<xÿ$œ˜šG÷uÂÉâfMóªI¹È´¨2WôÇü-¿Ï±çÅò²µ¸kÒDÌ$‡¾ŠrÎ{ï©ó¯ü,‚È¦´œKÏ]	û\"ó,À–t;ùµ²¯aú¼}\ZiVäi0&9‚	iäÒØ&¿A—PÛFÒiOyÙ¹dŞqì\rVÂŞ<qF!”VB.OC,ü¸Iº „ù,d\ZŒÕ@²ÂÇg³™¬0‘4êB¬I+\"¶\ZÈ[’tîïùÉjQoŠí;wÀÏèá”J¨HŒı¼›ŒŸ ç‰k¨®©\"¼ÒÁœïT•d^]@úo%¡§÷5ğ]²c.ì|v½\0[·ïEû¶%xâ‰Çéi¯ÇÂ…•×YBr{É%—(Ïß²eK,`Yîß¿_91¦ÁÄñ’%+×ˆÇ¯|ù‡DQRQ¾K/½TM*pPä<?¢ô=²‰ÔŸ(ŸÈÁªU$Iz~é[\'×ÉşŠæ‘G©Ö—h³`ÁÇ\n5ˆJ4”HÒ£Gõ>O>ù$>üğCuİƒ>¨–Çø€œµ¦¦Fï–ÉÍea\ZCòìâ$RˆÈ³|¾&£ó\"”mİ¦–|²”‘¨­êf\"ãQ$³*×Èc~*‹-Æ«¯¿Š—_jZæïÃùáÙÇGs>€ÇëaÙÇwÜÊòê¬ÿVù™d<şø*ÔŠH¡Œy\"É“_mÿZÙV¹}ç·ÛV~=\Z¨¼^’m7=½f‘/Xš&„‹2¢ø\"°šlh¨ó(˜eI7Ã\"iZiÃ`äˆÔúhL€ÄĞÇèc%ÀnÂ\Z‡Œõ6êÌ„c]<\'òÁ@~c‰êÔÅàÑEÉwôX8ş”d·DŸg#p \nn’æÉwŒJo5“èlˆjaÄƒä;$²j6S„ÏP ÔØÀgÜyEğn÷ÀGŞqñ°q8ùè‘˜ıÖlg}Lhå\'|ûòË/\ZTÇ>™@x…ÿè4`À\0U>\'Ÿ|²R1&ñÈÒÇ-#£©«¶p=‰,W>Hd‘ñêŠ·–c={öTQD Õ?©^111	&à+B5ß‹¨@“QÁù4ˆÁ8•î­·ŞR¸2P)33Ó¦=\r„ÌK%½,Æ3zÉòg[·nÅºuëÔL!­ZµRíhbd²\n€ğ7ß|ƒ7ŞxCÁGy\'áQ\"?4yF\\óç/À­7ßuV5eõùXH˜ä?Çw.½àrÕ¾¹^Zš[]/M:vÀUW^¥Ç¯½‘\'Ÿ§Ëåß®ÄCOb¤ù}‘äGK^`Ê”\'ÿfŸ“D]rÉE¿Ù8Dê4’$_î¨\r£I5ğYŒpÂ!¿1wXlğ“oÄ,d¶,DfaÒ¤¥^FÄíùÃğG\"pÈ\nEf\Zd6@0ÌŒ¸‘\\BZäù/a ·\'D1ædÁZä€«Ä¬¢4ŞŸFE%¼ÅM‚-ÃZCÎPh„µ™~wŞ¬\0\"9:Ø:æ ĞÖ„>4ÚIğ6Xµ¬¡4d»:!º6‚ÒgÖàô£0fäX|²èsŒ{:ú’|JúÈ#02,Wc¢…?,ã¸ûî»qÂ	\'(%C¦•‘È\"ÑB”G ‹|.\"Ş]\"„D–Ù³gãõ×_Wä†nPÙ#C¢x¢lâ¡%*È~1Y»å»ï¾KÕ‚ø&Å¹à‚iÀ_âè£‡ÒÛ¿‡Í[7ÀOôÅ·+0pĞ`q1jÜ7ñ<DM\0½{÷^Ì˜ñ²â3^~c/8Oõì½“¤\\<»¼—DF1fÿ-F,²|ùrÅ›$ú‰ñ‹!ÉZ3EäÙd\0—ü=ı†\r;iéN‰Ä8®9,VdÑ6­İˆÓ.:¿On4h(ŞÿúKu™ÖtÑûó°xîÇª)àìsÎVÆ!Ò¯äB~Î(ô{äoäë¯¿R+Md#ÉĞÄÑ,TÛ¿U¦­wó(òmùŠĞ±(#ÜB\ZÊ©Í,=,fƒ\Z åoğ¨L•ô4Çš†ú<>˜õ2Û»Sz8Qôğ>!^cK·ÃD#[PÃluÄ·^B4-Æh£CŸ&ıwlˆb_2ÅÑ,<S>Q\ZKØiæsàĞÛ ÷Äá£Ç×1òÈØóˆ)‰œâlß¼{½¨_¶IÂ<}ù‘LœyøixëµÙÈi‘ƒ©NÁ­7N@G†ğuë×*¬şé§ŸªÈ+E†$T•è!œâ¶ÛnS†#Š’ŸŸE‹)Î\'ÎH`–DÁê/½ô’Z?O\"ˆL½$©wá!¢¬Â	úõë§öI5J\"@>âÉ®È¤á“&MR\\A¶ÅC‹2ä«®+:¬Y½\n/¼ğ2áhFóábÅÊexô‘‡qâ	\'¡S—X±l5\nšå!3=Ù¹™È%¾êš«Õ³JD’w$|@ ‘<“¤„Eù:‰A\nçÙ½{·zF1X1~9Gë ‡’ç“ÆÄ‰Õı†‘KÇŒÃæ»<.‡È İs¿Eëh>š÷\nš7ñ’!GÅ[o¼ªÊÃãiTu0räI˜ıö[øníZ<˜\"û¿Eşf 3f<Oïr‘Ú)ŞJÜ|õ•¦†Âß#SV½€ûWMA-qù	1†jÕƒD,$5\'¬±4`Eü2\0JÆÊÔ5X¬6Ø,&ÕŠ,“ØÉòv³é™¹j¼rcĞC2jT×È¤‚xÒ­N„j¼ğó]³5@(ÜP«—†ÄäHËb™“tWúİXïÎ:”‹Q[[£ÖA,î\\‚x­\nZàƒŞC¯6İñşÒQZ¶-ŠKİL8ïŠ‹pæ˜31÷İ°pîb|ñÕçèİ§·RD–,Ó\r‰!F d[DŒH°şÃ?¬ “D€¿\'2öF<³(™(¤Dá*BÒÿ‘¬X±B)™xvñä}ûöUF\'ÊøÂ/à;îÀ¥Œ`‹È-FŒ8	7O¸%ue“lß¹™0é(5GİÄ©*¯Æ7_~£R¾cÏ;ŸóeUÑ—ç{N½«th£‘Tğc=¦xˆ†$„ÃÊ~á1Â]dŸ¼ßOE³£ÌŒ²’­™6y2¦?óª{‘™fCp]%Z%ò±xéb˜é@Ez\r<ï¾ú*Z¶j©¶¥œrrrpÑÅá“%Ÿà¾{şq™ı’(Y¾œÖÈğİÔ•ıê«®Å”\'›:Çı^™¶f&&~û\níù©AšzäÊ„Æì4	º\r¡¿Œá#Ü/f“gÂè\"¶+¥Ë»4†‰4’èb,¤Ìt\ZLŒ¼!¡ßÈ¬(²²m\\WsUeëÜ¨ ×HØ­0ä›3z #¼2š²‘Y¬Ÿúüëüxêùg±rÉgäQtíÔ×Œ/¶Œ‡&>Hø´7M¼	gŒ‘)etØºg/¶mŞ„…óæâ5’Âg_x=éË§Ò«Ê(ĞAÜ\ro Š Ş[8ˆ¤GÅ+\nÏe•c]»vU\n$\n+¤V8xbÉöÈ>YòN”\\ “ue§Ÿ~ºŠF‚ïò\n)£íÛ·+Î\"¿%×Jt‘6ñÖÏÄ@%b	?8x])gÑ\'‹Ñµsô¡ñÄ´ d®2Yùå³H„€ûwaÊKÏğ…€¡Çş‡ÀiôÈ»víÆK³^ÆŠo—©,•ÜW\"¼8áT’Õ#(,,TSyJ1b„‚…cX–ònò^’Ñè)Ï*½ÅYÈu\"]yÍsŒJ9ÛÙ¼nùÊhÓ²-útí‡ºxo/xœvºï~ÜtÓÍj·gı>‘!u\"*e\'å¸ãKùõ¢d%XZRE$jœÎğ(ùˆ,ùu×7 ØÕ4†@”µ™2~$}+;UT¥ñ¯ô¼•NéMcÏeÆ¦óÅHd¦va‰ÆH®IÚòsyO|y¹¿db¥£cÜ*ÑGƒ;æ@¤2Ä{Ã’ğ\r>øiF—æ[cˆ¼]…Ç~½ü\0>3\'†=:àêë¯E^V®<­jÀ2›,JiN;m/†A‡Fn•PÊŸštLz[Ë’œE”R¼´¤Ê…#ÈòuBL…WÈX›öíÛ«tîŞ½{qóÍ7«Š”ó_‘ë$Âˆ\'–l—(“d¤²Ç«”HÚ2Ä3_‘ì˜\\#J&°NVüZKHq°…ú:Âæ¯IÌÅ8Y¢ÊY5UˆòKÊì1z«\"È\'0Î7zué	‹ÛŠÍ»bõÚuøfé2Ü3ùa,ZLÏØ ÜvíM*ı+©fáF·ß~»Jïã;‰şH‹¿ğ!6!$]ÚnäİÄ@dH…²´ÔKôç ÏVÍrGròˆ“ñ\Z¡Ò§„HbÌÓ¦OÃ5W_‹ûÅ˜&ÜzğÑ•\\G‡ñÍÒ/1õ…gğØä)¬›(NqÆ9G9Ñ£Gcë¶­üÍKp#¦QĞÊo_R«®©VãËå++«hñ]S‡¿<I¹g\rÄY¨8ˆªèéùàÒQ,D^–[ü\'®—»Xy2W®üUmbLêÿÊb0uŒT^Ï,3)\rzbTbÓ$ •ìš\rjeºäxÍQøLq¤7Ú°ço‘SŸ…C‡A÷æ­à4§cÓ¶}xğá¦î3	\Z€=i)/¯À Cğú/£ÿ€&rYM¶më6Ú¯?	1Kßş*Ş›J.¤|Ö¬Y\n÷‹ÒJ;ˆ¤sE9DÁz=úè£*:l¢-]8ˆxañªÒ`\'ç\r:T¥G…ĞË=ç‹á	ä~!Ç${$˜[ŒR²\\‚ïE!% PEQ”¶hß¾ı<§X)”£d|D4¾«Œ4ìÕ¡Š‘Ïœè‚Çä¥ãâ;DÌÈòÙp”©Ş6ó¾œ‡‡¦=†ÏŠc>–ä÷3\ZÆ}xmÖ+øpŞ<,cT9ïÜsÿ%¡ Y<1\n1ba$U,ĞRWŞOŞ[xÚŒ3Éq²1|äõl«×®Q©p;ëyÃúj­Á¿‰$l¨OK‚	wÜÎßş¾FÒ:¯Î;â¤“NVí5bÀÒæÓo`<ñØãÊÿZÑï¯8ğ·ÉöîÙ÷§‡ˆèµzyÖƒÀ(1™®R?N)¼üO(‰\ZÅï2KŸÌM%¯ Z\'âø—e`…’?SÙp;°ÍH¸‡¼*e,Cr­q†™ ,K¨ÕWCÊê«P[ï‡—†Õøæ´µF$ìGˆ\nóäÓQUZŠÕûvá¥7šúï”È$òîœ÷ˆö’$á°iÇŒ=\nç^t	.½â\nÜsß½$Äïãbé;n½3f¾ <ª¤BÅ3ÊŒ0¢´âéŸ‹÷”È ¼@¢Š@&1á£d„xâ	G¶<Î!];d¿ài!­â•%Ã#Z\"‰–I—Å`xà•^•hbsrsT*yœˆ¬ô$“°É_qR7?ò8¯	#óĞ48#j¶Ë*;¼¥ØÚ‡wƒ_ u¿68vğq˜xË¸‰J÷ñüpÔGàğA‡¡}§„v³qß½wãÌ3ÏTÏ\'é^XÂ5$--K£IËüÕW_­`£p2]¿Ä<ö¸c0èğÃT<ù”“Ñ»g/Üzó-hÎhıÅ—_àÉéO¢yû˜ñæ+Ê8¤Ş‘CFïşı0ñ¡Ij\\Ñ+¯ÌÂ´iÓU#ª¦dåşsŞ~Ÿ.ıT•Á¯•¿‘ô?[¦¯}÷/{yö\\Æ‰ÜùO†!ğÆ’_W†Â?âĞÄ¦Rû‘r­œÎ\n•ëâ„J&’|[Â±²Çãƒ+Ïš\nOJ…P1BÖ¼‘ÛA¿O\rïMzÈx-„+¯›ˆ\0•kåŠÏ‘–Y€Å+¾†¿®Í²›cáÒyj†ÊC,ø	?Y6Œ;m,Şyë=Ì¡rÜuïıô”á°>½pÌ±ÇQ‰›\ZÁæ¾ÿZ#oïşıªEû¾}pù¥—)‘,¡xMQl‰*BºIÄxzD‚-P£¶¶VEá‹ÒF!\"KsKšU²]9$Õ+vâ©…ƒˆh‘ :´o‡1]ˆ;nûq—ôÒêr\\qÉe¨ÚUé³¦âÅ7fáëY_\"lŠáø3B¢$†×İkQ]bÀÀ%f”¿´O<?\'\r–º°nãôèÚ\r~<İÚuÀZFµ>}ûááGQÏ$ï)’…oH„”}ÅÄpBJW\Z9W2{’Í“¤†dÂä˜´ÛÈ»K·œÃGĞI\\‹ÃFØùªiÊÑ·Ş|›hT÷Ü¿Ú–ˆ,\r—’¨ß‘L @[i¸ıGI‘ŸÊ_f “WÍÀİ+§ (­@y1MX9T¦öäk\"&’ìM K†‘2y!Ùİt$%|L‰2bhq}BÍœ(K\ZD|aÄ“15}eD#µ‘®-<¿#w—Ÿ“1í	ş¾, éÙEÅó_á³§çáòûnÅ¶Ø.äÑV“Û§~‰‘COÆä©`îÇÄÚƒáNM“üPdÂ¼¹oÏÁÖı{pîyç¢CÛ¦(óÕ×_#•,\rFfŸCO.\"AúeI¸ôš<y2_«	î”¦²jjYEQc1~\"âiÂ	Ü:(Âo$ƒ$E„Ü:õ4\\wÃõˆ‘—ô 2pºó`ÈÌFI×VÈsè°æóeØ¹³={\'wlf;n½î,#¼óÛqó•WcwïŞSé¤aı_âú¯ÆÕ×Ü„P<	›‘„Çn´l×\Zºt§ç_‹;îy}zv¦2WQM’\n)å™„ƒİrË-ª[ŠŠ”…{I4Hd”ÏOgëc‘2”w>(·Üz+–3*HJ]D¸œ8…O/şÛâ7Eê@ÊS¢¸üD¯_+™ÌŞ5—Ï¿–˜…áİ\r™í[Ö”#ùª¬´¥Ä‘fd1€(uI&ZcÊ–~ ò e¤-E6dšD˜¤=EFVÉ&9XŠ®³`äÿ„yâ}e	7éñk,iÿƒ‹‘¾Ò„H‡Ò®„\ZgùÑ8_ùQ·¼Ö [Wl@Y]ò3sÅÍ	ø¤gc„‘ÉÌ\'\\’oƒ—\\u)Ö}·{öìfEÚáõ4âÁ‡Tø÷‡\"RHµàíƒ\"Q\"´˜‹HÛ€À.‘ƒı•f¬¤¢E™ÄŠâY®\"†\'xÿ`÷‘›nº”65B~µkÑ×?z3áV\Zì\rn\\xÅ…sæhL{è)¤çâ¼³Ç\"¯¨@õæ>(Òa´e›–ÜfrúgÁsâõY¯cå·_¢ˆ°<‰Ãn1âégÂå—]…c9/\\€5ôäcÏ:7lT³pJ‹ÿ´iÓTJWfWx)†#°G¢ª$<$!!Ş^²Z’å“(ùÃ¶›ƒÙ7)ÙîLG %]-ç‹JwIZŒœ2d@\"\\\'\"½Ò¥aSÒì¿äx~I~ªƒš4wäÃNÂ¢ç¯ÀrtNØ#|ÙÆê¨T5ÕuøC*kÓÉM¾7\nùûSË?«IÊX¾æÇb·Âd3 ¾±E¯MI›ˆLg5Z±$KÆg æ6\'ôˆìİü3{Àtodïo´\Zæê2$ªªì›@Ú-­á:%.zÒ…¯}¬Ãl£á‘àKÇÇ¤™OEãxiÖ¸êÚ+ñÄÃSÑ•x{=\rêü3ÇáˆAG š‘B°±ôW:ë¬³åÑÿ&âå&ŸX$8YÒ¤‚ÛïOÁƒƒÆ!\"Ê.J\"•,ßEÖ®]§\"ÅÁ^¹’­’Œ’ÈÁh´mÛv*GSÚŞ›W‹öøvõ—xC·¯ìû¶¬ß¾EİÛáiiä›÷!xğ!u¾ÏÛ€Y/ÍDcM5*ö–ÂXdÇÔû§ãÅ™/áÙ·_VÆ\'©·ó1}Z”ü§ızôA»©«LÏ®]Uo\\i\"Š+^Y²y™äÙ¥·°(±8‰ÒÂ.ï%ğKDàéÁ÷9(²-IŸß¯ŒCÚœúôé£ŒKZë…ó‰‘‰œ7î<Õ3aáÇU¹Ëà/)ï_k\"™8ÌV*½\rvB—t»SMŒ°ÿ@j«©°X.¤gfªhRW^«\"s“f¦(S`¨H!£	v¨ÕŸ6I§(>ºÀ¨¡“Õa§×&1¦öĞğ|0‚õ!$|q˜\"F%	3²bA4ZC¨b]îxaˆ†àNRù¼!bõª²}¼gáb`oõ<NèQ]ÓHM5+…‘q¢üz\ZâóÓ_ÀÄ8Áˆ‚ÁÍPQS‰ŸÌ\'ƒ³Ï:Ge\\æÌy—£…\"¨\"BH…´KJTZÄ},‡>’û…à¯ún•òpBR¿úú+Õ¦1•Ş÷A*ïç_€á<ïôÓG“Œ¦©vYn[²@;ô–ÒZ/ø^$ÃlC·C: ±6‰\n„5ßIO?ˆmôğ¹ùøú›e$ö›T]ìØ¹ùÅxùÕWĞŠX}óÖ-x•Æâ©©C}MFv$Ê¤ç‚M”L;oš€O,D»­±\'XÖÍŠÙ¼ø`î\\µÂ±´=HbARº!%³\'		I$ÈóI·ÉŠÒŠ·—ıb@²Oø–À!IıÊ{IÄC%ÑHzô¶nÓ\Z3êşùêş³^yE\r	ïÔ¡#Š›)cšÏ¨&“ü¨÷[ä/ƒX›»1üå³‘p©qæ¬4h„YtŠHŸ‰ÖN&õbø\Z‘]”¤o	edŒ¹\"ôêéä²Íëi4:Qh\Z‹,<)Ù2™¥D\'Ó‹ê-HÄc²î¡›Ln 3*óZYRLºzÄÃj¾g™Íã¨úPÉµIäbdóA8»ÿ™ØóÍfL¾÷	Ürï;æxœvÊjXØKpÎyçÀir\"îŒc¿£mÇ\nÛÊL+BXöõJÜõÈjV|“ÅŒzÃåß.Ç„ÛnS)iÉN‰aˆH›Å›$ÛÌÇ¦›F¯*o\Z‹EÕdÙ­Zµ$¡l¯ºú„lÛ¢\rJ:\n\n	+Ãğú<*5¼yËVÕB<¨`ø÷h”×İpöìŞÅrfd9I÷„-¤¡sn$À§¨ñæ}úöÁ¸óÏ%G9›6o‘C³ÿ Œ¾6<ñÜBU>?ß3\0 ¦¶\n\'<‰ÜÏŠİå°÷joiìŸ7âÌ±çãÚK¯À¹çŒÅäY’j7nœ‚R’Å’. \"¢¬7~	Ô’FRá%Òı]®‘Ô™“uy?ÉÜ	á–ìT³Âfè×¿ŸJbüTjëêšğğÈ_f !*İçNFyaÁ^†Ÿ¼C¦•¡®É´ı#FX‹…É—#&•˜¤Ê\n Lc‘9tmô.2QÓ~j¸L¬x<2¡2ù#’(w@\'İáeØ¬™w5»õ°°¶5 rŞ:èhİª5¶íØæcEU‹*XÚ`tÛ£pIÇãaKÏÂ²ßaD—!¸êÒkğñ’yXÈĞ?é®‰˜9sÖ®Ûˆç™ŠYÏÍÄ=7Ü‚)Ë%øVnıkg.C³Öí1mJjz&úó#yàÁ0áÖ	©^Ù*÷/ğH¼‘ïhÏHW¸;ŠÀWß€»÷a_éÄ	ë6,_¯] —¥«6#ÃéFNŸ¶pÅMèPP‚ãFœÈß3by@»5„oÒÖĞ¨Ñ9|Ê¸|és÷Ìô©Ø±vL!8ïLØ\\Šõ¥¨Ø½[²¢H,ß‡ºbèáÃqá%¢{ÏïIó;o¿ß˜U›6#@³qËq9Øë.CQ<\r\rSö`të“ğØ´ÇUÇEi5)­ÙÒ…_ PS7ú*ŠJ4np×]w)¸%\\DÚI¤áPÚ‚¤íD½DNb\\Rfj-Á`@µ Kû“D¦¿Bş29òéØî›Ñ  `FÌ`eeëá¯¬@‚ÇD¬-³¨›t&h¡¡Bˆe	h™ÒÆDè¤£1ÉD\r²”³ôÚŒ¢„ôÈ ÙÔÉ,áZX-Fo‘Xejı@#ªøQ¶¹ñ-uÈa¥\rjİç¹\0#OÓN>ÛrËğÊ}£ƒİŸÙÛ×ãùŸá‹Š%T%®ês&q+ÆŸ{vïÚ‰·æ¼…Ã\rBÏŞá)İEÅĞ£{ß.x~ñ›{ë5xä©	8%í<÷ØK°¤Y”·––Lº°jÅJÕz»vÃ:zö÷|‘´¥Ui$Ü¸v=ÊX&u~âV2µjQA3ôèÙİˆç\'^~=>Ş³¥›·©kwnŞ}äcN?§Ÿ:.ºr<}èQ¬Y·OÊ:ê„Âs¾şêkKG>A¦?1Öuk7ã;&ÂÛE¿í0Ë7öA-Ô|_Û.~#¿\rŞ¹UH–zPIhÜ—JøİÆ\rÈKËÁ€¡GÃÕFƒ§(Šı¨@5Ò­I´7´@å|\n*mXøÅ•j•FBI:şx)0Iˆ´$¤+Šp/iT>\"9…SH?-1\"iC‘°¤gåÒ&$\"Éil=qø‰Œ€àB/‰6¶ü¥rí‡wâåºOi7!Óg@@GhÄú©LNéÔËc¤ĞàŒëa”‰“ÌF„qÄHŞÃFÏÊ•\\—F£1vå’MÃfíT%\Z]u!Òö*Ëc°U‡ç÷À±#Á±CG›v­yNS»Æ¨Ñ£ğmåVÜ2ó^u¼óİ<ì­<@…Ô!\'IKM—uşìh|£ÃºÅÖkpÕ×âü.B‡6-¡‹Ø‘W‡-›6Âé6£ÕĞèÓë(|¶pòµlL~øqÂHÉ§ÇÒO—à¨#<7“ğWS¿Òú-xº#Èù¬äaÇ5\r²:(Ş W^w\rê«kÉeŞ§ñ‚pc¬êaİóĞn¨(¯ÄÉÇÂ}÷7-‡,¸\\FJ¿#i\'‰Fc8¼ï`\\Ó\rjÒÈ‘#ğìÔ)ørË\Zl/Û„Ì¾m`oá”ı1}õ<ØFöB°¼\nëÏ}>x®°zü5\r\ZybVZrÜrÌY8²ä×FñyåJL[ı!ÖìÛ\nÇ×^hqÏ£“TT—WÒö#İcÄëL’}bEú`‰QK\Z\\2P§Ä°„£ˆz\n1Ã:h0\"÷×Ju&í×qä&ÎõgÊ_j S¾x÷l~éY$ë>ª¸ÑJ²E^A/aj°åfÂ‡ò£¦g´RQer´¤0pzaá\"2á›¬òd™à©kDE¥[ª€\rA”ä¡ozg>jˆšì ]Ç©_¾[½	c¬v3î»õÜñÚı8ê‘¨©Ú†ÖZ˜éŒVvèi£6Zk³P1v¾»­Ğ\Zõ¡\nŒ>d4N:ôlß·ï,y+êw gë$õ:|ñí\'0’,×l,ÇğÁÃqİMW5Mv±¿§>÷Üs;~à>Ìÿh:wî®åÊ+›†È\n	—|¿òŒ¬l<DCYñÅ§\n.´íÖ	K¿şç~ŒI·ŞƒK&\\…+¾Ãâ/>gú\r„_ÉNHÔ†­Øe+—¡¨Y!?~8N>yÏùnW\Z¾úökPËqHÿ¤Õ’ÔHbËíØI/’?¤%âFª­\Zô›w1š¦£\"]‡²x;/|\nƒLFº©iÖXM„e¥\'^_ÛX‹Æp#U!X	´Ïn>Ç‡œ€®.øä9xuÚshHFÔrhÒ›VÚÄ0$s%ï-Kà”¬0+}Ğ¤¡SºäˆHÂA8†ü•®9ò]²z’Á“ˆ$\\F²}yŠe¾öúë0æÌgÿùK\rdé¶¯qÆâ‘•İ´ôr„ÁA ’“†©®‡NÖš“ÙEÈ3¤³aÒ`ÙfBŒäVÓ,ğÖzáÙÛ€ğ^L;ˆ4FÑ³¸#úvèŠaÇ‡!‡{nÊ«PÉWV¼/ø{Ó:|ôî»8æ¨¡XøÉ\"¼ôÂLŒ»ò¼¼y	F¶\0]\"\nÉÖêÈYdø¬fĞfåË¨é_ì\"&ñ‚08¬˜x×ğU4-—<áá	•Uá¡›\'aeæÌz_oú\Z“î»=úõÄ÷İƒÎä!OOÙiYhğ4àÊ[¯G¯Ş]±öÛUŒ‘³LU+Køµ×\\…q$œEù˜óê+8ulS—øñ—]kš\rG\ZW~;×m@Vû\"µæú„Ë¯ 1œ‚Òğ>F…Q°T\Z1ñ<Œ>ã,œyîYØÊ\'ıë;üäåäáĞ#û“ÔYÙ:Ømf¥¨aFd£?„¤‰\'}Óx_½Ş	Òl¿Ú‰ºD=6­ı»dùiBF—+İû÷FaËB´.jwv_Š{‘øPÖ«?[…Ûn¾	Ë¶lÂY£Gã–	·(cøiªö œ’¨\"‰Iÿ\nñƒşlBÖ¥Añ LH&m=u^‰È˜éc&‰ƒiğ?SşRñÆüèğÌ±0¤ÅÔòÄz›CÍ4â”†@k:´út\r„W#^î°û÷î…©†Ñ¥Áˆô¹8¹ë`têÜ‡Ğ«6oQ{f“Aì\'±›;ï=¬[½	ßìú†\n[P®ƒá¹ûŞü3f¼D…<3g¼ˆ®º\0f€Íp}áUR­úš¬ŠÀì×!¦³\"@î¤Q$MVBQ8ô™H¢Mq+ØÓ›ª°½b7*	AJŒ…4àn1—r*=ábê¦ù¤dÒ½»§LÂ–}›Ñ1¿^{æEehÍróUƒ™ŒÚ<Øè%İÜ§?3S|JAŸÑg!Î>§1µ±ZL|÷IäÖY&D&ì)­¥!áÎS/EÄ_‡‡¾š¹Ÿ?³Xõ)E½xfÚóèÑ·®¾ö\Z*Ü8Ü¾ù1d¶ÈAÈ¤éû`0RY5¢ôHAFéô09_}^\ZŒ„F	r·ñÍOÂ„GSï“•Á(ï÷\";#bü={wc@—~Ø[|\0i£ŠQc!ü²g\"ö~Ò6ê	“xûíÙèN’/\"êõÃF>‘ƒÛb8?4œ’–•ˆ!F\"-ïb<…¤‡°ÓáP)c¢,ƒ­$#(½„oı–¶ß\"©ˆÜüÅ}ØîÛK¯m€Ÿx·jë~µ®Äõ•°F-È§¡X³Pœ…!]û£ $Åí;Ò(šºLÔWTcïşİX¾n¾^³uÛvaëîÍhHÂ_LèÖ:ùm‹a3\'=ªp¢õ0\\u89CÏÎ¸ùúkñğã“‘3®7j¶“àÖ…Õªº™q7²\rvØ-™pd™QÜª-Òœ6tÍì€|÷…ıä5{P[U/¾[‰•5¥È’¥šºeÁ”gW©*6lÇIm† »~ÈÏÌV‹ò|óİ2<¾x:òG´Gûş=°ú­/Ñ5X„|s.ú\r\Z€‹.¼H¥Î<\"2yò¼şÆX¾ì+œsÆ™è9°/v\nN~âGipj]¸\rş\0Æ8\'¶=OÎ}Ÿ×¬‡ÕMN”`Ö©·ã©Ç&ã³Å+Ñ¶¤5î¾kéy(™úÛı,l]Pn ÛìDpc¢µÄï&7²ú#`¬ƒÛoB=!«ûSFÊõ\r¸íŞ	h¤Ã¸hÜx¤eº¡\'¤¦¨ÙW¬^‡ÅK–bëbEt¬öÀ5ÑficÎº\0Œ¿L5ØÊL–Òf$ÆpĞ¶ÑüTä9.-íÒMÔRZÛ¥3£4¶hU‚g~V\rĞ’ô°4*Ê¤Bà%¢üUò\rDğ¢¤×„,Ix“¾ArºX¸&	{2C‡lK¸L2„\'ùOoHâ•7_ƒ7éE4îGä@ˆ^°²K²àšÑ©KWtoÛéôJ™ùÙĞ15šo[Õ>¬İº{6mÆª•«Pña¯§É<Ä3r:¨ZİEdZ5†‚¨:Pöæè¨5Ç°fÇâÔN!‘ÑÁïñâ	Ñi@oµx~NF\nééZ6o“QˆÈÎWU‡Òê*ìØ½¥;`ÅwëP¥ÕcmÍ6h9v„F02Ø³“pX¥¥ŞŒZ‹L›ÊèV§ÇÎ9ßÂä	«l\\ÀhB³Ö­áÊÒ¡´r<\Zs¡Û\ZÆí—ß†‚â\"=æÚ;\0+ËìÿçÖÜ;Éİ\n¶Øˆ­``Æª?kí®µpÅ5°EQQl\\Åµ1°Aé†é;7ßÿù<3¯«»ˆãş9z¹1÷¾yâû=ç<Ï³£S®•c<`£Ã#=­=wÛEO¼8I³¦ÏĞ)#Uª0©¯©y¥imœÓAG\r?RŸ|û…xíiÕå¤MQ\ZÔ£¨X‹Yb9š§‡»XÏ^7IñB]~÷(Eâaıõ¬tíŒëÕkë­T›hñ„)Êû´Q}zTß=5¯æ=Ûq†:^G™LQÛ†nºı®kµö:ë)¥êA\r‰YdüWß\'Ãn¼éİ~ß-\n\rn¯:3º]ÖŞYÿ¸ñ÷ÅeO¥t/¨©E†sFHNÀ#à|ÆÄtı®¸˜?°Œê8‹léâ–ÆE×\0…Gt”/pì÷’_4ˆáŒÜ5Jf„bÒŒ`ãä0>½z+T˜¯œÜ¬z–©K^jÓ¶\\Qç…oMZô0\\<}á,Í^<W³—Ì×ì÷¿ÑS¦d§6ZP9K¡5Ú(·¼@ü r;Gİâ‘%];+§Öàı–Õ¤–zæåRö÷…Y­*Ó†Á5´Ç¦{h¿Ÿ|yE™;õ[×HøÚ§oëóŸë‹o¦«²v™ä\Zë°ÈÌÂ‘¡¶mTÜ¡Xy\nìaÀÜHiõâF‹lí”Ö©.Ré_Õ²fzDáT@¹u3ğ®šg-\'¿AKëµpÔ\'ºâÀÕs@o\rê¿¶>ıò7ËùÑv³—,]än(s3`Š¦C²Nï|ø6¼™‘Ù\\Z¹W—îªNÌWmi@#N?Z[o¹¥ÎŸ0JŸ/ûZÌØ‹-\Z§kª²[×£¸XS•j—ßQgEwÖ—Õ×sæéÜSO×k5“õRÛ¯µ†×U³şù‰v-ÙDçú\\eJœã?IÙUv’æ?ÿ®¶°£®7¯œ\"µŞ|ñLP¬ñÆÇP¨eéºÛ«+O¿Dñü´öÜ|¾şååÅ”LÕ*ä…JGœ°<*F-âMµ›t,õ>g´%ºE[?í d°*\0´bĞ]ô“ùí\'«Z~Ä\"‚¢£\r€şk¦˜7õËÏ)Šj‹M·Pa¬ĞÍÏš*h‰}ÿ©÷Uºs¡ò‹£jÓ©Ä¼Œ§j»)ù¥¥Š1Ïaíò@X%Åa5zI»	5.«q³„D7ÔÔ©¬´­¢Æ?Ÿ×(ñ¯´ëÚ[èÿ®¹BEš·à[Íÿf%¨,1rù¡)írMú¥ª\nÌìftë®’m”—ˆ¹V‹@c½İÄŒùY¥\nÊt*U²4¦šx­›±±­apÖ2Åie»µUU›úUk®Z¬!G‘Š„j¾Yª¢X‰AFãRÙ3 ÊsÚ©>×»o6‘È–2ú†ÑzêÉ‰æX:º9pkø3mU*á Ñ±‡¬t²Q±¢=1ñ)M1bÿî—ïª¾<­ØƒT·F@™º\nuNĞ±œ¯«*UŞ.Wíë\Z5Ë”¶«×C7ô;Hw?şŞO|­À\ZÕ°èİ‹ßhâ©cÕaşúê³5eÊÇ:ñ¤Óµ´±Vûïº·ITk–š¡Ï˜¥gŸ™äõşÑ/½¨~}úèÔsÎ°O|5ÉÑ£O<®S=QE›õQ²v‘†m0L#<\\í{tQÆ|KaÜ$ÌêÃ!—¶e|´DÌŸô‰Á`!æ8e_h¿oş=êÿN~w‚üßËéñŠ×ÔØ6GÅñ ŠÙ“…\\–{Ê3|®ªRiy©ËŒDyŠ¤C\n™76iÄ2\"$øúƒ/µìój•vR÷ÎıôMÅL»¸s,˜ÇKYlïÒVåÅÅ‚\rêÜgMí¾Á–Š$‚zòÙ§´(½Xñ‹UZY¤µº÷QCºÑ\"K~Y„™»Xuµu®U›õJÕ¶CGsËÉ¤”0CÍ\riá3Ò÷*3à_³`™ N]Öî7P­­åEª«Oêcƒ_Í£X:¨ÊŠ\n}ôùû*.e©ˆó–%özË-¶tİ·xQ3ãÛ®ŞqàˆÔÓ¢oÇNM½ÿ¸eŒyı‹Ì¹$<x€J;+³h¹\n,‚…ƒ¥Ê¬ĞÂèr•7†5\'‘UŸ`g=yĞ9úËÄ›ôê¬w´nE\']²îIzwêûš›mPzA•xx‚>şüSåŒÏx·ÜÂŒÏ¾ÔmwqS.~ü©º÷ÁñÚiçmô*©çkëŸ¯4­=rÎyê–k®ÓÀ}6Tr“R%ì˜Ëª²Z§ÃÆzqâ;úàÃwİZõdÆ€@´‹À%¨¤#~·ñO‰Ÿ©\"-ñ…T0cIü‰W¥¬yé‹Wuôs§)§w®òj‚Ê_dÀ¼7İ±iã-Ì|5â5/1ˆU)óÈ¡·¸&Y¯¸…é¨Á´ÒúˆµBZZ—VÚ OÇâEber\Z\r¥Ua§SÁ\0½<ô.ÍĞ†ì¹›úwï¥^ıúkí¾ƒ´Şúë¸%\"æår|Ó~×=¨ØøÒ?Ÿû§„ÍPŒhWd–÷ bŸ6(8q±öYW‡u¨ñFÛÆú*kÛÖÎ# ëG_¯\'}TÕµ5Úl«­Õ»go¥,úí¹×^\Zuíµên•Š&8aJÜ§·‹¼Da¾ÂĞVQTXä²[t\'·kW®­·ÛA¡X¾î3Vç_|šÚÆ\nÏä¨gOóø5óÕí˜M•n—VMz™ò\rûÏ±íwH•èÑá—èä×nÕŒySµk¾lÆ\"unÓEŸ¿?]ÿªÓ¸GÆiÈ°İ\r1*˜³T]ºwvÇpß¸»tİå×éöñcuò­ç«x~H³f~«¯¾œ¦Q£FëÊË.×ÆÃ7Ğô¾qİ<Êµ\\-{ìµ™Ôù£®Ğ~»4MJ!üqõğ¹šÏ•)ŒhTÄQÀqñ¾‘‚xû8Pi‡ŒSh]‘¯üŞ²JYûÌÁJuñ,ZU\Zn«†võJå„•“4LkX^ö šAxBF|=óş\rñàÌ r6¨CA¹æv©W^Ú YuRñª—µW*/`<…ëŒ\'fN”j¿àú\nÎéó¯§é®Ç¨À¢Ë÷‚›ãfµÈÑÛ•x~Â#zûƒ)zğÅGÔ°“A¾†´¯/ÑµÃ/RE0®Î;×}•‰“§MıJ·İz³î½ÿ~1±DK™>ık7Ã-ÓE•BŠ¢ \0pê4ÚÑ—Æn9ÒÙ×Ÿœø¤;ÂPmZCößSn³‰^~öm¹	c´´ß¾èÍø\r:y[e#ËT¬´ÈU¤Êš€:D;ë¡½ÏÔ¡/]¬oê—¨MYå[ØîUÓNËıZe^Fßß g\'Í±²`É\"½óüózéÅW4~Â8]tá¥ê×{€6ŞbsêI*6¸tÅi—ê¦WîP·ÃÖW¶GTS¿0œS]ŸîJİ?CÙçé½)o«k7Æ¿Ïv‰ôY!œ7‹ÙU#C?\ZBZà™’bNñÇ»À?xFhƒ‡˜‘V¥¬29bü©z±ê5”ä+Fu*É\"š¶k²ux_¿°Bí‹Ëœ—0ã1ˆÒ)b˜¼NË\ZÜà¨TŸŠw´ß×%]±/˜Ãâ8UÍ[ªh<¬YRØàYC0å°ğòwçjD?İ=ş	u)ÈSÖ \n«6b¿3Éç*eÊšyŠ\Z”sskQ\'0™0~‚ÿˆyê^Úzûm)ÈÕ¶Ûmëºgï¸ıS‚nÚm·]İMg)	Œc;V;ï´³§À”œŒ ‘l@0L1™AËI¤WZØùí¸ûÆé™çÑÛo½­û0ÊcFÔ°áÃ\\ê“;·õ¦[ê«ÔLm|üVšY¸PÕá:ƒ§F‚—fÕ;ÜScºL§M8M_4.•WZ®•óŒ7,ÕÒŠ\n~šUìÛjƒzõªÎ©U×!”	G´Au/\r9B;l¼UÓœe®—7¬ñ<èÖ°ÜpÄfZ¶IJÑü\\Eç†”ù2®Š×giÿ½ö×å×7MÎöˆA¤oºÉ\r&´â˜©„Ó2BŠ¶¥ÎeĞ×a=¡şA”ñ£Êª’Uf Ÿ.™ª]ï<@…İJİH¿¼tXl1æÜ“P/­VÈ%´F™*µ*^šQ}Wd¿‰g4oò4¥4©»õª†´ÎĞuUgÀ·&Ô¨(ë£Ì•´Ñ‚×¾ÔĞÄº:êˆ¿j«Á›³eÈJÓ4=væ\rvúõ\nYÁÊ%&=Sú°ólŞHsçÌ7eo\"‡„z$§Oà`4ŒÇ Ã‡0”–ÁPÌ6gl4ŠÂxq&m`”-ğwrş´|ch(°ƒğ]_Xù­7ßvk}D£¹b\Zæ¤EÖë9@g¦kËsì˜JSªU9ÏuH¯ì£¼\\§=r‘ª+¾T~›Î\nO·Hİ& „EÄrs@©¬²eAÕD2*Î1ÈyÃû:}£ÓtÎgÉËX¤µë”2ØÊ=ºá†ÛtãèëÔX^¯nıºişgUjäQGè”3íûYƒÇ°\Z\ZæõûYøÊµùÃ·¸6d¨Hßr‰~Ñab\nf…Ä¹fp¥ä’‹/ÑË¯½¬½ÖrNáß_V™ ›]»“*Ë3jŒfU”dòZ)\"Ù2„’§\\U/\\¦@Û€¼â€bÅó\Z5wâ§j_U ]w¢MÖÚÒÈq¹:÷è¬éófëÕg^ÒMOÜ¢õØTUùË”Ó¡P•9I»¡ÆÙCUyÿW*˜ÖÍcnÕ¦f$Œµ˜ùÍ-œ5_n¼¾òÊ\nUm;/`L‰]Š¬yË İ`nZ?#–O™âÖá8ÉnÖó/¼àÚ°¥dà†Ãhé^QÀÕıVÎÍ7ÿq\Z\Z`¬ãÓIib (=™êK¾R3Áh\'ÁÀ+æÈ:ÿüóÜš?ó”úõZSì´·˜ú‚zîŞO7ì®åZª³ë9éŒÖOôÔíıEû>|º*2ùÊ‰uTÁÒ/]ÔNE\nT6C	f•ÌI« >ªÍgvS÷ò®:úäTRT.ÏÈÖK’Å‹!Mùôs½ùÂëf8Y•OÚaÈÖj×¾“2q5Û©—I)\'v™)`×¬%1çœ˜¯‡AfvÒãáÚÑÍ?¡½kxí5×hæÜÙºåÆ_·üÆÊ’àÅÑZE’›ŠjâG/¨ }aÓY‹9æéğPAcÍ,ŠÔhFÒ»MO-øp¡>ü…®=úr<àx0â\0\r\\o]uY£‡ŠÊŠÌóöQ_{ıÜv³zGU_\\¯%K—©¤°ƒJò‹”—Šhî[3µnÇµ´ÿğá**.Ô?ŸyVGœ{´ş>îZ5¤\ZØ{-µ+*”çæ¸ÖtÈ$32ÙÚ+¯¾¢ÇL·Úzk78\0‘&: Øài204ä!ÂÀÙçœsS m&Àp4s41ƒe ÏÏØ¼)sf1İÅ/ˆ<©Oêğ¢cÙéÚ%JÑ~1lßÕ¶}[ù…ê+Ó§?Ò”\'«úÕ¥ÊTxêÔÍœD`®^:Y¿Y~ıæçÌÔ\ZÁå‡‹¤‡ÌNìÚY5õ6nS¬©³çkÚÓÕ³´‹ú­e°+°ûÅ\ZAe²)uîØAƒ7ÛXƒ7¬ëT~A¾yÃ˜f|;S±¼<…-\nã8àVDz®(p=¨‚Óº“ÁùZFˆ4d­¨­qŞÔàf“ß›lçÿºFkZã®óªU\ZAşgl¦ÆÎ)t(–—4¥ä¢‰ÌCyÜó<Ëã	åÏ4öø]r†)Ì~»*VĞFéT\\Uv#RæáK#y&=:özù™Jn×^¥[uRÛº˜’3+5Î·Z2y¾İşsÚùZ£_Ó|­¦üèm{Èzíœñzèö‡´ÃÎÛ\Z†0¬ºñL7CÁÊÏ˜üT+F\0TBàƒğ\ZOÉÈ9ú‡ˆÀ(<&ÙŠ_-h†!@F‰(ûÅp|aÈ*PCz Œ`Â8).Ò¨W]_£ûÇsùµI®´`ú\"İıèX%.h¯¥^­vHÖ‡üE‡İ3RKãO‹ÚµÏšb7„òÂÆÑ,ôv(ê®É÷¾¡M«ÖÖæo¦Ë®h\Zãí™BcùîjÂt6äüŠw@ú™ö?øp}òşÛŠš‚û°\n!kÅL’\\œœ£àx‰@ê±~½ƒÈË<_$2¸†Ì&CŸ×ª”Un c^¸U—¿qŠ×îe7Ã.´íŞü“ıPÊ\"ˆ²(RÒV™é	…şù­n¹f¼¶\\==öÔ“úì‹OôúkÏ©KI7–jÌcÜl(“ÍÓ?pÛX}ûÍ×vãZR±@[¬³¥†´¿v:T¹Úå¥L}Vcí{ç}p­Ò±m¼ ·ÎüëùÚf{æÍs¢¡\rÆŞé¸E	É² ¸ÜL.—ïñ>ƒ/Ğdn­((\nMŠjÁWÀåp–Ğƒi| ¥d·=G\"já…iù¡E…6o\"0,\Z™â=­jã\ZæâuÇ˜»u‘aû=öü~Îªı†ì¦W*ŞU÷¿®«éJíjFrÉ^\'ë°ñ\'ha¤FmÂe2Dj×¿Q¬Û’c0*	ª0ÚIyox*Ÿi†Šèâ«ÎÕ şë6oõÇÂz–Ûo·µEÓ>ˆ8ğ`wmx¬ØHÈgc bÅhcÇˆ¸\nÑƒ¨	9gæ3ö\'dXU²Ê\r„	6>Ér=s_æ¹â¡¬[Ú3\\(Ur~FõŸ,VvIz»h“56Òğ‘Ç(SS­“şz¸¾jŸÒ¾9ëkıuöyg5\'\"ª©ª5îUã²Z}òñÚp›Í•WlxØÙåaêzŞHŞ•×_¢©™eêé¢kÏ½Lëo´\n,\"yÑ°¾´ˆ@KŠIJ|Ì\nTÀøFâ?#Œ–£\"Lô€{ğ] F,‚É ÿàj°6Q‡´\'ü‚ïMˆLì—Éå«÷d¤]Àæ,‹ÀD×xe…ç÷5(2êÚÑZZ±H·ßq»;¶y3gë„‘\'èíÊ©İAë)]V®\rKºèä÷ÔA_©*‹âÍHó3	ÛPBqƒºñ¼\"¥ƒ¹*‹–jŞ³S4¢|G½å^µëÒÎ¢å1ZwÀ\0‹í¾eçÜcˆ/‘lÈ]4t×!‹úktóè?Î›Ì•ß”ˆø×\r!j¥™é(‰\0qÉX¥¦%RS0\\•²Ê\rûÂ}:}êåêPÚİ5ÁI•¦2Z0i¦v.¢ş]û© c¹¾6CZ0WWkZ^ë¶±7ê¤».ÑšåôÜõ“ÔÅˆ:—œKí?/³£“›{“Ìš1SSß™¬³Ï:CÙaíU3¹R·œùíº÷®¶‹\næ1Yœ\'8„‘¢VÁğP /~ÊÏÏMn™…¹Æˆ$Æ@Îæ¦+Ø‚²£,şXÆ?\0—ğ´î±èI¢!´s“òe|9ŒÀ£Î€½€\"|\"2óíëÕÕuÆuît‘pöœ¹zbüãºù‘[4«s­Êº•h§®ƒ´×Aûé†WĞ²P–Gíú•›‰¨mEHs¿˜®dAPÛvÚT%srµé:[è˜#RŸ¾½uÈşÃõôÓ“ôVó˜Œç&M2’ŞŞ]‡‹.ºX#GíZCˆÈojDL?Z¢r8à,Dà$ ôLÇç@.®$ŞÆ÷p@ÖßkìùÏÉb H—Û7P$¿ĞnfD¹É¬ºæè‹û?ÔĞ5wU¸æ¾£´nódÑÉô2ÕTfuë7é¾Ï5HWÙ²BİşUÔ¥\\m,‘¤NPRTªÚÊ*%ÂæÎ™©ÉoıK/}ğš^üê\r:lknZ¬ÏÎ|Vïc7ò˜ãUPZ f”\n3o–«6\rïVqƒ2Ü ŠZ(!ğÁ0€<¸„<#Şö\n¼!F„@	(2ØC>Oì¬Ñ XÂàÀ*”ƒép²XäUÈpQhá ËE¦Í—{ïg†W««¯¾Ê\"á\0]uíµni‡™ŸO×˜ÛoÕâ´EŠšejWhQ<Ğ=s_QdãîÊ\r‡Ô®!Wég§kèÆ»éƒ)Ÿ¨C×r´ßÁzÂ Ü	\'¯\rÖİ@×\Z­·Ş{[>2ÁEN\0ÏÎêZdâˆ~Œç@€†D7\"\'Ñ”¨ÉqsÍ€£Lø†Ãà=ŒŒïâ¸Vp¦_¥Ä4G-#Ïª?Ì@üà]0i”rÖ,T]°Q¹ÆöòÒJ&rTışlŸ™¯ã†®Õ5êÛ£—?V•ÌQßÓvR$š§¥/ÎÔâIßh—î[©ßFı„Fµ¨r¡¾5ùÙ‚©Z¨T·õz«ØöÑØ7_ËÕÊõÊ·¨½tÌ4İrùhMxî9<â0í9tGw\\L¨Œ23æ€ñãàgà7‹ÏÈ¥ó#ˆsQn(ƒ}€S¶+oë”y®ğøğß£¢D2\\r>‡¯\0908PCa õÅ3ïLZÅ$ªÀm€cç_À$Ó§ëXã?‘Â|}¤qƒaûcİZRmeá{Ò•_š¯zXó.t‹uÈk«¶ÜV\'ø}²€”î=æíÿùô?uÌ1\'¨Sçr·Ä\0†ÜƒáP&K-‡ÙJàDf~ÄI`<$\Zˆ³Ûl³úqıëÁ\nU´§0É5“É¯1²ÿvIçÿDş0Aö¿ì MÎûBİ,lšPI\ZIÄŠÕ¦*W_OªDQj\r“²Ş©w;ÍÎV(X¦‚T©òR¹Z8±–V-UYn©ñOÉ§g©WIwUf“JÆ¤ºX\\İ7íªXßÍk\\¤€Aˆ%ı´ì¶Ï´]ñz*ëÙIçtšòË‹µõÛèˆ‡ëğ#y|‚7„Tû„“ËÈ\'í‰f‘|z°ñãr«½òòËNáJˆ\0t»)˜@\Z0¶:aj(¨A¤òk0/³}EcòÒ©åúM|ê)Mûú+­ip±{×îZoĞ }8åCSØ˜úõ]KËÃU›3\n<ãP%ÊÏËW2^käùn=b†ºÈ¢èA‡æ\Z-¬Õ_Ï=÷¼Û>Q!õ—‡t3]É§A»	Ñ´å¤-ã@ø.×€48¿Eˆ$¤†yüò‡\ZÈìesµÎÕ›¨¬¸TmCEj“_¤L^Z£,ÿS8£ŠÂ \"¹Š|S£§(d®6¿R]¯åÆnT¥—ªÜ*85®iw¢‘{­o>«ƒº¹Â`nE•îzú>½_8OØÌ¢LZïİò–ú,l¯{oŠÖÔës)QÅò\nƒ:×8í{3:!àc?m	‡X¹0¾Ç\r&ëBñïãƒÍ¨Ì\Z8H»y¥\nÎwù¿]”ƒ[àï>¡hD¢\rÛ„°“áòk-xhŒxæQ™ış%„1Û3gÍt³2bœp’åf<»ïÁäµxşÕ™êŞ¡³ú÷5îWZh\n^¦é_MÕşÃ÷×·ŒÑ¦›o®¿›{ì1Qv\"ÆËXöK?ø¯‚Ç[\nçÚòšòk‚sá\\0,`%Û!šûcCş(ùC\r¹ø­QºûÃGU(w3,Æ\rbÆÃi•×\'Ô1n\nT˜«9Yÿ8«ã=Ö¢LH2mtÇı·ëë¢¥êvÔ†Š/­Ö’{¿Ğ}—İ£í¢¼À÷euõuzâµ‰*Ú¸¾2¯7¼ÇÎÆ7Õ>Ã‡)±ÖÁ€vº‡N<îX\rÙcW§´ÃŠéI²KÜ\\Œ¸@›c|â‹PÔG{T›ŞÄÈô,3¤\ry‡s`||ƒ`?¼FAø=J‚2Í\"I¶ŠXãºÑætA ïüEÅˆ(Fb´x\"\rQe»í·Ó…ç_à2k,îò±—,š1×a‡ª´mcöÜ9ºìÒËÌÔúÍîüãFj¸šñÍt]Æ1Çs­è@ ¼;ÏQc1÷—O!Ùp2êA;‘ÑW9ÿš!ÇÏñq€WD‰’-\rjUËªe<?!oşWD¢ZĞe¼Şõ†Õ‹Õ§¨XÅ›5œ¾haVÉÏ<ûÛ8qî:ã¬Stø9#uİèkì{%ZVÕ(¦ÓÜzÀ:ê¿ŞšŠ¹õAšB6ø•‰ÅºõêªÛ¯ºEÙW«õ×-şO»ï³¿êL9JÊÛ)Ìˆ&á¼^~³iJLn7EY7@>óo(äšLğ¡å\r$+ƒ§Æ8¤«7ù‘§¥RøÏü¥\0Ëãñá“±‚»P,Ä(yÆıÎ_`Y7\"¼‡&@Œìî»ïv†¥œï½ï>mkÛ\0j¡„Ôî6xÈßdÌvßm7]pîyêÛ§N7EŞu…ÚbóÍ4nÜıÎÀÆÛñ`…;Z^xPÇè87¼>|øÅq962T¤ÊáOœ/Îß‡‹¤±!ï\\¶MêçÓòÚş!b\'õ‡Ëç?÷z^=È[{ÂŞà±»{k]³¡·Æ][zC^=Îk;¸À»îšK½úªDó·›dIu­wû7{7íëu\ZØÅ;ñÄã¼Y_~ÛüWÏ3Òè•”´ñŒ´6âyKİó·ßæM›ú•{mÙ=Ï=Ç3Üí™Â¸÷vspsy1÷0è=÷ÜsîoşoÎ9çï•W^q¯‘šš\ZÏn¨wß}÷5Ò$¦¸‘z÷šßZñ,z¸‡/¦üv¼%)Œ{oŠè}9õÔS½6ÚÈ½3fŒÛÏı÷ßïŞûr×]wyGy¤gŠéıå/ñÌXÜç/¿ü²wÅW¸×?ü°gïY„pï·ØbÏ¸‹{pL:tğÌ@½‹/¾Ø3ïşùq\0Ï¢”».ìÇ gFàY„p×É\"€gÉÛgŸ}<3P·-3\Z÷7ö=ş|Ï”ß»ôÒK½\'Ÿ|Ò3ˆèwûg»¾X”ñÌ¼Y³f5òÇJ«0ä7öçõôzİ¸®·Ñ¥xıOÚÄ+Û£§×{@ï­×ßuß™ò¯ÉŞ 5y£¯»Ò½¯©oğî³‹}é%—{‹fÍuŸ½ğâó^ïŞ}¼áÃ÷ó>øàC÷Y&™²¿WÆ»î¸Ã»o\\“r%ío¾ÂO™2Å~ÛÛ3Bén¬y[÷9Â\rã†&ßªáoÏˆtó;Ï)&7xE™4i’gô;ó¥¥‘Œ\Z5ÊmáxP`_‰}1¯î±èàYó8à\0Ï¹û±HåáwçbÌ•ñ%Ïˆ¿{>ï¼óœ´ŒÏ`“7qâDïÃ?tÆ‡p®{î¹§gÑÓ3ïî>ÇQôéÓÇ3ç8ÃÁ`ŸşyïòË/÷:ê(ï¦›nòf¹ßZ4ıÎP\'OìYtğÎ8ãï¶ÛnsÛõåÕW_õŒy#à8şhi5‚lwã¯Ï=y›^¾·şºı½.:ß»şæ›¼Æ†:ïŞòÆşıVïâk®ğ?îmşÕ÷2}á,oÃ­7¿k’Œ]l.“á¢7]øL	¸×ü}Ee4ˆóÒñ[_aû÷ïï-_¾Ü}N´Øl³Í¼o¿mŠZW]u•3®ŸãÎHZzoÄ7NÏŒøŸ!†É›_aÌIïˆ#ğÖ[o=·=ş†\\wİuÍßğ¼\'xÂ3Èó]Z¼x±WZZê^ã¹‰:Æ\\t¨¯¯÷ã{‡v˜‹\\<0gyÆ}Ç¿|†Bs(2òØcy{ì±‡÷·¿ıÍ½÷…kwÈ!‡xÛl³wÏ=÷¸ã48è¢PKCö…}ÉwQãƒ>hş´õÈÎAZÊ\'> hM¾­İF_tM(¾`±ú–ë™‰Oé“ŞÖy\\«‹Ÿ½T‰dÂ°i¨‰i¤í_ÃùHq¬HÉú¦×`e X°.PÖüÃÉLï	fLkbÀøßçïàz²E¦¨î=„šÎR¨_gğ„’š]¨ipóÏ	D\ZÂIÍƒíP`®Ÿ½‚Sğw„ÏèI›ó –\0¦ç8áÔHãRK!Q@!ÎÂ¸ê)´mnFHÓ×`3©-\"ËD…ŸYÖ9’¼æ8gÒ¶9é.¦XJ-ˆ¤\0ÛâïTº©W°„k…Ğ\"bÀ¥Â]‹McÂqA¦ñ!ãÇ@1zªÈtÁ]X’ú×bßêÄN¶UÉ‡‹§zÁ{yÜÎëtú@oúx†öö´_;¯ïÃÛzÛ<µ«—·^ïæ/õ>zî\r/ÛĞä)¿X8ßûÛé{»o¾ƒ{´ôÄ?%¦Lü;ƒ¬µÖZ?ğ€FŞ¤@9æçµ‹àU[zßêêjÕ~úi÷~Ø°aŞÎ;ïì^ã­óóóİë–WxñÅ›ßyÊÀğâ@œ–ÑOÏAà¦ î5ÂuÂƒãå‰f„^4\Zu°¯n†ô×ò·¹hÑ\"\'ım²\r ¿ÛvÛmİ¹ì²Ë.Ş­Æ÷***Üw ÚÂ…=3ñ¬Ö(­Î@g¦=ãµ½¦—·ÖC¼~ÿÜÃ[ç‰İ¼\rì1àŞm¼~c·õÖzì\0¯ıA=¼¾Ûv÷†ÛÁô`oÔu×{m:–yËš‰xKË†¢\0ÿûßİ\rš9s¦#Î®¼öÚkî&ów‹\nNá€àâ¹s›8r‡q”À°6\ní+Ë¯‘\r7ÜĞíñ!×ìÙ³½­¶ÚÊaqàÜŒ3ÜçHÛ¶mÔA|ÃohhpÆÉ¶vİuWÇP`Œ£_¿~ŞÉ\'Ÿì=şøãßÁÂ–1ÿë_ÿê \"òÑG¹dÛD0´±cÇº×/½ô’;6Ä?V‹0Ea÷ÚWt‹>îzÂ5à\'Û„[µän&ùÃë ?\'£^»I7½}·b½Ê”MÇİÒéœ Ò˜²^½\"ùnöÀÀ‚´>è_ú¿íNÒ^×à\r¿oÉ&tSlósòş©E¨\0W(ø1œ[†ÉÒf\\ U(DÚ•g_¨VqHµúiZOQ€3tÀ¿F€0¤1©_ @š uƒ–BZ™ÎVË/d®¸ÿ¡C‡ºæEŠŒ@DØDÑ\r8$¢vAO™_ }\rÜ¡õƒ¢ËŸ9”23‰)w2p¡FKÒ³~Ûp‰ó!ÕÍ¶IÑ2è8Kpq†Áµ‹.ºĞ j‰n}½^~åU½óöÛîØ8.Î¯U	ÒZå¤;O÷ÊÎìé­?vsoƒñ[yîÜÒ[ûm¼õîY×ë6a¯ı?w·ÏöõÚmÑÑ{ãÍ·š~Ô: ²dK EÈ)Y(29v£\\*–t+™_#@ñ%—\\ÒüÉ÷œ× Aƒœı-BÔ\"-ëÛó·Ù2“ãg£¼5ãÙÿ.ğÌ”Ë3Cq™2ÒÅp \ZĞONTa;wv‘†4-×c÷İww2Y‡z¨gÜÈ3â2TlÇÑE!Ò´d÷€›ÄšK€¿¹–,Yâ²d´ÿø¸D#’	D;ï¼Óg×?G9Ş!¶ÏÛ-\"³o3ïİ÷š¢jk‘Vm ÈñãNöJÎîæõ¸mco­vôÖzpoàØÁ^Ÿ‡vöÖºmO/²fÌ»âÂ‹¼9ó¿‡@@\"nšy2—>½õÖ[]ZLŒ€Ñ}Î\0\\Î¥ñ9P‰¤á÷dd†òäAA1.dÁ‚ş\"ı­‚B¡¬(ªŸZ\n°nï½÷öºvíúÁ°_ß|Ë|¬üV²MŒhiÑÔq	Œø›o¾qéi8\\yï½÷œrcìÀQê\Z8ÎT2¿ç80$Ã1q-á\"dğ,:9ƒ\';æÃ®ñãÇ»Ô2×“¿cÌ¾ø°Í—‡zè;ØÖZ¤Õrâø³½ö\rôzŞ¶¥·æ;xİŞÚÛú}½²%Ş£<ä}ö_¼úL£ûîûïOöÎ>ûlWW“—Çó]{íµß`eğ‹gàcŠZÁúë¯ï|ğ¶ŞzkgPx=_‰ß0^xÁ}÷?1„ã<£8Ô/¨s`ÜxSx\nÉqûÇİ3ÇúÇ@‘\"égRº-A\Zîñàƒ\ZgåŞ=ˆ\Zpœ•Hã~±g»>¿À(Zr$Ä7\n_ˆ:m½SN9Å¥’q<bÙÜc2ØècÚ´iÎˆz¯ñó©ò?Bş‚œõÌ(¯ä¢¾Ş:÷oëu{fˆ7à¬¼İwÙÚûÒ¼áíã¥ãM$p—İ÷ô.6eGqÉR{î¹Î³·È!äş1\0j†ÛPÉõIêŠÒòæCä!¸djVT’_+=óoı\r6ğ}ôQg $\nxàç‘Éùõ’\r,DÙ|×òx\n½qãÆ¹×$!ˆHTµÎ\r(ÌÁYP1b„·pñB÷÷bÏ1}şùç®R\0Ó¨Ì£Ä¾ğŸ*Š¶4\\\"•x¾K¶ˆEDc;21FîFM”6¾ç\r>Ìı¶µÈŸÂ@f˜|=kº7ôÊ½¼ş¾“·ÆsC½~g¯çízxS&é¨ı÷÷n½~´{}Ïƒ¸èP[[ëŞã¥ig õ¼ŒàÉHk\"xÄ²²2—õyã7Üg?—qšà	Áû-¹ÈoÒœ¤ˆ-¾5Cy0¼Ÿ<<P¸Â±ú‚âr®D?_à»í¶›34¸QåÃÀ|¡ºİË ’ŸºE0t¢ÈÀİûk®¹Æ¥¢N0Tö\rDü)!‚‘ò…ëá£ÈèCB_>ùä“À,îÏ73¾i~×:¤ÕÈ¢Å‹½sÎ9Û»ñæ›,DÏóÎ4ôÙ~Çm¼~ë¬éuİ¬§·é#»z[\\³«7`Èº^ÅüJÕ{>Şm·ßæp10å†nhÚ 	ôÄOt!vB9ÕWØA¥›Š§Kãí¨|óºcÇÎóò½oôoÚWˆl¾øÛâXÀñ>F÷9Â÷&|—kœ¢uE4ôeŞ¼yîˆ”¤±!ö-Ûe¨™À/¾şúkÇÏ|\'`Lœ#ŞØC2.ƒÁ±]_H\\yå•îú!@0…kNÉØøSÑ˜ó®qZJ6“5ƒìë½üÊKÍŸ´iUòÊ«¯x:wòy¬wÆ™gzkôZÃkß­“yÖJ¯fY÷şk“½ÿ;õD¯dƒ¯ı¼\r¶ZÇ;ôˆCİoã\rqïÒK®ğöŞk˜İ¨ó§ö…¬É	\'œà”^ü€œ£@´f\0µhèÃ€Èàğ}ğşÁìC´4ºÿT08º ğ-	?pÏ‡-!ŠâC~N€eÔ HH ü†~)Îe„ìù04`\rğğ´ÓOsßõå‹\nû\rî\r5\0)Ç¸Nl—Œ5\r”ƒ …ˆƒñò] Æß£gËoÎl)´½¡¸®8_€lÛ/¼¶&iU^ôì¤æwWS[í}0¥¹8æ5¨æÍ™ëİ}ë½†k\'xï}ğ‘·É†{»mÊNı”ĞT€HSÃkb7—Â„Î\\ 7ÖÇÿ¤D)ŒAZ¹ÉŠDô·FÑõ‹m~FÊß&\nÏîŸû‘˜‚br,ÀF¸µ@Æ^½z¹¿‘ÉâÜÈÁ¹€p`÷\rŒ}-î{§{ßRØŸ|-È$3FÁ—–‘˜¯øœ‰’%¤„xp	XF‚ÃHzÿı›ßµ.iUlğÛ½[Ş¤Ù³|œÚt3P§Œû·In¹ñf¯WŞŞYgŸí¢pv	¼&¹|^bP!ö!ŒğoõôÓO÷Ú·oï2-(i\\´z\0o>şøc÷İÿT†›‡†Œ·ß@ ¯$ü:â+ &*ÒÔc8. Ï6|Ãÿ¸Ÿ-‡}‘¤@ZÂ\"JyY¹wó­77òË‚!Íp.@Ë¤‰ˆ\0OÂ‰\0g}®ÕÈ&ú]p>î	)dŒ\rïÛ·¯÷é§Ÿº¿·6iUÂØ\r\nT~¶eì×o ×¿ÿ ï’/÷fÍé=3é÷7$Ñ˜ğf~;«ùg!ú§4¯¿öš§0zôh—i)D”*ÊHæÂŒ—ƒ_ (\0p„ãÀÈ€`mİÇ¼ûÎ¯’>ş˜7éùç\\+Ş˜\"z¡Ôˆo$´Ÿäææzú÷ÿAº|ƒÿ©×\0û€‹-…šõ¿xé‰û\'íºùæ›{Íiã\'8®Åhdc»Dg¿ƒ3òacK!ÅL2˜K„núí=­UZ•à	ñB~êµW^ó:µïì=ıÔ³Şùç^bøx„×oÍ~Ş°½÷ñ®¹úZoûív1ÒÏ5êïîûÈÈcòÎ<ãL—ö® p	•d?cB”!RÙÖa˜ÔüJ‹‡#\n!x@x‰ë‘2(Pñ+o(üEÄ“cdx~„á¹(¸At}ùì³ÏC]à%,‚4#]ÑÀ‰xqÒ¹`v¸	°ÍÎ\rM=Çïƒ—`4µŠˆ8„_D8–Â>ˆÄ´ŞıZFÄ‡†Dlÿ=Î€söÁó2Ù¿ïÖ ­ªË<kÇf‚ƒ£>ªùS©  H¯¼ü¢6<Ø½nÒ³Z´x±FŒ8HÓ¿®#8B“\'7µŠ#ôU1ÏCXMyÜ˜qú†şIË5íÖ¾0%(­äf@®½›Ş$3R×«d^ĞÍãd^ÏÍÔáÏtH-å¿$_|±›•„Ör~ëıRÛ§?Ê”Öµƒ3ë²háBwüqÚ~§ÔµSg7İ=Nf\\îï“:ĞcEï³>Z$t=gã×™ÈŒÜÍnÂuöÃä	ôŠ™Â»ï™××µ×Òa‡êŞÿ’X$“ª›eİŒÛ­öÄP[ƒ¤®ŒkdÆà¦D²Èâ¦6bè¬‰ëó{Æèå2ãr½Zô–ı)Ä™I+’D\"éxğ—5!ó„çûIÀ¬+†n¼$•h@\n²eúZ…)µ{M¡ZMjÔŠğšíƒÑ‰`Ô¨K\0gxF ¾¾÷%«ƒ7&úsÎŞp£\r]ªié©©7@ñğÔghAüó\"™pÂ‰\'º×çEáÛõ½2ÇJDj=(¶ì2† iRÕÀ\Z¸Õò{¿F€t~û=á§/‹¨\n?!jİüî`_à’@e`QôÏ&­Î@|A)Qp J$ÀıJç+Ø€’D‰²#V°®Ov&ğğò‹ƒÀ\0*À(&5ZAH½BDxÆ³\"ôi)“ßŸì{Îì&òŒ`€-Ç“´LCû		Œ{ÓM7ñŞ~÷÷Ş ’Ÿ4àÒÓ³äeáXùÌo¹\'{Äµ ù£ÆøÏ†{Qµ§.ô[…Ô.	Œ“dÁÉÿw²ã&@>`\"ØÈƒD	™/øéWöÿlÒj\rA1ğt¾\'o)‡o -ïLşA10Œ\rÃñ{ª0¿úÆ†÷ @x?R±4/’	Âcc|b‡¤Ú‹7„ÿ’Ğkä·…@N71Å\'Õ‰²ü”@T©p·>ÛR Åd¿ˆ:l‡c¦Õƒç0t¡öA\"Aá\'\08¾GBPÜ_3PlE!j` dÎH‚¼ñæ.NÏÆAöÙ+š9¦–àÏ(­Ú@4ÊÏ 9P|’&$¯ÎMBğ^xoj-ˆäW•™yÃÍG\nB÷%’ @²A@¼3±¥RL$!“Õr$_K!MMjs­µÖ62_áŠg(~mMSâaäÑ#íı`ÉØ/ÛáØ(ZúÍ”¿F0PöEDkÙ\ZC$AY[\nN:z`(dÅJöjùiiµ¦ZŠ…o·b“‹1ˆ§¥,_¾Ü‘`ˆ\"KÄb1G!ü¦|Íß’4eÑÈ‘Ltrd1eq³¨3\nÑµHáÆz3ëº)¤Ì#ºQÌ·ËüO{Üï[J¼1®sÏ9W_MÿÊ!BºâoWü`†xÆ‹¹mŒÄUW[ïV[ÚjË-™ş-Â¤ÑLÇÜYŒg·çÈ:óa1È	±(ë³/u\\¢$ÆjùâÌäO À#\"Ä”0Oø&ıê{RÒ‡œ£¾ó§˜Ÿ µË3ñy	€qşà%ŠV~5Úˆ-HoÒ§ED Ñî—„šÀŠãV–\0uˆd~ƒ6ú³ZF5\Z©1´Šy\\¿ÕòëåOc ¾ ôÔ$üq×}‡íë]rñ%®ã•nW°7Ø˜ïÀ-€3ğÁSqøÙ%xÙŠ~!ÄŸp8FíÌM…ƒa{”ĞœÈ±bè¾ø=P3°\rN‚³\0N!ÀC;ãdVËo“?Äúwoˆ+IËÈ¼ƒXÔ+ŒôºúcÊ|»i;™\\(æ•6N¢—_~ÙM›³×^{¹ÚÂ%1ãÖ\nd¶ñwnZû|Ú´i:ğ€uÖ¹gé‘	(şáÜ½«B˜N‡ZÓë´ê-Œqgúj*G}´›¢ˆÏßnÑ÷\'!ájùeùSˆÅ7o,…§¥KİJ‡Í(\r<ØMf@AŒ…ş)®a….&`n\'\n‡(ß»âŠ+ÜÒÿú×¿œaPX³3§²îºëºbÙàMë¬3Ïj>ŠU+×ë¯¿îÄ`œ[<ã|cĞ uÔ¶m¹›`a‡vpEÆ–<dµüzùÓ\ZHåÑ7ŒvÌ¿?y²#èb4“¢1C	‹®ğÌ*HÆ[œç½üòËq@^s¸iûƒ`´3¹\Z\nÅïxÆ Hs³ƒ@°™‘ä’¦|¤Ã8\\±pT³fÏrNà¢/TIi©‹€TÖY\Zaµ¬ùÓ\ZY\"ÚK˜ÚŸõ/\0EgÚàUÏ=]KÇÏ-Ü‚\0›Œä;Œ¿qK}a(<ÃˆP#FŒĞùE†î²‹k±ø#e¹ÁE–u0b®+/6ƒ`yãJn\n äjY9ò§2 =Fxñ¯¦}eFĞ^ÏLzÖ-Z\\BÑ>ø`ğ¦àr¸JÜ`.)RÀ¤@é¹\"LO©]à©ä“O>Ùq>§Ï~bÄÜ-\nuÍÕM+*­–•/»7µñze¼ŒRÆ)sL3vÏ\"†Š£¿-¾²äOc ?2Aœw¾«Mì·ß~N¡<>5à\n)g½Œ6ÚÈVæ‚6l˜k\n<à€7á7Ô P~ µ\"5Œ.B#xŸezúiåù?ê˜‘\nÿ=–¿|Âªä¨­S(›Q&ünnàŒ<¼r˜78kû0§iî`\"¥ )HĞşîqsÔ&ßµC\'õíÒSİJ;6ïáßËBãdw?ó¸rÚ„¥lZQ·mÛ£K®“û¼cH+ T€W(”f•—_¤h ¤ÚwU×N½Íª0ÿç£ñ*3ÎÓ„×ŸÕWKçiZåÕfâZ^_­PNJÑX¾Ú•´×š…]µUµ5tÃ­U^RÖüËß_şBÄ€LSc!_€DpŒ€‚‘LÎ¤ÉL(\rù¦Èçd¥(ª·0`Y/\"‚\"£¤¤Ä}Ñ\'ò`dD©;n»½y¯¿,ÏÓ\ZÇm§Æ®¦H9{$¥hÖ”ÖæKí.yĞ™¸ºÙrÌHPL™÷Ì1ïéÙñ2¦°vÜ)®…>•ÆÚh›ê/»¦z­í6õsòàÛÏè ëW¨g{¥3	ÅR29A%I¼Ùû´×¾åb´I3Tû(ëÿÍÄLÊÊ~å«m°Pëtê«]7ÜFGl³§s4ÿ‰|8ëK]ıì]zşÓwUª´kd\'µç°Âv-0âœ€E;÷F;w5Ú14¦¤t@y9Å:}Ã=uúnGª¸MÓ’t¿—´zA¹wÜqG·$íÔğ\n`-Ô,µLd 2¾dÉ9Èê ètŸ–w¢©OªÍ@4Œá¨£r¼‚ÈAÄ€È³%sä\ZÃóE…Úló-ô—ãS›â¦Yİÿ,^¾Hk]´¯–õ*PE›<Spe’BÌ3g›”ÏË	Ù#ì<uÖ¡Éwç(L)B›t×´»II™¾Ñkêm\'Ú­ÿzú´[švú2şóW4bü™ÊiWdÇ‘Qİ²m˜(j6ëoßvoQÅ±’!Œ”ÃË1çcFš5£	ÚgáŒ£E>…6EÍT\'”®;…=yóá\Z}ÈMÇ÷+dÎ’ù\Z2ú8M­œ*u,Q˜uÏ³æìoEÔH:Ç¢=¸víá¬’±ì$líZ™«SvñBEÏ×Îëm¯ñ\'İiÆûû¤Üqk­ZHOÒ\ZAª–qŠ?¾\08Äø²VDqãÆ¹yi;uêä”Ÿô\'¿!½\\\"ƒEŠ—¹d‰&ğŠ¸gÖó&ÅËşà\"Ë­·š1}ö¯6$ƒ˜Q‡îµ­mT¬ŞÔ-“¯œD®‚‰˜”¨r\Z\rz5Kšâ6\Z”I›w¶N¤”—ÌU¬&_uùÊ­.0…,T¾WªhCT¹¦´ÑRó²:éŸ‹ŞÔ€³viŞë%7m\nUkû¨‹(·.jÏ¹Ê«ÉU¤>fÇ‘o<ì¡t^óñä«ĞöYP—§‚ú|\'Ú¨8Y¤â†\\µ«Ê¨¼ÑË\"‰È*XµÈd{½ÎºáóGÕmä†šoŠÿïäïÏÜ¯îgì¨©UÊÔQÁ;¦†”Jíx\"¶Ÿ`2OÉ@ê#…ª¨2¯\ZrËÌXÍÙdİµÈ‹ÇÔÆ<·S\Z7ï¦§êßV§¶ÖÌfÇ¶²¥ÕĞˆ\\şsÏ=ç`VËN!ì¾ûîsÊN!â’˜Œš¾*‚cß¾}]m„hsé¥—ºß0xˆş-Šnô3Q¡˜öì³ÏêoM€W}½º˜‘üf1·,0ÿ*RÒ<s](¥úPZõá´âæë£)5†<%B@ˆ}TyÏd,¢´E™ı‡šÑ˜½e\n´hcŠ§Œ×4(¿{[MK,ÖNWÛ¼ãŠù|¥²¶YT’áùœ€AM{Ô„SªÍMª&’VO=×[”ğŒ«d\re¼¤Á¬¤Á¸ˆE“PÔNĞ‚YĞ–=2f$i»şÕv|İÚknïu9w}1ÿ›æ½ÿX¹óBşèuÊïÓYá˜_\"£X\"d‘-ß®E¤Ü”RƒQv¼Y˜¨—TÖ®E<WC ¡êXZJ(Xï)·*¬h›jèÕšçî¡Ï¾Ş¼·•\'­\Zb©€PxyjT¶}¡8DMcÈ!î{TÑÏ:ë,—¢F³ î4’•b´Ù+¸ÌŒ3Ülâğrùæ›oÌÀÒvÛo¯/øÏëó+«ï%{©¾{Ô”;`J`ÄÌ%Ç8ŞÈÁ&@L*¤º¥µ¦ÃI3dàCH¦»jL„*4Ş¦ØjTqû{Ê Åìjl0å	(	IEUõõ}vù­İ¥iQO_üäEtßi\nu*µ½¥±È–PØ¥¢¶oì0k8?“H+QS‹U™`Xià)ãùÅf©d2fÁjeí·3ØR‹(K“JÚñf+«Õ«¢\\3®{ü@Î|ø\Z]ûüíjßw€v~©HÂGĞ³Hfû§«”š’•ÊTÔ*\ZÉS¾Aº†úZe‹s¶óH˜Çáúñ½âTÄ\"pØ\"NFñ¢€ªÕj3Súú†çU3ş·’¤Õ\ZÈo¼áŒ‚.[¦Ï÷…ÃE¹)äQ }XEÇ-Fqøá‡»a´À0²]u*ão¾ƒaÁUöJz—ô/CSh	%zü7²¨r‘ú_´—ªºŒ3˜“c¤;kJ`NÜ3ò0ÀŸ4ÃÉ¯Œë‘c¯Òúúl4ŞaQ\'l®²!×{s¦êÊ§oÒÜd…Ò¥!%Í¸\ZÍË{Uñrˆt®\Z,ú„#¹ªŸ3Cwí{†Üêàæ#h’G?~AÃÇ¡‚¥Ë<Û¶§t6¬†HP3”ˆA¹TÈ”5»TƒÚôÕÉ›a|‰¼šÅ#&Kj—iêÜoõÎ´,R-U~ûReÒ	år¬Á\\ÕD9¤)i®Ò‘³o‹J_Vêæƒ®Ñ_¶İ£ù(¤W§½¯í®>HE};Ùş›’p3)…™Øû<3¶\Z‹*Ş¢eÚ¦°¿n<èbµïĞÉå,ê«ªuéS7jì×“èÑQÅõDø”!	ö{š’˜7_ôÜN¸ò\n¹­b1†¼k×®Î8ÈVa(4Q„ô,;ğÀ¢«‹q èq^sñ‰QNÂßY„6’‘ÇcJvü†1éÿ­q x›,—ÕEŠ¦§ó¸|N	’­²€aØK´_K%ù¥j_Ò^‹Û©]I™ztè¢ı7ŞQ“Î»Wá‚A*ŠÅsTTé)ß<x0\'®@N­]—å¶Ã´-¯fW+ˆíÇö‹§ÎX4€xsA3Ø@Ö@ŠÁ½F3²ôò´¶+_W‡®·£†m¼ƒöÛxg°Ñ.ú¿íÖ˜Ã.ÔÇWNÔákQrnµA-ƒ‚32ƒ|¤\nÓaÛKÀx—Á.6²\\½2õÍ¦İ7Ë9÷^§`»r3¢ é3KİELñíHŒsíw9ö\\›oÇfQcÏ›éÕó,\Zö ¶Ñ6jg¤g§îºçøQº~§¿*;m±ƒ¦Y/¤pÆĞGŒÛ•WV¨×>zUUË—5ïı¿—Vk \0\r…TÅ)ğ¡ìÛm·ƒIÀ&x5²RsæÌqÙ(Î‚PÁhhÖCùY¤Ï<óL·HQçˆÃ×èëG»‰V–8ƒà…y?çİ€2@w¥M1ÌĞsì}\"\ZT•×t¬?%ÑpÔ*W9!àˆ)WÖ¦1×S<–Q*–•g¼Æ0‹¶é÷ããÇØ?F	ˆç}Ö\"Ÿ˜É(cN\'×*‘£#Ç¿$—ìw‚ñ¤Á¿¤}İ\"‘mÒeäğà•²¦ôI3\\\"\\uÜŒ¶Yûä\r}Rõ­\"\r±ï€™ºĞ bÀ.ˆıëÆËdâ*­\njüÈÑÍ¿ü±œ2ä­İ¡¯q‘”bÑ¤¡¿zEq‹†qåçÔ+ß«Q}»<-,Hêå/ŞhşÕ/­Ê@Ò†qI¹î»ï¾.…÷‡<ó9B=„U–¨t3£3mĞ\"B½bâÄ‰î;iŞ–òŸæêÿq€áÊ:K1èà¬Æ§ı­©Æ`°Âˆn•Á1÷Œ‘gÒªöŠ÷Ù¼\ZzÙ1ªI×(hÂM†7m8\"aP\"cœÂ¼gª¢QıKûi³¾M«>µ LÓm¿Y{6E6vâŠ±ó&v]ÍHâúçå/=h¤Ş~5hf¿‹æUˆfF\Z4CÉULáOeáüæ_I¿÷œ’Èì…Óp±Ê)µÌ¸¹8.¼Çàæ¡ƒwW,/ÖôÃŸ‘ÁúKs+TÕX«ª†\ZUÕ-WUÍ2-©^¦ŠåÒ,3ÎÊ¬Æ=ıhó/ş{iUã 0GTïŞ½]ºñ!–ß‘Jû:¤Ú‡DD\0ú’è¿¢™ïşûPß5HZW•,Z¾D}/Ø]5İóUl|Ã3‡R‡PXSˆ A\n F4aøZ‚}§oŒªA–”ç¼l\nJ£\n™xIóöSBc	OP\\„ËRj·$_So|Ö`ÚIéÃ¿¬Œƒä·ogÊ˜2¥6åÌ‰(6¼nÄ?›ÍSÆ”>Y¿@C;m©÷<ß>·Ãqÿyª76kñ{õi=:w²\"íÓ´Âñ´\n2yÆ<Õ,U¤‘ÂmE¸¤\Z¾œ§û¥ı¶ÚİÃ:g\rÑWQƒƒ…v.IC•ax‹E –ñˆ>ÊWo°wÌgé¸m›VÌı9yûãwtò“WÙ½î¦v¹K\r’æ…¢MŠæF”MeÕ¿¼‹z·ëª^İ{5ÿê¿“Ve DøÕmà†Àg¾¡\"r®E€Vğ\n‚@¬	&è†Ü ı†ïçşşGÈB‹\n}/ÚSµ]óTä±M	I¦|xMªã!{So75e>5·2¡PA¾‘ğ°2æ^CÙ„¢9*ÌF\rÎ¤yM›2E,\n¤Œ`7š²×fµu—\r5æ„«”ŸÛ´>àŠòÄÇ¯iŸ{NSÌÈµÌËç\ZO˜‘™+7Sg^\'OuÁ°¼X®Ëëå-¯sÇcxÎŒ\ZœOÊ5hÇ–§PÛ\",Úx‰FEÂFîíø‰t1‹õ¶ÉLØStYZíægôÕ˜7İ8™eõuZóì¡ªî2çTQ}¡E*‚š™Ÿ]0ËÌ_É¥K4ñĞµû:ßÏıÕZ¤UA,Æy“\"ƒEöê¢‹.rŠ±¾¡`d«×±ÓN;éØcu\n£¢“÷4„ì™ÃæÎ7š²Ùk& “×´)˜¡ğ‚Sp#Ñµ`Ê¸‡)¢EyqCbY…Û\ZOˆ­4ïmæ¡cö?A÷6úg¡*äĞ¦bÚH\0˜bÓsÕ`ÆI]<JzÙ¢s°0¤Pã!İÚH]J•íU\"õ*—z–)[S´ÁößP¡Š-˜‘\Zg	çä©ŞğZXgÛü¶J·ŸtıwƒÈj\Zê\\Z6„³Xƒ9_l1Ä9*²P<sºE±ï¡Yk’Vc d­ ÔôJİtÓMnz –›ĞÀÈ6³²\"-õ\Z	É`1pˆI(2Z°5\n¢\rõlÖ\0SÌ¦v\rã§î#^`<€n’`²Q)SúXJY{„:å¸‚¢§:Óš†}XîGfPòÚX”±¿\Z“v¸x¤ÿvò“‚)¹ãÀYóäHµ)j0¤D(ß5-3)÷Hä$Í(³j“Ì¨(™Ry:GÅFş‹-Zš!\'BI%£;®F—$hQª³x©~I\\õŸUhÒ)·kÇu6oÚ¹	°8k¤Ş’2öO2¸Â00_0ã&g²hÕ\Z¥U@¬§Ÿ~ZçwS|‚é6éŸ‚œAZÖAZ»\0±ú_´ª{DTd°FYSHS\nÚõ7ê\0õDu¥Òñ„5%	™!Õ×2àå‡•\r)Scä<c°,¢b\ntÉj¥òrÍ3Û÷\ZƒÊÎ«Ñ–¶Ô¿N¾­yïßËC?§Ç£¼våò‚iEÍÀR^H\r¹«La‹v,™¤\Z-a´±¬í×üKÆ¶í\"†\r²¨–ŒÖ[à;şDQÑã˜kŒ?ÕÇ´÷ÀíôĞ±Wø¡sšg¤yƒ†iYF3¤ ¢ñ‹:ælã~/#°s©¨Ğ“‡İ¨]ÖŞªéÇ­HZ\r!\ZĞòÁt;fù˜\'6—o7‡~?z‚(º)h(ééàuwĞzÅİæ§…ƒ±ñú”¦.œ«ÉÓ_×·ÁEJôÉ&*0ş5c©	%”¥%Ã€I4mÛşæ[³Ñ¡ºíˆËİş}o2â³¤—›6q‹QJ›§x¦àÆ1Hä„l;Ua%–Ö²Ï¿S4Ø\"{˜qPÈlk@«_»nÚgğNÚ³İT^ôóİ´½OŞI³ÛV(gD:Y¢\\ãThÑ%Ç$`F˜²X—Xº@íƒöÙx§æ_ş´`Xïó•Öë¹†EÛæuâÁ¿£´*’ş¿ M²·‘Ó\\ÑT”\rX	8HE‡,)Ñ¤)\\°ªNó¯|Q¥‘ŸŸÄyØÇhâ‚ÉŠ1Ñs:×¢KL)ƒbÉ€A—4\r„¦`æ¸ãs—èİÓ\'h`¯Í¿$‚¼¨ï9KùŒSX¡ŸÊ±ÈeQ!Ï\"Á­.Ï¸OcFİRíô·!Æå,bSëhR<g\"®¨æ*ÈÕú=û«Gy\'û{Ó>şzó)\Z7o’Âí:*ÖPdÇoÆMıÅìA·³á5˜C¸|ëStŞß·ı”Ü÷Ú“:lÌy\nwÉS„Îdƒ„Œ	²íÅb\nÚù„«r´_ÏuÙÑ§4ÿê¿“_yª«å·I³Ï@€ı7&~@”í\Z±ç†x½ûìçäœ}N•—¨Öxo<—R[\në“Š5²‡â9T°ƒf€Y}ôå‡Í¿jÚZ\\È¢MÜv„‹¤\r2Õæíp\nMJõêŸW¬ƒ6\Z¢á›î¦C¶ÜGm¾—Úl/lC¶Ø[#6ªaƒ·W¯v¿Ş8­nhn¼#cQÊ [Ú3kÑ#ì$“íÁu),Òıï=Óô£_G?x^êUªGTmÃŠw)Ö’6!--‰ª2ÒÌP…¦WNÕ¼Ôÿ•ô?½ <šìİ”á²7¦Ğ±LTíóÛ5ıñgäögÇ\Z=	ª0n|ÀŒ­Î°<¿Ï¥Ú–J;Ã©	f”1NSïF	~/´€´Ü?7š·ĞdwN=í7Æ?Ù¦BìÊ–£·:XÕCÉx­*—;n•5”¤]Äˆ`TVmc!Í_ş­Îğêæ_şX{÷EıóÛ·.‹™Q[ÄÈUd\\(jäF¦0iQ)WyÑb³ÇáÍ¿úïeµü^Ò¬„¾ZBxyÎny¦(ù!6ñ:İóæcºå¥uÅó÷jôËèæWÓİ¢ÎØ]ã?{Q™ò<Å-\0hñ`kQ3–ˆq£FEhÃ	«¤¬­½ù^œmÆm:ûÀ%™›„¨føÆŠ)i;¶ßGî>ì2é[ã!¸²TÓ-`$mŸiãeMÙ\02ÆDÂ=ŠuÅ;÷k¿ÛNÓëÓ?Ğ²š*ói}8kªNwµ†5>ÕµDpY lP5¬<;Ë(áË‘€‘ı¤¶è¸¾Öì¼FóŞÿ{YÍAV²,02\0Ò-ªBs“vïš²Xv33¦ áfŒB!®¾®Â\"„Ù>0ï§´iKÖÂ‚q…Â‚ˆ2Å¹jÈÍ*”²ßØvH‰–[4aô_}®[(¢x\"®ó²š}Ã+?HsOøøeíIïXjü:©¨ıŞâaS&»å©×!ÜX¿DÛÒ+ÛüË•/ÇßznıôauêÕ[u¦ôI²evşT÷ïRo§NµŸk•ªµğ°,©PÒÎ?×ø\nyâBÆ}(À€1ûf] fN\"­@¶Á9‰@0OYû7+¡/oš¨.¥í›÷üßËê²’ÏİÄ9Lí‰‚¥È.^[€•D³9*-j«HÇöÊïR¦Ò²b•´íªX—vÊëT ååÇˆÃì•—’òÓa—*N\Z<£Nâ™Ñ0^ıëºtïTb?ÎCÛÿ”iPÄòŠÿ2”=»¯5}ûw“1Ç]¦{ì¥Ó§)×¢WØö[bñ<ÅŠÙyD^³\\éA¥RŸ<EûØç%;÷¤q°€Œ¸Ì„Üõ¬ÔPQu­ÁÍ¹	ıë‚±+Õ8Õ²’…úAÈ¹qß4“D”P^6«ˆy<¼_Ï™Ã\0ªyÄ˜òó®/T Y`Ô$¤XÒS8•1tF‘×`Jd¿Ïz\nfâQÒJ™b„²¹Z2{©ö8DGíğãî|‹9¦}¤3¹èlL‹N¹F˜#vdyª5ìŞ`iÑÄğüï-y®Úı-:_ñjÆØ•	š×Øõ°ã	¤¹\"y9ŒGÔTj«¬*¤ü*;Wû,kÇ‰dÂ´í4\Z‡1Şd7=c‰:,\njú¨\'´îïP\"Xm +Y(\0zA#¢á°jb9ª…UÍUm,ªš¼ˆªb6Š¨¢(«ŠÂU¤T]QEqÒ½¯ÎË*ËW¼ @é°A‡h‘¨âFÖsƒ¹2;QzV¥SèœÖc§ş£yÏ?—¼Še”,´¨Í*•ç)K+5cÊÙ›£ÃZËTşşöáä¬İGjöu/ióP%>›£LeR	ƒY‰X­R\rJæÕÛõ©U}^Â¯Ö^ÇUS\nœd”%Ç—®UÜ hıÂ*¥§.Ñ‰ëî§·¾¬Şí›\Z[W¶¬æ +Yf,œ§5ÿ²‹²ŒKO0÷mŸš:F¤[Ø3ĞX{İ„tìµı\rÍÎ˜Ç{ÓnœßDíeI¨@}:õĞı6ÕÉCRaŞÏ÷/=ôÖDxİ‘RwÆÕ›«Ma†gNëJæ†gÀlõqõo7P_şmåµˆÿ\Z™·d®~~œ&~ñ–æTO·ó5.f¼KæPÜô?{ Ø>\'åUeÇÛRa(¦n}uüÎûêØm†»FÈßSVÈï ï}>E‰ZÅ‚FÒk0şñ½Økl!vğÃËo Hû]¢1®<ãLTWR\\¤5;öRÅù•RoĞ«SŞU0/êJ0ö¯m;GiÇ´DšWjŒ7j­®k¨W×¡Y•RQ³\\ïM›¢Ïç­yËjQuvY\nsCJÛ±–µÑÀö=µv§Ú|àÆÍ\r˜«FVHk”ú:-~ómµßù—[/VËï/«9H+/Qí„{”˜tkó\'«å”Õ²\n¤¢:®ŒÓ)×?ëŞoÚDmù—íÕƒwüı×õ–W¦/79LKß}½ùÓÕòGÉjY’5°¿¼!«Ù«ÜûË\Z5i½¼ÚCúò®zàÛ¶š0­X_/kÙ]»ZşYm ¿£¤\r.!mÛ0nZÊm	3¥SÁnEiÛ§.¹¾ÒQ›íºšƒüÑ²Ú@~yáıy*Ûó>…·¹Emv»Gû_ô¤Ú–|¨È‹¸Ş,†ş„¼ôÉU6®¾5­AVg±V²|0m©6:j¼½p°öİyCİÿüTu×ÇjWœ§>m“šğ·´şÈGÌH²êÓ!ª²\"¢K‘˜NŞwmõèX¢v{“—¬ÒÒg·-ş°…„ÙëÉŒ.,´Z~_Yí¦V²\\÷è—:|û3Áö.¨NíJT×tõÀâ¼&e§œJ&tÕÈ\r4æÌuÃi;éO}­#/}Êı½CYTÛ2îƒ%XêEY<ˆI½[ÊÊğuŒö[-ßËjYÉRYÛ 6Eß/V×Ğök(ÌjÆÒu>Vyf8Ìª—«r7I›‚FÓï2Ì¾Â­a6I¦9bšTæf©†I“&¹¿}øá‡n-$ey„Ù^˜ı…¹‰ùœ…HY…‹	ö˜%†KYØ#c¶J–•`\"–ˆ`Æ–ƒ`ñ!&ïã{LòÍÄ\ZÌ[ÆL•ßeÇÿeYm +YÚ[·¿¸D©S,K{lŞK_½Ÿ–U\'´¤6¥[GöR^4¬L:ıƒ,ÎßÍEåäÇö¯¾úêG“W°ª/Âz&L“Ä“(ş+¯¼â”™ù‡o½õV7Ë=k82«=c©fÌÇØX&‚ùÆ˜:é;îĞi§æ&â{ê©§œ!ñšïrÊ)î·¬úÌCX—…åïş—eµ¬dÙgë>Ús‹^*Ûû~]vÏ{\ZóÔgÚçÂe(K½KSÚm§­4§¢^Uqú°šd/ª\Z2ªolú Æ¾\\§ä{ñ—£n)şz¬âÓ®²p)ó3ÿ0Â¬“\nÏšŒŒlôg­d\">–†¨¬¬tTã3æ9n¹äÛez%\"‹±ìÄÿº¬6ßA¼`G½8j¨EF“§.ÔıòtÜ®kh§ÁMÓa?¤—Û¡·›şÇ—cwîj†ÕÔ5rç:rHo÷º¥°K:-˜½Ø…ğ0ê{îqë1uÄø\nBÛ<KØa|åéX¸Ô_ËÁ˜ˆVŒ/iidD+BØ‹aPÿë²:‹õ\'f¼g ÖC÷Á»ÃQXïäß	s±2ŠÎTK,I‡\0½˜ó˜%%~Ià ¬³rÉ%—4ò¿+«\räÿC\"±:×2!0,Ú¨Q£š?ù_éÿ9›Ô(‡œ¶\0\0\0\0IEND®B`‚','PNG','bpc.png','BPC','A',NULL,NULL),('a169ec8c-af4b-47bb-b648-b21c1c0e9449','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-01 05:05:56','C','Bhutan Telecom','N','ÿØÿà\0JFIF\0\0`\0`\0\0ÿá\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿâøICC_PROFILE\0\0\0è\0\0\0\0\0\0\0mntrRGB XYZ Ù\0\0\0\0$\0acsp\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-\0\0\0\0)ø=Ş¯òU®xBúäÊƒ9\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0D\0\0\0ybXYZ\0\0À\0\0\0bTRC\0\0Ô\0\0dmdd\0\0	à\0\0\0ˆgXYZ\0\0\nh\0\0\0gTRC\0\0Ô\0\0lumi\0\0\n|\0\0\0meas\0\0\n\0\0\0$bkpt\0\0\n´\0\0\0rXYZ\0\0\nÈ\0\0\0rTRC\0\0Ô\0\0tech\0\0\nÜ\0\0\0vued\0\0\nè\0\0\0‡wtpt\0\0p\0\0\0cprt\0\0„\0\0\07chad\0\0¼\0\0\0,desc\0\0\0\0\0\0\0sRGB IEC61966-2-1 black scaled\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0$ \0\0„\0\0¶Ïcurv\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0#\0(\0-\02\07\0;\0@\0E\0J\0O\0T\0Y\0^\0c\0h\0m\0r\0w\0|\0\0†\0‹\0\0•\0š\0Ÿ\0¤\0©\0®\0²\0·\0¼\0Á\0Æ\0Ë\0Ğ\0Õ\0Û\0à\0å\0ë\0ğ\0ö\0û\r%+28>ELRY`gnu|ƒ‹’š¡©±¹ÁÉÑÙáéòú&/8AKT]gqz„˜¢¬¶ÁËÕàëõ\0!-8COZfr~Š–¢®ºÇÓàìù -;HUcq~Œš¨¶ÄÓáğş\r+:IXgw†–¦µÅÕåö\'7HYj{Œ¯ÀÑãõ+=Oat†™¬¿Òåø2FZn‚–ª¾Òçû		%	:	O	d	y		¤	º	Ï	å	û\n\n\'\n=\nT\nj\n\n˜\n®\nÅ\nÜ\nó\"9Qi€˜°Èáù*C\\u§ÀÙó\r\r\r&\r@\rZ\rt\r\r©\rÃ\rŞ\rø.Id›¶Òî	%A^z–³Ïì	&Ca~›¹×õ1OmŒªÉè&Ed„£Ãã#Ccƒ¤Åå\'Ij‹­Îğ4Vx›½à&Il²ÖúAe‰®Ò÷@eŠ¯Õú Ek‘·İ\Z\Z*\ZQ\Zw\Z\ZÅ\Zì;cŠ²Ú*R{£ÌõGp™Ãì@j”¾é>i”¿ê  A l ˜ Ä ğ!!H!u!¡!Î!û\"\'\"U\"‚\"¯\"İ#\n#8#f#”#Â#ğ$$M$|$«$Ú%	%8%h%—%Ç%÷&\'&W&‡&·&è\'\'I\'z\'«\'Ü(\r(?(q(¢(Ô))8)k))Ğ**5*h*›*Ï++6+i++Ñ,,9,n,¢,×--A-v-«-á..L.‚.·.î/$/Z/‘/Ç/ş050l0¤0Û11J1‚1º1ò2*2c2›2Ô3\r3F33¸3ñ4+4e44Ø55M5‡5Â5ı676r6®6é7$7`7œ7×88P8Œ8È99B99¼9ù:6:t:²:ï;-;k;ª;è<\'<e<¤<ã=\"=a=¡=à> >`> >à?!?a?¢?â@#@d@¦@çA)AjA¬AîB0BrBµB÷C:C}CÀDDGDŠDÎEEUEšEŞF\"FgF«FğG5G{GÀHHKH‘H×IIcI©IğJ7J}JÄKKSKšKâL*LrLºMMJM“MÜN%NnN·O\0OIO“OİP\'PqP»QQPQ›QæR1R|RÇSS_SªSöTBTTÛU(UuUÂVV\\V©V÷WDW’WàX/X}XËY\ZYiY¸ZZVZ¦Zõ[E[•[å\\5\\†\\Ö]\']x]É^\Z^l^½__a_³``W`ª`üaOa¢aõbIbœbğcCc—cëd@d”dée=e’eçf=f’fèg=g“géh?h–hìiCišiñjHjŸj÷kOk§kÿlWl¯mm`m¹nnknÄooxoÑp+p†pàq:q•qğrKr¦ss]s¸ttptÌu(u…uáv>v›vøwVw³xxnxÌy*y‰yçzFz¥{{c{Â|!||á}A}¡~~b~Â#„å€G€¨\nkÍ‚0‚’‚ôƒWƒº„„€„ã…G…«††r†×‡;‡ŸˆˆiˆÎ‰3‰™‰şŠdŠÊ‹0‹–‹üŒcŒÊ1˜ÿfÎ6nÖ‘?‘¨’’z’ã“M“¶” ”Š”ô•_•É–4–Ÿ—\n—u—à˜L˜¸™$™™üšhšÕ›B›¯œœ‰œ÷dÒ@®ŸŸ‹Ÿú i Ø¡G¡¶¢&¢–££v£æ¤V¤Ç¥8¥©¦\Z¦‹¦ı§n§à¨R¨Ä©7©©ªª««u«é¬\\¬Ğ­D­¸®-®¡¯¯‹°\0°u°ê±`±Ö²K²Â³8³®´%´œµµŠ¶¶y¶ğ·h·à¸Y¸Ñ¹J¹Âº;ºµ».»§¼!¼›½½¾\n¾„¾ÿ¿z¿õÀpÀìÁgÁãÂ_ÂÛÃXÃÔÄQÄÎÅKÅÈÆFÆÃÇAÇ¿È=È¼É:É¹Ê8Ê·Ë6Ë¶Ì5ÌµÍ5ÍµÎ6Î¶Ï7Ï¸Ğ9ĞºÑ<Ñ¾Ò?ÒÁÓDÓÆÔIÔËÕNÕÑÖUÖØ×\\×àØdØèÙlÙñÚvÚûÛ€ÜÜŠİİ–ŞŞ¢ß)ß¯à6à½áDáÌâSâÛãcãëäsäüå„æ\ræ–çç©è2è¼éFéĞê[êåëpëûì†ííœî(î´ï@ïÌğXğåñrñÿòŒóó§ô4ôÂõPõŞömöû÷Šøø¨ù8ùÇúWúçûwüü˜ı)ıºşKşÜÿmÿÿdesc\0\0\0\0\0\0\0.IEC 61966-2-1 Default RGB Colour Space - sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0b™\0\0·…\0\0ÚXYZ \0\0\0\0\0\0\0\0\0P\0\0\0\0\0\0meas\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0\0\03\0\0¤XYZ \0\0\0\0\0\0o¢\0\08õ\0\0sig \0\0\0\0CRT desc\0\0\0\0\0\0\0-Reference Viewing Condition in IEC 61966-2-1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0öÖ\0\0\0\0\0Ó-text\0\0\0\0Copyright International Color Consortium, 2009\0\0sf32\0\0\0\0\0D\0\0ßÿÿó&\0\0”\0\0ıÿÿû¡ÿÿı¢\0\0Û\0\0ÀuÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0È\0È\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RğbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ıü¢Š(\0¢Š(\0£4ŠkJ£ø‡ã@8Q\\ßÄ‹^øM¢hx“ZÓ´[7b¨÷S2‘ÎÔ_¼íì šùçö¦ÿ\0‚“è¿ŞëCğJÚx—^1Éx[vŸ`Ã‚	38şê õl‚µğ—ş\"kß¼M6³âMVóXÔ¦àÍ;}Åşâ(Â¢î¨íÖ¾?ã¬.	º8_ŞTÿ\0ÉW«êü—Ìùã‹°øVéP÷çø/Ÿ_D}óâïø*·Ã}vMµñ7ˆ6ñæÚÙ¤ŸÆgFÿ\0Çk´ÿ\0‚»øYîqqàÿ\0G÷ãšŞGÿ\0¾K(ıkàì¸¥\Zø\Z fò—4\\W’Šınÿ\0ã§ÆY”ÓŠòåÿ\0;³õCà¯í½ğïã®¡\r†•¬5¯?ÜÓµ8şÍpçÑ2JHxÎ˜×®Ç  _Š,¿0#†R>„rùô¯¼¿àœÿ\0¶V¥ñ.æOø²òKíbÚÜÏ¥ê¶e¾‰>üRâ‘7VPÛ¹]Íöœ1Ç?]¬°˜È¨ÍìÖÍöëgÛ»Ğúœƒ‹¾·Qa±IFOf¶~Zìÿ\03ì\n(\"Šıûp¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¤-ŠZä>5üQ_ƒ¿u\ry´c\\k5ÊYi¶í<ó1é íAÕœğ Ï\0çZ¬iÁÔ›²Z²jTŒ\"ç-‘â7Ä½ág….µ¯jVÚV—f’y=@Ég=¨,O\0\Züôı«ÿ\0à š÷Çg¸Ñ|>n¼=áÊ:y©¯ı5e?\"ùæ§~bÙÚ<Ëãïí#â_Ú_ÅÚšıÒıÜ‘c§@Çì¶x!Gñ1ş\'o˜8\0(áE~\'ÄÜo[ŞxSÙ¾²ÿ\0%åÕoØü§>âÊ¸«ĞÂŞ0ï³ä¼¾ğ‰v Óœi2qú~4½«óı´>,ôO€²·Œ?i)/›ÃPiâ×MuææöèCLÀ¸œœxR=ëã/ìñà‡¦Ö/ì,um&ÕwÜÜéWãì«İUÂ¥‚I WÑ_ğHTğ®|dİÎ¯ÿ\0ÈükëBÎÈ£Hf$FPU”ŒAìA<Wëàq¹T1rU&›½ôZ»h~”ğ—Â´›S’Şû;¾Ÿ™ø²5Û~Ì~&›Â´w5yo¹kq˜åC üRFC\\~§½®¯y\rœmœ3È–ï»vøÃ‡=ò \Zë?g\r¼AûCxÍ˜É¯Ù3`\nNß’©?…~kŒá¦¡º’·­Ñğ˜>hâà£º’·­Ï×ÔZZb?ËKæWõı\0:ŠÈ¢€\n(¦´ÁM\0;4›ÆkÄş=Òü-úmäQ9ºGú(çñé^¯~Ñ2;4z]€QÚ[¦ëÿ\0\0_ñ¯â¯8g‡oÏQ}ˆûÓÿ\0Àcv¿íë/3ÑÁå8¬V´`íße÷³Ö\Z`¦™-âÃ÷™WıãŠùãXø£¯kûF©<h‚#å/ş;Ö©ZxR×?y¡x¿å<ƒóÆ+ñ<WÒƒ\rZ«¥’eµkú´Ÿş7øü8JqWÄUQş¼Ú>’‹Pc„xÛıÖÍH“î¯œ€õË!æ®‘©G·ø’‘ùs[~øÍ¨xgP[}Ni®ìs²O7&h=Æy8î§ïëd¿HªO7åõ0jm%9]Å_ù¹£—v¯oCŸÃ2PsÂÕU-Ñoù³İ¨¨m\'[ˆÕÕ·«€CG¨¢¿¤£%%xì|¹5QTQ¼;›5%å\Zc_‡ÿ\0ZYõ­u9AÎ§cşy»Õ™x“§I\nùGâGü{ÄÚN½n</â\r7TÒn&TvÔÛÜY!8,Båe\n9;JŒ¯Ğ\"2)¾W?ıjùüË…òÜsç­MswZ7êÖÿ\03ÇÇpşù«A_ºÑşüÏÎÿ\0ø(Á\rö{ğÂßhqŸ&ªÉqpày×³°î–Cİ\0 Pª8¾aöwüş>>}5_çe_µø¿Q§G7©J’´RŠIt÷\"~WÅãO3©N\nÉ(ÙÛ±>ìÿ\0‚EH±|0ñ£1\n««DÄ“€Ù×<ÖoíÉÿ\0	°—BÔ<àÅ¾¸¼F¶Ôµ¨0Áh­Ûøİ†A|ªÊK§Ç6;Öô¿_xz×T½µÑu)ÅÅåœ2yqŞ8P£ÌÇ. ò±+qk)Wh®ÇÆ5©etòÜ*å²jRë«z.Ş»ú_ëEZyt08uf•œºë}»zˆ‹°z`^¡û|@ğÏÂo~+ñMÅÄV~µ{h €Í5İË¡‰GA…’FËAÏ\"¼Æ›¶¾SŠ–¼1I¸»«íuµşgÎáq2ÃÖh¤Ü]ÕûŸkx¿ş\nú‚å£ğÿ\0¦’á&Ôõ‘ïhÀßÃ\\í¿üÓÅk8i¼áù#î©u4lGûÇwò¯“6Ò8¯¢©ÆÙÌåmoEú~§µSŠóIK›ÚÛÑ+~Gß?à­Ö§ßÄŞÕ¼;¼€nm¥\Z…º{¶$ÿ\0¾Q«éŸ\0|MĞş)x~=WÃÚ­±§Èp&µ”:«wVU†yV\0Jü´øû.x›ã¶o-c‹Gğä-¶ã[¿-’\nÇŞgà©œ®A¯¬şxÃ¿³¦™soàè®›Q¾EŠû[½ İ]€r|‘&r@\0·#$k§âô2,?·ÏæšjñŠV©>Ü±[§üÒå÷›Ğı+‚áæÒ½JiÓşv¹áşKæ}1âïˆÚgƒ\"ÿ\0M¸s¬üÒ·áÛêp+ÊüYñ¿Uñ4v_ñ,¶n>Fİ3víÿ\0üëŸğß„µO_IöXd¸flË<§äSêÎzŸnMzƒşéº)Yµ#ı¥uıÆaSşïñ~<JüÊ\\KâˆÒtòX<»sİÅµç4¹¤ü©¤º7Ôı[ê¹fW®!ûJ¿àl½_Èóø3Uñ…Ã5¬×›/<‡	ùsÔşf»ÿ\0şÎñ(WÕo\ZFÿ\06ÿ\0*ıOà]øµûLøà‘Ä:å•Â\'î´øŸtÃbË(=2À/¸ªŸ>\"xÃãC¨§‡_Á~“æ…µoŞj÷ëØˆì·S¼í#ü\0Õö|\'àOå•Õ<ÆO‰İ§ğ§İÁ;%ÿ\0_$ïÛ¡8ÌÏ5«†úÌcì¨½›ÒşQnÎOÊ)Û®‡q¡ü>Ò<>ªlìm£p8¦é?ï£“úÖ¿ÙóüU éED`rÜ&\n’£ƒ¥\Zp[(¥÷+#ãªT”ß4ÛoÏR?³W-ñ/áå¯Œ4‰˜Æ£P2`™Fp\nOu\'±õâºÚL)Éõ®\\ó$ÁfØ\Z™~>\ntæši«ïÕ_f·Mj¥áëNER“³G/ğSPmGáÎ™#•V‹\'Ñ”~€QR|\"³k/éãøe0Îìãô\"Šóø\"¡ÃØWwš£M7İ¨-M1Î/QÇngùEQ_Pr…Q@Q@ÿ\0Áa¿ãçáÏÓUşvUñˆë_gÁa¿ãçáÏÓUşvUñˆë_Ï|sÿ\0#ºßöïş‘ñ~.ÿ\0‘µ_ûwÿ\0IˆR1§C—w1ÃrÍ4Î±Çh]äf *ªŒ–$\0’@¯·ÿ\0d¿ø&}¾Ÿooâ‰VñŞ^6Ù-´Û ·srGúÇéû°vwoÎÌÉr,Vg[Ùa–‹vö^¿äµ<ü«(Äcêû:+E»{/ë±ò§ÂÙ»Ç_˜7†|;}}i»c_8Y¡zä+Ü),=+Şü-ÿ\0ñeıº¶³âİLn¦;Kio}‰c¯½ôí::Ö8máŞŞÇhcQĞ\0=%íìZt2M3Ç1‚]İ¶ªRM~«ƒğÿ\0,ÃÓçÅ·6•Ûo•/ºÖ^¬ıÁ8$«77÷/’Zş\'Âš÷ü#^¶·fÓ|q£İÌ	s§Ën¤ÿ\0¼¯&?ï“U>~ÂZoÃ\rOíŸ®,|C©[HÂ\nÂVk<ƒò½ÌÄ)`y>P<n$+é¯ˆŸ&ÕÚè¬Ğ[t{¯»$Ÿît{õ>İk›ğ?Ã­CÇî…|‹0ÇÌ¹3Ü(êÇéø‘_Î¼aÇ˜,Nd²>\0Ã<F%İ:šÊÎ)é+<Ÿ\"ì÷_w•øk•Pk‡,VÑm»ú­~HÎêóÄ—¶±Â¬°¨†ÎÊÖÛ 	kÂ¨\0;Mz‚>*¹×[wqip?ßaü‡ç*Ç‹¼mà_ÙSÂnÖõlLÀ„gıååû«\Z/ÌÜ‘Â€«‘’:×Ç´ü‹Å\Zm;Âw„t6Êù¨áµ+•õiGéÍşÙÎ+§)ğß%áúŸÚüs_ë˜Ù{ŞÊîI?ï_â¶Şõ¢¶Q•“?MÉòœß>ıÆMKÙaÖ£Ñ/Oòßv®~5~Ö¾ı›->Ã{º”+û­ME’åGmÊXÎs!\\Œã5ò¯Š?l¿‹_µ§‹á\ZğŒº\0æ6Oô•‹»Ïv@òz OL± W‘ü(ø\r74K¯xT_xÎSöÍnéK½Ü™9†Ú?½<ÌAdœä§ôö&³ğ\\¿4½GÀú<ºV“©<ÁşÕµïn^)¤„¼î	Üça8Î0\0WêyV+:âz‘¥Ïõ<-®£\r\'(«-•—K«G²–§ng.á*ŸT…±˜û]ókm«Šo[ômË»‰ËşË¿°6ƒğNxuï4~&ñ‰o4İÊ[ÙÈz˜U¹gÏüµ›dƒô0@©âŠıw)Éğ™m†ÁÁF+¶í÷ovßwsòÜÛ8ÆfX‡ŠÆÍÎO¿EÙ-’]²\n(¢½3Í\nÈñ”³Gáû¥·İö‰”C;]È@~€œŸ`k^›${Årã0î½	ÑNÜÉ«­ÕÕ®Tef™_KÓ£Ólâ‚Ûº,h=\0¦(«CŠ+ztã(AY-òDï«\n(¢¬Š( Š( ‡à°ßñóğçéªÿ\0;*øÇÖ¾Îÿ\0‚ÃÇÏÃŸ¦«üì«ãâ¿øçşGu¿íßı&\'âü[ÿ\0#j¿öïş“ê_ø%Âí?Æ_5ï^Â“Éá;X>Æ®2#šàÊ¾hÿ\0iR\'\0öó3×šı\nªÿ\0…|;ÿ\0x8Õ~%×-\'ÿ\0B¾¯®üñ&ÏÀ–_¼Ä÷RÅn§æosè¾æ¿@áÜ×/ÉømfùªtãÌå\'å&¾nÉ$–¬ı#‚pnyu8Qå&şzµù$ix³Å–>ÓÕäÂ8Ç\n£ïHßİQÜÿ\0*ñüH¾ñåÏïsobyvÊr3Ø¶>ó~ƒ·©£ªjZ§Ä?«Iæ^^\\±CùcŠ:\0:’~¤×YªOá_ÙƒÂ\râ_ê%ÂñÆöi?çœ	ÖG÷ì9ùFM8ç<QÄ\'âj`²–ğ™U7ûÊ’Ñ4¿™İ&ÚÕSNÚ§7³?^Áåôr×têb%ğÅjîû/×îà‚fxÆ¡¯£Ú¨ó«‡©ÿ\0öëë•ä_´ŸüŸKğLøáÄ6ºµì@Äú£.tûLv…Gúâ=x@p~~Ex/íAûnx“öŠš}6ÜÍ øOvMŠ_Ş]¯crÃïúì ãï\Z¼U’ªªÎÌBª¹˜\0©$ñ^¦9Ê¸gò§ÊŞ“¯$JËMm­Ñ\'©ú÷\rø_<D–aÄ›ª¤Ÿ»ñ>¯ºOÕ½QÆ6Õ<{â­c^Ô®µMFç™n®¤ÜÄzz*Ê0£°é~øA¡ü$ğÕ§‹¾\'Çqåß\'¢øN\'òoõ¿Ig=mís˜ÏÎEZøEûËğ#à¶¿ñCÆZ}­Ïˆ´]2mGGÑoè,eD&9.Wøäİ´„èş¹ò‹¼cªüAñ=æµ­êZ¦­¨?™qspÙyaèª\0UT\0\0\0b»pÜ9S\0¡ÍâåZ§½Ë[kñT¾­ö‹Óù¿”üçÆ/–WKû†l›M:ŠÉ%µ –š5½6Mí|`øÑ®|m×¡ºÕä‚[ü7L³É±Ò¡À8b(À\0§\'\0÷ŸüÊy$ı–aF$¬:ÅÚ\'°%ãñf¯Î‹_¦_ğLİ$é_²6ƒ+>¡w{rséö™#øìb¿Eğş¥JùÄëTm¾Gwóå^¯[šN½Y9IÅ¶ŞïXŸ@QEûaú QE\0QE\0QE\0QE\0QE\0QEğ÷üfëáÏÓUÿ\0Û*ø±¥Ú	?(õ=}¯ÿ\0‡„$_.7mXÛSSŸö…¡Î}¶×-û/~Ë+ğÑl<aâÛT›Ä*İi\Z<Ê4ğÃ+qr¤­äøÌß6ÿ\0;ø‡‰Ãàó,F75\nPQnOü*É.²v²Šß}m~gáü^oÄÂá#vùnú%Ë¶uß°w…u¯Ù¿À:ö«¬Z¥®§ã´{\r>PV{h¡ó±,ëüüÜª›Î3^‰¦éz§ÄO2¡’êòàï–g8X×ÕğØ ïøcPø‰â	6idvó.n¤Ë,yş&>§°ïôŸ´÷íy£şË:,ŞğjÁ¨xÂDÿ\0Hš@$M$pòÿ\0z\\¬}Al+~/„ÂãxáG0Îg,6M†mB?j£»mGù§\'{Ëh&ã­Fğ×¼¾ò\\¦>×Ö­ô[¹IôŠnÿ\0Ò:?ßü\'ûxhÚ©\\ñ…ôA¢²G#pò|¨sĞrÌAÀ8f_ş+ü_ñÆÿ\0Í®x’ıï¯+¶XóŸ.$èˆ?HË9\'\\Ö¯<Q­]jZ•ÕÍö¡}!šâæw/$Î{±?L{\0\0â«…¯s:âO¬Ñ†[—ÓT0”ô…8íë\'ö¤÷mõ×{·ı#Áü…ÉcõŠÚb$½é¾Ô{/Åõì˜IfUQ»v\0\0d“è+ïoØOö_†Öö¾2ñ•šÉâYTIac(ÈÑÔôväûf86Hòßø%·ÁİÇ¿ußjıªçÂ+jö¾I,şïHîÈ!{Äõ\nGßÄùI×ß½~±áOÑç˜Ä¤İıœwJÍ§\'çtÔ{o»Vü¿ÅÎ:ÄF´òâ’^Ò]_2MEyY«¾»m{üïÿ\09ø…ƒfÍ5dU»ñEì\Z|c?1E:SM‘m?õĞWæàí¿··íŸş5ÈšuÀ¸ğï†CØéÎ‡)rÄƒ4ã±Ê‘Õ#CüUâ@|µÍÆY¬1Ù”¥MŞ0÷W·}íä\nñFa^>N›÷cî¯;nşûŒU&fûª	?•~¾~ÍŞo†|#¡Í—q¦éPGp¾“\r/ş>Í_˜ÿ\0²·Â³ñŸö„ğ¾‚Ñù–r^»àFWìĞ6@ŞÌgÖA_­#¯¯ğÏÔkc%ÖÑ_-_è}\'àÚ\\Sëh¯Íş„”QE~¬~ˆQE\0QE\0QE\0QE\0QE\0ŒÛEvŠä>(üL‡Á:XXöÉ©\\äEÙ{ooöGêxõ#ÇÏ³ìM€©™f3P¥M]·ù.íì—Vm‡ÃÔ¯QR¤¯\'ıÃœ/í%¢x[ñ†5BŞ=KXğÉm>ÖP\Zyeò±<‹üLVQOmØÊ©®kÂÔ>\"kÍm#37™uu\'ÍåƒÜì{şÀd7ÃÔ>!ø•¢I\ZYæo6æâA‘îÇúşÃ8æ¿loÚ¾ÏöqğÛxÁ3/ü%SGºòñHc¥£€w1ï;ƒ•pÇ ?Æ_í!f58›?½¦Œ­-I$’Š×Ş”¬”å²^ìm«_£dù4éWYnW,M]e.‰mÍ\'ÑEmÿ\0OÚ÷öÁ²ø¤Kà_\0È¿ğ‘íÛ¨?öa gpGàƒç\0|9,²\\ÜI,Ò<ÒÌÆI$‘‹<ŒNK1<’NI\'’j9î$²»3;y$l³I,ÄòI9$Iæ½ÓáOì!âoü7Ö|_¯y¾Ñ4í.ãPµŠXÿ\0Ó5Lë„?êã$™ù#¢à†¯o[0â<BÃà(òÒ¤­\nqÒà¶ì–‹V÷Ùv? 2¼¿\'àüñ<Úæ›øêK²[Úû-’Õõg‡ƒÍ¥6#”Ô\nqäWÆŸ fÁ!.>#»¥ÿ\0íåt?ğQïÚı| ÜxÃ—_ñPjĞãS¸‰şm2Ù‡ú°GIeSõT$ğY\r|Ûû4şÕR~Ì~ñ×öm¿Ÿâ/ı†5¤]ĞÚùjó&~Ço˜›Wø‰ô¼{SÕ.õÍRâúúæ{ËÛÉZ{‹‰Ÿ|“ÈÇ,Ì{’Nk÷lŸŠ~«ÂØ|»ÿ\0xÔùšû)ÎZzµ÷/;çïÒˆ>¯Ä¸¼ï¾K¾ÉÓ‡âÿ\0æW6nÃÒ”šZì>|Ô?h/Šºo†tòñ-Ó/.BîVËƒ$§·…‚ì£½|ŞR½XÑ¢¯);%æÏæú4gZ¢¥M^RvHúëş	=ğI´_\nêŞ<½‡lÚã;M,9Ñ¿ï\\{< /ı°Ïzû¥eøCÂ6>ğÖŸ¤é¶ëk§ip%µ´+Ò8ÑB¨÷àuïÖµ+ú[%Ëc—à©á#öV¾mêßßø»exàğ°ÃÇ¢×Í½[ûÂŠ(¯PôŠ( Š( Š( Š( ‚qEQÖõ˜4=>k«©vöë½ØöãíŞ±¯^\Zr­Y¨Æ)¶Ş‰%«môHq‹nÈÍñïmü¢5Ôß;·É@àÌı‡õ\'°¯\n†\rOâ\'Šx-q¨_>XŸ»\ZäŠ?ÎO3ø¿Å7_<Kçyr6öò­m”d¢€´{Ÿ_a]üq¢şÇ¿/<Aª„ºÕn1êØ{Û‚	HöQ‚ÌØáC6:\nş1Î3,GŠ9ôé©ºY>\róN[s[®ß¶Šû1mµwg÷ø²úq¥J<øšÖQŠóéèº÷k²ºåjoÚMışÇ¢èm×Œµ¨‹ÛîPŞ@û­u(é€rÃ¸W¯€t#Zø›âøíláÔ5í{Z¸f¹šâîV%™‰=OVf\'\0d’\0&º}3Fñ‡ígñrúà²ßë\Z‘k»ûÉ›É³Ó QÌ’9ÈŠÔ\0ç\0¸œï|eÑş\nø~ïÂ¿®åšâñ<kÆ|»½SÖNğ[ÜÏ€s¹¾œ¸rGêù}ÉN)n—H­œŸÚ“Ò=[Ùş…›qFQá¦TŞ&J¶>²»Kvú_´\"Ş›9o¥î¾‡ı‡ÿ\0dÿ\0è¾4ÕY¾±ñW|/öw¼µ‡÷Ú~‡,¾fÄ\r÷f|¦,İ#8\0«éş	øÄ­¡ßsÿ\0nï_(ÿ\0Á#T“â0\n£Ù˜Çı¾WÖ%_øS~.Ë\0¿Ø—¹\'·î¿wá\\.—ßMSRSÛW£’»{·e«û’Z…àø³ÄUéf¹Œ¯9Ën‘JVI.‰[ç¾çä<\'÷kôæéQÛÿ\0«_¥HzWñêØşşêW¼]Ø¨óR]}áQ¤oq4qG’I3DE,Ò18\n\0ä’x\0rI¯ºÉ®ğKÏó?ÌÏ¤¿cÒïOÿ\0MS$±°¸Õµ{;;y®¯.¤X`‚/$Ò1Â¢ÉbN\0ëôëö ı•aıšş3_G*×fÕ&RBv[!Â™9#ï1cÓh/ìû7Â( ñ‡‹-Ñ¼Usû£üÃF=¼öÿ\0%G%‰ú©h¯ß8\'…^?^Å¯Ş5î§öSëêÿ\0êÎá×†Öñ+ß{.ËÏÍş”mSe™cS–Æ:Ñï@Şµú/2½¶ES\0¢Š(\0¢Š(\0¢Š(\0¢Š3Š\0IqŞ¼OãgÄ3â=Sû6ÖLØÙ±ó&Eè=ò}+¶øÓã¿øDôO³[¶Ûı@Œ±\'ñ?×°÷>Õç¾¯Œu¿6tÿ\0‰m\r =%nÉôî}¸ï_Ë6qV;9Ì¨ø}Ãîõk5íšÚ1ß•¾‰/~İ²êÑõ™\nRÌñ?~İ÷ıÍ\'Â¯	Zx7Ã÷)ÖäŠÖ(`yÕæ!RÒ\0	iXö%F}—êkão\Z_ø¯ş\n=ûE<:rZø{K+W¸SäiV„ó<£ş{JW;\'\n¹Â÷ûYë\Zïí1ñ/ƒ¾•`µµò¯<[ªL6(~x l}æ8³‚Ç`ÈB=×àÁ]àOí´\r×Èµƒç–gÃOy)Æéeoâcù\0\0\0\0\0û›€pëK†°ÿ\0{=¥Z¯UèŸÄú;E|)¯¦Àç±É)<ÚªRÆÖ_»‹ÕR¦şÛşô¾Êzòêô•ŸÆ·¿ÃË_Ù{á‚üáyf·Òü@÷“ërœ	õ©`û7–f`2T\\„ ã+äı•ö‡üÿ\0¤ü8új¿ÎÊ¾1ëÉã\Z4èf“ÃÑ\\°‚ŠŠ[%Ê—Í·êÛ?“øãˆÅgU«bfç\'k¶îõŠoó>šÿ\0‚yşĞşıœ|/ñTñ%ãD×\'N[;8Ìº¾uyXÓ#¦åËn#\"¸Ú#öËñWí5â(mndşÇğÊ\\¡ƒI¶”|0ÃLü[¡WŒ(<ŸÛÍXÑ—v·f=gÿ\0BÅ[ˆ1’ÀC.ƒå§ŞÛÊí½_mvÛ½Ì2Ìëå†ÁEòÂ3íÖó¾¾Zì:>VœzSS ú\nqé_Œë‹Ü›DğÆ¥ã_Ùi:=Ö¥ªjåÛÛ[¦ù%lgè\0$“À\0’@×èìcûXü6ş$ñ7Ùõ_İ(İo¤d`ˆÏñÊAÁ“·E–:ÿ\0‚Cévóë.Zê´è£˜ 2F×EÔ7P¬Q	Åôöú®Úşšğ·†pÏ+£šV÷¤ù¬Ñ´š¿›Ò÷éØşñG\" øß˜T÷¤İ;.ŠÔ ¾oMút\Z„¥‘Äk“M’-±şM.Á!İ_°z2A\Z5ËæAòö_ê}êÊ®ÑJ(¢1°QTEPEPEPš¯©^Geg$ÒÈ±Å\n—v=’jwûµç´ŠÛOĞbÓ#m²j\rºOh”Œşgè\r|¯qEÉ1½}U8¶—óIéüäÒòZx$±5ãB=_áÕmâ-^óâ/ŒZX•kÉVÑà^Š=¸äıI¯_—Ã÷¾øttÿ\0C\rÆªËç_İyÏÁš^„¢Ÿ˜€A!vH®Oö~ğwÚ\'›X•~XÉ‚Ûÿ\0Æß‡øµzäqL:ü_À®ğu¸»6mâ±­´Şê\rŞë·;×ü*6²Ğ÷x‹i‚½_åú³ø=ğ‡Mø;áìë:êâêf»Ô5’\ZëTºs™.&nîÇ°áF\0\0ØÑEFP¡N5J’´V‰7ZµJÓuj»ÉîÙğïüş>~ı5_çe_µöwüş>~ı5_çe_ú×à<sÿ\0#ºßöïş‘ñ>-ÿ\0‘µ_ûwÿ\0IˆBs*{°¦ÈêˆYĞ9$ö¯¦?goø\'î§â_øËÆqÜé:]¥Œ×š~˜sÕë,lÈò÷Š<€Bıöÿ\0dcw…—åxœtİ,4o£môKÍœü;—×ÅãéFŠ½¥ßD®·gÎHrÿ\0…<ô¨í›t*}…HzWä‡úø}›ÿ\0‚¹øôÒÿ\0öò¾Ñšç\rµFæş_Zø·ş	Øºø‹ôÒÇş–WÚÍcüëúóÃ¿õg¿Çÿ\0§&ø¥ÿ\0%F+şÜÿ\0Óp#†×i,Çs7sSQE}ôb’²??\n(¢¨Š( Š( Š( Š( ÈØóïÅbO|D¼Xÿ\0yåÈ¶pßoËÅË~uï×’yQşè&¼áŸı½ñ\nÆIÿ\0,½Û“Ü€H?÷ÑS_ÍHom˜Ï)áŠ.ß[­ï?(òÇğç¿ªGÔğÍ©{|[ûÓÕßünğ‡‡ãğÏ‡­lcm¬a2?‰º³~$“øÖ¥2»øÓëú+„¥…¡=Ë%»$¬—É#æ\'\')9Kw¨QEÔIğÿ\0ü¥|8új¿ÎÊ¾6Ñ´›Ïjöú~Ÿkq}}y Š{xÌ’Ìç¢ªI¯»ÿ\0à¥Ÿ|EñÃÇ?t?\réò^^Lº£<‡+ªfË2Jø!{òz(b@¯Nı”?c/şÌÚJÜ(Wñ5Ô{nõY#Ã\0zÅ\nÿ\0Ë8ıpw6bpşG›ğ®\'4ÏªÉ{´×-åÿ\0nÇEİşüß2áÚù†qR_\r?vòÿ\0·c¢îÿ\0#Îc_ø\'UŸÃg´ñ?#¶Õ<H„Km§äKk¥7PXô–aÁÏİC÷w¾ø›ß‡ QßK¹ÿ\0ÑM] Nƒ‡ñ;Ÿ‡Ú÷ıƒ.ôSWèx\\§\r€ÁJ†\Z6V~­Ûvú³ôŸ/¡‚ä£B6W^­ßvúŸ¶§Éşè5©á/	j?ñ%®¡Ø]jz¥ó‚ÚÜï§Ğ(êX\0ä+¢ıŸ¿g~Ñ~\"Mğı°[{pŸmÔ\'ZØ©è\\¬{ ù›ØdÒÙÃö\\ğßìßá¿²é0›JéGÛõIÔ}¢ğqÇÜŒvEàu99cü½Á~c3ÉªÕ/N‚Ş]_”WWç²ózÙ¼qâ6!‹¡JÕ1hôg6¶î–ïÉjs_°ÿ\0ì—qû1øSQ—RÔ÷\\ñïc‡ş=­^fÈĞ‘–#Í}Îp>í@EıU•ex|»	6„’ßÍëİ¶Û?’³LÓ˜âçÅËš¤İÛÛÉhº$’^H(¢Šô<(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0Ší‰µ¾ë\rx‡Á´>ø¤lçâe{\\ï.õM{“Â¸?ˆ&Öuhõ&e³Õ¡!¾a…˜‡Ù€èAZü‡Å.Æã1v–Óö•p5yÜó¦ÜyÔo§2QVN××­g)ÅÓ„jáê»*Š×ìõµüµ;¨äÏ­I\\n‹ñşÖ5‡\\Ñu+;÷¥··kˆÜÜGÓŸ­kEã›Iğ#]AËqÅ…Çÿ\0_y—ñVWŠ¦¥\Zª/ùfœ&Ÿg	ZIü:¦¬š¿šÕ}êæåØÏêú#œcC—Ïå´PTõí=J¹³˜°†î‚M§”©Áìpjå¥Õ˜ÓiİïÃ…ú/Â_Yè^Óíô½.ÅvÅ@ò{³’ÎO%˜’O$šèUv­-hÂ”:jÑJÉ-]’*¥IÔ›©Q·&îÛÕ¶ú·Õ…QZQE\0QE\0QE\0QE\0QE\0QE\0šF]ÔQ@klš>Ï¸|ÜÑE\09`§QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0ÿÙ','JPG','bt.jpg','BT','A',NULL,NULL);

/*Table structure for table `md_weightage_setup` */

DROP TABLE IF EXISTS `md_weightage_setup`;

CREATE TABLE `md_weightage_setup` (
  `weightageSetupId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `companyId` varchar(255) DEFAULT NULL,
  `customerWt` decimal(19,2) DEFAULT NULL,
  `financialWt` decimal(19,2) DEFAULT NULL,
  `orgManagementWt` decimal(19,2) DEFAULT NULL,
  `productionWt` decimal(19,2) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`weightageSetupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `md_weightage_setup` */

insert  into `md_weightage_setup`(`weightageSetupId`,`createdBy`,`createdDate`,`cmdFlag`,`companyId`,`customerWt`,`financialWt`,`orgManagementWt`,`productionWt`,`updatedBy`,`updatedDate`,`year`) values ('45e45f3c-8dc5-46dc-b854-291d5f24a456','zepa-uuid-009-manual-added-user','2022-03-24 08:54:24','M','e55b22ac-7130-4acf-80d4-9f0ead95f20b','20.00','60.00','20.00','0.00','zepa-uuid-009-manual-added-user','2022-03-26 17:55:57','2022'),('54ed8362-b9a7-41ea-aa45-2cf38a496b57','91e6d937-8f62-43c6-9e96-c96d35362917','2022-03-29 11:25:51','C','1','30.00','60.00','10.00','0.00',NULL,NULL,'2022'),('a1ab97f8-41d2-4c01-a582-86e4409fb042','zepa-uuid-009-manual-added-user','2022-03-24 08:54:50','C','49e24e49-de32-47bd-a751-54e89230a6e3','45.00','50.00','5.00','0.00',NULL,NULL,'2022'),('abf01cbb-3d9e-47e0-a16d-ea82f526b6c6','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-04 05:40:00','C','0fce1201-3b20-4dc7-922e-9c6bb76b608f','30.00','40.00','20.00','10.00',NULL,NULL,'2022'),('d75ad77f-c0d0-46d3-9c9a-2673dc6e7264','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-03 10:35:22','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','30.00','20.00','30.00','20.00',NULL,NULL,'2022');

/*Table structure for table `md_year` */

DROP TABLE IF EXISTS `md_year`;

CREATE TABLE `md_year` (
  `year` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `md_year` */

insert  into `md_year`(`year`,`createdBy`,`createdDate`,`cmdFlag`,`status`,`updatedBy`,`updatedDate`) values ('2022','zepa-uuid-009-manual-added-user','2022-03-24 08:51:05','M','A','zepa-uuid-009-manual-added-user','2022-03-26 17:05:21');

/*Table structure for table `sa_company_mapping` */

DROP TABLE IF EXISTS `sa_company_mapping`;

CREATE TABLE `sa_company_mapping` (
  `companyMappingId` varchar(255) NOT NULL,
  `companyId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`companyMappingId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sa_company_mapping` */

insert  into `sa_company_mapping`(`companyMappingId`,`companyId`,`userId`) values ('1f2db7f2-6e10-4e2f-8543-7c6047350fda','0fce1201-3b20-4dc7-922e-9c6bb76b608f','0'),('69528bf5-12ad-4bb6-be69-e1e035992448','a169ec8c-af4b-47bb-b648-b21c1c0e9449','0'),('9f86d1a1-444b-4269-94a0-d54377aa2c87','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','0'),('c9670619-cb4f-47e3-a098-7e6764f8921d','1fc797d2-fa7c-4750-9815-9b7bf4016e1d','0');

/*Table structure for table `sa_permission` */

DROP TABLE IF EXISTS `sa_permission`;

CREATE TABLE `sa_permission` (
  `permissionId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `deleteAllowed` char(1) DEFAULT NULL,
  `editAllowed` char(1) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `saveAllowed` char(1) DEFAULT NULL,
  `screenId` int(11) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `viewAllowed` char(1) DEFAULT NULL,
  PRIMARY KEY (`permissionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `sa_permission` */

insert  into `sa_permission`(`permissionId`,`createdBy`,`createdDate`,`deleteAllowed`,`editAllowed`,`roleId`,`saveAllowed`,`screenId`,`updatedBy`,`updatedDate`,`viewAllowed`) values ('4b17047a-0b80-4752-a6e4-eec424fa7766','jigme','2022-03-10 10:45:48','N','N',1,'N',1,NULL,NULL,'Y');

/*Table structure for table `sa_request_password_change` */

DROP TABLE IF EXISTS `sa_request_password_change`;

CREATE TABLE `sa_request_password_change` (
  `requestId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`requestId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sa_request_password_change` */

insert  into `sa_request_password_change`(`requestId`,`createdBy`,`createdDate`,`email`,`status`,`updatedBy`,`updatedDate`) values ('36386b7b-9cd9-4ea6-842e-dc32df7113d6','ngawang.zepa@thimphutechpark.bt','2022-04-01 09:28:36','ngawang.zepa@thimphutechpark.bt','P',NULL,NULL),('44749e48-9bd4-40da-8dac-1484dc81fe89','ngawang.zepa@thimphutechpark.bt','2022-04-01 08:26:41','ngawang.zepa@thimphutechpark.bt','P',NULL,NULL),('574db163-c698-441a-a1fa-c2f642a0e37c','ngawang.zepa@thimphutechpark.bt','2022-04-04 03:09:47','ngawang.zepa@thimphutechpark.bt','C','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-04 03:14:53'),('9e050b15-f18b-4eda-96ab-801bdd893ae5','ngawang.zepa@thimphutechpark.bt','2022-04-01 09:38:31','ngawang.zepa@thimphutechpark.bt','C','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-01 09:40:59'),('a94f2304-0c34-4d9b-9b7c-6c0deb1f663d','ngawang.zepa@thimphutechpark.bt','2022-04-01 09:30:32','ngawang.zepa@thimphutechpark.bt','P',NULL,NULL),('abcc9d4c-57bf-4b52-9ec9-bdeed82dba60','ngawang.zepa@thimphutechpark.bt','2022-04-01 09:30:57','ngawang.zepa@thimphutechpark.bt','P',NULL,NULL),('ca245564-095f-4bbc-8139-e43da311b4d2','ngawang.zepa@thimphutechpark.bt','2022-04-01 08:59:18','ngawang.zepa@thimphutechpark.bt','C','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-01 09:22:18'),('d48f46f1-4e96-42a4-9c2a-cbcd5050ff04',NULL,'2022-04-01 08:20:56',NULL,'P',NULL,NULL),('d588fa91-626f-4282-b5be-9a897f0b3afe','ngawang.zepa@thimphutechpark.bt','2022-04-01 08:24:52','ngawang.zepa@thimphutechpark.bt','P',NULL,NULL);

/*Table structure for table `sa_role` */

DROP TABLE IF EXISTS `sa_role`;

CREATE TABLE `sa_role` (
  `roleId` int(11) NOT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `sa_role` */

insert  into `sa_role`(`roleId`,`roleName`) values (1,'Administrator'),(2,'Creator'),(3,'Reviewer'),(4,'Board Member'),(5,'Company CEO');

/*Table structure for table `sa_screen` */

DROP TABLE IF EXISTS `sa_screen`;

CREATE TABLE `sa_screen` (
  `screenId` int(11) NOT NULL,
  `screenName` varchar(150) NOT NULL,
  `screenUrl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`screenId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sa_screen` */

insert  into `sa_screen`(`screenId`,`screenName`,`screenUrl`) values (1,'User','createUser');

/*Table structure for table `sa_user` */

DROP TABLE IF EXISTS `sa_user`;

CREATE TABLE `sa_user` (
  `userId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `companyId` varchar(255) DEFAULT NULL,
  `mobileNo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `sa_user` */

insert  into `sa_user`(`userId`,`createdBy`,`createdDate`,`cmdFlag`,`email`,`fullName`,`password`,`roleId`,`status`,`updatedBy`,`updatedDate`,`username`,`companyId`,`mobileNo`) values ('0','0',NULL,'M','nzepa@gmail.com','Ngawang Zepa','$2a$10$ljYoDM7rDYp8cjCQ4YkzNuXipElW/OIFhDOcuDyuiNjLac9NOtgK2',1,'A','0','2022-04-01 06:04:38','nzepa','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','17302667'),('91e6d937-8f62-43c6-9e96-c96d35362917','91e6d937-8f62-43c6-9e96-c96d35362917','2022-03-29 09:21:10','M','jdorji@gmail.com','Jigme Dorji','$2a$10$UUdfN7VKWcd8W0pHhTr2E.HsiSqmMQlekgK6Y60GetkzHushHYiy2',3,'A','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:27:00','jdorji@gmail.com','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','17302667'),('ea7049f4-6599-4178-a64a-7499d3366707','ea7049f4-6599-4178-a64a-7499d3366707','2022-03-29 09:21:36','M','bi@gmail.com','Vikash Yai','$2a$10$v8IHarrHxAvTHHMBq6BOouS7jKiCZPtU2JkH1IHe2vc48wbw75SRu',2,'A','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-07 01:21:47','bi@gmail.com','8e50d60c-f2a9-4316-a5fa-b56950f68bf2',''),('268ad49d-3f58-4122-abb7-0c290ce25261','0','2022-04-01 08:58:29','M','ngawang.zepa@thimphutechpark.bt','Nzepa Ttpl','$2a$10$BFYeG1lpT38JQ7cxQDNmteZaju6yjPWf3JSId9pwY4wW2VyF5OP7O',1,'A','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 12:30:48','ngawang.zepa@thimphutechpark.bt','0fce1201-3b20-4dc7-922e-9c6bb76b608f','17302667');

/*Table structure for table `tf_cus_ser_target_comment` */

DROP TABLE IF EXISTS `tf_cus_ser_target_comment`;

CREATE TABLE `tf_cus_ser_target_comment` (
  `commentId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`commentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_cus_ser_target_comment` */

insert  into `tf_cus_ser_target_comment`(`commentId`,`createdBy`,`createdDate`,`comments`,`targetId`,`updatedBy`,`updatedDate`) values ('131b84d5-a711-4166-a8bb-28f0df51970b','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:52:59','<p>dsgdsg</p>','d7ffb131-e375-4ed4-8648-85c8dd014aab',NULL,NULL),('509abb31-1d3c-4733-bd10-c3e690a1d04c','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:17:55','<p>Okay no</p>','d7ffb131-e375-4ed4-8648-85c8dd014aab',NULL,NULL);

/*Table structure for table `tf_dhi_cus_ser_sub_target` */

DROP TABLE IF EXISTS `tf_dhi_cus_ser_sub_target`;

CREATE TABLE `tf_dhi_cus_ser_sub_target` (
  `subTargetId` varchar(255) NOT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `subTarget` longtext DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `weightage` decimal(18,2) DEFAULT NULL,
  `isNegative` char(1) DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`subTargetId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_cus_ser_sub_target` */

insert  into `tf_dhi_cus_ser_sub_target`(`subTargetId`,`targetId`,`subTarget`,`deadline`,`weightage`,`isNegative`,`cmdFlag`,`updatedBy`,`updatedDate`,`createdBy`,`createdDate`) values ('adc49596-61cb-40a5-863d-8d9bd08719f3','d7ffb131-e375-4ed4-8648-85c8dd014aab','S2','2022-04-12 18:00:00','34.00','N','C',NULL,NULL,'268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-07 08:29:31'),('ff975310-4b4d-46af-bb6a-680b03f834f0','d7ffb131-e375-4ed4-8648-85c8dd014aab','S 1','2022-04-27 18:00:00','4.00','Y','M','268ad49d-3f58-4122-abb7-0c290ce25261',NULL,'268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-07 08:29:31');

/*Table structure for table `tf_dhi_cus_ser_sub_target_a` */

DROP TABLE IF EXISTS `tf_dhi_cus_ser_sub_target_a`;

CREATE TABLE `tf_dhi_cus_ser_sub_target_a` (
  `subTargetAuditId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `isNegative` char(1) DEFAULT NULL,
  `subTarget` varchar(255) DEFAULT NULL,
  `subTargetId` varchar(255) DEFAULT NULL,
  `targetAuditId` varchar(255) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `weightage` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`subTargetAuditId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_cus_ser_sub_target_a` */

insert  into `tf_dhi_cus_ser_sub_target_a`(`subTargetAuditId`,`createdBy`,`createdDate`,`cmdFlag`,`deadline`,`isNegative`,`subTarget`,`subTargetId`,`targetAuditId`,`targetId`,`updatedBy`,`updatedDate`,`weightage`) values ('8e5bc7b1-fc80-4640-a1ea-ecceef95ea1e','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-07 08:29:31','M','2022-04-27 18:00:00','Y','S 1','ff975310-4b4d-46af-bb6a-680b03f834f0','e3b226b8-25e9-4740-9b10-e4eb1c01d7c7','d7ffb131-e375-4ed4-8648-85c8dd014aab','268ad49d-3f58-4122-abb7-0c290ce25261',NULL,'4.00'),('c39d9e48-ebcf-423c-866c-068b238e6503','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:52:51','M','2022-04-27 18:00:00','Y','S 1','ff975310-4b4d-46af-bb6a-680b03f834f0','5eb82bad-9cd4-453f-b61b-b8b1e15ace8b','d7ffb131-e375-4ed4-8648-85c8dd014aab','268ad49d-3f58-4122-abb7-0c290ce25261',NULL,'4.00'),('d08262cb-2f11-419b-ba19-4f85985477b6','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:19','C','2022-04-27 18:00:00','N','S 1','ff975310-4b4d-46af-bb6a-680b03f834f0','40364791-0405-41b5-baf0-49e3dbc2f391','d7ffb131-e375-4ed4-8648-85c8dd014aab',NULL,NULL,'4.00'),('fbac87e4-9e67-4438-8163-f6f17a81a45d','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-07 08:29:31','C','2022-04-12 18:00:00','N','S2','adc49596-61cb-40a5-863d-8d9bd08719f3','e3b226b8-25e9-4740-9b10-e4eb1c01d7c7','d7ffb131-e375-4ed4-8648-85c8dd014aab',NULL,NULL,'34.00');

/*Table structure for table `tf_dhi_cus_ser_sub_target_doc` */

DROP TABLE IF EXISTS `tf_dhi_cus_ser_sub_target_doc`;

CREATE TABLE `tf_dhi_cus_ser_sub_target_doc` (
  `fileId` varchar(255) NOT NULL,
  `subTargetId` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `fileExtension` varchar(255) DEFAULT NULL,
  `fileSize` varchar(255) DEFAULT NULL,
  `fileUrl` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_cus_ser_sub_target_doc` */

/*Table structure for table `tf_dhi_cus_ser_sub_target_reviewer_remark` */

DROP TABLE IF EXISTS `tf_dhi_cus_ser_sub_target_reviewer_remark`;

CREATE TABLE `tf_dhi_cus_ser_sub_target_reviewer_remark` (
  `remarkId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `subTargetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`remarkId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_cus_ser_sub_target_reviewer_remark` */

/*Table structure for table `tf_dhi_cus_ser_target` */

DROP TABLE IF EXISTS `tf_dhi_cus_ser_target`;

CREATE TABLE `tf_dhi_cus_ser_target` (
  `targetId` varchar(255) NOT NULL,
  `year` char(4) DEFAULT NULL,
  `companyId` varchar(255) DEFAULT NULL,
  `serialNo` int(11) DEFAULT NULL,
  `activity` longtext DEFAULT NULL,
  `explanation` longtext DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `versionNo` bigint(20) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`targetId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_cus_ser_target` */

insert  into `tf_dhi_cus_ser_target`(`targetId`,`year`,`companyId`,`serialNo`,`activity`,`explanation`,`cmdFlag`,`versionNo`,`updatedBy`,`updatedDate`,`createdBy`,`createdDate`) values ('d7ffb131-e375-4ed4-8648-85c8dd014aab','2022','8e50d60c-f2a9-4316-a5fa-b56950f68bf2',1,'A1 Cus Ser 1','ok','M',3,'268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-07 08:29:31','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:19');

/*Table structure for table `tf_dhi_cus_ser_target_a` */

DROP TABLE IF EXISTS `tf_dhi_cus_ser_target_a`;

CREATE TABLE `tf_dhi_cus_ser_target_a` (
  `targetAuditId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `companyId` varchar(255) DEFAULT NULL,
  `explanation` varchar(255) DEFAULT NULL,
  `serialNo` int(20) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `versionNo` bigint(20) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`targetAuditId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_cus_ser_target_a` */

insert  into `tf_dhi_cus_ser_target_a`(`targetAuditId`,`createdBy`,`createdDate`,`activity`,`cmdFlag`,`companyId`,`explanation`,`serialNo`,`targetId`,`updatedBy`,`updatedDate`,`versionNo`,`year`) values ('40364791-0405-41b5-baf0-49e3dbc2f391','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:19','A1 Cus Ser 1','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','ok',1,'d7ffb131-e375-4ed4-8648-85c8dd014aab',NULL,NULL,1,'2022'),('5eb82bad-9cd4-453f-b61b-b8b1e15ace8b','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:19','A1 Cus Ser 1','M','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','ok',1,'d7ffb131-e375-4ed4-8648-85c8dd014aab','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:52:51',2,'2022'),('e3b226b8-25e9-4740-9b10-e4eb1c01d7c7','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:19','A1 Cus Ser 1','M','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','ok',1,'d7ffb131-e375-4ed4-8648-85c8dd014aab','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-07 08:29:31',3,'2022');

/*Table structure for table `tf_dhi_cus_ser_target_stage` */

DROP TABLE IF EXISTS `tf_dhi_cus_ser_target_stage`;

CREATE TABLE `tf_dhi_cus_ser_target_stage` (
  `stageId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `companyId` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_cus_ser_target_stage` */

insert  into `tf_dhi_cus_ser_target_stage`(`stageId`,`createdBy`,`createdDate`,`companyId`,`roleId`,`status`,`year`) values ('0ee75e03-3506-429b-a18c-bc02a3663572','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 09:55:40','8e50d60c-f2a9-4316-a5fa-b56950f68bf2',3,'S','2022'),('418fa557-e55d-4341-9060-060d58644923','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 10:02:25','8e50d60c-f2a9-4316-a5fa-b56950f68bf2',3,'S','2022'),('f5583c88-9b0f-451b-92b1-b209220f30ee','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 10:01:43','8e50d60c-f2a9-4316-a5fa-b56950f68bf2',2,'R','2022');

/*Table structure for table `tf_dhi_cus_ser_target_stage_detail` */

DROP TABLE IF EXISTS `tf_dhi_cus_ser_target_stage_detail`;

CREATE TABLE `tf_dhi_cus_ser_target_stage_detail` (
  `stageDetailId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `stageId` varchar(255) DEFAULT NULL,
  `targetAuditId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stageDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_cus_ser_target_stage_detail` */

insert  into `tf_dhi_cus_ser_target_stage_detail`(`stageDetailId`,`createdBy`,`createdDate`,`stageId`,`targetAuditId`) values ('83eb1b0a-19f0-4c7a-a6c7-4fc1b0643a8f','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 10:02:25','418fa557-e55d-4341-9060-060d58644923','5eb82bad-9cd4-453f-b61b-b8b1e15ace8b'),('9b88ba36-9109-459e-907b-82b7dc3ad6c1','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 09:55:40','0ee75e03-3506-429b-a18c-bc02a3663572','5eb82bad-9cd4-453f-b61b-b8b1e15ace8b'),('ab73c6c6-330d-4920-816d-83faa25957c4','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 10:01:43','f5583c88-9b0f-451b-92b1-b209220f30ee','5eb82bad-9cd4-453f-b61b-b8b1e15ace8b');

/*Table structure for table `tf_dhi_cus_ser_target_status` */

DROP TABLE IF EXISTS `tf_dhi_cus_ser_target_status`;

CREATE TABLE `tf_dhi_cus_ser_target_status` (
  `statusId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `statusFlag` char(1) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_cus_ser_target_status` */

insert  into `tf_dhi_cus_ser_target_status`(`statusId`,`createdBy`,`createdDate`,`statusFlag`,`targetId`) values ('e962fbac-658d-445b-9931-5239b239ffd6','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:19','C','d7ffb131-e375-4ed4-8648-85c8dd014aab');

/*Table structure for table `tf_dhi_cus_ser_target_writeup` */

DROP TABLE IF EXISTS `tf_dhi_cus_ser_target_writeup`;

CREATE TABLE `tf_dhi_cus_ser_target_writeup` (
  `writeupId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `background` longtext DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `evalFormulaId` int(11) DEFAULT NULL,
  `evalMethod` longtext DEFAULT NULL,
  `isProratable` char(1) DEFAULT NULL,
  `output` longtext DEFAULT NULL,
  `risks` longtext DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`writeupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_cus_ser_target_writeup` */

insert  into `tf_dhi_cus_ser_target_writeup`(`writeupId`,`createdBy`,`createdDate`,`background`,`cmdFlag`,`evalFormulaId`,`evalMethod`,`isProratable`,`output`,`risks`,`targetId`,`updatedBy`,`updatedDate`) values ('732f7358-f59e-4b16-885a-7b3137daa285','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:19','<p><br></p>','M',1,'<p><br></p>',NULL,'<p><br></p>','<p><br></p>','d7ffb131-e375-4ed4-8648-85c8dd014aab','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-07 08:29:31');

/*Table structure for table `tf_dhi_cus_ser_target_writeup_a` */

DROP TABLE IF EXISTS `tf_dhi_cus_ser_target_writeup_a`;

CREATE TABLE `tf_dhi_cus_ser_target_writeup_a` (
  `writeupAuditId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `evalFormulaId` int(11) DEFAULT NULL,
  `evalMethod` varchar(255) DEFAULT NULL,
  `isProratable` char(1) DEFAULT NULL,
  `output` varchar(255) DEFAULT NULL,
  `risks` varchar(255) DEFAULT NULL,
  `targetAuditId` varchar(255) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `writeupId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`writeupAuditId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_cus_ser_target_writeup_a` */

insert  into `tf_dhi_cus_ser_target_writeup_a`(`writeupAuditId`,`createdBy`,`createdDate`,`background`,`cmdFlag`,`evalFormulaId`,`evalMethod`,`isProratable`,`output`,`risks`,`targetAuditId`,`targetId`,`updatedBy`,`updatedDate`,`writeupId`) values ('61ca3d27-37b4-43c7-861f-adb4421833f9','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:19','<p><br></p>','M',1,'<p><br></p>',NULL,'<p><br></p>','<p><br></p>','5eb82bad-9cd4-453f-b61b-b8b1e15ace8b','d7ffb131-e375-4ed4-8648-85c8dd014aab','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:52:51','732f7358-f59e-4b16-885a-7b3137daa285'),('66fc5b8f-085e-4463-b418-3e2ac67a834c','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:19','<p><br></p>','M',1,'<p><br></p>',NULL,'<p><br></p>','<p><br></p>','e3b226b8-25e9-4740-9b10-e4eb1c01d7c7','d7ffb131-e375-4ed4-8648-85c8dd014aab','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-07 08:29:31','732f7358-f59e-4b16-885a-7b3137daa285'),('bee0e0da-356f-45b0-9e9e-1296116b1714','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:19','<p><br></p>','C',1,'<p><br></p>','Y','<p><br></p>','<p><br></p>','40364791-0405-41b5-baf0-49e3dbc2f391','d7ffb131-e375-4ed4-8648-85c8dd014aab',NULL,NULL,'732f7358-f59e-4b16-885a-7b3137daa285');

/*Table structure for table `tf_dhi_fin_reviewer_remark` */

DROP TABLE IF EXISTS `tf_dhi_fin_reviewer_remark`;

CREATE TABLE `tf_dhi_fin_reviewer_remark` (
  `remarkId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`remarkId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_fin_reviewer_remark` */

/*Table structure for table `tf_dhi_fin_target` */

DROP TABLE IF EXISTS `tf_dhi_fin_target`;

CREATE TABLE `tf_dhi_fin_target` (
  `targetId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `companyId` varchar(255) DEFAULT NULL,
  `curYearBudget` decimal(19,2) DEFAULT NULL,
  `curYearDhiProposal` decimal(19,2) DEFAULT NULL,
  `curYearMidTarget` decimal(19,2) DEFAULT NULL,
  `curYearTarget` decimal(19,2) DEFAULT NULL,
  `explanation` longtext DEFAULT NULL,
  `finKpi` varchar(255) DEFAULT NULL,
  `preYearActual` decimal(19,2) DEFAULT NULL,
  `preYearMidActual` decimal(19,2) DEFAULT NULL,
  `preYearTarget` decimal(19,2) DEFAULT NULL,
  `serialNo` int(11) DEFAULT NULL,
  `versionNo` bigint(20) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `weightage` decimal(19,2) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`targetId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_fin_target` */

insert  into `tf_dhi_fin_target`(`targetId`,`createdBy`,`createdDate`,`cmdFlag`,`companyId`,`curYearBudget`,`curYearDhiProposal`,`curYearMidTarget`,`curYearTarget`,`explanation`,`finKpi`,`preYearActual`,`preYearMidActual`,`preYearTarget`,`serialNo`,`versionNo`,`updatedBy`,`updatedDate`,`weightage`,`year`) values ('0b481c3c-cd9d-4127-b712-a5ee47aec45f','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:21:27','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','11.07',NULL,'13.84','10.71','','CASK without fuel (Nu.)','12.53','9.67','6.55',5,1,NULL,NULL,'10.00','2022'),('58c4adf3-e653-4724-bd84-06f439c7ffa8','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:23:36','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','-205.66',NULL,'-157.76','68.06','','EBITDA (in million Nu.)','-508.64','-111.63','1396.25',6,1,NULL,NULL,'10.00','2022'),('8797acba-79d4-439b-9f23-127e4877996c','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:17:20','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','2.18',NULL,'1.02','2.62','','Revenue (Operating) per Employee (in million Nu.)','1.94','1.65','10.80',2,1,NULL,NULL,'5.00','2022'),('a5a17896-ac10-48ce-a83b-e61ba6f6aa8f','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:12:29','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','1082.78',NULL,'501.92','1293.10','Jan-Jun 2021 targets are budget figures','Operating Revenue (in million Nu.)','965.67','821.80','5582.65',1,1,NULL,NULL,'10.00','2022'),('a9c39fc6-d798-429f-9514-178ec3d898a0','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:18:42','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','3.59',NULL,'4.60','4.74','','PRASK (Nu.)','4.71','6.71','9.15',3,1,NULL,NULL,'10.00','2022'),('c718a94c-76bd-4984-b78a-67b25be1940f','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:20:08','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','12.04',NULL,'14.81','11.69','','CASK with fuel (Nu.)','13.73','11.27','8.47',4,1,NULL,NULL,'10.00','2022'),('d19d2530-8c86-443f-bfc0-3ce87915dd65','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 09:08:13','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2',NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2022'),('efd57b99-74a9-412b-82b5-a32a8d0c7b56','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:25:10','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','-0.42',NULL,'-0.32','0.14','','EBITDA per Employee (in million Nu.)','-1.02','-0.22','2.83',7,1,NULL,NULL,'5.00','2022');

/*Table structure for table `tf_dhi_fin_target_a` */

DROP TABLE IF EXISTS `tf_dhi_fin_target_a`;

CREATE TABLE `tf_dhi_fin_target_a` (
  `targetAuditId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `companyId` varchar(255) DEFAULT NULL,
  `curYearBudget` decimal(19,2) DEFAULT NULL,
  `curYearDhiProposal` decimal(19,2) DEFAULT NULL,
  `curYearMidTarget` decimal(19,2) DEFAULT NULL,
  `curYearTarget` decimal(19,2) DEFAULT NULL,
  `explanation` longtext DEFAULT NULL,
  `finKpi` varchar(255) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `preYearActual` decimal(19,2) DEFAULT NULL,
  `preYearMidActual` decimal(19,2) DEFAULT NULL,
  `preYearTarget` decimal(19,2) DEFAULT NULL,
  `serialNo` int(11) DEFAULT NULL,
  `versionNo` bigint(11) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `weightage` decimal(19,2) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`targetAuditId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_fin_target_a` */

insert  into `tf_dhi_fin_target_a`(`targetAuditId`,`createdBy`,`createdDate`,`cmdFlag`,`companyId`,`curYearBudget`,`curYearDhiProposal`,`curYearMidTarget`,`curYearTarget`,`explanation`,`finKpi`,`targetId`,`preYearActual`,`preYearMidActual`,`preYearTarget`,`serialNo`,`versionNo`,`updatedBy`,`updatedDate`,`weightage`,`year`) values ('0aba54fa-2bfe-49f0-902d-44745e35fd9c','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:23:36','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','-205.66',NULL,'-157.76','68.06','','EBITDA (in million Nu.)','58c4adf3-e653-4724-bd84-06f439c7ffa8','-508.64','-111.63','1396.25',6,1,NULL,NULL,'10.00','2022'),('2330d00b-72cb-4837-9985-7eb7b9db0f34','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:20:08','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','12.04',NULL,'14.81','11.69','','CASK with fuel (Nu.)','c718a94c-76bd-4984-b78a-67b25be1940f','13.73','11.27','8.47',4,1,NULL,NULL,'10.00','2022'),('4de1de20-77a9-47c6-b82a-b0849acf7816','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:21:27','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','11.07',NULL,'13.84','10.71','','CASK without fuel (Nu.)','0b481c3c-cd9d-4127-b712-a5ee47aec45f','12.53','9.67','6.55',5,1,NULL,NULL,'10.00','2022'),('69989ac6-6462-480b-8b79-3342637624a6','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:17:20','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','2.18',NULL,'1.02','2.62','','Revenue (Operating) per Employee (in million Nu.)','8797acba-79d4-439b-9f23-127e4877996c','1.94','1.65','10.80',2,1,NULL,NULL,'5.00','2022'),('6d8a97f0-90f1-4599-9032-cffd1ace0245','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:18:42','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','3.59',NULL,'4.60','4.74','','PRASK (Nu.)','a9c39fc6-d798-429f-9514-178ec3d898a0','4.71','6.71','9.15',3,1,NULL,NULL,'10.00','2022'),('82fc4dbe-55fe-4cbf-a5c1-dc265632cfb5','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:25:10','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','-0.42',NULL,'-0.32','0.14','','EBITDA per Employee (in million Nu.)','efd57b99-74a9-412b-82b5-a32a8d0c7b56','-1.02','-0.22','2.83',7,1,NULL,NULL,'5.00','2022'),('d4a9ed0f-fe10-4673-a009-88a45a16d40c','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 09:08:13','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2',NULL,NULL,NULL,NULL,'','','d19d2530-8c86-443f-bfc0-3ce87915dd65',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2022'),('fa463e4b-94fb-4688-88d2-f2b6f679f701','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:12:29','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','1082.78',NULL,'501.92','1293.10','Jan-Jun 2021 targets are budget figures','Operating Revenue (in million Nu.)','a5a17896-ac10-48ce-a83b-e61ba6f6aa8f','965.67','821.80','5582.65',1,1,NULL,NULL,'10.00','2022');

/*Table structure for table `tf_dhi_fin_target_doc` */

DROP TABLE IF EXISTS `tf_dhi_fin_target_doc`;

CREATE TABLE `tf_dhi_fin_target_doc` (
  `fileId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `fileExtension` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `fileSize` varchar(255) DEFAULT NULL,
  `fileUrl` varchar(255) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_fin_target_doc` */

/*Table structure for table `tf_dhi_fin_target_stage` */

DROP TABLE IF EXISTS `tf_dhi_fin_target_stage`;

CREATE TABLE `tf_dhi_fin_target_stage` (
  `stageId` varchar(255) NOT NULL,
  `companyId` varchar(255) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`stageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_fin_target_stage` */

insert  into `tf_dhi_fin_target_stage`(`stageId`,`companyId`,`year`,`status`,`roleId`,`createdBy`,`createdDate`) values ('3fbff73e-0d32-4db7-abe8-3d84e83c45e2','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','2022','A',3,'91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 06:25:27'),('61b83a58-ad2f-4425-bffc-6a316237fcc0','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','2022','S',3,'ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 06:16:31'),('99e54207-20e5-4886-92b2-137a05caaa51','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','2022','S',3,'ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 06:23:56'),('bcdf5a22-d620-4af4-9e33-86aa61829bfd','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','2022','R',2,'91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 06:21:05');

/*Table structure for table `tf_dhi_fin_target_stage_detail` */

DROP TABLE IF EXISTS `tf_dhi_fin_target_stage_detail`;

CREATE TABLE `tf_dhi_fin_target_stage_detail` (
  `stageDetailId` varchar(200) NOT NULL,
  `stageId` varchar(200) DEFAULT NULL,
  `targetAuditId` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_fin_target_stage_detail` */

insert  into `tf_dhi_fin_target_stage_detail`(`stageDetailId`,`stageId`,`targetAuditId`,`createdBy`,`createdDate`) values ('4164c384-cabe-4e19-b5fa-a34bc923b2a9','61b83a58-ad2f-4425-bffc-6a316237fcc0','fa463e4b-94fb-4688-88d2-f2b6f679f701','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 06:16:31'),('a901ca96-8290-4dda-a0b5-4650590b7743','61b83a58-ad2f-4425-bffc-6a316237fcc0','69989ac6-6462-480b-8b79-3342637624a6','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 06:16:31'),('28dda607-bcd1-4a53-a338-e4ad643b7045','61b83a58-ad2f-4425-bffc-6a316237fcc0','6d8a97f0-90f1-4599-9032-cffd1ace0245','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 06:16:31'),('9aa0c784-6053-4427-a255-c4b8aa82bb0b','61b83a58-ad2f-4425-bffc-6a316237fcc0','2330d00b-72cb-4837-9985-7eb7b9db0f34','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 06:16:31'),('c9606673-9235-4295-9008-fb0aada56bbb','61b83a58-ad2f-4425-bffc-6a316237fcc0','4de1de20-77a9-47c6-b82a-b0849acf7816','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 06:16:31'),('dc898085-109e-4f0f-b487-233fc1f05eba','61b83a58-ad2f-4425-bffc-6a316237fcc0','0aba54fa-2bfe-49f0-902d-44745e35fd9c','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 06:16:31'),('98e4afcc-2301-4cf1-833f-2f0610affb0e','61b83a58-ad2f-4425-bffc-6a316237fcc0','82fc4dbe-55fe-4cbf-a5c1-dc265632cfb5','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 06:16:31'),('2d04aede-9b2d-419c-a3b4-67c2c1ea5b8c','bcdf5a22-d620-4af4-9e33-86aa61829bfd','fa463e4b-94fb-4688-88d2-f2b6f679f701','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 06:21:05'),('931c2460-1090-4c1e-b763-b96cb81bb15a','bcdf5a22-d620-4af4-9e33-86aa61829bfd','69989ac6-6462-480b-8b79-3342637624a6','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 06:21:05'),('451fcd53-e09f-4170-9f46-e84ae36869c5','bcdf5a22-d620-4af4-9e33-86aa61829bfd','6d8a97f0-90f1-4599-9032-cffd1ace0245','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 06:21:05'),('a1c0e2e0-0654-4596-b613-10f99bbf9cd0','bcdf5a22-d620-4af4-9e33-86aa61829bfd','2330d00b-72cb-4837-9985-7eb7b9db0f34','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 06:21:05'),('5e0f9007-2ccd-464e-8100-afec5a2909ea','bcdf5a22-d620-4af4-9e33-86aa61829bfd','4de1de20-77a9-47c6-b82a-b0849acf7816','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 06:21:05'),('623c4918-f58d-423d-b719-8d38898988b8','bcdf5a22-d620-4af4-9e33-86aa61829bfd','0aba54fa-2bfe-49f0-902d-44745e35fd9c','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 06:21:05'),('e53a036f-2334-4e04-aab4-b49616e5936c','bcdf5a22-d620-4af4-9e33-86aa61829bfd','82fc4dbe-55fe-4cbf-a5c1-dc265632cfb5','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 06:21:05'),('f21b5b30-5912-47bb-b8d8-2a7e2cc153a9','99e54207-20e5-4886-92b2-137a05caaa51','fa463e4b-94fb-4688-88d2-f2b6f679f701','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 06:23:56'),('55e1caf2-73a6-4de8-b9d6-7d6736b81105','99e54207-20e5-4886-92b2-137a05caaa51','69989ac6-6462-480b-8b79-3342637624a6','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 06:23:56'),('34a3f481-31b0-4dd5-83c5-c7e443d3c9a8','99e54207-20e5-4886-92b2-137a05caaa51','6d8a97f0-90f1-4599-9032-cffd1ace0245','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 06:23:56'),('6a14a8c2-454b-4f1d-b4bb-05bd35e960e6','99e54207-20e5-4886-92b2-137a05caaa51','2330d00b-72cb-4837-9985-7eb7b9db0f34','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 06:23:56'),('6bf19615-31e9-4734-8f3a-b2a0f78ff523','99e54207-20e5-4886-92b2-137a05caaa51','4de1de20-77a9-47c6-b82a-b0849acf7816','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 06:23:56'),('12c56aee-be22-4b9d-a664-5cb699c3e8c2','99e54207-20e5-4886-92b2-137a05caaa51','0aba54fa-2bfe-49f0-902d-44745e35fd9c','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 06:23:56'),('52bfce9f-5773-4543-9e8d-9b8240e8ad9a','99e54207-20e5-4886-92b2-137a05caaa51','82fc4dbe-55fe-4cbf-a5c1-dc265632cfb5','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 06:23:56'),('847965f5-3638-4294-b768-24f7298a4998','3fbff73e-0d32-4db7-abe8-3d84e83c45e2','fa463e4b-94fb-4688-88d2-f2b6f679f701','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 06:25:27'),('fc626d79-e60d-4f91-bafd-82d85583bebc','3fbff73e-0d32-4db7-abe8-3d84e83c45e2','69989ac6-6462-480b-8b79-3342637624a6','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 06:25:27'),('cd84bde8-e720-4873-bb44-c5631a2e64b3','3fbff73e-0d32-4db7-abe8-3d84e83c45e2','6d8a97f0-90f1-4599-9032-cffd1ace0245','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 06:25:27'),('cc2ed121-d535-444a-ba6a-4ea9de39480d','3fbff73e-0d32-4db7-abe8-3d84e83c45e2','2330d00b-72cb-4837-9985-7eb7b9db0f34','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 06:25:27'),('bc7f4a50-3506-4278-b008-7a06bc8cd4fb','3fbff73e-0d32-4db7-abe8-3d84e83c45e2','4de1de20-77a9-47c6-b82a-b0849acf7816','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 06:25:27'),('3c4b62c8-0cd3-466d-b66e-a3f380770198','3fbff73e-0d32-4db7-abe8-3d84e83c45e2','0aba54fa-2bfe-49f0-902d-44745e35fd9c','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 06:25:27'),('1fa40eb4-26d4-46c0-a350-405bb5cb3f59','3fbff73e-0d32-4db7-abe8-3d84e83c45e2','82fc4dbe-55fe-4cbf-a5c1-dc265632cfb5','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 06:25:27');

/*Table structure for table `tf_dhi_fin_target_status` */

DROP TABLE IF EXISTS `tf_dhi_fin_target_status`;

CREATE TABLE `tf_dhi_fin_target_status` (
  `statusId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `statusFlag` char(1) DEFAULT NULL,
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_fin_target_status` */

insert  into `tf_dhi_fin_target_status`(`statusId`,`createdBy`,`createdDate`,`targetId`,`statusFlag`) values ('4278e60d-06b7-4b1e-928d-d95e83f23826','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:23:36','58c4adf3-e653-4724-bd84-06f439c7ffa8','C'),('6643ec31-6e7a-4280-a23d-bd2933dead2d','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:17:20','8797acba-79d4-439b-9f23-127e4877996c','C'),('a3904b02-5180-468f-96c3-daeafad321f7','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:12:29','a5a17896-ac10-48ce-a83b-e61ba6f6aa8f','C'),('a6f52416-767c-4e17-b1fa-b95239d08188','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:21:27','0b481c3c-cd9d-4127-b712-a5ee47aec45f','C'),('b1e315fe-2cab-4367-a0b4-f118440f9339','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:25:10','efd57b99-74a9-412b-82b5-a32a8d0c7b56','C'),('c7c96772-a805-4b16-8f19-94c31d087e88','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:20:08','c718a94c-76bd-4984-b78a-67b25be1940f','C'),('d376f472-ad1e-4eda-9073-8b127777c73e','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:18:42','a9c39fc6-d798-429f-9514-178ec3d898a0','C'),('fa668cb8-082e-4cbe-bc88-2ee8d7df6f92','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 09:08:13','d19d2530-8c86-443f-bfc0-3ce87915dd65','C');

/*Table structure for table `tf_dhi_fin_target_writeup` */

DROP TABLE IF EXISTS `tf_dhi_fin_target_writeup`;

CREATE TABLE `tf_dhi_fin_target_writeup` (
  `writeupId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `background` longtext DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `evalFormulaId` int(11) DEFAULT NULL,
  `evalMethod` longtext DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `output` longtext DEFAULT NULL,
  `risks` longtext DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`writeupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_fin_target_writeup` */

insert  into `tf_dhi_fin_target_writeup`(`writeupId`,`createdBy`,`createdDate`,`background`,`cmdFlag`,`evalFormulaId`,`evalMethod`,`targetId`,`output`,`risks`,`updatedBy`,`updatedDate`) values ('07c145d9-7066-4fb5-af5b-6475e4a6c690','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:18:42','<p>PRASK measures how much ticket revenue one available/allowable seat generates on average Kilometer flown. It will be calculated as: total passenger revenue (including insurance &amp; surcharge, chartered sales and RGoB grant for domestic operations, if any) divided by the total ASK (capacity available/allowable).&nbsp;</p>','C',2,'<p>Shall be addressed and considered during evaluation</p>','a9c39fc6-d798-429f-9514-178ec3d898a0','<p>Target for PRASK is set at Nu. 4.74</p>','<p><br></p>',NULL,NULL),('876ad020-974e-4444-8b23-c48da892867a','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:23:36','<p>EBITDA or Earnings Before Interest, Taxes, Depreciation, and Amortization and is a metric used to evaluate a company\'s operating performance. It can be seen as a proxy for cash flow. In finance, the term is used to describe the amount of cash (currency) that is generated or consumed in a given time period as it eliminates the effects of financing and capital expenditures.</p><p>With the company in deep financial crisis projecting a negative PAT, this target is added to check on the actual earnings based on actual business operations during the year.</p>','C',1,'<p>As below</p>','58c4adf3-e653-4724-bd84-06f439c7ffa8','<p>Target for EBITDA is set at Nu. 68.06 million.</p>','<p>Shall be addressed and considered during evaluation</p>',NULL,NULL),('8987608e-b858-400d-9400-cf3f57510d18','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:25:10','<p>EBITDA per employee will throw a clear picture how much profit each employees earn. Thus an increasing trend of EBITDA per employee will be a good measure of company\'s growth in general. This also shows the efficiency of how a company utilizes its employees.&nbsp;</p>','C',1,'<p>As below</p>','efd57b99-74a9-412b-82b5-a32a8d0c7b56','<p>Target for EBITDA per employee is set at Nu. 0.14 million</p>','<p>Shall be addressed and considered during evaluation</p>',NULL,NULL),('a93b605d-d5f6-4f59-9777-6dd500113ca9','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:17:20','<p>Revenue per employee is a measure of how efficiently a particular company utilizes its employees. In general, relatively high revenue per employee is a positive sign that suggests the company is finding ways to squeeze out more sales (revenue) out of each of its employees.</p>','C',1,'<p>As below</p>','8797acba-79d4-439b-9f23-127e4877996c','<p>DCL will have to achieve &gt;= Nu. 2.62 million Revenue per employee.</p>','<p>Shall be addressed and considered during evaluation</p>',NULL,NULL),('acbb77d9-cc63-41f8-a84a-0e5e2b61adcf','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:20:08','<p>CASK represents how much it costs (with fuel) to fly one available seat (empty or filled) per Kilometer. It will be calculated as: total operating expenses (with fuel) divided by the total ASK. Operating costs exclude all finance costs.</p>','C',3,'<p>Full points shall be awarded if the achievement is 100% of the set target or less. For any CASK more than the set target, no point shall be awarded.&nbsp;</p>','c718a94c-76bd-4984-b78a-67b25be1940f','<p>Target for CASK with fuel is set at Nu. 11.69</p>','<p>Due to the uncertainty of ATF rates, the fluctuation of ATF rates during the year against the budgeted ATF rates shall be considered.</p>',NULL,NULL),('cba847c3-7b20-4680-9b63-b06607f841e4','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:21:27','<p>CASK represents how much it costs (without fuel) to fly one available seat (empty or filled) per Kilometre. It will be calculated as; total operating expenses (without fuel) divided by the total ASK. Operating costs exclude all finance costs. CASK has increased substantially as mentioned above.</p>','C',3,'<p>Full points shall be awarded if the achievement is 100% of the set target or less. For any CASK more than the set target, no point shall be awarded.&nbsp;</p>','0b481c3c-cd9d-4127-b712-a5ee47aec45f','<p>Target for CASK without fuel is set at Nu. 10.71</p>','<p>Shall be addressed and considered during evaluation</p>',NULL,NULL),('d06a2aab-3ae5-447b-ac0b-828a05e57845','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 09:08:13','<p><br></p>','C',1,'<p><br></p>','d19d2530-8c86-443f-bfc0-3ce87915dd65','<p><br></p>','<p><br></p>',NULL,NULL),('e801ae32-9a73-46d3-98f9-7e3bff80bdd5','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:12:29','<p>Revenue achievement of the company is a major indicator of the performance of the company. The overall performance of the company can be almost entirely tied to its revenue generated.</p><p>Operating revenue sources are from the following:</p><p>i.	Passenger Revenue</p><p>ii.	Excess Baggage and Cargo Revenue</p><p>iii.	Insurance &amp; Fuel Surcharge</p><p>iv.	Chartered Sales</p><p>v.	RGoB grant, if applicable</p><p>vi. Other Operating Revenue</p>','C',2,'<p>As below</p>','a5a17896-ac10-48ce-a83b-e61ba6f6aa8f','<p>Target for passenger revenue is set at Nu. 1,293.10 million.</p>','<p>Shall be addressed and considered during evaluation</p>',NULL,NULL);

/*Table structure for table `tf_dhi_fin_target_writeup_a` */

DROP TABLE IF EXISTS `tf_dhi_fin_target_writeup_a`;

CREATE TABLE `tf_dhi_fin_target_writeup_a` (
  `writeupAuditId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `background` longtext DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `evalFormulaId` int(11) DEFAULT NULL,
  `evalMethod` longtext DEFAULT NULL,
  `targetAuditId` varchar(255) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `output` longtext DEFAULT NULL,
  `risks` longtext DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `writeupId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`writeupAuditId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_fin_target_writeup_a` */

insert  into `tf_dhi_fin_target_writeup_a`(`writeupAuditId`,`createdBy`,`createdDate`,`background`,`cmdFlag`,`evalFormulaId`,`evalMethod`,`targetAuditId`,`targetId`,`output`,`risks`,`updatedBy`,`updatedDate`,`writeupId`) values ('2f43c923-a1cb-4697-a08b-d844f907dfbb','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:18:42','<p>PRASK measures how much ticket revenue one available/allowable seat generates on average Kilometer flown. It will be calculated as: total passenger revenue (including insurance &amp; surcharge, chartered sales and RGoB grant for domestic operations, if any) divided by the total ASK (capacity available/allowable).&nbsp;</p>','C',2,'<p>Shall be addressed and considered during evaluation</p>','6d8a97f0-90f1-4599-9032-cffd1ace0245','a9c39fc6-d798-429f-9514-178ec3d898a0','<p>Target for PRASK is set at Nu. 4.74</p>','<p><br></p>',NULL,NULL,'07c145d9-7066-4fb5-af5b-6475e4a6c690'),('3ac024e9-6e8a-4f7e-8bcd-29273d85a6e7','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:25:10','<p>EBITDA per employee will throw a clear picture how much profit each employees earn. Thus an increasing trend of EBITDA per employee will be a good measure of company\'s growth in general. This also shows the efficiency of how a company utilizes its employees.&nbsp;</p>','C',1,'<p>As below</p>','82fc4dbe-55fe-4cbf-a5c1-dc265632cfb5','efd57b99-74a9-412b-82b5-a32a8d0c7b56','<p>Target for EBITDA per employee is set at Nu. 0.14 million</p>','<p>Shall be addressed and considered during evaluation</p>',NULL,NULL,'8987608e-b858-400d-9400-cf3f57510d18'),('435f6410-0f56-4502-9221-6b0b61a6dab3','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:20:08','<p>CASK represents how much it costs (with fuel) to fly one available seat (empty or filled) per Kilometer. It will be calculated as: total operating expenses (with fuel) divided by the total ASK. Operating costs exclude all finance costs.</p>','C',3,'<p>Full points shall be awarded if the achievement is 100% of the set target or less. For any CASK more than the set target, no point shall be awarded.&nbsp;</p>','2330d00b-72cb-4837-9985-7eb7b9db0f34','c718a94c-76bd-4984-b78a-67b25be1940f','<p>Target for CASK with fuel is set at Nu. 11.69</p>','<p>Due to the uncertainty of ATF rates, the fluctuation of ATF rates during the year against the budgeted ATF rates shall be considered.</p>',NULL,NULL,'acbb77d9-cc63-41f8-a84a-0e5e2b61adcf'),('513dec16-34dc-44bd-946a-32b42d373e4e','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:17:20','<p>Revenue per employee is a measure of how efficiently a particular company utilizes its employees. In general, relatively high revenue per employee is a positive sign that suggests the company is finding ways to squeeze out more sales (revenue) out of each of its employees.</p>','C',1,'<p>As below</p>','69989ac6-6462-480b-8b79-3342637624a6','8797acba-79d4-439b-9f23-127e4877996c','<p>DCL will have to achieve &gt;= Nu. 2.62 million Revenue per employee.</p>','<p>Shall be addressed and considered during evaluation</p>',NULL,NULL,'a93b605d-d5f6-4f59-9777-6dd500113ca9'),('52a4152c-a574-41d9-8b40-f0577d604308','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 09:08:13','<p><br></p>','C',1,'<p><br></p>','d4a9ed0f-fe10-4673-a009-88a45a16d40c','d19d2530-8c86-443f-bfc0-3ce87915dd65','<p><br></p>','<p><br></p>',NULL,NULL,'d06a2aab-3ae5-447b-ac0b-828a05e57845'),('d5de5255-6010-4410-9630-01e5209b65fe','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:23:36','<p>EBITDA or Earnings Before Interest, Taxes, Depreciation, and Amortization and is a metric used to evaluate a company\'s operating performance. It can be seen as a proxy for cash flow. In finance, the term is used to describe the amount of cash (currency) that is generated or consumed in a given time period as it eliminates the effects of financing and capital expenditures.</p><p>With the company in deep financial crisis projecting a negative PAT, this target is added to check on the actual earnings based on actual business operations during the year.</p>','C',1,'<p>As below</p>','0aba54fa-2bfe-49f0-902d-44745e35fd9c','58c4adf3-e653-4724-bd84-06f439c7ffa8','<p>Target for EBITDA is set at Nu. 68.06 million.</p>','<p>Shall be addressed and considered during evaluation</p>',NULL,NULL,'876ad020-974e-4444-8b23-c48da892867a'),('d860ae89-5e2c-498a-b566-a6d33be95271','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:12:29','<p>Revenue achievement of the company is a major indicator of the performance of the company. The overall performance of the company can be almost entirely tied to its revenue generated.</p><p>Operating revenue sources are from the following:</p><p>i.	Passenger Revenue</p><p>ii.	Excess Baggage and Cargo Revenue</p><p>iii.	Insurance &amp; Fuel Surcharge</p><p>iv.	Chartered Sales</p><p>v.	RGoB grant, if applicable</p><p>vi. Other Operating Revenue</p>','C',2,'<p>As below</p>','fa463e4b-94fb-4688-88d2-f2b6f679f701','a5a17896-ac10-48ce-a83b-e61ba6f6aa8f','<p>Target for passenger revenue is set at Nu. 1,293.10 million.</p>','<p>Shall be addressed and considered during evaluation</p>',NULL,NULL,'e801ae32-9a73-46d3-98f9-7e3bff80bdd5'),('dd5ec421-40f7-4b77-9941-88810faa94fd','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 03:21:27','<p>CASK represents how much it costs (without fuel) to fly one available seat (empty or filled) per Kilometre. It will be calculated as; total operating expenses (without fuel) divided by the total ASK. Operating costs exclude all finance costs. CASK has increased substantially as mentioned above.</p>','C',3,'<p>Full points shall be awarded if the achievement is 100% of the set target or less. For any CASK more than the set target, no point shall be awarded.&nbsp;</p>','4de1de20-77a9-47c6-b82a-b0849acf7816','0b481c3c-cd9d-4127-b712-a5ee47aec45f','<p>Target for CASK without fuel is set at Nu. 10.71</p>','<p>Shall be addressed and considered during evaluation</p>',NULL,NULL,'cba847c3-7b20-4680-9b63-b06607f841e4');

/*Table structure for table `tf_dhi_org_mgt_sub_target` */

DROP TABLE IF EXISTS `tf_dhi_org_mgt_sub_target`;

CREATE TABLE `tf_dhi_org_mgt_sub_target` (
  `subTargetId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `isNegative` char(1) DEFAULT NULL,
  `subTarget` longtext DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `weightage` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`subTargetId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_org_mgt_sub_target` */

insert  into `tf_dhi_org_mgt_sub_target`(`subTargetId`,`createdBy`,`createdDate`,`cmdFlag`,`deadline`,`isNegative`,`subTarget`,`targetId`,`updatedBy`,`updatedDate`,`weightage`) values ('a5000eff-3c32-4a1d-ba53-3de9b7de8e60','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:58','C','2022-04-12 18:00:00','N','1','7d6b0cd8-d5bb-415d-9d1f-7db5c58dbd2d',NULL,NULL,'3.00');

/*Table structure for table `tf_dhi_org_mgt_sub_target_a` */

DROP TABLE IF EXISTS `tf_dhi_org_mgt_sub_target_a`;

CREATE TABLE `tf_dhi_org_mgt_sub_target_a` (
  `subTargetAuditId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `isNegative` char(1) DEFAULT NULL,
  `subTarget` longtext DEFAULT NULL,
  `subTargetId` varchar(255) DEFAULT NULL,
  `targetAuditId` varchar(255) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `weightage` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`subTargetAuditId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_org_mgt_sub_target_a` */

insert  into `tf_dhi_org_mgt_sub_target_a`(`subTargetAuditId`,`createdBy`,`createdDate`,`cmdFlag`,`deadline`,`isNegative`,`subTarget`,`subTargetId`,`targetAuditId`,`targetId`,`updatedBy`,`updatedDate`,`weightage`) values ('fe1d2d21-47ba-4157-b053-5efd23e1a5bf','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:58','C','2022-04-12 18:00:00','N','1','a5000eff-3c32-4a1d-ba53-3de9b7de8e60','ce66aee5-3560-436b-bd89-f504a21294ba','7d6b0cd8-d5bb-415d-9d1f-7db5c58dbd2d',NULL,NULL,'3.00');

/*Table structure for table `tf_dhi_org_mgt_sub_target_doc` */

DROP TABLE IF EXISTS `tf_dhi_org_mgt_sub_target_doc`;

CREATE TABLE `tf_dhi_org_mgt_sub_target_doc` (
  `fileId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `fileExtension` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `fileSize` varchar(255) DEFAULT NULL,
  `fileUrl` varchar(255) DEFAULT NULL,
  `subTargetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_org_mgt_sub_target_doc` */

/*Table structure for table `tf_dhi_org_mgt_sub_target_reviewer_remark` */

DROP TABLE IF EXISTS `tf_dhi_org_mgt_sub_target_reviewer_remark`;

CREATE TABLE `tf_dhi_org_mgt_sub_target_reviewer_remark` (
  `remarkId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `remark` longtext DEFAULT NULL,
  `subTargetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`remarkId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_org_mgt_sub_target_reviewer_remark` */

/*Table structure for table `tf_dhi_org_mgt_target` */

DROP TABLE IF EXISTS `tf_dhi_org_mgt_target`;

CREATE TABLE `tf_dhi_org_mgt_target` (
  `targetId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `activity` longtext DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `companyId` varchar(255) DEFAULT NULL,
  `explanation` longtext DEFAULT NULL,
  `serialNo` int(11) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `versionNo` bigint(20) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`targetId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_org_mgt_target` */

insert  into `tf_dhi_org_mgt_target`(`targetId`,`createdBy`,`createdDate`,`activity`,`cmdFlag`,`companyId`,`explanation`,`serialNo`,`updatedBy`,`updatedDate`,`versionNo`,`year`) values ('7d6b0cd8-d5bb-415d-9d1f-7db5c58dbd2d','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:58','Org Mgt','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','E',1,NULL,NULL,1,'2022');

/*Table structure for table `tf_dhi_org_mgt_target_a` */

DROP TABLE IF EXISTS `tf_dhi_org_mgt_target_a`;

CREATE TABLE `tf_dhi_org_mgt_target_a` (
  `targetAuditId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `activity` longtext DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `companyId` varchar(255) DEFAULT NULL,
  `explanation` longtext DEFAULT NULL,
  `serialNo` int(11) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `versionNo` bigint(20) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`targetAuditId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_org_mgt_target_a` */

insert  into `tf_dhi_org_mgt_target_a`(`targetAuditId`,`createdBy`,`createdDate`,`activity`,`cmdFlag`,`companyId`,`explanation`,`serialNo`,`targetId`,`updatedBy`,`updatedDate`,`versionNo`,`year`) values ('ce66aee5-3560-436b-bd89-f504a21294ba','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:58','Org Mgt','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','E',1,'7d6b0cd8-d5bb-415d-9d1f-7db5c58dbd2d',NULL,NULL,1,'2022');

/*Table structure for table `tf_dhi_org_mgt_target_stage` */

DROP TABLE IF EXISTS `tf_dhi_org_mgt_target_stage`;

CREATE TABLE `tf_dhi_org_mgt_target_stage` (
  `stageId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `companyId` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_org_mgt_target_stage` */

insert  into `tf_dhi_org_mgt_target_stage`(`stageId`,`createdBy`,`createdDate`,`companyId`,`roleId`,`status`,`year`) values ('2ebe3bce-371a-496e-a7ca-cd440849592f','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 10:06:19','8e50d60c-f2a9-4316-a5fa-b56950f68bf2',3,'S','2022'),('fd693e5a-9bbd-40a7-b03d-61076a2f3c7f','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 10:06:56','8e50d60c-f2a9-4316-a5fa-b56950f68bf2',3,'A','2022');

/*Table structure for table `tf_dhi_org_mgt_target_stage_detail` */

DROP TABLE IF EXISTS `tf_dhi_org_mgt_target_stage_detail`;

CREATE TABLE `tf_dhi_org_mgt_target_stage_detail` (
  `stageDetailId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `stageId` varchar(255) DEFAULT NULL,
  `targetAuditId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stageDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_org_mgt_target_stage_detail` */

insert  into `tf_dhi_org_mgt_target_stage_detail`(`stageDetailId`,`createdBy`,`createdDate`,`stageId`,`targetAuditId`) values ('50c94341-4e00-4860-91bb-98e5530e363f','91e6d937-8f62-43c6-9e96-c96d35362917','2022-04-06 10:06:56','fd693e5a-9bbd-40a7-b03d-61076a2f3c7f','ce66aee5-3560-436b-bd89-f504a21294ba'),('dd05ed72-bbe0-4f3d-909f-0ca0c5d29ce0','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 10:06:19','2ebe3bce-371a-496e-a7ca-cd440849592f','ce66aee5-3560-436b-bd89-f504a21294ba');

/*Table structure for table `tf_dhi_org_mgt_target_status` */

DROP TABLE IF EXISTS `tf_dhi_org_mgt_target_status`;

CREATE TABLE `tf_dhi_org_mgt_target_status` (
  `statusId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `statusFlag` char(1) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_org_mgt_target_status` */

insert  into `tf_dhi_org_mgt_target_status`(`statusId`,`createdBy`,`createdDate`,`statusFlag`,`targetId`) values ('c34ea7c2-0d9a-44ae-b730-202e88056825','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:58','C','7d6b0cd8-d5bb-415d-9d1f-7db5c58dbd2d');

/*Table structure for table `tf_dhi_org_mgt_target_writeup` */

DROP TABLE IF EXISTS `tf_dhi_org_mgt_target_writeup`;

CREATE TABLE `tf_dhi_org_mgt_target_writeup` (
  `writeupId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `background` longtext DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `evalFormulaId` int(11) DEFAULT NULL,
  `evalMethod` longtext DEFAULT NULL,
  `isProratable` char(1) DEFAULT NULL,
  `output` longtext DEFAULT NULL,
  `risks` longtext DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`writeupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_org_mgt_target_writeup` */

insert  into `tf_dhi_org_mgt_target_writeup`(`writeupId`,`createdBy`,`createdDate`,`background`,`cmdFlag`,`evalFormulaId`,`evalMethod`,`isProratable`,`output`,`risks`,`targetId`,`updatedBy`,`updatedDate`) values ('23f7ceee-10f0-4aff-99fe-9b0f9e3f7cdd','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:58','<p><br></p>','C',1,'<p><br></p>','Y','<p><br></p>','<p><br></p>','7d6b0cd8-d5bb-415d-9d1f-7db5c58dbd2d',NULL,NULL);

/*Table structure for table `tf_dhi_org_mgt_target_writeup_a` */

DROP TABLE IF EXISTS `tf_dhi_org_mgt_target_writeup_a`;

CREATE TABLE `tf_dhi_org_mgt_target_writeup_a` (
  `writeupAuditId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `background` longtext DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `evalFormulaId` int(11) DEFAULT NULL,
  `evalMethod` longtext DEFAULT NULL,
  `isProratable` char(1) DEFAULT NULL,
  `output` longtext DEFAULT NULL,
  `risks` longtext DEFAULT NULL,
  `targetAuditId` varchar(255) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `writeupId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`writeupAuditId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_org_mgt_target_writeup_a` */

insert  into `tf_dhi_org_mgt_target_writeup_a`(`writeupAuditId`,`createdBy`,`createdDate`,`background`,`cmdFlag`,`evalFormulaId`,`evalMethod`,`isProratable`,`output`,`risks`,`targetAuditId`,`targetId`,`updatedBy`,`updatedDate`,`writeupId`) values ('4a46b5b2-7e52-4b82-95c2-327342ea9047','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:14:58','<p><br></p>','C',1,'<p><br></p>','Y','<p><br></p>','<p><br></p>','ce66aee5-3560-436b-bd89-f504a21294ba','7d6b0cd8-d5bb-415d-9d1f-7db5c58dbd2d',NULL,NULL,'23f7ceee-10f0-4aff-99fe-9b0f9e3f7cdd');

/*Table structure for table `tf_dhi_prod_sale_sub_target` */

DROP TABLE IF EXISTS `tf_dhi_prod_sale_sub_target`;

CREATE TABLE `tf_dhi_prod_sale_sub_target` (
  `subTargetId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `curYearTarget` decimal(19,2) DEFAULT NULL,
  `preYearActual` decimal(19,2) DEFAULT NULL,
  `preYearTarget` decimal(19,2) DEFAULT NULL,
  `subTarget` varchar(255) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `weightage` decimal(19,2) DEFAULT NULL,
  `curYearDhiProposal` decimal(19,2) DEFAULT NULL,
  `explanation` longtext DEFAULT NULL,
  PRIMARY KEY (`subTargetId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_prod_sale_sub_target` */

insert  into `tf_dhi_prod_sale_sub_target`(`subTargetId`,`createdBy`,`createdDate`,`cmdFlag`,`curYearTarget`,`preYearActual`,`preYearTarget`,`subTarget`,`targetId`,`uom`,`updatedBy`,`updatedDate`,`weightage`,`curYearDhiProposal`,`explanation`) values ('c06517d2-281d-4b49-956d-655f04516f4a','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:15:32','C','23.00','421.00','23.00','S1','a79f16e4-d493-4d92-a2ce-3e4f12104093','CM',NULL,NULL,'2.00',NULL,'asd');

/*Table structure for table `tf_dhi_prod_sale_sub_target_a` */

DROP TABLE IF EXISTS `tf_dhi_prod_sale_sub_target_a`;

CREATE TABLE `tf_dhi_prod_sale_sub_target_a` (
  `subTargetAuditId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `curYearTarget` decimal(19,2) DEFAULT NULL,
  `preYearActual` decimal(19,2) DEFAULT NULL,
  `preYearTarget` decimal(19,2) DEFAULT NULL,
  `subTarget` varchar(255) DEFAULT NULL,
  `subTargetId` varchar(255) DEFAULT NULL,
  `targetAuditId` varchar(255) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `weightage` decimal(19,2) DEFAULT NULL,
  `curYearDhiProposal` decimal(19,2) DEFAULT NULL,
  `explanation` longtext DEFAULT NULL,
  PRIMARY KEY (`subTargetAuditId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_prod_sale_sub_target_a` */

insert  into `tf_dhi_prod_sale_sub_target_a`(`subTargetAuditId`,`createdBy`,`createdDate`,`cmdFlag`,`curYearTarget`,`preYearActual`,`preYearTarget`,`subTarget`,`subTargetId`,`targetAuditId`,`targetId`,`uom`,`updatedBy`,`updatedDate`,`weightage`,`curYearDhiProposal`,`explanation`) values ('6f041490-12cd-43a5-b5c8-64d6e536cd28','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:15:32','C','23.00','421.00','23.00','S1','c06517d2-281d-4b49-956d-655f04516f4a','94b7fd57-a7d3-451c-b1e2-871cb166b54a','a79f16e4-d493-4d92-a2ce-3e4f12104093','CM',NULL,NULL,'2.00',NULL,'asd');

/*Table structure for table `tf_dhi_prod_sale_sub_target_doc` */

DROP TABLE IF EXISTS `tf_dhi_prod_sale_sub_target_doc`;

CREATE TABLE `tf_dhi_prod_sale_sub_target_doc` (
  `fileId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `fileExtension` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `fileSize` varchar(255) DEFAULT NULL,
  `fileUrl` varchar(255) DEFAULT NULL,
  `subTargetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_prod_sale_sub_target_doc` */

/*Table structure for table `tf_dhi_prod_sale_sub_target_reviewer_remark` */

DROP TABLE IF EXISTS `tf_dhi_prod_sale_sub_target_reviewer_remark`;

CREATE TABLE `tf_dhi_prod_sale_sub_target_reviewer_remark` (
  `remarkId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `subTargetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`remarkId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_prod_sale_sub_target_reviewer_remark` */

/*Table structure for table `tf_dhi_prod_sale_target` */

DROP TABLE IF EXISTS `tf_dhi_prod_sale_target`;

CREATE TABLE `tf_dhi_prod_sale_target` (
  `targetId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `companyId` varchar(255) DEFAULT NULL,
  `particular` varchar(255) DEFAULT NULL,
  `serialNo` int(11) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `versionNo` bigint(20) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`targetId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_prod_sale_target` */

insert  into `tf_dhi_prod_sale_target`(`targetId`,`createdBy`,`createdDate`,`cmdFlag`,`companyId`,`particular`,`serialNo`,`updatedBy`,`updatedDate`,`versionNo`,`year`) values ('a79f16e4-d493-4d92-a2ce-3e4f12104093','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:15:32','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','Prod Sale',1,NULL,NULL,1,'2022');

/*Table structure for table `tf_dhi_prod_sale_target_a` */

DROP TABLE IF EXISTS `tf_dhi_prod_sale_target_a`;

CREATE TABLE `tf_dhi_prod_sale_target_a` (
  `targetAuditId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `companyId` varchar(255) DEFAULT NULL,
  `particular` varchar(255) DEFAULT NULL,
  `serialNo` int(11) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `versionNo` bigint(20) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `explanation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`targetAuditId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_prod_sale_target_a` */

insert  into `tf_dhi_prod_sale_target_a`(`targetAuditId`,`createdBy`,`createdDate`,`cmdFlag`,`companyId`,`particular`,`serialNo`,`targetId`,`updatedBy`,`updatedDate`,`versionNo`,`year`,`explanation`) values ('94b7fd57-a7d3-451c-b1e2-871cb166b54a','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:15:32','C','8e50d60c-f2a9-4316-a5fa-b56950f68bf2','Prod Sale',1,'a79f16e4-d493-4d92-a2ce-3e4f12104093',NULL,NULL,1,'2022',NULL);

/*Table structure for table `tf_dhi_prod_sale_target_stage` */

DROP TABLE IF EXISTS `tf_dhi_prod_sale_target_stage`;

CREATE TABLE `tf_dhi_prod_sale_target_stage` (
  `stageId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `companyId` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_prod_sale_target_stage` */

/*Table structure for table `tf_dhi_prod_sale_target_stage_detail` */

DROP TABLE IF EXISTS `tf_dhi_prod_sale_target_stage_detail`;

CREATE TABLE `tf_dhi_prod_sale_target_stage_detail` (
  `stageDetailId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `stageId` varchar(255) DEFAULT NULL,
  `targetAuditId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stageDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_prod_sale_target_stage_detail` */

/*Table structure for table `tf_dhi_prod_sale_target_status` */

DROP TABLE IF EXISTS `tf_dhi_prod_sale_target_status`;

CREATE TABLE `tf_dhi_prod_sale_target_status` (
  `statusId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `statusFlag` char(1) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_prod_sale_target_status` */

insert  into `tf_dhi_prod_sale_target_status`(`statusId`,`createdBy`,`createdDate`,`statusFlag`,`targetId`) values ('8d49e17a-75fe-40d7-a18e-48d64d05c773','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:15:32','C','a79f16e4-d493-4d92-a2ce-3e4f12104093'),('9742d368-cff3-419d-9a8d-e9ba674b7a07','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:54:23','X','a79f16e4-d493-4d92-a2ce-3e4f12104093');

/*Table structure for table `tf_dhi_prod_sale_target_writeup` */

DROP TABLE IF EXISTS `tf_dhi_prod_sale_target_writeup`;

CREATE TABLE `tf_dhi_prod_sale_target_writeup` (
  `writeupId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `evalFormulaId` int(11) DEFAULT NULL,
  `evalMethod` varchar(255) DEFAULT NULL,
  `output` varchar(255) DEFAULT NULL,
  `risks` varchar(255) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`writeupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_prod_sale_target_writeup` */

insert  into `tf_dhi_prod_sale_target_writeup`(`writeupId`,`createdBy`,`createdDate`,`background`,`cmdFlag`,`evalFormulaId`,`evalMethod`,`output`,`risks`,`targetId`,`updatedBy`,`updatedDate`) values ('d21ddff3-0f51-4a09-88e3-03fbded68a2f','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:15:32','<p><br></p>','C',1,'<p><br></p>','<p><br></p>','<p><br></p>','a79f16e4-d493-4d92-a2ce-3e4f12104093',NULL,NULL);

/*Table structure for table `tf_dhi_prod_sale_target_writeup_a` */

DROP TABLE IF EXISTS `tf_dhi_prod_sale_target_writeup_a`;

CREATE TABLE `tf_dhi_prod_sale_target_writeup_a` (
  `writeupAuditId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `cmdFlag` char(1) DEFAULT NULL,
  `evalFormulaId` int(11) DEFAULT NULL,
  `evalMethod` varchar(255) DEFAULT NULL,
  `output` varchar(255) DEFAULT NULL,
  `risks` varchar(255) DEFAULT NULL,
  `targetAuditId` varchar(255) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `writeupId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`writeupAuditId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_dhi_prod_sale_target_writeup_a` */

insert  into `tf_dhi_prod_sale_target_writeup_a`(`writeupAuditId`,`createdBy`,`createdDate`,`background`,`cmdFlag`,`evalFormulaId`,`evalMethod`,`output`,`risks`,`targetAuditId`,`targetId`,`updatedBy`,`updatedDate`,`writeupId`) values ('4d6bf9b7-4316-45ec-9c71-d9ab60ec1632','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:15:32','<p><br></p>','C',1,'<p><br></p>','<p><br></p>','<p><br></p>','94b7fd57-a7d3-451c-b1e2-871cb166b54a','a79f16e4-d493-4d92-a2ce-3e4f12104093',NULL,NULL,'d21ddff3-0f51-4a09-88e3-03fbded68a2f');

/*Table structure for table `tf_fin_target_comment` */

DROP TABLE IF EXISTS `tf_fin_target_comment`;

CREATE TABLE `tf_fin_target_comment` (
  `commentId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`commentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_fin_target_comment` */

insert  into `tf_fin_target_comment`(`commentId`,`createdBy`,`createdDate`,`comments`,`targetId`,`updatedBy`,`updatedDate`) values ('595a6a2b-c843-4ebd-8fe8-445ef4adca3d','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 12:33:39','<p>System Testing</p>','a5a17896-ac10-48ce-a83b-e61ba6f6aa8f',NULL,NULL),('c1139719-8e65-4001-bf04-d51b89125093','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-06 12:34:03','<p>Noted la</p>','a5a17896-ac10-48ce-a83b-e61ba6f6aa8f',NULL,NULL),('c3e8e381-caaf-45e0-9447-cf615841a905','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:03:44','<p>okay</p>','a5a17896-ac10-48ce-a83b-e61ba6f6aa8f',NULL,NULL);

/*Table structure for table `tf_org_mgt_target_comment` */

DROP TABLE IF EXISTS `tf_org_mgt_target_comment`;

CREATE TABLE `tf_org_mgt_target_comment` (
  `commentId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`commentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_org_mgt_target_comment` */

/*Table structure for table `tf_prod_sale_target_comment` */

DROP TABLE IF EXISTS `tf_prod_sale_target_comment`;

CREATE TABLE `tf_prod_sale_target_comment` (
  `commentId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`commentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tf_prod_sale_target_comment` */

insert  into `tf_prod_sale_target_comment`(`commentId`,`createdBy`,`createdDate`,`comments`,`targetId`,`updatedBy`,`updatedDate`) values ('04779e48-678f-4f88-a27e-03f1e01e59bd','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-06 08:53:48','<p>fasdfa</p>','a79f16e4-d493-4d92-a2ce-3e4f12104093',NULL,NULL);

/* Procedure structure for procedure `USP_GET_EVAL_SCORE` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_GET_EVAL_SCORE` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_GET_EVAL_SCORE`(p_year varchar(4), p_companyId varchar(255))
BEGIN
	#drop temp table if exists
	drop temporary table if exists temp_score; 
	#create temp tables	
	create temporary table temp_score(year varchar(4), score decimal(18,2));
	#insert into temp tables
	insert into temp_score set year = '2020', score ='89.78'; 
	insert into temp_score set year = '2021', score ='95'; 
	insert into temp_score set year = '2022', score ='78'; 
	select * from temp_score;
	drop temporary table if exists temp_score; 
	
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
