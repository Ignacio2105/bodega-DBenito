-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2024 a las 20:31:01
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbenito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombrecategoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombrecategoria`) VALUES
(1, 'Alimentos'),
(2, 'Bebidas'),
(3, 'Lácteos'),
(4, 'Carnes y Aves'),
(5, 'Verduras'),
(6, 'Frutas'),
(7, 'Panadería'),
(8, 'Limpieza'),
(9, 'Aseo Personal'),
(10, 'Mascotas'),
(11, 'Papelería'),
(12, 'Suministros Médicos'),
(13, 'Snacks');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombrecliente` varchar(100) DEFAULT NULL,
  `correocliente` varchar(80) DEFAULT NULL,
  `telefonocliente` int(11) DEFAULT NULL,
  `usuario` varchar(80) DEFAULT NULL,
  `contrasena` varchar(80) DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombrecliente`, `correocliente`, `telefonocliente`, `usuario`, `contrasena`) VALUES
(1, 'Tomás Eduardo Olaya Purizaca', 'olayapurizacatomaseduardo@gmail.com', 936251840, 'tomasola', '12345678'),
(2, 'Andrea Lucía Olaya Purizaca', 'anlucia2007@gmail.com', 936251840, 'anlu', '224728olaya'),
(3, 'Mariana Olaya', 'mariana@gmail.com', 963258741, 'mariana', '1234'),
(4, 'Tomás Eduardo Olaya Purizaca', 'alejandro15@hotmail.com', 936251840, 'tomasolaasd', '224728olaya'),
(5, 'Jose', 'ignacio@gmail.com', 987654321, 'nacho', '$2y$10$VIe8oeC2ujjbm6tszjvt8.mS9QhlWv6wlchoVUcAkUiaEEDQJOF5i'),
(6, 'Fernando', 'fernando@gmail.com', 987654125, 'fer', '$2y$10$iANdJ/l5xCz07lbrvupt4uhcPm9gj0pieAq9GEoRcs1YO6G0moMlS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallespedido`
--

