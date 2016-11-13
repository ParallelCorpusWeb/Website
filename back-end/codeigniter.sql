-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 建立日期: 2016 年 11 月 13 日 16:05
-- 伺服器版本: 5.5.50-0ubuntu0.14.04.1
-- PHP 版本: 5.5.9-1ubuntu4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫: `c9`
--

-- --------------------------------------------------------

--
-- 資料表結構 `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `authority` varchar(255) NOT NULL DEFAULT '0',
  `avg_grade` varchar(255) DEFAULT NULL,
  `sentence_amount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `chinese_only`
--

CREATE TABLE IF NOT EXISTS `chinese_only` (
  `chid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`chid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `error`
--

CREATE TABLE IF NOT EXISTS `error` (
  `errorid` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`errorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `portuguese_only`
--

CREATE TABLE IF NOT EXISTS `portuguese_only` (
  `poid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`poid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `raw_data`
--

CREATE TABLE IF NOT EXISTS `raw_data` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `chinese` text,
  `portuguese` text,
  `bilingual` text,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 資料表的匯出資料 `raw_data`
--

INSERT INTO `raw_data` (`rid`, `chinese`, `portuguese`, `bilingual`, `status`) VALUES
(1, '衛生局今日證實1例輸入性登革熱病例\\r\\n2016-09-01 19:24:00來源 : 衛生局\\r\\n衛生局今日(9月1日)證實1例輸入性登革熱病例，呼籲市民採取預防措施。患者為9歲女童，菲律賓籍遊客，現居於涼水街；8月20日在外地旅遊期間出現不適，就醫並被診斷為登革熱病例；8月24日隨家人來澳後，8月30日再度出現頭痛及皮膚痕癢等症狀，到科大醫院就診；8月31日經公共衛生化驗所檢測其血液顯示登革熱IgM呈陽性，證實感染登革熱。根據其疫區旅遊史、出現症狀的時間及實驗室檢測結果，被列為登革熱輸入性病例，此為本年第8例輸入性病例報告。目前患者已退熱，情況穩定，其同住家人無出現類似登革熱病徵。衛生局將派人到患者居住的區域進行滅蚊，呼籲鄰近居民配合，一同採取滅蚊防蚊措施。\\r\\n\\r\\n衛生局再次呼籲市民，注意環境衛生，清除工作地點和家居周圍環境的積水，杜絕蚊蟲孳生；如前往登革熱流行地區，特別是東南亞國家，宜穿淺色長袖衫褲，在有空調或防蚊裝置的地方住宿，外出時使用驅蚊劑，防止被蚊叮咬；如有發熱、出疹等疑似登革熱症狀，應及時就醫，並告之醫生有關的旅遊史。\\r\\n同時，衛生局亦呼籲所有醫生留意疑似登革熱病人，如有懷疑，應及時作出申報和檢測，衛生局公共衛生化驗所已可為所有醫療機構提供登革熱免費檢測。巿民如有疑問，可致電衛生局傳染病熱線28700800或瀏覽衛生局傳染病網頁http://www.ssm.gov.mo/csr/。─ 完 ─【列印本稿】&nbsp;&nbsp;【推薦給朋友】&nbsp;&nbsp;【關閉】下一則:禮賓公關外事辦公室新辦事處裝修工程今開標上一則:“葡語國家食品入口內地檢驗檢疫及關稅制度”講解會暨考察活動－講解會a name=\\"fb_share\\" ></a<table width=\\"600\\" height=\\"25\\">Twittera name=\\"fb_share\\" ></a', 'Confirmado oitavo caso de febre de dengue importado na RAEM\\r\\n2016-09-01 23:16:00Fonte : Serviços de Saúde\\r\\nOs Serviços de Saúde confirmam esta quinta-feira, 1 de Setembro a detecção de mais um (1) caso de febre de dengue importado, detectado numa rapariga, com 9 anos de idade, turista filipina que reside actualmente na Rua de Cortidores.\\r\\nNo passado dia 20 de Agosto a doente sentiu-se mal durante uma viagem ao exterior, recorrendo à consulta médica, onde foi confirmado a infecção por febre de dengue. No dia 24 de Agosto, esta rapariga, acompanhada pela família chegou a Macau e no dia 30 de Agosto, a doente voltou a apresentar as sintomas de dores de cabeça e urticária tendo recorrido à consulta no Hospital da Universidade de Ciência e Tecnologia de Macau\\r\\nApós análise de sangue efectuada no dia 31 de Agosto, o Laboratório de Saúde Pública confirmou o resultado do teste à Febre de Dengue, o facto de ter efectuado a viagem, a data de apresentação de sintomas e os resultados do teste laboratorial. Este caso foi classificado como o oitavo (8°) caso de dengue importado registado na RAEM desde o início do ano. A febre deste doente já baixou e o seu estado clínico é considerado estável. Nenhum dos membros da família, com quem reside apresentaram sintomas similares aos da febre de dengue. Os Serviços de Saúde vão proceder à eliminação de mosquitos na área de residência desta paciente apelando aos residentes daquela zona para colaborarem, adoptando, também e em simultâneo, medidas antimosquitos.\\r\\nOs Serviços de Saúde apelam novamente a todos os residentes de Macau para que prestem atenção às medidas de prevenção anunciadas e que passam, também, pela eliminação da água estagnada no domicílio ou lugar de trabalho, eliminando, assim, a proliferação de mosquitos e larvas.\\r\\nApela-se, ainda à população que quando viaje para lugares com surto de Febre de Dengue, especialmente nas regiões do Sudeste Asiático, vista roupas com mangas compridas e fique em sítios com ar condicionado ou que possuam instalações antimosquitos.\\r\\nQuando sair para o exterior, deve aplicar repelente antimosquitos nas partes expostas do corpo, evitando serem ser picados. Em caso de apresentar sintomas de febre, erupção cutânea e outros sintomas suspeitos de febre de dengue, deve recorrer atempadamente à consulta médica e informando o médico a história de viagem.\\r\\nEntretanto, os Serviços de Saúde também apelam a todos os médicos para prestarem atenção aos doentes suspeitos de febre de dengue, bem como, procederem à sua declaração e ao respectivo teste atempadamente. O Laboratório de Saúde Pública dos Serviços de Saúde proporciona de forma gratuita o teste de febre de dengue a todas as instituições médicas. Para mais informações, os cidadãos podem ligar para a linha das doenças transmissíveis dos Serviços de Saúde n.º 28 700 800 ou consultar o endereço electrónico dos Serviços de Saúde sobre Informações de doenças transmissíveishttp://www.ssm.gov.mo/csr/-- Fim --[Imprimir ]&nbsp;&nbsp;[Envie para alguém]&nbsp;&nbsp;[Fechar]Anterior:Execução da lei de controlo de tabaco nos casinos obtém bons resultados \\r\\r\\nGoverno e residentes cooperam nas denúncias através da linha aberta de controlo do tabagismoSeguinte:Abertura da 4.ª Expo Internacional de Turismo (Indústria) de Macau – Evento introduz bolsa de contactos entre China e Portugal, debruça-se sobre turismo individual na Ásia-Pacífico e turismo inteligentea name=\\"fb_share\\" ></a<table width=\\"600\\" height=\\"25\\">Twittera name=\\"fb_share\\" ></a', NULL, ''),
(3, '衛生局今日證實1例輸入性登革熱病例\\r\\n2016-09-01 19:24:00來源 : 衛生局\\r\\n衛生局今日(9月1日)證實1例輸入性登革熱病例，呼籲市民採取預防措施。患者為9歲女童，菲律賓籍遊客，現居於涼水街；8月20日在外地旅遊期間出現不適，就醫並被診斷為登革熱病例；8月24日隨家人來澳後，8月30日再度出現頭痛及皮膚痕癢等症狀，到科大醫院就診；8月31日經公共衛生化驗所檢測其血液顯示登革熱IgM呈陽性，證實感染登革熱。根據其疫區旅遊史、出現症狀的時間及實驗室檢測結果，被列為登革熱輸入性病例，此為本年第8例輸入性病例報告。目前患者已退熱，情況穩定，其同住家人無出現類似登革熱病徵。衛生局將派人到患者居住的區域進行滅蚊，呼籲鄰近居民配合，一同採取滅蚊防蚊措施。\\r\\n\\r\\n衛生局再次呼籲市民，注意環境衛生，清除工作地點和家居周圍環境的積水，杜絕蚊蟲孳生；如前往登革熱流行地區，特別是東南亞國家，宜穿淺色長袖衫褲，在有空調或防蚊裝置的地方住宿，外出時使用驅蚊劑，防止被蚊叮咬；如有發熱、出疹等疑似登革熱症狀，應及時就醫，並告之醫生有關的旅遊史。\\r\\n同時，衛生局亦呼籲所有醫生留意疑似登革熱病人，如有懷疑，應及時作出申報和檢測，衛生局公共衛生化驗所已可為所有醫療機構提供登革熱免費檢測。巿民如有疑問，可致電衛生局傳染病熱線28700800或瀏覽衛生局傳染病網頁http://www.ssm.gov.mo/csr/。─ 完 ─【列印本稿】&nbsp;&nbsp;【推薦給朋友】&nbsp;&nbsp;【關閉】下一則:禮賓公關外事辦公室新辦事處裝修工程今開標上一則:“葡語國家食品入口內地檢驗檢疫及關稅制度”講解會暨考察活動－講解會a name=\\"fb_share\\" ></a<table width=\\"600\\" height=\\"25\\">Twittera name=\\"fb_share\\" ></a', 'Confirmado oitavo caso de febre de dengue importado na RAEM\\r\\n2016-09-01 23:16:00Fonte : Serviços de Saúde\\r\\nOs Serviços de Saúde confirmam esta quinta-feira, 1 de Setembro a detecção de mais um (1) caso de febre de dengue importado, detectado numa rapariga, com 9 anos de idade, turista filipina que reside actualmente na Rua de Cortidores.\\r\\nNo passado dia 20 de Agosto a doente sentiu-se mal durante uma viagem ao exterior, recorrendo à consulta médica, onde foi confirmado a infecção por febre de dengue. No dia 24 de Agosto, esta rapariga, acompanhada pela família chegou a Macau e no dia 30 de Agosto, a doente voltou a apresentar as sintomas de dores de cabeça e urticária tendo recorrido à consulta no Hospital da Universidade de Ciência e Tecnologia de Macau\\r\\nApós análise de sangue efectuada no dia 31 de Agosto, o Laboratório de Saúde Pública confirmou o resultado do teste à Febre de Dengue, o facto de ter efectuado a viagem, a data de apresentação de sintomas e os resultados do teste laboratorial. Este caso foi classificado como o oitavo (8°) caso de dengue importado registado na RAEM desde o início do ano. A febre deste doente já baixou e o seu estado clínico é considerado estável. Nenhum dos membros da família, com quem reside apresentaram sintomas similares aos da febre de dengue. Os Serviços de Saúde vão proceder à eliminação de mosquitos na área de residência desta paciente apelando aos residentes daquela zona para colaborarem, adoptando, também e em simultâneo, medidas antimosquitos.\\r\\nOs Serviços de Saúde apelam novamente a todos os residentes de Macau para que prestem atenção às medidas de prevenção anunciadas e que passam, também, pela eliminação da água estagnada no domicílio ou lugar de trabalho, eliminando, assim, a proliferação de mosquitos e larvas.\\r\\nApela-se, ainda à população que quando viaje para lugares com surto de Febre de Dengue, especialmente nas regiões do Sudeste Asiático, vista roupas com mangas compridas e fique em sítios com ar condicionado ou que possuam instalações antimosquitos.\\r\\nQuando sair para o exterior, deve aplicar repelente antimosquitos nas partes expostas do corpo, evitando serem ser picados. Em caso de apresentar sintomas de febre, erupção cutânea e outros sintomas suspeitos de febre de dengue, deve recorrer atempadamente à consulta médica e informando o médico a história de viagem.\\r\\nEntretanto, os Serviços de Saúde também apelam a todos os médicos para prestarem atenção aos doentes suspeitos de febre de dengue, bem como, procederem à sua declaração e ao respectivo teste atempadamente. O Laboratório de Saúde Pública dos Serviços de Saúde proporciona de forma gratuita o teste de febre de dengue a todas as instituições médicas. Para mais informações, os cidadãos podem ligar para a linha das doenças transmissíveis dos Serviços de Saúde n.º 28 700 800 ou consultar o endereço electrónico dos Serviços de Saúde sobre Informações de doenças transmissíveishttp://www.ssm.gov.mo/csr/-- Fim --[Imprimir ]&nbsp;&nbsp;[Envie para alguém]&nbsp;&nbsp;[Fechar]Anterior:Execução da lei de controlo de tabaco nos casinos obtém bons resultados \\r\\r\\nGoverno e residentes cooperam nas denúncias através da linha aberta de controlo do tabagismoSeguinte:Abertura da 4.ª Expo Internacional de Turismo (Indústria) de Macau – Evento introduz bolsa de contactos entre China e Portugal, debruça-se sobre turismo individual na Ásia-Pacífico e turismo inteligentea name=\\"fb_share\\" ></a<table width=\\"600\\" height=\\"25\\">Twittera name=\\"fb_share\\" ></a', 'test', '');

-- --------------------------------------------------------

--
-- 資料表結構 `sentence`
--

CREATE TABLE IF NOT EXISTS `sentence` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `chinese` mediumtext NOT NULL,
  `portuguese` mediumtext NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `task`
--

CREATE TABLE IF NOT EXISTS `task` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `errorid` int(11) NOT NULL,
  `percentage` float NOT NULL,
  `duration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bilingual_after` text NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 資料表結構 `verify_data`
--

CREATE TABLE IF NOT EXISTS `verify_data` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `quality` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
