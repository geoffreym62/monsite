-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 15 Décembre 2016 à 13:04
-- Version du serveur :  5.6.20-log
-- Version de PHP :  5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `monsite`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
`id` int(11) NOT NULL,
  `titre` varchar(150) NOT NULL,
  `texte` text NOT NULL,
  `date` date NOT NULL,
  `publie` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `texte`, `date`, `publie`) VALUES
(1, 'Mon premier article', '<p>Ibi victu recreati et quiete, postquam abierat timor, vicos opulentos adorti equestrium adventu cohortium, quae casu propinquabant, nec resistere planitie porrecta conati digressi sunt retroque concedentes omne iuventutis robur relictum in sedibus acciverunt.</p>\r\n\r\n<p>Tantum autem cuique tribuendum, primum quantum ipse efficere possis, deinde etiam quantum ille quem diligas atque adiuves, sustinere. Non enim neque tu possis, quamvis excellas, omnes tuos ad honores amplissimos perducere, ut Scipio P. Rupilium potuit consulem efficere, fratrem eius L. non potuit. Quod si etiam possis quidvis deferre ad alterum, videndum est tamen, quid ille possit sustinere.</p>', '2016-10-10', 0),
(31, 'Mon Premier article234564', 'Ibi victu recreati et quiete, postquam abierat timor, vicos opulentos adorti equestrium adventu cohortium, quae casu propinquabant, nec resistere planitie porrecta conati digressi sunt retroque concedentes omne iuventutis robur relictum in sedibus acciverunt.\r\n\r\nTantum autem cuique tribuendum, primum quantum ipse efficere possis, deinde etiam quantum ille quem diligas atque adiuves, sustinere. Non enim neque tu possis, quamvis excellas, omnes tuos ad honores amplissimos perducere, ut Scipio P. Rupilium potuit consulem efficere, fratrem eius L. non potuit. Quod si etiam possis quidvis deferre ad alterum, videndum est tamen, quid ille possit sustinere.\r\n\r\nIbi victu recreati et quiete, postquam abierat timor, vicos opulentos adorti equestrium adventu cohortium, quae casu propinquabant, nec resistere planitie porrecta conati digressi sunt retroque concedentes omne iuventutis robur relictum in sedibus acciverunt.\r\n\r\nTantum autem cuique tribuendum, primum quantum ipse efficere possis, deinde etiam quantum ille quem diligas atque adiuves, sustinere. Non enim neque tu possis, quamvis excellas, omnes tuos ad honores amplissimos perducere, ut Scipio P. Rupilium potuit consulem efficere, fratrem eius L. non potuit. Quod si etiam possis quidvis deferre ad alterum, videndum est tamen, quid ille possit sustinere', '2016-12-13', 0),
(26, '', '', '2016-10-17', 0),
(24, 'test', 'gdgdgddggddgdg', '2016-10-17', 0),
(23, 'hfg', 'ffghgh', '2016-10-17', 0),
(22, 'fgfd', 'fddffddf', '2016-10-17', 0),
(21, 'fgfd', 'fddffddf', '2016-10-17', 0),
(20, 'fgfd', 'fddffddf', '2016-10-17', 0),
(17, 'testdg', 'gdgdgddggddgdg', '2016-10-17', 0),
(19, 'Liste', '<ul>\r\n<li>Sed tamen haec cum ita tutius observentur, quidam</li>\r\n<li>Quid? qui se etiam nunc subsidiis patrimonii aut</li>\r\n<li>Procedente igitur mox tempore cum adventicium</li>\r\n<li>Vita est illis semper in fuga uxoresque</li>\r\n<li>Et est admodum mirum videre plebem innumeram</li>\r\n</ul>', '2016-10-17', 0),
(35, '', '', '2016-10-25', 0),
(37, '22222', 'abierat timor, vicos opulentos adorti equestrium adventu cohortium, quae casu propinquabant, nec resistere planitie porrecta conati digressi sunt retroque concedentes omne iuventutis robur relictum in sedibus acciverunt. Tantum autem cuique tribuendum, primum quantum ipse efficere possis, deinde etiam quantum ille quem diligas atque adiuves, sustinere. Non enim neque tu possis, quamvis excellas, omnes tuos ad honores amplissimos perducere, ut Scipio P. Rupilium potuit consulem efficere, fratrem eius L. non potuit. Quod si etiam possis quidvis deferre ad alterum, videndum est tamen, quid ille possit sustinere', '2016-12-13', 0),
(38, 'Premier article', 'Qui cum venisset ob haec festinatis itineribus Antiochiam, praestrictis palatii ianuis, contempto Caesare, quem videri decuerat, ad praetorium cum pompa sollemni perrexit morbosque diu causatus nec regiam introiit nec processit in publicum, sed abditus multa in eius moliebatur exitium addens quaedam relationibus supervacua, quas subinde dimittebat ad principem.', '2016-12-14', 1),
(39, 'hgggh', 'hghghgh', '2016-11-09', 1),
(40, 'hghgh', 'ghghghgh', '2016-11-09', 1),
(41, 'jkjkjkjk', 'jkjkjk', '2016-11-09', 1),
(42, 'vbbv', 'bvbvb', '2016-11-09', 1),
(43, 'vvbv', 'vbvvbbv', '2016-11-09', 1),
(45, 'fgfgfg', 'gffg', '2016-11-10', 1),
(46, 'fhfhh', 'fhhfhfh', '2016-11-10', 1),
(47, 'dfdfdf', 'dfdfdf', '2016-11-10', 1),
(48, 'ffgfg', 'gffgfgfg', '2016-11-10', 0),
(49, 'fgfgfg', 'fgfgfg', '2016-11-10', 0),
(57, 'test', ' tetetetet', '2016-12-07', 1),
(56, 'fdfdf', 'fdfd', '2016-12-06', 1),
(60, 'test', 'toto', '2016-12-07', 1),
(61, 'fgfgfg', 'fgfgfg', '2016-12-07', 1),
(62, 'fgfgfg', 'fgfgfg', '2016-12-07', 1),
(63, 'fgfgfg', 'fgfgfg', '2016-12-07', 1),
(64, 'fgfgfg', 'fgfgfg', '2016-12-07', 1),
(65, 'toto', 'tototo ', '2016-12-07', 1),
(66, 'dsdsd', ' ssddsds', '2016-12-07', 1),
(67, 'ghghgh', 'ghghgh', '2016-12-07', 1),
(80, 'sdsdsd', ' sddsds', '2016-12-07', 0);

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE IF NOT EXISTS `commentaires` (
`idCom` int(11) NOT NULL,
  `emailCom` varchar(50) NOT NULL,
  `texteCom` text NOT NULL,
  `pseudoCom` varchar(50) NOT NULL,
  `articles_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Contenu de la table `commentaires`
--

INSERT INTO `commentaires` (`idCom`, `emailCom`, `texteCom`, `pseudoCom`, `articles_id`) VALUES
(1, 'toto@gmail.com', 'article test', 'toto', 1),
(2, 'maurice@test.fr', 'bonjour', 'maurice', 1),
(3, 'ghhghg@gfg.fr', 'fdfdfd', 'hgghg', 31),
(4, 'hgghghgh@ghfgf.fr', 'fdfddfdf', 'hghghgh', 31),
(5, 'fddfd@fxs.fr', 'ddddddddddddddddddzzzzzzaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'toto@vcccv.fr', 31),
(6, 'fddfd@fxs.fr', 'amais il n’aurait fait de mal à qui que ce soit, mais il avait certainement mis cette idée dans la programmation de Prélude sans le vouloir.aaaaaaaaaaaaaaaaaa', 'toto@vcccv.fr', 31),
(7, 'geoffrey@fdfd.fr', 'fsfsfs', 'geddf', 44),
(9, 'dgdgdgdg@fdfd.fr', 'dgdgdgd', 'gdgdg', 51),
(10, 'trtrtr@gg.fr', 'fddfdf', 'rttrtr', 31),
(11, 'toto@05.fr', 'toto', 'toto', 31),
(12, '', '', '', 31),
(13, 'toto@yopmail.fr', 'toto', 'toto', 31),
(14, 'tytyt@hfhg.gta', 'gfgfg', 'ytyty', 31),
(15, 'fgfgfg@gfgf.fr', 'fddffd', 'fgfgfg', 31),
(16, 'fgfgfg@gfgf.fr', 'fddffd', 'fgfgfg', 31),
(17, 'dggd@gddg.fr', 'fddf', 'tytyy', 32),
(18, 'dggd@gddg.fr', 'fddf', 'tytyy', 32),
(19, 'jhghjh@ffg.fr', 'dfgg', 'jhjhjg', 32),
(20, 'test@toto', 'toto', 'test', 31),
(21, 'mikus@mikus.fr', 'mikus', 'mikus', 31),
(22, 'toto@toto.fr', 'toto', 'toto', 31),
(23, 'moulefrite@toto.fr', 'moulefrite', 'moulefrite', 31),
(26, '', '', '', 31),
(27, '', '', '', 31),
(28, '', '', '', 31),
(30, 'toto@toto.es', 'hola', 'toto', 37),
(31, 'test1210@fd.fr', 'test', 'test 1012', 72),
(32, 'test@test.fr', 'testtttss', '101216', 71),
(33, 'rtrtrt@yopmail.fr', 'fdfd', 'rttrt', 37),
(34, 'etmechant@gf.fr', 'fddf', 'moimoche', 31),
(35, 'gffgfg@gdfg.fr', '', '', 37),
(36, 'fddff@fgg.fr', '', 'Votre Pseudo', 37),
(37, 'fddff@fgg.fr', '', 'Votre Pseudo', 37),
(38, 'ffgfg@fd.fu', '', 'Votre Pseudo', 37),
(39, 'gffgf@gffg.fr', '', 'hhhhh', 37),
(40, 'test@fgfg.fr', 'fdfd', 'test', 38),
(41, 'test@gdfg.fr', 'fdfdf', 'test', 39),
(42, 'test@gf.fr', 'fsffsfsffs', 'TEST', 38),
(43, 'test@gf.fr', 'fsffsfsffs', 'TEST', 38),
(44, 'test@gf.fr', 'fsffsfsffs', 'TEST', 38),
(45, 'rougeau@fd.fr', 'test', 'test', 38);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE IF NOT EXISTS `utilisateurs` (
`id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mdp` text NOT NULL,
  `sid` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `email`, `mdp`, `sid`) VALUES
(1, 'mikus', 'geoffrey', 'mikus.geoffrey@gmail.com', '123456', 'c02f2525061698beeeb83ab7ab866279'),
(2, 'toto', 'toto', 'toto@toto.fr', 'tptp', 'a23f0848ae37eb140fac75ca9323310e'),
(3, 'tata', 'tata', 'tata@tata.fr', 'tata', ''),
(4, 'geoffreym', 'geoffrey', 'geoffreym@gmail.es', '123456', ''),
(5, 'test@test', 'toto', 'ttiti@gffg.fr', 'titi', ''),
(6, 'vccvcv', 'cvcvcv@yfgf.fr', 'dsfddf@gfgf.fr', 'fddf', ''),
(7, 'dfdfd', 'fdfdf', 'fdfdfdfd@dfgd.fr', 'fdfddf', ''),
(8, 'dffddf', 'dfdfdf', 'fdff@dgd.fr', 'root', ''),
(9, 'baba', 'baba', 'baba@yopmail.com', 'baba', 'fe1b973d6b8c62445a72cf959b4be47d'),
(10, 'tata', 'tata', 'tata@tata.fr', 'tata', ''),
(11, 'tata', 'tata', 'tata@tata.fr', 'tata', ''),
(12, 'toto', 'toto', 'toto@tototot.fr', 'tototo', ''),
(13, 'gffgfg', 'fgfgfg', 'cvccv@fgfgfg.fr', 'gddd', ''),
(14, 'gffgfg', 'fgfgfgfg', 'rootfgfgfgfg@gff.fr', 'fgdgdg', ''),
(15, 'toto', 'toto', 'totototototo@z.fr', 'toto', ''),
(16, 'ff', 'ff', 'ff@ff.df', 'gddgdg', '');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
 ADD PRIMARY KEY (`idCom`), ADD KEY `id_article` (`articles_id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
MODIFY `idCom` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