CREATE TABLE `detallespedido` (
  `idpedido` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detallespedido`
--

INSERT INTO `detallespedido` (`idpedido`, `idproducto`) VALUES
(1, 2),
(1, 3),
(1, 7),
(1, 6),
(1, 8),
(2, 2),
(2, 3),
(2, 4),
(2, 8),
(2, 7),
(2, 6),
(3, 338),
(3, 246),
(3, 279),
(3, 83),
(3, 85),
(3, 82),
(3, 148),
(3, 255),
(3, 132),
(3, 132),
(4, 405),
(4, 331),
(4, 158),
(4, 325),
(4, 139),
(4, 138),
(4, 389),
(4, 401),
(4, 401),
(5, 131),
(5, 132),
(5, 131),
(5, 131),
(5, 135),
(5, 134),
(5, 136),
(5, 140),
(5, 139),
(6, 131),
(6, 132),
(6, 130),
(6, 134),
(6, 135),
(6, 136),
(6, 136),
(6, 136),
(6, 139),
(6, 426),
(6, 331),
(6, 8),
(7, 132),
(7, 131),
(7, 131),
(7, 128),
(7, 128),
(7, 128),
(7, 128),
(7, 128),
(7, 128),
(7, 128),
(7, 128);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallessolicitud`
--

CREATE TABLE `detallessolicitud` (
  `idsolicitud` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` int(11) NOT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `total` decimal(6,2) DEFAULT NULL,
  `entregado` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `idcliente`, `total`, `entregado`, `fecha`) VALUES
(1, 1, 25.99, 2, '2024-07-09 08:32:47'),
(2, 1, 31.59, 2, '2024-07-09 08:33:36'),
(3, 1, 36.30, 2, '2024-07-19 10:23:53'),
(4, 3, 323.52, 2, '2024-07-22 22:30:52'),
(5, 4, 52.72, 2, '2024-08-27 12:25:00'),
(6, 4, 70.95, 1, '2024-09-04 14:03:07'),
(7, 4, 35.11, 0, '2024-10-18 14:07:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `idproveedor` int(11) DEFAULT NULL,
  `nombreproducto` varchar(150) DEFAULT NULL,
  `PrecioProdu` decimal(6,2) DEFAULT NULL,
  `enlace` varchar(400) DEFAULT NULL,
  `descuento` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `idcategoria`, `idproveedor`, `nombreproducto`, `PrecioProdu`, `enlace`, `descuento`, `calificacion`, `cantidad`) VALUES
(1, 1, 2, 'Pacasmayo Arroz Extra A Granel X Kg', 4.40, 'https://corporacionliderperu.com/50111-large_default/pacasmayo-arroz-extra-a-granel-x-kg-exo-igv.jpg', 5, 4, 20),
(2, 1, 4, 'Caserita Arroz Extra A Granel X Kg', 3.80, 'https://corporacionliderperu.com/50113-large_default/caserita-arroz-extra-a-granel-x-kg-exo-igv.jpg', 0, 3, 6),
(3, 1, 2, 'Arroz Faraon Añejo Extra A Granel X Kg (Exo-Igv)', 4.80, 'https://corporacionliderperu.com/50112-large_default/arroz-faraon-anejo-extra-a-granel-x-kg-exo-igv.jpg', 0, 4, 13),
(4, 1, 5, 'Arroz Paisana Integral X 1 Kg. (Exo-Igv)', 5.90, 'https://corporacionliderperu.com/50462-large_default/arroz-paisana-integral-x-1-kg-exo-igv.jpg', 5, 5, 11),
(5, 1, 5, 'Valle Norte Arroz Extra X 750 Gr. (Exo-Igv)', 4.20, 'https://corporacionliderperu.com/48387-large_default/valle-norte-arroz-extra-x-750-gr-exo-igv.jpg', 0, 4, 15),
(6, 1, 8, 'La Siembra Arroz Extra Añejo Bolsa X 1 Kg (Exo-Igv)', 5.40, 'https://corporacionliderperu.com/47198-large_default/la-siembra-arroz-extra-anejo-bolsa-x-1-kg-exo-igv.jpg', 7, 5, 7),
(7, 1, 7, 'Costeño X 500 Gr Garbanzo (Exo-Igv)', 6.90, 'https://corporacionliderperu.com/40010-large_default/costeno-x-500-gr-garbanzo-exo-igv.jpg', 7, 5, 21),
(8, 1, 7, 'Costeño X 500 Gr Lenteja (Exo-Igv)', 7.00, 'https://corporacionliderperu.com/50704-large_default/costeno-x-500-gr-lenteja-exo-igv.jpg', 15, 4, 12),
(9, 1, 7, 'Costeño X 500 Gr. Arveja (Exo-Igv)', 4.80, 'https://corporacionliderperu.com/50703-large_default/costenox-500-gr-arveja-exo-igv.jpg', 5, 5, 20),
(10, 1, 2, 'Maiz Popcorn A Granel X Kg.', 6.50, 'https://corporacionliderperu.com/50159-large_default/maiz-popcorn-a-granel-x-kg.jpg', 0, 4, 30),
(11, 1, 3, 'Linaza A Granel X Kg (Exo-Igv)', 6.80, 'https://corporacionliderperu.com/50158-large_default/linaza-a-granel-x-kg-exo-igv.jpg', 0, 5, 34),
(12, 1, 3, 'Cebada Tostadas A Granel X 500 Gr.(Exo Igv)', 3.40, 'https://corporacionliderperu.com/44847-large_default/cebada-tostadas-a-granel-x-500-gr-exo-igv.jpg', 0, 4, 20),
(13, 1, 7, 'Costeño Azucar Rubia X 1 Kg.', 5.80, 'https://corporacionliderperu.com/44847-large_default/cebada-tostadas-a-granel-x-500-gr-exo-igv.jpg', 10, 4, 15),
(14, 1, 6, 'Umsha Azucar Finita Bolsa X 1 Kg.', 11.00, 'https://corporacionliderperu.com/46318-large_default/umsha-azucar-finita-bolsa-x-1-kg.jpg', 20, 5, 29),
(15, 1, 10, 'Azucar Blanca Refinada Cartavio Granel X Kg.', 3.40, 'https://corporacionliderperu.com/50124-large_default/azucar-blanca-refinada-cartavio-granel-x-kg.jpg', 0, 5, 40),
(16, 1, 10, 'Azucar Rubia Nacional A Granel X Kg.', 4.00, 'https://corporacionliderperu.com/50122-large_default/azucar-rubia-nacional-a-granel-x-kg.jpg', 0, 5, 50),
(17, 1, 10, 'Gatti Panela Granulada X 500 Gr', 8.60, 'https://corporacionliderperu.com/44221-large_default/gatti-panela-granulada-x-500-gr.jpg', 5, 5, 10),
(18, 1, 6, 'Don Vittorio Cabello De Angel 250 Gr.', 1.90, 'https://corporacionliderperu.com/48041-large_default/don-vittorio-cabello-de-angel-250-gr.jpg', 10, 4, 15),
(19, 1, 9, 'Molitalia Cabello De Angel X 250 Gr.', 1.80, 'https://corporacionliderperu.com/50738-large_default/molitalia-cabello-de-angel-x-250-gr.jpg', 5, 4, 20),
(20, 1, 6, 'Don Vittorio Fideo Sopa X 235 Gr Canuto Chico', 1.90, 'https://corporacionliderperu.com/49836-large_default/don-vittorio-fideo-sopa-x-235-gr-canuto-chico.jpg', 5, 4, 10),
(21, 1, 6, 'Don Vittorio Spaguetti X 450 Gr.', 3.60, 'https://corporacionliderperu.com/41492-large_default/don-vittorio-spaguetti-x-450-gr.jpg', 0, 5, 25),
(22, 1, 9, 'Molitalia Tallarin Grueso X 450 Gr.', 3.00, 'https://corporacionliderperu.com/50736-large_default/molitalia-tallarin-grueso-x-450-gr.jpg', 10, 5, 15),
(23, 1, 5, 'Pasta Wantan X 500 Gr', 4.90, 'https://corporacionliderperu.com/50950-large_default/pasta-wantan-x-500-gr.jpg', 0, 5, 40),
(24, 1, 6, 'A La Cena Mayonesa X 475 Gr Original', 12.60, 'https://corporacionliderperu.com/48638-large_default/a-la-cena-mayonesa-x-475-gr-original.jpg', 10, 5, 35),
(25, 1, 6, 'Don Vittorio Salsa Roja Completa X 400 Gr', 6.00, 'https://corporacionliderperu.com/48178-large_default/don-vittorio-salsa-roja-completa-x-400-gr.jpg', 0, 4, 50),
(26, 1, 9, 'Molitalia Pomarola Salsa Tomate X 290 Gr.', 3.00, 'https://corporacionliderperu.com/48160-large_default/molitalia-pomarola-salsa-tomate-x-290-gr.jpg', 0, 3, 25),
(27, 1, 3, 'Ajinomen Sopa Sobre X 80 Gr. Pollo', 1.80, 'https://corporacionliderperu.com/49040-large_default/ajinomen-sopa-sobre-x-80-gr-pollo.jpg', 0, 4, 20),
(28, 1, 3, 'Ajinomen Sopa Sobre X 80 Gr. Carne', 1.80, 'https://corporacionliderperu.com/49035-large_default/ajinomen-sopa-sobre-x-80-gr-carne.jpg', 0, 4, 20),
(29, 1, 1, 'San Jorge Galletas Soda X 280 Gr. Seven Pack', 3.90, 'https://corporacionliderperu.com/50236-large_default/san-jorge-galletas-soda-x-280-gr-seven-pack.jpg', 5, 3, 35),
(30, 1, 1, 'San Jorge Galletas Vainilla Familiar X 120 Gr', 1.70, 'https://corporacionliderperu.com/50706-large_default/san-jorge-galletas-vainilla-familiar-x-120-gr.jpg', 0, 4, 25),
(31, 1, 1, 'San Jorge Galletas Animalitos X 500 Gr', 4.60, 'https://corporacionliderperu.com/42734-large_default/san-jorge-galletas-animalitos-x-500-gr.jpg', 10, 4, 30),
(32, 1, 1, 'San Jorge Galletas X 55 Gr. Coconut', 0.90, 'https://corporacionliderperu.com/42735-large_default/san-jorge-galletas-x-55-gr-coconut.jpg', 0, 4, 60),
(33, 1, 1, 'San Jorge Galletas Animalitos X 60 Gr.', 0.80, 'https://corporacionliderperu.com/50027-large_default/san-jorge-galletas-animalitos-x-60-gr.jpg', 0, 4, 60),
(34, 1, 1, 'San Jorge Galletas X 55 Gr.Mini Rondelas Naranja', 0.90, 'https://corporacionliderperu.com/44587-large_default/san-jorge-galletas-x-55-gr-mini-rondelas-naranja.jpg', 0, 4, 60),
(35, 1, 1, 'San Jorge Galletas X 55 Gr. Fruta Mixta', 0.92, 'https://corporacionliderperu.com/45320-large_default/san-jorge-galletas-x-55-gr-fruta-mixta.jpg', 0, 4, 60),
(36, 1, 5, 'Pimienta Negra Molida A Granel X 100 Gr.', 4.20, 'https://corporacionliderperu.com/45295-large_default/pimienta-negra-molida-a-granel-x-100-gr.jpg', 0, 5, 45),
(37, 1, 5, 'Pimienta Negra Molida A Granel X 250 Gr.', 10.50, 'https://corporacionliderperu.com/44753-large_default/pimienta-negra-molida-a-granel-x-250-gr.jpg', 5, 5, 45),
(38, 1, 5, 'Comino Molido A Granel X 100 Gr', 4.80, 'https://corporacionliderperu.com/45297-large_default/comino-molido-a-granel-x-100-gr.jpg', 0, 5, 45),
(39, 1, 5, 'Comino Molido A Granel X 250 Gr', 12.00, 'https://corporacionliderperu.com/36332-large_default/comino-molido-a-granel-x-250-gr.jpg', 5, 5, 45),
(40, 1, 3, 'Ajinomoto Sobre Rojo X 100 Gr.', 2.80, 'https://corporacionliderperu.com/48547-large_default/ajinomoto-sobre-rojo-x-100-gr.jpg', 0, 4, 150),
(41, 1, 3, 'Ajinomoto Sobre Rojo X 250 Gr.', 16.00, 'https://corporacionliderperu.com/48548-large_default/ajinomoto-sobre-x-250-gr.jpg', 5, 4, 40),
(42, 1, 3, 'Sibarita Sazonador Gigante Sobre X 32.4', 0.80, 'https://corporacionliderperu.com/48534-large_default/sibarita-sazonador-gigante-sobre-x-32-4.jpg', 0, 4, 150),
(43, 1, 2, 'Vinagre Del Firme Doy Pack X 1100 Ml Blanco', 3.80, 'https://corporacionliderperu.com/48507-large_default/vinagre-del-firme-doy-pack-x-1100-ml-blanco.jpg', 0, 5, 40),
(44, 1, 2, 'Vinagre Del Firme Doy Pack X 1100 Ml Tinto', 3.80, 'https://corporacionliderperu.com/48506-large_default/vinagre-del-firme-doy-pack-x-1100-ml-tinto.jpg', 0, 5, 40),
(45, 1, 2, 'Vinagre Venturo X 600 Ml. Blanco', 3.90, 'https://corporacionliderperu.com/48489-large_default/vinagre-venturo-x-600-ml-blanco.jpg', 3, 3, 30),
(46, 1, 2, 'Vinagre Venturo X 600 Ml. Tinto', 3.90, 'https://corporacionliderperu.com/48487-large_default/vinagre-venturo-x-600-ml-tinto.jpg', 3, 3, 30),
(47, 1, 4, 'Oregano Entero A Granel X 100 Gr (Exo-Igv)', 2.48, 'https://corporacionliderperu.com/36359-large_default/oregano-entero-a-granel-x-100-gr-exo-igv.jpg', 0, 5, 300),
(48, 1, 3, 'Sibarita Palillo Gigante Sobre X 32.4 Gr.', 0.80, 'https://corporacionliderperu.com/48536-large_default/sibarita-palillo-gigante-sobre-x-32-4-gr.jpg', 0, 4, 200),
(49, 1, 8, 'Marina Sal De Mesa X 1 Kg.', 1.50, 'https://corporacionliderperu.com/48556-large_default/marina-sal-de-mesa-x-1-kg.jpg', 0, 3, 80),
(50, 1, 3, 'Maggi Cubitos Gallina X 18.8 Gr.', 0.80, 'https://corporacionliderperu.com/48546-large_default/maggi-cubitos-gallina-x-18-8-gr.jpg', 0, 4, 150),
(51, 1, 3, 'Ajinosillao Bt X 500 Ml.', 4.20, 'https://corporacionliderperu.com/48598-large_default/ajinosillao-bt-x-500-ml.jpg', 10, 4, 50),
(52, 1, 3, 'Ajinosillao Fc X 280 Ml.', 3.00, 'https://corporacionliderperu.com/48596-large_default/ajinosillao-fc-x-280-ml.jpg', 5, 5, 70),
(53, 1, 2, 'Kiko Siyau Fco X 500 Ml.', 3.50, 'https://corporacionliderperu.com/48594-large_default/kiko-siyau-fco-x-500-ml.jpg', 0, 2, 15),
(54, 1, 2, 'Kiko Siyau Fco X 1 LT', 6.80, 'https://corporacionliderperu.com/48593-large_default/kiko-siyau-fco-x-1-lt.jpg', 10, 3, 15),
(55, 1, 9, 'Campomar Filete De Atun X 150 Gr', 6.00, 'https://corporacionliderperu.com/48482-large_default/campomar-filete-de-atun-x-150-gr.jpg', 10, 5, 50),
(56, 1, 10, 'Gloria Filete De Atun X 140 Gr', 6.00, 'https://corporacionliderperu.com/48477-large_default/gloria-filete-de-atun-x-140-gr.jpg', 20, 4, 45),
(57, 1, 10, 'Florida Filete De Atun X 140 Gr', 5.90, 'https://corporacionliderperu.com/48472-large_default/florida-filete-de-atun-x-140-gr.jpg', 0, 4, 30),
(58, 1, 6, 'Primor Solido De Atun X 170 Gr.', 5.50, 'https://corporacionliderperu.com/48468-large_default/primor-solido-de-atun-x-170-gr.jpg', 5, 5, 60),
(59, 1, 5, 'Fanny Mermelada Fresa Vaso X 290 Gr', 5.90, 'https://corporacionliderperu.com/50967-large_default/fanny-mermelada-fresa-vaso-x-290-gr.jpg', 0, 4, 40),
(60, 1, 10, 'Gloria Mermelada Sachet X 700 Gr Fresa', 11.60, 'https://corporacionliderperu.com/48097-large_default/gloria-mermelada-sachet-x-700-gr-fresa.jpg', 10, 5, 35),
(61, 1, 2, 'Quaker Avena Tradicional Bl X 100 Gr', 1.30, 'https://corporacionliderperu.com/48654-large_default/quaker-avena-tradicional-bl-x-100-gr.jpg', 0, 4, 30),
(62, 1, 7, 'Herbi Infusiones X 25 Un. Te Canela Clavo (Exo-Igv)', 1.40, 'https://corporacionliderperu.com/48699-large_default/herbi-infusiones-x-25-un-te-canela-clavo-exo-igv.jpg', 0, 5, 40),
(63, 1, 7, 'Herbi Infusiones X 25 Un. Manzanilla', 1.40, 'https://corporacionliderperu.com/48696-large_default/herbi-infusiones-x-25-un-manzanilla.jpg', 0, 5, 40),
(64, 1, 7, 'Chocolisto Doy Pack X 200 Gr', 7.90, 'https://corporacionliderperu.com/40852-large_default/chocolisto-doy-pack-x-200-gr.jpg', 0, 5, 10),
(65, 1, 5, 'Del Valle Anis X 100 Un', 6.50, 'https://corporacionliderperu.com/48748-large_default/del-valle-anis-x-100-un.jpg', 0, 3, 15),
(66, 1, 7, 'Kirma Cafe Lata X 190 Gr Clasico', 22.90, 'https://corporacionliderperu.com/50630-large_default/kirma-cafe-lata-x-190-gr-clasico.jpg', 10, 4, 15),
(67, 1, 7, 'Cafetal Cafe Molido Bolsa X 200 Gr.', 8.90, 'https://corporacionliderperu.com/50633-large_default/cafetal-cafe-molido-bolsa-x-200-gr.jpg', 0, 4, 20),
(68, 1, 9, 'Altomayo Cafe Tostado Molido X 200 Gr Clasico', 8.60, 'https://corporacionliderperu.com/50637-large_default/altomayo-cafe-tostado-molido-x-200-gr-clasico.jpg', 5, 5, 30),
(69, 1, 4, 'Hot Dog Ahumado de Pollo San Fernando Paquete 220g', 3.90, 'https://plazavea.vteximg.com.br/arquivos/ids/22087054-1000-1000/20238112.jpg', 0, 5, 15),
(70, 1, 4, 'Chorizo Cocido San Fernando Paquete 480g', 10.60, 'https://plazavea.vteximg.com.br/arquivos/ids/362480-1000-1000/20198815.jpg', 10, 5, 35),
(71, 1, 4, 'Chorizo Parrillero Precocido Braedt Paquete 500g', 13.50, 'https://plazavea.vteximg.com.br/arquivos/ids/2446126-1000-1000/20041551.jpg', 15, 5, 25),
(72, 1, 4, 'Jamonada De Pavita San Fernando Paquete 85g', 2.30, 'https://plazavea.vteximg.com.br/arquivos/ids/22086877-1000-1000/20048184.jpg', 0, 4, 25),
(73, 1, 2, 'Huevos Rosados A Granel X Kg', 10.90, 'https://corporacionliderperu.com/45609-large_default/huevos-rosados-a-granel-x-kg.jpg', 0, 5, 100),
(74, 2, 2, 'Pepsi 500ml', 2.50, 'https://media.freshmart.pe/products/81203.png', 15, 4, 25),
(75, 2, 3, 'Inca Kola 1L', 3.50, 'https://plazavea.vteximg.com.br/arquivos/ids/28516733-220-220/20111231.jpg?v=638374467426630000', 5, 5, 20),
(76, 2, 4, 'Sprite 500ml', 2.50, 'https://wongfood.vtexassets.com/arquivos/ids/694304-800-auto?v=638458833872900000&width=800&height=auto&aspect=true', 20, 4, 40),
(77, 2, 5, 'Fanta 500ml', 2.50, 'https://wongfood.vtexassets.com/arquivos/ids/694305-800-auto?v=638458833875700000&width=800&height=auto&aspect=true', 0, 3, 35),
(78, 2, 6, '7UP 500ml', 2.50, 'https://metroio.vtexassets.com/arquivos/ids/237415-800-auto?v=638173434789330000&width=800&height=auto&aspect=true', 0, 4, 50),
(79, 2, 7, 'Red Bull 250ml', 5.00, 'https://plazavea.vteximg.com.br/arquivos/ids/346868-450-450/1059327001.jpg?v=637292327800700000', 10, 5, 15),
(80, 2, 8, 'Monster Energy 500ml', 6.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPWHn8S1-tstlbX09YmXRRge0xov-P-MacjA&s', 0, 4, 25),
(81, 2, 9, 'Powerade 1L', 3.00, 'https://plazavea.vteximg.com.br/arquivos/ids/24844773-512-512/20280761.jpg', 10, 4, 30),
(82, 2, 10, 'Gatorade 500ml', 2.50, 'https://plazavea.vteximg.com.br/arquivos/ids/318889-450-450/20021025.jpg?v=637238860644270000', 0, 3, 39),
(83, 2, 1, 'Aquarius 500ml', 2.00, 'https://http2.mlstatic.com/D_NQ_NP_700669-MLU73437955729_122023-O.webp', 10, 4, 29),
(84, 2, 3, 'Nestea 1L', 3.50, 'https://www.cdiscount.com/pdt2/7/8/5/1/700x700/nes3701018086785/rw/nestea-the-vert-citron-vert-menthe-1l-pack-de-6.jpg', 20, 3, 25),
(85, 2, 4, 'Lipton Ice Tea 500ml', 2.50, 'https://digitalcontent.api.tesco.com/v2/media/ghs/4e3d3da1-cb31-4c04-8c1c-b810633cdfbd/47245c35-17b5-4bff-838c-297bf2617912_559289385.jpeg?h=960&w=960', 10, 4, 29),
(86, 2, 5, 'Canada Dry Ginger Ale 500ml', 2.50, 'https://www.londondrugs.com/on/demandware.static/-/Sites-londondrugs-master/default/dw7c20f8ec/products/L8677379/large/L8677379.JPG', 25, 3, 40),
(87, 2, 6, 'Schweppes Tonic 500ml', 2.50, 'https://www.montyskenya.com/wp-content/uploads/2020/05/Schweppes-Indian-Tonic-Water.jpg', 30, 4, 50),
(88, 2, 7, 'Four Loko 500ml', 4.50, 'https://tofuu.getjusto.com/orioneat-prod/yBuDNHpfwXp7Dnsew-image%20(1).png', 15, 5, 20),
(89, 2, 8, 'Smirnoff Ice 355ml', 7.50, 'https://metroio.vtexassets.com/arquivos/ids/244457/517658002-1.jpg?v=638173935700200000', 0, 4, 25),
(90, 2, 9, 'Cerveza Corona 355ml', 8.00, 'https://212global.com/wp-content/uploads/2024/06/6230fa1fbe396eb1e27f88ac_thumbnail.jpg', 10, 4, 30),
(91, 2, 10, 'Cerveza Heineken 330ml', 9.50, 'https://dojiw2m9tvv09.cloudfront.net/54185/product/cerveza-heineken_900x6591.png', 0, 5, 39),
(92, 2, 1, 'Pilsen Callao 630ml', 10.50, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdzWjNC9fAZOdbC8l9O75s0hUcJ30mXmjqbA&s', 10, 3, 35),
(93, 2, 2, 'Cerveza Cusqueña 330ml', 7.00, 'https://www.cachina.eu/cdn/shop/products/IMG_3182.jpg?v=1654926774', 0, 4, 50),
(94, 2, 3, 'Cerveza Cristal 650ml', 6.20, 'https://corporacionliderperu.com/39049-large_default/cerveza-cristal-bt-x-650-ml.jpg', 0, 4, 30),
(95, 2, 4, 'Pepsi Zero 500ml', 2.50, 'https://www.distribuidoralamartina.cl/wp-content/uploads/2021/04/pepsi-zero-500ml-1.jpeg', 10, 5, 40),
(96, 2, 5, 'Coca Cola Zero 500ml', 2.50, 'https://plazavea.vteximg.com.br/arquivos/ids/24844508-450-450/987050.jpg?v=638090214740830000', 0, 4, 35),
(97, 2, 6, 'Sprite Zero 500ml', 3.50, 'https://static.cotodigital3.com.ar/sitios/fotos/full/00124800/00124851.jpg?3.0.172', 25, 3, 20),
(98, 2, 7, 'Fanta Zero 500ml', 2.50, 'https://marfast.co.uk/media/catalog/product/cache/1a4bab5a73591f763a34c348621704d6/f/a/fanta-500ml-bottle-orange-zero.jpg', 30, 4, 25),
(99, 2, 8, 'Monster Zero 500ml', 7.50, 'https://i.ebayimg.com/images/g/ifgAAOSweqNmAaiB/s-l1600.webp', 0, 5, 50),
(100, 2, 9, 'Powerade Zero 1L', 5.00, 'https://micocacola.vteximg.com.br/arquivos/ids/197391/7802820678017_1.png?v=638404041912730000', 0, 4, 30),
(101, 2, 10, 'Gatorade Zero 500ml', 2.50, 'https://unimarc.vtexassets.com/arquivos/ids/229753/000000000662166002-UN-01.jpg?v=638016273260200000', 0, 3, 40),
(102, 2, 1, 'Aquarius Zero 500ml', 3.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgFuu02xj_XxSxRuu-WuIHPQDrHcnQaN5OGw&s', 0, 4, 30),
(103, 2, 2, 'Red Bull Zero 250ml', 7.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxt1E_PdcluyewYush66dYZLHQnZ962hTJ8w&s', 0, 5, 20),
(104, 2, 3, 'Nestea Zero 1L', 6.50, 'https://napoje-online.cz/2954-large_default/nestea-zero-broskev-15l-pet.jpg', 0, 4, 25),
(105, 2, 4, 'Lipton Ice Tea Zero 500ml', 4.50, 'https://kouvasmarket.gr/wp-content/uploads/2020/06/LIPTON-ICE-TEA-%CE%A0%CE%A1%CE%91%CE%A3%CE%99%CE%9D%CE%9F-%CE%A4%CE%A3%CE%91%CE%99-%CE%9C%CE%95-%CE%9B%CE%95%CE%9C%CE%9F%CE%9D%CE%99-%CE%A7%CE%A9%CE%A1%CE%99%CE%A3-%CE%96%CE%91%CE%A7%CE%91%CE%A1%CE%97-500ML-1.jpg', 0, 5, 30),
(106, 2, 5, 'Canada Dry Ginger Ale Zero 500ml', 3.50, 'https://www.distribuidoralamartina.cl/wp-content/uploads/2021/04/ginger-ale-light-500ml-1.jpeg', 2, 4, 40),
(107, 2, 10, 'Heineken Zero 330ml', 3.50, 'https://cdn11.bigcommerce.com/s-44lbg3lsgv/images/stencil/1280x1280/products/1947/13678/4b616233-a535-4177-a092-8f88dbed62d6__68432.1719305019.jpg?c=1', 30, 4, 40),
(108, 2, 2, 'Cusqueña Trigo 330ml', 3.00, 'https://tiptop.com.pe/wp-content/uploads/2023/06/Cusquena-trigo-scaled.jpg', 20, 4, 50),
(109, 2, 4, 'Pepsi Light 500ml', 2.50, 'https://lacolonia.vtexassets.com/arquivos/ids/170039-800-800?v=637097062276900000&width=800&height=800&aspect=true', 10, 4, 40),
(110, 2, 5, 'Coca Cola Light 500ml', 2.50, 'https://express.donangelo.pe/wp-content/uploads/2022/04/WhatsApp-Image-2022-05-28-at-2.03.41-PM-1.jpeg', 0, 5, 35),
(111, 2, 7, 'Fanta Light 500ml', 2.50, 'https://www.automaticretailing.com/media/catalog/product/cache/e70602422d911f0edb0b0d50a9ac95bc/3/a/3a814e35296c44a45323400b5a3cd90f.jpg', 30, 3, 25),
(112, 2, 1, 'Coca Cola 1L', 3.00, 'https://plazavea.vteximg.com.br/arquivos/ids/24844286-1000-1000/20111230.jpg', 0, 5, 30),
(113, 2, 2, 'Pepsi 1L', 3.00, 'https://tofuu.getjusto.com/orioneat-prod/WRoyfqhgYyvXbLLK9-gaseosa-pepsi-botella-1l.webp', 0, 4, 25),
(114, 2, 3, 'Inca Kola 2L', 12.00, 'https://minimarketmajaz.com/wp-content/uploads/2021/05/inca-kola-retornable-2L.jpg', 0, 5, 20),
(115, 2, 4, 'Sprite 1L', 10.00, 'https://libertycokedelivery.com/cdn/shop/products/Sprite_1L_580x.jpg?v=1666116206', 0, 4, 40),
(116, 2, 5, 'Fanta 1L', 9.00, 'https://halitlar.com/file/foodsbeverages/fanta-orange-flavored-soda-plastic-bottle-1-l', 0, 3, 35),
(117, 2, 6, '7UP 1L', 10.00, 'https://store.quality.mu/wp-content/uploads/2020/05/1205.jpg', 0, 4, 50),
(118, 2, 7, 'Red Bull 500ml', 8.00, 'https://digitalcontent.api.tesco.com/v2/media/ghs/3ac65bab-d486-4553-81ef-534af595b526/f63cf107-b15d-4dfe-a2f4-ea69ce531491_551027690.jpeg?h=960&w=960', 0, 5, 15),
(119, 2, 9, 'Powerade 500ml', 4.70, 'https://http2.mlstatic.com/D_NQ_NP_713764-MLA44726447118_012021-O.webp', 0, 4, 30),
(120, 2, 10, 'Gatorade 1L', 6.50, 'https://plazavea.vteximg.com.br/arquivos/ids/319114-450-450/20183300.jpg?v=637238886212500000', 0, 3, 40),
(121, 2, 1, 'Agua Pura Vida 1L', 3.10, 'https://metroio.vtexassets.com/arquivos/ids/465106/Agua-Pura-Vida-Sin-Gas-Botella-500ml-1-351656351.jpg?v=638300181378600000', 0, 4, 30),
(122, 2, 4, 'Lipton Ice Tea 1L', 6.70, 'https://m.media-amazon.com/images/I/51MJQdKj59L.jpg', 0, 4, 30),
(123, 2, 5, 'Canada Dry Ginger Ale 1L', 5.50, 'https://http2.mlstatic.com/D_NQ_NP_913190-MLM54839028583_042023-O.webp', 0, 3, 40),
(124, 2, 6, 'Schweppes Tonic 1L', 7.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyYRWCGDQCDkPHHv3e0E8STzu32TzohCzHjg&s', 0, 4, 50),
(125, 2, 8, 'Smirnoff Ice 700ml', 5.00, 'https://www.dialadrinkaldridge.co.uk/wp-content/uploads/2020/07/5410316963602.jpg', 0, 4, 25),
(126, 2, 4, 'Pepsi Max 500ml', 2.50, 'https://wdsgroup.co.uk/wp-content/uploads/2020/09/PEPSI-MAX-500ML.jpg', 0, 5, 40),
(127, 2, 1, 'Aquarius Manzana 500ml', 2.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTam1vbcKIfdNCzGb9van_RYbtK1jtdjFTdcg&s', 0, 4, 30),
(128, 2, 4, 'Lipton Ice Tea Max 500ml', 2.50, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQxxZQ8QURBvWy00Woayv8Ik77lCg3KVkjDg&s', 0, 5, 22),
(129, 3, 10, 'Gloria Yogurt Bt X 180 Gr Fresa', 2.00, 'https://corporacionliderperu.com/48107-large_default/gloria-yogurt-bt-x-180-gr-fresa.jpg', 0, 5, 30),
(130, 3, 10, 'Gloria Yogurt Bt X 1 Kg. Tuttifrutti', 6.90, 'https://corporacionliderperu.com/48099-large_default/gloria-yogurt-bt-x-1-kg-tuttifrutti.jpg', 5, 4, 14),
(131, 3, 10, 'Gloria Yogurt Bt X 1 Kg. Fresa', 6.90, 'https://corporacionliderperu.com/48102-large_default/gloria-yogurt-bt-x-1-kg-fresa.jpg', 5, 5, 14),
(132, 3, 10, 'Gloria Leche Tarro Chico X 170 Gr. Azul', 2.00, 'https://corporacionliderperu.com/48068-large_default/gloria-leche-tarro-chico-x-170-gr-azul.jpg', 0, 3, 35),
(133, 3, 10, 'Gloria Leche Tarro Chico X 390 Gr. Azul', 4.00, 'https://corporacionliderperu.com/50720-large_default/gloria-leche-tarro-azul-gde-x-390-gr.jpg', 0, 4, 45),
(134, 3, 10, 'Gloria Leche Tarro Chico X 170 Gr Roja/Light', 2.40, 'https://corporacionliderperu.com/49965-large_default/gloria-leche-tarro-chico-x-170-gr-roja-light.jpg', 0, 4, 33),
(135, 3, 10, 'Gloria Leche Uht Caja X 1 Lt Azul', 5.60, 'https://corporacionliderperu.com/48079-large_default/gloria-leche-uht-caja-x-1-lt-azul.jpg', 10, 4, 8),
(136, 3, 10, 'Gloria Leche Tarro Light Roja Gde X 390 Gr.', 4.20, 'https://corporacionliderperu.com/48308-large_default/gloria-leche-tarro-light-roja-gde-x-390-gr.jpg', 5, 5, 21),
(137, 3, 10, 'Gloria Leche Uht Caja X 1 Lt Roja-Light', 5.80, 'https://corporacionliderperu.com/47934-large_default/gloria-leche-uht-caja-x-1-lt-roja-light.jpg', 10, 4, 15),
(138, 3, 2, 'Ideal Leche Cremosita Lata X 390 Gr.', 3.80, 'https://corporacionliderperu.com/47920-large_default/ideal-leche-cremosita-lata-x-390-gr.jpg', 0, 4, 19),
(139, 3, 10, 'Gloria Mantequilla Barra X 200 Gr. Con Sal', 9.90, 'https://corporacionliderperu.com/48095-large_default/gloria-mantequilla-barra-x-200-gr-con-sal.jpg', 10, 3, 32),
(140, 3, 3, 'Laive Mantequilla Barra X 180 Gr. Con Sal', 12.60, 'https://corporacionliderperu.com/48132-large_default/laive-mantequilla-barra-x-180-gr-con-sal.jpg', 15, 4, 19),
(141, 3, 3, 'Laive Queso Edam Sobre X 90 Gr', 5.20, 'https://corporacionliderperu.com/50750-large_default/laive-queso-edam-sobre-x-90-gr.jpg', 0, 4, 10),
(142, 3, 2, 'Sello De Oro Margarina Barra X 90 Gr', 2.50, 'https://corporacionliderperu.com/49703-large_default/sello-de-oro-margarina-barra-x-90-gr.jpg', 0, 2, 15),
(143, 3, 2, 'Sello De Oro Margarina Barra X 200 Gr', 4.30, 'https://corporacionliderperu.com/49704-large_default/sello-de-oro-margarina-barra-x-200-gr.jpg', 0, 2, 10),
(144, 3, 3, 'Manty Margarina Pote X 300 Gr', 5.80, 'https://corporacionliderperu.com/50467-large_default/manty-margarina-pote-x-300-gr.jpg', 15, 4, 20),
(145, 3, 10, 'Gloria Mantequilla Pote X 180 Gr.', 12.60, 'https://corporacionliderperu.com/48098-large_default/gloria-mantequilla-pote-x-180-gr.jpg', 15, 4, 15),
(146, 3, 7, 'Danlac Yogurt Frutado Frutos Del Bosque Bt X 900 Gr', 9.00, 'https://corporacionliderperu.com/46810-large_default/danlac-yogurt-frutado-frutos-del-bosque-bt-x-900-gr.jpg', 10, 4, 23),
(147, 3, 3, 'Alimento Lácteo Laive Yopi Mix Chocorocks Vaso 116g', 2.90, 'https://plazavea.vteximg.com.br/arquivos/ids/29071491-1000-1000/20423952.jpg', 0, 4, 15),
(148, 3, 3, 'Alimento Lácteo Laive Yopi Mix Sabor A Vainilla Con Bolitas De Chocolate Vaso 100g', 2.90, 'https://plazavea.vteximg.com.br/arquivos/ids/8656110-1000-1000/20099804.jpg', 0, 5, 14),
(149, 3, 3, 'Alimento Lácteo Laive Yopi Sabor a Fresa Botella 180g', 2.10, 'https://plazavea.vteximg.com.br/arquivos/ids/16382347-1000-1000/20280161.jpg', 0, 5, 30),
(150, 3, 3, 'Margarina Manty Pote 90g', 2.80, 'https://plazavea.vteximg.com.br/arquivos/ids/15681958-1000-1000/20237896.jpg', 0, 5, 35),
(151, 3, 10, 'Mantequilla sin Sal Gloria Paquete 180g', 9.60, 'https://plazavea.vteximg.com.br/arquivos/ids/28527049-1000-1000/20393023.jpg', 10, 4, 30),
(152, 3, 7, 'Yogurt Danlac Frutado Frutos Del Bosque Botella 900g', 9.90, 'https://plazavea.vteximg.com.br/arquivos/ids/28872088-1000-1000/20100514.jpg', 10, 5, 15),
(153, 3, 10, 'Yogurt Bebible Gloria Sabor A Lúcuma Botella 1kg', 6.30, 'https://plazavea.vteximg.com.br/arquivos/ids/23035792-1000-1000/20326308.jpg', 5, 4, 20),
(154, 3, 8, 'Yogurt Sbelt Sabor A Lúcuma Botella 946g', 6.99, 'https://plazavea.vteximg.com.br/arquivos/ids/27669121-1000-1000/20385694.jpg', 0, 4, 25),
(155, 3, 3, 'Yogurt Bebible Laive Bio Sabor A Mora Botella 946g', 6.70, 'https://plazavea.vteximg.com.br/arquivos/ids/27669133-1000-1000/20385690.jpg', 0, 5, 15),
(156, 3, 10, 'Yogurt Parcialmente Descremado Gloria Sabor A Guanábana Botella 1kg', 6.30, 'https://plazavea.vteximg.com.br/arquivos/ids/22976333-1000-1000/20326317.jpg', 10, 4, 20),
(157, 3, 3, 'Yogurt Bebible Laive Bio Natural Botella 946g', 6.89, 'https://plazavea.vteximg.com.br/arquivos/ids/27669134-1000-1000/20385706.jpg', 10, 4, 25),
(158, 3, 4, 'Yogurt Parcialmente Descremado Milkito Vainilla Francesa Botella 1kg', 6.30, 'https://plazavea.vteximg.com.br/arquivos/ids/412080-1000-1000/20023801.jpg', 5, 3, 14),
(159, 3, 3, 'Yogurt Laive Protein Frutos Rojos Botella 340g', 4.99, 'https://plazavea.vteximg.com.br/arquivos/ids/28624389-1000-1000/20391162.jpg', 0, 4, 10),
(160, 4, 1, 'Pollo Entero Fresco x kg', 14.00, 'https://metroio.vtexassets.com/arquivos/ids/290311/Pollo-Entero-Fresco-Metro-x-kg-2-183284.jpg?v=638179316343400000', 11, 1, 73),
(161, 4, 5, 'Pechuga de Pollo x kg', 12.00, 'https://wongfood.vtexassets.com/arquivos/ids/537745/Filete-de-Pechuga-de-Pollo-x-kg-3-2619.jpg?v=637853931733300000', 2, 5, 62),
(162, 4, 3, 'Muslo de Pollo x kg', 10.50, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWl3ZC_iYP0WnOmHw9PvjJ8lHB5nvTdE2WAw&s', 4, 2, 18),
(163, 4, 9, 'Alitas de Pollo x kg', 7.75, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrnbYjzL5tOMM7gBu4D8SUgGCCYmVHiMtntw&s', 12, 3, 69),
(164, 4, 10, 'Pavo Entero Fresco x kg', 6.80, 'https://wongfood.vtexassets.com/arquivos/ids/594438/16249-01-30254.jpg?v=638031802231530000', 13, 2, 30),
(165, 4, 9, 'Pechuga de Pavo x kg', 15.50, 'https://wongfood.vtexassets.com/arquivos/ids/537826/Filete-de-Pechuga-de-Pavita-San-Fernando-x-kg-3-71950.jpg?v=637853937485400000', 5, 3, 29),
(166, 4, 7, 'Muslo de Pavo x kg', 11.00, 'https://static.wixstatic.com/media/5ecb3e_af34fbd4b8f5438daf3676e84e0f290c~mv2.jpeg/v1/fill/w_480,h_480,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/5ecb3e_af34fbd4b8f5438daf3676e84e0f290c~mv2.jpeg', 13, 5, 93),
(167, 4, 8, 'Filete de Pollo x kg', 8.25, 'https://corporacionkingfish.pe/wp-content/uploads/2021/05/17-PECHUGA-DE-POLLO.jpg', 2, 1, 44),
(168, 4, 8, 'Filete de Pavo x kg', 13.00, 'https://storage.googleapis.com/prodecommerce/product_images/410/410.jpg', 19, 2, 65),
(169, 4, 4, 'Carne de Res x kg', 20.00, 'https://wongfood.vtexassets.com/arquivos/ids/539411/109125-01-7307.jpg?v=637862688602500000', 15, 4, 18),
(170, 4, 9, 'Carne Molida de Res x kg', 18.00, 'https://metroio.vtexassets.com/arquivos/ids/239354-800-auto?v=638173822458030000&width=800&height=auto&aspect=true', 12, 2, 2),
(171, 4, 1, 'Carne de Cerdo x kg', 10.00, 'https://wongfood.vtexassets.com/arquivos/ids/537186/Asado-de-Cerdo-x-kg-2-7279.jpg?v=637853280058200000', 19, 1, 25),
(172, 4, 3, 'Chorizo de Pollo', 11.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZc5YRtW7TfP-JG6dGVmOhxqU7d7lJjT8c9g&s', 18, 3, 63),
(173, 4, 8, 'Jamón de Pollo x kg', 9.00, 'https://ico.pe/wp-content/uploads/2021/12/Jamon-de-Pierna-Suiza-Gourmet-Molde-min.jpg', 3, 3, 60),
(174, 4, 8, 'Jamón de Pavo x kg', 8.00, 'https://metroio.vtexassets.com/arquivos/ids/353781-800-auto?v=638180580040000000&width=800&height=auto&aspect=true', 17, 5, 56),
(175, 4, 8, 'Salchicha de Pollo', 11.00, 'https://wongfood.vtexassets.com/arquivos/ids/407088-800-auto?v=637477896095800000&width=800&height=auto&aspect=true', 3, 4, 86),
(176, 4, 4, 'Salchicha de Pavo', 11.00, 'https://plazavea.vteximg.com.br/arquivos/ids/2752789-450-450/20253377.jpg?v=637711166375970000', 8, 5, 63),
(177, 4, 4, 'Pechuga de Pollo Empanizada', 16.00, 'https://www.agrosuper.com/global/wp-content/uploads/2021/12/BAG-1100602-600x600.png', 7, 4, 31),
(178, 4, 6, 'Carne Molida de Pollo x kg', 20.00, 'https://plazavea.vteximg.com.br/arquivos/ids/585967-512-512/20206732.jpg', 1, 2, 50),
(179, 4, 5, 'Nuggets de Pollo', 8.00, 'https://plazavea.vteximg.com.br/arquivos/ids/1693129-450-450/54298.jpg?v=637575019775730000', 12, 5, 63),
(180, 4, 6, 'Tiras de Pollo x kg', 16.00, 'https://images.rappi.pe/products/70f648e4-7532-47d4-83e4-f1820e6345ae.jpg', 13, 2, 33),
(181, 4, 10, 'Hamburguesa de Pollo', 15.00, 'https://www.agrosuperventas.com/medias/sys_master/images/he6/h27/9963032444958/300Wx300H_1100442/300Wx300H-1100442.jpg', 6, 3, 70),
(182, 4, 1, 'Pollo Marinado', 20.00, 'https://t1.uc.ltmcdn.com/es/posts/8/8/3/como_marinar_pollo_25388_600.jpg', 13, 3, 9),
(183, 4, 3, 'Pavo Marinado', 20.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7NOeOIJ-kdpiltIxm7PJtuI30ORcxjAnWoA&s', 1, 2, 5),
(191, 5, 3, 'Palta Fuerte Granel X Kg (Exo-Igv)', 9.80, 'https://corporacionliderperu.com/46123-large_default/palta-fuerte-granel-x-kg-exo-igv.jpg', 10, 5, 40),
(192, 5, 8, 'Camote Entero Amarillo X Kg (Exo-Igv)', 8.80, 'https://corporacionliderperu.com/46125-large_default/camote-entero-amarillo-x-kg-exo-igv.jpg', 15, 4, 15),
(193, 5, 7, 'Papa Yungay A Granel X Kg (Exo-Igv)', 2.80, 'https://corporacionliderperu.com/46127-large_default/papa-yungay-a-granel-x-kg-exo-igv.jpg', 0, 3, 30),
(194, 5, 8, 'Papa Amarilla A Granel X Kg (Exo-Igv)', 6.50, 'https://corporacionliderperu.com/46129-large_default/papa-amarilla-a-granel-x-kg-exo-igv.jpg', 5, 4, 20),
(195, 5, 8, 'Cebolla Roja A Granel X Kg (Exo-Igv)', 4.80, 'https://corporacionliderperu.com/46131-large_default/cebolla-roja-a-granel-x-kg-exo-igv.jpg', 0, 3, 10),
(196, 5, 8, 'Zapallo Macre A Granel X Kg (Exo-Igv)', 4.80, 'https://corporacionliderperu.com/46133-large_default/zapallo-macre-a-granel-x-kg-exo-igv.jpg', 10, 5, 30),
(197, 5, 8, 'Ajo Entero Con Cascara A Granel X 250 Gr.', 7.90, 'https://corporacionliderperu.com/47582-large_default/ajo-entero-con-cascara-a-granel-x-250-gr.jpg', 5, 4, 45),
(198, 5, 7, 'Choclo X Unidad (Exo-Igv)', 2.80, 'https://corporacionliderperu.com/46203-large_default/choclo-x-unidad-exo-igv.jpg', 0, 4, 15),
(199, 5, 8, 'Kion Entero A Granel X 250 Gr', 4.00, 'https://corporacionliderperu.com/47732-large_default/kion-entero-a-granel-x-250-gr.jpg', 0, 3, 25),
(200, 5, 7, 'Papa Canchan A Granel X Kg (Exo Igv) Wb', 2.80, 'https://corporacionliderperu.com/46223-large_default/papa-canchan-a-granel-x-kg-exo-igv-wb.jpg', 0, 2, 10),
(201, 5, 7, 'Yuca Entera A Granel X Kg (Exo-Igv)', 5.40, 'https://corporacionliderperu.com/46225-large_default/yuca-entera-a-granel-x-kg-exo-igv.jpg', 0, 4, 20),
(202, 5, 8, 'Tomate Entero X Kg (Exo-Igv)', 6.50, 'https://corporacionliderperu.com/46351-large_default/tomate-entero-x-kg-exo-igv.jpg', 5, 4, 30),
(203, 5, 7, 'Aji Amarillo X Kilo (Exo-Igv)', 8.80, 'https://corporacionliderperu.com/46355-large_default/aji-amarillo-x-kilo-exo-igv.jpg', 10, 5, 40),
(204, 5, 7, 'Limon A Granel X Kg (Exo-Igv)', 5.80, 'https://corporacionliderperu.com/46363-large_default/limon-a-granel-x-kg-exo-igv.jpg', 15, 5, 35),
(205, 5, 8, 'Espinaca Verde X Kg ( Exo-Igv)', 9.80, 'https://corporacionliderperu.com/46359-large_default/espinaca-verde-x-kg-exo-igv.jpg', 10, 4, 15),
(206, 5, 8, 'Maiz Morado A Granel X Kg (Exo-Igv)', 6.90, 'https://corporacionliderperu.com/47734-large_default/maiz-morado-a-granel-x-kg-exo-igv.jpg', 0, 3, 25),
(207, 5, 7, 'Olluco Entero Granel X Kg (Exo-Igv)', 6.50, 'https://corporacionliderperu.com/47739-large_default/olluco-entero-granel-x-kg-exo-igv.jpg', 7, 5, 35),
(208, 5, 8, 'Pepinillo Entero X Unidad (Exo-Igv)', 1.90, 'https://corporacionliderperu.com/47740-large_default/pepinillo-entero-x-unidad-exo-igv.jpg', 0, 4, 10),
(209, 5, 7, 'Perejil X Atado (Exo-Igv)', 2.60, 'https://corporacionliderperu.com/47741-large_default/perejil-x-atado-exo-igv.jpg', 0, 4, 15),
(210, 5, 8, 'Brocoli X Unidad (Exo-Igv)', 5.30, 'https://corporacionliderperu.com/47715-large_default/brocoli-x-unidad-exo-igv.jpg', 5, 3, 20),
(211, 5, 7, 'Huacatay X Atado (Exo-Igv)', 3.50, 'https://corporacionliderperu.com/47731-large_default/huacatay-x-atado-exo-igv.jpg', 0, 4, 15),
(212, 5, 7, 'Beterraga Atado X 4 Uni (Exo-Igv)', 5.80, 'https://corporacionliderperu.com/47714-large_default/beterraga-atado-x-4-uni-exo-igv.jpg', 7, 4, 10),
(213, 5, 7, 'Hierbabuena X Atado (Exo-Igv)', 3.00, 'https://corporacionliderperu.com/47729-large_default/hierbabuena-x-atado-exo-igv.jpg', 0, 4, 25),
(214, 5, 8, 'Camote Huayro (Exo-Igv)', 5.50, 'https://corporacionliderperu.com/47717-large_default/camote-huayro-exo-igv.jpg', 0, 4, 20),
(215, 5, 3, 'Aji Limo Granel X Kg (Exo-Igv)', 9.80, 'https://corporacionliderperu.com/47579-large_default/aji-limo-granel-x-kg-exo-igv.jpg', 15, 5, 45),
(216, 5, 8, 'Lechuga Americana X Unidad (Exo-Igv)', 2.00, 'https://corporacionliderperu.com/45715-large_default/lechuga-americana-x-unidad-exo-igv.jpg', 0, 3, 15),
(217, 5, 3, 'Caigua X Unidad (Exo-Igv)', 1.60, 'https://corporacionliderperu.com/47716-large_default/caigua-x-unidad-exo-igv.jpg', 0, 4, 20),
(218, 5, 3, 'Apio X Unidad (Exo-Igv)', 3.90, 'https://corporacionliderperu.com/47711-large_default/apio-x-unidad-exo-igv.jpg', 0, 4, 15),
(219, 5, 8, 'Cebolla Blanca A Granel X Kg (Exo-Igv)', 6.50, 'https://corporacionliderperu.com/47718-large_default/cebolla-blanca-a-granel-x-kg-exo-igv.jpg', 5, 4, 25),
(220, 5, 7, 'Camote Morado A Granel X Kg (Exo-Igv)', 5.80, 'https://corporacionliderperu.com/37092-large_default/camote-morado-a-granel-x-kg-exo-igv.jpg', 5, 5, 20),
(221, 5, 8, 'Arveja Con Cascara X Kg. (Exo-Igv)', 8.60, 'https://corporacionliderperu.com/47793-large_default/arveja-con-cascara-x-kg-exo-igv.jpg', 10, 5, 30),
(222, 5, 3, 'Culantro X Atado (Exo-Igv)', 2.00, 'https://corporacionliderperu.com/47724-large_default/culantro-x-atado-exo-igv.jpg', 0, 5, 35),
(223, 5, 3, 'Cebolla China Paq. (Exo-Igv)', 4.60, 'https://corporacionliderperu.com/47719-large_default/cebolla-china-paq-exo-igv.jpg', 0, 5, 20),
(224, 5, 7, 'Pimiento X Unidad (Exo-Igv)', 2.00, 'https://corporacionliderperu.com/44726-large_default/pimiento-x-unidad-exo-igv.jpg', 0, 5, 25),
(225, 5, 7, 'Aji Amarillo A Granel X 250 Gr.', 2.40, 'https://corporacionliderperu.com/46357-large_default/aji-amarillo-a-granel-x-250-gr.jpg', 0, 5, 35),
(226, 5, 3, 'Rocoto Entero X Unidad (Exo-Igv)', 1.80, 'https://corporacionliderperu.com/44823-large_default/rocoto-entero-x-unidad-exo-igv.jpg', 0, 4, 15),
(227, 5, 7, 'Papa Cocktail Variado Bolsa (Exo Igv)', 6.50, 'https://corporacionliderperu.com/45242-large_default/papa-cocktail-variado-bolsa-exo-igv.jpg', 0, 3, 20),
(228, 5, 8, 'Zanahoria Entera A Granel X Kg (Exo-Igv)', 2.90, 'https://corporacionliderperu.com/46227-large_default/zanahoria-entera-a-granel-x-kg-exo-igv.jpg', 0, 5, 25),
(229, 6, 9, 'Platano Bellaco X Unidad (Exo-Igv)', 1.80, 'https://corporacionliderperu.com/46092-large_default/platano-bellaco-x-unidad-exo-igv.jpg', 0, 5, 50),
(230, 6, 5, 'Manzana Roja X Kg (Exo-Igv)', 12.00, 'https://corporacionliderperu.com/46072-large_default/manzana-roja-x-kg-exo-igv.jpg', 20, 4, 20),
(231, 6, 5, 'Manzana Verde X Kg (Exo-Igv)', 13.90, 'https://corporacionliderperu.com/47709-large_default/manzana-verde-x-kg-exo-igv.jpg', 25, 4, 15),
(232, 6, 3, 'Pera A Granel X Kg (Exo-Igv)', 9.80, 'https://corporacionliderperu.com/46074-large_default/pera-a-granel-x-kg-exo-igv.jpg', 5, 3, 20),
(233, 6, 9, 'Papaya Para Jugo X Kg (Exo-Igv)', 4.90, 'https://corporacionliderperu.com/46056-large_default/papaya-para-jugo-x-kg-exo-igv.jpg', 0, 5, 40),
(234, 6, 3, 'Fresa A Granel X Kg (Exo-Igv)', 12.80, 'https://corporacionliderperu.com/46058-large_default/fresa-a-granel-x-kg-exo-igv.jpg', 5, 5, 35),
(235, 6, 5, 'Manzana De Agua X Kg (Exo-Igv)', 6.50, 'https://corporacionliderperu.com/46060-large_default/manzana-de-agua-x-kg-exo-igv.jpg', 0, 4, 25),
(236, 6, 3, 'Maracuya A Granel X Kg (Exo-Igv)', 6.00, 'https://corporacionliderperu.com/46062-large_default/maracuya-a-granel-x-kg-exo-igv.jpg', 0, 5, 15),
(237, 6, 9, 'Platano De La Isla X 5 Un (Exo-Igv)', 6.80, 'https://corporacionliderperu.com/46066-large_default/platano-de-la-isla-x-5-un-exo-igv.jpg', 0, 5, 25),
(238, 6, 5, 'Mandarina Granel X Kg (Exo-Igv)', 4.90, 'https://corporacionliderperu.com/46068-large_default/mandarina-granel-x-kg-exo-igv.jpg', 0, 4, 20),
(239, 6, 3, 'Granadilla A Granel X Kg (Exo-Igv)', 8.90, 'https://corporacionliderperu.com/46087-large_default/granadilla-a-granel-x-kg-exo-igv.jpg', 10, 3, 30),
(240, 6, 9, 'Mango X Kilo (Exo-Igv)', 14.80, 'https://corporacionliderperu.com/46085-large_default/mango-x-kilo-exo-igv.jpg', 20, 4, 35),
(241, 6, 9, 'Melon X Kg (Exo-Igv)', 3.50, 'https://corporacionliderperu.com/46083-large_default/melon-x-kg-exo-igv.jpg', 0, 5, 40),
(242, 6, 9, 'Platano De Seda X 5 Un ( Exo Igv) Wb', 3.80, 'https://corporacionliderperu.com/46096-large_default/platano-de-seda-x-5-un-exo-igv-wb.jpg', 0, 5, 25),
(243, 6, 5, 'Piña Golden X Unidad Aprox 2.Kg ( Exo Igv)', 7.90, 'https://corporacionliderperu.com/46101-large_default/pina-golden-x-unidad-aprox-2-kg-exo-igv.jpg', 5, 4, 15),
(244, 6, 3, 'Manzana Israel X Kg (Exo-Igv)', 5.60, 'https://corporacionliderperu.com/46108-large_default/manzana-israel-x-kg-exo-igv.jpg', 0, 3, 20),
(245, 6, 3, 'Chirimoya X Kilo (Exo-Igv)', 7.00, 'https://corporacionliderperu.com/47708-large_default/chirimoya-x-kilo-exo-igv.jpg', 10, 5, 10),
(246, 6, 3, 'Sandia Entera 9 Kg Aprox. (Exo Igv)', 19.00, 'https://corporacionliderperu.com/47740-large_default/pepinillo-entero-x-unidad-exo-igv.jpg', 25, 5, 19),
(247, 6, 9, 'Pitahaya Amarilla x Kg', 29.49, 'https://plazavea.vteximg.com.br/arquivos/ids/29164847-650-650/20389857-1.jpg', 20, 5, 25),
(248, 7, 6, 'Alfajor de Maicena x U', 11.00, 'https://th.bing.com/th/id/OIP.KSY-9RJVZo6_Rv8dTj6EvgHaHa?rs=1&pid=ImgDetMain', 0, 3, 63),
(249, 7, 7, 'Suspiro Limeño x U', 1.00, 'https://i.pinimg.com/originals/81/9d/e1/819de1689409589555fe2601ddf712a4.jpg', 0, 1, 42),
(250, 7, 7, 'Galletas de Avena Quaker', 1.00, 'https://th.bing.com/th/id/OIP.LGHRqsekjgJReZQDkNsYJwHaHa?rs=1&pid=ImgDetMain', 0, 5, 54),
(251, 7, 3, 'Galletas de Chocolate Tentacion', 9.00, 'https://plazavea.vteximg.com.br/arquivos/ids/228465-1000-1000/1285377002.jpg?v=636997509746000000', 0, 2, 78),
(252, 7, 3, 'Pan Francés', 1.00, 'https://th.bing.com/th/id/OIP.RiXPwVTWdpwbzpYj8PwmsQHaE8?rs=1&pid=ImgDetMain', 0, 2, 41),
(253, 7, 4, 'Pan de Molde Integral', 6.00, 'https://th.bing.com/th/id/OIP.dzAuEzknLJVC1JqQMtGV1AHaHy?rs=1&pid=ImgDetMain', 0, 3, 52),
(254, 7, 3, 'Muffin de Arándanos x U', 10.70, 'https://fesmag.com/images/stories/PKG/pkg-17q2/iStock-157614033.jpg', 0, 2, 40),
(255, 7, 3, 'Muffin de Chocolate x U', 2.20, 'https://msalasi.com/wp-content/uploads/2024/01/4200004-coko-mafin-sa-visnjom-60-g.jpg', 0, 3, 38),
(256, 7, 7, 'Donut de Vainilla x U', 13.00, 'https://bakingingredients.s3.us-east-2.amazonaws.com/wp-content/uploads/2019/02/07160622/Use-as-is-White-Icing-1919-2119-1177x800.jpg', 0, 4, 44),
(257, 7, 1, 'Donut de Chocolate x U', 3.00, 'https://t1.uc.ltmcdn.com/es/posts/1/0/7/como_hacer_donuts_de_chocolate_31701_orig.jpg', 0, 5, 98),
(258, 7, 3, 'Brownie de Nuez x U', 7.00, 'https://www.rebanando.com/media/brownie-con-nueces-2_crop.jpg/rh/brownie-con-nueces.jpg', 0, 4, 18),
(259, 7, 9, 'Brownie de Chocolate x U', 10.00, 'https://th.bing.com/th/id/OIP.jULvQtEmBhVrcFS_lcukPwHaHa?rs=1&pid=ImgDetMain', 0, 4, 60),
(260, 7, 10, 'Empanada de Queso x U', 11.00, 'https://th.bing.com/th/id/OIP.I5a1zig0rKU3zVeRdiJCtgHaHa?rs=1&pid=ImgDetMain', 0, 4, 18),
(261, 7, 1, 'Empanada de Carne x U', 11.00, 'https://th.bing.com/th/id/R.7cab0577622bb307c3156b0916f39fc2?rik=DsqU5wcgNwBUVA&pid=ImgRaw&r=0', 0, 1, 77),
(262, 7, 9, 'Bollo de Canela x U', 11.00, 'https://th.bing.com/th/id/OIP.REp_Ir0Xs-o4VNDe_-NykgHaFj?rs=1&pid=ImgDetMain', 0, 5, 84),
(263, 7, 5, 'Pionono de Manjar Blanco x U', 12.00, 'https://th.bing.com/th/id/OIP.iAzMK3i6beGKSddPO8GqLAHaFj?rs=1&pid=ImgDetMain', 0, 2, 36),
(264, 7, 8, 'Panetón Metro', 13.00, 'https://th.bing.com/th/id/OIP.fMMSlM31b6ZQUjK0fuJyuAHaHa?rs=1&pid=ImgDetMain', 0, 5, 10),
(265, 7, 8, 'Chancay', 10.00, 'https://th.bing.com/th/id/OIP.wSP1wZVrwABKhZYI5WfUyQAAAA?rs=1&pid=ImgDetMain', 0, 1, 25),
(266, 7, 1, 'Queque de Vainilla x Porcion', 8.00, 'https://th.bing.com/th/id/R.c3d07ecbc90bec39edc04476db2304ba?rik=vzbMIb4OT8nEgg&riu=http%3a%2f%2ffarm3.static.flickr.com%2f2598%2f3916958531_28e0132a5e.jpg&ehk=34fRY0k2lyj%2fv%2fNUDsYRbDr2JVYG53nxo9SbJfkXkmg%3d&risl=&pid=ImgRaw&r=0', 0, 2, 70),
(267, 7, 7, 'Queque de Chocolate x Porcion', 14.00, 'https://th.bing.com/th/id/OIP.uNFda5Td27h7BVoY0Uk-5AHaGL?w=1200&h=1001&rs=1&pid=ImgDetMain', 0, 3, 97),
(268, 7, 3, 'Mazamorra x U', 9.00, 'https://th.bing.com/th/id/OIP.HOdeiXc9V-gWWUvO4DUU1wHaHa?rs=1&pid=ImgDetMain', 0, 4, 86),
(269, 7, 5, 'Cachanga x U', 8.00, 'https://th.bing.com/th/id/OIP.7DBVbV5YSLWXQO4qvvGiwgHaHs?rs=1&pid=ImgDetMain', 0, 1, 20),
(270, 7, 10, 'Pie de manzana x Porcion', 14.00, 'https://aceleralastatic.nyc3.cdn.digitaloceanspaces.com/files/uploads/3056/1658185970-125-porcion-piemanzana-jpg.jpg', 0, 3, 50),
(271, 7, 9, 'Pie de Limón x Porcion', 8.00, 'https://th.bing.com/th/id/OIP.tGV5DliC3i5E13a0bNgWdAHaFj?rs=1&pid=ImgDetMain', 0, 2, 5),
(272, 7, 6, 'Pingüinos', 7.00, 'https://cdn2.cocinadelirante.com/sites/default/files/images/2018/10/como-hacer-cupcake-de-pinguino.jpg', 0, 2, 64),
(273, 7, 1, 'Gansitos', 5.00, 'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/mg/gm/1p/images/product-images/img_large/00750100015310l.jpg', 0, 1, 94),
(274, 7, 7, 'Negrito', 4.00, 'https://th.bing.com/th/id/R.f947c1a4e94be4bdd542f6fa7648a728?rik=AGn0VshpOvmVHg&riu=http%3a%2f%2f1.bp.blogspot.com%2f-K7HLWmx2Epo%2fTwvk39LIs3I%2fAAAAAAAAAC0%2fNbX6V47oJbQ%2fs1600%2f3831875009_97d256a2dd.jpg&ehk=hTRYKPbHK7BNT%2fhy62J8NShnTLxWzCT64lTDbAUiQ5Q%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1', 0, 2, 63),
(275, 7, 10, 'Rapiditas Bimbo', 1.00, 'https://masonlineprod.vtexassets.com/arquivos/ids/293920/Rapiditas-Bimbo-Integrales-275g-10u-2-36996.jpg?v=638277321742830000', 0, 3, 91),
(276, 7, 3, 'Pan de Molde Bimbo', 6.00, 'https://th.bing.com/th/id/R.787e9e7e5f23358152fc6ab9607bb506?rik=6mUTvqj%2fA%2f0FrQ&pid=ImgRaw&r=0', 0, 2, 44),
(277, 7, 4, 'Tostadas Bimbo', 9.00, 'https://plazavea.vteximg.com.br/arquivos/ids/178514-1000-1000/981287.jpg?v=635909115998500000', 0, 4, 95),
(279, 8, 4, 'Ace Detergente X 330 Gr. Floral', 6.00, 'https://corporacionliderperu.com/47488-large_default/ace-detergente-x-330-gr-floral.jpg', 10, 5, 39),
(280, 8, 2, 'Ace Detergente X 750 Gr Limpieza Aroma Floral', 9.80, 'https://corporacionliderperu.com/46795-large_default/ace-detergente-x-750-gr-limpieza-aroma-floral.jpg', 20, 5, 15),
(281, 8, 2, 'Ariel Detergente X 700 Gr. C/Downy', 10.90, 'https://corporacionliderperu.com/50529-large_default/ariel-detergente-x-700-gr-c-downy.jpg', 10, 4, 20),
(282, 8, 8, 'Ariel Detergente X 750 Gr Revita Color', 11.50, 'https://corporacionliderperu.com/47527-large_default/ariel-detergente-x-750-gr-revita-color.jpg', 10, 5, 20),
(283, 8, 4, 'Bolivar Detergente X 140 Gr. Cuidado Total', 2.90, 'https://corporacionliderperu.com/50268-large_default/bolivar-detergente-x-140-gr-cuidado-total.jpg', 0, 4, 35),
(284, 8, 8, 'Bolivar Detergente X 750 Gr. Active Care', 10.90, 'https://corporacionliderperu.com/41405-large_default/bolivar-detergente-x-750-gr-active-care.jpg', 20, 5, 25),
(285, 8, 2, 'Opal Detergente X 730 Gr. Ultra Floral', 9.90, 'https://corporacionliderperu.com/50833-large_default/opal-detergente-x-730-gr-ultra-floral.jpg', 0, 4, 20),
(286, 8, 8, 'Sapolio Detergente X 750 Gr. Limon', 8.30, 'https://corporacionliderperu.com/50105-large_default/sapolio-detergente-x-750-gr-limon.jpg', 0, 3, 15),
(287, 8, 8, 'Sapolio Detergente X 750 Gr. Bebe', 8.20, 'https://corporacionliderperu.com/49872-large_default/sapolio-detergente-x-750-gr-bebe.jpg', 0, 3, 15),
(288, 8, 4, 'Detergente Patito X 140 Gr.', 1.20, 'https://corporacionliderperu.com/42836-large_default/detergente-patito-x-140-gr.jpg', 0, 2, 30),
(289, 8, 4, 'Marsella Detergente X 750 Gr. Lavanda Y Rosas', 8.90, 'https://corporacionliderperu.com/48031-large_default/marsella-detergente-x-750-gr-lavanda-y-rosas.jpg', 10, 4, 25),
(290, 8, 4, 'Bolivar Detergente Liquido Fc X 1.9 Lt. Active Care', 34.80, 'https://corporacionliderperu.com/45542-large_default/bolivar-detergente-liquido-fc-x-1-9-lt-active-care.jpg', 30, 5, 17),
(291, 8, 2, 'Trapeador De Felpa Con Ojal 40 X 80 Cm. Azul', 5.00, 'https://corporacionliderperu.com/48040-large_default/trapeador-de-felpa-con-ojal-40-x-80-cm-azul.jpg', 0, 4, 20),
(292, 8, 8, 'Tekno Cera Sachet X 300 Ml. Al Agua', 5.20, 'https://corporacionliderperu.com/47908-large_default/tekno-cera-sachet-x-300-ml-al-agua.jpg', 0, 4, 24),
(293, 8, 8, 'Tekno Cera Sachet X 300 Ml. Liquida Amarilla', 5.80, 'https://corporacionliderperu.com/40558-large_default/tekno-cera-sachet-x-300-ml-liquida-amarilla.jpg', 0, 4, 26),
(294, 8, 2, 'Esponjas Scotch Brite La Maquina X 1 Un', 1.80, 'https://corporacionliderperu.com/50564-large_default/esponjas-scotch-brite-la-maquina-x-1-un.jpg', 0, 5, 30),
(295, 8, 4, 'Esponjas De Alambre Peru', 2.00, 'https://corporacionliderperu.com/40571-large_default/esponjas-de-alambre-peru.jpg', 0, 3, 40),
(296, 8, 4, 'Esponjas Scotch Brite Multiusos Salva Uñas Cocina', 3.00, 'https://corporacionliderperu.com/46942-large_default/esponjas-scotch-brite-multiusos-salva-unas-cocina.jpg', 10, 5, 35),
(297, 8, 2, 'Lava x Lavavajilla X 850 Gr Uva', 7.90, 'https://corporacionliderperu.com/50194-large_default/lavax-lavavajilla-x-850-gr-uva.jpg', 15, 3, 25),
(298, 8, 4, 'Virutex Limpia Sanitario Con Base (Hisopo Estrella)', 8.90, 'https://corporacionliderperu.com/40596-large_default/virutex-limpia-sanitario-con-base-hisopo-estrella.jpg', 0, 4, 8),
(299, 8, 8, 'Sapolio Lejia X 1100 Ml Original', 2.50, 'https://corporacionliderperu.com/48879-large_default/sapolio-lejia-x-1100-ml-original.jpg', 0, 5, 18),
(300, 8, 4, 'Paños Scotch Brite Secatodo X 1 Un.', 3.20, 'https://corporacionliderperu.com/40608-large_default/panos-scotch-brite-secatodo-x-1-un.jpg', 0, 5, 20),
(301, 8, 2, 'Poett Ambientador Frasco X 900 Ml. Lavanda', 3.70, 'https://corporacionliderperu.com/49169-large_default/poett-ambientador-frasco-x-900-ml-lavanda.jpg', 0, 4, 25),
(302, 8, 4, 'Sapolio Ambientador Spray X 360 Ml. Antitabaco', 6.30, 'https://corporacionliderperu.com/46682-large_default/sapolio-ambientador-spray-x-360-ml-antitabaco.jpg', 10, 5, 40),
(303, 8, 4, 'Sapolio Insecticida X 360 Ml. Mata Moscas Y Zancudos', 9.90, 'https://corporacionliderperu.com/50864-large_default/sapolio-insecticida-x-360-ml-mata-moscas-y-zancudos.jpg', 10, 4, 10),
(304, 8, 4, 'Sapolio Lavavajilla Pote X 800 Gr. Limon', 6.80, 'https://corporacionliderperu.com/40672-large_default/sapolio-lavavajilla-pote-x-800-gr-limon.jpg', 7, 4, 35),
(305, 8, 4, 'Sapolio Limpiatodo Fc X 900 Ml. Bebe', 3.20, 'https://corporacionliderperu.com/46891-large_default/sapolio-limpiatodo-fc-x-900-ml-bebe.jpg', 0, 3, 27),
(306, 8, 8, 'Bolivar Jabon Vida X 190 Gr. Floral/Azul', 3.00, 'https://corporacionliderperu.com/49127-large_default/bolivar-jabon-vida-x-190-gr-floral-azul.jpg', 10, 5, 50),
(307, 8, 2, 'Clorox Lejia Tradicional X 324 Ml.', 1.40, 'https://corporacionliderperu.com/48973-large_default/clorox-lejia-tradicional-x-324-ml.jpg', 0, 5, 55),
(308, 8, 2, 'Clorox Lejia Tradicional X 638ml.', 2.00, 'https://corporacionliderperu.com/48972-large_default/clorox-lejia-tradicional-x-638ml.jpg', 0, 5, 40),
(309, 8, 8, 'Suavitel Doy Pack X 360 Ml. Fresca Primavera', 4.50, 'https://corporacionliderperu.com/50860-large_default/suavitel-doy-pack-x-360-ml-fresca-primavera.jpg', 10, 5, 60),
(310, 8, 4, 'Sapolio Limpiatodo Fc X 900 Ml. Floral', 3.20, 'https://corporacionliderperu.com/46893-large_default/sapolio-limpiatodo-fc-x-900-ml-floral.jpg', 5, 4, 35),
(311, 8, 2, 'Ayudin Lavavajilla Pote X 850 Gr. Limon', 9.90, 'https://corporacionliderperu.com/50482-large_default/ayudin-lavavajilla-pote-x-850-gr-limon.jpg', 10, 5, 19),
(312, 8, 2, 'Clorox Lejia Tradicional X 819 Ml', 2.30, 'https://corporacionliderperu.com/47550-large_default/clorox-lejia-tradicional-x-819-ml.jpg', 0, 4, 25),
(313, 8, 8, 'Scott Papel Toalla Lavable Duramax', 9.90, 'https://corporacionliderperu.com/50542-large_default/scott-papel-toalla-lavable-duramax.jpg', 15, 5, 25),
(314, 8, 4, 'Servilleta Elite De Mesa Gold X 60 Un (33cm X 33cm)', 3.60, 'https://corporacionliderperu.com/48901-large_default/servilleta-elite-de-mesa-gold-x-60-un-33cm-x-33cm.jpg', 0, 5, 30),
(315, 8, 4, 'Elite P.H. Celeste Doble Hoja X 4 Un.', 3.90, 'https://corporacionliderperu.com/48112-large_default/elite-p-h-celeste-doble-hoja-x-4-un.jpg', 0, 4, 15),
(316, 8, 4, 'Elite P.H. Excellence Doble Hoja X 8 Un (65 Mt)(361421)', 23.90, 'https://corporacionliderperu.com/50538-large_default/elite-p-h-excellence-doble-hoja-x-8-un-65-mt-361421.jpg', 30, 4, 15),
(317, 8, 8, 'P.H. Suave Etiqueta Verde X 2', 2.30, 'https://corporacionliderperu.com/40890-large_default/p-h-suave-etiqueta-verde-x-2.jpg', 0, 5, 50),
(318, 9, 8, 'Colgate Crema Dental X 90 Gr. Maxima Proteccion', 2.00, 'https://corporacionliderperu.com/49246-large_default/colgate-crema-dental-x-90-gr-maxima-proteccion.jpg', 0, 5, 40),
(319, 9, 10, 'Dove Jabon X 90 Gr. Crema Hidratante Original', 3.90, 'https://corporacionliderperu.com/48392-large_default/dove-jabon-x-90-gr-crema-hidratante-original.jpg', 0, 5, 35),
(320, 9, 10, 'Head & Shoulders Shampoo X 375 Ml. Limpieza Renovadora', 16.90, 'https://corporacionliderperu.com/51039-large_default/head-shoulders-shampoo-x-375-ml-limpieza-renovadora.jpg', 10, 4, 20),
(321, 9, 5, 'Sedal Shampoo X 340 Ml. Rizos Definidos', 10.60, 'https://corporacionliderperu.com/49496-large_default/sedal-shampoo-x-340-ml-rizos-definidos.jpg', 5, 3, 25),
(322, 9, 5, 'Sedal Shampoo X 340 Ml. Duo 2 En 1', 10.60, 'https://corporacionliderperu.com/49509-large_default/sedal-shampoo-x-340-ml-duo-2-en-1.jpg', 5, 5, 20),
(323, 9, 5, 'Sedal Shampoo X 340 Ml. Ceramidas', 9.50, 'https://corporacionliderperu.com/50673-large_default/sedal-shampoo-x-340-ml-ceramidas.jpg', 3, 4, 15);
INSERT INTO `producto` (`idproducto`, `idcategoria`, `idproveedor`, `nombreproducto`, `PrecioProdu`, `enlace`, `descuento`, `calificacion`, `cantidad`) VALUES
(324, 9, 5, 'Sedal Shampoo X 340 Ml. Liso Perfecto', 10.60, 'https://corporacionliderperu.com/49751-large_default/sedal-shampoo-x-340-ml-liso-perfecto.jpg', 5, 4, 10),
(325, 9, 2, 'Loreal Elvive Shampoo X 370 Ml. Color Vive/Teñido', 18.90, 'https://corporacionliderperu.com/50683-large_default/loreal-elvive-shampoo-x-370-ml-color-vive-tenido.jpg', 20, 2, 7),
(326, 9, 10, 'Dove Shampoo X 400 Ml. Hidratacion Intensa', 14.80, 'https://corporacionliderperu.com/49518-large_default/dove-shampoo-x-400-ml-hidratacion-intensa.jpg', 7, 5, 18),
(327, 9, 8, 'Pantene Shampoo X 400 Ml. Control Caida', 16.50, 'https://corporacionliderperu.com/49468-large_default/pantene-shampoo-x-400-ml-control-caida.jpg', 20, 4, 25),
(328, 9, 8, 'Pantene Shampoo X 400 Ml. Rizos Definidos', 16.50, 'https://corporacionliderperu.com/49480-large_default/pantene-shampoo-x-400-ml-rizos-definidos.jpg', 0, 5, 17),
(329, 9, 8, 'Pantene Shampoo X 400 Ml. Brillo Extremo', 16.50, 'https://corporacionliderperu.com/49477-large_default/pantene-shampoo-x-400-ml-brillo-extremo.jpg', 15, 4, 21),
(330, 9, 10, 'Head & Shoulders Shampoo X 375 Ml. Suave Y Manejable 2 En 1', 16.90, 'https://corporacionliderperu.com/50675-large_default/head-shoulders-shampoo-x-375-ml-suave-y-manejable-2-en-1.jpg', 0, 4, 14),
(331, 9, 5, 'Nivea Desodorante Spray Women X 150 Ml Strees Protec', 11.20, 'https://corporacionliderperu.com/50575-large_default/nivea-desodorante-spray-women-x-150-ml-strees-protec.jpg', 0, 5, 14),
(332, 9, 2, 'Schick Exacta 2 Piel Delicada', 2.20, 'https://corporacionliderperu.com/50743-large_default/schick-exacta-2-piel-delicada.jpg', 0, 1, 10),
(333, 9, 10, 'Head & Shoulders Shampoo X 375 Ml. Proteccion Caida', 16.90, 'https://corporacionliderperu.com/49430-large_default/head-shoulders-shampoo-x-375-ml-proteccion-caida.jpg', 15, 4, 32),
(334, 9, 10, 'Dove Desodorante Spray X 150 Ml Pepino Go Fresh', 11.80, 'https://corporacionliderperu.com/49763-large_default/dove-desodorante-spray-x-150-ml-pepino-go-fresh.jpg', 5, 4, 23),
(335, 9, 10, 'Dove Desodorante Spray X 150 Ml. Originals', 11.80, 'https://corporacionliderperu.com/49385-large_default/dove-desodorante-spray-x-150-ml-original.jpg', 5, 4, 17),
(336, 9, 10, 'Rexona Desodorante Spray Women X 150 Ml. Nutritive', 11.50, 'https://corporacionliderperu.com/49764-large_default/rexona-desodorante-spray-women-x-150-ml-nutritive.jpg', 20, 5, 30),
(337, 9, 5, 'Sedal Crema Peinar X 300 Ml. Keratina', 12.80, 'https://corporacionliderperu.com/39223-large_default/sedal-crema-peinar-x-300-ml-keratina.jpg', 10, 5, 29),
(338, 9, 8, 'Pantene Shampoo Sachet X 18 Ml. Restauracion + Acondicionador', 1.00, 'https://corporacionliderperu.com/50601-large_default/pantene-shampoo-sachet-x-18-ml-restauracion-acondicionador.jpg', 0, 5, 49),
(339, 9, 8, 'Nutribela Tratamiento Sachet X 27 Ml. Nutricion', 1.50, 'https://corporacionliderperu.com/47757-large_default/nutribela-tratamiento-sachet-x-27-ml-nutricion.jpg', 0, 5, 45),
(340, 9, 8, 'Nutribela Tratamiento Sachet X 27 Ml. Biokeratina', 1.50, 'https://corporacionliderperu.com/47758-large_default/nutribela-tratamiento-sachet-x-27-ml-biokeratina.jpg', 0, 4, 40),
(341, 9, 8, 'Nutribela Tratamiento Sachet X 27 Ml. Reparacion', 1.50, 'https://corporacionliderperu.com/47759-large_default/nutribela-tratamiento-sachet-x-27-ml-reparacion.jpg', 0, 4, 40),
(342, 9, 10, 'Head & Shoulders Shampoo Sachet X 18 Ml Proteccion Caida', 1.00, 'https://corporacionliderperu.com/50872-large_default/head-shoulders-shampoo-sachet-x-18-ml-proteccion-caida.jpg', 0, 4, 37),
(343, 9, 5, 'Savital Acondicionador X 490ml. Palta Y Sabila', 11.80, 'https://corporacionliderperu.com/49535-large_default/savital-acondicionador-x-490ml-palta-y-sabila.jpg', 15, 4, 26),
(344, 9, 2, 'Gillette Hojas Rojo X 5', 2.30, 'https://corporacionliderperu.com/49615-large_default/gillette-hojas-rojo-x-5.jpg', 0, 3, 30),
(345, 9, 2, 'Prestobarba Gillette 3 Hojas', 3.80, 'https://corporacionliderperu.com/49619-large_default/prestobarba-gillette-3-hojas.jpg', 0, 4, 36),
(346, 9, 2, 'Schick Ultrabarba Maquina De Afeitar', 1.50, 'https://corporacionliderperu.com/49618-large_default/schick-ultrabarba-maquina-de-afeitar.jpg', 0, 3, 18),
(347, 9, 10, 'Rexona Desodorante Spray Men X 150 Ml. Sensitive', 11.50, 'https://corporacionliderperu.com/41382-large_default/rexona-desodorante-spray-men-x-150-ml-sensitive.jpg', 10, 4, 27),
(348, 9, 5, 'Nivea Desodorante Spray Men X 150 Ml. Active Dry Impac', 11.20, 'https://corporacionliderperu.com/49315-large_default/nivea-desodorante-spray-men-x-150-ml-active-dry-impac.jpg', 5, 4, 25),
(349, 9, 2, 'Prestobarba Gillette Verde Ultragrip X 2 Hojas', 2.70, 'https://corporacionliderperu.com/49623-large_default/prestobarba-gillette-verde-ultragrip-x-2-hojas.jpg', 0, 4, 28),
(350, 9, 10, 'Rexona Desodorante Roll-On Men X 50 Gr. Antibacterial Invisible', 11.20, 'https://corporacionliderperu.com/49558-large_default/rexona-desodorante-roll-on-men-x-50-gr-antibacterial-invisible.jpg', 15, 3, 15),
(351, 9, 8, 'Colgate Crema Dental X 90 Gr Herbal', 3.20, 'https://corporacionliderperu.com/49245-large_default/colgate-crema-dental-x-90-gr-herbal.jpg', 3, 4, 20),
(352, 9, 8, 'Colgate Crema Dental X 75 Ml. Total 12 Clean Mint', 11.90, 'https://corporacionliderperu.com/49243-large_default/colgate-crema-dental-x-75-ml-total-12-clean-mint.jpg', 5, 3, 10),
(353, 9, 2, 'Kolynos Crema Dental X 60 Ml. Amarillo', 3.30, 'https://corporacionliderperu.com/50781-large_default/kolynos-crema-dental-x-60-ml-amarillo.jpg', 0, 3, 26),
(354, 9, 8, 'Listerine 180 Ml. Control Calculo/Sarro', 9.90, 'https://corporacionliderperu.com/51009-large_default/listerine-180-ml-control-calculo-sarro.jpg', 10, 5, 20),
(355, 9, 2, 'Heno De Pravia Jabon X 150 Gr. Blanco', 5.90, 'https://corporacionliderperu.com/49113-large_default/heno-de-pravia-jabon-x-150-gr-blanco.jpg', 10, 2, 10),
(356, 9, 2, 'Neko Jabon X 75 Gr Aloe Vera', 3.30, 'https://corporacionliderperu.com/40772-large_default/neko-jabon-x-75-gr-aloe-vera.jpg', 0, 3, 24),
(357, 9, 8, 'Listerine X 180 Ml. Zero Anticaries', 10.60, 'https://corporacionliderperu.com/49149-large_default/listerine-x-180-ml-zero-anticaries.jpg', 10, 5, 30),
(358, 9, 2, 'Dento Cepillo Dental Recto Premium Medio', 2.80, 'https://corporacionliderperu.com/50757-large_default/dento-cepillo-dental-recto-premium-medio.jpg', 0, 2, 8),
(359, 9, 2, 'Dento Crema Dental X 80 Ml. Triple Accion', 3.30, 'https://corporacionliderperu.com/49225-large_default/dento-crema-dental-x-80-ml-triple-accion.jpg', 0, 3, 10),
(360, 9, 8, 'Colgate Crema Dental X 75 Ml Triple Accion', 6.30, 'https://corporacionliderperu.com/49247-large_default/colgate-crema-dental-x-75-ml-triple-accion.jpg', 20, 5, 47),
(361, 9, 8, 'Listerine X 180 Ml. Cuidado Total', 10.60, 'https://corporacionliderperu.com/49145-large_default/listerine-x-180-ml-cuidado-total.jpg', 15, 4, 30),
(362, 9, 10, 'Protex Jabon X 110 Gr. Avena', 3.80, 'https://corporacionliderperu.com/49120-large_default/protex-jabon-x-110-gr-avena.jpg', 0, 3, 24),
(363, 9, 10, 'Protex Jabon X 110 Gr. Fresh', 3.80, 'https://corporacionliderperu.com/49118-large_default/protex-jabon-x-110-gr-fresh.jpg', 0, 3, 26),
(364, 9, 2, 'Neko Jabon X 75 Gr Extra Suave', 3.30, 'https://corporacionliderperu.com/49089-large_default/neko-jabon-x-75-gr-extra-suave.jpg', 0, 3, 20),
(365, 9, 10, 'Head & Shoulders Sachet X 10 Ml. Suave Y Manejable 2 En 1', 0.70, 'https://corporacionliderperu.com/49458-large_default/head-shoulders-sachet-x-10-ml-suave-y-manejable-2-en-1.jpg', 0, 5, 60),
(366, 9, 5, 'Kotex Toallas X 8 Un. Nocturna Con Alas', 4.80, 'https://corporacionliderperu.com/39026-large_default/kotex-toallas-x-8-un-nocturna-con-alas.jpg', 0, 4, 25),
(367, 9, 5, 'Kotex Toallas X 10 Un. Discreta Extra Suave', 4.80, 'https://corporacionliderperu.com/50871-large_default/kotex-toallas-x-10-un-discreta-extra-suave.jpg', 0, 4, 20),
(368, 9, 5, 'Nivea Desodorante Roll-On Women X 50 Ml. Pearl & Beauty', 10.60, 'https://corporacionliderperu.com/40778-large_default/nivea-desodorante-roll-on-women-x-50-ml-pearl-beauty.jpg', 0, 3, 29),
(369, 9, 10, 'Dove Acondicionador X 400 Ml. Hidratacion Intensa', 14.80, 'https://corporacionliderperu.com/37323-large_default/dove-acondicionador-x-400-ml-hidratacion-intensa.jpg', 25, 4, 36),
(370, 9, 10, 'Head & Shoulders Shampoo Sachet X 18 Ml Limpieza Renovadora Azul', 1.00, 'https://corporacionliderperu.com/49452-large_default/head-shoulders-shampoo-sachet-x-18-ml-limpieza-renovadora-azul.jpg', 0, 4, 64),
(371, 9, 10, 'Rexona Desodorante Spray Women X 150 Ml. Active Emotion', 11.50, 'https://corporacionliderperu.com/39070-large_default/rexona-desodorante-spray-women-x-150-ml-active-emotion.jpg', 10, 4, 18),
(372, 9, 10, 'Head & Shoulders Sachet X 10 Ml. Limpieza Renovadora', 0.70, 'https://corporacionliderperu.com/49459-large_default/head-shoulders-sachet-x-10-ml-limpieza-renovadora.jpg', 0, 4, 55),
(373, 9, 5, 'Aval Jabon Liquido Fc X 400 Ml Petalos De Rosa', 5.90, 'https://corporacionliderperu.com/49031-large_default/aval-jabon-liquido-fc-x-400-ml-petalos-de-rosa.jpg', 5, 3, 30),
(374, 9, 5, 'Aval Jabon Liquido Tocador Fc X 400 Ml Lavanda', 5.90, 'https://corporacionliderperu.com/49028-large_default/aval-jabon-liquido-tocador-fc-x-400-ml-lavanda.jpg', 5, 3, 20),
(375, 9, 5, 'Aval Jabon Liquido Fc X 400 Ml Limon', 5.90, 'https://corporacionliderperu.com/49029-large_default/aval-jabon-liquido-fc-x-400-ml-limon.jpg', 5, 3, 20),
(376, 9, 5, 'Protex Jabon X 110 Gr. Men Active Sports', 3.80, 'https://corporacionliderperu.com/49122-large_default/protex-jabon-x-110-gr-men-active-sports.jpg', 0, 3, 26),
(377, 9, 2, 'Johnsons Jabon X 110 Gr Remueve Bacterias', 3.90, 'https://corporacionliderperu.com/42035-large_default/johnsons-jabon-x-110-gr-remueve-bacterias.jpg', 0, 3, 24),
(378, 9, 8, 'Colgate Cepillo Dental Extra Clean Duro Pack X 2 Un', 9.60, 'https://corporacionliderperu.com/46153-large_default/colgate-cepillo-dental-extra-clean-duro-pack-x-2-un.jpg', 5, 4, 6),
(379, 9, 10, 'Protex Jabon X 110 Gr. Limpieza Profunda', 3.80, 'https://corporacionliderperu.com/49119-large_default/protex-jabon-x-110-gr-limpieza-profunda.jpg', 0, 3, 26),
(380, 9, 8, 'Colgate Crema Dental X 75 Ml. Sensitive Pro-Alivio', 23.80, 'https://corporacionliderperu.com/47935-large_default/colgate-crema-dental-x-75-ml-sensitive-pro-alivio.jpg', 30, 4, 15),
(381, 9, 2, 'Oral B Cepillo 1.2.3', 3.80, 'https://corporacionliderperu.com/42700-large_default/oral-b-cepillo-1-2-3.jpg', 0, 4, 34),
(382, 9, 8, 'Colgate Cepillo Dental Premier Clean', 2.90, 'https://corporacionliderperu.com/47065-large_default/colgate-cepillo-dental-premier-clean.jpg', 0, 4, 25),
(383, 9, 2, 'Johnsons Jabon X 110 Gr Refrescante Uva Verde', 3.90, 'https://corporacionliderperu.com/49009-large_default/johnsons-jabon-x-110-gr-refrescante-uva-verde.jpg', 0, 3, 15),
(384, 9, 2, 'Aval Jabon Liquido Antibacterial Fc X 400 Ml. Feria De Flores', 6.90, 'https://corporacionliderperu.com/48945-large_default/aval-jabon-liquido-antibacterial-fc-x-400-ml-feria-de-flores.jpg', 0, 4, 19),
(385, 9, 8, 'Colgate Crema Dental X 90 Gr. Luminous White', 14.90, 'https://corporacionliderperu.com/49244-large_default/colgate-crema-dental-x-90-gr-luminous-white.jpg', 10, 4, 30),
(386, 9, 8, 'Colgate Cepillo Dental 360 Pack X 2 Un. Limpieza Completa', 16.80, 'https://corporacionliderperu.com/50301-large_default/colgate-cepillo-dental-360-pack-x-2-un-limpieza-completa.jpg', 20, 5, 24),
(387, 9, 2, 'Oral B Pasta Dental X 70 Gr 3d White', 6.80, 'https://corporacionliderperu.com/47490-large_default/oral-b-pasta-dental-x-70-gr-3d-white.jpg', 5, 4, 18),
(388, 10, 2, 'Ricocat Lata X 330 Gr. Higado Y Pollo', 6.00, 'https://corporacionliderperu.com/42755-large_default/ricocat-lata-x-330-gr-higado-y-pollo.jpg', 0, 5, 10),
(389, 10, 9, 'Ricocan Lata X 330 Gr. Cordero', 5.60, 'https://corporacionliderperu.com/42581-large_default/ricocan-lata-x-330-gr-cordero.jpg', 0, 4, 14),
(390, 10, 5, 'Alimento Seco Para Perro Dog Chow Adultos Minis Y Pequeños 475gr', 9.90, 'https://plazavea.vteximg.com.br/arquivos/ids/26697822-1000-1000/20355845.jpg', 15, 5, 20),
(391, 10, 4, 'Shampoo Ricocan Adultos 4 En 1 Frasco 380m', 16.50, 'https://plazavea.vteximg.com.br/arquivos/ids/347583-1000-1000/20186091.jpg', 5, 4, 8),
(392, 10, 4, 'Ricocat Adulto X 9 Kg. Pollo, Sardina y Salmon', 93.00, 'https://corporacionliderperu.com/41933-large_default/ricocat-adulto-x-9-kg-pollo-sardina-y-salmon.jpg', 0, 3, 12),
(393, 10, 3, 'Cat Chow Gatitos A Granel X 8 Kg', 108.00, 'https://corporacionliderperu.com/42376-large_default/cat-chow-gatitos-a-granel-x-8-kg.jpg', 0, 4, 11),
(394, 10, 4, 'Ricocat Adulto X 9 Kg. Atun,Sardina y Trucha', 93.00, 'https://corporacionliderperu.com/42682-large_default/ricocat-adulto-x-9-kg-atun-sardina-y-trucha.jpg', 0, 5, 14),
(395, 10, 3, 'Friskies Seleccion Especial X 7.5', 98.60, 'https://corporacionliderperu.com/38962-large_default/friskies-seleccion-especial-x-7-5-kg.jpg', 0, 4, 16),
(396, 10, 2, 'Ricocat Adulto X 9Kg. Esterilzado', 93.00, 'https://corporacionliderperu.com/37591-large_default/ricocat-adulto-x-9-kg-esterilizado.jpg', 0, 4, 12),
(397, 10, 3, 'Thor Adulto X 25Kg', 128.00, 'https://corporacionliderperu.com/46586-large_default/thor-adulto-x-25-kg.jpg', 0, 4, 13),
(398, 10, 4, 'Dog Chow Cachorro X 21Kg. Razas Medianas y Grandes', 214.00, 'https://corporacionliderperu.com/46590-large_default/dog-chow-cachorro-x-21-kg-razas-medianas-y-grandes.jpg', 0, 4, 14),
(399, 10, 4, 'Dog Chow Adulto X 21Kg. Razas Medianas y Grandes', 218.00, 'https://corporacionliderperu.com/46592-large_default/dog-chow-adulto-x-21-kg-razas-medianas-y-grandes.jpg', 0, 4, 7),
(400, 10, 4, 'Dog Chow Adulto X 8Kg. Control De Peso', 99.80, 'https://corporacionliderperu.com/43333-large_default/dog-chow-adulto-x-8-kg-control-de-peso.jpg', 0, 4, 15),
(401, 10, 4, 'Ricocan Cachorro X 15Kg.Razas Pequeñas', 123.00, 'https://corporacionliderperu.com/42620-large_default/ricocan-cachorro-x-15-kg-razas-pequenas.jpg', 0, 4, 14),
(402, 10, 4, 'Ricocan Cordero Y Cereales X 15Kg.Razas Medianas Y Grandes', 120.00, 'https://corporacionliderperu.com/41014-large_default/ricocan-cordero-y-cereales-x-15-kg-razas-medianas-y-grandes.jpg', 0, 3, 7),
(403, 10, 3, 'Mimaskot Adulto X 15Kg.Carne', 112.00, 'https://corporacionliderperu.com/40296-large_default/mimaskot-adulto-x-15-kg-carne.jpg', 0, 4, 11),
(404, 11, 7, 'Pegamento Class&Work Kr971296 250g', 2.50, 'https://plazavea.vteximg.com.br/arquivos/ids/24958403-1000-1000/20206154.jpg', 0, 4, 7),
(405, 11, 9, 'Cuaderno Espiral Dgnottas A5 Td Status', 26.90, 'https://plazavea.vteximg.com.br/arquivos/ids/670986-1000-1000/20207391.jpg', 0, 5, 4),
(406, 11, 10, 'Tijera Clásica', 1.90, 'https://plazavea.vteximg.com.br/arquivos/ids/288229-1000-1000/tijera-clasica.jpg', 0, 3, 15),
(407, 11, 7, 'Colores Class&Work Triangulares Caja 15un', 3.50, 'https://plazavea.vteximg.com.br/arquivos/ids/24958384-1000-1000/20182718.jpg', 5, 5, 8),
(408, 11, 2, 'Bolsas Blancas 8 X 12 (100 Un)', 2.50, 'https://corporacionliderperu.com/40811-large_default/bolsas-blancas-8-x-12-100-un.jpg', 0, 4, 14),
(409, 11, 2, 'Bolsas Blancas. 10 X 15 (100 Un)', 3.50, 'https://corporacionliderperu.com/40812-large_default/bolsas-blancas-10-x-15-100-un.jpg', 0, 4, 14),
(410, 11, 7, 'Borrador Blanco Grande Blister 2un', 2.70, 'https://plazavea.vteximg.com.br/arquivos/ids/344677-1000-1000/72834.jpg', 0, 5, 20),
(411, 11, 4, 'Lápices Stabilo Bolsa 2un + Borrador', 3.90, 'https://plazavea.vteximg.com.br/arquivos/ids/292621-1000-1000/lapices-stabilo-bolsa-2un-borrador.jpg', 12, 4, 15),
(412, 11, 8, 'Tajador Doble Con Depósito Cuadrado', 2.40, 'https://plazavea.vteximg.com.br/arquivos/ids/344682-1000-1000/923929.jpg', 0, 5, 14),
(413, 11, 7, 'Tajador Class&Work Kr970530 Paquete 3un', 1.10, 'https://plazavea.vteximg.com.br/arquivos/ids/13506017-1000-1000/20206175.jpg', 20, 3, 15),
(414, 11, 1, 'Tajador Doble Vinifan Con Tachito', 2.00, 'https://plazavea.vteximg.com.br/arquivos/ids/287893-1000-1000/tajador-doble-vinifan-con-tachito.jpg', 0, 4, 20),
(415, 11, 7, 'Portamina Class&Work 0.5mm', 3.50, 'https://plazavea.vteximg.com.br/arquivos/ids/28639659-1000-1000/20361519.jpg', 20, 5, 8),
(416, 11, 7, 'Lápiz Class&Work Caja 12un', 2.50, 'https://plazavea.vteximg.com.br/arquivos/ids/5709294-1000-1000/20182783.jpg', 20, 4, 5),
(417, 11, 1, 'Lápices Artesco Chequeo Triangular Caja 12un', 7.00, 'https://plazavea.vteximg.com.br/arquivos/ids/1256241-1000-1000/123567.jpg', 0, 5, 7),
(418, 11, 1, 'Bolígrafo Artesco Retro Ball - M Blister 2un', 3.10, 'https://plazavea.vteximg.com.br/arquivos/ids/1256310-1000-1000/20118169.jpg', 0, 4, 10),
(419, 11, 1, 'Bolígrafo Artesco Retro Ball-M Negro Blíster 1un', 1.80, 'https://plazavea.vteximg.com.br/arquivos/ids/1256309-1000-1000/20118146.jpg', 0, 4, 15),
(420, 11, 10, 'Lapiceros Faber Castell Trilux 032 Colores Paquete 5un', 4.50, 'https://plazavea.vteximg.com.br/arquivos/ids/647510-1000-1000/20047308.jpg', 0, 3, 4),
(421, 11, 7, 'Regla Artesco Cristal 30cm', 1.00, 'https://plazavea.vteximg.com.br/arquivos/ids/25334487-1000-1000/998262.jpg', 0, 5, 24),
(422, 11, 1, 'Pegamento Vinifan Silicona Líquida 100ml', 4.30, 'https://plazavea.vteximg.com.br/arquivos/ids/25298252-1000-1000/20072495.jpg', 0, 4, 10),
(423, 11, 1, 'Pegamento En Barra Arti Creativo 25g', 3.40, 'https://plazavea.vteximg.com.br/arquivos/ids/1265032-1000-1000/118192.jpgg', 14, 5, 15),
(424, 11, 7, 'Pegamento Uhu Pegalotodo Tubo 60ml', 11.90, 'https://plazavea.vteximg.com.br/arquivos/ids/186435-1000-1000/uhu-pegalotodo-13-t-60ml-un1un.jpg', 20, 5, 8),
(425, 12, 4, 'Balanzé Curitas Caja 100un', 4.90, 'https://plazavea.vteximg.com.br/arquivos/ids/27186789-1000-1000/20100025.jpg', 10, 4, 20),
(426, 12, 9, 'Alcohol Medicinal 100X 70° Frasco 1L', 12.20, 'https://plazavea.vteximg.com.br/arquivos/ids/519849-1000-1000/20206139.jpg', 15, 5, 13),
(427, 12, 5, 'Algodon Ckf X 25 Gr.', 1.60, 'https://corporacionliderperu.com/40713-large_default/algodon-ckf-x-25-gr.jpg', 0, 5, 25),
(428, 12, 3, 'Mascarillas Descartables Celeste X 50 Un', 7.80, 'https://corporacionliderperu.com/50752-large_default/mascarillas-descartables-celeste-x-50-un.jpg', 10, 4, 16),
(429, 12, 4, 'Repelente De Insectos En Spray Floresta Extremo Frasco 120ml', 17.90, 'https://plazavea.vteximg.com.br/arquivos/ids/23922233-1000-1000/20326424.jpg', 20, 4, 15),
(430, 13, 4, 'Casino Galletas X 258gr Six Pack Vainilla', 5.40, 'https://corporacionliderperu.com/49924-large_default/casino-galletas-x-258gr-six-pack-vainilla.jpg', 5, 4, 20),
(431, 13, 9, 'Charada Galletas X 226.8 Gr. Six Pack Clasica', 5.40, 'https://corporacionliderperu.com/47844-large_default/charada-galletas-x-226-8-gr-six-pack-clasica.jpg', 10, 4, 16),
(432, 13, 5, 'Chips Ahoy Galletas Six Pack X 222 Gr.', 6.80, 'https://corporacionliderperu.com/48462-large_default/chips-ahoy-galletas-six-pack-x-222-gr.jpg', 5, 5, 25),
(433, 13, 3, 'Costa Chocman Six Pack X 168 Gr.', 4.30, 'https://corporacionliderperu.com/51036-large_default/costa-chocman-six-pack-x-168-gr.jpg', 10, 4, 18),
(434, 13, 4, 'Chocosoda Galletas X 216 Gr. Six Pack', 6.90, 'https://corporacionliderperu.com/50239-large_default/chocosoda-galletas-x-216-gr-six-pack.jpg', 20, 4, 15),
(435, 13, 10, 'Glacitas Galletas X 192 Gr. Six Pack Fresa', 5.20, 'https://corporacionliderperu.com/47184-large_default/glacitas-galletas-x-192-gr-six-pack-fresa.jpg', 10, 4, 18),
(436, 13, 4, 'Nik Wafers X 162 Gr Six Pack Vainilla', 3.80, 'https://corporacionliderperu.com/40389-large_default/nik-wafers-x-162-gr-six-pack-vainilla.jpg', 15, 5, 20),
(437, 13, 10, 'Oreo Galletas X 216 Gr Six Pack Original', 4.90, 'https://corporacionliderperu.com/50242-large_default/oreo-galletas-x-216-gr-six-pack-original.jpg', 20, 5, 24),
(438, 13, 10, 'Tentacion Galletas X 258 Gr. Six Pack Naranja', 5.60, 'https://corporacionliderperu.com/40400-large_default/tentacion-galletas-x-258-gr-six-pack-naranja.jpg', 25, 5, 16),
(439, 13, 10, 'Morochas Snack X 42 Gr.', 1.00, 'https://corporacionliderperu.com/36243-large_default/morochas-snack-x-42-gr.jpg', 0, 4, 30),
(440, 13, 7, 'Pringles Papitas Lata X 37Gr Original', 4.00, 'https://corporacionliderperu.com/40394-large_default/pringles-papitas-lata-x-37-gr-original.jpg', 0, 4, 22),
(441, 13, 9, 'Granuts Arandano X 180Gr', 10.80, 'https://corporacionliderperu.com/48062-large_default/granuts-arandano-x-180-gr.jpg', 0, 4, 15),
(442, 13, 9, 'Granuts Mezcla De Nueces X 160Gr', 10.90, 'https://corporacionliderperu.com/50974-large_default/granuts-mezcla-de-nueces-x-160-gr.jpg', 0, 4, 14),
(443, 13, 7, 'Prigles Papitas Lata X 124Gr. Original', 9.50, 'https://corporacionliderperu.com/42023-large_default/pringles-papitas-lata-x-124-gr-original.jpg', 0, 4, 14),
(444, 13, 7, 'Papas Al Hilo A Granel X 250Gr', 6.50, 'https://corporacionliderperu.com/49789-large_default/papas-al-hilo-a-granel-x-250-gr.jpg', 0, 3, 21),
(445, 13, 10, 'Nik Wafers X 162 Gr Six Pack Fresa', 3.80, 'https://corporacionliderperu.com/41813-large_default/nik-wafers-x-162-gr-six-pack-fresa.jpg', 0, 4, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idproveedor` int(11) NOT NULL,
  `nombreprov` varchar(50) DEFAULT NULL,
  `direccionprov` varchar(60) DEFAULT NULL,
  `telefonoprov` int(11) DEFAULT NULL,
  `emailprov` varchar(80) DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idproveedor`, `nombreprov`, `direccionprov`, `telefonoprov`, `emailprov`) VALUES
(1, 'Abarrotes San Jorge', 'Av. Perú 1234, Lima', 912345678, 'contacto@sanjorge.com'),
(2, 'Distribuidora Andina', 'Jr. Los Andes 5678, Cusco', 923456789, 'info@andina.com'),
(3, 'Productos del Norte', 'Calle Comercio 2345, Trujillo', 934567890, 'ventas@norte.com'),
(4, 'Central de Abarrotes', 'Av. Central 3456, Arequipa', 945678901, 'contacto@central.com'),
(5, 'Abarrotes del Valle', 'Av. Valle 5678, Chiclayo', 967890123, 'ventas@valle.com'),
(6, 'Alicorp', 'Av. Nicolás Ayllón 4986, Lima', 981234567, 'contacto@alicorp.com'),
(7, 'Proveedores del Centro', 'Calle Centro 6789, Huancayo', 978901234, 'contacto@centro.com'),
(8, 'Distribuciones del Sur', 'Av. Sur 7890, Ica', 989012345, 'info@surdist.com'),
(9, 'Abarrotes y Más', 'Jr. Más 8901, Piura', 900123456, 'ventas@abymas.com'),
(10, 'Productos Selectos', 'Av. Selecta 9012, Puno', 901234567, 'contacto@selectos.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `idsolicitud` int(11) NOT NULL,
  `idcliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`idsolicitud`, `idcliente`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `detallespedido`
--
ALTER TABLE `detallespedido`
  ADD KEY `idpedido` (`idpedido`),
  ADD KEY `idproducto` (`idproducto`);

--
-- Indices de la tabla `detallessolicitud`
--
ALTER TABLE `detallessolicitud`
  ADD KEY `idsolicitud` (`idsolicitud`),
  ADD KEY `idproducto` (`idproducto`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `idcliente` (`idcliente`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `idcategoria` (`idcategoria`),
  ADD KEY `idproveedor` (`idproveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idproveedor`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`idsolicitud`),
  ADD KEY `idcliente` (`idcliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `idsolicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallespedido`
--
ALTER TABLE `detallespedido`
  ADD CONSTRAINT `detallespedido_ibfk_1` FOREIGN KEY (`idpedido`) REFERENCES `pedido` (`idpedido`),
  ADD CONSTRAINT `detallespedido_ibfk_2` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`);

--
-- Filtros para la tabla `detallessolicitud`
--
ALTER TABLE `detallessolicitud`
  ADD CONSTRAINT `detallessolicitud_ibfk_1` FOREIGN KEY (`idsolicitud`) REFERENCES `solicitud` (`idsolicitud`),
  ADD CONSTRAINT `detallessolicitud_ibfk_2` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`idproveedor`) REFERENCES `proveedor` (`idproveedor`);

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
