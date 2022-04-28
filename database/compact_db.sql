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

insert  into `md_company`(`companyId`,`createdBy`,`createdDate`,`cmdFlag`,`companyName`,`isParentCompany`,`logo`,`logoExtension`,`logoName`,`shortName`,`status`,`updatedBy`,`updatedDate`) values ('0fce1201-3b20-4dc7-922e-9c6bb76b608f','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-01 05:05:18','C','Bank of Bhutan','N','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0�X��\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0%\0\0%IR$�\0\0d�IDATx^�`���ǿ��#���R:Q1�������OI�L@@A���܈1b�����|�}�X�����~�e�y��<�s��6�\0+V���V�iŊXĊ3X�\n\n\n�߬�װ�A*����X��b�ٵyy�hҴ)���n]��WX�/`UL�:����=�Ç!%%��1���x����pwׯ��oƪ e�:e\n�L���{��������)X�h��)�OEKi��͝���p�.+�V�\nR���l����I)��9��1�1prvB`P ���K<��s�sp��?�b����UV��X+�%�������h٬��.�����r3N�:����X��_��!�0r�5���OT��\'vo	���y���1��kEN!�B.H����Q�L��ڷׯ�r�n=\Z���x�א���=z�AJ+�.�.V\r9q��J�%44���\0��\r�������s8{�,������6<\\���WPX[t��I]�����\'O��p�_]W�sO**,���ڶm����>��gΈ{�;K��{ʇ�������pqvA~~>���V\\�޶m���H+2ޤ0ޯ�+�3.�Y٘9s&�<=1h�`� 77G��@ŗϭW�bccq��i��]�lU���%(�tb�t��A5�9���XR���r*+3�!�h�X��qR�;-=]�/)**R�kҤ	���T���;v�g2��ڷ����q!��Jw4o�\\�����طw�]���\r����%�T+�ТExxz`�޽(d��A�U�kaA!ڶk����,ϸ����{��pssC||<{{x{{�iӦ���\n�� o���m�&(�_\"C=��<ܕT�k.�;�;�܍�_~Y}��?��7��\rR����#?/O�,�(\Z���\\]]U�������F`�������Wƿ�]�w���We:��y2��P	-����)�}��A�â?\" 0\0O��N�;!1!��w@D�&J��`�(|T�(���n�*�$-5U5����yםh\Z�D�톙�g��q�����,��80N٢��I��~����S��_}���C��g�<3�i�T��4d�e(A+�<�0�\0�\"�?H\\�h%ٵs�jl8$qIMK�or������ި1��㢀��u&>��؈������㣏>R��Ez�71��T��v˭8{^)J�H\"�8���Ҹ\"A�8/7�>>pq��HIS\n���?����k�K^�֐��*�+S=�$L�����������x�7p����?` >��1���q�=cp,2Rd&���û������`���g�r3a��ك�W��=c�)��ێm۱n�:��U	�أ���W�D�;w�g\'\',_�L5�=��T�Ke���#V�X���<I�Q�nT�>�2�E��º��\"i���C�$43O�.W2�?CBB��w��R��c�w��G�}C=��?�D����u���D\'U��N�4�w~�(��F^���|��/<��E�,X\0��šW�^R_I��(�t��>��a�m�*���.**��d��aC��8J:t��U�s-v�ڍAa�ȑ���ƵU�Vhݺ�b�%��wޅ��8�w��t-\nŨ���W)�ΫtZ�v�����B��g�#.>9\"h�\Z�����)S��]�v�wr�7���R%���ܣ�q����_�a�ҥx��1Z�|9�=���E�x~\r~��232q�-7�E˖�F2�,��\\7�\Z��Z�j�f͛c˖͸�;�r�\'�c���hѪ���z�*+�B2�Z���zu�9�9h۷o�D��3�$!��͚k�Z��&M����4�����7ެ5�h��<qR�Mx�x���(�u�VZ떭���A5�o�>mؐ�ZXH��k�&\n��0j/�I���yx����h?����B�ұ}�g�Zzz�z��C�5ID�;�R\"j��>Z�>}�ݻw�犒j];w�B����|��OJ=��w�Ӥ��\"�õ��}O�U�Y�t��id��5Z�N]�a���S��4׮�;�7��R��� �h�͙3G�ш1�J&�#�D��&m䈑Zttt�g0N�@�>��C=���ի��ʹ��kѧ��PM;z��&FR����_�z�!Z��-TxI�;���j�}����4�_/L�Ю��d�=T����E��*�����w������T혼7/����{�֤q�6|�5ڡ���ЪQm�E���A۶}�R1���֨AC%�%ٴq�^��<c�R1�ڴ�\n�fΜ�����o�@_M��b@|f���W{�G�����L6t�&�R-�O>�5�8��o=����}��xzk�}�\"�j�ֶu-$0X�2yJqƖ$KL,�R0*FU9)������IzH�ټe�ʇ�~�Q)MTT�&�����!���;u�E�MB2o�\\Q�Pm�M7�!����ړ�=��e��Q\n���0*m�x��2k�,���S5�zM�KzhըV?�h#������*ܕ���\\oo=����лo��b�H|�OS�zLfV�b ]��Q7݈�C˻$�/��!���tTrb�}	�йk7�)����\'5��C��mc�>� _=��s�d,��|P�W[�n��~8r�2$�dM��;�����R�2%�b����8|��R\Z����C�n��t!�6i���\n�<���a���РQC=��N��H	���>����V�r�r�`��,u��t�٨����򫤛e)N��1��T�j)���|V�ŧ��.?�n~�勗(�����ׯ0��\'O�>�~�->��G�2i\n~�7�׭W�(PF�v�<����d6>k�M��\nYvN�\ng��h�L���q��ܱ�*sP��\n\Z�����N�,�\0_�r�J�#X������2B�z��\r8s�^{�U4o�W���:�M�V�u���X*��7mVuS0=���?�ѱ��G��1<��s� �L��cǎ׍L������jPٱ}�\n%�\'���/?��[Fߢ����)��=�M��ቢy���JB�1lgbN���AIO����M�@�nl����@����?�!���~��Qx�\' �+�e�ٳgյ����oP��醢Z�����K��EU,_{�U���8ad6n܈9�~CBb�j�IJJ��\"�?��^={��ȴ)S�j�*���a�d�8�R��S�.R�n.��.]�`��!���U����S���\n����}�ʕ�Y��W֊��M���)�T�}�R���9e�7�~��R�ݎ���y�&�#GࡇFG)1ג8;9��a�p#;�o�d�����|�`�4��u�Tz332pH�ӭA��q��c�؇US����;٠A�l#q���-a��4��ÏP�A�\nw͈��߯���5F\ZGD�ͱG���Çе[W�]�/����v��\r/<�<�>}�Wl���U�f�O��������!P\r�_�풖{v���AP`z�s�y�4l�P5H����?��E:�����J\'6C�]�F���J�={ছn���oU�n���)�P�T�j)H�$�Ò�/��� #��\Z������D��a*�.�]��|슥�1|������z��8Q�jh-�T��+�������/	��`��ո�8?��KAQ�jj�XYF��̚9�֮������}-%����+�q`Kث�����V0�BR�ǖM[�(z�&��\Z\'ggxz���DQ�����xͤD���k롄�-`��{�a��c�(��_}�8��	~P�Յ��-D�]\\��$��\n��e�fO>�4��ۥtx��g���#byG^;\\T_�ս�����IJR�n�Z�c,.��ĉ-���ǜ9s0x�`���*�M\"� �0�B�¾�ܢ|4k�L�*y�dK����8oټ?̘�Z�n��v��F��X�1t�v���Jq��w�;���ݳg�ܿE�J�>��s�Ϧ\"��C�`\'n��IŪ]	b1�ͽc��>�6M�K�֭[�����ڮ�;�#Gk�&i�|��jy		�ƿ�N�K�����Ĝ֤TФ�҂�ޡ��h�j�~k����d+����(m��/j�ڶծ��K��Ú���YM��8��iï������s���6mڤ���fm@��Z�V�����R?k�믿�|��>y��RϨ�[��렽��+�(,���`������{�}3��\r2L���R\r$%ٵk��|�2�/M*��ō\n���رc����ϵ!��h�Z�դt�N����Ls�����?~\\1�,�L{r::Z���m�k]:uV-��.R�O�y��m�q[�~����/k�^�սzi�X���def���׌�b���U�F\n��0\n�M��l͚5����־m�R	h��`3�)�j\"VM�u�h-40�XA��L�;g����]��*����1|�I1�`�G��_�j`Z��6����A�o푱c�A��������=��6m�TM�wVL�?�P�����t����	��O>�Z4i&�?Is�s��\r�ϖ���t�4~���׆�F�pu�̯�1໶o�&\n<X�ٽ�&u(�Li�͛6ծ:�Q���t�R���<�����F��$<�����?��3�칳�U��3f����Z��hII�8�8\'ڠ�6��?h�?�T��\0�<\Z7�>���j+�������yyxj{���C5����4��g/��/��8�ۻO�=ImE�����T6���3��-�C���fΗE�_��r�r=�j0./�W��}�,�h��t0�RW���\r\Z6P��q*A}��������|TE�������X�w�͞=���\nR��ۻO���7lК�Gh����~����;�*����z�EXR�T��&�\"���%˴ƍ�U\Z��h͚4����Rj®���Ls�����./,aMy ���}�i�{����T������޻�ZK~t�TԎ#)-�ɉ�M�á���r�*̚3���:�\n�p�=�bP�A�B+ʣ\0֔v�I��|SoU�@E�앬�W���_�Z��͝��\\���?�����a����%-���|nN.f�6SU^?��s������C��(<0�>��o1G�.������]����a>l�*8�&�|YK#)�)�rX��,1�\\u��ԅ7l�}��7����X���:�?]{%�c=�v��y��\Z� ��T����*�1�����Fi�֮3XS)���Ɠ���k;w��C���bhό{Z�S.kOzM���������{�=lܰQ--��1c��_�p�����G\'À��7���͜NN(��G�R8���&;]��݌������[n�o����(!��y�\n7�0\n��n�	�������0fS}u�G�e˖j�*�?�L���\0��\"���a\'Փ�TCJ�O�R}+5���Y��M8��[�,�o�\rDZj�\Z�R/��i�|\"���|�5ƿ�\ZZ�ҋ�U/��\'�R�o����/���14��T�?� �вU+����pp��Ox��17RYUC3~�9�.�m7ߊw�z[����Y��W��DM�Q����M\"�\'q��1r�\r�㋯�ěﾥz�9���/�T+�p�{�9��e�F��?���}��8:i�;tV�c�?q\\\ru<p���Oj��Zf�����Nׯ�\Z˖,�\Z��U��U]��3F��w��FͼFRRST݂;U��P�P;p��\ZR~:��j5��2k�,-�q�w!N�\Z�H	b�{�[wn�;�����_\r�h�(�l��+1m�4,^�[�oU-Q+�J&&�Jb	�!A�����,AX*�B)��i��Z�_�V;�x\\L�M�6�ر#�7����k���Ԩe�QҮm;lܺ�����hߦ���rnW��\r�,�(vw��\n�:�zUjgg������l�_�j�1�f~_Q\nB��R5�p������?��^=z�q�`���ذ~�j۹c��95�ʈvp�|m�\"6���\\�����s#8�J�	�W׍���V�+r],\n��!���W�\'�9۷nż9��(ΣG�⡇R%Mu�1�h��#F�Z�IJHT��9j�M�5E�!hа��^`�z���I>W����_��0i�Zʅ�;mZ�QC�k\'=U��1]A*Fm(a�=�\'��u�\Z��qV��ካ�X�r%aU+V�`U+V�`U+V�`U+V�`U+V�`U+V�`U+V�`�(��p���|K����=�E@j~�ml��`�nv6�s�C��3�;���� ���rcU�KL~A!v�fc�����Ŗ�Bd�Bp��BIy�|}��i�Y����=V������`gk�#Zs}�#:�ڣG�;��r�]m��R��\\N��aut\n>=������B����K�\0��,)�\\ʮ@�a�g\ZR23�1�����V<J���\\\0�IIC�\nv�:bLko�\rt��K��Y1�UAjI³�X��U19X[��\"��]l���22��\Z�%�F�o�&^����[��3�u�	�~A�L9Q\nC6���u��s���W�6�\r\r�qc3/��v��C�P��cU�\Z��XR.������+E���-��!%�\rʊxI��$tv���-zڧ�)#?��,�<�����\ZI�daLN¤����z�g����VjF9�q�����.5ơ���V_��q��]��rr*%3�g`�tN-��T��Ņ�L�Yj���D1�Q(.������ǀP��[�ea��DJ���!Y7$�	�z`D�G�\r�7ETT�\"��;x)��iB��+�8�v�̸WտD�S�O?��M���Ju�M���۫5��w����4m��:�}��� W��h���i�q4)�R��@1�IRj��9���S^	�8X䌭\n��O\')vji&�rݤ�B�nX}7<��C�)n����믾�W_~iXg�6�Ѧ�p{����w��f���tQ[C�&�䓩�Ԓ���t�`8s����9A�kaqW�>����;���xm_\n�_�K]?��\n�(G�X�`G�쒈��p$�q.R��5Y\Z���$�rx�����^x��z�]!�&F_|��J�KYR��(/<�N�;��pO��:஻�VK���d��O��_���9��x�/�M��s�]�܍^|A�����4��+	��yI�al~��T*��3�w������]�nW��R&+n���Z248�s\Z�9a�`8�b%�������~�n�)(/��Y(�q�߃\r��ɓ�+�O�*_>�.�\n�ˉ�,Q���7_�@�\0��yqo��C>���7�#;�>Rר�r������6&;mB���jR9��,�mh�J>ݥ�����A�y���l���E���BW�\"��d�x��?��WU��S&�\0~��9��Ѩq#��/����k���|ܼ�^ݓ\ne���gS�D�Ýr�����Y~�����[\Z�x:�r�SM��ƽ�l\r�EA{V65��7��i�<3%�g�]0(/\\Q�QD8y�!�r��f775�� %�Ƿl����\r=�`��k��iy�k�Y�u.-ݥMŨ�r�\0>N�h㔇c)���)]r�\0����=�u��,�kT���������^C�S��(	�q[1uO<\nkA��Th\\�7���[p�M�����˩S\nB�$\\[�j���8w�~��8���{V��Ƅ4q�Cu�К���\Zl��Y���2nUY�lDX��pе!��4�c;sp!=���#���j����xJ*���O��}	��U��a��#2*\nO>��*�*�9!��شq�jqˮ�\"֦H���ݫ�c{r\Z�H9��M!�����2�2�`LErB\"|��s�֜�µa��[�sVu>��(W{L%��#�p�_\n+���j��	�7A�7f)�� ���9j��kc�>o��^������Bܷ!�D9\Z:��F��,�hquL	)+�R�W�#��fW���|�9V����z\Z�g�#5���\r����T�~�ø�����EI�ڗ�?�\\:w�,�d���&0ς���n�Z|��zh�T���=�-���Yj��f˃�߃͹4mU���z��9���h�<����9��ʂ7����v\n������Nؚ��Ř>T�����p�\r25{�E�O��G�K�F}G���\nL�\"\\�Ds��oIn�*��9���n���ِ�N9�\r<�lM����k��Yr���~�.ZX�������{U�c�{)+<؉�w����ظ����ŋ��E�zh�T[AxW\'���쳨JD�\\�\Z����vBbї���@�jm�{�}����Ru&��G�Ue�GY� lɺ�[\\�XO�������c�k\Z���#:�I�t�5��+�G\'m���T�U���Ma�h吆9�npuV��;ea��θaU\Z�����.�C�as�8��m\0g��ƌߑ�RH�K�z�Q���TEA���pםwUK^��,�?}*Z-={��Y�����Ku	X�<>���p��Y���C+�F\n��]��ۧ6��	����hL�t:���z6���e	��[%lܴQ-V\\U��L�C��96p��a�R�H�k�m�޾$����`���������s\Z�epТ���!n��E*���\'As���a��sχa\Z�&����E����w�����1h�Z�� �%�������CX�!u��kU�Eh��?G���ֲN?K�y�{�n���!Շ#.��2���S�l�\"�?{A!AjȒ%P��}k֭C����P�T5�J�R /�����\"\"\"0i�$<|H�K���XBY��Ξ]�E(˱�,��796�@9OŊ\0e������#w�%ߣ2���*R��s����\\л�/��,U\r>�A^���E���pu+~/ݢ���q��]L���Z\'�\"�M.T�2����hj��~��#Ձ�����{�-l߹o���c{o^�}S���K=�bj� ĒU~��o���&NTu����L�0\\�{��ez�eJ���c�L��h���9WI�s����%���W��F������J���i�jib��硉�\rZ�U^�.	��*�C��T,;�����8�]�;#\\�0V�W �t��x��H��\\c�ݴ��?Ngb}L��mg�~x,>������%2���uk�U��\\c�T�1O�{\n���s���嫊����g31#2\r�����\0�����h뜋dt�L򜟔�k�碅�#l�:�5w�b$\'���s�/��D�8p��~���.�\'K�8q.Y������@)5\\Rb�ױL�N����	�I����fAc\n]�$Q����#-�ҏV�-���K/�,uO��}�bQV��ޣ���Ur�w�GϞY����\n�=�<Y�.}w4�E�]���D8�V���N����9��W��<;��r,V 	V��J\'�c�o.�#^J��J~˹�\"8Ki�P;�=������\'@���]���+V�>����r��kD���b�������^�,\n��\\�`)b�]W}��ŀ�-npsw��͛��LsE+�v�lֳ�*�,S���0?&��FX�`©r�Ss�K�/��5�\07��B��bx]�����x�f\'�[uA��]�\nm�)�:S>1]~gS�=-|q��9lٽKr���,E���R�4�tBӴ(lul{���g�8}��G6�JV�<���H�95iYt�3�N)B��;F5X����oJJ���i�xa����Q��bp�����z�y��O��H�Թ������|�n�cY�eJ�k��O�aJ{{�(��]�%����X~��p��2�x4��ؠt����\Z���D�t����w���k�N��Z��˦{�২Ld��]%��\np�ݹ���6yMEP�<%�+.�a�Y������ƍ�W꣖� t��.�Ep�+���\\٬i��%�� _��bv�f`��x�W��v��b�mllqs�c97��ځT\r����n{O\\���M^�c�$���Y�#>�����cʎ3�r,��@�o+:x���[��`���[r��V{A���b���8�*���s0�x�T�-k�-�|���-�8��t���C���Z�JIL�X�����Q5*����q�p-?��xOK����i��0�Ԝ\ry���L�ྲྀ����x�Qə�N�H�\"�i��p�	�kH8�B\Z�ͯr�;G�3�{xȑ+��]��`{t6����K^WZA��\\)=�o���cQ��	��	%�γ__��jo�����\n��K�^y�x���AA�e~0ݰ�v3=�����\nT�ua��ob�y[���Ī�|\Z����HM��ڹ�E�-_���-�(���.�:�w�Y��c/=�@�\n����#���B/�M����_��V6	X��t�N�S���qȕ��tP��*�h�4i��V�Ce�W���:uJu\0U֫�a�~H���y4���ƴ_p!����z�KB�m�b�����L\"�W��޶�rv!E׌=�Scv��1.�TϽ�\\�����g �|~H�D��2vR\')+�w�Hu�O>�F�\"���5���5�blEl�2k�~9���ƅ��-ڠ�����س+^A6�_���,��efd�J�9��@�\Z*a�9N�Eg���#\Zxث�e���Lu���l����p�,�/B�\0\'��;�҂\rE�E�R䧽�=�=����5\\�tMr�bQt\n�I}�?H)GYXr�A?�\"�&^�>�@�ٍfR��zP	�>��x��8ܵs�J����A�����2�� i�iؼy��pUV���7k�T��<�2qZ����t��s5���5�6��^^I�.G{[��q��s��9H��A[-�x\\뛍�����zy�) C]�г0-�cP���Ʌ�y��\\\Z!��Ur��[�7&�	�ADn,%�����У_C��`\';̎J7\\����Og)I-P������K��4W�����O8��!��K�W�����kū����@0�v�9\'Ճ�@:�Z��$��\"Tܪlq�J���;ȕ�.8\r/lJq�\"q�6e:b�ܷ/.��Y8���m�9X��婎X��v!p���MAqݥ$|��M�:l�v?�7��_*���|���\rV\'B+��.�O1��?�w�տQ��Jot���/%��ǌ�g�PY�^]����#��CL���<��B][P5;��r�oǳqG���N8�U��@�\n���\'{$ٻ#��1�Ʊ��@T�\'���#��)N��t�PCHXy/gf?瓟���e/�߇o�: �=��j�\n����x.7��:u��\"*�����y��+RA&M���}��B��e�-zHy�3s��ξH��o�0k��\\��L���ۮ^8�V(uƯ��؉��p������)��uk�%�UA��1���E�ts��!n���LL�j\0��zpT�1q_M���ȏ3~�؇�\"1!Q\rp�����~��)<�ȣzH��HAغ�a5���E�d�\'hӪ5&}<Q��:8V�l&Fll,�p�Z��\"&�N�Z�<��<a�c��;��o�?�����N���x���Ŗ)V��*�T.�ˆ�ɲT����p�}�;�B����T�k2͝m13:��C���������\n�Ǐ7��eA���8��m��zh��h�Tzz:f���R�ʆ����r�\"V�9s�j�qŒ��cBوE���hڬ�Z�ߎ$��)�!fԥ�V\'W�=����Z������p G�\'Ev�R�J�O�,�4�����K�_~�Q�	G[��䡿��S��8�����}a�j�D(R\"�o�D��]�t�e���X�n�E�OKB�b���-p��+�f�\Z��@e�a��8�/�|,�._�6m��S�9��ϟ�h aIJ>�V��p9\\��UI8�7)1	�_}?�p)!+�3/`qt�*A,��ZAޓ�W����/DD�\'��p ���Nj!��BdH��ut�u��ș����؊��h�h�Z��dˉؓ�	��5l�ru����d����\r��z�d�ʔ[�6111U�cb�z,�����U�^w!N����ƛo�橱�T��Ϯ�G\Z�UIII��#����J0s�Zv���V��W5E�o�E@V::9g#,�����\n{\'�N��T�]l\n��W�t�Ð&\'7n�H*��ΓI����Tܽ��_�t�\n*�qQ��C�%�C���Ԅ���g�C���/��g���_Zt��ƣ���Bt��\r�>�\\��A��5�Ws١py�b�{z�c(�%��\r�b�%���5��,��\"���L��`�;�z�K��Q�a�n�%��ʡ��L�?ӣ^y�r$%%�����j�r�LA��@�*ݻw�G?FÆ\r�3�a帄�G`��Ty}�4�y�#8����p\\���Ll̔�y�8��B��k?/�������i�\rL�8�1�\0ԱS\'L�2I�#R꜂V�\n\nPdbh�)R��!c��W\n�\Z��Ȗ\'��zUN�:9�������CΫ��{�I����q��c�1؂��S��:� �)ݻ{/��ٳ*_Ʉ��u��Xh��(����D��C�bҤ�z�e�9�?I����ھ�=�^y�de֭9V./�n��������A��]�P7],�2��.7��w����B^��\n$�X�R��S��T��֕[ٚ�h��1=����:���PX�{�l[���8�G|0a�Z\Zo{��ͻ�&�]�@ \'��\0Sr`�Q�{�Qx#�_��=�l�V��� j1by���X��[���S�pvqV.%����={�?��Q�n�C/2t�Y�ˁ�q�5+U��{<��{������jG!{����x;��p�{�Iu�Ϡ�<��x�9Q�\n����6Qw�q�Z+��m�J����:�\n��p�t4��٫��a�\\��T���Ɵ�(+V�D@`�j�����B6\\�%I�`_Ή<\r[�	F���S\n�� �	��T��,���扬�gd W�Sj���p��!5��(/T���Gc|����u�Uzhij� ��{�n���Uy�	�i�X\\³H��AC����+W`��Ujk_��(Ǉ����f�![{�b��hg���RE���j8:*\r�/\n�TA(����CVn�̪2�|)ȟ\";l��9}�ǎa횵bW���AU�v8�j�\n3g�2�\Z�SZk�F|0[	�r������\0���A��J����ᗙ�b��\r��wo��D��2e��ݵs7��ݫ�h�n�V\\�2z�L5��^�O?����e�)�0wp�.�������7��c��|�-�o܀��]5���X./tո�̚��������Q����{,�k!r���iᚻ�\n�h�6y�b�P$h��b��h�$���H�*s�Jn�9��L�0;��R�Y��-e-55U��\\��\\�y�]�]>��ӫJ}QQ�q��q�/�|��R�/��Zp��ǛZ���?EXX��ۋ�\Z�����[,�.\\���;���_\'j��R[�d��-)�X�s��=R�7�� \'��JR%($��Eh�oh5�,[�\\UܹdTeЅc�ֶm�����	!~�~x���}*Z��`�I�i�=���!���ƬT	�Q��+�U�]W���\'HNJ��A�\r�y�8s�\\cS�Qr���K��Q�U7�U�)�W	sF�|?��V,�˞v����s�+��=z�@����a*K�bq!�t?M�R2��+���Y��905%U��y���}�?���9E����!���a��JA*��8::�������ΉK�M\r��+�`N奢���ug�#��ju���!TY+n�����ۺFӦML�N����9�9�#�$uNN�*�)�8Y(�7t.���ޒe���R!\\CxT�=�x�-�ʈ���E�B8\Z��uNA\n�\n,j�#���e�;;�$X1����-�%�\rau��L�Vz��:� ����ʬ{���T�oil�`w�H�[�,�ЈtϪg [�ꦆ��%��HeP�x]Ye�s2�a�⁌�(,*T��ZL����CJ�-�\\�b��_�{�� ȭ��2�p+	v�Q*3�t�]\\��Vf�:� 3�m˶JWУ�����ǲx8��ޖ�Hȵ�\"���֞v��_���(�+����X�l�\Z�U�����Q۷��N��#�E�ƕ���<�5���C�3��z8 ^�du�/)��7�����9���	j�8]rsР�e���O��X�:� ��\Z�o�{%������w�C����Z{�V����?�Er���~N�%�c8Q���矱`��Y�㭒��-��!�\n2�ɧ�|ppHp�K8l���={V� dh\\+V�l.�߱B2��~X�pC�\Zm�\'�l�t���[�4��+//�A��ر�r�\Z�EM��*c�Ν�ٽ.\\�JK��\nz��m�k��QWG{<����l���گV���5��pGK�iW-.qI}*���ɓ&�Y���VF�Ġ֫W�;��C.R#����Ef)�3����\'�\'���Ͽ���}0��\05\Z300Т�:��9����O�!�i�\'[{��ްy�.���\n�Ӟ�vk�\\T6��R������O�}�<<��vT��XѶT^8���n��V���h�-�t|��wTZjU.����\n9V*\r	���L������~�z��*m�@߄��0�|<i�Z9T�W��a��,5�������Ԃ\"����\r,we�[�\r�������̬r���sY����;w�iij���+�{)/�!�*�B��B׮]�6�������s�4�Qx/{�;8(���RU?�Pa]�]��,h]�Ĭ\\ܿ6[����u@�C0�S�4���O��|agR�UMN�8�\"�-�U7B����N�N��\\�הRy���g~�ݷ�С�Z�\Z)��\ZK�����\0-ˬ�f�O�>zhՈI���+b�U�Q��Ũn�܋�.Ęfn���w誈�(�R������������T2��q�����^|���A�{;cf� �8�6�����0�#3\np[w|�+�x�1���9jK\rz>w�}�Y� uޗ`�A�v�3O�qO�է���FjN>���n�!W��(ǃ�=�~�\0�����B�8y7�|�}�]=�bꬂ���DN��������[T�[B� W,��>�%uN����>���[xࣞpw�o(�G�ţO>��S&[$/u2�xwrvrV�=��㵦F���l�����pF������|��S�\n�z{/|vU\0��R/�n�s*q>��3����j��%�)�\Z6�q�Ҿ��a��4h�~�����}7��\ra.H*����uQ��B\r������x�{l��n=�lR��l�Z�f5n��v�\n˸���:?���r(2�����o������K���=>����qyJͯ[c����a��y\Z�z����x�m՚r�\nFy����l�mФiL�:I--���R����O��_��_n��dIA�g�PHh�Z�����@�J�W]J�HŴ����� g[�K�\\��bl���+���rH��i�`��_�f�/E^(��\0_N(/���9�\\�<B����w�}\'���_]=�)��������V��%�Of<}Dv�����Q�F\n\nB�h;��hժ%ڶk+�f���\\Z.��J��#i��)B})V�LW���qJ,(Bn�����w6����o��6u\Z>��G*\r��K+/�����jذ!��C`P���͛7C�NѠ�e��VF9ٴi3�l�{����`���sR���Z�V�7�r�56��R132��!N��O*\nc�&����Bt����=1��{����;v`˦-b͋t�z��歜GY��És����v�9�m�)�,t�`�^�D���ag|6��I��syjk�\0G��7]�E��|W��ħD1Z���V��)��=8�Ҧ�]^�)���q<%�ۓ�Eљ8\'�MC;H5E	�!����\Z��2�c�T|,����Ƨ�������t��sȯD�\nR�h(ļC)�=&ۤ2�@C��\r��CPI8�ۨ+�ˬ�FE���)ޛ,K�b���\r�z������W^��X������1�R_����q�4\\��i���T����[)[�0G�i�-9b9OC\\�0g{�H�tu�����Z��P��ri�*�e�I9��J����\\U��ϳAJv.�#+U����uqP�RBE��m���\r��`w��R��X��D�3�6*,Vj�UA�X1����b�V�b�V�b�V�b�V�b�V�b�V�b�V�b�V�b�V�b�冚�8q���WSa�NN�^^^hؠ!\ZE�W:pn���8y�x�6��v��E�n��K��UK��.ݺ�����\\Eq��5jv�Zv��]�.;y��������<x���f�:S]�y̍\Z�����ܹ��u�i�F��8�|6i�W]�]�u5��W�_�d�\Z�nn�ӻe�hѢ�r�����p��C�kі����Ѭi35]�,�/V�9g�iӦhݦ�~�4���j�	OwO�oxW�+�	��W�^�f�r櫯�\Z!!��)���_��P��M�6�h��6���,]�);\'��X}��k7J�s!�qrJ2F�m2-��Z�J}��\ZpMS���`ͪ�(���L��]:�^�\nR����k��~Z�����y�{����[��`k�\r<D;x�~Wy2�2�k�U�i��Z�v���<h��d��y�j/>���_P��)͂�q����v�-�5�@>�9*���]����$aUxI�y���k:w�=zD?S1����}�5��@�Ax�FZx9�g��������I��`��r��<�=Tz2�}�4?/���|+����Mx�}���i&|��ͼ	�g0]�$Ox�z�h�.n�����ԓOi��O�w\Z�޵�����h�M�����СC��k��-�\r�׫�G���\0_�O�q�n\noO/�׍�Kz�Wa7\\w���謾���L�`�/�zz�w��$Py�!�\Z���ͷ�Y�<�أ�����)�ܯO_---M?S��G�j>����n��jb��3�M=swwC�����\nЊ���)WPX���ܗᤔ4���6m+^�j�ݳ�YjOA�gqa����buM��\r7�6k���n��q���1rws���7��ï�.Bnn.��\0�\05�_�O��4q2fI�Ѿ];���a��ih֬��[%IMM������ͅ����#7�qt4l͐���,Wc��Cx��WK-����JNn����\0{GߒQ\r@~~�X�`=�<�\",,���ܴ�j��̗��D��ys�E�>����~�������s��mh�(qtstF�ƍ�79;s�MÛ���S^i3��������z�I\Z4l �c+)Y\\UIjkkX�X�𧝝���I��T��\r�7 ]�߬e5�[|��7�����+���午��a�3e������ًP�\Z�7R�DH�PUJ��������7pB�O����\n�D�k�ݷߪkcN�`��e�{�=��lټ��Jp��Ց#GTB̝3/���~Uy�:]\'��|�5ZJ�tE)�ЧҖ4�����̒�6k6�P.�y��WѦu��i��_������\0��?�?n��F��LA~����+���\'�H�Z�}�vja;�9�4t	�����R!U����s^�FR�mv�0<�䓢t΢@bR\"�Ξ������H�^��7���E��F����\'Ӷ$���*U*Ɛ����\'���{1򺑢8.Jr�2�Ѓ)%�u�o�^��� �@%HN�1��ii�Jv�~?1N�b�����~�;w�B�Ν�;�s��b�,���m���Q�T�~��f=�e�����E����-\'-�=���332���\n)��;.��{������λ�(K����lڬ_U1|����(`��N�֦&l޼�\'O��� 1!���\Z����������/�%�q$u��\'L�ս{#$8D�ǰ��`�D)ګ�cZ��)3�֪k���ѽz_�KW�g�0p�@4KV����ϛ�?yyy���K=��Vxx�ZS��	��U�_O�ء�Z���W�u�z^u��\r�3\rG�v��Cd��{��zJ:*�\n\"�\"E��*cԽgO\\3|��6�4�-Rט��`�My����p��a��e��eW�`�b������܍6��i�!WIb4�����NOOWK�T?�ϦF��[�q�z|��W�Y�a�Yb~��w���9}O?��X�[\rU�Ν;q��)�0Q��ﹻ��a��Q7ݨJ\Z�]b٤5`p����)\\��;t����rO䜇(ME��p��^Յ^�i�\\��۳�ΞU;Ju����s�2�̇M6)ũ�暸{�cN�1y�~K1� tu���Ͽ`��i��;u����3پ}�j���ꒇ+ʑ�q��¿T�)�nb!G�8JYD���>��m[��WT3�	�,\n���pJ��~��w݁gDA,��w������X9.jW]�tQ������#eJVƉJ��k��\Z%7��!�d�4He����%F��1e���\'����<��tg�Id�5�\n�\r���<\\���D�����q�4w%�l]c��9�m-[�D߾��d�����Lo�f\n�\nB?�\Z�8}�?�ѭKW�߻戴�h�D,Y�DU�J{>�R	�uQYz������O(+`\n\nR~A����.�qa��îѯ0���N�ȑ�����S�]�&M���?0kAK�8}�4�]�U�X14��}�bE�E�c���gP�i)���_��R{x��s�a�\r���xb��y��鋾r���g����Ҝ;lM�<	��+ҪT����)Sѱ}t�ڭ�ѹc\'�y��hڼ��+�31g�u�f��t�h���_DJJ���˗�0SPNY���zx�X4hP_5 �-ETd�~�y*�>�>57�ÎGG�XN�Y�f\r��٣_}��c��L�RI�!;uD������ǰy�&^Z���\\$�;n��&0@�#H,������f/ft��+%ؒŋ�PS���Ξ5W��r��)\r_�j��f��A���\Z	Rq.	�hͦM��x\0�H��x�Gp�m�ᥗ_֯4��Ґ�UǏE�yL����g�`т�8~��~�E�����xPYK3~�®ݻ���,�?M�����u7\\����=���W�h�E�l�c�Wn\Z�뮽V�s(Q����X1����X�r�,_��������g\'`O�4M�8I��pϾ}��kC߰���Q�p��7��I	Ir�~�Me���J$���R	�f����X�����W��L<�	��+��>���FS�9�U\\=ƃ���e����gXj���GP@�-�x?K�\r\Z��cy���J6�W%e9�\r��`Ɋ�X�r9���;Uף���b��RR���2����F6(�iۦ�Ѯ};�7n���&P�jzsfφ�;Who&��*]��2�۶o��8)9	˗-��2�CcW��������qOK��M��bmR}��*V��X]���=z�PǛo�����z�?���Jn�F���KY��R�ؼi�|X�ڝ�Ms��,�2qZ*�s�5��&����܇�z��$�]�\0�������]R��[ȝ�����[�mS�k&\Zx횵��⼸�����2X��\\����\"x_NV��*��3貱���q��\ne���U�K#�kv.�CCѩs\'=�@?�xn	1���+�U�ۉ\"P!ӊ��ȣ�H��FV�� ���N1��4\Z,>Ü�\\��ZDGG�رH� .��3�Ǽy�	��KKy��P�h�-Qη�yc��Fc,c��@�iX��¬�V �B��P ��C��E>�6ϭ[��g��)y~��6oܬ>�����l���N�?�ԓ�B�Ar�,��Y�U�>�v��s�θ���EA�\r�׹X���ʊ�wu���R�s��}���~��ض}�j�gfe�u���9(`lndQ��$\\��xps�����@\"�L*\\Y�J]���Ɗ.[K�8�k2��CV*/Kl��w|\\��D�|6��:)GU\ZV�����4���?.���~S�ġB4x|>;Y�j\ZU�հ\"������I)R`�f͖�jN��eތV���琖�VlY��K6I��İ��z�ŗ���W^V�����8%8t�r����\"^o	>� ��sg�)_���LX��]w�u���[����ZC��c��Gf�s�`+]�fMT�.\\�w�~g�9u�����\\n�ӻwo�-^����k��cڗ��0�����P�մ���)����}�����|��Ǫ������J�_�-+���Z���1��x��W��Cd�ɧ�R��{�4ؽ{�~w�0y�1e�h��aVA�U�B��}`�����\'��@0B�سW/u��?�fQ\n�M7ߌ\'�|O�K1������y�Fݨڵ�ٵi�F��k)�~6]u<R�*�x���0��3�L_�������O+-��j�ȣ��oeB�Y�\ZO<�8֮]��ک�\'1G�ڳ�]�QB˦���zSB�c/u�LQR�ErR���5o�\\L�4I��)l��И��{�(����m�v<񘤃��\'N�P�2��O?��\nT�;�1l��]5ؙ�F桿�?�w=���=-r$?E�����2H<�J��M��x���kl��6}F���%6�2Ç^��F��Ͼ ��Aym�_yI��;��ĩ\'�P6�h����G�X�ҪM+4������c8|�t�f�k�B��/�T#C�~�Q�R~,�/��,��L�*nD�����}�a���;�CgΜQ�s�N�����0��[T?�e��_K�K�E.~�:��\Z��+�Rz�ȑ�/Cq��͵�G`	��\r\"4P�ɍ�R�{�4����+D�1��@Q���@�~}pR��E�����q�x��G1w�\\e,��T�g�N��4��1���雯�V�,������󕽶���g~��`��=j��\\�f~�)>�������r�����yC9b���0r��O���q4����ֺEK5z��5C�i��Nj��K/��C�#�X���;4G;{:��>��UW�6��m\Z����/*�\"��^G;�R�y�Ι�¥ҥ5n���h�?,Tׄ���\Z����ϚF�S�3fh��k��>Z�F�ZDxcupD/G�v��Y[�f�~�E\"��4/O5µI�m�ƍ����\'�o�[/$T\n0��-�/��w4X۾m�~��]�inN����K��-�+/���xyk��Z�\r�&������`��}�!MJ5�j�H=E�\'�/@��/%G���I��e��_`l\nQF�[������f/2��O�3��أ��Q�Z�~����X�Bsqr�ܝ]�n�ʏ�-7�-KG�S���\Z�K9�A���C\r-$��gW\'�GѲU+�V0_����-|�c�6������N\\�[hXA���b1��նMu�	qy��d\'~��T,���Q�$!+���|�*��m��|ck�9x=w�ڶm�걦K�a&t1;I}�t�芰�q��K�(۪��i6��t0ZI�{{��e�s#\n�\n�5m��M��gJ�hŊ�R���1�҅�0LC6�������[�A�~}-�(�y�d��3g5l�m��j�5��۷���.���:w�������;���l��,�i�V��vq9o��^�AAjdxE�U3)1A�P�V<z*F�k�Z�b��t+V��XĊ3XĊ3XĊ3XĊ3XĊ3X�2����T��c�naU��@A|l�n�cƝY�2�*H\r��N����ddd�b���8��RS�\n�����F�Iɶ���%�\nRr��1q�.|��(�2��۰j��R���rq��,sj�C1�?wN?c�.`U�\Z`og���<Ħ���gS���1]T�q��情q�8�\Z�e!�3V�V�\'c0�1$$e���jd���K��N��>�>|�3�\nO�Sv�\\�X���v�\Z�j�َ֏/�#�n��o���s�p��Jq��~��X~�_t|���\'O�^���[�����yf��j�+����C�#��g�?�C.����uEvL��9c�f\'�U��ZRlH�����1o/�s�Vɱ\Z\'�%!+����|r���ÆU���؎!Æ�7���(ÚMl��𲔜)ij\no���\r#��m�4V)Ä�{_	�\'S��!�c�y<=�-Z��+��O�3�TRz�&g���t\\�+?�9�\Z�OG�寶���R_�+�q�uhHh���\\s\rn��n�;:�y֜��Y����:��\\��/�ѣ1i�$���ѥSg��`vV6�z�-������j�Ju�����[q���a͚�j�?,���_��A1u�T5C���S�s>Ɨ��y��$M�\nRN�zN����Ԥ��d����I�~&A���qƎ#������/Ò����!^j�C�ni9��Z��$\\ܹa��x��\'��/`��U8�%����D��|0g�<��������~4N�jUw.F0s�,�X�R���j�J�2�W��㏔RqB[dd�Z�v��u�pӝ[���SA8�6(����E�\nR�������������1c�~�@�Wl��y�\Z�C�����h恔�B��B�`7��^*���Q��N8s��󔄖���9��)��o�K�.A��aj�ҧo4�WN��5T���Jhh�����}(�T�h�:�.�.�mk.�aFhhX=5/�������K�k׮�������ֶ����Ѻmk>\\M��a��k[���<0y=�>�ɳvb[d2Z6��-��\"��Fu\Z�e)�#_���<þ%�\Z�֮-^l`��]�={��pXJ4���-Z����\n�\\k�S��E������Tp�����ַ\n��W�p��ܶC{dd������3��gXQ����=�馛�ӏ?�ȑ��ճb��-A��?\r�7���t[��b�Ӻ\ZM�vE�F^8p\"[��F�(����5�G�ƾ�,����(ݴu;O�{�th\Z��\'УU0\Z�\\�3Υ�\Z5��?aޜ98���9���x˖-U+B�|�-j��T¿�w.@ǅ��\r6��])ǚ�kq��k��qq�X��B�sw\n�R��^^�V�g�9sV�%��Ȩ(����5ͬ�pN�M����������oQ������i�	�ZZf�����ef�TS2���H\\R�����V%IL͒���3�����P�[1��ZN�<Y��q�F=�defi�i>��ڋ��ٳ�+�dddjQQQj�Eq����t-??�x%�yd�X�L��/+ĺhÿ�q�~��w<<�a=�j�p���EJ�;�K�B�\nbŊ��t+V�`U+V�P���63Z=/+�E��|�m�)���b�V��_���%�w-� �b�ɕ��X�C�/�ʻ�ˊ3X+�V���� V���� V���� V���ba��~s�7������T>�6�s�8y��1��p������PٳM��pX|�1˶@�)|?�7p�pKm�P�۹I)�Ǭh�~TT�ڍ�,�#�6���$)1QM�<s111X�t�=���{��C||��W�AAۼi��W���-[�L����m;E�+�g�RV�X��K����@�\04;p:T*��oE��\\P�������g0{�l�q�QA�?��+W\"=#]���~N8�e���8q┚:�)�F�;�&�1�kV���}�3��\n�D)((D���бSG\\ի\'vl�^l�x~��=j�;N�1B��n���wɒ%�v�-��Sx�(��5��nڸ�T�Z0�������6���F�\n=wh��U�V���P��(EE\Z���Tqgے�su��-��`<8�ҋ��X��CE����j�-��|����\r6{~��sI�6�c��^|\'\r�0��F��}��q�n���Ͱ�8ӟ�\Z�ر+V���L���Դe>�d��0�m��vD������W\\u�U�֭��s�%�QW��b��A�ӷ/:u6�I�Ii��J~9Wf���5��\n�-�9���\'3���\Z{Y���D�իW��1C�Bk���HrB��_]��3�9��{�j�+�=�E�������\ZW�X�j5~��g����4����������t�ij�Mn�9e�^�v�p��x�1s�c�k�v���c�/��̔R����ޜ�ÌPj��2����������T�`�q��R����5k�`�֭*��Ņ���w�J�͛\r�%�`��={��a��m��8t�`t\n$�~�e�nٌ�z�Ԟ�4Z�M0�O�DHH�GW�&Tj�M���g����V����T89&��p�b�9��y��8q�D4o���Ǌ�2,.a\nʖ�DT-<f�J�81-����̝?w^(�(xyy⯿���ŋ��F���K����9r]:W��gI,Vf ]��\'��?¼���vq?rN�o٪��?*Y��Tj:�M�ѣ���|�a6����U<�����zs�zΟ��z�-�=]�+�/@������k�0��s��7�P��3^����s��K����κT�ޣ;|�ШQ�b���\'�i�0DDD���c������j3��mۢu���RsnwE�}��y�u���;*��������PO����O)	��iب!Z�lY<_��k,yN�<�DQ�ѣoFӦ����c����9�pQD\\3bZ�j���a�SvM�R,==S�e��z�3����~�Pv��Ey\r����z����@6L�{�]w�Y�f����&Ίl-�[����1��9S�0�,}��^Lx�}�޵�f�*.]�0�N���]�ٳ��m9����]R\Z�w�ڳS&O���我0�_eX� � m۶�3�=���_��	�c݆u�n�O?���A&Zrr��O��3�J�� �1���l�R��;���H~�����a�,Z�}$A=�\r��(ֳ}������;�{��.(!��N�Ȫ�RL!�=%�s�%����h��1gΈK�Fŗ[=�46��y���Uɖ��%���t����tlqu3lK�<`��ҝ0N�o#�R�KxM����^���������-�	��C����\\�Bq��\r��b���Nww�\rT���8�1ƛƆl�(��>�j��(����(�/����n��F�kP~�~��\"xxxa��aj��&M��m�)��L�{�n�}��x���1�	�9k��D�TIA�K�xV\\��\'NH�2\Z���	���.�D{9g���:��A�O�ƌ\'���.V��\'�_���V-�F�#�ٴ�]%Q��G��Q�*�q��Gą��Lz��\n;$C�b-�CѫGūwP����\"�n��|֙��fzp�j����-Z��(�s�CB_�\"�$=��Z�N�a��u���L�k��nDJ��xP!��\\���L�i�^��Z?���q�,u��-\"�9^���#?՟z�����GQ��o�Y�7��$B%4�X�r?-���L�t��[6oQu�nlXhԸ��2��\\q�E����>���O�J:e���CRr��y?]u����n���e\Z���tW��L�\\�H�*�SV�ŋ60�t�����ge��\0���4O*L�Ro�O�e���&��`^e�������	�@�z�5�D�chҴ��`*}E�[Eb�BBC��ɏϢ��L�v�޽*���>��31*�ha�53���3���_H厖8==Me�ߒ#\n�D�a|�&���H��>�J�����O*O�<38$��E�\'g\'%8L���(����uT \n\'+�,������0M�\n*A��P;�Ν��E���}�oFF�|wSe��3m*NփX�c�\Z]:>��B�8R	�s��;kt�iLO�=��r����$%\'R�0�h\0�9�8��C�4P��lIa���s�V\Z�9v��+�+9��6t�z�*\nt�q�:��q�\n���\'V���O�A��}T�UU�h�����A�c��6�R�}F�ZUL��X\ZP,��+UER̳�,9\\�*0�Ƹ2-�nc��$ʚ�e�6;\0T����S/O\\USq���ҏ�c�Q��Ӊ��C.\"��6%�<gi��h^+V�Pu��b�?�UA�X���X:o��u \0\0\0\0IEND�B`�','PNG','bob.png','BOB','A',NULL,NULL),('1',NULL,NULL,'M','Thimphu TechPark','N','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0�X��\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0%\0\0%IR$�\0\0��IDATx^��%�Y���|�Mwf�v���\"$�\"d0�c��`̓	6�l��3�#0��-Y� ���%�XiP�U�s���gn:����sf�������޺�OwWWUW���PU]]�b#l�����t�6�F��@6�Fx�����!l\0d#l�G\0���@6�Fx�����!l\0d#l�G\0���@6�Fx��1��<��ut�u�h��q�֧�Rk���F8Sa �`������K��cqہ=���jt��| ��jT/�-sO�o}���_|�U��1͸N{�\0�9��n��;���cqO�d��Q�d�����wb<\ZG������>�1nl��`9^�����~E\\~�Ӓ6��\0y���\'�5��;>r�u�zd�Cc���W�2��a\'����s�����o�F�Q/F%j1sar\"vn��/��g��?��i��t�\r��������k���8��?~`o�\Z�#�J�\0E%1�6�R�\0���Z�17|Al�<;��1�ףV�G}R�z��z5z�jl����\',ū��ʘk�#�������ug���5�?\Z����\0\r�@-�VGSLb2�De�\0$��\ZZ\"b���X<?\'��x2�Q}���t\0J-&�NL@����8~�9�����5�j6-e#��@�`����7>���ۼ+��O�O�����44���JTƓ��JLP\Zu\0�VY ���>#���Ƙ�)\Z��ODS�L�:P�1��bh�2+�VL����=���/��=��Ӛl��Ӱ�3�p��s_|}�Cܺ��O��5�Q�!�`3���\n��砏6Y��ʅq���D��T4�8��	�U%0�bT#�&Xkh\0Fl��x.\ZUA2��C[�X�^�ȋ�Ə�W{���6\0r\Z�o���x��_�����މ���1�v�Ukض2��1\0 �\Z�f�|<��\ZG�_�fwGtV�s����b�\Z�6�\Zlc@�l�����Jt\"�8�u@Hy��l.�z�d��x������Osm#��\r���p�����yS|��u����_��S���\0�\0�ƿ��#�\nL^aV�z�8��&>�����|�����\'�/���5����W�3�Y�V�#���`f5Fl�y����ݏ��\\Lzk����W��w����\Zo��l�\0�_!,wW㟿�Uq���kb�э��f�F��\0 �D����p8���!@�eFl\0d8KG�����bT�cy�S(-jh�1�U�k8�N���^�Tjm\"\0׫�&fY5��#�n\\u�B��_\Z�˞�q�/6\0�z?��߈v�Z~0���/ثT���\0�SC�\n\0I��0��c�>~�CM�* ���t��i��0��F\rLr��lpy�D\0>���I���UA�\n`A�W�S�	\Z�|0��҉Ag>F+Gb��b��+�ƿ��+�sl��e�\0��f�n����/^����Do2�Q{s�\0j{��8��T{e&4�d�M��2\\�ڠ\ZC�a�le�[�?9��/�a�c�ią\ZDs\r �Z�P�eFO�xATü��j�\Z����aN���-����|y|ǕE����1l\0�/\rN��>�x��k�s�w�$א�1\02��\0R�s�,rpR�*L���#�x1��G���h�X�M���B��ځ�L�0���9�I<�\r�8ӣ5���YE:�\0S�*ڦ���j��M�!���J|7���W���p�#�\r��%¾�g?����}��I���`�2�7#��о(L\'���=����U͙!���� `�]O���;I�iV�HcM(bp��!�0��@�7H/L�&Z��iv��U�w\Z\r\\�zt��rm�Z$�0����]uA�ܷ?9\Z����F��@)�௻����=�w��b���V,���W�1���Cu�t�9W{ح[���|$�$1��C����`�{p�^czT�Fm4�V�h�.����AUF�_A9�\"V�x\r��t���$�3v�*��j�F1i\0�z35ߨ9]4�ܨ���;���Ҹx�o��\\�\0��$�����{m��w�}���Li��N�b~j�����P��h����T��B먓�ڎ��b��\'������eW�4���Z硽>EEg߽Q�\'�\"5�2B |����u\0�=S���Ұ\0���\0(����+/\Zƿx�s㹗o��m���@��p����~4^{�5�\r�ښG����\'0�c#������_ǸO6N��v4�:\0�L�vqЏ.������T�q��SJ�ڣ|U�������fqg��O�xl�\r0�d`��|�h��\Z����Vo�I��z�W]�9~�۞/z�&�F��\r�����������=��c��5�-�x�d��|\Z�A���=�\0���($�Bg��(vjU�v�<~�Z{\r���Hq�5t�1�`�A��ί���q�ݹ3P�#Hf\Z%}}�-|�j\'�W�X�o�D��3�Q�h=}�	�Ʈ����x��������_ŝ7�a ������� ����|̍0�>Ĕ�}\0���%}H���`u#H��( ��uN�N�������Յ�4ב�_0�e��c��4\"�d|5q5�)wH�ϔ�S��fj�e���\0WU�G��d�&���Qq\0��\0N��QiF���{�x����#Ͽ0��7@b�\0�4��u�o���8QY�vs	-1��{���	�9\ns©��ת\0dd��C\r�&�!�i*�U!p o�薨�]���v|\Z�M^{���5[�\n\"#)s{{\'��t��,\\���9\"$�q��*T$�\0�W��=�Dۻ�W�io���E�2�~���zl�����gŏ|�ƨ�\"�q���0����{���	∷Npm�����ڀ�t�I:��j�f��.�iGč�jA3a,a����h�ޞ��V�+��%�k	\n@U���2�ه�KWp�6��R$\ZyҖc3�q���k��`ym��6�v;SW)},?���X��=�8�a����JY{��o|������{��ux\\k��{�o��G��7�;F�}��j4�%�4ҴʠDg�*�t���#GɄ�\"�i����9~`Xm�I���׊���1:D��8�{a|\reT���V8r2����LC|�S��T4V�2��~\n��Y0��2�&թ6QVq�Q\'�;�^�7qΖ}�8���1�H\r!q0=c� ~��K1����y<)����+n����׿6V��][�y|%��@��~�R:7��#�c�p<�9D:s����L_�GM1y��8ޑ�u��kv�o��_N����j of��/���	 ��`���5f��V0�7�^wڰe�1�c�~�G�{1\Z�wT��NV����f;n:ҎW|�����{���cx\\j�������on���T�ь��Üm�́;(RUeL%sj$�(��=�6��He���>��hd)\Zc��;��;���9GK��\0���\"��:!���<�Z�C�q���9�FA#L\ZD�\0�5L�ĸ,W���1Ν�0��jX@���7p�+8�U�qs�ԲX�ٺ�f��Wn��^�����_�CoY���� �++��Ͽ=~�3��E&l���DF��H).�����,��$�|�$�A�c����KO�I�54˞m�c�@s&�ȴ�t�R(���$/���$+�I��4��~�߂�8�ϙ�s�8�W�K�9�g��K��@[���4�dP�A́f�������	�эMXe7�ů�In�s�*=���\n GN����ş��ј�,Ŝ/5!m]��V�BZ��)ѧ̚SE`>yQs*�p��c-����SqR�F�>̼wKT��Ǹ����dB[$?{{�En�k�n�p�N;Ǥ�ƛ>�[��q�%�a�q\\��]�Ӥ�ʽWp���qs<B�arUFݨV�6��\0�ZiG�K��z,�Z���$^����sw��,��?\0�7�|��o��8�Z�9L��L\rSUa��@8\0([�6�R0F�O>#�Ԇ�&v�\"�+��碵kG4��1�Ä�\0$@��e���2�L�k=����w�\\�:xV������\\�8����͖\0�.e�\"{�G��E��C�a���(���n0�dT ��s-���x��o�/�w�2�q����{?����E~-4�S=r͌�=rtځ5��\\j�¼2�]�r��R:���5���f�o�V�Q9�=Zù�F1lP.JY��{Bd���0�E�@�)��4�\n H7J��v!M2;�ň�BH�5����� `���	���m*C�Cͮ�)���5hӅv��\r��・k�ڏ=[�r��q�O������zܿ�;��K�����`P�jŉv� }�	l¢0T� ����f<�e��9�|P����Q;��)��\n�\Z�y�Weq��ۭZ�I �:��(�5��^��n��c��|�`5�����1 �B�pz�ʹ[1;.f�Y<�\'AK��.\0�MF�J��]��2XY#Ӌ�*4�����Įa��n�}GOP�c;<��w�/}�5q�ɛb�Վ��γ[Ǟ)�{4b�N����,g��b\n���4_D��0U�?�JF_����8<��6���6�kN��VL���U���U,�?u�7��9��ګ$HP���X\ro�\0���z�x�<�H4�R���y�Q<D�~��-{��\0���d���2 ����֣���\"��Z�W�c�7�����O�\'WW)��k��1�9�+���r\\s��Xjo�:�P�C���؁4�\r�\nδ���攚D&\Z�(��P�8�C�{�\\�3���{k�����e�P���|c�����s�.k�T��f�#�9����{$��K�+�ej�gr�ay$p8���sA�&�eZ��̀V���8���[�u�עN�:B���4<S�t�F�k\nL�F5�8�+�����~Ŗ��?16�/��=��cV��`�����;�&\Z�b҇eN-9E`�00��� !�d����W@�m�Ev��t�+^UN`\\!�����U�h��\\���%�f�Qj�q��v+F@�~Қ�J{��9R��z��\"�Wۜ�ZE���5ʩ6k���W�0���@`s�\ZÍ�Ej�i�3\'�\n^|N	��P�GK��c�£��:EG~2�#,0�,w2Y���J�����?��ћ��c2<&5Ȑ�~ϝ�����b��wZ9R�@��X2��\\���`�x�\"o��Nl.\n�8dʮ�ǃ��$�\Z�쉧�x�&��h�1�\Z�=��(�: �~S�)94׷��9Q{e�V�qjiY!Z\'�M�YSHpګ�(������A�\'s)\n���/0�C��\"�g>�����i22��U���E5}$�\Z�vt�3�m�Z\'\Z����\\���w����?��?��c o��}���F,���ݜ���`�\Z@�aD����I�S�r� �eBn;�\Z�X�*��>�it��F.},6�z�z��D}m.�a��� V�1���3`x$��s���K�p���z!�;�B�����-2��z[�io����9���sӺY�Z��̲��i���-��!�����:�ǒ\\���t;<��Ђ�W��q�盉�W��X\Z=��_���˲��Jx�����s����9��Z��.��>�٫�|qHޓ1r�!f�c\"��Һ*�rȰ������[N�%�rl:�)��>\':������·�aS�QV�i�Hb�Q֫RO�t�`8aнwT�Pz�q��㔗���G�yTT$�c9�-���\"�y�Q��+\\����\nsQ�j���\ZċН P��{%��HMR�%1],��\0��\\ܿڍM�����\r�˷S�c#<�\0�k�`��o���f����;�q�\Z8��u�����H0`�\"%(=e6�X�Ff��q���7[)�7e�&�=O���b̵�d�V�\rv0��{�/%-|�r��\0,�{�	�^���E6��2�`A[x?�֗1\n+H��\'\0���=j=|��-x��m��\"���O�����Cl����E-��\"Z-!�������\r5! ��j��hJ����ux�b5^����3.~l|?Q*=f�o|�-��#��]H�V���JȔ�<.�\\xc\Z�� hrdb˞,%z��yHf#�c�`�ʱMQ[�-��t���|[/p�+�m���S\rS٭뵡��UEà��8�\r\'*�a���c�#7�G-�l-�-r>$��&�u0qpꫜi}���{�VJw2Hwߝ/6�)\r\0�<����Af�)<�Ќg��c\'��}m蔔�7��*�z����}�/�\r������?<f4�H_���ʖJt&�z��\n��8u�V%��1L\0���)I�A��TG�Gh���`ƌ0\'��c��z�0qF{�<�V.�ZǼ�_���S��p��\n_\0$��Y���ܘ�٥�;>g�f�@�^ԡ@��*����!W��LrJ̪F�).<[�Ḃ�O\Z9�]Ӌz�95�E9�����q?����O���4L�ku�t�S���Wt\'h��0\Z\r��؄v\\���F ��� �n�o����}�����z��8��}\'����s.��]���)�5b�;�]��	ñ�2��_�\\S�6��P�+�i�\0��:Nw\0(�+0\0�#_J�I*ir�(ܟ��j�1L6��\\ed�ɂ��g@&�?rC�i�h�F�nb��S�o�c*Χ���Z2`57L:4�����9��zQ�>�kb���N����z���	���g�>��4��)H�~\'khg������&���U��E{����;��9����p�k����?�����Il�Y�ā�c��h+�����l�2�=I�s��Z�� �j��<\Z��xԅ9(�Wou�e���h�,旯�,B��ph��a�����kH�I�b�M@@r�i�\nL�4��Q�ȧl:���d��`6�������W��㜮�Ctδ�U({��*��>7��,Z���H�\'|T�����ҥ�I_Ď���Lø��s<��;����]����f;<�O�:����g��-��I��9ܼoo����h��Z}{�F1���0��C\Z�⊅���,�f���H�]����qM�dO�i\\ON��j�k;���N�SD`�Z�r�)ge��:��Ȟ1�iZ�	�4c`B�)��q2����c�h7ɥyp�8���	��&�1�W�U*�\"�NE3�o��&\r�\n�J�ӈ�5v��ڴM�1��ɲ�B���))�;7���C;�b]�Ǔ7b-��e\0��P���Y�Bt�׏m��}�J��;�#��<��x��7[=���ߎ�\'�GS�s;E{�B�iN�φ�xF���6~�ȼ�{<��p�Zw���:c�2���>�ډ�=>��4��J��üi�S�v������R��KS�4�f�,��yܨ`Jp�`�$�cw��wX�W��U�Q�y�t�R�	X�g�l�ihbv՛�\'@���W[jʞ҂�.;�3^>�����j_�OQ@鰗�Pc��~:N�������f,Ï߾?^��;b�O��0@��3����g�����)�������\\�F-R�[V	I\\v\\�=̨�@f�?�ZEm�S����L��5bSs�|�ēb���1�\n֮���-5���Uv��	,�;�4U�rk�F�4���r+ȁ9IC�f�:L�v��5�t�`�Ih�A����r��ܷb8���M1�[$�V�8��h9\0U$���׫FI�[��ƺ��ٷff�wF������\"]�d49�v`I?s�I7{���u��;L�=��y�/�;~��w w�pQ�r�\"�0�QsO�ϝ���e2���,J���.sȈJ�LLv�$�=t�0��F��<0���Ip	>M3����V�ɖ�K�ϩ\"0X^!ڎ��	����:���9V�̚i+����\Z[�y��ت�;�]�F}��\Z H?��M�v���&q�\\�? ���sP��BC���*jg:kn!T���A��N�[�΋����U�mы�`9~�ڽqd�K��+�6�]���{?�����ot��C鳇lH��M�oNPB\n������Ⱥ�� \ZCӊ)e~L�U0�:���@#H�i����r���RW�\"M��l�OAl�x�S��%^�ۅ����U���$�	�&Y���\'�\0����^1{Ê���L,L��=^�h`�9�R3��:i�W\Z�/�1��>�`Q������	8�������D|45�St�v�`���XX��޲?^�ޛ���ϟ\0�ϯ`�۵w_����FuɆӔ�	��u<a:��?G���{9س��h��\Zj�5��9��`m��>s�7��������������4�m�ݼ��o��\\��H\'E\Z�Sۭ�w�^e��@��{�L�,Xͳ��B�E��X�N]�雚e,H\0���A�!��p~k>��q~�mM8�9��xN��^87�QSϊ\'O���l�Z�&��;&%O�(5O�8��I7�:BcӖ-�O>��(��|	�{Σ������7F�݋���Ӳa�L\n�v��KV�!af�=�pmd��s:�BDFP�x�ϳ!)�ڟ�։��0���s	�L`	:��/wQ���8�)K�Qj��~H�Z�;��j����Ҹf��J��ų���2�1Y���P5Ȇ��8�ޞ��qg}�hG��\r�8�>�[�r�&x�i�4gA�gg�tR۱�*�ڏ-�e�y�)����x����x��_{��?o\"�w\0�����{?�����3U�_��i7�T)��5�&���!�\r^���F��Fj\Z���|s���U����B��FC;�[��>ʔw�),�,�\rNJ ��rȃ�\Z#�Eּ�L�&�F���2R��I)^�1�j��L��z���,�<���\Z��.��|���\'\0@e�c4G�~�^�i+c���4�&�f�c�!����I�|f�Z���̍8���ntz���d���p��w��[��s�@�� �W\0Yt�>�&\Z��p^�6Tc��hw\Z9�y*^����*\n�%z&�m��4=E�v��R[PR��5ڱ�Wc�O����؜��S�{O�Q%��;�Z��j\"\"8����ZfNǻT�80�EA��H�1�d��s��R�ySԓX\0c}�L�eQl�[�!�=�jX5���T\Z\0���ǚUv/AS���(��Ζ�HW���QL�\Z���w���\ZF��[\rI��8�L�ј,�:�ד6Ub��C��ޕi��P��<�/�8�z��b~i{:�C�ƽv��>D.،d�C��>`������It�Pi�L�i�ئ�	��Ilk8��p�ǷR6RU��RƠf�WzzdQ�c��V2g�Y���0ݥ��QaM%M,���ߞ!�A�%���du�;���Q�<��\n`�u�K�<{EF6.�Ώ�4�W�4\0��7��c��	\Z�7׌>Hg~8߉��)�X9\0$̳�A��mHڑaUxgk�����\0���\r�c�Q��������X^;����C8v�p����G剗E�G��X��]�0��۠����\0e>��\\�\\K(̜�kC��L�IUJFR�	H�A=�j)�Ž��4�f�Ji0�ޏ���_I�M%�}��>ơ�|v\0�0A�v��}���<+�Uvj|��P���0&eX�R}2q�:�X�[��~���O�V���g��ǅ�p�Q\rRoDݑx@�(��.�.	B\"M.G�#����ܵ2#� �}@�;�H p��C��~sS,l���o_���0�p�V�E�ן{6푘�a>�\\_�!h�n�H3l�-Dt��<^G�4�LU��0HZ�|���︇��!���B4֖�6\Z��1��&~�-3���n���5�Qe�$H�6�m���\'0�W�C1�5�\\����9b�j�26Z�_�׹@\n�R5�*���~��1�	���{/*��+�)�^�i�@9q4}��1�4q�[1^D�t:�m`��q���E|�f���o����Ю�>ĩ5��L�<_�I�;^�N��L6G��lw��M�x�g�go�E�s7���3:����l�Qm�To�A֜���K�h��`V_o��Hu$\\�-�&��šYP��a��3�2���I	�7w������ѡ�!�ѫ[f3�`�^@Pf�xX?A���D��\n�	i��}\'ӛ��\0;���o*D*X\0��P\'���@\"�4���g�B�L�H�s/�v�)��S�@qd_s�ک[G\\�g��Yb���w�1���qX>�8�漪j�\0���<+LZ�\\1\r��O�!4\Z.�]�Hm#�}�j���c�]F�.֟qZ�Yi5cKu)>�o����R�`87k���?|�+bx����:��k(i\0	\r�����JB):m�\'#ʱ%�\"��tu�E*�S\\�rY�߉ڠ��),�q~y���������!�,\Zf4�����/�Np�I�<\\5��b3�\\�P�\'k�����)�G]{������>۸։���x�6t� gМ�T8���f0���BI\'� 88η2J���P�\0�m\0�jC}|�j�_e�Q@���#��L\Zv	c�5y@l�!��K�J����\0��h��!+�b�Ls�m�o�h���}�H�s/��\0�u�@�ჿ�� eژ4<�����Q��v�<�8����J!!�(�Ou��H\Z�\'�e֮�d$�x�V��a����\'�Z����\0s@͛���1&Kj86�p_JgM_��)\Zb���4Q|)�N���8ש�C���#MB�7t=��ޕ��Xq��\\$Uꇪ���\0�7�-ZE�&gH뙑ޗ�Eq�!a�&6Z07ϫ�\Z�k8���R��ǹ�أ%H�S�VkI����\r�Iա�\"xT͚��\n��:Zm6����)��������8	Ͻ�m{.�߽����SQ(�GݧfP�M�6�w(`J�\'#�!E���I�L��>e�ԔO����>M���h�|h$a_3)��9�R�Ual\'\'�c�Q?����Mj�;�F��Z0n���:�bx)k�`,��>T\r���/�o�M��Z\0\r�^�6\0j�r48n��c�`���|\'AG�ѵ�3�H@����8��>�S��N\Z(�!��H�5�\0Ө0���NaA�hj:�+_%.^�2\'��b�������9�#͈�u�1�j�Їz�xZ�����k���>H�߿8F�:Q�A��g?>\rX�q&\Z�,��g)E5\r���n�������8���np�T&`^\rd���ቦܚ�����~�ɱ�����P^�t\r�D~GD��7\0e68Q	����(M?x{@Q/?Z3i��0�林�6�<�,|������K��H#�\r�E\r�A�帏��鍘>�RԂ�X��NT����=��4 2�&��̈́��,��]�N ��BB9ٍ��|�w\0���>H���xy.�5�8ց���:\\\n�\\��ոJ+\'X�w�~kͭ�a3����+�����H8���?��?�O��X����fO\0i4���T97ʦ��*}dG��7���I�RfJїqƐ=RvC\Z�g�r��~��p�It�;�lS�W��[HRs\r\'�h!���L�\n2�������T~_݅�T�U�&v}����:�9��z�;�K���5@�ˬ�s�����W�*~�}t��	v���+����hybj�-�0u�J��дfE�d���Y��: �+���(&�A~t��Ԉ��hM^[H���f�yi��M�F�e�K[�j�qd����q�/~\rU�/u;�9�����-�/�Ħn\'N4�J�z�������0�ί3`��ePy��u5�\r�@җ�\Z�t�c�T$]�����2�Ҵңa׎�K.��������/Gg��٤V�%K����τ�G�@��c�������ſy�=�i����q�����3���s�\0D���E�k��m�U	��\0A��R�d��x|�\00j�&u�.�ϭGS\0���K�LV�-��@Q/A�4���@K�79�}��&�V�\rH\'@��\0-@y�y��Ԃ�r\0#?;�@�<C3:�XP�����|� ~�\'^��9�9�w���[o��l�Y��E�����)���R*)��̪�ibڠ�H����r����\r�w��]{Y��̶ʅ������7�ݷ��䡑e\"�?\n�{Jawn�dn9Ș���}�[��޽;��T� R���\\��th#�m_�/�Z0j��Oc�=e��� T�p���h�\\�I��5k��O#,R���ˠ�Ch�8-3(�V|�|����E]Ee0��|��ɫD�~w%G�ɯ)X�K$eR���v���)W���V��ݹu.���W��m�:�z8g�u���}_�Vk.��ẉ��]�>\0ٜR\r<�|ڶ�S}��	O0�\r���0!�g\0���r�e{�Z�9�|g{�\Z��??|�ٕd�5����L�s�?E}��\r����w�ޓ�8>�-j�E���;��x�1�ڸ���h��`:!!3*T3�Y�jT�0��H^���Ѭs�Q\r����+YF�	@�@��� ��|?D?��؉�\"����)l�\nt�sU��6l-��f|ח����__5�ѣ�I��z�����_.�-l��N7b���H�b*�0[����;��iW��bBd���5w4��K�Ni>ĉ�gk��~�F�W�w|��Ʒ>��B�@p����]��$�;<��}澸���qۃ�8>�$�bai���N�10��!:�v�\r4w��d�&�B�;\r_�P^O�2찰�rݝ��P-\0Q�Hȱ=�:������V��ru�t4��\0�a��n�I{�&��i�9���6�[i����x��~r|�W=˻<��G?������cТё>j�v	CC�~`!ٰY��U�l\\�m+������G�Un�^`(@���\0����2�etVF��r�8���mi.vl���q�B���~F��{Q���^��\r��;ё�q��Z�XD܄���0N}���i�԰urB&ϛ\ZZ�.��.�����!�5�$\n�֧�8q�~���:ڋ���\\&��t�fp��Iy��Y���	��@��,u���B�i*��x�_�;�B8�4�������!���	��=�WId��8�z��C:�9< ���ұu�G�p���G�iset)c�4���\0n�:��3W/�O�߯������$v�`\r����λ����{����pg.�+��Y�v�|�Z�w����4���(�V2�}�j\0V(�A�\'����Xvv�#m.b4�c�ɥ���`b�:�3��C�xg�R^�6�~�4�\ZD�L;�#���\0�(^��������9���[���c�K&o�[FyiD{F1�f�A�\nһ%�9P\"�	z�Gӂx�{�v(m�8��6���Ⱦ{U\n��E;.��s�I�_��{�j�R;.�����>-��?��x�?7~��wƋ���ă���I�T]��l�taڒ_dט=U~�և���h���RХ���5�%����+S#ٓ�T���n��\0rL�c�	9D�;A�\"S`��f1��R`�k�p�ޏv�\Z��~��3wE�缰G/�S\0Y��=؟Qm�7G��W���-Rz��J;+��w��<��r�C��f��L�yu��gƴ�i0Cݲ��j�@��˯�^��14�͸h�B��9[⧿�	�ꗾ >�����q�������dzHG�]E�ͱ�}u\0C�0�\0F���ipL_-��������VvQ;O�ng��G��$İ����Z�Wcp�zj!��YW�G�����J�lW�C7����^8���s�o�]��2���ʆP��U�ZU�b�\npf�k�rr^yv**��2��1o^�МW�����������[�\Zq�湸r�b���<>�O���k�b{��������yޚ��`�*�۩���z�l��c��-��J��\Z^�:JtɈ�VH�m��\"N��}����ףGy]򬓦h�oz\n4�e!\0+�z�q�U�.�[>�K���\n3~z���W?��X_=B#9ށZOPɟ>\r����d�l�S�k��瓩U�+I�g�`0����P�\0��b���ď� ).���ڧ_��[�o��_���f�w2��q��1�О5|�|w �Bq�h۵�b�T4���7���BL�o�K�!R9�:ͯl�r������\Z{�����ꤻr�`���㣻������zZ��W�~]\\{�6Ȏq�M+w���,xP��S����-�$�ǅ�N��3۪J6A������-��K:��y���?�w�&���x�Υ��o{n|��]�sY/���8||f��.h2�N��]�[�M5�t�v9�Q���\\��؍��B���_���Sao>W�wpv\rmѥN=�]|;AQi�N�qrrЍ�~�����p�\0��������_�6T@��5�ln��<���\rg�q���\n&��	`Wfy?� 8xT�Gӆ��m2��;�Rb3`���O��š;6/�/����|y��e_�)�qt���P\\{�ynj�<�]�P,��4v/���+9\'$S4\nGj}����A�\Z�s?��Kc���f71y�}HT�,�u�~��x�\'��ͻ�g��v87\02�ă��تY��\"� ��F- ��\\�\n�;Q����n��%d�e��8�v\n�[��@�\rP�}����,{�ly�j�?�_�/y�%�o_�������ؽw�=e`ܚo��1:FS�m�mNȕ�\"�� �>h���r�QM�#������n�F�_2�Yۄ���\Z��1�pz�{׫�O�i�g=�\0��[�èQ(,K��\"%	\\�iJ�n���qR����d���8�y5C�X�e:|),�.h�bXR	�����A�W�ݨ�����^ti��\'_?���]��qt�o/�q������0s�S���ǌ�I�B��d9�\'5��`��	?p��Q���lEs��}�?gP��v5>q���؜����r]��}GJG[]�G�e/S�%�Xކ(��S�^����Iʖ�rJ�d���ތ�+kkk1�U\Z�q�-4�=}[�ܷ<5^��O��L��ʉ��Ǡ-���閲��� J©I���9;A���D��\Zzs���v;��2��Z��j�f(�(QM2��x�~|�Cy��u������܉ju�\Z���%&��z*Z���Ips���H`�\"��il��q�NA��L��9gH�����m1��s�ǫ^���|4���V�����0��d��|����`b���\'K$�v�\0�Z�`rcj���@�I�����D\"��k���Y\r�:@���H��Gl�1.s~�*��F��0��N�$	UۘZy� �<���s{A̓;�2�l��i��}�$�t�w&�Z��4��\'�������<��AL�\"�\'$b\\���T�蘗��l��4��l#O	1�����mƪ/��\"r%�1�V\Z��bz����꿩9�w����:���>�\0����qt��i%��4��;l)�$�UE-�cBR	y	�d�<)\0�4��.�e\\�f��T��2�a\Z*��_vQ���<!^�ݗ���[��x�)�i4��AK�A\ZlNY����[�\\��%K.�LD\n�~�:�Kg}��]��o�\\9��4�:�{�����%K}�G-h�޳�]��iS9�\r� Ϻ��M�pO�&���!��6��+&r\nIf6]��,U��4W�Ұ����τ�������x�߻2�Z<+G��ߣ���3�]��%�\n�G���1b{IcC����sR���\04N��y�9�-��ݣ�@��w�b�b3���{b�������䮽���o�t��&^L�D�d>���q�KnSZ?���6P1���jٙ��˖,�Ɏ\0fe��n�?:�v|�s.�_�����)<�r���X�<0�H�*.�T�W�OE���}!�fm���afre/bn��^�8t�#�ҧ|���NY����=g�Q����R<����V\'�t˲����xT�<Ļ>��5��*<��X�	�L�PR5	Mfl�,��r��f�n#���O�4��_/}������]��$��3��C�]��I��5��l���y�4HN���N8��⼏�f\'Y�4���Y��ٓd<;�*>*�����{7變Êț��7s���d])$s�0y<Sۅ�rG&⧐!�nzhY�_��W�3o#�����%��7]����d��@���c�ֻ4Q\'��(��G��DR�f̆.��{!����������&��$l\rYڎ�Y��gge���pt�D|ၛ#�r�u��G]�����J$�\r�x�9�}!�RW�ҋ�~J�<V\n��8��csP1�ۜio��Uxʶ�����4�vE�7����l����r��B��ы=�1{����-ͮ�I�arј.�\'HV�o�˵ҍO�}v��[��&�Q��S�~���둫��L\n�\0���^���K+��=Ob��S#$2�)P�B�<��kf��Ʋm4�Ac����/����5��;o�ͭŨ���Q\0S��+M.�z��ь���>�m��\Z\"}řy���%��\0��|��3�\Z��݊W^{v&0Z�V{�x����+_��\Z�y�/\0���ݐ҈��\'UI	F�P�ĉ�O�$��\nS�M�rg:K�����\\Һ��C�o�G�|��]���>�=w��\\-�i�\"��9y�x��&�<��Y�B^0� ��s�\\[k�^�u���Z�]��љO�Q���{���v@��py��rK�P�~)��)_���G�Iz�!�\'�8.�7	��f �9;O��fP��E���p�ō�����!>��{bn����t�ޏ^ûo�m�����Il��$�m�B{�T�=d��hǙp㺜�U�����bq���yW��ގ/�}�Dg6<*\0����z��wp�@��H2�l�f�3G�\">5pI@���K��D��y^�X͐�|��L�K�ϙ�X\ZgGz�q�{n.�|�g:��-�}�O�W��i>\'���k?��\'cSG��U�	�|=��Q����CJCO�;{Ɇ� ���2F^j���>y���8���dH�<��w}����%\0�HSG5�ؐD�)�9��{�R�x>%,!+O���h����E���k%x8K[���$p�>��k�J�F�ý�O}aOԚs�V�_ܝ�����8��k�q�X,4l��Z�-\'2֫.�k��nL�R-DP���\0��m�\r�O�))N=AhV���F|hw��!~8���g�������$��L^��g��D�)�f�TlS��a&׉W�p��2�UoZ��^�<�ꠔ#c�F=���G\n���8|t-��Zj�<�/�S������k�pj��$�o �\n��ܢ��K����Q\"�[��vVnEx��Ѿ�	I䝛�b߱3;�~�rߡ}q��;q���\n(R+��Fs+�8-�XҪ\0���gi���Y�?)y<�B���,�\0%�[AT�7ڼ�n��\0��,��{8���7�h8�v[f�$P�\n`�c���q��ۣ�\'S��>�����u��pK��4�!���Ls�`�\0���H�2����#w8��ݴ��=C��>���^�scJ�L!��KȨ���M��&�bM:�ˣi\\�m���\0ăY���r�3qfzI��]+�6���q���3_܃�h��Q»�&P�6�6F�Ь�ʧ?��oIs�M�h�&�ڤ\0j�Fd���ʐm���\r9����m׸�57-��P8�\0y��sM\Z�>Y��f�\ZNg/щӴ,ǒ�6g�\n\0���5�ys��<���:�ޫD��g��g��3#7���ӹ\Zn�{O��jX�V�Y�U�ЬQ6��1��hWc��/F���b��wB��{\r�J�*�g�Bh?�$f!d���/��\0�|/ePi��\'��G��T8�\0�Yw��!-�8����\0���\\�.�$��ǤdK��<yM��,��ܦ�d(qn���qvu���l��\'�7���8�y�g��{�Ǧ-�M����q��K_���j�B�����K7���	L-M�	�DSkHZ���`3i/%6J�͂mLd��uN5�|Od@ۯD+v9s�N�.@ ��`%�߲˧�i�u:�����)/�o���l���I���QM3�45�$�8+A�l�	�YK 8��N���\r3��?�ͷ>M��J1�4�\\\\\'��D\'hW���E.��j�bx��X��h:\r\0ٶ~��V� Ҝ�ی�K�N[.,�[���!�×��*~=����%����R�¾���z:(�5�`i\"8����ƕ��9��-�)�LO����R�8�Q�%u�W�l���!�l���`�9v0�>��?���c��=n��Pl޲D{�e��pK�	��ȿ�ھ*�\08��{n�ƽ�D:���&�Ҙ���w��h��^��ƶ��Wi$ve�Zp%z=��ؙfg ��o�0��EJq�æ��ǐ&N d|9�y%JH[�����k�d��ibzb�rd21�`0�E�L��;	+�a��6B��GO���?�=����\\��6Ŵ՟ȵ��s�с����I-*G����ͷ��Ӂ�ۣ*\0�2m���A�YC�V��e��Tܻ�؂m˃a�pPkֺ�7�U�����	���)�/�{$!�B_���9���$EnD���x����F4װ�I\\\na-�������s�qH&;-�߻8���,3s.��>wK|�3�E_��w��6 q���GcN�ڵ-������o����\\?q$�z3�z7��L�Wl\ZW_�4�\r6�g;��K�a��7\"������a�%TO8k\0�}�@���I�!w���\"w��B_@�$�K06�EH|H+���u�e\Z.dY&�8���)@����3�&\rd#hʙ�_���y|���0~�.�\\qy���I���(K���b���[�~��z3�E�k�����h����]�h��\Z�	�s��F�Q\"�ل�H�%[�ەOasOAHĘDG�����y����i�����}�	=��̮�$Spd7V\"�d�\'�K(�=�l�h�\Z�l�����lJ�t*��,&�U�_Ry�Q����q>��[�]�?:�[(Y��Y\n͜�T�ɸM{��ۄ�\n��Lo��b\\�:\ZC�j�6=~í��r2�\r��e:Dfa�4+�O��Ӈ�Kh��A�F�K�5�c�Q|�`��=�5�|�/��HgL+3�_��}��.���,]	�X���]~�ADDf1�@+�8]!�O�x�h���=J�p�ڄc�{ϱ}1�>�oy����z��7�8��hL�\Z$J��!Z���i�+>�SԽ�+[&e��Z��V=�>��#Z�J�\r&9�DŐ�P{XV\n�	�n6Q�R��{N�5x���8>}ϙ�`zV\0���{n�h�������4��ȏ&��M�\'/��*j����.�{Ll�ԩq�I�$���H �%,&˝���g�LJް��w`�4�����q���/Y�����-����2q�\\����zY�\nC��o:���o�\Z6ߨǡo�ھ�(�2�>檍M,�*�Ey�O�D��b?/:� +i]S���w��y�����h�r!H2!�́A�T�M�򹇞Ϻz\r{� 1΍�e��\"�\r����[�\rh���iއŖc{T��^������[2��\\�W�����g�{�����9dzA\"2��@��Is�����v|\0�*����y��ͽQ����X�y]�:�n�����5�Ť��*�$4f���]ho�5\0����ckס��)UPJ���q>����5��KfL쾈�%���$�<H\r��*��xVNI�[�A�J�9=�\0I�6Z��F�=.�8~�u���>qW\\pQ\'��9ɐ� �e5K��t6>��a�����u1��M\0I�n�jljV�w���}0��M�\0���E��\Za��Wگ�J�O���u�g�H����$�z���C�w���mڴ)2��`0@y��;/)3�f��#�4�1��$)�Y��p���,\'ik8��\\˓�N\rv*nvK�3n<�[���ݳ�zƹ>z�����=q�s���8_�RnI�l� 螽X	���\0j�g:����ѩ��Q�������\\ۯ����� �5�8/Șn�Qfv��_�8��8�ڏ�����\n@>tǗ\"����9�����\r�C�qG�/�f�W�Z��K��\'�[�4�a��(d��TҖ,D�oZ�܃ݓq���q&��?������1��1{�Q��k��j�����fGN9��S��Z&\"��23ZeB96y�M������[���0��iж�˲�&�� 6�� ���L\'��8p�:+\0�}?ή�$��g����(�7�S�$�K��������:[��T!oFK4�L�_e���H\ZPW$av�rX�C*�#�.���:ϥ��/�\'��b~��HQ���<J���P��t0�}���LͿ@1].��J|!4��\r\Zo�t�$\0q,��;�\0B7_K �qf7oi?��lj\Z|�D�d��X˃n��vy�B��E��V�(��ѧϟ���t�@�8��%Ɍx^��=�2�(q��C�\"\r>�[BeZ�,�mu\Z�x�d�qh9�;w�?��7Ď�wF\rQ��X�p#��5t��$di;6A���xqne\Z��$�D�y\\�T$�S�/Ԣ��P������H\"mF,�Sm��=�h\n�l����G\\��z9y����v�������A\Z�d^���G^V�&1����S[�4*�U��!�Q��T+k��=HMC�9���X�%�JH�3�F汙9H�&�H���x�]��U��XN���_��8��D��5� �]L~�ùSj���C	�fU�.]�ɅP��B�J�q\r�D��\\#�Aw��T���^�|��/�͓�Qm���U~�X�pf�\r�/�_6�j]l3���N����M/r�=��Xs:2��h$����@��\'���:�c�9����h@A�\0�̜��-WFtO�$T����=-\r`\n�LoeW\rv���9����-�ޒf-n�sgܺ�n3=��o�\'��_�Ņm9�w?�F\n�߉�0�4v�g튒�X%�M��i�I��-����C�1\\4��?q _=2���i�f�9ZC�8j��F`oY6?�eۻ�}]��O&��`��h8|�h2Zu�W��T���R��0�Ϝ�~��S%k�@P�H���<Wc�_�W�(�\n`�^��b�1�_���H�D���.gJ�!�����m�{O���{��lt6î}��~�w���(Z��F5�Hw_n�j��7�!�N��QS�)%es4]���55���:��?ؖ�-MC#��=�\0�A,ֻq��b~�tVӡ�&��Z���VP��˦��\'c�K�o����l��\Z�ՙ�� �����^n�[.�R��F�g���6��#R�H��\n�`�4�,O\"����v	���Y�dJ��u!p�$ޝ���������㍇��i�����_��\0������|{:�N푒Y&�ה͒z�䟙V\n�(T�\n�����Is��_���w�	���b�q�s1�oF�ֻ�17�6�%��1l�pN	քv2��4\Z�Yu�m_��h����Hؿܼ��ȩ�����\'sQ��oph���n$yr�3�8��4)it�R)\0�)+l?��)Pf�����>��m|�Q��Ll~�	�n�[��b���������ėE�}�ñ9��|�֥?%\'�n���K\'�HO�ل�b�g;�JB��6��8��\\�\0-QK�@N������h�_�_A�O��JSO���V�\\-���/�ആ�_�����r�v��4W]�!�dj�Z�N�ɩJ���J\Z�\Z�x����Ē�����6�8D��`fw#@J�I��|�E{*��<b��Ո��8�v��Iqv�$<t2���\rа�cvx^���YPi��\\�j{�Gӳ���Ҟ�\rMmKS��؈D�����fL��0��6F���8��X���0��._���*�S�2�7=mS*����J��5<�az�3�Uz�;U�G�5- ��*�_�\Z%ʱm���R��ٕ+�\r	�N%R��i7�q��&�|�M�-���\rMV{B,�x�g�`Y�V;��pݻK�c$����������z�V�1��پ�A�M햎vT�nh����0����3�k�g&�&��k]GW�jĖ^FN����\Z�k~Ga5Ѥ[��v;���X��r�o���ŭ���;���)4��|�֦F�[Z!�9x�3v�N�m ��e�<�ѩ�ȸLT��+!|Vi��.� z~�P�7�\0�XF6q桁L��!	�\Z��`���ͯzW�m�)����r\ZC�d�}�K���cc�p�������ܰ�K0f�#T���k04���\'�@P�����u�m��X핦�P&2�\\U$zv���ٴ��IW�5�D�JuA5\rP&�hvW���l�g�������(���\r#OP���娃�;�!�L���O����L�!!}x\ZM�S!{��d��Gj�T�^#��T�q,xLHC���Q�g#x�#y,Z5�y�F����nE@)��Sj��-ۼ-n����?����p�m�~�Zسs�O�3�`Z�A���4��%_��U\"�G�Hs,�5��,��az�3gj��ɕS�l/�T+N�Ї�5��pp�QkEu��{��|)��v9�v��<�	X�ǡMz�� \'r/j�4�Ir���h�@ �)��P��$E8ݧ���J㩼�Ǥ�4�F��e�-=����Uk�������P�U�d\n#�ϡ\\�iTsԸS��wݒ=s�s�߻6�ٵ��0z\ZB?b;?hTq�}�Iԡ��c�q�7�3r��%�ǘe��	����2U���a6�I5��5�r�qh�:`H2����ֹ�׏c{vGc����E3�u5��]�����5{mN5X���\r>�]ԦO�ߞ�ax����>��3)^��<���x�K�2�F\'x�������U��\'r��)Z�<���fOn1o��{٨���ˁG��sg�����fs��a0�\'?sw|�����-(e��#�F`RTs6��_AC5��6&Xr�\\�7i��l�P�{i��ƥPK�&\r[S;��qs��c��,�T��4����	`e|�[�pY��7`x��2��=�a�&�=(���};�FÇJ\0@0v.�\"&�}��C��\\��ԯ�����B�E7M/�N��Gڬ��xvܛ;CS3�y�i�����J�Q��oT�UK��%6W��-�wMs�_A\Z��C7�7�𛢾T���:t�.�ViA;������\r�$��es �E��I{��\\�1��$=���u7� ����N�*��7�KAs�E���h�hy5Nܷ���˽�E*�4�u��َ�9F\"��cE>:����C�c�E�xH���!6B-\'áKdf��ٖ|�3\"O6�/%��j)(qL�u�l�\"i<����X�u鬓/�F\0A�;�g� iė�g�!�Ra�~��J�_ރH�ҙ��wߟj�|����ߋg?�Y��BC�z���`���Y晡��\n\'s}4<<���v*B�4�l��<!2�k��	�L�LO�C��.���H\rzJ�~����r��S&�=������ыAcC\Z������3���K�D��BmX�E���osF�m�ā��F�.̧R	co&�S��V�6�m��V�Wj�.c\'��!��� 8l$/(����jo�O%�@�U}��B>.��k�pIkH��A� S\\rq��[�S|����G��������b�o�vNr8��#A3��1�N\rQ��+�E/=G��߀�M`RG���\0��L���P4�Z�\r_��#�#���s4�0ZW���#�-ڥ\r��jJ�Zm=\Z�=��+Q?|�om��c�;��s�lB��TG�8�x�K�S9�a���=�pfG�D\'\Z�&�yet2�x5émV��\0�\Z��cE���\rbҩo1rb�H<,�|*��`n�Y�?v5\n.���N\0%\r������3[a@���Vދ\Z��ܒ%�aH|&��\'�Ҏ�ѯ�#��qBj��<h2��m�ԥ���Y�t�3k�7����:�$�4�#�M�� �K�zٱi_*��:R>6�=Qۧ�G#5\Zqr�Dt���&&����J�+L.��O[tG�k\nC�V4�Ns��H����XGEJ Ux�~S�hɥI�=��Z��	��0y�r��^5���DO!:ME�j|\n�3*���dSZbFd�y2�~��!,�|�a}J�\\ ��z�a��J��y�S�g^�3q���?&\"�~�?~]��S�x�s��^�3N?[�����#�8��SLj�q!�˝�ٝ�t{���	`l�U��tE9�>j�\nq���M�8�P�@O`��W&��f3�^Q��p�\'�?��ci�ƒ?l�aZ�Nso��,���~2���;�?�.����H�T��%:�I��xn��N|pA �w�����+�I{���W�U�%�\r���f�G-f���@Ð��0�����\r��Zh�}���@?��o�~���^\Z�ǎG���Qxf_�������t�JHӉ͔���H��V�uʝO5�r�`ZMP)#�D3k\n�,ضQ�\0�z�sr�,Ba&e3Bj�ݎ��c1\\Y�Nbs��z���C}�_�2��ٮ���9kuZ�,vF���j2Ur�w�����C���9��i�N�!8�Gd@��vQ`��j�S�c�z�Bh�_��i�	VM±�ld,�㣨i8��9��Ɔdo���\Z���b9�\"���y1���Zn����7�߲/^xշ���~4�\ZuG`�8�����Ԗ�\n�B�)�3ȴӠc�&d8��t�������L��E�!8(4�3Bj�6X���,c�ɝ=P��e�਷�uCp8s�$;X*�95uN��~�Y�ފŖ&��\r��NS�����%G	i\n<a2��t4�c&)��^	\n�I��\"]�APK�̹q,�dp�W��(9HŹ̠d,`48�\0�>yM��ҋ:&�L9�$���(�{�������\"�:|n.��#?{u��=�q�3��_�\n��8�v��0���E�O%�5��6��\0Sg�n��*�\n1��|���{�����z�פ\Z����4J�s�O���-���V\"�?ɶ8�w_��D��P�ȅ�M?�L��UƖŇ��4�INk8x�D��F�x������ (6:��%��%���A�d��(y>�3H$��\rq�mX4�s���tAr�#�(�)oL�I�G(�*#��K���\nҊkv���^�Z�\'�(�ώxſ�^<WB���q�����Ў�X�Y��;������*�����H�B���(��\0#�mr�3y�\\�#��N�A�&�Ƥ�`Pk\0��-�me~m]E�K�|+�@w��{�k���ʉ�t�~u󛷑�G����!��-�x���3��SN=��;�ƚ��e�Yς�\'%��8N>7�Fb��Fy8j�ip��h�*r�A�S����Yħc��I�ɿ`IAjs�?_�!{���.J��W�\'�\\���:��?,-������s @�������>x(�[v�l<!`p�S�����L�6����͗�8Pq<�yL��4��T��Ԥj���@#�N���C@2��JA�&8���&Qna�&�*c|���mEYS�Msw`��h��n?�8����\'�6,�X%�1�F���gNC�\Z�?h�8�\'{(T��L���J�VD��	< �t~�н��QN�h	\n�l�i�%e�w����i�y���<���E)}��ɕ=_y����x�7H��<Tr>Zj��n�i���vu��gƱe�֨7Ѭ7�a\'H%�˂����gdFGyRW�^���P�b���l�~���n�\Z����5�C5�Z��w(x`\n-����\r|�p��$�;$��ӳ�����T_������r���`%�oфh�:i4]Y~Sk�J�� N{8�~2V�����O]9R�@�ͨ��`��!^u����A&Nm➝Yl3�ˁ(��]��ǩ��y�_� M1\ZÁD%a��	FSa�ټ֓r��J��g�m��\'�w�����p�=�������lo\\�sS���yV<�m@����Zmr�Ƒl�9h�$��{��T<�/9�ٛʘ�wI3Jf�4��3������a��XlكU@���n3\r���F�ִ�>I��silw�\0�b����}I�Ө����!i�8�Z�x��6e�� {���S6�ն��[\'M0��n��4(�1�%�%�z��J�%�5�6� %���[W���x_��l46}\r�㽳�����v���HV��弑���9-F����U�6�q�3����WX���>x0�燐���jEg�40�����)�m^�����5�4K\\�ȹR<�b@_��\\����k��g� ���cv��|�����|�Sʽ�̉W�f�b�IJɞM�C�1~EN\n���D����\ni� �(�՜�p���:�5���x�g`�`�N{Xhv��0��l<Q�foEk���2��O�p�.S@��)af�1�L;������ HD��Zb\n���1����Q��\0��D �y$�4(�snbS/��S���Y�������9�ٿ�;����������Tv���y����LA\'\0d�ʓ�JN����	���ࡁ�#v�\"�id}}3�7�X�è���Gh\n5�m1�/�I|�1��@�i%�&���~e@Ѝ*P��.H9iY�-���hP���\n*����S���XY>���\0*�y�/e�A�_�K��x��\\=�a�Q�74����C�l01�_�*�9��\\:;V��jRY��Ep�u�S�g^�f:��+h	n��G͑�>�SL�-{���浨��eo�����>9]?J)�1Zd!�+�*kV��_�x�[n��x1��LҊ�uj�\Z���A��I<J�PW_�Mm�y<�sf��O�X��IA崑)mԶ�ATmS�a��58iv9`8r�r�Z�N��&��;m>��4�\'�.+H�j��Y�Y�cF%($��qj�����}�\Z���|lZ8�c �3�z�)h�ѐEI�NcH=�@d�֔p�I���ƹOp��zn�X�O1�BK�F�xY�	i5{�<�E�U���}��L�T:�����f\\����4h�_z�:���}g�Y���W�K~�w��wy��\n�7A�ua3Eٯ)C}$�d�\0���Ab��F#�1I��/-Jf�̯�6Ƅ\Z�I\0�����\0�1pM\\��mnSX��l��&�=r�1�[j��0�U�Z$r�\\-��\0�V��&�X�yj��J���Ͻte{��q�Î�-q�`)\"?�!�SoK�Q�|H�d�$ ?/)X�ࡅ��6���b�qͽifǘW���Y��Zzin��r0|��r��+���=Hg�(Y�׌�30M/6��P�s�ؿv(���d>3�W^}s��/���Ucn�obXsP\r@�4cҤ-4�\'RJX�Q4H�|X�鯌��s֜���	5��\nL�q�*�\r95�&��IŽ�v�i\"?,H?�&-K/`��Hk�P(o~�E,�4ҷ��)[��؋U��ڪJ{�#�.��3>�������PG����)�3ہ��(6$�9������)�e�am+yQ$x�{ӥ͟�+�)�=�98��͎a�|���p�TJF��T��+�q=_��:��a���۠��=�X��T�ԛi�����kS����\r��/��o�k�zm�殈��|�a��D���;jf `��1�S�J�����UY4�0.4<\n�Hտ@K�l\n)Q�n��6�Z7��M�9&s{�R�pB�TH��5�=�$ѩ\"X7�x%w�\"�\\(�6���|�ݼk��tә��2��:Ỿ����^���x lS�E%#���O�&��Bzvnƛ���J�L;e��~������-��U�l�QH�<f�)T<i���F������ex�l<6�R�Y9֫�3��X���Zq߃wſz�ofU�����?�|۫�?Ҏ�w��\\�|��5̑R����ya�$!�ˮm�s�GVR;�X2t��J�G�|*%<e�Wp4�l�m\'}\0�s�(9�r<ZG���단���=g�����qQ�i%)�1M��p�j���	����n~yjh^��G���\Ze=����w&�4=#aia1~�_�QN��	�i$\ZN$ñI�SU�O�sF3����ؐSB\'�����^MC�y5����l��h_W�-��)(}\r��gCy>�2ż�mD�93@����eZ-�����w�o�o_|�K��|=&Zb�K}�L.�%���>��F��94M퉂�k�#v�*�+(3	g(i�����=�a\"�-h���n�J�0LR��5h���@�W󙥵4�~6��0}�Q�@Bz{���^\0�ppTh	,�f[v6Xa��\\�ި�\\��ꛌ~���&�yM�3\nW����\'>%~�[~<���9w_���n2��̚J\r$OdKB��A��\Z��ƛf t	Ɨ��\Z�{T�@&��\0!��kOS���4�L�̶\\z(���>�s�+�ө��r�fӦ������_�k����p�\r{�k��ď���c�x�fk4�6�@�<.�MFD���y���N�y�Ǭ�J�#W������i�&M��t!�gP[�i6�x��2����Ch�{�_�\0T�fC)�x~�|X���x�Y�i�P<�c��<V\n`I����N�t@0t��5p4F�a#?����g*�Q����Zd�\Z��e$�2�8�\0▌%�}l=����[��5u�ڌ ��^4/�RO�˩���\r-bO.B���g�@�u\"�ݛ�&�e�g<�{L��>0�\r)���\"��Ҩ�[>��������ֿ����_��8�ڌ��/Lb�������r�==�\"8��3�M���W�Zd�S�[O�)ҹ6��R��c�d�@�=�$N�!H��8\0��\0�U�>�maY��f��=��\0ދ���=��T���z���&ʾ�}\'u?�yr9��zҺ��Q��\\��ә\n�\'9ca��㧿��1�� �$q����!SB}\nZN�9�e{.��nCƱ��D%e:�O�l�4���O��)�0����Kyܲ̒i���g�Y�U�E���@d�Ars�L�iǮC���~�O����a߃���|4~�築���T��sQo8�[	�~S\r���t������T�@.z��|W�+�s�\\	bC�jh�<�~S2.����H�,Ay�[?C�h��g�j�>r��&KQ���u�g�Krg��f�$�Ȝ�Y��V��|���Y�G�+W<A`��1/�O��u���8����ጅ�ΙNR������ѯ��1��MQ�1&�?�2OZ\0B���h�|C������=z�f_6�\r:6��RZ�V�aoKy�9A_�.Y�VGч���\\����Wj�䀗����L�څz��A��*e\'-�E}l�!.�$���q�������x�-��?���C��}�_�t0n�c5:�lss��e�6�!�tq4��*��e9�����G�	[�8�r�pd\Z��iJ�K�9��d���J�W}|�s{�t�Ӭ2� 7�iq�H��A�i=&˞��0�uf�`�\\0�;�i�0ٽ�s�\n���3��\n�P��:��׾�X��S.X�K6��)&�P�E��������x�S�w��n�Ф5�!m�j\"LF<,������!�kX@e3dcx]��|)bN�8e���?�c�dڌ&m��t�g���0&1�uJppm\n����5t�,U@�@� 5���J�=��ķ��E�a{���|io����z�\'�}�X�bz�00X�<9Ɛ՞�p���s��l9��y��A���資�z�%���FHi.M4���@H�A�!�8Hj}he����Jפ�g\']�k��d.��PP�<���9\0HSk\n���$�mN:|�:������m�c}���?p�B��i;�g*��>��	�߿7^��_�O���g�w\re�\"Jw���ƫaB�܌�O��ᜲmM�����2x�?Af&?-���\Z*X�oØΕ�m�\\�Y��\"�?�*e�,�\\�.�%H��b2�ʉ���ޫ\"��QG��Ť���q\\����wGwy1v����B�Hs|y��NJx5��a�ee�n�����>�QI���T1^A��i\Z��Q_���zg�̮[γ�NP���h9`N��4�x��ܳ�{�o}��]��2v��co[*��)�\\`#/�Ƨ֠����%_���s���� m�?�+�NZ�xi�S�G�vyڳ+>�O�*�<�]���\n�gn�+~�w�\Zo������s<�-��2#���`0e�nq��]���g��5�xM�ى6�\Z [V���O��Hb[�ֱ�m:�c~��4�Js�s3��Yr�M��]p\0_A��щ�����hW�6i�ʦ�ǀ�z)�}�N�Zi\'��FA\'�YZ�s�_E�eϒ4=,v\nr�7x��\0PX�(5�څc:�-ƚTj\Z����CX�W@���y�d�����ʝ���E�a�#W�1\"�3����)_��5�`�@*iJw.q⦎�>�D��+�ؕ��d��q�|g�\Z�g*�u�Hݛ��/���to��n�q�$5QpQ:kj��Ԃ���4 ��o��-�MSb�G�a|��6��eRd�HL��u���(�<~�X-ez$g�[�y�L���r�\r<YIi�yh�~�q{4�9ѩ?)6W�7�zus�)J�*�<$l��š�#������I�u�03l�%P���{>+W\n3*LH�R�\0�F\r�0��C[���&�\Z\"p\0�q�����(MS^��,n\r�)H�\"Z���!#���e(�Y\'�>bavkX�C6������QØ��y�nҠ�[QkVb}ԍ�%ƞ\'?1�Z�Ż��M�`8�\0����{{��׼!�\\�����_�S�T��B�D�FRRf��ɴѤL*�mS��q|בI���Zfڰ���)U��R�D桁D0�Uʵ���k�6�������&�M�ƎX�m����X���L.�.��`v����f�iB�ޅh��y>Z:�1���K(q弤ɁV������K\'�?��ap��8V�\\��-RsB��0$��9\0�.�OQ�B���R%i+�I=n���u����f�үT%-�fL�>�nZۺ�Yɱ&W��%�֛�I�:���+Sݭ�8p�e�o�����f��dx�\0����㟹#^��_���-:싓�#�>9\Zlx��H�q{^3��5=�6R9SJ�(׸rj�צRVj�0\Z��B2%�a�\\��t��ś�N�<<?�������b�>��6 ����\Z��&\0rA4��`�Q��d-�V�h�̚�@ͩ�B�^;MIk����u�V���\"ȓ��3����s�	�,\\��O�I��\'�(ŴR�H��sSH�z����ђG\'�i��Z�%�[-�Ejcrf�B�4�(������\'B(�8�%\0��\Z4��]�.M16��80��z��\\��8B���g�o����m����G\r ����ϯ|4��f4������~g��n��h�z�T3���f��v\':pj��Ԃ��I��^\Z ��lb�?l�e�V4���5u�.�L�X�:�e�cK�UvF+�\0E�vq�F�)=��r�@9H�-=���X�*�5�e��\0�Le��y���2��s�ݴ�}]����c/��(�X^���Y�þ��L<AC��ܪ��w������M���o�M�%�g}	�22�����WI��k�4�`�쀑����_�MjX!�8Wc�y�F)i1�-cRGs�\'�rt5����#o����+άs>�:@VW��kw�k�t{�v`=v�F|B��9���q�1t�фs�qe\ra�E��eOZ�MƑ�|�t�)�=M�M��2�L+ �i�:�cl�ZlA�o�:�@��)j�����\"��}�F���5�Ķ\\��a}�Џ�9\rDf��`h�Rw`H�B�S�읒!)\'����@���#pRqJ�a�|�KP	L(�%���KN��\0�;5]3�^*�����e1��=y��X��?�!\r\"��.��q`	�ݷ���\'Eq�}>6��}��B���5�L~n���Ǡ�+�XH\"*�صo%.�1��_I�\\��{�<�r6£�Y��\'�_z������ر�B�1�r���2�����*��$tI@�����Aaz%G�+��??��`1��@\Z���U]�ƁQ��R\0��X~���t؛�{�\\�b�P\Z9���#vs�Z�]���!����^&4��\'�IO��Y��V�)�+\ZJfSs�|V�9�-��U<��?���v4X\']�R������i)s�\r�ԏTnSZ����L&s�g\r�q��J��ײ�\'}\n��u;���lʈ���y%=,�4U;&ʸ�Z����,��˫	��~۳�k��(��?𜹩�Q8g\0b��\'n�׾�K��c_��icGT����g�;�MÒGVN	(3��J�Qư1I�,�d8�-~���H\'%����@�aHu���Y\Z�F���j2Zm�L�q�#}$�ܔ{M�$�L�9#zZ^0r�\0��w��2�	�\'���Q[(��P2;`��$S��XF��goY�! �〟�LH���$^�����i=���2��C���Tl�Sd62������Vf���+]��LN���T&�T����,����=r<6/L�۾�+ⲝs���Ը��-�꬇s\n ��~�x��?�b/�m�QaLI/3)��N�4�9<�m�4����gc��n]�e��HK\Z%K�8�SG�ȑ��c�rn�,�\n�xc��@����i>�I���ƽUR��_5��#��&@�f�,��8�^סFch�����pK�AR���m�\n�L�#(�\'h��Q�0��Y����U�(GRSHj\'�Ckkk|j������c�X��\r}\0&T���?JY�B�W&0}{9iS��ce@-9��z��w?#���,vn;3�1�e�9Í��7�����?6m�(��0�\\�3�o��P3�G	�r����̦��!�ـ��f�̚��H$$r���+4IlzYA��t�Q�9�S�X�#*��*%28K��Z0�پ�U�d2}ɑqY�]��sIT�j�K䨷��c\Z�	��9<O3*M-v�ӄ�A׼����M�t?�Q��.�2�]��\'1�S�=��P�5�N���*��-�ך4�Z�����T.�m�1����o������+��^����>=^�UWH�G=��\01�?�?���w��zc��XZZ��eː͕fm�ݍ6}MQ��x���A�}�%��M�������%�Lr*Lo�1J�<+y���R@�d��2\"�p�ya�\"�5?fi�s\rDȀ����^0tΝ�	|&���&{��l郙_Ph�zi 複��7�͹&���O�.j��/����cAÓ؝�\0H�J\Z��.���X��\n�l��r�QU`!��������sG#���__vY%��O��;/HҜ��,���?����q���@��c�Ft�=?4ȸ	@�F0\rO�0���i5l|Y!��8ٚ�ߒ�a�ᔁq�))��,�4M2��J���e�l%eW�c#ɘ�8K@�υd�b:��D��:_������(\0�)��YOP�J�;*�w\n�/#��pS�x�8�&�ir���<��E��	�����6�8��1����yb�4S�C\0�N��k8hF�َQ}��%O��]ގ�|��Z�s.��\01����Ǿ�?��=���BF����F�y�����4i.s5W��aU32�ד�\r6�,�Φ���\'y�1<V��O�!Q�RN���#�y�r���S!�/���Sꋒ�O�=\n@��P��_��	i �\0�e�,c%���f�U#^�j��IB��t0A��gU�ٸ�����pa�KT	\n�\ZLlU{�RH	�qi�m����K�L���v�Kp��J|��?+:me��p^\0�pߞc��w����}��h#Dm���U�?�c� &S�����(��_�Ӥ�BJHN�� �r, �b�B�r�S6�DFd\'��H�� �0���%�d2��}��J�7�6$2�YG2}��)� C4� �E�L�)K��3_���7W����͚�l%�&��ԲN>���W���<�t#�ҷ\0$:�8���A���v��g��[ܿ�a=֗\'���s��)��+�O{���Ư��T��\r@2L�����ox׮���!��smE��W<����9��_Κ��b�Of2�`�-�\Z�d�䡼`��gSv�d�#yl��`BN]�\'ɨr!�Lb�s��m�\\\\�}��� 9��F�\Z�1g�j����\Z\"�%S�Gœ�{?nn�\\ZV��Ϥs���z�|S�@�t��&���=)|�Pj��@���:�VG�)��4��|Y���]�ոh���i���.ŋ��/|�ӳ��%�_\0��O}�����v��?pg���ci�ml�\\F�F#�|��fO�:�!��)ɓ8V�\'[���d<�$qZ��Q�-@D9^`!0��\' <M��a�?�M��j�/!p�&��We��r��ƹb�)�0�ƳɅYp���<|�s���q�z�65r},��4��M�f�y,���@��^�,��ʿO{A05��R����@��S/�0����W^�~��x�S/\n\\��.��\01��������g�;w��+�X�lB��aN��F��cj�S��d�\"3���ʪ$�fL3��P~�\"\02���ؚ�g7��\"�ņ�bd2>�J}����9\0d�bJ���k\0��F���z��y����{Z�r?�d�Hy�g����|��;ie9>��\0 ��N͐N�&��n\\Ô\Z�O��z\r{�p���-ƥ�7�%�⛿����/�l�/7?O�y�&q���}��b��^W�Gga!rΛ�>@q������W�:�2I�#������9��y�LSˈ%M:�	FJ�؞*{��dX�K�dv5�SM���1[�i$�\n@Jֱ�η��ր��g$�[/����.�,��R����i#�G\"u>#Z�c\0��f�jgΪ�A���kF!��h·�N���<��_�mO��/����y�|b<�z�-����g#��\0y(|���-����Z�;��iX��(��+���&�N+���`g9F^J�|#�M��.�d�0\n�\r�Òy�QX����2=[q�en��������:���4�q��� Y.w0�;����ؚX�(R�:XK���)!6�\0 ��~&�Kpx���j\'P��xUg[��q�=���n\\{�z�A��X�|lb�`K;��hs��ʥ���/���[�1��k���c���5>��]���Z����^m�$f]_���/A�)OӤ�����5@���%3\n&ӫ�I2����]���ȟ�4r�|EI�SM(����W�\"���Hj�9(�M�Q>��U\0{��u�d\0\0d~v^�L\0�\0�X�`Ğ�-��Ȟ�PZBm#\nr�\\��v0��j�8܎�כ�Xů讍c���x�R���.��>qK<��;�I�m���<F�c\n W�zL���[NĮ���w:��ؠ�a0_\n���R�^Ϊc�DF��`�6�q��t�a�9�emn�x����/�`b��k�b#iC^w���UJ9Y\\�MB�C���	���WոVOm��������	� QS��Ṳt��:{��#� )���\\ӫ7hĨ�؅=h��\'l����z���/xJ<��gv-�s)<fR�8�~����w���zܻ�Xyp5\ZK���V��	o`ƠYjN����K�,Z�A5M��ki&%@�KD�K����)��~�[�t�@2�4j��@�B\\��ģ\0Ԝ��֏ѥF�\nZ��24�3?�$h\"{�@B�u�n���\0��,\0��l�&��G��ʗ�z$u��ڍ�`]va<i�R����/�o��g�|�3�����+<��P8r�P����g���WW���������v�A\"��qj\r�\0C\'�&�\n\0�\0�ʓ��u_k���j5@j�rΧ\Z%���\'\0jM0�~j?eyܿL��\ZVF2S$�f�\r�㕾��wZd\\����\0�\"y�I�[��l�S�wp���58�7��$6�/�Swl�Zw���όoyюؾ\r����^��jx�\0������x�o�ne[�\r�}Gb�ދ��bt��:�q	���T�0��?H�a��r�*i�%8����{6���.�}�8����e�DE�]^��X \n5���4����\"��q痕�/��Z�e~S�s��1�)��A���z�;/�������67��Yϸ ~���h�|y#��� �p��J�?�����{���-qg�ɀ�����MA��C�J�[M��-d��S�aP�����#�n^7\0@�!=`H_C��#\";2�~���5����H�AJ�Ka����e����P�_�\rc��9�&ټ0�;+�i�||緿 �z���s�97�_�\0����o�+>��[��z7��F���1�Vb��ߢ�gQ�gYW��ap$ocv�$�=T�(��\Z�1��\ZM:�e�E�SM�z�9\n�اfPKP�q�9�)1���.z�B�\0m�B;D}.\\�E�w^�-.�֌����w��/��z�Ry؍�\n\0��zw=����cG\\dak�;\\����q�� ����O��N�xe-�����a󣗚SSMm�d�<l\0#~�T�~�f�\Z ӷH0�I��E�:��<g�\n�Z#\Z�К�Vc.:�j\\���X�V{��r,u*�C��-�e��Y�6\0���^|���篿+:�֌{�V���8v�d�q�N�{��4�4�`cM,��i�)���oaO�����z^i\Z	�l�)`p�-y˖�h�[,�㲝\0 >��O�$^��O�M.��Ng�\0�_!�\\��������\0H����{u�ݹ��`S+����;�6]4P*�&Q�����G�^�J�`ViZ��8~fyY�����x��Ķ��h��p��@�j(Z� Tp 6�96\0�6�#�\r�6�#�\r�l���a a#<B�\0�F��6\0�6�#�\r�l���a a#<B�\0�F��6\0�6�#�\r�l���a a#<B�\0�F��6\0�6�#�\r�l���a a#�OC���\\�ź�$�\0\0\0\0IEND�B`�','PNG','ttpl.png','TTPL','A','268ad49d-3f58-4122-abb7-0c290ce25261','2022-04-05 12:14:50'),('1fc797d2-fa7c-4750-9815-9b7bf4016e1d','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-01 05:07:08','C','Drukair Corporation','N','����\0JFIF\0\0H\0H\0\0��\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0*\0��\0C\0		\n\n\r\n\n	\r��\0C��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0����(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��	���þ����z���j�ܳm��1���l#ַȠ�(��(��(��(��(��(��(��(��(��(��ɏ��{k\Z��L�˥�i�VT@w	=\0�{f�/~-�hG�����`�Y�$�\'fpv��J��\0X�@mcx�\0]�Þ����>\0X����\"�pX{Vʝ�\\��{���t�3�N	X��n;�/J\0�W𵌞�����w�P�,�y��O5���ʹ=S\0duZM�YiV��!�HbDg=\\�?�y��K�uX��!�Mko�7��infP}UD=��Gj�u���@EPEPEPEPEPEPEPEPE��ק�\0)8��<��,\Z�9R(��y�8B~S���\"4Ta�,�h`P+�@��m�[I�mn�mRE�\Z\'�Zܓ�#���3�.p��`�A}{6�筍�B=�nŗ�@�,{g��>nӷ�,|�Gel���/��U�uk��!�fB���Xį��Sh�Y��ޱ�@_�\0\Z��o���sMosq��-綠��Dh�q.��Q��\r3Kԯ�-j�L�����_��E���l�����tb$i�g�X�|<�����#���.Jyr���u�lٸ3#�����!�# Q7f��?������u�u��{�$i�����r�V1&C��l`�\0��?��^3��\ri��A��n#��DV4x,HP	%\\YXӯ�7����ⵙ��\"{�����V\nIb�F���1����	e�V�I5&�ٯSO��B�~��(;c��H\0��ǻ.w�4�㽾��di���(�`�7;q��zr}*����l<�^�P��2�1ټ/;���EJ1�#�01�A�Z��+��rG&Ӄ������GbJ(��(��(��(��(��(��(��(���F�\0Ų�m�t�c� P?�d���p+�|�V^\\�$!^���ڵ���Mwy<V��.�%���s@;��y��ż�moc)Ʌ*\\����E0��#RXr�XG��Mw}���ƅ|������pUC321��B����:���I��\0�q%�I��c��^�ee�m(�r�e��A�HƛY�J�n�5�V���a�� ��x��;)s��F�*�F��\ry$�kX�:����ad���²d�h�H���0a*Į$�sw�ֶ��Mc}�l��8�(D��2��,ycq(a �\nA`��-=����u��B��o.$��xd�.��\r�$$;��z+��[������|<-��Z��q��Li��@�L)� #5�n����M���_$h%\'\nJLm��ٙ7���\n7cs�^���ksc\r�����_�K�\'�xC7���N[�T��M����C�*�0[Z�6��P�^\\�\";\\*�i�s�!\'1� ���\0�S�u�xwR�,᳛�BM5��- )\"�����	+���d��;������q�I\Z�Ӧ�H��0���`���+̥��]��\0d��>�k���-f��6�|�G 黉$��8��^��V�u��E�Z^Fc�3�������A\0�E\\Eظ��U���(\0��(\0��(\0��,�$,{Tl�\0d�t\\	��R�q����\0QE\0QE\0Ts]�o$I$��3l�1���[��X��ڤ�?�F�ڟ�m���Gct�2L\"2}��d��»!lv�h��W��u\\E�V���|؎�9� �(���0S.��w��v54X�.l.���{{�G�\0F��Xa�e,\r�s�O!|W�g�S���\rxx�R���/���.�٧ȅ}���ӵy��m����\\mXӏ��W���=�(��5}���K�Se��7�8AY-���K�ʪ������$b0�\ZY���?r��yڥޠ�~2x�Y	*�\n�we<��Vy�m�i^�_���h��\0�-���?�<�KY��oj���F\0b\"V6v*Q0�m�2O�M�_9�H�ۗl�#���NO�2�7���rDі��b�bhCA�JI�M]?�8�J�Z��W\\��qk�N�i����9�īyu=��˨t�;7���VY�ؤb�V0Ur�Xl\rK�d���V��f������y�1{����m^I�����U��x�}h.%�K�n|��I�~`O;��\\�*F�]֩��h�2\r��p �%w�!KL�7�8\'{�nt\\á���55��8�o��@E��P�8h�0���A��GF���\0��۽�����Kp�MvѬ~R�Y�1q�n\n;�@r2�I�K�y�;	l���m:����q��j�y�\'yb�\0�\0�AT�c�*�X_�\\��v�:x�O�ы[�U��G\n��l\r��ʢ�fN�6g�E��+��7\ZJ����?|W`���i g\09�Kg�M_Ӵ���m�{����B���r��y\0�<�2zf�����X�q��^�Y�X�QEPQ@Gq!�W��ڤ��?;࢟�ǿ�~*�t��<%�=rnm?� k���&%��<n�ݢ���O�q��1�W|*�����uk\n��g�[�V�f�)$yq��wt�+K���\0%_��\0��n�\0�rW���������\Z��B�c�،�����U$����[���UJ�r���L=%ZrI�N2�����>Q���B~Կ�o�mm�Y�-dEp���j	����b������_^~���R�?����\0�k_����7�,p�I��QF]�,K+���Ŏ�X3\0�}���m���s�xW�V�j��(��[H>�ѓ�dC�)�A �$��g��e��V��}������\nf�L��wG\0��=MVy��x/J�kζ���ۓ]��[k�{4��r~:�ka�a�CI]J�区&��{)\'{]4����C�/�)ٯ����Qx�5�\'H�ukX5����X���;��g_�y�F0�CFW/�O��Ŀ�OK���6��j�iou�@��Ib_6M�א߻�d�\'��V}��	׭�ۖ�]�k-��~��sS�p�%/g~k&�m�����}A�����6�Ҥ��Y��1D��!A��\0��W��֟�P߇�v���\\k:��}j����洉�Q�FuD,9P	l`�	�_���~\n�|I�x��H���!�X�Yn\'O%do&�w��q��c 9}��� �j�w^����\\������\'��䫤\Z�|ދw�X�\'U���i��\\/5�K\Z.���\\3�m�lefPwas����M������]\\���H��Q���2��p2���?��Pxw���f���Ļ�u��7ӵ��{�%1<Q�ۊ�$��,f\\���ψ����g]:Hu_iku14�w�B����(�m�`�s�k�C��HҞw�T�}z5�����������ʞ/�>T%��nZ�֋ɦ{v��$�vY/���n�����2K�c�_�rF�/,<�!�7��6\Z��C�ɠ&������Qc�H�`������_\\��ߵ5�����k°�o��w���z���-�,p��fa<����npVRȿ�W�7�?hO�5��e�)\n��������*ǐ��<W�+b������E�-uW����18>/XLL\\\'�J/���{�����d�5��ϫ[�+iS,W�-0v�6��r�`#��Ŗ�q����Pg-\r�d�c��u���!y3�W��ÚU͏�;��W��o�Gu�q��7yv��r��U$B���r���A����W�kW{�b�R�Ū�h�p�5�[�P$ܩ�#�e,��.9��̰�.���TP����v��~H��\"���h`�J���M\"�ӝ��/7��_�����-ż�/��h����^�:W�	mh�|�)=O�{�4-wD��	f���n<��A\"�s��I��:�+ȼ7��I���Z~�&�gyu�a.#����\0���${A\"UgC����ď�(��Z[k:Lw���/N��Q�;C,��W��]�0Cn9�X�>��qP�����-Ϛ����E����;��W����t;(|q�n55�����Xfe�����YxR3������+ú���Oi~�c�ֹ&�\"鷈vY\0��\0���w($n��{�g�s��/�>���Z-��\'�c.�kp]L~�[�G���w`@�Hg�ݟ��g�|U��4˲�j_���6��9��D���y1FA�W��eٮs�VR��\\��m5ףI�?�ߌ�3,�\nx�4�c(��馩�խ�g����?����o��H[X����j�y�o	�<r<�71d� ~S�s�_�z׉|\ro/��=z$��+8$��6UPH��yl�q?6was�|���A~���ú���/<Yx�{�`K;(�\"[��$G�6��<��?�#x��u�j\Z���X�ZS�8��Ѱ��C�8Ƒ3m��հm=��nQ�P����2����Ri_T������N7̳��F�i�Tg(�8�E7ef۵۶��,�Fk�?���R�??h}��\0�_W�.���.���E�&($���VFȌ�Bc$�Tho�*W�/���]ǆo�\\��-?��m���Ԥ�� .	Tݷ���j\\Y��,S�C٩r�_Nk^����C	�R�������:�+�-���Euml}5EQ�ι��?c�Z�\Z�P�����c�eʶ\n���Q^�d��>}���z�(�#�O���\0%_��\0��n�\0�rW�����_����\Z���.�����\0�	��\0��^��\0Z�\0�=�o�k��NF+��\0I���ɰ���u����\n���t?�w\\�%\nڶ�a{\'[���W돉u��Gt��%�>��bFUi�H����~?����h��k=�[��zrarŒ���Y$t#�H�_ƩC���m�K�<c?��r�ʔ������_��­����퇉�/VX�ۘm^��+��>d���B�N2+���q�f�ǯ�P��j�Zn�eq\r�_�o�I����;\0�݆k��[�c7��ٷ�>�_.�G��_��c\r(��tf��/��S�\r�	���]5�W�ۋ��\r�\'߷Z��\0�r���\\�Qn��J�׽�ϰ��L���ޜ��Wv���ӵն>����;ſ�G���V�BkzǊ�%��6�L�e�R^V�l��\0��@��#S����T�������VҴK;MX��b��6��n젂X\"�z�X\"G����<����X#1]I4����Ƕ�ѡ�A`��ES��.[�ه=�k��+����������KB?��c��^�vW������a_��!�e�aWzq�r|��޷�m�l��,�5�,��.��Nv���IJ�VZ4�IvH���#���/��s\Z�l�:}� �|�\\F���k6~b\0��q_�\n���\0E�Σ��kM��+P���5��e��S�g)0yդ��8bd|��f�\0�?F��|F�mn.�4��hc0K�J�(�]�+�^�C�\n���5��l㷾�0�<�א�M�%�l�%dǸ2����J�h҄�1�M��M�|���ҫR>+�ŻJ�W��׾����\'t����:�]K7�sx�$\0$� ���)!8RҘ��c�-^\'�\0U��?�����d�@��?z>�z<�H]��>r�\0^��\0��[���\"ݥéy�#i?z���t�1\"� ��E^H_��\0�ʿ��Y~��0)O/�ؕB���u��Cq�\'�|��:V����|7���\0�3�\0������\0����\0c�i?\r?���N��{�-�M/Nծ-6�)5὾�!8Ϙ|��5ܠ�1�G����F��]�\\־0x��V�L7�����i�Sn�\r��($|�������Oƭz�\0�]�o������^��nu	���F����ܑ�X���|t_�?������ž�?����Դ�[8��6�7�9�u�fQ�n��w���a��~+��\0w��NJ-|u9c�� ���{3����_e����y��Rk�]�疊�jmk�D�.���&��υ-��OGյ�j-��Ac��=��d�ϱa����YB7)���s�;�\n>�x�MŚ����W�x��D��$H�[]�BY�F	l�}!���| �u�-�������F`�X*GR�!<ۋ:�O��\0i�\0~�^\"�����xw�~\Z����[��[��\"`�B?w&}����`+���8\ZY�F&r�Y�Ɲf���g��96�J���O��l��N4�FJUk;���!��]�F)���ω�N?�\0ie����:���Sɾڇ�#`8<��f��,�\'�	��\0x}|E����,˦��o�D��.�z���M���h?i�V����<_4f��̹q|�̐��c�(\0�;x�~�x�������+��\ZA����e�fu@V�ˉC����7���*S̨�+��{�U��]����B�WZ���#����\Z�~��?-d�S��~\Z���q�=16ξdNM�\\:�\0���3_������[��\'���Z6��j�/�5[�;��(���o��-�]q\Zd�2)c_�:�\\��*}(�\0��U�!�^�\0ɥ|L�\0�KU�\0�)���Zp��ل*$�ޏU�~2ԝ>#�gM��Z=f~D�������{�7���ĲG{i�� �ع��xc�N\"�����o�\0�]���#>��|n�~��x�h2޵������i$_��v2�����k,y$���O���|���g%��z�¾�f�L�c����v�v�zl�w贶����Y�O�ƞ]5iE);&����\\�mZڽo�A����S����(��\0���\0���\0�W��\0`���{��s��������/�kC��\0��<#�O��@���K_�h���E��\n쭜I\"���ּ���E�Ʊ�C�K��6s\r�&�6�e��3�=����s�\'b3�5VVK�F/X�6֭Y���Rϲ<g�LV%ҩw��Ii)�&����}!�m�Ҟ���ꚶ�\"Iy{��U�G�rW�\0�RC;�Pz��~\Z�\0�w�����o��\0� ZLt���WQ�r�7�o��#�R�$���ˌ�_���5��&� ��F��F�jCC�+��d��ʣb% �A=�W�x�Ghu|�n����3�k�δ�@�w�*���NxbW��3_7���g6P��)E�.m=�ɨ�mV�z���>__��ζ��%��?�NVN����-\r�+_���Յݽ�p$�A\"��G~zk��w�m?���ª���$Ӥ\n��n� H�Б_�7��^��P��M/P�-���ը��Tq�[�E]�rH��;�+��\0��G��\'�񥯍5ψ1��Iko5���=��2H�?����o\nH�x>#p�36�2�`�o)>i%�p{n�蝏��ϊ09._���j�\\�rժ��\"��6���}}��o��ė��彬Z��V�H��HY>e�Q�(Tn	X$\0�O���U��gI�#_/�SM��Ap�	P�x�J|�4�s���U{��ۏ��.����mR��}�\\đ��nݦ�$�A��f̂����_I�_�Q����n�⨧M5	\"�(ᾎQ�Z0��\\�F�O����1�F\'\n�R�\\Uڷ4������5��0�ڔ��NJN�ߖ:ɮ����GͿ�J����+ū��6�ZӠ���y��$29h��.�dt��\\w�\n���\Z7�|O��\r4__\\�â�е����o��8�~D��&�f|��W���\0��(ԭ��\0�ڟ�m��4�m�ܱD�D�g2)WC�S�r2�ҿn��g��\0�����~2����f;�<���&7[q����l���|���_��xC�?�J�5h�4�$S\\��R|ҿ*KV���zY����N\\eK=��rZ�ɧ�Sq\\��3oD��t��\'�	;k?�XB�����̖ѵǖ�M�/ܶ�(�1��޻x��\0�+���im%��k�f�T�����.�a�\0�/����,��\0}����	���ցi�xcD�T��ե]R��^J�J��#W\0�\"��CÚ�O�o�<ѿi�\0����\\�c�\Z>�mnl��O3\n/$�K����,n���`�T��f��V��Y\Z�eZ.;KK&�m��k���x�?\Z��x֮)J4&����qI$�{�K��Ǉ��L�X�\0�g�oP��Y5�\r�wu`�\r�H���ό�I�*0��C�G�$��O�O�����\r��,��4v���H7,N�#h\"I\"-�.����\0������y<9���i����ۈ���j�]4[�w�Vo2�1 w�6��>��\0����]F��\Z��ị��J��/6Aanӫ2�ŢD�C&M�%A74�<�\r[.�r��oF0�D��|�+�����{X���LN3��Ia�Ns��o%�\'+$��R���k�Я�\0V�=���z5��i���j��tf�e�W�%9Ȑ�$�2���s6Mr��M��3�	�x�H���y%�^���k�,	\0��.�S�\0�@	��x��M��/����-n���E�Tӯ-5��F��h����NYR�G���f��k7�	��\n����Qk�/�.�3{$6�`C�+i@(��ȭ.|Ò䧖�\0ެ{��x���s��|��Z��6�,�^�g��J���p<E�.����NxϙZ6rnW�oތSIE���������K�\0+�����7V[|[s<�N��[�;::�T:�@*FH��?xV�W��Z����L\"IPȱN�)��H��fH�]�w�?%���O_����?�<M�cL������h�i�io.�E\08T���1��N3_O~�?�������Y�G���lڡ�ԭ`�%�������e^L��b���.;(��h�y�%o}9}����;ٴ잆^%q_����|���\\�G�){ͯ��h��j~K�Ǝ���R���I��I�\0����C��}�\0�W�ο�)j���j�s��������g�u�Gj�a���\Zb��c{��L�������O�=-�\0gm{���ͤ��Ɠ{��,�Ix���9�f���ۤ,w>I�4xw¹�U����j.��}���mk-5���+ľ0�3����TrT�T��J�I�7g�����?�Lc���῵�������z&ܹ��z�\'�j�\0�F������R�5�x�I�.m�>�P�c���G!�e ��	�tM���8o�����R�ܒN���m��������Y~}���6�(ݫ]�I�_[{�R�(���B�(���\0m=c¾�\0��xS^�^����^��\r=o\Z�oW2s��-�UA\"����f���\0`�/Z����#x�K�}\"�텕���D�+.�,n�as�z�~j�O�_�L�l�G��,[E�|;q�\\���[Q-ʾ[pUM������s^I��\0Z������N��I��I�\0	�fO%Ƃ�#���\"�v�B�ɓ-���Ml�6��8�-+�N��V�n4���R�j)�%w���^�s�b0\\.�Q����MFUn��ӏ2rk�ij��x��������\0�>k�>�5�|\'?��1cisomz!^�h\Zg`��L�D�9�|��|A�\nn�}:�R�<E��O]�\r�VLYb�En^@��׮��a#b�#���S�8�?[�G�kH�|d�$~��L�k]>��9�B�#�<���K��\'��\0b������\0\Z4�\'^����7���<7��G����\r� ]Mp	7�w2�s�X�A�R����k�1���}���w���wsΗ�l�Ԧ�\'$��)IJ�����+���L����?|H����&����V����G�yN�z��Ii,����L��j�w\n����\0��-�K�.ip�g����G��<s�^�!@�~a���d�/�]g�O��?\n~)|=�,�5����!^_=�Z$sD����%��,X�7aS�`�?�~�?�f��Jk-^�Y$[�7[��m�qK���HM�r~�cђ��j��N6J*���n*j���몒Ӷ�u��)啰�	��N��II��Rz�4pn����ύ�G�`���Q����� �i�eyeg[xu�,Z����2��[y���2è�V���K�d��z����n��At�LF���O�V�Ȍ�\Z>ۈ`p����\ZW���H|{�}I���?�\"�\"M{��v����b1b�\"I�$��T��sZ��lz�>7�|B��	�4��v��\r�C���\0�%2n��!UW|\Z</�Fu\'\ZD�\'e����u\\���+�$���*�^X�N��i�oy���i�t��Q\\���0��}x�����OMc�[��ğًGrl�b��� 6�9��0���_�W�?ڧ�^�.�<���!��Y���զ@���@��1*�?{����u���S��Cgg�;^]^��Mqio �4m�{���#��;�zo����5��>�5���BMÒ賤�v�\Z$�I,�@�K٘HH ؾ���tc>{~��=*Ϟ�����^g�����K��\0��V�Z4�-������З����c�~���hh�)�A�-ݐ�\Z�O���Q���K����1gI&G;�����|e��Ǟ��\0�Ri��ɭi���-�J��\"WIQ�$l�1E�|���K�g��6^:�t�/��jV���`��ү ����/)�U,\0�����\0b/����˯�:�7^��qi�n�����Gq��۲��=�\ZTgu&�ܢ�wSͿ�u�i��j���P��T҄�����I_�Mzݴռ�B���q���$]�vv^8�$��ۤ�=�{�m�}ԉF��2�b�\n\n\n������\ru�\0Gb�^�`ښCm�[���Ф���Eܬ,\nB㐭�~�����}��K��m?�_��\0ۇP�L�h\'iw�h�S��Y$M��P�rB���6����S��m|֚N��McY�yg�uHmɐC�xR�*�L���C�5������,U�Q/3N�pJ{tS����<��YLm��4��s�+�Tn�w%ۭ��a�[�7�~�|G���?i�>!{��[{�Ac�j+�)�34�z��������x;���~���\0�u��\0�;�u/\r��]\r��t緵�p�k�n�$��$\r�\0W�_�dk�~��> xoR��7q�Sq�_c2\rF�\\\n�e\npӍĜs�F+�d�\0�kk�����2x�I��o��8n�N����h�ѿx<�R�a�#|���%��\'j~ےJ���k�զ����	gY?v=�Q���jZrJQ���KN�Z���\0nO���~�x�O���iq�_Fm�N��,��n$\'\r)f�TT�`�*ǹ��ڳ㥍�����_\r&���c����ngq2���A�0+��\0ko�kT����=7O�4�&��#��$���y�ao��cWS�3/�y�b_��\Z���ϋ�3 Җ��G��A���R-�Y��_~\0ޤ�\nĩ�]���Ξ:Uh�4���m�N�t�R���K�m�*��!��¢QJI&��kך\nm��ﭏ0�7���/W����\Z/����+j���yF��A�ϕ�5ݶ$Pˍ�#1S��\0\\���\0�l�7�*�D�5�?��!�A}���Z���X-Ԗ�C��l�P��g8�F޵�\0�y��Oÿ�z%������#ե�&��K����8�Qb�0F�K�����]G�?�;�_>.�����0�a�_��I5ɴ��&K��:�BL�K�Șl�.���6���tp�D�\Z5e4�\'4���~�7��ER����sLV\'�b�Z�\"�>X�u/m.[���V��_U+σ?l�|P����Z�~\r�K�o\\[/�]~��MS]�]�K�y�ǽ��#�FK��d\')_:�K���I�����oj�]��!�[��Ҵ�b��/�+9gyX,~`Wr��#���T1�K�|��d4��u�6���[ݯ��m��R�����X	*2��ʹ��JK��\'.m��[�ڰ�(�����(\0�M�?���p+����ZX\\[蚕��V�\Z�I-Z���1��gVT���v�@RH ������cck��Z��n���;��b�C*���9�5��h�^����������a�#�j0���\n�`\08�~ �Σ�>�K�[�F8�e?g��X�턜9e2�����.¡$��<H�i�o�K�]�B�������L�7�&C���c8ᩪ����{�j���K9ASm��W����s�=\ry��ݞ��j�n����%v��V��qh�C�$.��D=��~/�5�,������]Ao$qO,f0g��߁�6��[w���7���5��p�_ɺ���X�\0���nD�E;K�%T�na�)�1��	�徛��ɨ[HL�b)�*~V0���\n�\06����4��e�;k摶[Ao<,$6�҄S��X$;�$��� V�������w,�Z$Kf��LM���2C�l�O�r���O�4mc[�O��[X� B˷oʡS�9F�J��6I�L�����R�S��l6�:�-�\'�Yv�����*�vH�\0�	�W�����x�Z�����R�\'����D��\0��Y��r�W�e�8f�SҼ��\0��3���}q�-�&�͞���\Zl�,�����\\.F1���b/�\ZMŕ��Y��J�C�E���g�d�%T(>e\0fFb�2ǧx�B���Գ�X��p�</�ʹb6��fe-��W$H�a^��>!ͤ�j��s��s�X��G�Vm��\Z7�\\��2.�W�e���}q�Mv��V�-d�m=����w�*\"�:�F;�m�Tmf#�<)�R�Ş/���ky���F����\r�)%y��rCg�y��<q�\n�^l\Z��oCk�8;bh�۠1�b�\n<���J����1x��Q�,v�m�����S{�#bЃ�̂F,�i�Q\"Q�y�1@\\R�RP�rh�KE\0f��4Q@W\'4�Q@Q@��Y�)����n�k���h��d�\0rX3\0�{f�2�}�}6�Ѵ�u3^@�$vҘ]!�&�/m��\'�I�����(��O����Y��;��xK62ǽʏie��#�q-���Iio5K{�W����h�b@2-��C��9�A1�m��7�ox�K9��d�M�i%0N����4�\"\0F�;�U���Vl�E)h�v/�x�b����I����������Y��\'SL2*J��J�����v25�Zޫ�Ewt��\Z?�n�ݥ+�oyC0�+��\0��4x���Z�n��K<��J)�U�?�G@\\��c��>���6:�-坭�m�g�dS�h�SŴ�bh��{K�>+��ъ���/�0�˅���Ǒ܂�`���bGQ��^5lGm�;���,m���$�����0\\2K�ˑ욿��Q�k�a6�3+d�dF�7�\0�\0�E��\"�e�Hm��g{�Co����@,���[8VA�0?��[��R�r\\+I\"ʋr&3���+�(�\n�<l���`�^�>|E���QǢ�[��ج�>�w�	Y~���cf�����Wh��_��ڊ�M�F�R���)��B����)s�P��۸���q��I�&��&Bb��f�Y摐B�\np^u�e��S�;)���|K�����m.�^\\Mj/V6���S��F�6����	83���ЇJ�&�c�f�E��m�x--^�N[G.���Fm��P�C��Tg\r��_��.t�	閷�}����(����l��3g�H\'�j�LҮ?�ƕzlc�,m��kx�)��HثnQ�L�\Z���ZO���\n�R3Ȣ�Y�����=�^�\ZzHIĆ�Ċ�y-�X�Q���\0aG>���\n?i���\'���Gt��Y���bO\0�\0��b�\0(��\0(��\0(��\0(��\0(��\0+����M����Z�LVE����1p\'��T*C\n�O]\\犼q��F���[��䷑m�F �L���)e�@ ;A�T��.-��?K���[�Ayy!z)���!n\r\"���Ǆ����<�;xK��1}�K�YVy\0Nm��;T��(ܤ����\"ڭ����L�\Z|��(|J��4���9��:��Ö^�hl��ٌ��ZG8˳Y�Y�\'j��B��P)�8���n6i>b������G\0��kQEHf�(���⫏\n�6�e�7���[H��ڡ��p@-�h$`3x�y����,5u�k�Rc�Ctk}2.	_\"4h�#1E���n��z�i�M6K;�#�����㌂#� �A��7�8<1a5����-t��e�wkuW�Ȯ���U�g#$\Z���?�͆���59n��c���d���\rur�HQ��r\n�BC��v$���F=+��q��<��ณκ`�iYWj�URy (�b́���c\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��?��','JPG','drukair.jpg','DCL','A',NULL,NULL),('8e50d60c-f2a9-4316-a5fa-b56950f68bf2','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-01 05:06:30','C','Bhutan Power Corporation','N','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0�X��\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0%\0\0%IR$�\0\0��IDATx^�]�Uն����Ž\\�IQ00P�Tl�n���0A�EE�	��ݧ��?溇g�������M<޳��֌1�*�F���VN<�DTVUb�Ļp�	�S{�+�*ѧ��W~�4z\ZS��\Z�<y2�	�������Ƌ/�L���+��wJYy^y��>z4Z�l�����e�]�U�Vb��U�=���R�k �A��\0f�(f�|�{t���^��dL���ƍ���cҤR{�+���@���۷OO���K�������g�u6��Sg��T����PҲEj�寐�\ZHJ|>\\.Wj��b� ڶk�Q���#G�h�k�E\"���`Hm5���c��`�Z���t�ԑ�ʿT�@��J0����ufq\Z�T�ҥ����_k���W��D\"���B[�v�6}�t�n�z��=�裩34mܸ���Y�&��I�Z��ÏQoP�^�:gݺ�Z뒖Z�͵����}~�_۰~��g���_�����@֭]����k���W��dR۴i�v�j��v���kd���ڣ�<�]~�eڠA�4F\"�f�(�v�Z�nݕ1��Vm��CSWiJ�\'�}Wj�{�F�Z��X<�]0n�6���Z P�D�߯YMv�s�N�=�����߼{����_�}���@~�HDغmkj�Ijjj4B ����=�����}��n�J��+����M#������ܹS[�d��a��O>��ϛ�:�:e�6|؉��&Y�n]����y�f��j=z�RQR���+��ȯRg�W����@���رC���뵴t�R��]:��|/����&�6!��$\r:��V�̙��?�ǣ�}��Z�~��6m�h&�I]����mٺ%uV��:�4��oLm�\\��ʴ̬,����4�����t:��ouuujo�l޼IE�d\"����[�k ?�P(�=�����ѣ5�á��0*��E��G�d���*uv����k�o��Z��fE��&�����֭?�B%N8տ����2��yZ�n�յ�<�pj����|�6��\'R[?���䚻~r���c?�+bl�O>=4)������@(�o��v���D)Gǎ���>J��uZ8N��$r���Km5�#�>�=�����7ެ}C�P������i���Km�X�d���{��M���Վ;�x�]�{�N��1cƨ��[{��������\'�?Im}/Oа^}����������\Z5*��_���P��.�d2��E�뵟D��~X1bxjK�����y&�Y��;���={�c�D�(Gq�6u�����o�њ5+ԬV�ּ��0�Пe�n��Nm	ڬY�h�}�Yj��E�~\"�Lm�\0~���^Z�6��\'�LM��^����7)--U��!�h��������;y��W��<(��r-|���3�hGydj�{)*)�\Z\Z\Z����\Z-���e��������w�v�����&y���SN;5���EH|�V�R[�Nj�j��羧\r|�2���#M��_iЩ����w���zw﩮���F�}�׭O��S�_����U�>��$���o���Xz�������}�߯���;���/_/�F���1_R<���S�Dv���Om�6il�h�=@�݄�w�m�j�<���.\"�n��1��]�v}]��w�^�m��Zfz�֥c\'u�kt:�W����H��X,ڧK����}y���ݻ�\n�k���:���w�U�\"�i�]S[�]�w����/�<p�֪UK�}��QZ}}��.\"Q�ꫮRerڨ�R{5���\"��;g\\j��2s������q�������RT����Zfff��ߗ��4���W�cΜ9�wܡ\rv�v��Wh�>�}��Aپ}��e�Ӯ�V�?�|��w��i�ƍSm%O�ek�\r��Ҵٌ�R��oH��T+��O�.S{��������ƛ$�VE�.\\��˗d��z뭩��.;vnK}k�w�}G�S\Z����l��O�Hm�{���w�}���e�ؾ��ч��4�Y~�6���F#b5[��#F��4m�ʕڧ�����*�\'��_V�����Cٰq��_YY����E\Z��3V�ݫ�v��#�Focꈴ/|�ef���}I��m��\'�h�;7���%W_ueꛦ-[�L�k,S�K�,Q�?���O���(����;�5W�S�A���Vɾ�����[��?����k;tHm�c��r���O9E;���,B����^�v�ϔ��JUy����_N\n������I�2x\"�۷�[*\\8ܴi?Na����-�?I�c\r���J3[��nm����2����C����?��TV^���^~��Է�%??�w�����ũo�ٲt�R��/V����K��n���ԷKVv���8J,\Z����,m{P�O��]1���V�DcQ��q�j�{vӆ9B)��7e���[���L�4IE]i���ºI��������P�]vyj�{�ٽ����;sp�����3\n�a�f<��tu�MF|��\\�r�)�=?���\"L�6�f�J���v|��G8昣q�����X�|9��lܸUUU�3��J�N�����֭[���}���ѢE�9{.��r8�.>|0�mߞ:��LR��o+�š��X�}�l����n�����穮Gq�v�]wi�N8A۳�烇Ǝ�}�L�U��ڤ{��������H$8H����۽W���C���4���^��_x���=�>�om OL~B��OW��s����Wڷ�~K;ꨣ4�ϗ��4�E��0>b��Է���QK��������XWRw�}Oj��\"�����3�O�}����/��\"�m۶�0�}�㞯��{��;S[�_���t��w�.�{�&mE�*mw�zmw�F��ښ}k��������U�ݵ��\n�-n\Zv��&g�}�6��S[�,wL���m�ygk���O�����_%�v�6��*�0��\0|��0<��ȓS�Ĭ�^Ū+R{~�<��s:�h���浊&��^����*þ��ػw\'�(�D*����XY\n��\0��(��Plt��b�)�̪�nD�X�1��I��:D�����M3cPz\'�-v��}~[�g�U~	\n������3�D\"�X,���\r�܆�n����,�������KRG�� ?���|�\Z+V����G�Vr��+�?~<�N�����$IU�6�\r�-�|�iӦ���>Y��<�	���/�h\0eu�X�s�Y�*}�%�ౄN��p!��C �E~�Ĝ�lf�Q�=I�\rzh. ���Z�����0g��(O���L�j4!+7~c]I1������\'@8ɿI�\rV�:$�t)��zaP�CЫ�r왩������n�	�\r�̙3ѬY��`�i�c��}��ԞK�>�1��PԬ#�ǈ#p�E�����oe �?�<֬Y�s�=����ڵk-&cт%���D�͍��A�vmѷ,_�\rF�:\rGut��:��y�r�z�]�+v~�]4jd�m���0�b�Sa�V��	r��Ǣ���p�e!��&FIs�_#�b����9�f��W�����pjh���٭�2hH�H̬���ŤG2��d�ɔ�5�����BWC�jB�Ƙ�.D��8�YW٦/��wH�����}��j�;��N��{&މeexf��p8��~,�ǘ��\\}��(+-C������SG�\\���X~��>��.�̗^Dff&n��F�zʩhۦm��[�.ŕ����B�Wl�7���-s���}��N�jC�p�+�7��Y���	��y���Bj����)���},�\rȞ4 ���Vbʙ��L�A�������[\\��?�0\r̚����`a�P�Ǩ�7��O�e�s����ш�$�!�x@o5\"nH��� ݜ�>%�0��ز���E��}�|��0` ������_/�:u�g�}��ܼԞ?O��D�b���_x�_w=}����_�X<���\\*�8ĉ�g��6�s,���Sg�~�Q���}�.�f]\r6\\N\'�F����I�w�8P^���L��Ļ\'u��TY�F��Ӄ7�� -��DE]\rLN2���,��ӗ%j��Z�7�x���WO�-/ߍM���9{��LO�!͆���D����I���h	����2�����z��:�.`i� �	!��Lf>�h�G�\n��v.\Z������:\r��Ok>��Y8��s%i���s����p��w��?T���[o������;>��ϓ�ٶmڷo������<���q�����\\���=wMz۷����k�P߀����^�#���j{\n*H�-�[�c\"��@���!Bn3�5ڡ?Ѐ,� *�\"T�d2D�;&���� LQzv�f�zC\ZxD���l]ЋYC.G�Նc_���3I\Z�ŋnG!\r˙��xv\ZB�O��8LI�\"FV�A*}�����=-4\n�����8\rF�MF�tX�NC4�0���@�!��h�\"BH��4\"�O����Ƹ.g�CQ��B�H����ҋ/�ȣ�J�i�I�G(UI��ƍ�e���_�9眫��Y�\Z	:�Cz�V����\rdϞ=8��CQ^^���sٴi:w��������!����S׎q�H�m<-[�T��v���ءƌ=Gm�\ZY��;<��d|�]�͈�:LB&-��\"��EO��� �r�u�����8�\"r�^\\�5���1T6���Ô�F<�D5�����ݬ�/0#o�g܋�	�|�\\���G�\'�EG\Z��e�v�q7���ѐ���lA�iDP�H�,A��s��=`K�H��N|椀/\Z�Le\Z6\n?\"�\n�b�\06\Z_�/c��Ѹ��f�,\\��8g���m���kd��Hs��W�R��K��oP=(���|��W8���n�}��G�EcgY\Z!��G�_j ����B�ҥV�^\r�ɔ:����#�ħ�~��P�>�ޜ�_|�)���������M+�\"J�+4�#��R��I2�D�2\0����\n5R\'b�)#��l�C�ʅt*q,]�:�wu��{\0�4�Nh��(y�^�ը��C�(�.\n�/��F�^G㘙�Bk���x��0�n	^�69�&f\Zg�7��=!8�N4f����E���%+\r��F5VF�~4Z��|D���2nAP�,�(´���O^cd��AFJFL-�@��\Zdh.�7x4.?�B��o�ʿF�j�P�P\'!�1��`0�]�v��!Μ������V�[F�>\ro�5[�{�7��2�)��gȿi\n�6���ֽ���[�!���SG��l޼Y�L.-�,�L<��5�/�@��hq*�C�=�����`w��lfG K�x��Q\ZC�-��\"3�#Η�?���o��R��	�-1u+��[3\"�[u���,�Bi�h���(�\rE�Ө�愉�ڄ܀\r������� .v�8\Z��9F*���ODu�p�6�������NxY}�hyٹ(i��>���`��L�\'�\'��1��{F�	��AeL<Ǣ��ٓ��`��ː��&�M��i��,�XO�8�oz\r�:\n�������\0~�deg�m۶(((��u�H�sU*�78��c�V�rLtᣏmtQ�ĸV��%-���?C�%D�r�//��b<�쳩���%KУGdeeaǎhlhT��V�Z�j����.]��;w�b^�C����\'�?���V�U�QU]���9�U/��啘\"�\0���E<���gkH����d�4x��h��$y��P0P�\"�:2Q�CxCŒ:�J����Q3j�`��p&\ZN�h�\r��4F�\Z���|A��a\ZD1\Z�F���ڵ?&��g|��5Zo��3O�;�\rr\Z8zލ�\Z*�I����$�\"^UCH+·�O�P[[$�<�!��:����#���`$��Mpg�C��~���д�p�j�s���k��%�^KTE8Mς���6��v���t;�:�ul*ܿ@&M�����PQQ/^��#G*�ѡCS��W�^��z|��g�\'�x�M\\y�ؼi�2�?\"��TT�����_1S��q�_�JR�_���z�:q�w�q8�K7t��=u��e�ʕxrꓨ,���!C`%�4�ef�1`�ah��{�������DB=2�5zN�#՜^S��A�sW�5-�C�D,���-`�)�<j\\4����#��D�͎`��\0I�f��p����G7C_EC�3\r�d��������f[y#^}�7m�8\Z�a�`��W`n�*���xy��U�|���q,��Rk�0/���Ue5\nZ��.��	_\0�\'�ـ���G��N�e� �\0�ss�3D�aD<^��e�Ð��L�ٓfD�zȇ�lfD��E�+�� �SECs��ᷠ$�Y���o��?������%����8묳~�d���� F����I��}����H�y��Ԟ&illDFF�jA�7o�w��qP�j����0�w�q���\\V�Y�Qs.C�#���<�&�ð65�lzv	�x���hz��1�W�!Z�@�#�� �\n=���� ��i�>��f2�HP)�t����$\r��\Z��Ͳ1�����9��>�#��� �<z�;�B��2#?�Q4�Dg*c��#1{�yH��$XYhѣ��Y�\0L�t���J+�n�\"bdT�u!A�	�Y���V���\ri�:�kꐛ�\r�x<C���m�#hfQ��胤�8~F�\0	��6\Z����&V�Ln�Lb�L�p�\r8��x��Ǥ��t8p :v�3��k4����[o�E(�-[���b�z�x�wR{���\r�ج�>���{\0��\\��*ס��D�kC�F�H\"&-x)�(�I���/���\\�Ke�2�2e�4�JF�IEyB���9�qW�al�CO�MD�J@���h6���4Z72ZdETC]�*=�V;�J���L�y-�r���ML���l�HĈ!L|���X���x*�!�}T�6��Q��[P�\"i�\n��h0!H�����f�LLJv��iNa�TT�,F���a�߰��\"�H��Z$�Xr��f�`3�	Ģh,���	za)O�J�Բ�2����kוW��Qw��.�k�L��%������[�V)���,X�@��~\Z��^��ϟ����E\n�d����_���g�\0�9��|�)��؂&��ǩ��-A�C3ҽ�ŊRK\ZTH��\'�� �Hw���Ey\rGZ�)�P�Z�dq��t�i&~7#���|7��&ޕ!�#���j�v���d:����nD��e<��|�\Z�\nz�ɋ\\:�4f	��~G�\r���Hcȃ?Z���4�j���~.r��F!�\'2�]�{�����W���I��:�JD���WT���DV�D$!@�(���4���Z�݉4w��\0O����QY�Յtk\Z��l�Z��ݏ��z���$���X���|`֟%M5�I��n@MMMjO�t��.Lm����ƹ8l�<�|*l�N��	;��B@ݔ��Ig�g��j\"\' �2P�4i\'`�$�Wx��ef� ���t�B��	*��}ժ@�1��h��IF ���=H��ya�\n�LC�X�<I��:48M(�5�6;[m�8b�鸾� ��n:�4��9��\Z\Zv�İ|�W(�n���ֈDc�j4�\"��FVA\Z\r��g�T+��F��=��;���ɽ���$���\0�+ ��D��u3a\"9R�!�+�`T���C�Ĳ��E����7�H:��K�;q\0U{�aY�o�	5�;���c����R-��s�8���?�#��+������B,I�l�ʩ��#�kr�;�{q����S�qr�Br�`<�Г�a�:B#	s<A�D��IE&=\r��r�$��c0H+4�$�=F3�B�5ԓ3�auZJHK�������&2{=�KOb+c�ʽ�4B��)̿���p�Q���a��!�\r�=��6��[[>CZ܈\\g&�0�[Ĝ�����E�ܳ�=q�:�\r���-�^�\\&DxOw�Ϗ��B$��U�e�HK�%ݎ\rUZ�c�o���?Qx�=�jV�y�t�7���4\Z˪`�Ӊ���w�Gh���\"|U�B��{O�������L����h�GVN>B�:�xFe���{㭑O�n�eB�[D\"���r�-7����qÏǭ�M@^~S֪��ŅŘ8��u�=j�bI���_��}�bǎ�ػo��R�ٲ�~�N���$���a��F��V%:�8LTJQ��x��Z����\Z�<�>8]N*BV��H�$5�Zg��ɀ@m<�E�`�����5K�ڢ�4	��#�h8~� �A��i�yQiXd`IRۂ4����c�_�,bv�]���9K���3���-�׽G���}��tV|�מp�ٰAW���s܁�?�xBuu9����NNbT#���0����U��A�%\n^�XK�1�E\n.����^��0���NFT��6�s��A�)�)�l,��N���d��pl;\Z�C�R�:7aa�\r���췯�gn�H��[��q:�y�\"�X��,^�C�¡��E�٫g/�\"���θ��+ѧo�k���6�#������[��C�?�������h8��\"�L�Dŷ�m���%N&`�J�V�Ez�&4*�R�T�%t\nЛ棶�q�(����#�`勲GC0�LH��DҬ)�+�d#4���\Z�1Ei���[�Z�E!�44�\rEZ�-����(�i�Q:�Z*䓇_���#��+-�1F��.=��?D]<��Z\r�q]��]��Q=N�9n����%�\n����*����F��ҫP��+������g�s����r���\Z��� �Й�ȢR��Ac��3�z�V����/#4�p4Bؖ$����#l�F�8:u$�u���0��cT�b�����\Zwu����7~�l۱\r�u �\\��}R=���:>���ߡ\'����\"#�\\)���ݻѲeS7��\"�Ǫ����1c�;8���d1Q�\"��4+��d�	�����T��f�#�#�*~�E��dd�#;3&�4�ѯ�`̶\"�0�PAO\0j�1ˁ��d9����W^�Ɗ\ZDwW���\0�eĪ��Eh_\r�;�a,���Hb\"���I�5�hY��H�_���>3�G����Zd��W\Z(�y2ӻ ��i��u�\Z����*턄�N��Lc6j�N���Ti1#_��{���pi�	\Z��}���3���,�BZa9�UTt�	�IY1Bu:�`�WN�:�ӂ�l7r�3`��(�S��\'g���FI?\r/J$�OK\"�逃�%Ah�k��#����ݏ�3�@��_n߶)\"|��g���g��)�5�Z3��yУ?��n��,<�ʿ4���2����������`�`%*3\'��̰ӓI+{vn&���M��	5 (\'�i\"�V���M��P�JDXm�J��E� �a<ߑ$9�I�B���%l��Z���H�n���fF�H0�\ZO#���q-H2҈o�������!XB����gb`a7�~�Rd�n\r�Wۈ���Ѿ������}ѾuT�cؽ�#L��	���K�%�ݎ��(8 ]^,����gw���T[B\nNeF5������s�j�M�X	$|Qz�$�2&�%���}%��*�X�����Ĕ�{}��Mz\'��V�K�m�.ݏ�r\"\ZX2���md��>��	K�(��z�s�5T@�7�ooZ���_�����>�G��|��#F�}�&ݯ:�Jr(⩧�F��w�yX��2l۾Mm�Z��4��ύĦp9�y��8;�m����b��Q�0!\Z���;��A+���8\"}��5������ﲦ������4D��?���V��k�lfd!�� &\rt��J�y�D���E/)�f��u�t���p!��,tW����Z�<Q�{�l<>�|��=�wnN�t`Xf_�	�Kڢ�ۀ�J7��kQY�	�P9$��ɑ^~v���_�B$`@��B�jT�#p�g�F�����t���}�D�#�?$�V�\'i\nȵ�[��0R��9�/�r�Y�9��(x�OR�P�ɽhL�z�l	�����EG�Ύ4:�X6B,�B[\Z�8%�8\Z^RH>��)d�w��}�L�6P��.�G^+�4���G~ޝ=_|��}�y\\|Ʌ��~��!9�ԑj����R{�Z�$���0�3+C\r��4آ��:�Z\n)����M�)��$u����@H5�	y��/F��b�	�@��h�F���,�di@(F�@!�ґ�N��U�H0���1�����0~F3\rD<p���P�Ees+\n\"�2��y���e�\'�sa.F��NmZaO}9�l�_l^���j�l�tɜ�`����QJ����q�8��d��A���hEbg��̅�~�q*i�*��C�6�9��|}�I�F!�-�_�bF�2�e��%��ڬ�N������������2da�����\"t\Zҽ&��e`���MFapa�ҨXf��%|��<I�)�����bƩ�`T����X�9�(,^�T\r��N�T����=v,���3��$>>�\\{�\r�#��#~��H�s%2�����d��QBy��/����89\r�s8�ʕjҩF@U����R�ܔW7�J��Í��h�S�0�c����e��$�;N�j!,�Ţ4*D: �r��/�D��։$	qyi9ɼEe��YQ�$����1�	�0��f_��F���S��I�@�o����d�\"�g$oo����P��@n(\r�}!,�n\n}�I�\nnE�Ņ,F�Lb}�=��;+��$$F�r��RN>&˂:\r)3i�Ȫ�C�	���ǲ���0`9_����r׫��T9���*�O��\"�%�-��ѱaT��l*K�⁃�9B�W�&6��6T�٣&�~M�@���9]C�������Ũ�M-��3�o���p��2�H��ϒR%��4�䶑����H�m�i�%�C3`�Y�e�ih�Vʥ�Շ���SU���N}�He��Mz�kH�H/��9�KX)�\\\'��u�=���[�]��ΒTU�#�h���|5�T <��m����SK�A����zv���kv��M��\"��?#Ms�$�I}��O��w/�i@Oc�rMxy�B�[=��� �\n �ژ�@uML4-�+�������T���J��e���$��\'��D�e��*7�Wk���$e�cM�,G��t��k�\"���QmP�#�u5H0��1����H�%\r�H��퍸�������x��\'W^y�N}J�i0�?>S�ȟ�A�y�\\v�e�۷���+�����\n�{�\'��,7�|��h�R}�x�NB�,�,��0B<���Yr�2&\\*Z��ЀXY�a/.�L�SEKx�I)���)���Z/��ɮ�P�	C���T1^딮V�Iz$`�8G!TD�YF�ʐ\"!��(��pT����Ћ�G��x!��R�����s������fr]%�Y��n�f�!Ȱb�Q�Dv�U�6\\4d,��|4f�/�v�g2���x���0�۹�0���ґ�D�����>N�G��e@	�2�p*�m`=�u�Sui��Ӑ�㣞F&e,�Z��L�Ρ��ΝR�:���G�p�Z�WƞH�O#Ð�\\/��A�чX�L:$��N��J�$��f�<t���`�8U��E��^�q��x���8��?����rPz�!�r�-���L���H��鹡0�B��\\i֨ٚF�L� ~M��T�P�����/�����s�(	Ī�]��딑�h��I��:}��_���\"�1	�G�^��\ZO��ޠ�0裡o�@\ZH|cpFm�w.9�\\�(��{������m_���\r^>k\Z�z�6�p�h���߉�H�h3a�%P+\r0d�@�<!��!�؀��}qǉ�㝭��f�\'y\n�=w�2�qF�Ѹf��h��\n�\\��?y\Zն\0,�~ՇM&�{°H��TE�� ��0cy���iw!�I���bJ��~LN��c�5��@O��a�1)�T�JQ��C�\r�(i�G��k�\r##3��?J#�##�GZ�e;�6gl�J�\Z9�Ӱf�Z�����h����\"����B�0�\\.���˩#�^�7�¨ϧ��*�/y���°L�GO%]�X�*S\"^LZ�㬑��%��?i\0�:*�ē�#u����.Y�ʋ.DYQ>�ܶ�8�42�3h�<^���j�_z �B���ͨ`1�ݼ%�L���|s�|�x�\r�p�Bt�q����#,�/i\rgF��NQ�/߇��fb����d�	Hk,C2T����^p�hj�7N~�q)�}�	L\\�\njZ�Q�Bk>\\T��}ߡ�+�׋�Q�������3����p�f��<�݉�MW�	-[ڱ�DM�EYN�q9PP_�#R�h��nW� �!0���-�+�e%�m$��?b0�PĚ|��Fz0�u�8���hetXQ]U+�I����4�4i��ٮ3n|u>����?i�\Zz�P©����K\"�E��_r�%زu��M�[�n�#_�D���C�PPP���<�J�`����e�QG⚌��U�J�,�\'����	%�1���Ч��`��F!P@�M���;J� ]F�I�\\��n��R���8�b{+\'�i(�@e4��~#F���}F�UN[̬]����FY�XHD�*��IcA��\n-IΟ\Z~Nz�f�t5G�pT5Gt\Z�����e�#��V���n\'����3���oQh+D0�\'7?C��f̴݄|���#��7F��XѶ����-�cM�\Z���[Xְ��Fe�a�.G:�n�E*��%��2t[�β��,_��?�Qܩ�i�i(F^M)XU�Di�2\Z��U\r�\n��n�sj6�VW��2���{��\"��t�J�ĩ+/}ٿ��*+�����0a­j���J�r9(B�T��PIfK���(���t�7S��L\'Z%���ڈd0�������aI����B��H�0�,��&*��$Iԩ����.�R�����M�/&�,PMӤ-@�����	1>D0[͈Wx���I:����MN��CQ�X����o��C�R]y���!���De9L0Q�\"}	���\0�͹6��ԉ\n{��8Z[���Ǣ޿O|�<\Z� ��IL|�z���jڟ}!�2���t�c0�|�24�dTJ蹥�^���$\":�|YC.C#>�T�?�L��!���L[���\0Z�#�N�F��Ep�P���Y�,˘r?�)�*�V���	�􄿱b�8�|O)[#C���l&D�����B�F,&ͪO��_���|�PI���IK�\'�q\'9fā�-k��?�5kV�g�?g�;�+�vI�����\"J����x�Gq��{�����tx�(4ja8$�*o/ID�y~�j�������姡ރ��FQqEH�uH�Ƭ8+N�D�\0ÇD\ZQ~[2Pj,mE}�\'����D\Z~�l�`&� 	Р���Ä���g=�\r�f#�σ��g���+0��54�(E�e6CVs�6�d���\Z�h(�v��D	T��5��(�������wq��g�Ov_���[�&�v֕���Y���Y0����\r,P+y\nߔ/�3%Qo5��iC�E\Z�4��hN\\8:1^?��g���!��������p�R|2n2�f�@�*��B�\'Q�����HH�\\��8��wIĕ�&����ZT�U#��nPɋX����E]u#y�d�$�+.^/���feT:q@�~4:�l�\rG����Q���bG�q|�zƞ7�{���3f���X~�����nݺa�ҥ�=�_$�u��w����Ƽ���cEn��l�M1�1�f\'�<_��������`�s�i;uiV�2ӑ^\\\0��x��]R�(o@��K�B\"͊��J��F�\n�T~I�ʨ�$ᔌ��\"�aFK�N�����r��wb���q~��h�g�������ˏ��vFv��=�-�Q{\r<�X�4<=l�4��2X�QE�d�d��V4\"men�p>�k<����������ݰ��[�Q�Kr�H!��+s��7�����������oj!���\'��������/���1�U7�ۿ̝��;��]#���׼���\rihX�A���Z�\'S\"�䛥;o\n�J�Y)�J���hS��L7L�6��.�Z6W�-=���P�IFP���L*fr!�j\'�*m+VVNV����-�=�͸��[�G������D�:�w�\Z�X�~=.����?�_�dn�C9D��5�\\�� �{��D�)>:��߿�-a�Pg�\'��Ph���I ��#����#C�po�LDTt����Q6���K�L\r�&��0�N�`�����\ZB$�2䕈�\Z������\rIBV�t6�n3\\��d���p���k��_�C~E\Z��.\\���g�qT��8���+�ʝ�1�r	>�o�\r���웅�m&¯6��,���O�\rcߺU6��z���ug\\���J<=�E�s1B�tW��%�9�}B�\Z���#h$d�[�8?�Ï;�̾�n;�F�W�\Z|��SG�<�M\\�k4V�ر\n�~�5��X�g݆ջwb���6�pXZ[\\8�$��P|w`3�^����E\"�i�B�ۡ&�B����H��p���\n6��4�#!��A�P�n+�a1�8!��\\��|bVr<F���jde0*\ZL)���veI��)��,�-��];1u�4�����F��Tא_��ޛ��\n=���~���ѿ/�*�Țr\r\r\r��\Z�̙�B�˼V2��1i�>��+`��%�Ax��V��Q��3���0�����(|5h,d�F&E�h(�8�5QiC�UH����є[�EL�g>\ZT52�ѫr/?�����f4��P��@��G��Ӱ���`�r���1�y�<<��@I9]��4!ddȏ���oqɫw�w��{��pS�����x����U�NT�HJ����Q�ȣ1���H�kxf��x��{���oᲩw`w��L#�W�2daSU.�r\'�|�ˮyg����Js3Pg�@�#��,��$�It���}G܈�翁+�������g.��5/bF�Ǎ�B�8����w�،�s\'��#0o�\"L=���y\\��Z��-��ݎ*�.�l��4rWԍPeP5@�32ፇո�����5Q[[#�d�t�-y�{�����Y?��19��\\�c�/j�3�����Vp�Yq!��}jt�Q>��#51Hn^.��9D-QVZ���C��t�����ǆ\rp�i��I�m��>��a/����[�2lAԕ�\ZVB�ά\Z���`�M&�Y�i�F\r�~/��NBq�ZG2$4z)}MR���mU��pq�����p��dz�́d�j�u>��j��F��vG��`��W�`����cN\n\nh����}�q���q�Kw\"��5kHO� \r5� �7��0��g��������ea������k�`��7q�q#�������۰e��t��c��z�	�<e5p��2�0�x��Ы�nV��[w�m��8�囐U�g6�ӻ\rB�/����ǥ����0x`�՘��{��x�ě����Z�	��-�j�����G�������J�j=����+X^��`�Q�]>����MǓȲ�o�*G\'��! �	B��Jkj���y\\@Z�FXY]�8�*=ׅ0yG�L�R2����~��Fěe#bn�!�%s��*�om�E��c�=�iӦ�\Z��������0u�ɟ�Œ[���Kx�����~ꙸ붉?�����3+�����զ��6��f�+�\r�YX�]4��̇K�O��%Se��P�P�ܖj��T�[�p&��T�)�!�v��*	���C\\�c]��=0�F0��W��=:�T��O?�w�mp纑k��Y � ���jF�a]Ć�C\n:��o?�+Ê��FbI��&�	�N��U�\r�M8�Uo��FE�_����>��OV-�j��.�2\'_B2@Q��$�f^��h��[�ʦE�7�{F	�w�\r��$��1�����.[H�^}69��ė�^�Ya\"$��&�2��srIl�����>4�#��p�H���0	��#�ݍ�H���%j=���y��?�ʆ�H:�F^ցtr�䈥��(��7ߡ\Z�7��$�`�̖���4 �]���H�ƁQF��\Z�V�r�:�+���y����Ŵ������\\���\'&�O>��W_�SN95u���_����5��˙�Pv�j��%���O�͇y@{8ABN+2�4��z��o\r�rTb�\0���aL3�D�҅U�J�8k��e�\\\"4\n���z�I�ψ�gؓ\r(wZ`+7`���PR�3�Y�,�K�t��!B~,�\"�� ��\0���mG�KD�l�����7�O2Vݑ�B�ޡ��B�鵥���ߕ�L��Y���I���W������N�,\\�PH<=n4�D��+����G�\Zj�v,�բcQ;\\��Xl�܅�?��ee�S��!���|o#I�\Z��L��W��֒��̸�fD���Χ��\Z���$\'tȐ~�|���:X^��!���8h.Xt>߾�ee���\r/#�\\m��&ԕU#N#u;��I�K����5�^q�[Nv6�$����\"�|QD�\0�E�00���u!~2�|�P:�/�y͜�G�\r�7b��E��	\\~�%\n��Y��A�\\۷o��ş��v��E���{��w㱏�Eq�>�[�H��]1/\\TYx&N�&^M �<�4��\Z�р�9,`=�\ZUK���Dp2u�s�\nab��H7�8�)�E�\'k�ٜ�^��XrګX_�\r�~%�i�Tj�|�{Č�<o+�̞�?\Z@^�Ok+N8y�_���5���\\0d������h��8�%�Ii`+6������ĩ#�Ɨ�>��w�\"J8�)�]e���Q�h\'�tXPk\"@�^���=î������aq����˰�:��Y&\Z�����ܐV>[�#WHi�\Z-��K-T�2��@����5�>�ƿ�Y�c�sJ�u�E>�\ZI��Co��.�\r�^��kށVS���<B%�5�)�Tzy_F_�׫ �̼�E���#2�Fe��\r�fL��A��q=�Zf3�5�x��m�q�����Ȫsc���j��E��E�hӪ5~�D�V�R��ĩ��6mA^f6��\n��\Z:�|&�5��gt��e�I\n>�X`!z[�~*s��d��Y�+�`]9H �=/�\n*#�H�%F���X�\Z��*\rL\Z�Kw�r���i8K��{i�d��ك�^�� l�o�$1�f��~����v#�_�+mT8��6�g1 +d�R�X�p���l�I_�p�tғ���F�N�HiD7?�f|�64�����D�����=��v6�t$ t���\Z��}p4Zp��pF�Cq�S0�F}�qc0�C���B�t�ȱ��켾QE�\"=\0X4�;v\Z��3�h���hI�$Ĭy��!��*�$����	!��h�Ǌ[�^�˻��C����es�nt�����T�fYUK�Wc�&s��9�\r��2AǺ�\"�\Z�i�|�����lWJ�P�B�%�,?�\"�*jf�&P��heF�:\\�q�=�:���4�ȿ@��w���8D�_�jX8��;6+��F��H�g	ҰҀd$Ɨ�/�����Os��g������NE-��M2��ĺft�ۅYi��@�k�th���V�稱4P�j	Id�+o+]�C���g8P�󣎰��bC0�\\Ff:$q��A#�;\Z(�1؈	z��$�҉@G­n�w����F�����\Z��R53��\'l���+g��7�[Qk��<:�t�\n�C=��ug�����&��%\'���H�i%$���&���,/�;^�Jo��&qӢQ���B��^dЀ�\Zi(����B&��2�Jڃ�t[�_\"[2DrL�����*T��\0|_�L�g4�_�HhF㌛�s����<�\0��8\"i	�I4\Z$��\r\Z�ƺ��3�N��I���i���C���!I7�\Zn�(E\'UDg!3�<��+��z�?Ud��n��9Dm��䇒d8��x2J,i�f^5!��LLh��XS�����z�Y1� ���#�DT\n����@��m �$\'a�:�i�FFVB���^��s5z��1�����=&�\"!=�\0{̆9�t�����$\"�KEr�+J�z+=dA�%�06τ-=����F/<��d~\r�6s�L �\ZG�����mQE�-k`�x�QI�5�Z\"���E��Ec��Q�y���ޘy��d莑��LA������˩���e.��q8饓ZXq��ޗ)-nE^\\�|�e�����ђ,�*�F/�\\Ƃ�g��-�/-�\'���`���1��`�a�45͒��}�F�hX\r�2�Y��%I��0���4\'�1!���ےVB8+�#C B�XG��@vF&<�z3�c��ɏ,|VY���r�,�~��ϫG\"-��/ޥ�珊�,p�W���m�٧�EqQ�����\r����k�ǻ��J푙�W���~=�|j��uA�B�d!�10�g��MA�X�$�5�$i�P�jk�Y�P#�����̌\\8.D�x|O����Ladt\'��t�|k\"d2�ÙH����,�&�ѠdqKQ#��ߢU(Ea�QkqDCA�t\Z\rFG�0�#�i4lG���l8�i�y#�)�%$������SЋ��1d�Y	����g��Ƀ��Z�@G%ٰ|n�r#�7;Sϟ��뎷�W��\Z�\Z���\r\n���GyHF[;#��ien\\/#��$��ѭ�|�8I�%nR��B����e>-;��J�`�\"�{��ĵ��x��1��@UI8����Hל8�Kƌ�1�.;rr_��52�K%�^F0��˜3�	�}^���\"Y�H����A2�Q� Az��h�v���?��j\Z� ���|�7V\'�$�y�<DA��z�27�$fdrÊ�\n<���jt��/�6/i��\r�˯��۝��l����E��N���������5�[��9͑�U/�d&��ޤ�Ӵ�<d��A/F�#�0A*T�� �I��4�I�quy�Hn[�j���|�uj��\0�~����\n#^M^��VB0�Ri�\rŠ�0��5�1��S�dX����c�\r���� ��\n\Z+��R�D�d��2B��,5m큪�����C�&\r��O�4�\Za̵���\r{�\\��!�	5�?�%,��M<��1�n���u���wqm���]�P8�0�F�Q���Q2�ɢ��q>�,��g����˄#;Ce�$�z+k�k���z4�V���FD���j�:\"Ce��Gأ�]���X�5W����wd\0� <W\r�#�:d�e!#��&��� ����`�#A�|Ȥa2�����6j��,�tzZc�4\n��Y�n�e��Հ�hK�&��3�����Mxt�������f̘��e�ā,9.Kg�z��x(�����p�v�_4�-7����K�=�[q�����՚q�ڵAٶ�3�<��؛������g�3�\Z����e8QiP�dxԩ�>��(!?H0*P�����lij�M�5�,�@~1������2�v+\r�T�ՠ�|��j�nLY�\Z�X4��I�\",���P!d�	9\'�E�˃3ˍ��|�엑Q��Ј��\n�m�c�� 2�����Bmi-���۠��h�rL�(�1���d��Ԓ��V����k��>�j�4c��^���Θ��#������b�%�1�p�j�*\Z)X�b����X�T*s���D���	i���+��7� �;�R��1�\Z�z�Z�*�����\"S��8vGԀB����ϼ�r+�7VcC�&8h,2@�`5iE���::1���C�Vd�g���m��}�mm�a�d����M|D\Zm�t<23��Mn��^�$¼7�2���0��w0�À\'�����WT�g\"�m���8�Sp��#��>�������JJJRg���b�JO�m�n���~A1��K?Ùg��7�~K�����^O|�zt�:��Վ��<XK�i,��Q�	d�u�w��7!t��bwAC�F�fض���N��J��{h,qd�H;C�%�!����%v؝��fY���i5{P�i\"Ά��7�̝	:}�d�fZ$�K��@E��rT`�to���t�b2��i�@(��#Vp�I\\����(9��N2r/\Z�R�\'�1�<2\n�ul�k�_������og���\0g���� fw�2�B��జB<6�Zz�$&̛���p�Q#qƫ㑕��k�\0�GQ	e�y�*ɲ���,A�.U�R��\"=�CB�B���!	!-7f�+Y�zf9~F������B2v��d�D���A��,J$T8�t%	1z-�t^Q��~Y$�.����\\4f{�я\n7�p�a�CJ��h|qy;�^����W<&�qdF�;ۈ]��=����Q�	G�l�k֬&�q�U��>�hu����d����>}:>��	R�<i$^{�5�l6�1�t�~��74�U�V���o���w��ݟ��َ��Z���+�N>�H �Y)�D��!o�� \\yT��`T/��=H|ϰ�S��+B�B�����g�v5�5H�΂��!LO�&\'��7j*X�</\'?aF)��P��k�\'��Y����C���*��,�!�J���MVdH�wx`�R�Ĉ�	��/;]f_t�f\nj��N�:hu����Q[��ѳ�}�>6��H�oDf�V�$��:^�#�il#Ѷ�4���:�Ц?��?�Dr�5P����}[��K.����1z��x��%��A��ON&|6*�\"OR�q�f�aD��SZ�����|����G4�����i%�����d(��j��O�Y\Zf�x��K��MBqɎ��C���]oU3��WV�9���Fr�0�R�I/l	 &I�H\n_���jf�#.���dj�fT]�\r�7�];w�C��j�?C~f ۶o������V�m۴���;��ޣ6mܪ����n���k��ca�wB_�\0ã-�\nD��7ɲR	�~͂\n� H\0���(2\Z�Pǰ-]��#,D=N�J+Y�0b`2파#������o8�̒B\Z=L�Fg���d����T�L\Z�)��i]�L��F�0\r>K)b��Dh���J?+Jz��2\Zf�7�\'L�#\'.+��eBC����2*Jp��iCơ{�4�0Vm[s�b�0�υ��v�/Iw�m��Uv.f߇lzo����ΈC���%����Y�N���RԻI��Lp��ӭ���|<�Kb��d�����3�\ZȠ|�0A����Iv��5ԡ���.zq\Z	����N��2^	��A\"\Z���>1V2�Duu�+�Z�e�F�Ր���b�EA?df\'9�,�*��T�:oi#䒛�}����b`r�zƈ\nl���4��:�\'��9h*�u�\'j���/B�ŋ`�1�ㄓ��Æ�����m�ѫw/�dsYƹ��������|��3���U�F���c�R$����5�8fi ���.�2�h�,:F�����L�o��ųI���H��	���n��6��5쯃�7\'=�v*�89CQ�\"�/�7Io�Jb�K�D�#�W=��e�8���A�E�T\"���8� I��5�v��@����JP�Lu\ZF�����-�U�2,\\�W\r\ZGeh�\'b��`J�����SR�N\Z8!Yt���T����#�+��S/�齇�Ն\rX��b\\s��Hs�������|>�.]���GRKon/@\r:��Y�^�DM#/�w3�4�t�$�T��>\"s[2�S�d��f���MTPz	�T��u��BSa�cb5p[�5�<{L��FT3BH��.��P�	��HŲ�2b��޼��F�&N�X�,ӬD/b��L��>����\0\n���(\ry14�4�8�6�����DY��۶!�?��F���(�c�=����e��Wf�D^R���\Z9��S�Ű��Yz8V�#�J`q���_y�8����Z�Y��gzp~��Q�����\Z�����\'B/����Q\Z�t�0�$��&��V\"3-\r�,�@�\r�)��QUW�̢ռ��v^c�o\n�es���H����)��a�t�K��2��7��*�\'��.���>���q�����o���{?G}x/������&㲗\'��OFKg7���CX�C^��C�G:����.�����B�m>�r .v�|��M{p��\'�Ϝ�a\"�=$Z�Qy���n��j���w|�9ۖ`e�z�5;lin�x߬I��G��Cf�|F\r	\'�	�F�o&4���H�ZF\0��##��5)��Q��\nɘ֟�Ò�]��$�%J�#���wҫ�J�㶴�K�W��Bf=���D��tTܖŊTgF��̣� ��JHƮ���k�;PW��Ƌ\"������_4��ʰ��G�n����(//C3z�={��Eɯ[�t{���h��g�H�Ot��1�������KY��L����i\"	���Z`��a��+�¡��~�E�DxR��f����bK�F�d�$�PC�K���c������n5��T�tѶ����#�p��ʂ92���.Ƌ����<Q,��S��o;�d�?�Z5Þ�[����x��ݲ�[�CCN:����c��3�D������=�݅śW`�o#N�������[�h�>�kF����p��cu�^\\�m$�1\'N�^:0�YPE�[��ܱ/No8N�}$\rx����Ȍ����r��R�Z�=X�D�/�Ⱦ\n4����$�k�nFY��C���K&�/�DYkCYg�Y)�BQX�*�H�ꈔ��c%����`=�	%5�4��\"��H�!��t��0�`ev1��@k�[r�^zկLzG��n~�VTC_�:����g��~����@���ւ,�/޾E�|���(&������ᖵO�8��pnD��L(C��c2���:��S���B���cL\r3\ZI��B�fB:}aH���L:N����u��>?�īHg��x,����2����	�{0�Ĉ�ɣ�2��%�`���I��j����<��Wk���{��t�1�EVҎ�Z���>����|�;���X��Jt�ّN�,�{`-�W����h �N�y�D�}�J�v�m!R��yǍØ�G���ە���ۑV˲y\'���m��d�i�I/��?���U��\'���2��c@�プŒ�\rߵ�M��e�2Q����R�tvV�B��zҐ�IC����z��L�\"?ꂹ���#ؚƨ�sd��4��4�>��\n�2V�Ф�򟔹b��$�A.%�-19GO�bD2�Ci�[e��!F$R�B�>1����xͺ��ȼ�$�=��\0�KU^�aB��<�;��-\n�k�\Z��5�e����zJ���8�l|݀����4�4�ܯE��!�\0��,\'�~Ĥ�(R��m�$�\\)7kJ��,H�V�?���l��\r��1��X4\nW��!�����<���L��tǎ1Z5�[ ����\'��6��d�#�y7�5o�#�Z]#dM���y8�ko�q�)84�\'*�_^[>��~�=y0�m�9j����I%��+;���ϋP��]0e�$��y	<y��/`$��Tգ�?W�s6y����pm�Q�j��f���CnW�e{�7��@s���D<�k�s\"���ȕ�	���T�JV�X�n�6�5�UtM�-\n��j]�}U�8�j+�J��)w�0��yh��?%=,��$�FX�ͨ&�H^K�)�n�NW�ld����-�Nt�8�5�a�P�X���2p����|�*�H�#��H�F�nB�H#�uN�]&܎�(�%I\Z�ԹU�R_bf\Z\'9�^�@&�t���ïgĭm���>G��V�]��E��K.�-[6�֭��T�m۶\"#3�9�ma�@ć�S�B\"?�R_,�]gT��:�H�Q�C\rR�C�!L2���7���#�\"Sv�QdE�`�&Q[q\0魲\\f�!V��iF��t���K�p�^K潒�͗�w���Z(��7�9��8�>b���X]`F�e�N��.Cqhۡ��V��o��uQ��3Ӂ,��^�����\'�k$��B�+ȅW���2!�A���\'�wn&݅XȊ�l*	�6\n]y�N|��1��(�_N(��6m��G��{9�,����h�|�y�4Cf�\\�ZX��C8�)�/�-D��6زu���r�k�U�/\\��g��۶!�c��1�MV����=������K2B� �\r�|�E��tct*A:\"�V��\r�j Z]-��R����y�|T���$�Ch����\"�y[��s17�Q��\n��eaĉ &<R�$�SO�JH�x��Ѡ|F\'a5\r��(�d܊�uHAy}.�7�����$?3��/�X5ï\\�R�2~��c�y�X�ѥ9~Ԩ�6���q�G7�ݡi~!�Q�̴�@��G��ǐ�1�%\nX����q�i� \r��QR���=`������>��HG�,����O�fa44�4f���	�O�ni��\'%��\Zb�/ğ�XG�Ǐ}	=f6�\';���gb@��T�d#C��On��՟\"f��+�q�������JI���,4����#��HlZej�(&ki%x�q��7H\"fc&j	����27��\n/?�4�N|��u���ޏ��G{�3�<�z�T3����aÆ�ذy;f�6�Xw�[5��e`ؙ��ДG�eI�aR���;}KȄ�.���P�(<{�l�f�9�t=�}��mҭ�.��@��V�o����-����V:�\0��h5�#��uj��f�Lh\rt��(���e����\"���h�6�Q��.]�ڌ/t�#�!���=PT���\nT��aϷ���g���4���	�iG!��f�H�ȥ7ZaZDI2´�t��s^h��\'ȏ�ř3q�E�C�i��[���|�\'&?���������.��y>:�T�0���`Ȍ��̅F��`�@��-��t7�yY竪�2*��Z�F#���d�\0����.GzI����dC��1s�.�E�N\rB����W�2�H�tг�hP$z~�O�CK�I�G`h�Έ��i�T$2����>��1�2�\Zfa_��ե����[lm�?\"pX�uY��(�r V�&D�;�6�Pg�E����2	�Ͻvr�x��ڢEȉ��eرf��|%:��͛�㶻oS��}쉦rP9\Z>�_D\r�}��������G0�XmM��c��E�:��͕�[���l��@��\\�������uS��g�����Ю���a��D5���5;p�5W���Pܪ����3x��7�����PV�绡�F��~s��`�C����:\r9�;wR�#RY�Ӧ��:9���D$ڸ�k���@���D���P||��V���(]W�}_}\r��H�<֢Lx�(y\ZS,@\'G�Y��ʋ�\"��D����@�1G�G�~W?��S��W\\��;w���Ňs�Z���ܩ�7�P�i���F�d�$B��q��Y��;�Q�|�L�$��t�2�l�#�|Hc�fg<��+	��H�V��K�i��됟��FY�QB�\'�H��DO�|�	�g�f����z�ĈfQ����\rc��eT�JT�<8�� Ӣ��;\r����\n�3:���i����A3WB��غl���^Ti�\nKg,����A#�A�V�N����ߏ��\Zj�8�řx��)hӪ\n0�홸x�x����C��������7M�/c���M⫕�3j��(�\0�	�.Z��I��<�`�1�ݍ��,=��(:�j\n`,w��U\0�_@\'¸�/���:}�\0�f��Ղ:¢���+Ə���l�L{l2���SF�@�vЅbHl��5�{��عmL�.F��7/%���z�����l[���/�MW\\�-��������@`u)4�)C�M�Fo�Aٜ-�_S�{z��Mz��H�W��^��Y�-������I�`T��߽��7�ޖ�;_}�%**������y_�t��qx�GT��tƓ��3�֠ˋ#Q�f�#G�\'��c-�yLa*/���\no�W�Ĵ�x��M>q	���kW\"X�`SZ���:z�(r�硞~D��,��ۨҽ�l;I\"�����{P�G�ɄAi%��h�u ;��7|�W�-�~F]܃��gV��F�c������p���b�e��1y�5\'(��\ZNC^ak8�H^���DC����wm���*�;{�����2Z���Ϸ��GQܦ\r�{:�U��҅���������2��N���Qq�<1�	º&\r��}8��1䘡��(Ë��gkS4�q\r��0�~�b[�v��5�Rn���܇CUg�hT�O<�5�8����� �3*�Z�֯߀�,�K#�6�3�~��w^�{����e���	���.�8�\n~�0|��3t�4�~T��!ݖ�ڭ�~s��1�^>��}7�؀	�ޢ�}���Y�s�@T�\"d�cġ��h�+R����G�o?Ǡ���d�R�xa&^�U��K�.�hއhѢ%����_���]���#y{�|\\��>��6\Z��^XH��>s\0��q��S3����$:�0�F�ɋY��w�Ǔ��l�:	��&ލ��p�g ̐.m!&F#W����j��2�J��0�!8�S9	[]�]X�ۄW~��u��rX��}?)nRiP�-�2��Z\rġͻ㾍�Y�0x0�I��f��~��:���Ä\\���\'�ܱ�nc�{c8��1p\'E�\'�l�2|��r��p 7���L<��dti��]����s���������_�{�b��E��fU�^s�x�M������G�����?y���Zw��=�����N]�c��a���\"��:�)\\s�58��3`fTK��S�o���ϝ���`���P[[�v�:����FW�8gyE9�.Y�sǞ�f�EXE~������Ï ��f��z\\|�8q\Z�|�#�ٻ������\'�HӫS�t4N}#���h��|��Ͼ\0yg�\"~^1j?-Es[�~�L��I�}�Y���xj�4t���̞��=:aH�!8�i�G7����P����{ V���C2~(?2����ⱇŻ��=;v�����.��\"TVV�s��\'�rn�����?�IK�ᑝ�Pb���\rj~����8��\'�s��-,��ҁ0Rۨ����v�,T7r����d��ܤ�p!�`�����=����4�8�D��Y�[���IZ��	�[�pcC��1c�cxw�\Z����j�����H�M���Hf o!$�Ѱb\r^dYm�eJfG�n��[\r��5�$�<�7k.�x}��Q�U�VX�b9v�݉�͊���~i�6��������ѣk\\|�%j��T�DIY|h��M��WVV��n���l*̔���ѧ�F������Y0��\\|��jX�Tf��g�~|0g.Z�Z�\r���p��,�%���k���A���1d�`:���ԩ#ڴi��CY�e͚5ʰ���*�q�H�H\'dZ�F���d����\rw�{7\Z\Z\Z������~ݺu��l���^�+\n�K)�n�\'�{�ͷ���IÝ��ݻ���ұ��0�&��u��\r;���֫oR�$/<,�^�F��g����}����������}Ita����������<����ׯ��f�g��j�\n{��Q�+J+���ukW������7�Ƽ�wh.z�ЦB��`�\'N��\n\"dZ��|�\\Z��RZGb��D�0H&}�9-�R�m	�EF\nYM�������q���T*oX�.3aX�b����6�5ھs$�J+���BIޅ�;���KF�4�p�\r���8�K\Z�b�z���&5� Ln���tv��\r��������\r�ֻ����,�ӄ<2(GF��<r$j%W�X�z��3v,Ə�Gu�*�k��U|�W^yC�����x����|�\r�k�S�L�^;�)���d7l�KK]\na���yO?��ZCC�Dd��ѧ��\0#�e�Ļ��\'KT_;��B����z��v�a�;�}�v�w�$l۾��:�E���;��̙(\"�hצ=n��Ft��E�7I������?��&!\Z���W^Ss�u��E��0��+p`G)��Ch^�����\Z�)\'5Mf-�V^Q�6�[�m�S������ࢁ5,/O��c�39(R)�\r_{�5�u�Yj_Ϟ�p8���)MkO�3���I��GN<�`!�����Q7��x��Z\Z�\Z�G�!�\\�f������K[�9�@c1)=�_Zɩ�j~�p~`~v�M���!B�*Tr�H�{�,�E����{�d���2,��x����@N\ZN+t�K�4�&�N匬�GI\Z�9D��kF�)�����\n;^X﷍��m��?z�(�ao���g��>S�E�=_v�eع�i�����+�)��2�Sr<��D�e˖��oR�V��1��s�=W\r��,G��ڐ�Ȁ �<2<�`�Qҳ�A�嘔���5�t���Ǚ�J��-wl߁`λs�Z�Of�<�����NR.i�뮻Ny,&c,ڵk�������.:t���̚/<��2�/���Q��ߎ�3��$�g�{�|��8��cU��3�Ĳ�+Ѻe+F�,�r���yV:�M7���3Hĺ���0����K0���(0d!�c1�\Z+1k�K����4����A�x����f7�t����\Z�?܈jM�K+�^u1�F�89&c�e�M�!\'����QhK��!�C��]���H�#a��Ay�����7��p�O(-#a������r+ �f%U���ε����i����K�mp!`���`E��׮�1#��,�l����fH�����4�����4ZA�ђ�Ɗ�k8���䋅�J���ߪ!b�{����Y����s�Q��d����\'e���/����t8[�lQ�L�:U����b.��L��G���SkB^qE=���Q���� ���bx��_D��U�O�`�ƍ�I%���{�yg�}6�?�x5F[�]t�E(++S�>\\���͛��/D���q� �Sfn_����w���;����y�t�b��C�s��S=�����1�&\'��c	<x�$���G�u���fM�I�ȴ�2W���-�Ϗ���򲵸k�D�$����r�{����,�Ȧ��K�]	�\"�,��t;����a��}\ZiV�i0&9�	i���&��A�P�F�iOyٹd�q�\rV��<qF!�VB.OC,��I� ��,d\Z��@����g���0�4�B�I+\"�\Z�[�t����j�Qo���;w����J�H������ �k���\"�����T�d^]@�o%���5�]�c.�|v�\0[��E��%x���i����YBr{�%�(�߲eK,`Y�߿_91����%�+׈��|��DQRQ�K/�TM*pP�<�?��=��ԟ(����U$Iz~�[\'�����G���h�`��\n5�J4�HңG�>O>�$>��Cu݃>���������F����ea\Z�C���$R�ȳ|�&���\"�mݦ�|������f\"�Q$�*��c~*�-ƫ����_jZ��������Gs>���aُǝw���ꬎ�V���d�<��*ԊH��y\"ɓ_m�Z�V�}��ێV~=\Z��^�m7=�f�/X�&��2��\"��lh��(�eI7�\"iZi�`���hL������c%�n�\Z���6�̄c]<\'��@~c������E�w�X8��d�D�g#p�\nn���w�Jo5��l�jaă�;$�j6S����P ���g�yE�n��G�q�q8�葘��lg}Lh�\'|���/\ZT�>�@x���4`�\0U>\'�|�R1&����-#����p=�,W>Hd��ꊷ�c={�TQD��?�^111�	&�+B�5ߋ�@�Q���4��8��R��2P)33Ӧ=\r��K%�,�3z��g[�nźu��L!�Z�R�hbd�\n��7�|�7�xC�Gy\'�Q\"?4yF�\\��/��7߁uV5e��X�H��?�w.��r���^Z�[]/M:v�UW^������\'��ˁ�߮�COb��}��GK^`ʔ\'�f��D]r�E��8D�4�$_�\r�I5�Y�p�!�1wXl�o�,d�,DfaҤ�^F�����G\"p��\nEf\Zd6@��0̌��\\BZ��/a��\'D1�d�Z䀫Ď��4ޟFE%��M�-�ZC�Ph���~wެ\0\"9:�:� �ք>4�I�6X���4d�:!�6��g����0f�X|��s�{:��|J��#�02,Wc��?,���q�	\'(%�C����\"�B�G��|.\"�]\"�D�ٳg���_W�nP�#�C�x�l�%*�~1Y���KՂ��&����i�_�裇�ۿ��[7�O�ŷ+0p�`q1j�7�<DM\0�{�^̘��3^~c/8O�콓�\\<���DF1f�-F,�|�rś$���!�Z3E��d\0��=��\r;i�N��8�9,Vd�6�݈�.:��On4h(���Ku��t���x�Ǫ)��s�V�!ү�B~�(�{�o�믿R+Md#�Ѝ��,TۿU��w�(�m����(#�B\Zʩ�,=,f�\Z��o�L��4�ǚ��<>��2ۻSz8�Q��>!^cK��D#[P�luķ^B4-�h�C�&�wl�b�_2��,<S>Q\ZK�i�s��۠�����1����)���l߼{��_�I�<}���L�y�ix���i����N��7N@G��u��*��駟��+E�$T��!���nS�#�����E�)�\'�H`�D��/���Z?O\"��L�$�w�!���	����I5J\"@>���Ȥ�&MR\\A��C�2䫮+��:�Y�\n/��2��hF���b��ex���q�	\'�S�X�l5\n��!3=ٹ��%�ꚫճJD�w�$|@��<���E�:�A\n�ٽ{�zF1X1~9G�� ����ĉ����Kǌ�杻�<.�� ��s�E�h>��\n�7�!G�[o�����iTu0r�I���[�n�Z<�\"��E�f 3f<O�r��)�J�|������#SV���WMA�-q�	1�jՃD,$5\'��4`�E�2\0J���5X�6�,&Պ,����v�陹j�rc�C2jT�Ȥ�xҭN�j���]�5@(�P�����H�b��tW��X��:��Q[[��A,�\\�x��\nZ���C�6����QZ�-�K�L8p�31���p�b|����ݧ�RD�,�\r�!F d[D�H���?���D��\'2�F<�(�(�D�*B����X�B)�xv��}��UF\'���/��;����`��-F�8	7O�%ue�l߹�0�(5G���ĩ*��7_~�R�c�;��eUї�{N��th��T�c�=�x��$���~�1�]d���OE���������6y2�?��{��fCp]%Z%�x�b��@Ez\r<��*Z�j����rrrp���%��{�q���(Y������ԕ�ꫮŔ\'�:��^��f&&~�\n���A�z�ʄ��4	�\r����#�/f�g��\"�+��˻4��4��b,��t\ZL��!��Ȭ(��m\\WsUe�ܨ �Hح0�3z�#�2���Y������x��g�r�g�Qt��׌/���&>H��7M�	g��)etغg/�mބ����5��g_x=�˧ҫ�(�A�\ro � �[8��G�+\n�e�c]�vU\n$\n+�V8�xb���>Y�N�\\���u�e��~��F���\n)��۷+�\"�%�Jt�6����@%b	?8x])g�\'�ѵs���Ĵ d�2Y����H���wa�K����������i�Ȼv��K�^Ɗo��,��W\"�8�T��#(,,TSyJ1b���cX��n�^���)�*���Y�u\"]y�s�J9�ټn��hӲ-�t퇺xo/x�v��~�t��j�g��>�!u\"*e\'��K���d%XZRE$j���(����,�u�7����4�@����2~$}+;UT�����N�Mc�eƐ���Hd�va��H�I��syO|y��db��c�*�G�;�@�2�{Ò�\r>�iF��[c��]��~���\0>�3\'�=:���E^V�<�j�2�,JiN;m/�A�Fn�Pʞ��tLz[˒�E�R���ʅ#��uBL�W�X���۫t�޽{q��7�����_��$\'�l�(�d���ǎ��H�2�3_��\\#J&�NV�ZKHq���:��I��8Y��Y5U��K��1z�\"�\'�0�7zu�	�ۊͻb��u�f�2�3�a,ZL�� �v�M*�+�f�F��~�J��;��H���!6!$]�n���@dH����K�� �V�rGr��\Z�ҧ�Hb�ӦO�5W_��Ř&�z�ѕ\\G����/1��g���)��(NqƎ9G9�ѣGc붭��Kp#�Q��o_R���V���++�h�]S��<I�g\r�Y�8��������Q,D^�[�\'���Xy2W��UmbL���b0u�T^�,�3)\rzbTb�$ ��\rje��x�Q�Lq�7ڰ�o�S��C�A���4�cӶ}x���3	\Z��=i)/����C��/���&rYM�m�6گ?	1�K��*ޛJ.�|֬Y\n���J;��sE9D�z=��*:l�-]8�xa��`\'�\r:T�G���=��	�~!�${$�[�R�\\��E!% PEQ���h߾�<�X)���d|D4���4�ա��Ϝ�����;D����p��ޝ6󾜇��=���c�>���3\Z�}xm�+�p�<,cT9��s�%� Y<1\n1�ba$U,�R�W�O�[xڌ3�q�1|��l�׮Q�p;�y���j����$l�OK�	w�����F�:�Ν;⤓NV�5b����o`<�����Z��8����������zyփ�(1��R�?N)��O(�\Z��2K��M%��Z\'���e`��?S�p;��H����*e,Cr�q�� ,K��WC��P[������F$�G�\n���QUZ���v�7�����$������$��i��=\n�^t	.��\n�s߽$���b�;n�3f��<��B�3ʌ0��������� �@��@&1�d��x�	G�<�!];d��i!��%�#Z\"����I��`x��^�hb�srsT*y����$���_qR7�?�8�	#��48#j��*�;���ڇw�_�u�68v�q�x˝��J����p�G��A��}���v�q߽w��3�T�\'�^�X�5$--K�I���W_�`�p2�]��<��c0���T<���ѻg/�z�-h�h�ŗ_���O�y����+�8�ޑC�F���0�Ij\\�+��´i�U#��d��s�~�.�T�������?[��}�/{y�\\����O��!�ƒ_W��?��ĦR��r���\n���J&�|[�����+��\nOJ�P1Bּ��A�O\r�Mz�x-�+���\0�k�ϑ�Y��+����Ͳ�c��yj���C,�	?Y6�;m,�y�=̡r�u�����>�p̱�Q��\Z����Z#o����E���}p���)�,�xMQl�*B�I�xzD�-P���VE��F!\"KsK�U�]9$�+�v⩅��h� :�o�1]�;n�q����r\\q�e��U�鳦��7f��Y_\"l���3�B�$���kQ]b��%f���O<?\'\r���n����\r~<��u�ZF�>}���GQ�$�)���oH��}��pBJW\Z9W2{�͓��d�䘴�ȻK���G�I\\��F����i�ѷ�|�hT���ږ�,\r����ߑL�@[i��GI���_f �W���+��(�@y1MX9T���k\"&���M K���2y!��t$%|L�2bhq}B͜(K\ZD|aē15}eD#���-<��#w���1�	��, ��E��_᳧����nŶ�.��V�ۧ~��CO�䩏`���ڃ�NM��Pd¼�o����{p�y�Cۦ(���_#��,\rFf�CO.\"A�eI���<y2_�	����jjYEQc1~\"�i�	�:(�o$�$E�܎:�4\\w������ 2p��`��FI�V�s���eع��={\'wlf;n��,#���q�Wcw��S��a�_������܄P<	����n�l�\Z�t��_�;�y}zv�2WQM�\n)噄��r�-�[�����{I4Hd��Og�c�2�w>(��z+�3*HJ]D��8�O/���7E�@�S����D�_+����5�Ͽ�����\r��[֔#������đfd1�(uI&Z�cʖ~ �e�-E6d��D��=EFV�&9X���`���y�}e	7��k,i�����҄H�Ү�\Zg��8_�Q��֠[Wl@Y]�3s��	��gc����\'\\�o��\\u)�}�{��fE���4���T���\"RH���\"�Q\"����Hۀ�.����f���E����Y�\"�\'x�`���n��65B~�k��?z3�V\Z�\rn\\xŅs�hL{�)��⼳�\"��@��>(�a�e���fr�g�s��Y�c�_���<��n1��g���]�c�9/\\�5��c�:7lT�pJ���i�TJWfWx)�#�G��$<$!!�^�Z��(�ö���7)��LG %]-�JwIZ��2d@\"�\\\'\"�ҥaS���x~I~���4w��N����rtN�#|���T5�u�C*�k��M�7\n��S�?�I�X����b��d3����E�MI��Lg5Z�$K�g �6\'��݁�3{�tod��o�\Z��2$���@�-��:%.z҅�}���l���K�Ǥ�OE�xi����+���Sѕx{=\r��3��AG���B���W:묳���&��&�X$8YҤ���O����!\"�.J\"�,�E֮]�\"��^��������h�m�v*GS�ޞ�W���v��xC������߾E���ii��!x�!u��ۀY/�DcM5*���Xd�����ř/�ٷ_V�\'���1}Z����z�A����LϮ]Uo\\i\"�+^Y�y��٥��(�8���.�%�KD����9(�-I�߯�Cڜ��飌KZ�󉑉�7�<�3a��U���/)�_k\"��8�V*�\rvB�t�SM���@j���X�.�gf�hRW^�\"��s�f�(S`��H!��	v�՟6I�(>������a��&1����|�0���!$|q�\"F%	3�bA4ZC�b]�xa���NR��!b���}�g�b`o�<N�Q]�HM5+��q��z\Z���_��8�����PQS���\'���:Ge\\��y���\"�\"BH��KJTZ�},�>�����n��pBR���+զ1���A*��_��<���G����vYn[�@;���Z/�^$�lC�C: �6�\n��5߁IO?�m������e$��T]�ع��x��WЊX}��-x��⩩C}MFv$ʤ�M�L�;o��O,D���\'X��͊ټ�`�\\�±�=HbAR�!%�\'		I$��I�ɞ�Ҋ���b@�O���!I��{I�C�%�Hz��n�\Z3������^yE\r	�ԡ#��)c�Ϩ&�����[�/�X��1�峑�p�q掬4h�Yt�H���N&�b�\Z�]���o	ed��\"�������i4:Qh\Z�,<)�2��D\'Ӌ�-H�c����Ln 3*�ZYRL�z��j�g�͝㍨��P��I�bd�A8������fL��	�r�;�x�v�jX�Kp�y��ir\"�c��m�\n��L+BX��J��ȝjV|�Ōz���.Ǆ�nS)i�N�a�H�ś$��Ǧ���F�*o\Z�E�d٭Z�$�l����lۢ\r�J:\n\n	+���<*5�y�V՝B<�`��h���p����rfd9I���-��s�n$�����}������%G9�6o��C������6<��BU>?�3\0���\n\'�<��ϊ���joi�7�̱���K������Y�j7n��R�Œ. \"��7~	ԒFR�%��]���ԙ�uy?��	��T��f�׿�Jb�Tj�ꐝ�����_f !*ݐ�NFya��^���C����ɴ�#FX����#&����\n Lc�9tm�.2Q�~j�L�x�<2�2�#�(w@\'��eج�w5�����5�r�:�hݪ5��؁�cEU�*X�`tۣpI��aK�²��aD�!���k��yX��?鮉�9s֮ۈ瞙�Y���=7܂)�%��Vn�kg.C���1mJjz�&��#y��0��	�^�*�/�H����h�HW�;��W߀��a_��	�6,_�] ���6#��FN��p�M�PP��F���3by�@�5�o��Ш�9|ʸ|�s����رvL!�8�L�\\����ؽ[��H,߇���b���q�%�{��I�;o��ߘ�U�6#@�q��q9��.CQ<\r\rS�`t��ش�U�Ei5)��҅_ PS7�*�J4np�]w)�%\\D�I��Pڂ��D�D�Nb\\Rfj-�`@��K��D��B�29��ؐѠ `F�`ee�ᯬ@���D�-���t&h��B�e	h���D褣1�D\r����ڌ���� ���,�ZX-Fo�Xej�@#��Q���-u�a�\rj�玹\0#O��N>�r���}����ف�������ዊ%T%��s&�q+Ɵ{v�ډ�漅�\rB���)�E�У{�.x~�{�5x�	8%�<��K��Y����L��j�J�z�v�:z��|����Ui$ܸv=�X&u~��V2�jQA3���݈�\'^~=>޳����kwnށ}�cN?��:.�r<}�Q�Y�O�:��s���kKG>A�?1�uk7�;&��E���0�7�A-�|_�.~#�\r޹UH�zPIhܗJ���\r�K����G��F��(����@5ҭI�7�@�|\n*mX���j�FBI:�x)0I��$�+�p/iT>\"9�SH?-1\"iC���g��&$\"�il=q�����B/�6���r�w��O�i7!�g@@Gh����LN���c�����a����F��q�H��F��ʕ\\�F�1v��M�f�T%\Z]u!��*�c�U�����#���C�G�v�yNS�ƨѣ�m�V�2�^u���<�<@��!\'IKM�u��h|�ú��kpՍ���.B�6-��ؑW��-�6��6��Ў���(|�p�lL~�q�Hɧ��O��#<7���WS���-x�#����a�5\r�:(ޠW^w\r�k�eާ�pc��a���n�(���ǎ�}�7-�,�\\FJ�#i\'�Fc8��`\\�\rj�ȑ#���)�r�\Zl/ۄ̾m`o��1}�<�F�B��\n��}>x���z�5�\r\ZybVZr�r�Y8���F�y�JL[�!���\n��^hqϣ�TT��W��#�c��L�}bE�`�QK\Z\\2P�İ���z\n1�:h0\"��Ju&��q�&��g�_j S�x�l~�Y$�>���J�E^A/aj��f���g�RQer��0pza�\"2᛬�d���kDE��[��\rA���ozg>j���]��_�[��	c�v3������8ꁑ��چ��Z���Vv�i�6Zk�P1v����\Z��\n�>d4N:�l߷�,y+�w�g�$�:|��\'0�,�l,����q�MW5Mv����>��s;~�>��h:w���+���\n	�|��l<DCY�ŧ\n.���	K���~�I�ރK&\\��+���/>g�\r�_�NH���؏e+���Y!�?~8N>y��nW\Z���kP�qH��Ւ�Hb˞��I/�?�%�F��\Z��w1���\"]��x;/|\n�LF��i�XM�e�\'^_�X��p#U!X	��n�>������.��9xu�shHF�rhқV��0$s%�-�K���0+}Ф�S��H�A8����9�]�z����$\\F�}y�e����0��g��K\rd鶯q����ݴ�r��A�������N֚��E�3��a�`��fB��V�,��z��ۀ�^L;�4Fѳ�#�v�a��!�{nʫP�WV�/�{�:|��8模X��\"���L�����y	F�\0]\"\n����Yd��f�f�˨�_�\"&��08��xם�U4-�<��	�Uᡛ\'ae��z_o�\Z��=��ĝ�݃��!OO�iYh�4��[�G��]���U���LU�+K���\\�q$�E����+8ulS���]k�\rG�\Z�W~;�m@V�\"����˯�1����>F�Q�T\Z1�<�>�,�y�Y��\'��;������#���Y�:�mf��aFd�?���\'}�x_��	�l�ډ�D=6���d�iBF�+���Fa�B�.jwv_�{��P���?[��n�	˶l�Y�G�	�(c�i������\"�I�\n����lB֥A�LH&m=u^�Ș�c&���i�?S�R�����̱0�����z�C�4┆@k:��t\r�W#^����ѥ����8��`t���Ы6oQ{f�A�\'��;�=�[�	����\n[�P������3f�D�<3g����\0f���͏p}�UR��������!��\"@��Q$MVBQ8��H�Mq+������b7*	AJ��4�n�1�r*=�b���dҽ��L}��1�^{�Eeh�r�U����<��%�ܧ?3S�|JA��g�!�>�1��ZL|�I��Y&D&�)��!��S/E�_��������?�X�)E�xf���ѷ���\Z*�8ܾ�1d��A����`0RY5��HAF��0�9_}^\Z��F	r���OGS�(��\";#b�={wc@�~�[|\0i��Qc!��g\"�~�6�	��x����N�/\"���F>���b8?4������!F\"-�b<������P)c�,��$#(��o�����\"������}���K�m��x�j�~��ā���F-ȧ�X�P���!]���$��;�(��L�WTc���X�n�^�u�va���hH��_L��:�m�a3\'=�p��0\\u89C�θ��k��㓑3�7j���օժ��q7�\rv�-�pd�Qܪ-Ҝ6t��|����5{P[U�/�[��5�Ȓ���e��gW�*6l�Im���~���V��|��2<�x:�G�G��=���/�5X�|s.�\r\Z��.�H���<\"2y����X��+�sƙ�9�/�v\nN~�Gipj]�\r�\0�8\'�=O�}�׬��MN�`֩���&��+Ѷ�5�k�y(�����,l]Pn ��Dpc����&7��#`���oB=!��SF��\r���	h�øh�x�e��\'����W�^��K�b�bEt����5�ficκ\0��L5��L��f$�p����T�9.-��M�RZۥ3�4�hU�g�~V\rВ��4*ʤB�%��U�\rD�ׄ,Ix��Ar�X��&	{2C�lK�L2�\'�OoH�7_�7�E4�G�@�^��K����ѩKWto���J����15�o[�>�ݺ{6mƪ��P�a���<�3r:�Z�EdZ5���:P����5ǰf���N!������	�i@o�x~NF\n��Z6o��Q���WU���*�ؽ�;`�w�P��cm�6h9v��F02س�pX��ތZ�L���V���9���	�l\\�hB�֭��ҡ�r<�\Zs��\Z��߆��\"=��;\0+������;��\n����``ƪ?k�p�5�EQQl\\Ŏ�1�A���;7���<3�������9z�1��y��=�<ϳ�S��c<`���#�=�=w�EO�8I����)#�U�0����y�im��AG\r?R�|��x�i��MQ\Zԣ�X�Yb9����X�^7I�B]~�(E�a���t���k�T��h�)���Q}zT�=5��=�q�:^G�LQۆn���k��:�)��A\r�Yd�W�\'�n���~�-\n\rn�:3�]��Y�����eO�t/��E�sFHN�#�|��t����?���8��l���E�\0�Gt��/p���_4���5Jf�b�Ҍ`��0�>�z+T���ܬz��K�^jӶ\\Q�oMZ�0\\<}�,�^<W��������S�d�6ZP9K�5�(��@���r;G��%];+������դ�z��R���Y�*ӆ�5�Ǧ{h����|yE�;�[�H�ڧo����o���v��\Z�����mTܡXy\n�a��Hi��F�l�֩.R�_��fzD�T@�u3�g�-\'�AK�p�\'����s@o\r꿶>��7���v��,]�n(s3`��C�N�|��6����\\Z�W��N�Wmi@#N?Z[o��Ο0J�/�Z��؋-\Z�k��[ף�XS�j��QgEw֝����s���SO�k5��Rۯ���U����v-�D���\\eJ��?IَUv��?������7��\"��|�LP�����P�e���+O�D�����|�����ŔL�*�JG���<*F-�M��t,�>g�%�E[?� d�*\0�b�]����\'�Z~�\"����\r��k��7���)�j�M�Pa���Ϛ*�h�}����U�s��jөļ��j�)����1�a��@X%�a5zI�	5.�q����D7�ԩ�����?��(񏯴��[����B��E���[��f�%��,1r��)�rM����\n��ft뮒�m����V�@c��Č�Y�\n�t*U�4��x�����ap�2�ie��UU���Uk�Z�!G���j�Y��X�AF�R�3���sک>׻o6�Ȗ2���z�ɉ�X:�9pk��3mU*�ѱ��t�Q��=1�)M1b��諭<���T�F@��\nuNб����*U�.W��\Z5˔���C7�;Hw?���O|��\Zհ�݋�h�c�a����5e��:�ӵ��V�ﺷITk���Ϙ�g������/��~}���sΰO|5�ѣO<�S�=QE��Q�v��m0L#�<\\�{tQ�|Ka�$���!��e|��D̟��`!�8e_h��o��=��N~w���������6G��ٓ�\\�{�3|���Riy�ˌDy��C\n�76i�2\"$���/���j�vR����M�L��s,��KYl��V��ł\r��gM����$�z�٧�(�X��UZY����QC��\"K~Y���Xu�u�U��JնCGs�ɤ�0C�\ri�3��*3�_�`��N]��7P���E��O�c�_͞�X:�ʊ\n}���*.e����%�z�-�tݷxQ3����q���Ӣo�NM����e�y��̹$<x�J;+�h�\n,����ʬ���r�7�5\'�U�`g=y�9��ě��w�nE\']��Izw����mPzA�xx�>��S���x��Ͼ�mw�qS.�~�������i�m�*��k럯4�=r�y�k���}6Tr�R%�˪�Z���zq�;���w�Z�dƀ@���%��#~��O���\"-�T0cI��W��y�Wu�s�)�w��j��_d��7ݱi�-�|�5�5/1�U)�ȡ��&Y����������B�ZZ�V� O��Eber\Z\r�Ua��S�\0�<�.�І칛�w�^��k�����%\"��r�|�~�=����?�����P�hWd���b�6(8q��YW�u��F���*k���#��G_�\'}Tյ5�l��ջgo�,���^\Zu��n��&8aJܧ���Da���VQTX�[t\'�kW����A�X��3V�_|���\n��gO��5���M�n�VMz��\r�ϱ�wH�������nՌyS�k�l�\"un�E��?]��ӸG�iȰ�\r1*��T]�wv�p߸�t������cu��x~H�f~�����Q�F���.���7���q�<ʵ�\\-{��������~�4MJ!��q����ϕ)�hT�Q�q�񾐑�x�8Pi��Sh]���޲JY���Ju�,ZU\Zn��v�J儕�4LkX^����AxBF|=��\r���� r6�CA��v�W^ڠYuR���W*/`<���\'fN�j���\n����Ǩ�������f���ەx~�#z��)z��G԰�A����/ѵ�/RE0��;�}����M�J��z���~1�DK�>�k7�-�E�B���\0p�4�ї�n9ҍ�ן���;�PmZC��Sn��^~�m�	c��߾���\r:y[e#�T���U�ʚ�:D;롽�ԡ/]�oꗨMY�[��U�N��Ze^�F�ߠg\'ͱ�`�\"����z��W4~�8]t���{�6�bs�I*6�t�i��W�P���W�GT�S�0�S]��J�?C���)o�k7ƿ�v���Y!�7���U#C?\ZBZ���bN��ǻ�?xFh����V��29b��z��5��+Fu*�\"��k�ux_��B����0�1��)b��N�\Z��T��w���%]�/���8U�[�h<��YR��YC0���w�j�D?�=�	u)�S� �\n�6b�3ɏ�*eʚy�\Z�sskQ\'0�0~����y�^�z�m)�ն�m�g��S�n�m�]�Mg)	�c�;V;ﴳ������ �l@0L1�A�I�WZ���������o����0�cF�԰��\\�;���[��Lm|�V�Y�P��:��F��f�;�Sc�L�M8M_4.�WZ����7,�Ҋ�\n~�U��j�z��ΩU�!�	G�Au/\r9B;l�UӜe��7��<�ְ�p�fZ�IJ��\\E熔�2���gi������7M���A�o��\r&��☩��2B�����e��a=��A��ʪ�Uf �.��]�<@��J�H��t�Xl�1���P/�V�%�F�*�*^�Q�}�Wd��g4o�4�4���������uUg��&Ԩ(����т׾��ĺ:ꈿj����e��J�4=v�\rv���\nY��%&=S���l�Hs��7eo\"��z$��O�`4�� Ç0���P�6gl4��xq&m`�-�wr��|ch(����]_X���7�vk}D��b\Z�E��9@g�k�s�JS�U�9�uH����\\�=r��+�T~��\nO�H�&��E��rs@���eA�D2*�1�y��:}��t�g��X���2��=���t����X^�n��i�gU�j�QG�3��Y�ǁ�\Z\Z���Y�ʵ�÷�6d�H�r�~�ab\nf�Ĺ�fp�䒋/�˯����rN��_V�� �]��*�3j�fU�d�Z)\"�2���\\U/\\�@ۀ��b��\Z5w�j_U�]w�M����q�:����f��g^�MOܢ���TU�˔ӡP�9I����CUy�W*���cnզf$�����-�5_n����\nUm;/`L�]��yˠ�`nZ?#�O����8�n��/��ڰ�d���h�^Q���V���7�q\Z\Z`���Iib (=��K�R3�h\'��+��:���ܚ�?���ZS촷����z��O7��Z���9��O����E�>|�*2�ʉuT��/]�NE\nT6C	f��I��>��gvS��:��TRT.���K�ŋ!M��s����f8Y�O�a��j׾�2�q5۩�I)\'v�)`׬%1眘��Afv�������?���kx�5�h��ٺ��_���ʒ���ZE���j�G/��}aӐY�9���PAc�,��hFһMO-�p�>���=�r�<�x0�\0\r\\o]uY���ʊ���Q_{��v�zGU_\\�%K�����J򋔗�h�[3�nǵ����**.�?�yVG�{��>�Z5�\Z�{-�+*�����t�$32��+����L��zk78\0�&:���i204�!����s�S�m&�p4s41��e ����)sf1��/�<�O���c���%J�~1l�ն}[����+ӧ?Ҕ\'��ե�Tx��͜D`�^�:Y�Y~������\Z�凋����N��Y5�6nS����k��ճ����e�+���\Z�Ae�)u��A�7�X�7���T~A�yÁ�f|;S��<�-\n�8�VDz�(p=��Ӻ����ZF�4d���q�ԍ�f�ߛl���FkZ��U\ZA��gl���)t(��4����Cy��<��	��4���]r�)�~�*V�F�T\\Uv#R��K#y&=:��z��Jn�^�[uRۺ��3+5ηZ2y����s��Z�_�|�����m{Ȏz��z�������\Z�0���L7C��Ϙ�T+F\0TB����\ZO��9����(<&��_-h�!@F�(��p|a�*PCz ��`�8�).ҨW]_��ǎs��I��`�\"���X%.h��^�vH���E��3RK��O�ڵϚb7�����,�v(�����M����o�ˮh\Z��Bc���j�t6����w@���?�p}��ۊ����\n!k�L�\\����x�@ꁱ~����<_$2���&C�ת�Un c^�U��q����e7�.������P�\"��(R�V��	����n�f��\\==�ԓ��O��kϩKI7�j̝c�l(���?p�X}���v�ZR�@[������v:T���L}Vc�{�}p�ұm��������f{��s���\r���E	ɲ���L.���>�/�dn�((\nM�j�W��p��Ѓi| �d�=G\"j�i��E�6o\"0,\Z���=�j�\Z��uǘ�u�a�=��~Ϊ���W*�U�����J�jFr�^\'��\'ha�Fm�e2Dj׿Q�ےc0*�	�0�Iyox*�i�����ՠ��6o���z��o��E�>���8�`wmx��H�gc b�hcǈ�\nу�	9g�3�\'dXU��\r�	6>�r=s_�⡬[�3\\(Ur~F��,VvI�z�h�56���(SS���z��j�Ҿ9�k���u�yg5\'�\"���5�U�Z}���p�͕Wlx���a�z�Hޕ�_���e��kϽL�o��\n,\"yѰ���@K�IJ|�\nT��F�?#���\"L�{�]�F,�� ��j�6Q��\'���M�L������d��]��,��D�xe���5(2���ZZ�H��q�;�y3g넑\'�����A�)]V�\rK�����A�_�*���H�3	�PBq���\"���*��j޳S4�|G���^���΢�1Zw�\0��흁�e��c�/�lȐ]4t�!��kt��?Λ̕ߔ���\r!j���(�\0q�X��%RS0\\���\r��}:}���P��5�I��2Z0i�v.��]���c���6CZ0WW�kZ^붱7ꤻ.њ������ň:��K�?/����{�̚1SSߙ���:C�a�U3�R��������\n�1Y�\'8����V��P �/~���Mn���ƈ$�@����+����,�X�?\0�����I�!�s��e|9���΀���\"|�\"2�����u�u�t�p���zb����[4�s�ʺ�h�����A��WвP��G������mEHs���dAP�v�T%sr��:[�#�R���u�����ӓ�V��&M2���]��.�X#G�ZC��ojDL?Z�r8�,D�$ �L��@.�$���p@��k����b H��7P$��nfD�ɬ����?��5wU��澣�n�d���2�Tfu�7��5HWٲB���Uԥ\\m,���NPRT���*%�Ι��o�K/}�^��\r:lknZ���|V�c7��UPZ f�\n3o��6\r�Vq��2� �Z(!��0�<��<#ގ�\n�!F�@	(2��C>�O���ѠX��*���p�X�U�pQh� �E�͗{�g�W�����\"�\0]u�ni���Oט�o��E��ejWhQ<�=s_Qd���\r�Ԯ!W�g�k�ƻ�)��C�r���z �	\'�\r��@׏\Z���{[�>2�EN\0���Zd�~��@��D7\"\'є��qs̀�L����=�����Vp�_���4G-#Ϫ�?�@��]0i�r�,T]�Q�����J&rT��l������5�ۣ�?V��Q��vR$���/���I�h��[��F���F��r��5��ق�Z��T��z�����7_����ʷ��t�4�r�hMx�9<�0�9tGw\\L��23����g�7��ȥ�#�sQn(�}�S��+o딁y����ߣ�D2\\�r>��\0908PCa ��3�LZ�$��m�c�_�$ӧ�X�?��|}�q�a�c�ZRme�{��_���zX�.t�u�k����V\'��}����=�����?u�1\'�S�r��\0�܃�P&K-��J�Df~�I`<$\Z���l��q���\nU��0�5��ɯ1��vI��D�0A��� M��B�,l�PI\ZI�Ċզ*W_O��DQ�j\r��ީw;��V(X��T��R�Z8��V-UYn��Oɧg�WIwUf�JƤ�X\\�7�X��k\\��A�%���ϴ]�z*��I�t��ˋ�������#y|�7�T����ȍ\'��f�|z����r�����N�J�\0t�)�@�\Z0��:a�j(�A��k0/�}�Ec�ҩ���M|�)M��+�ip�{��Zo� }8�CSؘ��]Kˍ�U�3\n<�P%���W2^k��n=b��Ȣ�A��\Z-��_�=���>Q!����t3]��A�	Ѵ�-�@�.׀48�E�$��y��\Z��es��՛���TmCEj�_�L^Z�,�S8��� \"��|S��(d�6�R]���nT����*85�iw��{�o>�������`nE��z�>�_8O�̢LZ����,l�{o����s�)Q��\n�:�8��{3:!�c?m	�X�0��\r&�B�������\Z8H�y�\n�w���]��[��>�hD�\rۄ����k-xh�x�Q����%�1�3g�t�2b�p��f<�����x�ՙ�ޡ���5�WZh\n^��_M����׍��Ѧ�o���{�1��Qv\"��X�K?����[\n����k�s�\\0,`%�!��cC�(�C\r���Q���GU(w3,�\rb��i��\'�1n\nT��9Y�8��=֢LH2mt����뢥�vԆ�/�֒{��}�ݣ�����eu�uzⵉ*ڸ��2�7����7�>Ç)�����v��N<�X\r�cW��Ê�I�K�\\��@�c|���P�G{T�����,3�\ry�s`||�`?�FA�=J�2��\"�I��X�����tA ��Eň(Fb�x\"\rQe��Ӆ�_�2k,�򱍗,�1�a���mc��9����̐�������Fj����t]�1Ǎs��@ �;�Q�c1��O!�p2�A;��W9��!���q�WD��-\rjU˪e<?!o�WD�Z�e�����Ջէ�X��5��haV��<���8�q�:�St�9#u��k�{%ZV�(���z�:�ޚ���A�B6���ź��ۯ�E�W���-�O�ﳿ�L9J��)��&ἐ^~�iJLn7EY�7@>�o(�L��\r$+���8���7����R����\0���������P,�(y���_`Y7\"��&@����v�����>mk�\0j����6x��d�v�m7]p�y�ۧ�N7Eސu��b��4n�������`��;Z^xP��87�>|��q962T���O�/�߇���!�\\�M������!b\'����?�z^=�[{�౻{k]����][zC^=�k;����K���D�dIu�w��7{7��u\Z��;���Y_~��W�3�蕔��6�yK����M���{m��=ϝ=�3��¸�vsps�y1�0��=��s�o�o�9��W^q����\Z�n�w�}�5�$����z���Z�,z��/��v�%�)�{o��}9��S��6�Ƚ3f���������r�]wyGy�g����/��X��/���w�W��?��g�Y�p��bϸ�{�pL:t��@��/��3�����q\0Ϣ��.�Ǡ�gF�Y�p��\"�g��g�}<3P�-3\Z�7�=�|ϔ߻��K�\'�|�3��w�g��X��̐�Y�f5��J�0�7����zݸ��ѥx�O��+ۣ��{@���uߙ��ޠ5y���ҽ��o�}�%�{�f�u�����^��}�����>��C�Y&���Wƻ�ûo\\�r%�o��O�2�~��3B�n�y[�9�\r�&���oψt�;�)&7xE�4i�g�;󥥑�\Z5�m�xP`_�}1�����Y�8�\0����H��w�b���%ψ�{>�󜁴��`�7q�D��?tƇp�{g��3��>�Q����3�8��`��y���/��:�(鍊n�f��Z4��P\'O��Yt��8���ns����W_��y#�8�hi5�lw���=y�^�������.:߻�曼Ɔ:�����V��k���?�m���2}�,oí7�k��]l.��7]�L	���}Ee4����[_a����-_��}N��l�ͼo�m�ZW]u�3����HZzo�7Nό��!�ɛ_a�I�#���[o=�=��\\w�u���\'�x�3��]Z�x�WZZ�^㹉:Ɲ\\t�����{�v��\\<0�g�y�}ǿ|�Bs�(2��c�y{챇����ͽ��kw�!�x�l��w�=���48�PKC��}�wQ�>h�����AZ�\'>�hM���F_tM(�`���뙉O���y�\\����T�d°i��i��_��Hq�H����`e X�.P�����L�	�fLkb������z�E���=���R�_g����]��ip��	D\Z�I̓�P`����S�w���I��\0��8��H�RK!Q@!�¸�)�m�nFH��`3��-\"�D��Y�9���8gҶ9�.�XJ-��\0���T��W��k��\"b���]�Mc�qA��!��@1z��t�]X����b���N�Uɇ��z�{y����t�@o���x�����_;����z�<����^��/�>z�\r/���)�X8����{�o��{����?%�L�;�����Z?��F��@�9����U[z���j՞~�i�~ذa��;��^������Wx����y����@���O�A����5�u��f�^4\Zu��n����h�\"\'�m�\r���v�mݹ��.ޭ��***�w��=3���(��@�g�=㵽����C�~���[�ݼ\r�1��m�~c���z�\0��A=���v�����`o�u�{m:�y˚�xKˍ��\0����\r�9s�#�����k�&�w�\nN���s�8r�q���6\n�+˯�\r7����!��ٳ�����aq�܌3��H۶m�A|�ohhp�ɶv�uW�P`��_�~��\'��=�����1��_��\"��G�d�D0��cǺ�/���;6�?V�0�Ea��Wt�>�z�5�\'ۄ[��n&��� ?\'�^�I7�}�b�ʔM���霠ҁ��^�\"�n�����>�_���N�^��\r�o�&tSl�s���E�\0W(�1��[���f\\�U(Dڕg_�VqH��iZOQ�3t���F�0�1�_ @� u��BZ��V��/d����C���E��@D��D�\r8$�vAO�_� }\rܡ���˟9��23�)w��2p��FKҳ~�p��!�ͶI�2�8Kpq����.�Рj�n}�^~�U������8.ίU	�Z�;O�����?vso��[y���[��m���Y��6a��?w�����m��{�ͷ�~�: �dK ��E�)Y(29v�\\*�t+�_#@�%�\\������נA���-B�\"-����2��g��5���.�̔�3Cq�2�Őp \Z�ONTa�;wv��4-�c��ww2Y�z�g��3��2Tl��E!Ҵd���ĚK����,Y�d����D#�	D�;��g�?G9�!���-\"�o3�����jk�Vm ���N�J�����mco�v��zpo���^��v�ֺmO/�f̻��9�@@\"n�y2�>���[]ZL���}�\0\\ΐ��9P����dd���AA1.d����\"���B��(��Z\n�n����v�����_ߐ|�|��V�M�hi��q	���o�q�i8\\y���rc��Q�\Z8΍T2��80$�1q-�\"d�,:9�\';�î��ǻ�2ד�c̾��͗�z�;��Z��r�����\r�z޶���;x������}��%ޣ<�}�_��L�����O��>�lWW����]{��`e��g�c�Z����|��zkgPx=_��0�^x�}�?1��<�8�/�s`�xSx\n�q����3Ǐ��@�\"�gR�-A\Z����\Zg��=�\Zp��H��~�g�>��(Zr$�7\n_�:m�SN9ť�q<b�܎c2��cڴiΈz����?B�����(�䢾�:�o�u{f�7଍��w���Ҽ����M$p����.6eGq�R�{�γ��!��1\0j��P��I����C�!�djVT�_+=�o�\r6�}�Qg�$\nx������\r,D�|��x\n�q�ƹ�$!�HT��\r(��Y�P1b��p�B��b�1}���R�\0Ө̣ľ�*��4\\\"�x�K���EDc;21F�FM�6��\r>����ȟ�@f�|=k�7�ʽ������sC�~g���zxS&����n�~�{}σ��P[[���ig������Hk\"xĲ�2��y�7�g?�q��	��-��oҜ���-��5Cy0��<<P�±���r�D?_���34�Q���|���� ���E0t������k��ƥ�N0T�\rD�)!�������CB_>���,��73�i~�:��Ȣŋ�s�9ۻ��,D���4���~�m�~��uݬ���#�z[\\��7`Ⱥ^��J�{�>�m���p10�nhڠ	��Ot!�vB9�W�A����K��|�cǎ���o�o�W�l����X��>F�9���&|�k��uE4�e޼y�����!�-�e���/���k��|\'�`L�#��C2.���]_H\\y���!@0�kN���Sј��qZJ6�5�����K͟�iU�ʫ�x�:w�y�wƙgzk�Z�k߭�y�J�fY���k���;�D�d�����\r�Z�;�C�o�\rq��K����k�ݨ�����	\'���^����@�f\0�h�À���}����C��4��T08���-	?pχ�-!���C~N�e� HH ��~)�e���04`\r���Os����\n�\r�\r5�\0)ǐ�Nl��5\r��������] �ߣg�o�l)�����8_��l�/��&iU^����w�WS[�}0��8�5��͙��}뽆k\'x�}�Ɇ{�m�N���T�HS�kb7����\\ 7����D)�AZ��ɊD��F���m~F��&\n�������br,�F���@�^�z������Ȏ����p`�\r�}-�{�{�R؟|-�$3F�����������%���xp	XF��Hz���ߵ.iUl�۽[ޤٳ|��t3P����In��f�W���Yg��p�v	�&�|^�bP!�!��o����O�ڷo�2-(i\\�z\0o>��c���T�������@ �$�:�+ &*��c8. �6|����-�}��@Z�\"JyY�w�77�˂!�p.@ˤ���\0O\0g}���&�]p>�	)d�\r�۷��駟���6iU��\r\nT~�e��o�׿� �/�f͞�=3��7$ј�f~;���g!��4�����0z�h��i)D��*�H���_ (\0p���Ȁ`m����ί��>��7���\\+��\"z�Ԉo$�����z���A��|����\0����-����x���\'���{��i�\'8��hdc�Dg��3�acK!�L2�K�n��=�UZ���	�B~�W^�:���=�Գ���^b�x��o�~ް����Zo��v1���5������c���<�L����p	�d?cB�!R���a���J��#\n!x@x��2(P�+o(�Eēcdx~���(�At}��ύC]�%,�4#]���xqҹ`v�	���\rM=����`4���8�_�D8���>�Ĵ��ZFć�Dl�=΀s���2���� ���<�k�f����>��S���H����6<ؽnҳZ�x�F�8Hӿ��#�8B�\'7��#�U1�CXMyܘq���I�5�־0%(��f@����$3R׫d^���d^�����tH-�$_|�����r~��Rۧ?ʔֵ�3��h�Bw�q�~��ԵSg7�=Nf\\���:�cE��>Z$t=g�יȌ��n�u���	�»��׵׍�a�����X$���e݌ۭ��P[����kd��D���6b����{���2�r�Z���)ęI+�D\"�x��5!���I��+�n�$�h@\n�e��Z�)�{M�ZMj����щ`��K\0gxF ���%��7&�s��p�\r]�i驩7@����gh�A��\"�p\'���E����2�JDj=(��2� iR��\Z���{�F�t~�=�/��\n?!j���`_��@e`Q��&��@|A)Qp J$���J�+�����D��#�V��Ov�&����\0*�(&5ZAH�BDxƳ\"�i)�ߟ�{��&�`�-Ǔ�LC�		�{�M7��~������4���ӳ�e�X��o�\'{ĵ�������{Q��.�[��.	��d���w��&@>`\"�ȃD	�/��W��l�j\rA1�t�\'o)�o -�L�A10�\r��{�0��Ɔ��@x?R�4/�	�cc|b���ڋ7����k䷅@N71�\'Չ���@T�p�>�R �d��:l�c�����0t��A\"A�\'\08�GBP�_3PlE!j` d�H����.�N��A���+�9�����(��@4�Ϡ9P|��&$��MB�^xoj-��W��y��G\nB��%� @�A@�3��RL$!��r$_K!MMjs���62_�g(~mMS�a��#��`��/���(Z�͔�F0P�EDk�\ZC$AY[\nN:z`(d�J�j�ii��Z��o�b��1���,_�ܑ`�\"K�b1G!��|�ߒ4e�ȑLtrd1eq��3\nѵH��z3�)��#�Q̷��O{��[J�1�s�9W_M�ʍ!B��oW�`�xƋ��m��UW[�V[�j�-��-¤�L��Y�g���:�a1�	�(��/u\\��$�j����O �#\"Ĕ0O�&��{R҇�������� ��3��y	�q��%�V~5�ڈ-HoҧED������V�\0u�d~��6��ZF5\Z�1��y\\�����Oc ����$�q��}���]r�%��nW�7ؘ��-�3��S�q��%x��~!ğp8F��M��a{�Мȱb��=P3�\rN��\0N!�C;�dV�o�?��wo�+�I�ȼ�X�+����cʍ|�i;�\\(揕6N��_~�M���^{���%1���\nd��wnZ�|ڴi:��uֹg�	�(��ܽ�B�N�Z���-�qg�j*G}������n��\'!�j�e�S��7o,���K�J��(�\r<�Mf@A���)�a�.&`n\'\n�(߻�+����׿�aPX�3����b��M�3�j>�U+�믿��`�[<�|cРuԶm��`a�vpEƖ<d��z��\ZH���7�v̿?y�#�b4��1C	����*H�[����˝q@^�s�i��`��3�\Z\n��x� Hs��@���䏒��|�Î8\\�pT�f�rN�/TIi���T�Y\Za����\ZY\"�K�ڟ�/\0Eg��UϞ=]K��-܂\0���;���qK}a(<ÈP#F���E�k��#e��E�u0b�+/6�`y�Jn\n �jY9�2 =Fx�}eF�^�Lz�-Z\\B�>�`��r�J�`.)R��@�\"LO�]���O>�q>��~b��-\nu��M+*���/�7��ze��R�)sL3v�\"����-���Oc ?2A�w��M��~N��<>5�\n)g���6��V�6l�k\n<��7�7� P~ �\"5�.B#x�e�z�i��?ꘑ\n�=��|��䨭S(�Q&�nn��<�r�78k�0�i�`\"��)H���qs�&��C\'���S�J;6����B�dw?�rڄ�lZQ�mۣK������cH+�T�W(�f��_�h ���wU�N�͍�0���*3�ӄן�WK�iZ��f�Z^_�PNJ�X�ڕ�ך�]�U��5tíU^R����_�BĀLSc!_�Dp����LΤ�L(\r�����d�(��0`Y/\"�\"����}�\'�`dD�;n��y��,��\Z�m�Ʈ�H9{$�h֔����K�.yО����r�HPL���1����2��vܞ)��>���h����/���z��6�s������W�g{�3	�R�29A%I����׾�b�I3T�(����L��~�m�P�t�]7�FGl��s4��|8�K]��]z��wU��kd�\'���v-0✀E;�F;w5�14��t@y9�:}�=u�nG��MӒt���zA�w�qG�$���\n`-�,�Ld�2�d�9���t��w��O��@4�ᨣ�r���AĀȳ%s�\Z��E��l�-���S��Y���,^�Hk]����*P�E�<Spe�B�3g����	�#�<u���w�(L)B��t״�II��ўk�m\'ڭ��z��[�v�2��W4b���iWdǑQݲm�(j6�o�voQ���!����1�cF�5�	�g��E>�6E�T\'���;�=y��\Z}�M��+dΒ�\Z2�8M��*u,Q�uϳ��o�E�H:Ǣ�=�v�ᬒ��$l�Z��Sv�BE����m��\'�i�����qk�ZHO�\ZA��q�?�\08���VD�q�ƹyi;u�䔟�\'�!�\\\"�E���d�&���g��&����\"˭��1�}��6$��Q�mT���-���D������r\Z\rz5K��6\Z�I�w�N����U�&_u�ʭ.0�,T�W�hCT����R�:韋�Ԁ�vi��%7m\nUk���(�.jϹʫ�U�>fǑo�<�t^�����YP����|\'ڨ8Y��\\��ʨ���\"��*X��d�{�κ��G�m䆚o������ܯ�g쨩U��Q�;���J�x\"��`2O�@��#���2��\Zr��X��dݵȋ���<�S�\Z7獵��V����fǶ���Ј\\�s�=�`VːN!���s�N!�������*�c߾}]m�hs饗��0x��-�n�3Q������oM�W}�����f1�,0�*R�<s](��PZ�����)5�<%B@��}T�y�d,��E������ј�e�\n�hc�����4(�{[MK,�NWۼ���|���YT�����AM{ԄS��M�&�V�O�=�[����d\r�e��������E�P�NЂYА�=2f$i���v|��kn�u9w}1����X���B���u���Yᘝ_\"�X\"d�-߮�E�ܔR�Qv�Y����T֮E<WC ��XZ�J(X�)�*�h�j�՚��Ͼ�޼��\'�\Zb��PxyjT�}�8DMcȐ!�{T��:�,��F� �4��b��+�̌3�l��r��o����v�o�/����+��%{��{Ԕ;`J`���%�8���&@L*������I3d�CH��jL�*4ަ�jTq�{ʠ��jl0�	(	IEU��}v��ݥiQO_��Et�i\nu*����ȖPإ��o�0k8?�H+QS�U�`Xi�)���f�d�2f�je�3�R�(K�J��f+�ի�\\3�{���@�|�\Z]���j�w�v~�H�GгHf����������T�*\Z�S�A���Ze�s��H������T�\"p�\"NF񢀪�j3S����U3�����\Z�o�ጂ.[�����E�)�Q��}XE�-Fq�ᇻa��0�]u*�o��a�U�Jz��/CS�h	%z�7��r��_�����3��c�;�kJ`N�3�0��4�ɯ��c�����l4�aQ\'l��!�{s��ʧo��d�ҥ!%͸\Z��{U�r�t�\Z,��#���3Cw�{������#h�G?~A�Ǟ����<۶�t6��HP3��A�TȔ5�T����ɛa|����#&Kj�i��o�δ,R-U~�Re�	�r��\\�D9��)i�ґ�o�J_V�惮�_�ݣ�(�W����>HE};����p3�)����<3�\Z�*ޢeڦ��n<�b�����,ꫪu�S7j�ד��Q��D��!	�{����7_��N���\n��b1��k׮�8�Va(4Q��,;�������q��q^s�QN��Y�6���cJv��1���q x�,��E����|N	����a�K�_K%��j_�^��۩]I�zt��7�Q�λW��A*��sTT�)�<x0\'�@N�]��ô-�fW+�������X4�xsA3�@�@���F3���+_W�����m����xg��.���֘�.��WN��kQrn�A-��32�|��\n�a�K�x��.6��\\�2�ͦ�7�9�^�`�r3���3K�EL��H�s�w9�\\�o�fQcώ����,\Z����6jg�g����Q�~��*;m���Y/�p���G���WV��>zUU˗5����Vk \0\r�T�)���m���I�&x5�Rs��q�(΂P�hh�C��Y��<�L�HQ�����G��V�8���y?�݀2@w�M1��s�}\"\ZT��t�?%�p�*W9!���)W��1�S<�Q*��g��0��������?F	��}�\"���(�cN\'�*��#ǿ$��w�����}�\"�m�e�������I3\\\"\\u܌�Y���\r}R��\"\r���Рb�.�����d�*�\nj���Ϳ���2��ݡ�q��bѤ��zEq��q���+߫Q}�<-,H��/�h��/��@҆qI���.���<�9B=�U��t3�3m�\"B�b�ĉ�;iޖ����q���:K1��������`�n��1����gҪ���ټ\Zz�1�I�(h��M�7m8\"aP\"�c�¼g��Q�K�i��M�>��Lӎm�Y{6E6�v⊱�&v]�H����/=h��~5hf����U�fF\Z4C�UL�Oe���_I��������p��)�̸�8.���桃wW,/��ß���Ks+T�X���\ZU�-WU�2-�^����,3�ʬ�=�h�/�{iU�0GT�޽]��!�ߑJ�:�ڇDD\0��迢����P�5HZW�,Z�D}/�]5��Ul|�3��R�PXS��A\n�F4a��Z�}�o���A����l�\nJ�\n�xI��SBc	O�P\\����Rj�$_So|�`ڏI�������ogʘ2�6�̉(6�n�?��SƔ>Y�@C;m��<�>��q�y�76k��{�i=:w�\"��Ӵ��\n2yƁ<�,U���m�E��\Z�����������:g\r�WQ���v.IC�ax�E ���>�Wo�w�g�m�V��9y��wt�Wٽ�v�K\r�慢M��F�Meտ��z��^�{5�꿓Ve D��m���g���\"r��E�V�\n�@�	&�ܠ������G�B�\n}/�S�]�T䁱M	�I�|xM��!{So75e>5�2�PA���2�^Cل�9�*�F\rΤyM�2E,\n��`7���f�u�\r5愫��۴>����ǯi�{NS�ȵ���\ZO���+7Sg^\'Ou���X����-�s�cxΌ\Z�O�5hǖ�P�\",�x�FE�F����t1����L�StYZ��g�՘7�8�e�uZ�졪�2�TQ}�E*����]0��_ɥK4����:����Z�UA,�y��\"�E�ꢋ.r�����`d�ױ�N;��c�u\n�����4�����7���k& ��ׁ�)����Sp#���`ʸ�)�EyqCbY��\ZO��4�m�c�?A��6�g��*��Цb�H\0�b�s�`�I]<Jz٢s�0�P�!��H]J��U\"�*�z�)[S����P��-��\Zg	��ގ�ZXg���J��t�w��j\Z�\\Z6��X�9_l1Ğ9*�P<s�E��Yk�Vc d� ��J�t�Mn�z �����6��\"-�\Z	�`1p�I(2Z�5\n�\r�l�\0Șv\r��#^`<�n�`�Q)S��XJY{�:市��:Ӛ�}X�GfP���X����\Z�v�x���v�)���Y��H�)j0�D(�5-3)�H�$�(�j�̨(�Ry:G�F��-Z�!\'BI%�;�F�$hQ��x��~I\\��Uh�)�k�u6oڹ	�8k���2�O2��00_0�&g�h�\Z�U@���~Z�w�S|��6韂�AZ�AZ�\0��_���{DTd�FYSHS\n��7�\0��Du���5%	�!��2��凕\r)S�c�<c�,�b\nt�j��r�3��\Z��Ϋі�ԿN��y���C?�Ǟ��v��iE��R^H\r��La�v,��\Z-a������Kƶ�\"�\r�����[�;�DQ��k�?�Ǵ����бW��s�g�y��iY�F3�����:�l�~/#�s��Г�ݨ]�ު�ǭHZ\r!\Z���t;f����\'6�o7�~?z�(�)h(���uw�z��槅������.����_׷�EJ��&*0��5c�	%��%ÀI4m���[�ѡ�����}o2➳�����6q�QJ���x���1H�l;Ua%���ϿS4�\"�{�qP�lk@�_�n�g�N���T^��ݴ�O�I��V(�gD:Y�\\�Th�%�$`F��X�X�@�����x��_��`X���빆E��u������*��� M����\\�T�\rX	8HE�,)Ѥ)\\��N�|Q�����y؍�h�Ɋ1�s:עKL)�bɀA�4\r��`��s����\'h`�Ϳ$����9K��SX��ʱ�eQ!�\"��.ϸOcF�R���!��,bS�hR<g\"���*���=��Gy\'�{�>��z�)\Z7o���:*�Pd�o�M���A���5�C�|�St�߷����ړ:l�y\nw�S��d���	���b\n����r�_�u�ѧ4�꿓_y���I�ρ@���7&~@��\Z��x�����}N����xo<�R[�\n듊5����9T��f�Y}��Ϳj�Z\\ȢM�v����\r2���p\nMJ���W��6\Z���C��Gm���l/l�C��[#6�a��W�v��8��nhn�#cQʠ[�3k�#�$���u),���=���_�G?x^�U�GT�mÊw)֒6!--��2���P��WNռ����?��<��ݔ�7�бLT���5��g��g�\Z=	�0n|���ΰ<�ϥږJ;é	f�1NS�F	~/����?7���dwN=�7�?٦B�ʖ��:X��C�x�*�;n�5��]���`�TVmc!�_������_�X{�E��۷.��Q[��Ud\\(j��F�0iQ)Wy�b����Ϳ��e���^Ҭ��ZBxy�ny�(�!�6�:���c��u���j�ˏ��W��ݢ���]�?{Q��<�-\0�h�`kQ3��q�FEh�	������^�m��m:��%����f���)i�;��G�>�2�[�!���T�-`$m�i�eM�\02�D�=�u�;�k��N���?в�*�i}8k�Nw���5>յDpY lP5�<;�(���ˑ�����踾��F���{Y�AV�,02\0�-�Bs�vXv33� �f�B!����\"��>0林iK�q��2Źj��*����vH��[4a�_}�[(�x\"���}�+?HsO��e�I�Xj�:������aS&����!�X�D��+��˕/��z�n��au��[u��I�ev�T��Ro�N��k����,�P��?��\ny�B�}(��1�f] fN\"�@��9�@0OY��7+�/o��.������������9L�퉂��.^[��D�9*-j�H����R�Ҳb���X�v��T ��ǈ�앗���a�*N\Z<�N��0^���t�Tb?�C���iP���2�=��5}�w�1�]�{�ӧ)עW���[b��<���yD^�\\�A�R�<E���%;��q����̄�����PQu��͹	�낱+�8������A��q�4�D�P^6��y<�_ϙ�\0��yĘ���/T Y`�$�X�S8�1tF��`Jd��z�\nf�Q�J�b���Z2{��8DG����|�9�}��3���lL�N�F�#vdy�5��`i�����-�y����-�:_�jƏؕ	�׏����	��\"y9�G�Tj��*��*;W�,kǏ�d´�4\Z�1�d7=c�:,\nj��\'���P\"Xm +Y(\0zA#��jb9���U�Um,�����b6���(���U�T]�QEqҽ���*�W��@�A�h����F�s��2;QzV�S蜍�c���y�?���e�,���*��)K+5c�ِ���Z��T������Gj�u/i�P%>��LeR	�Y�X�R\rJ�����U}^��^�US\n�d�%���Uܠh��*��.щ�������\Z[W��� +Yf,��5������KO0�m��:F�[�3�X�{݄t��\r�Θ�{ӎn��D�eI�@}:�Ў�6��CRa���/=��DxݑRw�՛�Ma�gN�J�g�l�q�o7P_�m嵈�\Z��d��~~�&~��TO��5.f�K�P��?{��>\'�Ue�ېRa(�n}u�����m��F��SV�� �}>E�ZłFҍk0���kl!v���o�H�]�1�<�LTWR\\�5;�R���RoЫS�U0/�J0��m;GiǍ�D�Wj�7j��k�W���Y�RQ�\\�M�����y�jQu�vY\nsCJ۱�����=�v���|���\r��FVHk��:-~�m����[/V��/�9H+/�Q�{��tk�\'�叔��\n��:����)�?��o�Dm���Տ�w�����W�/79LK�}�����G�jY�5���!������\Z5i���C���z�۶�0�X_/k�]�Z�Ym ���\r.!m�0nZ�m	3�S�nEiۧ�.���Q����Ѳ�@~y��y*��>���Emv�G�_��ږ|�ȋ��,������U6��5�AVg�V�|0m�6:j��p���yC���T�u��jW��>m������G�H���!��\"�K���N�wm��X�v{������g��-�������Ɍ.,�Z~_Y�V�\\��:|�3���.�N�JTאt���&e��J&t��\r4�̝u�i;�O}�#/}���CYT�2���%X�EY<�I�[���u��[-��jY�RY۠6E�/Vא��k(�j��u>Vyf8̪��r7I���F��2̞�­a6I�9b�T�f��I�&��}��n-$ey��^��������HY��	��%�KY�#c�J��`\"��`���`�!&��{L���\Z�[�L��e���eYm +Y��[���D�S,K{l�K�_���U\'��6�[G�R^4�L:��,���E��������G�W��/�z&L���(�+��┙��o��V7�=k82�=c�f���X&��Ƙ:�;��i���&�{ꩧ�!��r�)��CX������e���d�g�>�s�^*��~]v�{\Z��g���e(K�KS�m��4��^Uq���d/�\Z2�ol��ƾ\\��{�n)�z���Ӯ�p)�3�0¬�\nϚ��l�g�d\">�����t�T�3�9n���ez%\"�������6��A�`G�8j�EF��.���tܮkh��M�a?��ۡ���Ǘcw�j���5r�:rHo����K:-��؅�0�{�q�1u��\nB�<K�a|���X��_����V�/iidD+B��aP��:��\'f�g �C����QX���	s��2��TK,I�\0���%%~I� ��r�%�4�+�\r��C\"�:�2!0�,ڨQ��?�_��9�Ԑ(���\0\0\0\0IEND�B`�','PNG','bpc.png','BPC','A',NULL,NULL),('a169ec8c-af4b-47bb-b648-b21c1c0e9449','ea7049f4-6599-4178-a64a-7499d3366707','2022-04-01 05:05:56','C','Bhutan Telecom','N','����\0JFIF\0\0`\0`\0\0��\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���ICC_PROFILE\0\0\0�\0\0\0\0\0\0\0mntrRGB XYZ �\0\0\0\0$\0acsp\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�-\0\0\0\0)�=ޯ�U�xB��ʃ9\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0D\0\0\0ybXYZ\0\0�\0\0\0bTRC\0\0�\0\0dmdd\0\0	�\0\0\0�gXYZ\0\0\nh\0\0\0gTRC\0\0�\0\0lumi\0\0\n|\0\0\0meas\0\0\n�\0\0\0$bkpt\0\0\n�\0\0\0rXYZ\0\0\n�\0\0\0rTRC\0\0�\0\0tech\0\0\n�\0\0\0vued\0\0\n�\0\0\0�wtpt\0\0p\0\0\0cprt\0\0�\0\0\07chad\0\0�\0\0\0,desc\0\0\0\0\0\0\0sRGB IEC61966-2-1 black scaled\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0$�\0\0�\0\0��curv\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0#\0(\0-\02\07\0;\0@\0E\0J\0O\0T\0Y\0^\0c\0h\0m\0r\0w\0|\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\r%+28>ELRY`gnu|����������������&/8AKT]gqz������������\0!-8COZfr~���������� -;HUcq~���������\r+:IXgw��������\'7HYj{�������+=Oat�������2FZn�������		%	:	O	d	y	�	�	�	�	�	�\n\n\'\n=\nT\nj\n�\n�\n�\n�\n�\n�\"9Qi������*C\\u�����\r\r\r&\r@\rZ\rt\r�\r�\r�\r�\r�.Id����	%A^z����	&Ca~����1Om����&Ed����#Cc����\'Ij����4Vx���&Il����Ae����@e���� Ek���\Z\Z*\ZQ\Zw\Z�\Z�\Z�;c���*R{���Gp���@j���>i���  A l � � �!!H!u!�!�!�\"\'\"U\"�\"�\"�#\n#8#f#�#�#�$$M$|$�$�%	%8%h%�%�%�&\'&W&�&�&�\'\'I\'z\'�\'�(\r(?(q(�(�))8)k)�)�**5*h*�*�++6+i+�+�,,9,n,�,�--A-v-�-�..L.�.�.�/$/Z/�/�/�050l0�0�11J1�1�1�2*2c2�2�3\r3F33�3�4+4e4�4�55M5�5�5�676r6�6�7$7`7�7�88P8�8�99B99�9�:6:t:�:�;-;k;�;�<\'<e<�<�=\"=a=�=�> >`>�>�?!?a?�?�@#@d@�@�A)AjA�A�B0BrB�B�C:C}C�DDGD�D�EEUE�E�F\"FgF�F�G5G{G�HHKH�H�IIcI�I�J7J}J�KKSK�K�L*LrL�MMJM�M�N%NnN�O\0OIO�O�P\'PqP�QQPQ�Q�R1R|R�SS_S�S�TBT�T�U(UuU�VV\\V�V�WDW�W�X/X}X�Y\ZYiY�ZZVZ�Z�[E[�[�\\5\\�\\�]\']x]�^\Z^l^�__a_�``W`�`�aOa�a�bIb�b�cCc�c�d@d�d�e=e�e�f=f�f�g=g�g�h?h�h�iCi�i�jHj�j�kOk�k�lWl�mm`m�nnkn�ooxo�p+p�p�q:q�q�rKr�ss]s�ttpt�u(u�u�v>v�v�wVw�xxnx�y*y�y�zFz�{{c{�|!|�|�}A}�~~b~�#��G���\n�k�͂0����W�������G����r�ׇ;����i�Ή3�����d�ʋ0�����c�ʍ1�����f�Ώ6����n�֑?����z��M��� �����_�ɖ4���\n�u���L���$�����h�՛B��������d�Ҟ@��������i�ءG���&����v��V�ǥ8���\Z�����n��R�ĩ7�������u��\\�ЭD���-������\0�u��`�ֲK�³8���%�������y��h��Y�ѹJ�º;���.���!������\n�����z���p���g���_���X���Q���K���F���Aǿ�=ȼ�:ɹ�8ʷ�6˶�5̵�5͵�6ζ�7ϸ�9к�<Ѿ�?���D���I���N���U���\\���d���l���v��ۀ�܊�ݖ�ޢ�)߯�6��D���S���c���s����\r����2��F���[���p������(��@���X���r������4���P���m��������8���W���w����)���K���m��desc\0\0\0\0\0\0\0.IEC 61966-2-1 Default RGB Colour Space - sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0b�\0\0��\0\0�XYZ \0\0\0\0\0\0\0\0\0P\0\0\0\0\0\0meas\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0\0\03\0\0�XYZ \0\0\0\0\0\0o�\0\08�\0\0�sig \0\0\0\0CRT desc\0\0\0\0\0\0\0-Reference Viewing Condition in IEC 61966-2-1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0��\0\0\0\0\0�-text\0\0\0\0Copyright International Color Consortium, 2009\0\0sf32\0\0\0\0\0D\0\0����&\0\0�\0\0����������\0\0�\0\0�u��\0C\0		\n\n\r\n\n	\r��\0C��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0����(\0��(\0�4�kJ����@8Q\\�ď�^�M�hx�ZӴ[7b��S2���_��젚�����\0�����C�J�x�^�1�x[v�`Â	38����l����\"k��M6��MV�XԦ��;}���(¢���־?�.	�8_�T�\0�W������㋰�V�P���/�_D}����*��}v�M��7�6���٤��gF�\0�k���\0���Y�qq��\0G���G�\0�K(�k����\Z�\Z� f�4\\W���n�\0��Y��ӊ���\0;��C����㮡\r���5��?�ӵ8��p��2JHx��׮�  _�,�0#�R>�r��������\0�V��.�O���K�b��ϥ��e��>�R�7VP۹]���1�?]���Ȩ������gۻ�������Qa�IFOf�~Z��\03�\n(\"���p��(\0��(\0��(\0��(\0��(\0��(\0��(\0�-�Z�>5�Q_��u\ry��c\\k5�Yi��<�1鐠�A՜��\0�Z�i�ԛ�Z�jT�\"�-��7Ľ�g�.��jV�V�f�y�=@�g=�,O\0\Z�����\0ࠚ��g��|>n�=��:y���5e?\"�槐~b��<����#�_�_�ښ����ܑc�@��x!G�1�\'o��8\0(�E~\'��o[�xSپ��\0%��o���>�ʸ����0�伾��v ���i2q�~4�����>,�O����?i)/��Pi��Mu�����CL�����xR=��/�������/�,um&�w���W��ݝU���I W�_�HT�|d�ί�\0��k�B����Hf$FPU��A�A<W��q�T1rU&���Z�h~����´�S���;�����5�~�~&���w�5yo�kq��C �RFC\\~����y\r��m�3Ȗ�v���=�\Z�?g\r�A�Cx��ɯ�3`\nN�ߒ�?�~k��፦�������>h�ࣺ������ZZb?�K�W��\0:�Ȣ�\n(���M\0;4��k��=��-�m�Q9�G�(���^�~�2;4z]�Q�[���\0\0_��8g�o�Q}����\0�cv���/3���8�V�`��e���\Z`��-����W����X���k�F�<h�#�/�;�֩ZxR�?y��x��<���+�<W҃\rZ���e�k����7���8JqW�UQ���>��P�c�x����H�����!殑�G�����s[~�ͨxgP[}Ni��s�O7&h=�y8����d�H�O7��0jm%9]�_����v�oC��2Ps��U-�o��ݨ�m\'[��շ��C�G�����%%x�|�5QTQ�;�5%�\Zc_��\0ZY��u9AΧc��y�ՙx��I\n�G�G�{��N�n</�\r7T�n&Tv���Y!8,B�e\n9;J���\"2)�W?�j��˅��s�MswZ7���\03��p���A_�������\0�(�\r�{���hq�&��qp�y׳��Cݎ\0�P�8�a�w��>>}5_�e_����Q�G7�J��R�It�\"~W��O3�N\n�(�۱>��\0�EH�|0�1\n��Dē���<�o���\0	��B�<�ž��F�Ե�0�h���݆A�|��K��6;���_xz�T���u)���2yq�8P���.��+�q�k)Wh���5�et��*�jR�z.޻�_�EZyt08uf����}�z���z`^��|@���o�~+�M��V~��{h���5�ˡ�GA��F�A�\"�ƛ��S���1I����u��g��q2�֍h��]���kx��\n�����\0����&����h���\\����k8i���#�u4lG��w�6�8�������moE�~��S��IK����+~G�?୞֧����ռ;��nm�\Z��{�$�\0�Q��\0|M��)x~=W�ڭ����p&��:�wVU�yV\0�J����.x��o-c�G��-��[�-�\n��g�����A���xÿ���so�讛Q�E��[� �]�r|�&r@\0�#$�k���2,?���j�V�>ܱ[��������+���ҽJi��v���K�}1���g�\"�\0M�s��ҷ���p+��Y�U�4v_�,�n>F�3v��\0���߄�O_I�Xd�fl�<��S��z�nMz���)Y�#��u��aS���~<J��\\K���t�X<�s�ŵ�4������7��[�fW�!�J���l�_���3U��5����/<�	��s��f��\0���(W�o\ZF�\0�6�\0*�O�]���L�����:单�\'���t�b�(=2�/���>\"x��C���_�~�慵o�j��؈�S���#�\0��|\'�O��<�O�ݧ���;%�\0_$�ۡ8��5����c쨽���Qn�O�)ۮ�q��>�<>�l�m�p8���?�ֿ���U �ED`r�&\n����\Zp[(��+#�T��4�o�R?�W-�/�富4��ƣP�2`�Fp\nOu\'���ڎL)���\\�$�f�\Z�~>\nt�i���_f�Mj����N�ER��G/�SPmG�Ι#�V�\'��~�QR|\"�k/���e0����\"���\"���Ww��M7ݨ-M1�/Q�ng��EQ_Pr�Q@Q@�\0�a������U�vU��_g�a������U�vU��_�|s�\0#�������~.�\0��_�w�\0I�R1�C�w1�r�4α�h]�f *���$�\0�@���\0d��&}��oo��V��^6�-�۠�srG�����vwo���r,Vg[�a��v�^��<��(�c��:+E�{/���ٻ�_�7�|;}}i�c_8Y�z�+�),=+��-�\0��e������Ln�;Kio}�c����::�8m����hcQ�\0=%��Zt2M3�1�]ݶ��RM~����\0,���ŷ6��o�/��^���8$�77�/�Z�\'��#^��f�|q���	s��n��\0��&?�U>~�Zo�\rO��,|C�[H�\n�Vk<����)`y>P<n$+鯈�&����[t{��$��t{�>�k��?íC��|�0�̹�3�(�����_μaǘ,Nd�>\0�<F%�:���)�+<�\"��_w��k�Pk��,V�m���~HΞ��ė��¬�������� 	k¨\0;Mz�>*��[wqip?�a���*ǋ�m�_�S�n��lL��g�����\Z/�ܑ���:������\Zm;w�t6����+��iG�����+�)��%�����s_��{���I?�_�����Q��?M���>��MK�a֎��/O��v��~5~־��->�{��+��ME��Gm�X��s!\\��5�?l��_����\Z���\0�6O�����v@�z�OL� W��(�\r7�4K�x�T_x�S��n�K�ܙ9��?�<�Ad�䍧��&��\\�4�G��<�V��<��յ�n^)����	��a8�0\0W�yV+:�z����<-��\r\'(�-��K�G���ng.�*�T����]�km��o[�m˻���˿�6��Nxu�4~&�o4��[��z�U�g�����d��0�@���w)��m���F+���ov�ws���8�fX�����O�E�-�]�\n(��3�\n��G��������C;]�@~���`k^�${�r�0�	�N�ɫ��ծTef�_Kӣ�l���,h=\0�(�C�+zt�(AY-�D�\n(���(��(����������\0;*��־��\0����ß�����⿞���Gu����&\'��[�\0#j������_�%��?�_5�^��;X>Ʈ2#��ʾh�\0iR\'\0��3ך�\n��\0�|;�\0x8�~%�-\'�\0B�����&���_���R�n��os��@���/��mf��t���\'�&�n�$���#�pnyu8Q��&�z��$ix�Ŗ>Ӎ���8�\n��H��Q��\0*��H�����sobyv�r3ض>�~�����jZ��?�I�^^\\�C�c�:\0:�~��Y�O�_ك�\r�_�%����i?�	�G��9�FM8�<Q�\'�j`���U7�ʒ�4���&��SNڧ7�?^���r�t�b%��j��/����fxơ��ڨ������\0��뎕�_����K�L���6���@���.t�Lv�G��=x@p~~Ex/�A�nx����}6�͠�OvM�_�]�cr���� ��\Z�U�����B�����\0�$�^�9ʸg���ޓ�$�J��Mm��\'���\r�_<D�aď������>��OսQ�6�<{��c^Ԯ�MF�n����zz*��0���~�A��$�է��\'�q��\'���N\'�o��Ig=m�s�����EZ�E���#඿�C�Z}�ψ�]2mGG�o�,eD&9.W��ݴ����򏋼c��A�=浭�Z���?�qsp�ya�\0UT\0\0\0b�p�9S\0�����Z���[k�T�����������/�WK��l�M:��%����5�6M�|`�Ѯ|mס���[��7L��ɱҡ�8b(�\0��\'\0����y$��aF$�:��\'�%��f���_�_�L�$�_�6�+>�w{rs���#��b�E���J���Tm�Gw��^�[�N�Y9IŶ��X�@QE�a��QE\0QE\0QE\0QE\0QE\0QE���f����U�\0�*����	?(�=}��\0��$_.7mX�SS�����}��-�/~�+��l<a��T��*�i\Z<�4��+qr�������6�\0;������,F75\nPQnO�*�.�v���}m~g���^o���#v�n�%��u߰w�u�ٿ�:���Z�����{\r>PV{h��,���ܪ��3^���z��O2������g8X�Տ������cP���	6idv�.n��,y�&>��������y���:,��j��x�D�\0H�@$�M$p��\0z\\�}Al+~/���x�G0�g,6M�mB?j��mG��\'{�h&��F�����\\�>�֭�[�I�n�\0�:?���\'�xhک�\\��A��G#p�|�s�r�A�8f_��+�_���\0ͮx���+�X�.$�?H�9\'\\֯<Q�]jZ�����}!���w/$�{�?L{\0\0���s:�O�ц[��T0��8��\'���m��{��#����c����b$�龝�{/���IfUQ�v\0\0d��+�o�O�_����2���YTIac(����v��f86H���%���ǿu�j�����+j��I,��H��!{��\nG���I��߽~��Oѝ�Ĥ���wJͧ\'�t�{o�V����:�F���^�]_2MEyY���m{���\09���f�5dU��E�\Z|c?1E:S�M�m?��W�������5Țu����C��·)ră4����#C�U�@|���Y�1ٔ�M�0�W��}��\n�Fa^>N��c�;n����U�&f��	?�~�~��o�|#���q��PGp��\r/�>�_��\0��³�������r^��FW�Џ6@��g�A_��#�����kc%��_-_�}\'�ڍ\\S�h�����QE~�~�QE\0QE\0QE\0QE\0QE\0��Ev��>(�L��:XX�ɩ\\�E�{oo�G�x�#�ϳ�M���f3P�M]��.��Vm��ԯQR��\'�Ü/�%�x[��5B�=KX�ɞm>�P\Zye�<��L�VQOm�ʩ�k�>\"k�m#37�uu\'��ܞ�{��d7Þ�>!���I\ZY�o6��A������8�loھ��q��x�3/�%SG���Hc���w1�;��p� ?�_�!f58�?����-I$���ޔ���^�m�_�d�4�WYnW,M]e.�m�\'�Em�\0�O�������K�_\0ȿ����?�a g��pG���\0|9,�\\�I,�<���I$��<�NK1<�NI\'�j9��$��3;y$l�I,��I9$�I���O�!�o�7�|_�y��4�.�P��X�\0�5L�?��$��#����o[0�<B��(�Ҥ�\nq��얋V��v?�2��\'���<����K�[��-���g����6#��\nq�WƟ�f�!.>#���\0��t?�Q���|��x×_�Pj��S���m2ه��GIeS�T$�Y\r|��4��R~�~���m���/��5�]���j�&~�o��W����{S�.��R����{���Z{���|���,�{�Nk�l��~���|��\0x����)�Zz��/;����>�ĸ��K��Ӈ��\0�W�6n�Ҕ�Z�>|�?h/��o�t��-�/.B�V˃$����죽|�R�XѢ�);%����4gZ��M^RvH���	=�I�_\n��<��l��;M,9ѿ�\\{<�/���z��e�C�6>�֟���k�ip%��+�8�B���u�ֵ+�[%�c���#�V�m�����ex���Ǣ�ͽ[�(�P��(��(��(��(��qEQ���4=>k��v������ޱ�^�\Zr�Y��)�މ%�m�Hq�n����m��5��;��@�����\'��\n�\rO�\'�x-q�_>X��\Z��?�O3���7_<K�yr6��m�d����{�_a]��q��ǿ/<A����n1��{ۂ	H�Q����C6:\n�1�3,G�9�驺Y>\r�N[s[�����1m�wg����q�J<���Q�����k���jo�M���Ǣ�m׌�����P�@��u(�røW��t�#Z�����l��5�{Z�f����V%��=OVf\'\0d�\0&�}3F��g�r����\Z�k��ɛɳӠQ̒9Ȋ�\0�\0���|e��\n�~�¿����<�k�|��S�N�[�πs������rG��}�N)n�H���ړ�=[����qFQ�T�&J�>��Kv�_�\"ޛ9o����\0d�\0�4�Y���W�|/�w�����~�,�f�\r�f�|�,�#8\0�鏎��	�����s�\0n�_(�\0�#T��0\n�٘���W�%_�S~.�\0�ؗ�\'���w�\\.��MSRS�W���{�e���Z�����U�f���9�n�JVI.�[���<\'�k���Q��\0�_�HzW������W�]ب�R]}�Q�oq4qG�I3DE,�18\n\0�x\0rI��ɮ�K��?�Ϥ�c��O�\0MS$���յ{;;y��.�X`�/$�1¢��bN\0���� ��a���3_G�*�f�&RBv[!9#�1c�h/��7�( �-ѼUs����F��=���\0%G%���h��8\'�^?^ů�5��S���\0���׆���+�{.�����mSe�cS��:��@޵�/2���ES\0��(\0��(\0��(\0��3�\0�Iq޼O�g�3�=S�6�L�ٱ�&�E�=�}+�����D�O�[���@���\'�?װ�>�����u�6t�\0�m�\r =%n���}��_˞6qV;9̨�}���k5��1ߕ��/~ݲ�����\nR��?~���͝\'¯	Zx7��)���(`y��!R�\0	iX�%F}��k�o\Z_���\n=�E<:rZ�{K+W�S�iV��<��{JW;\'\n����Y�\Z��1�/���`���<[�L6(~x�l}�8���`�B=����]�O��\r�ȵ��g�Oy)��eo�c�\0\0\0\0\0���p�K����\0{=�Z�U���;E|)�����)<ڪR��_���R�������z����������_�{����yf���@���r�	��`�7�f`2T\\� �+�������\0��8�j��ʾ1���\Z4�f���\\����[%ʝ�ͷ��?�����gU�bf�\'k����o�>��\0�y�����|/�T�%�D�\'N[;8̺�uyX�#���n#\"��#���W�5�(mnd����\\��I���|0�L�[�W�(<���Xїv�f=g��\0B�[�1��C.������_mv۽�2����E��3����Z�:>V�zSS��\nq�_��ܛD�ƥ�_�i:=�֥�j���[��%lg��\0$��\0�@���c�X�6�$�7��_�(�o�d`����A���E�:�\0�C�v��.�Z��裘�2F��E�7P�Q	���������p�+��V�����Ѵ���������G\"����T���;.�Ԡ�oM�t\Z�����k�M�-��M.�!�_�z2A\Z5��A��_�}�ʮ�J(�1�QTEPEPEP���^Geg$�ȱ�\n�v=�jw������O�b�#m�j\r�Oh���g�\r|�qE�1�}U8���I�����Z�x$�5�B=_�՞m�-^��/�ZX��k�V��^�=���I�_�����tt�\0C\rƪˁ�_�y���^�����A!v�H�O�~�w�\'�X�~Xɂێ�\0�߇��z�qL:�_���u��6mⱭ���\r��;��*6���x�i���_�����=��M�;���:���f��5�\Z�T�s�.&n�ǰ�F\0\0��EFP�N�5J��V�7Z�J�uj��������>~�5_�e_���w��>~�5_�e_���<s�\0#�������>-�\0��_�w�\0I�Bs*{����Y��9$���?go�\'��_���q��:]��ך~�s��,l����<�B���\0dcw���x�t�,4o�m�K͜�;�����F����D��g�Hr�\0�<���t*}�HzW���}��\0�������\0��њ�\r�F��_Z���	غ�������W��c�������g���\0�&���\0%F+���\0�p#��i,�s7sSQE}�b��??\n(���(��(��(��(������bO|D�X�\0y�ȶp�oˏ��~u�גyQ��&������\n�I�\0,�ۓ܀H?��S_�Hom��)�.�[��?(���翪G��ͩ{|[������n�����χ�lcm�a2?���~$��֥2�����+����=�%�$���#�\'\')9Kw�QE�I��\0��|8�j��ʾ6Ѵ��j��~�kq}}y �{x̒�碪�I���\0य़|E���?t?\r��^^L��<�+�f�2J�!{�z(b@�N��?c/���J�(�W�5�{n�Y#�\0z�\n�\0�8�pw6bp�G��\'4Ϫ�{��-��\0n�E����2����qR_\r?v��\0�c���\0#�c_�\'U��g��?�#��<H�Km��Kk�7PX��a���C�w����߇ Q�K��\0�M] N���;������.�SW�x\\�\r��J�\Z6V~��v����/���B6W^��v��������5��/	j�?�%����]jz������(�X�\0�+����g�~�~\"�M���[{p�m�\'Zة�\\��{ ���d�����\\����ῲ�0��J�G��I�}���q�܌vE�u99c���~c3ɪ�/N��]_�WW��zټq�6!��J�1h�g6����js_��\0�q�1�SQ�R��\\���c��=�^f�Б�#�}�p>�@E�U�ex|�	6�����ݶ�?��L�����˚�����h�$�^H(���<(��\0(��\0(��\0(��\0(��\0������\rx���>��l��e�{\\�.�M{��¸?�&�uh��&e�ա!�a����ـ�AZ���.��1v����p5y���y�o�2QVN�׭�g)�ӄj��*�������;��ϭI\\n����5�\\�u+;�����k���Gӟ�kE�I�#]A�qŅ��\0_y��VW���\Z�/�f�&�g	ZI��:������}�������#�cC����PT��=J�������M�����pj��՘�i��Ï��/�_Y�^����.�v�@�{���O%��O$��Uv�-h:j�J�-]�*�Iԛ�Q�&��ն��ՅQZQE\0QE\0QE\0QE\0QE\0QE\0�F]�Q@kl�>ϸ|��E\09`�QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0��','JPG','bt.jpg','BT','A',NULL,NULL);

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
