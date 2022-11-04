-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2022 a las 19:56:57
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_artistas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(100) NOT NULL,
  `nombre_artista` varchar(50) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nacionalidad` varchar(200) DEFAULT NULL,
  `informacion` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre_artista`, `fecha_nacimiento`, `nacionalidad`, `informacion`) VALUES
(1, 'Drake ', '1986-10-24', 'Canadiense/Estadounidense', 'Aubrey Drake Graham (Toronto, 24 de octubre de 1986), conocido simplemente como Drake, es un rapero, cantante, compositor, productor discográfico y actor canadiense. Originalmente se hizo conocido por interpretar al personaje de Jimmy Brooks de la serie de televisión Degrassi: The Next Generation. Más tarde saltó a la fama como cantante de rap, lanzando varios mixtapes antes de firmar con Lil Wayne en la compañía discográfica estadounidense Young Money Entertainment en junio de 2006.1​2​\r\n\r\nSu primer álbum de estudio, Thank Me Later (2010), debutó en el número uno del Billboard 200 estadounidense y fue certificado como disco de platino por la Recording Industry Association of America (RIAA). Su segundo álbum, Take Care (2011), encabezó las listas en Estados Unidos y Canadá, mediante la producción de varios sencillos, incluyendo «Headlines», «Take Care», «Make Me Proud», y «The Motto»; a este último se le atribuye la popularización del acrónimo ampliamente utilizado de YOLO.\r\n\r\nEn la promoción de su segundo álbum, Drake realizó el Club Paradise Tour, que se convirtió en el más exitosa del hip hop de 2012, recaudando más de 42 millones de dólares.3​ Con ese mismo álbum, Drake ganó su primer premio Grammy en la categoría de mejor álbum de rap.\r\n\r\nSu tercer álbum de estudio, Nothing Was the Same (2013), logró un gran éxito comercial y fue apoyado por los sencillos «Started from the Bottom» y «Hold On, We\'re Going Home». En 2015, Drake debutó dos mixtapes, If You\'re Reading This It\'s Too Late y What a Time to Be Alive, siendo el primero de doble disco de platino.\r\n\r\nSu cuarto álbum de estudio, Views (2016), obtuvo más de un millón de copias vendidas en la primera semana de su lanzamiento,4​5​ siendo apoyado con los sencillos «Hotline Bling», «One Dance» y «Pop Style». Posteriormente, Drake estuvo por realizar su quinta gira titulada Summer Sixteen Tour acompañado con el rapero Future para promocionar su último álbum y mixtape.\r\n\r\nDrake también ha escrito canciones para otros artistas, entre los que se incluyen a Alicia Keys, Jamie Foxx, Rita Ora y Trey Songz. En 2014 colaboró con Romeo Santos en el segundo sencillo de su álbum Formula, Vol. 2, titulado «Odio».6​7​8​ Drake se hizo también embajador global de los Toronto Raptors, equipo de baloncesto oficial de la NBA de su ciudad natal.\r\n\r\nEl sexto álbum de estudio del rapero, Certified Lover Boy estaba previsto para enero del 2021, pero fue retrasado por una cirugía en la rodilla lesionada de Drake, según publicó el propio rapero en Instagram.9​ Finalmente el disco fue lanzado en septiembre de 2021, haciendo 613.000 ventas en Estados Unidos en la primera semana.\r\n\r\nEl séptimo álbum, Honestly, Nevermind fue publicado bajo los sellos discográficos OVO Sound y Republic Records el 17 de junio de 2022. Está compuesto por catorce temas y cuenta con la única contribución especial del rapero británico 21 Savage,10​ y la producción de una variedad de productores, incluidos Carnage, Black Coffee y 40.'),
(2, 'Post Malone ', '1995-07-04', 'Estadounidense', 'Austin Richard Post (Siracusa, Nueva York, Estados Unidos; 4 de julio de 1995), más conocido por su nombre artístico Post Malone, es un cantante y compositor estadounidense.1​ Ganó un gran reconocimiento en agosto de 2015 gracias al sencillo debut «White Iverson». Más adelante pasó a lanzar «Congratulations» y «Rockstar», que, respectivamente, alcanzaron los números 8 y 1 en el Billboard Hot 100, de los Estados Unidos. Posteriormente consiguió un contrato discográfico con Republic Records.  El 9 de diciembre de 2016, lanzó su primer álbum de estudio, Stoney, que logró posicionarse en el puesto número 4 del Billboard 200 de los Estados Unidos, obteniendo así una certificación triple platino por la RIAA.  Dos años después, el 27 de abril de 2018, tuvo como fecha de lanzamiento su segundo álbum, Beerbongs and Bentleys, el cual obtuvo muy buenas críticas y alcanzó el puesto número 1 en varias listas y rankings a nivel mundial, incluyendo también el Billboard 200 de los Estados Unidos.'),
(13, '50 Cent ', '1975-07-06', 'Estadounidense', 'Curtis James Jackson (Nueva York, 6 de julio de 1975), más conocido por su nombre artístico 50 Cent, es un cantante, compositor y actor estadounidense. Alcanzó la fama mundial con el lanzamiento de sus álbumes Get Rich or Die Tryin\' (2003) y The Massacre (2005), ambos de ellos logrando éxito multi-platino. Get Rich or Die Tryin’ logró ser más de diez veces platino y The Massacre más de catorce veces platino en todo el mundo los cuales están entre los primeros cincuenta mejores álbumes de la década de 2000 según la revista Billboard. Tras dejar el tráfico de drogas para comenzar su carrera como rapero, fue víctima de un tiroteo en el que recibió el impacto de nueve balas durante un incidente en 2000. Después de lanzar su álbum Guess Who\'s Back? en 2002, Jackson fue redescubierto (dado que su primera aparición como MC fue en React del álbum Shut ‘em Down de Onyx en el 98) por el rapero Eminem y firmó con Interscope Records. Con la ayuda de Eminem y Dr. Dre, produjo su primer éxito comercial importante. Jackson se convirtió en uno de los raperos más destacados del mundo en cuanto a ventas. En 2003, fundó el sello discográfico G-Unit Records, que firmó a varios raperos de éxito mundial como Lloyd Banks y Tony Yayo.  Jackson también se ha dado a conocer por disputas con otros cantantes de rap como Ja Rule, Nas, Fat Joe, Jadakiss, Cam\'ron, Diddy, Rick Ross, y los exmiembros de G-Unit, The Game y Young Buck. También ha desarrollado una carrera como actor, apareciendo en la película semi autobiográfica Get Rich or Die Tryin\' en 2005, Home of the Brave (película sobre la guerra de Irak) en 2006, y Righteous Kill en 2008, entre otras. 50 Cent se ubicó como el sexto mejor artista de la década de 2000 según la revista Billboard. La revista también lo ubicó como el cuarto artista masculino más popular y como el tercer mejor rapero de la década por detrás de Eminem y Nelly. La revista Billboard también lo ubicó como el sexto mejor y más exitoso artista del Hot 100 de la década de 2000 y el artista de rap número uno de la década de 2000. Billboard clasificó su disco Get Rich or Die Tryin\' en el número 12 como el mejor álbum de la década de 2000 y su álbum The Massacre en el número 37. El 20 de febrero de 2014, 50 Cent abandonó Interscope Records, Shady Records y Aftermath Entertainment después de una unión de doce años. Finalmente él y su sello G-Unit Records firmaron un acuerdo de distribución con Caroline Records y un contrato de grabación con Capitol Records para ponerle fecha a su quinto álbum de estudio Animal Ambition; su lanzamiento se hizo efectivo el 3 de junio de 2014.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discos`
--

CREATE TABLE `discos` (
  `id` int(100) NOT NULL,
  `nombre_disco` varchar(50) DEFAULT NULL,
  `autores` varchar(50) DEFAULT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `id_artista` int(100) DEFAULT NULL,
  `descripcion` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `discos`
--

INSERT INTO `discos` (`id`, `nombre_disco`, `autores`, `fecha_publicacion`, `id_artista`, `descripcion`) VALUES
(15, 'Take Care', 'Aubrey Graham, Noah Shebib, Chantal Kreviazuk', '2011-11-15', 1, 'Take Care —en español: Cuídate— es el segundo álbum de estudio del rapero canadiense Drake, estrenado el 15 de noviembre de 2011 bajo los sellos discográficos Young Money Entertainment, Cash Money Records, Republic Records y Aspire Music Group. La producción se llevó a cabo durante el año 2010 a 2011 y fue manejado por Noah \"40\" Shebib, Boi-1da, T-Minus, a Blaze, The Weeknd y Jamie xx, entre otros. Tiene un sonido atmosférico e incorpora estilos como R&B, pop y electrónica. Las letras tratan sobre romances fracasados, relaciones con los amigos y la familia, su creciente fama y riqueza, problemas sobre llevar una vida vacía, y abatimiento.  El álbum también amplía la estética sónica de bajo tempo, sensual y oscura de Thank Me Later. Incorpora varios elementos que han llegado a definir el sonido de Drake, incluidas influencias minimalistas de R&B, temas existenciales y voces cantadas y rapeadas alternativamente. Presenta una mezcla de fanfarronería y letras emotivas, explorando temas de fama, romance y riqueza.4​  A pesar de filtrarse en línea nueve días antes de su lanzamiento programado, Take Care debutó en el número uno en Billboard 200, vendiendo 631 000 copias en su primera semana. El álbum fue certificado seis veces de platino por la Recording Industry Association of America (RIAA). Cuatro de los sencillos del álbum alcanzaron su punto máximo entre los 20 primeros en el Billboard Hot 100: «Headlines», «Make Me Proud», «The Motto» y «Take Care». El álbum recibió críticas generalmente positivas de los críticos, con elogios por su producción expansiva y temas emocionales. Fue nombrado uno de los mejores álbumes de 2011 y, posteriormente, uno de los mejores álbumes de la década de 2010 por varias publicaciones. Drake ganó su primer premio Grammy, ganando el premio al «Mejor Álbum de Rap» en los Premios Grammy de 2013. En 2020, el álbum ocupó el puesto número 95 en la lista actualizada de Rolling Stone de los 500 mejores álbumes de todos los tiempos.5​'),
(23, 'Thank Me Later', 'Aubrey Graham, Noah Shebib, Matthew Samuels, Chris', '2010-06-15', 1, 'Thank Me Later —en español: Agradéceme después— es el álbum debut del artista canadiense Drake, publicado el 15 de junio de 2010. Cuenta con las colaboraciones de Timbaland, Swizz Beatz, Nicki Minaj, Lil Wayne, The Dream y Kanye West, entre otros. Alcanzó la certificación de platino en Canadá en su primera semana y produjo cuatro singles, \"Find Your Love\", \"Over\", \"Miss Me\" y \"Fancy\".  Fue colocado en el puesto #771​ en la lista: \"Los 100 mejores álbumes debut de todos los tiempos, según Rolling Stone\".  Thank Me Later recibió críticas positivas. En Metacritic, que asigna una calificación normalizada de 100 comentarios de la prensa convencional, el álbum recibió una puntuación media de 75, basada en 26 opiniones, lo que indica que en general son críticas favorables. Sin embargo, Daniels Roberts elogió la ambición de Drake, y dijo que el álbum era \"bueno en partes, pero grande, nunca\", \"Es poco probable que él sea el próximo Jay, o Kanye, o incluso Jeezy. Pero sin duda seguiremos oyendo su nombre, Drake acaba de empezar\".'),
(24, 'Stoney', 'Post, Justin Bieber, Adam Feeney , Anderson Hernan', '2016-12-09', 2, 'Stoney es el álbum debut del rapero y cantante estadounidense Post Malone. Fue lanzado el 9 de diciembre de 2016 por Republic Records. El álbum cuenta con apariciones especiales de Justin Bieber, Kehlani y Quavo. La edición de lujo fue lanzada el mismo día. Cuenta con una aparición adicional como invitado de 2 Chainz. La producción del álbum estuvo a cargo del propio Malone, Mustard, Metro Boomin, Vinylz, Frank Dukes, Illangelo, Charlie Handsome, Rex Kudo, Foreign Teck y Pharrell Williams, entre otros. Malone generalmente canta rap en el álbum, que se destaca por su producción de R&B-Hip hop contemporáneo y woozy. El álbum también cuenta con la influencia de la música country y fuera de la ley. [4]  Stoney debutó en el número seis en el Billboard 200 y más tarde alcanzó el número cuatro en la lista. El álbum fue certificado 5× platino por la Recording Industry Association of America (RIAA) y platino por la British Phonographic Industry (BPI). El sencillo \"Congratulations\", que cuenta con Quavo, fue certificado Diamante (11× platino) por la RIAA y fue el mayor éxito de Malone en Billboard Hot 100 en ese momento. '),
(25, 'Get Rich or Die Tryin\'', 'Curtis Jackson', '2003-01-07', 13, 'Get Rich or Die Tryin’, de 2003, es el álbum debut del cantante estadounidense 50 Cent. Fue producido por Eminem y Dr. Dre, e incluía los sencillos «In Da Club», «P.I.M.P.» y «21 Questions». El sencillo «In Da Club» fue número 1 en las listas de Billboard.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@admin.com', '$2a$12$pB9ZO0pAIGxJs8ve6mcGM.n.t/lhhRNOXZR0VG2bUZypAdACgREty');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `discos`
--
ALTER TABLE `discos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_discos_artistas` (`id_artista`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `discos`
--
ALTER TABLE `discos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `discos`
--
ALTER TABLE `discos`
  ADD CONSTRAINT `fk_discos_artistas` FOREIGN KEY (`id_artista`) REFERENCES `artistas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
