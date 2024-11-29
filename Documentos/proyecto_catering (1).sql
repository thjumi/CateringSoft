-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2024 a las 14:42:58
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
-- Base de datos: `proyecto_catering`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_administrador` int(11) NOT NULL,
  `password` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_administrador`, `password`) VALUES
(1, 'password1234567'),
(2, 'securepassword9'),
(3, 'adminpass2024se'),
(4, 'mypassword09876'),
(5, 'adminpassword00'),
(6, 'strongpass2024!'),
(7, 'adminpass123456'),
(8, 'admin@2024secur'),
(9, 'superadminpass9'),
(10, 'mysecurepass123'),
(11, 'admin2024passw0'),
(12, 'strongpassworda'),
(13, 'secure1234567pa'),
(14, 'password4admins'),
(15, 'secureadminpass');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `nombre_ciudad` varchar(50) NOT NULL,
  `estado_ciudad` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `nombre_ciudad`, `estado_ciudad`) VALUES
(1, 'Bogotá', 1),
(2, 'Medellín', 0),
(3, 'Cali', 0),
(4, 'Barranquilla', 0),
(5, 'Cartagena', 0),
(6, 'Manizales', 0),
(7, 'Bucaramanga', 0),
(8, 'Pereira', 0),
(9, 'Ibagué', 0),
(10, 'Santa Marta', 0),
(11, 'Cúcuta', 0),
(12, 'Soacha', 0),
(13, 'Villavicencio', 0),
(14, 'Armenia', 1),
(15, 'Neiva', 0),
(16, 'Tunja', 0),
(17, 'Montería', 0),
(18, 'Riohacha', 0),
(19, 'Quibdó', 0),
(20, 'Pasto', 0),
(21, 'Sincelejo', 0),
(22, 'Popayán', 0),
(23, 'Leticia', 0),
(24, 'Valledupar', 1),
(25, 'Florencia', 0),
(26, 'San Andrés', 0),
(27, 'Yopal', 0),
(28, 'Mitú', 0),
(29, 'Mocoa', 0),
(30, 'Puerto Carreño', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `id_rol_empleado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `id_rol_empleado`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `nit_empresa` int(11) NOT NULL,
  `nom_empresa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`nit_empresa`, `nom_empresa`) VALUES
