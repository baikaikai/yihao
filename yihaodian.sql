-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-04 11:38:10
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yihaodian`
--

-- --------------------------------------------------------

--
-- 表的结构 `dongnixiangyao`
--

CREATE TABLE `dongnixiangyao` (
  `sid` tinyint(11) NOT NULL,
  `img` varchar(500) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` varchar(20) NOT NULL,
  `src` varchar(3000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dongnixiangyao`
--

INSERT INTO `dongnixiangyao` (`sid`, `img`, `title`, `price`, `src`) VALUES
(1, 'https://img12.360buyimg.com/n1//s360x360_jfs/t4606/317/4268218735/193033/466a5343/590c3205Nefdfdbab.jpg', '迈克.科尔斯（MICHAEL KORS）手表 mk女表 钢制表带 镶钻时尚休闲 女士腕表 MK3366', '1698.0', 'https://img12.360buyimg.com/n1//s360x360_jfs/t4606/317/4268218735/193033/466a5343/590c3205Nefdfdbab.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t27418/146/2028947914/749134/f862c954/5bf624ddNa73e3d05.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t27142/265/2076207321/479266/359c33e5/5bf624e3N4193e356.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t28765/158/512447604/407428/bd2e457b/5bf624e9Neecc7b46.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t5458/347/1134487561/328636/fda238d8/590c320aN6d2cff4f.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t4702/290/4261541957/106460/7aa34968/590c3210Nffe26fe5.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t5425/326/1155826404/156450/38657576/590c320bN83b3d0a9.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t5434/298/1127738785/251883/c787fddf/590c3218Nc69f1b98.jpg'),
(2, 'https://img11.360buyimg.com/n1//s360x360_jfs/t1/37519/32/4383/253566/5cbd7b70E6947e64c/8fbf9259f38de2d7.jpg', '八角星（LES ETOILES）法国原瓶进口红酒 八角星干红葡萄酒礼盒装750ml*6瓶', '228.0', 'https://img11.360buyimg.com/n1//s360x360_jfs/t1/37519/32/4383/253566/5cbd7b70E6947e64c/8fbf9259f38de2d7.jpg,https://img11.360buyimg.com/n1//s360x360_jfs/t1/49411/4/372/606128/5cd5437fEa8e83f0e/5f2f20af730d385e.jpg,https://img11.360buyimg.com/n1//s360x360_jfs/t29815/202/1246846885/246923/393340dd/5cdbe76aNaef83e24.jpg,https://img11.360buyimg.com/n1//s360x360_jfs/t1/16042/35/10551/203635/5c885f86E8daec477/9894f2a0120c1d0e.jpg,https://img11.360buyimg.com/n1//s360x360_jfs/t1/25866/7/10571/266737/5c885f87E2689f397/3335e039c89dfb9a.jpg,https://img11.360buyimg.com/n1//s360x360_jfs/t1/34617/29/3773/261957/5cb98b79E143382a7/6b137c449155fd72.jpg'),
(3, 'https://img12.360buyimg.com/n1//s360x360_jfs/t1/38315/23/683/275800/5cba79b1Eb850f94f/a96a0bbf06089c52.jpg', '摩里恩（molien） 古筝指甲 成年人儿童指甲生料手工打磨 乐器配件 8片装中号', '27.0', 'https://img12.360buyimg.com/n1//s360x360_jfs/t1/38315/23/683/275800/5cba79b1Eb850f94f/a96a0bbf06089c52.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/31460/22/13430/326304/5cba79b2Eb385d50a/a3412593b6ee71be.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/35187/30/4021/402017/5cba79b3E9d49ffc7/3c1f024a1b263e5d.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/37811/26/3421/207408/5cba79b4E8dd93784/b70b399bd8937ad6.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/35826/40/4074/286949/5cba79b4E5e05cb20/c0e064ef69a5f17c.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/25522/6/15783/356315/5cba79b5E4a02d24b/509a19976b944b63.jpg'),
(4, 'https://img12.360buyimg.com/n1//s360x360_jfs/t1/57849/34/395/58919/5cd530c0Ed0646464/ac1e301e134f1662.jpg', 'MONTBLANC万宝龙 Bonheur系列幸运星白色签字笔 114832', '3899.0', 'https://img12.360buyimg.com/n1//s360x360_jfs/t1/57849/34/395/58919/5cd530c0Ed0646464/ac1e301e134f1662.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/58726/21/313/29549/5cd530c6Eb6818138/eeeca6d700e2c504.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/38878/33/7011/61874/5cd530c6E699c8926/b76381aa5535b135.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/41850/1/4639/73870/5cd530c6E7847d6c5/1c18ab2a5e95e5c8.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/52457/20/416/64649/5cd530c6E870fca2e/ffd0284ea4d89a23.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/49137/19/431/55028/5cd530c6E26600407/7cd87eaedd825863.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/45753/22/381/131546/5cd530c7E291bb84c/ff273016b8015e5e.jpg'),
(5, 'https://img13.360buyimg.com/n1//s360x360_jfs/t21889/98/390931591/85199/54ce518c/5b0bb464N36f6ecf6.jpg', '飞利浦（PHILIPS）咖啡机 Saeco30周年纪念款 意式半自动带奶泡机 HD8323/25', '979.0', 'https://img13.360buyimg.com/n1//s360x360_jfs/t21889/98/390931591/85199/54ce518c/5b0bb464N36f6ecf6.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t2293/195/1313113472/86453/d67861dd/569498baN8d6f8d79.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t2068/146/1991632990/87123/538fed51/569498bbNb23a09e1.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t2281/248/2031983816/89543/a046bdfa/569498bbN73b77200.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t2575/50/974107015/86503/74d8016d/569498bcN03f9148d.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t2287/180/1381794431/79071/632794ea/569498bcNb93e52f6.jpg'),
(6, 'https://img10.360buyimg.com/n1//s360x360_jfs/t17614/77/2475906497/53078/d1e4c96c/5af417a1N11a46dd2.jpg', '俏娃宝贝 QIAO WA BAO BEI 儿童架子鼓玩具1-2岁初学者打击乐器宝宝敲打鼓男女孩礼物 王子黑', '89.0', 'https://img10.360buyimg.com/n1//s360x360_jfs/t17614/77/2475906497/53078/d1e4c96c/5af417a1N11a46dd2.jpg,https://img10.360buyimg.com/n1//s360x360_jfs/t16864/325/2431456803/164532/d09bfcb3/5af417adN397057ec.jpg,https://img10.360buyimg.com/n1//s360x360_jfs/t16822/27/2416386494/186231/52afa511/5af417b3Ne490ecb9.jpg,https://img10.360buyimg.com/n1//s360x360_jfs/t19483/165/2456151506/177382/890a90f8/5af417b6Nb81d7c4b.jpg,https://img10.360buyimg.com/n1//s360x360_jfs/t17542/189/2413477418/208112/fc71d3ce/5af417baN6597c270.jpg,https://img10.360buyimg.com/n1//s360x360_jfs/t17161/28/2418781401/65833/60124cdc/5af417bdN7c906652.jpg'),
(7, 'https://img14.360buyimg.com/n1//s360x360_jfs/t1/27691/35/4752/482310/5c359768E82cbab9a/04649c76969d9423.jpg', '李宁 LI-NING 羽毛球拍双拍2支全碳素对拍超轻专业初学羽拍套装A618（已穿线）', '299.0', 'https://img14.360buyimg.com/n1//s360x360_jfs/t1/27691/35/4752/482310/5c359768E82cbab9a/04649c76969d9423.jpg,https://img14.360buyimg.com/n1//s360x360_jfs/t1/7413/16/6890/425377/5be291a0E52d9efb8/568225a1b5200159.jpg,https://img14.360buyimg.com/n1//s360x360_jfs/t1/8742/10/6007/154117/5bdfb17dEf6980222/80574af452acf250.jpg,https://img14.360buyimg.com/n1//s360x360_jfs/t1/6071/5/6263/186662/5bdfb17eE3f15c4b9/c5d0248036be7638.jpg,https://img14.360buyimg.com/n1//s360x360_jfs/t1/8511/7/6039/239601/5bdfb17fE1902cadd/f4f825c1098afeff.jpg,https://img14.360buyimg.com/n1//s360x360_jfs/t1/9845/22/5921/152922/5bdfb180E636e855b/dac0b00509961827.jpg,https://img14.360buyimg.com/n1//s360x360_jfs/t1/5974/18/16615/201399/5be291c0E90d28765/37fbf1e0fcbb4371.jpg,https://img14.360buyimg.com/n1//s360x360_jfs/t1/6393/11/7329/369790/5be291b5E57f1ba72/49063b25206ee2bc.jpg'),
(8, 'https://img13.360buyimg.com/n1//s360x360_jfs/t1/11095/15/716/142385/5be39e69Ec637338e/ccdece3fa2a2deeb.jpg', '普莱斯(pulais)潮流防蓝光近视眼镜架男女同款 防辐射超轻复古板材眼镜框平光护目眼镜5196 酒红色 平光镜', '233.0', 'https://img13.360buyimg.com/n1//s360x360_jfs/t1/11095/15/716/142385/5be39e69Ec637338e/ccdece3fa2a2deeb.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/12158/22/43/114726/5be39e69E623c8f3b/501e39679ef9921d.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/6675/1/7920/98310/5be39e55E58c70368/5a6d8f9d2bcea4d3.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t26110/119/2270967863/128750/f97f7ee0/5bfcff3eN2464c295.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t26659/62/2239700145/125880/eb34844c/5bfcff3eN935f9bfe.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/9721/16/7600/43829/5be39e55E1c2113ba/116b1cd1f39a5781.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/10388/12/3545/50267/5be39e55E8a31ed25/bce9c65394fd3edf.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/34089/17/6291/161574/5cbd785dE93c7e318/0e478aecf1b08f05.jpg'),
(9, 'https://img13.360buyimg.com/n1/s360x360_jfs/t25648/89/1366496627/455281/b52105d3/5bbda837Ne1793c2b.jpg', '青岛（Tsingtao）奥古特啤酒12度 500ml*12听3箱大罐整箱装厂家自营超市青岛', '315.0', 'https://img13.360buyimg.com/n1/s360x360_jfs/t25648/89/1366496627/455281/b52105d3/5bbda837Ne1793c2b.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t25726/284/1855207511/806765/4103fd5b/5bbda83aN14e2c4a1.png,https://img13.360buyimg.com/n1//s360x360_jfs/t26278/233/952720303/216891/fd5524a5/5bbdba5dN67e42473.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t24760/336/1867403711/419263/db92dd0d/5bbdba5dN127d874d.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t27430/56/958958055/556924/86eb1bfc/5bbdba5dN43b66094.jpg'),
(10, 'https://img10.360buyimg.com/n1/s360x360_jfs/t29590/124/882074603/359686/7f2c2025/5c0112ceN85aaa75c.jpg', '俄罗斯洋酒 原瓶进口烈酒 沙皇伏特加 礼盒装700ml 沙皇金 单瓶', '178.0', 'https://img10.360buyimg.com/n1/s360x360_jfs/t29590/124/882074603/359686/7f2c2025/5c0112ceN85aaa75c.jpg,https://img10.360buyimg.com/n1//s360x360_jfs/t11098/146/292963616/401155/af1ea35a/59ec3da0N53858df9.jpg,https://img10.360buyimg.com/n1//s360x360_jfs/t9499/1/1991541161/372450/ef8325a8/59ec3d9aNb4b5f352.jpg,https://img10.360buyimg.com/n1//s360x360_jfs/t26680/134/2445632180/79403/44dfb5dd/5c010345Nb753ff63.jpg,https://img10.360buyimg.com/n1//s360x360_jfs/t6070/144/5284707907/404912/3839e06d/596b0d7dN5be60a2a.jpg,https://img10.360buyimg.com/n1//s360x360_jfs/t28576/19/886544531/71381/169dc9c1/5c010345N1f1ad02a.jpg'),
(11, 'https://img13.360buyimg.com/n1//s360x360_jfs/t1/32837/4/1050/167842/5c456bbdE824d7589/b0688ee001c187ff.jpg', '奥克斯(AUX)中央空调一拖四 家用 6匹多联机 一级全直流变频 3D面板 DLR-H160W(C1) 一拖六', '30099.0', 'https://img13.360buyimg.com/n1//s360x360_jfs/t1/32837/4/1050/167842/5c456bbdE824d7589/b0688ee001c187ff.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/26483/4/8479/158562/5c77b668E3d12cc30/918c77f0b91354c9.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t29956/215/514291068/138535/ffc2cacf/5bf6491bN6580bb8a.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/3479/37/6640/54692/5ba35668Ea8e1a587/a4c807c7de5c1f80.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/4344/28/6618/295150/5ba3566aE428c0375/4d733ecf169bf20d.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/1721/17/6685/379269/5ba3566dEd6d7a825/e86cf3035c5e772c.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/5788/40/6627/107771/5ba363e1E8e3e36b4/b7da142d15c9b616.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/2347/38/6592/465604/5ba35696E8662f9ff/21cd1317aa803729.jpg'),
(12, 'https://img13.360buyimg.com/n1/s360x360_jfs/t1/23815/37/7729/107364/5c6e4feaEeb275dec/09de7fe341ddca4c.jpg', '宏硕 酷睿九代i5-9400F/GTX1070 8G独显台式机电脑游戏主机整机全套吃鸡绝地求生 套餐三（九代i5/240G/GTX1060 6G） 主机+显示器', '4749.0', 'https://img13.360buyimg.com/n1/s360x360_jfs/t1/23815/37/7729/107364/5c6e4feaEeb275dec/09de7fe341ddca4c.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/32869/13/2792/111330/5c6e4ffdE96269f4c/eb677009f67575c4.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/10851/33/4454/323053/5c0cdf74Eabc4c938/9f3dca42f18b5607.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/19347/27/753/176877/5c0cdf73E235bbfbd/e50ab9e6620c8a87.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/11133/26/1639/94992/5c0cdf73E6585968b/7074b39a8c629eee.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t5575/198/5488268497/33463/61451f56/5960b5bdN0d0b87f5.png'),
(13, 'https://img11.360buyimg.com/n1/s360x360_jfs/t25813/88/603294660/331950/fc0e6993/5b751675Nad3dc540.jpg', '红双喜DHS王皓乒乓球拍双面反胶乒乓拍礼盒装王皓HAO-S 直拍 单拍 附拍套', '1088.01', 'https://img11.360buyimg.com/n1/s360x360_jfs/t25813/88/603294660/331950/fc0e6993/5b751675Nad3dc540.jpg,https://img11.360buyimg.com/n1//s360x360_jfs/t21772/50/1760719519/430993/e5be8c08/5b34827aN9de0f0cf.jpg,https://img11.360buyimg.com/n1//s360x360_jfs/t22771/210/550380035/303840/8edcd100/5b348219Ne182c4b6.jpg,https://img11.360buyimg.com/n1//s360x360_jfs/t23488/217/539438455/124435/88135011/5b34821aN2ccf1cd4.jpg,https://img11.360buyimg.com/n1//s360x360_jfs/t21715/117/1739502447/227048/2b1c6e79/5b34821aNa5e68f5b.jpg,https://img11.360buyimg.com/n1//s360x360_jfs/t20335/321/1742835872/229867/5db9d65b/5b34821bN1c673401.jpg'),
(14, 'https://img13.360buyimg.com/n1/s360x360_jfs/t1/34364/13/11380/38043/5cf2600aEe76d77f0/698784aad3345c4b.jpg', '力博得（Lebond）声波电动牙刷自营成人全自动牙刷专利机芯蓝牙智能APP互联情侣款I2尊礼白', '210.0', 'https://img13.360buyimg.com/n1/s360x360_jfs/t1/34364/13/11380/38043/5cf2600aEe76d77f0/698784aad3345c4b.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t27253/337/2039963617/142000/bba427e4/5c00fcb4Nf3f60bed.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t28348/228/900286926/81714/a8c55156/5c00fcadN21ffc003.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t23416/175/2470431914/169826/25535cd7/5b7fd1c5Ndb5421a2.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t24367/160/2459173828/283244/8d4d61de/5b7fd1ccNf72c675d.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t27577/300/1903442/318964/180c9343/5b7fd1d2Nf7c45fc0.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t26692/302/2506602/278208/c68a5bec/5b7fd1d9N2f8b9128.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t22747/198/2418327440/113783/62cd67ad/5b7fd1d3Nc19e5102.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t24184/195/2474293040/154557/9307bcc2/5b7fd1d6N0e6440c2.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t23524/213/2402096128/232034/7d8a87d9/5b7fd1dbNb19bad1e.jpg'),
(15, 'https://img11.360buyimg.com/n1//s360x360_jfs/t30010/245/113946355/189453/b1616535/5be8110dN89689475.jpg', 'Brateck笔记本支架桌面 升降底座散热器 苹果小米通用型笔记本电脑显示器支架 颈椎床上便携托架子 STB-071', '119.0', 'https://img11.360buyimg.com/n1//s360x360_jfs/t30010/245/113946355/189453/b1616535/5be8110dN89689475.jpg,https://img11.360buyimg.com/n1//s360x360_jfs/t1/5683/4/3986/195956/5b9b27f2Eb9d71eaa/64ee0e2c5d1261dc.jpg,https://img11.360buyimg.com/n1//s360x360_jfs/t26119/356/921449535/136891/16e477a7/5bbc3953N8386cca3.jpg,https://img11.360buyimg.com/n1//s360x360_jfs/t1/628/17/4559/103367/5b9b82f9E53398962/6aad297fde8cc1d9.jpg,https://img11.360buyimg.com/n1//s360x360_jfs/t1/3666/32/4184/135559/5b9b82f8E597024b8/049c6936dcbfb61f.jpg,https://img11.360buyimg.com/n1//s360x360_jfs/t1/3881/28/4027/165581/5b9b27f4Eb8a4e197/5b6381b1e1b6386d.jpg,https://img11.360buyimg.com/n1//s360x360_jfs/t1/1423/40/4086/137339/5b9b27f4Ebd6f7452/0cb89bdc79baa506.jpg'),
(16, 'https://img13.360buyimg.com/n1/s360x360_jfs/t1/14788/31/6215/78713/5c4836a2E9e2e9c4f/fde47b570ae07a78.jpg', '小米（MI）蓝牙耳机air迷你运动无线双耳小米苹果通用手机平板入耳式耳机 小米蓝牙耳机Air', '395.0', 'https://img13.360buyimg.com/n1/s360x360_jfs/t1/14788/31/6215/78713/5c4836a2E9e2e9c4f/fde47b570ae07a78.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/25482/13/6049/74642/5c4836a2E4e0a7091/83d08098bf4a8d2f.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/17711/17/6057/80171/5c4836a2E660bb5e3/2b4686d74332634e.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/8659/3/13591/29314/5c4836a2Ec552c5a1/f8eb2ae0384ec5d4.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/8308/26/13560/51640/5c4836a2E3d793bd8/8fff9bd633b07125.jpg,https://img13.360buyimg.com/n1//s360x360_jfs/t1/9770/4/13747/143919/5c4836a2E411f45ae/d1ef01286c1a4c6a.jpg'),
(17, 'https://img12.360buyimg.com/n1/s360x360_jfs/t1/14301/32/109/133115/5c074a74Ef00f6858/c14f04be7939675c.jpg', 'Delippo适用HP 惠普电脑电源适配器 envy13笔记本充电器线 19.5V3.33A 65W 旅行便携式蓝弯口 通用款TPN-Q172 EliteBook 820 G1/G2/G3等', '107.1', 'https://img12.360buyimg.com/n1/s360x360_jfs/t1/14301/32/109/133115/5c074a74Ef00f6858/c14f04be7939675c.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/14882/1/123/131733/5c074a73E5f624a97/30db5171d6a66a4f.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/24410/2/131/226772/5c074a74Ed49db00e/82556d5343edb67b.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/26189/3/129/187930/5c074a73E5cafa712/b96af878d668e5cd.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/16733/10/112/134381/5c074a73E170f99bc/83bb2fca186c2462.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/25721/20/113/127011/5c074a73E0afdc29f/fe5a14eae781fe25.jpg,https://img12.360buyimg.com/n1//s360x360_jfs/t1/17993/7/121/229538/5c074a74Eed6b0e21/975329ce0498ca93.jpg'),
(18, 'https://img14.360buyimg.com/n1/s360x360_jfs/t1/80899/29/1006/471988/5cf32e55Ee75cf72e/6a92191351cca97c.png', '富安娜沙发抱枕靠垫短毛绒方抱简约欧式客厅椅子靠枕含芯 荒野Ⅱ 50*50cm', '198.0', 'https://img14.360buyimg.com/n1/s360x360_jfs/t1/80899/29/1006/471988/5cf32e55Ee75cf72e/6a92191351cca97c.png,https://img14.360buyimg.com/n1//s360x360_jfs/t1/30129/17/11203/231517/5cb43f5eEa42493dc/b0e3a9a7bb733453.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `registor`
--

CREATE TABLE `registor` (
  `sid` tinyint(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `registor`
--

INSERT INTO `registor` (`sid`, `username`, `password`) VALUES
(6, 'wangmazi', 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'heigou', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'heigouo', 'e10adc3949ba59abbe56e057f20f883e'),
(14, 'xiaoer', 'e10adc3949ba59abbe56e057f20f883e'),
(15, 'uh', 'e10adc3949ba59abbe56e057f20f883e'),
(16, 'awf', 'e10adc3949ba59abbe56e057f20f883e'),
(17, 'fdvgda', 'e10adc3949ba59abbe56e057f20f883e'),
(18, 'fdvgdak', 'e10adc3949ba59abbe56e057f20f883e'),
(19, 'fdvgdakb', 'e10adc3949ba59abbe56e057f20f883e'),
(20, 'zdgrg', 'e10adc3949ba59abbe56e057f20f883e'),
(21, 'hehe', 'e10adc3949ba59abbe56e057f20f883e'),
(22, 'xiaohuang', 'e10adc3949ba59abbe56e057f20f883e'),
(23, '123', '202cb962ac59075b964b07152d234b70'),
(24, '23', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- 表的结构 `rexiaobang`
--

CREATE TABLE `rexiaobang` (
  `sid` tinyint(11) NOT NULL,
  `img` varchar(10000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `rexiaobang`
--

INSERT INTO `rexiaobang` (`sid`, `img`) VALUES
(1, 'https://img30.360buyimg.com/test/s200x200_jfs/t17572/122/2507590745/315388/b25098d6/5af8f2dbN57a92e01.jpg,https://img13.360buyimg.com/test/s200x200_jfs/t23464/85/841467916/273987/4a02a3ad/5b44150eN15f67ca3.jpg,https://img10.360buyimg.com/test/s200x200_jfs/t3940/252/1200320664/512176/ab850a69/586b74afN5939fab5.jpg'),
(2, 'https://img13.360buyimg.com/test/s200x200_jfs/t3526/295/888755633/189982/16ea21b4/5816dce5N70820f42.jpg,https://img14.360buyimg.com/test/s200x200_jfs/t22018/360/64699926/310855/d711c715/5af8f30bNdd8ab8ff.jpg,https://img13.360buyimg.com/test/s200x200_jfs/t19576/221/2486287277/327475/e7b32d6f/5af8f33eN75c72c3c.jpg'),
(3, 'https://img20.360buyimg.com/test/s200x200_jfs/t1/31997/10/4352/111734/5c7cbd1aE5a454f2c/963190b232ae6c8e.jpg,https://img10.360buyimg.com/test/s200x200_jfs/t22084/267/2298002970/321430/767a789f/5b4db5b1N573812e8.jpg,https://img11.360buyimg.com/test/s200x200_jfs/t1/16789/5/7111/81947/5c67c3c9E8b621a66/be41b8e2225ba0da.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dongnixiangyao`
--
ALTER TABLE `dongnixiangyao`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `registor`
--
ALTER TABLE `registor`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `rexiaobang`
--
ALTER TABLE `rexiaobang`
  ADD PRIMARY KEY (`sid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `dongnixiangyao`
--
ALTER TABLE `dongnixiangyao`
  MODIFY `sid` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `registor`
--
ALTER TABLE `registor`
  MODIFY `sid` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- 使用表AUTO_INCREMENT `rexiaobang`
--
ALTER TABLE `rexiaobang`
  MODIFY `sid` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