(10000001, 'Catering Delicias Gourmet'),
(10000002, 'Mobiliario Elite'),
(10000003, 'Sabor y Estilo Catering'),
(10000004, 'Mobiliario Creativo'),
(10000005, 'Banquete y Diseño'),
(10000006, 'Estilo & Sabor Catering'),
(10000007, 'Catering La Mesa Perfecta'),
(10000008, 'Mobiliario Moderno'),
(10000009, 'El Banquete Ideal'),
(10000010, 'Diseños y Banquetes'),
(10000011, 'Mobiliario Armonía'),
(10000012, 'Catering Estrella'),
(10000013, 'Vanguardia Mobiliaria'),
(10000014, 'Sabor y Elegancia'),
(10000015, 'Eventos y Mobiliario'),
(10000016, 'Catering Exquisito'),
(10000017, 'Mobiliario Concepto'),
(10000018, 'El Arte del Banquete'),
(10000019, 'Mobiliario Elegante'),
(10000020, 'Catering y Estilo'),
(10000021, 'Mobiliario Único'),
(10000022, 'Catering Sin Igual'),
(10000023, 'Mobiliario Luxe'),
(10000024, 'Banquetes y Decoración'),
(10000025, 'Mobiliario Vanguardista'),
(10000026, 'Catering Los Sabores'),
(10000027, 'Diseños y Mobiliario'),
(10000028, 'Catering y Ambiente'),
(10000029, 'Mobiliario Zen'),
(10000030, 'Banquete Majestuoso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_evento` int(11) NOT NULL,
  `id_tipo_evento` int(11) DEFAULT NULL,
  `horario_inicio` time DEFAULT NULL,
  `horario_final` time DEFAULT NULL,
  `presupuesto` decimal(10,2) DEFAULT NULL,
  `num_invitados` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id_evento`, `id_tipo_evento`, `horario_inicio`, `horario_final`, `presupuesto`, `num_invitados`, `id_cliente`) VALUES
(1000, 1, '18:00:00', '23:00:00', 500000.00, 50, 1),
(1001, 2, '19:00:00', '22:00:00', 1000000.00, 100, 2),
(1002, 3, '20:00:00', '23:00:00', 1500000.00, 120, 3),
(1003, 4, '18:30:00', '22:30:00', 2000000.00, 150, 4),
(1004, 5, '21:00:00', '23:30:00', 2500000.00, 80, 5),
(1005, 1, '18:00:00', '23:00:00', 550000.00, 60, 6),
(1006, 2, '19:00:00', '22:00:00', 1100000.00, 110, 7),
(1007, 3, '20:00:00', '23:00:00', 1600000.00, 130, 8),
(1008, 4, '18:30:00', '22:30:00', 2100000.00, 160, 9),
(1009, 5, '21:00:00', '23:30:00', 2600000.00, 90, 10),
(1010, 1, '18:00:00', '23:00:00', 600000.00, 70, 11),
(1011, 2, '19:00:00', '22:00:00', 1200000.00, 120, 12),
(1012, 3, '20:00:00', '23:00:00', 1700000.00, 140, 13),
(1013, 4, '18:30:00', '22:30:00', 2200000.00, 170, 14),
(1014, 5, '21:00:00', '23:30:00', 2700000.00, 100, 15),
(1015, 1, '18:00:00', '23:00:00', 650000.00, 80, 16),
(1016, 2, '19:00:00', '22:00:00', 1300000.00, 130, 17),
(1017, 3, '20:00:00', '23:00:00', 1800000.00, 150, 18),
(1018, 4, '18:30:00', '22:30:00', 2300000.00, 180, 19),
(1019, 5, '21:00:00', '23:30:00', 2800000.00, 110, 20),
(1020, 1, '18:00:00', '23:00:00', 700000.00, 90, 21),
(1021, 2, '19:00:00', '22:00:00', 1400000.00, 140, 22),
(1022, 3, '20:00:00', '23:00:00', 1900000.00, 160, 23),
(1023, 4, '18:30:00', '22:30:00', 2400000.00, 190, 24),
(1024, 5, '21:00:00', '23:30:00', 2900000.00, 120, 25),
(1025, 1, '18:00:00', '23:00:00', 750000.00, 100, 26),
(1026, 2, '19:00:00', '22:00:00', 1500000.00, 150, 27),
(1027, 3, '20:00:00', '23:00:00', 2000000.00, 170, 28),
(1028, 4, '18:30:00', '22:30:00', 2500000.00, 200, 29),
(1029, 5, '21:00:00', '23:30:00', 3000000.00, 130, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos_empleados`
--

CREATE TABLE `eventos_empleados` (
  `id_evento` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos_empleados`
--

INSERT INTO `eventos_empleados` (`id_evento`, `id_empleado`) VALUES
(1000, 1),
(1001, 2),
(1002, 3),
(1003, 4),
(1004, 5),
(1005, 6),
(1006, 7),
(1007, 8),
(1008, 9),
(1009, 10),
(1010, 11),
(1011, 12),
(1012, 13),
(1013, 14),
(1014, 15),
(1015, 16),
(1016, 17),
(1017, 18),
(1018, 19),
(1019, 20),
(1020, 21),
(1021, 22),
(1022, 23),
(1023, 24),
(1024, 25),
(1025, 26),
(1026, 27),
(1027, 28),
(1028, 29),
(1029, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion`
--

CREATE TABLE `facturacion` (
  `id_factura` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total` decimal(18,2) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `id_evento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facturacion`
--

INSERT INTO `facturacion` (`id_factura`, `fecha`, `total`, `estado`, `id_evento`) VALUES
(1, '2024-01-01', 500000.00, 0, 1000),
(2, '2024-01-02', 850000.00, 0, 1001),
(3, '2024-01-03', 1200000.00, 0, 1002),
(4, '2024-01-04', 450000.00, 0, 1003),
(5, '2024-01-05', 750000.00, 0, 1004),
(6, '2024-01-06', 980000.00, 0, 1005),
(7, '2024-01-07', 1250000.00, 0, 1006),
(8, '2024-01-08', 620000.00, 0, 1007),
(9, '2024-01-09', 890000.00, 0, 1008),
(10, '2024-01-10', 350000.00, 0, 1009),
(11, '2024-01-11', 780000.00, 0, 1010),
(12, '2024-01-12', 1020000.00, 0, 1011),
(13, '2024-01-13', 670000.00, 0, 1012),
(14, '2024-01-14', 490000.00, 0, 1013),
(15, '2024-01-15', 950000.00, 0, 1014),
(16, '2024-01-16', 1120000.00, 0, 1015),
(17, '2024-01-17', 450000.00, 0, 1016),
(18, '2024-01-18', 720000.00, 0, 1017),
(19, '2024-01-19', 870000.00, 0, 1018),
(20, '2024-01-20', 300000.00, 0, 1019),
(21, '2024-01-21', 1050000.00, 0, 1020),
(22, '2024-01-22', 930000.00, 0, 1021),
(23, '2024-01-23', 680000.00, 0, 1022),
(24, '2024-01-24', 400000.00, 0, 1023),
(25, '2024-01-25', 840000.00, 0, 1024),
(26, '2024-01-26', 1080000.00, 0, 1025),
(27, '2024-01-27', 750000.00, 0, 1026),
(28, '2024-01-28', 460000.00, 0, 1027),
(29, '2024-01-29', 920000.00, 0, 1028),
(30, '2024-01-30', 1200000.00, 0, 1029);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion_medios_pago`
--

CREATE TABLE `facturacion_medios_pago` (
  `id_factura` int(11) NOT NULL,
  `id_medio_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facturacion_medios_pago`
--

INSERT INTO `facturacion_medios_pago` (`id_factura`, `id_medio_pago`) VALUES
(1, 5),
(2, 10),
(3, 3),
(4, 20),
(5, 1),
(6, 9),
(7, 11),
(8, 16),
(9, 21),
(10, 10),
(11, 7),
(11, 11),
(12, 1),
(13, 17),
(14, 5),
(15, 15),
(16, 8),
(17, 13),
(17, 17),
(17, 20),
(18, 8),
(19, 8),
(20, 4),
(21, 21),
(22, 22),
(23, 18),
(24, 2),
(25, 11),
(26, 16),
(27, 6),
(28, 9),
(29, 22),
(30, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(50) DEFAULT NULL,
  `ubicacion` varchar(50) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `cantidad_max` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_producto`, `nombre_producto`, `ubicacion`, `cantidad`, `cantidad_max`, `id_proveedor`) VALUES
(61, 'Vajilla Plateada', 'Almacén 1', 50, 100, 1),
(62, 'Copa de Cristal', 'Almacén 2', 60, 120, 2),
(63, 'Cucharas de Plata', 'Almacén 3', 75, 150, 3),
(64, 'Platos de Cerámica', 'Almacén 4', 80, 160, 4),
(65, 'Servilletas de Tela', 'Almacén 5', 90, 180, 5),
(66, 'Copas de Vino', 'Almacén 6', 100, 200, 6),
(67, 'Manteles de Algodón', 'Almacén 7', 110, 220, 7),
(68, 'Tazas de Té', 'Almacén 8', 120, 240, 8),
(69, 'Cucharas de Plata', 'Almacén 9', 130, 260, 9),
(70, 'Vasos de Cristal', 'Almacén 10', 140, 280, 10),
(71, 'Platos de Bambú', 'Almacén 11', 150, 300, 11),
(72, 'Tazas de Cerámica', 'Almacén 12', 160, 320, 12),
(73, 'Cubiertos de Acero', 'Almacén 13', 170, 340, 13),
(74, 'Platos de Vidrio', 'Almacén 14', 180, 360, 14),
(75, 'Vajilla de Porcelana', 'Almacén 15', 190, 380, 15),
(76, 'Copas de Champagne', 'Almacén 16', 200, 400, 16),
(77, 'Tazas de Té', 'Almacén 17', 210, 420, 17),
(78, 'Platos de Acero', 'Almacén 18', 220, 440, 18),
(79, 'Servilletas de Algodón', 'Almacén 19', 230, 460, 19),
(80, 'Vasos de Vidrio', 'Almacén 20', 240, 480, 20),
(81, 'Cubiertos de Madera', 'Almacén 21', 250, 500, 21),
(82, 'Copas de Vino', 'Almacén 22', 260, 520, 22),
(83, 'Tazas de Té', 'Almacén 23', 270, 540, 23),
(84, 'Cucharas de Cristal', 'Almacén 24', 280, 560, 24),
(85, 'Platos de Mármol', 'Almacén 25', 290, 580, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_eventos`
--

CREATE TABLE `inventario_eventos` (
  `id_producto` int(11) NOT NULL,
  `id_evento` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario_eventos`
--

INSERT INTO `inventario_eventos` (`id_producto`, `id_evento`, `cantidad`) VALUES
(61, 1000, 20),
(62, 1001, 15),
(63, 1002, 30),
(64, 1003, 25),
(65, 1004, 10),
(66, 1005, 12),
(67, 1006, 18),
(68, 1007, 22),
(69, 1008, 35),
(70, 1009, 40),
(71, 1010, 28),
(72, 1011, 33),
(73, 1012, 26),
(74, 1013, 19),
(75, 1014, 50),
(76, 1015, 45),
(77, 1016, 14),
(78, 1017, 38),
(79, 1018, 31),
(80, 1019, 27),
(81, 1020, 17),
(82, 1021, 21),
(83, 1022, 13),
(84, 1023, 29),
(85, 1024, 37);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medios_pago`
--

CREATE TABLE `medios_pago` (
  `id_medio_pago` int(11) NOT NULL,
  `n_medio_pago` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medios_pago`
--

INSERT INTO `medios_pago` (`id_medio_pago`, `n_medio_pago`) VALUES
(1, 'Efectivo'),
(2, 'Tarjeta de Crédito'),
(3, 'Tarjeta de Débito'),
(4, 'Transferencia Bancar'),
(5, 'PayPal'),
(6, 'Pago PSE'),
(7, 'Criptomoneda'),
(8, 'Cheque'),
(9, 'Consignación Bancari'),
(10, 'Pago Contra Entrega'),
(11, 'Nequi'),
(12, 'Daviplata'),
(13, 'Mercado Pago'),
(14, 'Efecty'),
(15, 'Baloto'),
(16, 'Western Union'),
(17, 'Giro Postal'),
(18, 'Pago por Aplicación'),
(19, 'Pago por Código QR'),
(20, 'Apple Pay'),
(21, 'Google Pay'),
(22, 'Samsung Pay'),
(23, 'Zelle'),
(24, 'Pagos en Línea'),
(25, 'Cartera Virtual'),
(26, 'Débito Automático'),
(27, 'Pago Diferido'),
(28, 'Stripe'),
(29, 'Square'),
(30, 'Pagos Internacionale');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `fecha_registro` date NOT NULL,
  `id_ciudad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `nombre`, `apellido`, `correo`, `telefono`, `direccion`, `fecha_registro`, `id_ciudad`) VALUES
(1, 'Juan', 'Pérez', 'juan.perez@mail.com', '3121234567', 'Calle 1', '2024-01-01', 1),
(2, 'Ana', 'López', 'ana.lopez@mail.com', '3111234568', 'Carrera 2', '2024-01-02', 2),
(3, 'Carlos', 'Gómez', 'carlos.gomez@mail.com', '3101234569', 'Avenida 3', '2024-01-03', 3),
(4, 'Laura', 'Rodríguez', 'laura.rodriguez@mail.com', '3141234570', 'Calle 4', '2024-01-04', 4),
(5, 'Pedro', 'Martínez', 'pedro.martinez@mail.com', '3131234571', 'Carrera 5', '2024-01-05', 5),
(6, 'Sofía', 'Hernández', 'sofia.hernandez@mail.com', '3151234572', 'Avenida 6', '2024-01-06', 6),
(7, 'Miguel', 'Díaz', 'miguel.diaz@mail.com', '3121234573', 'Calle 7', '2024-01-07', 7),
(8, 'Isabel', 'Fernández', 'isabel.fernandez@mail.com', '3111234574', 'Carrera 8', '2024-01-08', 8),
(9, 'Raúl', 'García', 'raul.garcia@mail.com', '3101234575', 'Avenida 9', '2024-01-09', 9),
(10, 'Patricia', 'Sánchez', 'patricia.sanchez@mail.com', '3141234576', 'Calle 10', '2024-01-10', 10),
(11, 'José', 'Vásquez', 'jose.vasquez@mail.com', '3131234577', 'Carrera 11', '2024-01-11', 11),
(12, 'Verónica', 'Jiménez', 'veronica.jimenez@mail.com', '3151234578', 'Avenida 12', '2024-01-12', 12),
(13, 'David', 'Ramírez', 'david.ramirez@mail.com', '3121234579', 'Calle 13', '2024-01-13', 13),
(14, 'Carmen', 'Mendoza', 'carmen.mendoza@mail.com', '3111234580', 'Carrera 14', '2024-01-14', 14),
(15, 'Francisco', 'Vega', 'francisco.vega@mail.com', '3101234581', 'Avenida 15', '2024-01-15', 15),
(16, 'Mónica', 'Paredes', 'monica.paredes@mail.com', '3141234582', 'Calle 16', '2024-01-16', 16),
(17, 'Eduardo', 'Castro', 'eduardo.castro@mail.com', '3131234583', 'Carrera 17', '2024-01-17', 17),
(18, 'Elena', 'Ramírez', 'elena.ramirez@mail.com', '3151234584', 'Avenida 18', '2024-01-18', 18),
(19, 'Ricardo', 'Torres', 'ricardo.torres@mail.com', '3121234585', 'Calle 19', '2024-01-19', 19),
(20, 'Lucía', 'Gómez', 'lucia.gomez@mail.com', '3111234586', 'Carrera 20', '2024-01-20', 20),
(21, 'Antonio', 'López', 'antonio.lopez@mail.com', '3101234587', 'Avenida 21', '2024-01-21', 21),
(22, 'María', 'Ruiz', 'maria.ruiz@mail.com', '3141234588', 'Calle 22', '2024-01-22', 22),
(23, 'Fernando', 'Díaz', 'fernando.diaz@mail.com', '3131234589', 'Carrera 23', '2024-01-23', 23),
(24, 'Paula', 'Serrano', 'paula.serrano@mail.com', '3151234590', 'Avenida 24', '2024-01-24', 24),
(25, 'Juan Carlos', 'Ríos', 'juancarlos.rios@mail.com', '3121234591', 'Calle 25', '2024-01-25', 25),
(26, 'Raquel', 'Gutiérrez', 'raquel.gutierrez@mail.com', '3111234592', 'Carrera 26', '2024-01-26', 26),
(27, 'Javier', 'Cruz', 'javier.cruz@mail.com', '3101234593', 'Avenida 27', '2024-01-27', 27),
(28, 'Marcos', 'Morales', 'marcos.morales@mail.com', '3141234594', 'Calle 28', '2024-01-28', 28),
(29, 'Ana María', 'Soto', 'anamaria.soto@mail.com', '3131234595', 'Carrera 29', '2024-01-29', 29),
(30, 'Luis', 'Martínez', 'luis.martinez@mail.com', '3001234570', 'Calle 4', '2024-01-30', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nit_empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nit_empresa`) VALUES
(1, 10000001),
(2, 10000002),
(3, 10000003),
(4, 10000004),
(5, 10000005),
(6, 10000006),
(7, 10000007),
(8, 10000008),
(9, 10000009),
(10, 10000010),
(11, 10000011),
(12, 10000012),
(13, 10000013),
(14, 10000014),
(15, 10000015),
(16, 10000016),
(17, 10000017),
(18, 10000018),
(19, 10000019),
(20, 10000020),
(21, 10000021),
(22, 10000022),
(23, 10000023),
(24, 10000024),
(25, 10000025);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_empleado`
--

CREATE TABLE `rol_empleado` (
  `id_rol_emple` int(11) NOT NULL,
  `rol_emple` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol_empleado`
--

INSERT INTO `rol_empleado` (`id_rol_emple`, `rol_emple`) VALUES
(1, 'Gerente'),
(2, 'Cocinero'),
(3, 'Mesero'),
(4, 'Bartender'),
(5, 'Recepcionista'),
(6, 'Jefe de cocina'),
(7, 'Administrador'),
(8, 'Chef'),
(9, 'Supervisor'),
(10, 'Ayudante de cocina'),
(11, 'Auxiliar de servicio'),
(12, 'Vendedor'),
(13, 'Cajero'),
(14, 'Coordinador de eventos'),
(15, 'Seguridad'),
(16, 'Limpiador'),
(17, 'Asistente administrativo'),
(18, 'Técnico de sonido'),
(19, 'Gerente'),
(20, 'Cocinero'),
(21, 'Mesero'),
(22, 'Bartender'),
(23, 'Recepcionista'),
(24, 'Jefe de cocina'),
(25, 'Administrador'),
(26, 'Chef'),
(27, 'Supervisor'),
(28, 'Ayudante de cocina'),
(29, 'Auxiliar de servicio'),
(30, 'Vendedor'),
(31, 'Cajero'),
(32, 'Coordinador de eventos'),
(33, 'Seguridad'),
(34, 'Limpiador'),
(35, 'Asistente administrativo'),
(36, 'Técnico de sonido'),
(37, 'Fotógrafo'),
(38, 'Decorador'),
(39, 'Transportista'),
(40, 'Conductor'),
(41, 'Maitre'),
(42, 'Especialista en marketing'),
(43, 'Contador'),
(44, 'Asesor de ventas'),
(45, 'Recepcionista de eventos'),
(46, 'Coordinador logístico'),
(47, 'Coordinador de personal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_evento`
--

CREATE TABLE `tipo_evento` (
  `id_tipo_evento` int(11) NOT NULL,
  `tipo_evento` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_evento`
--

INSERT INTO `tipo_evento` (`id_tipo_evento`, `tipo_evento`) VALUES
(1, 'Boda'),
(2, 'Cumpleaños'),
(3, 'Fiesta de Empresa'),
(4, 'Conferencia'),
(5, 'Evento Corporativo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `id_rol_empleado` (`id_rol_empleado`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`nit_empresa`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `id_tipo_evento` (`id_tipo_evento`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `eventos_empleados`
--
ALTER TABLE `eventos_empleados`
  ADD PRIMARY KEY (`id_evento`,`id_empleado`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `id_evento` (`id_evento`);

--
-- Indices de la tabla `facturacion_medios_pago`
--
ALTER TABLE `facturacion_medios_pago`
  ADD PRIMARY KEY (`id_factura`,`id_medio_pago`),
  ADD KEY `id_medio_pago` (`id_medio_pago`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `inventario_eventos`
--
ALTER TABLE `inventario_eventos`
  ADD PRIMARY KEY (`id_producto`,`id_evento`),
  ADD KEY `id_evento` (`id_evento`);

--
-- Indices de la tabla `medios_pago`
--
ALTER TABLE `medios_pago`
  ADD PRIMARY KEY (`id_medio_pago`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`),
  ADD KEY `id_ciudad` (`id_ciudad`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`),
  ADD KEY `nit_empresa` (`nit_empresa`);

--
-- Indices de la tabla `rol_empleado`
--
ALTER TABLE `rol_empleado`
  ADD PRIMARY KEY (`id_rol_emple`);

--
-- Indices de la tabla `tipo_evento`
--
ALTER TABLE `tipo_evento`
  ADD PRIMARY KEY (`id_tipo_evento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1030;

--
-- AUTO_INCREMENT de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `medios_pago`
--
ALTER TABLE `medios_pago`
  MODIFY `id_medio_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `rol_empleado`
--
ALTER TABLE `rol_empleado`
  MODIFY `id_rol_emple` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `tipo_evento`
--
ALTER TABLE `tipo_evento`
  MODIFY `id_tipo_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`id_administrador`) REFERENCES `persona` (`id_persona`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `persona` (`id_persona`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `persona` (`id_persona`),
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`id_rol_empleado`) REFERENCES `rol_empleado` (`id_rol_emple`);

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`id_tipo_evento`) REFERENCES `tipo_evento` (`id_tipo_evento`),
  ADD CONSTRAINT `eventos_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `eventos_empleados`
--
ALTER TABLE `eventos_empleados`
  ADD CONSTRAINT `eventos_empleados_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id_evento`),
  ADD CONSTRAINT `eventos_empleados_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD CONSTRAINT `facturacion_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id_evento`);

--
-- Filtros para la tabla `facturacion_medios_pago`
--
ALTER TABLE `facturacion_medios_pago`
  ADD CONSTRAINT `facturacion_medios_pago_ibfk_1` FOREIGN KEY (`id_factura`) REFERENCES `facturacion` (`id_factura`),
  ADD CONSTRAINT `facturacion_medios_pago_ibfk_2` FOREIGN KEY (`id_medio_pago`) REFERENCES `medios_pago` (`id_medio_pago`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `inventario_eventos`
--
ALTER TABLE `inventario_eventos`
  ADD CONSTRAINT `inventario_eventos_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `inventario` (`id_producto`),
  ADD CONSTRAINT `inventario_eventos_ibfk_2` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id_evento`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`);

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `persona` (`id_persona`),
  ADD CONSTRAINT `proveedor_ibfk_2` FOREIGN KEY (`nit_empresa`) REFERENCES `empresa` (`nit_empresa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
