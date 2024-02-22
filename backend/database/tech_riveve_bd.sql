-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2024 a las 20:37:28
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
-- Base de datos: `tech_riveve_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'computers', NULL, NULL),
(2, 'phones', NULL, NULL),
(3, 'TV', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `locations`
--

INSERT INTO `locations` (`id`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Alava', NULL, NULL),
(2, 'Albacete', NULL, NULL),
(3, 'Alicante', NULL, NULL),
(4, 'Almeria', NULL, NULL),
(5, 'Asturias', NULL, NULL),
(6, 'Avila', NULL, NULL),
(7, 'Badajoz', NULL, NULL),
(8, 'Barcelona', NULL, NULL),
(9, 'Burgos', NULL, NULL),
(10, 'Caceres', NULL, NULL),
(11, 'Cadiz', NULL, NULL),
(12, 'Cantabria', NULL, NULL),
(13, 'Castellon', NULL, NULL),
(14, 'Ciudad Real', NULL, NULL),
(15, 'Cordoba', NULL, NULL),
(16, 'Cuenca', NULL, NULL),
(17, 'Gerona (Girona)', NULL, NULL),
(18, 'Granada', NULL, NULL),
(19, 'Guadalajara', NULL, NULL),
(20, 'Guipuzcoa (Gipuzkoa)', NULL, NULL),
(21, 'Huelva', NULL, NULL),
(22, 'Huesca', NULL, NULL),
(23, 'Islas Baleares (Illes Balears)', NULL, NULL),
(24, 'Jaen', NULL, NULL),
(25, 'La Coruna (A Coruna)', NULL, NULL),
(26, 'La Rioja', NULL, NULL),
(27, 'Las Palmas', NULL, NULL),
(28, 'Leon', NULL, NULL),
(29, 'Lerida (Lleida)', NULL, NULL),
(30, 'Lugo', NULL, NULL),
(31, 'Madrid', NULL, NULL),
(32, 'Malaga', NULL, NULL),
(33, 'Murcia', NULL, NULL),
(34, 'Navarra', NULL, NULL),
(35, 'Orense (Ourense)', NULL, NULL),
(36, 'Palencia', NULL, NULL),
(37, 'Pontevedra', NULL, NULL),
(38, 'Salamanca', NULL, NULL),
(39, 'Santa Cruz de Tenerife', NULL, NULL),
(40, 'Segovia', NULL, NULL),
(41, 'Sevilla', NULL, NULL),
(42, 'Soria', NULL, NULL),
(43, 'Tarragona', NULL, NULL),
(44, 'Teruel', NULL, NULL),
(45, 'Toledo', NULL, NULL),
(46, 'Valencia', NULL, NULL),
(47, 'Valladolid', NULL, NULL),
(48, 'Vizcaya (Bizkaia)', NULL, NULL),
(49, 'Zamora', NULL, NULL),
(50, 'Zaragoza', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_02_21_234050_create_categories_table', 1),
(5, '2024_02_21_234113_create_locations_table', 1),
(6, '2024_02_21_234200_create_users_table', 1),
(7, '2024_02_21_235031_create_products_table', 1),
(8, '2024_02_21_235122_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `final_price` double(8,2) NOT NULL,
  `close_day` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `buyer_id`, `product_id`, `location_id`, `final_price`, `close_day`, `created_at`, `updated_at`) VALUES
(1, 18, 19, 12, 5417.84, '1992-05-01 03:50:29', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(2, 13, 11, 44, 4974.04, '1998-03-21 14:42:38', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(3, 11, 6, 7, 2941.70, '2007-05-21 20:35:51', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(4, 1, 8, 3, 1657.39, '2013-06-05 09:18:45', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(5, 15, 6, 10, 2697.49, '1993-06-08 13:56:50', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(6, 9, 10, 42, 1604.40, '1983-08-19 03:07:27', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(7, 2, 19, 27, 4811.26, '2005-10-27 15:40:20', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(8, 16, 6, 30, 910.11, '1987-03-20 02:26:47', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(9, 10, 5, 31, 2207.68, '1973-06-03 22:12:18', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(10, 8, 20, 28, 5220.43, '2019-07-11 06:14:28', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(11, 2, 11, 27, 3335.41, '1985-01-03 09:41:55', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(12, 3, 10, 43, 400.71, '2019-08-24 07:09:03', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(13, 18, 6, 50, 5516.03, '1976-02-17 13:44:19', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(14, 2, 2, 8, 2362.72, '2001-09-26 03:04:29', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(15, 16, 20, 14, 942.34, '1988-06-24 10:50:30', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(16, 9, 10, 20, 5427.84, '1973-10-28 11:43:00', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(17, 8, 12, 50, 3801.72, '1994-02-03 02:58:50', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(18, 7, 17, 44, 5267.44, '1973-03-08 14:00:44', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(19, 7, 7, 32, 5214.10, '1999-02-07 01:18:13', '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(20, 8, 9, 27, 3852.97, '1973-11-19 05:16:54', '2024-02-22 00:42:24', '2024-02-22 00:42:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `price`, `seller_id`, `location_id`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Mobile 2023', 2, 2.00, 4, 40, 'https://img.freepik.com/free-photo/digital-smart-phone-abstract-background_1409-4091.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Smartphone de gama alta con cámara cuádruple y pantalla AMOLED.\r\n', '2024-02-22 00:41:13', '2024-02-22 18:02:25'),
(2, 'Movile AMOLED', 2, 2.00, 9, 10, 'https://img.freepik.com/free-photo/smartphone-balancing-with-pink-background_23-2150271746.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Smartphone de gama alta con cámara cuádruple y pantalla AMOLED.', '2024-02-22 00:41:13', '2024-02-22 18:20:42'),
(3, 'LG mobile', 2, 2.00, 1, 15, 'https://img.freepik.com/free-photo/new-cell-phone-white-background_58702-4837.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Movil con 5g', '2024-02-22 00:41:13', '2024-02-22 18:11:41'),
(4, 'Smartphone ', 2, 2.00, 6, 42, 'https://img.freepik.com/free-photo/close-up-hand-holding-smartphone_23-2149148857.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Smartphone gaming con refrigeración líquida y botones táctiles adicionales.\r\n', '2024-02-22 00:41:13', '2024-02-22 18:14:49'),
(5, 'Movil ultima generación con poco uso', 2, 2.00, 1, 27, 'https://img.freepik.com/free-photo/smartphone-balancing-with-pink-background_23-2150271746.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Se ha usado un par de veces, tiene 5g', '2024-02-22 00:41:13', '2024-02-22 18:12:08'),
(6, 'Mobile de aventura', 2, 2.00, 2, 14, 'https://img.freepik.com/free-photo/electronic-device-balancing-concept_23-2150422324.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Móvil resistente al agua y al polvo, ideal para actividades al aire libre.\r\n', '2024-02-22 00:41:13', '2024-02-22 18:01:12'),
(7, 'Movil rosa', 2, 2.00, 1, 1, 'https://img.freepik.com/free-photo/digital-smart-phone-abstract-background_1409-4091.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Celular plegable con pantalla flexible y tecnología 5G.\r\n', '2024-02-22 00:41:13', '2024-02-22 18:00:05'),
(8, 'Laptop educativa', 1, 1.00, 9, 14, 'https://img.freepik.com/free-photo/digital-device-laptop-mockup-concept_53876-147915.jpg?t=st=1708629462~exp=1708633062~hmac=12c1136e997df82743afaec6fe5ea1d168bf45cd4411b5bc847ec9e53245314f&w=740', 'Laptop educativa diseñada específicamente para estudiantes con software educativo integrado.', '2024-02-22 00:41:13', '2024-02-22 18:19:56'),
(9, 'LG 43UR78006LK 43', 3, 3.00, 8, 28, 'https://www.powerplanetonline.com/cdnassets/lg_43ur78006lk_43_4k_ultra_hd_smart_tv_wifi_negro_televisor_01_l.jpg', 'Con el procesador 4K α5 Gen6 con IA,', '2024-02-22 00:41:13', '2024-02-22 18:14:32'),
(10, 'Computer 2020', 1, 1.00, 2, 14, 'https://img.freepik.com/free-photo/laptop-smartphone-tablet-pink-background-3d-rendering_1142-41785.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Pentium 5 12Generacion', '2024-02-22 00:41:13', '2024-02-22 18:12:54'),
(11, 'Movile Android', 2, 2.00, 9, 50, 'https://img.freepik.com/free-photo/digital-smart-phone-abstract-background_1409-4091.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Teléfono inteligente económico con batería de larga duración y sistema operativo Android.', '2024-02-22 00:42:24', '2024-02-22 18:21:17'),
(12, 'Mobil 2nd hand', 2, 2.00, 1, 30, 'https://img.freepik.com/free-photo/elegant-smartphone-composition_23-2149437106.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Smartphone gaming con refrigeración líquida y botones táctiles adicionales.\r\n', '2024-02-22 00:42:24', '2024-02-22 17:58:52'),
(13, 'Ultrabook', 2, 2.00, 9, 21, 'https://img.freepik.com/free-photo/woman-checking-out-free-design-resources-website_53876-138963.jpg?t=st=1708629435~exp=1708633035~hmac=dd79e5e40f4144eced2b7b6eaaa2d76eecd79d882fb6352bca68c7ace6e9bdd5&w=740', 'Ultrabook elegante y sofisticada con carcasa de aluminio y diseño sin ventilador.', '2024-02-22 00:42:24', '2024-02-22 18:22:03'),
(14, 'laptop', 1, 1.00, 8, 42, 'https://img.freepik.com/free-photo/laptop-smartphone-tablet-pink-background-3d-rendering_1142-41785.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Laptop 2nd hand', '2024-02-22 00:42:24', '2024-02-22 18:15:59'),
(15, 'Laptop', 1, 1.00, 4, 14, 'https://img.freepik.com/free-photo/laptop-smartphone-tablet-pink-background-3d-rendering_1142-41785.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Dispositivo móvil con triple ranura para tarjetas SIM y expansión de almacenamiento.\r\n', '2024-02-22 00:42:24', '2024-02-22 18:03:03'),
(16, 'Laptop lector de huellas dactilares', 1, 1.00, 19, 22, 'https://img.freepik.com/free-photo/laptop-smartphone-tablet-pink-background-3d-rendering_1142-41785.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Ordenador portátil empresarial con lector de huellas dactilares y conectividad avanzada.', '2024-02-22 00:42:24', '2024-02-22 18:29:16'),
(17, 'Laptop del año 2024', 1, 1.00, 5, 22, 'https://img.freepik.com/free-photo/laptop-smartphone-tablet-pink-background-3d-rendering_1142-41785.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Perfecto para edición de audio', '2024-02-22 00:42:24', '2024-02-22 18:15:00'),
(18, 'Laptop', 1, 1.00, 17, 34, 'https://img.freepik.com/free-photo/woman-checking-out-free-design-resources-website_53876-138963.jpg?t=st=1708629435~exp=1708633035~hmac=dd79e5e40f4144eced2b7b6eaaa2d76eecd79d882fb6352bca68c7ace6e9bdd5&w=740', 'Laptop gaming con procesador de última generación y tarjeta gráfica dedicada.', '2024-02-22 00:42:24', '2024-02-22 18:24:24'),
(19, 'Laptop + tablet', 2, 2.00, 15, 1, 'https://img.freepik.com/free-photo/laptop-smartphone-tablet-pink-background-3d-rendering_1142-41785.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Laptop 2 en 1 con pantalla desmontable para usar como tablet', '2024-02-22 00:42:24', '2024-02-22 18:23:19'),
(20, 'Portatil convertible', 2, 2.00, 17, 32, 'https://img.freepik.com/free-photo/woman-checking-out-free-design-resources-website_53876-138963.jpg?t=st=1708629435~exp=1708633035~hmac=dd79e5e40f4144eced2b7b6eaaa2d76eecd79d882fb6352bca68c7ace6e9bdd5&w=740', 'Portátil convertible con teclado retroiluminado y lápiz óptico incluido.', '2024-02-22 00:42:24', '2024-02-22 18:25:09'),
(21, 'Xiaomi Redmi 13C', 2, 2.00, 4, 40, 'https://i05.appmifile.com/604_item_es/15/12/2023/cecc1f67258f300b6a679d97a7bc3b6e!400x400!85.png', 'El Redmi 13C presenta', '2024-02-22 07:57:54', '2024-02-22 18:06:33'),
(22, 'LG 43UR78006LK 43', 3, 3.00, 4, 40, 'https://www.powerplanetonline.com/cdnassets/lg_43ur78006lk_43_4k_ultra_hd_smart_tv_wifi_negro_televisor_01_l.jpg', 'El TV LED 43UR78006LK de LG ofrece calidad de imagen 4K con HDR10 Pro y sonido Dolby Digital Plus. Con el procesador 4K α5 Gen6 con IA', '2024-02-22 07:58:05', '2024-02-22 18:09:04'),
(23, 'Xiaomi Redmi', 2, 2.00, 4, 40, 'https://img.freepik.com/free-photo/new-cell-phone-white-background_58702-4837.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Procesador MediaTek Helio G85 de ocho núcleos, hasta 16GB de RAM y 1TB de almacenamiento ampliable. Batería de 5000mAh con carga rápida.', '2024-02-22 07:58:09', '2024-02-22 18:09:34'),
(24, 'Mobil purple', 2, 2.00, 4, 40, 'https://img.freepik.com/free-photo/smartphone-balancing-with-pink-background_23-2150271746.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'Procesador MediaTek Helio G85 de ocho núcleos, hasta 16GB de RAM y 1TB de almacenamiento ampliable. Batería de 5000mAh con carga rápida.', '2024-02-22 07:58:18', '2024-02-22 18:15:18'),
(26, 'Mobile pink semi new', 2, 2.00, 3, 3, 'https://img.freepik.com/free-photo/close-up-hand-holding-smartphone_23-2149148857.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph', 'movil de gama media de react', '2024-02-22 16:00:23', '2024-02-22 18:01:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `seller` tinyint(1) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `seller`, `address`, `location_id`, `first_name`, `last_name`, `zip_code`, `mobile`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'yoshiko11', 'darby.ullrich@example.com', NULL, '$2y$12$SuSY1CAbyd8wwZ.tNSgNh.2HFGe32e9sj9yKA75XjcBXSQqNT6CVa', 0, '2996 Van Plains\nReynoldsfort, WY 60224-7445', 48, 'Lambert', 'Wintheiser', '37910-8655', '+19804092424', NULL, '2024-02-22 00:41:13', '2024-02-22 00:41:13'),
(2, 'deleted', 'deleted', NULL, '$2y$12$SuSY1CAbyd8wwZ.tNSgNh.2HFGe32e9sj9yKA75XjcBXSQqNT6CVa', 0, 'deleted', 1, 'Janick', 'Stark', 'deleted', 'deleted', NULL, '2024-02-22 00:41:13', '2024-02-22 15:34:57'),
(3, 'dillon.abernathy', 'ischumm@example.com', NULL, '$2y$12$SuSY1CAbyd8wwZ.tNSgNh.2HFGe32e9sj9yKA75XjcBXSQqNT6CVa', 1, '8960 Rosalind Way\nGaylordchester, IN 59280-7201', 16, 'Camryn', 'Wilkinson', '34822-1479', '+16233078274', NULL, '2024-02-22 00:41:13', '2024-02-22 00:41:13'),
(4, 'morar.kelli', 'ovandervort@example.org', NULL, '$2y$12$SuSY1CAbyd8wwZ.tNSgNh.2HFGe32e9sj9yKA75XjcBXSQqNT6CVa', 0, '7832 Stoltenberg Isle Suite 774\nNorth Ewell, ME 36000', 37, 'Jerel', 'Beier', '35370', '+17473310605', NULL, '2024-02-22 00:41:13', '2024-02-22 00:41:13'),
(5, 'ryan.feeney', 'nader.maryjane@example.org', NULL, '$2y$12$SuSY1CAbyd8wwZ.tNSgNh.2HFGe32e9sj9yKA75XjcBXSQqNT6CVa', 0, '4422 Kilback Divide Suite 226\nPort Lorenzo, KY 10748-9069', 34, 'Savanna', 'Pacocha', '10641', '+14804945016', NULL, '2024-02-22 00:41:13', '2024-02-22 00:41:13'),
(6, 'emann', 'okeefe.kenya@example.com', NULL, '$2y$12$SuSY1CAbyd8wwZ.tNSgNh.2HFGe32e9sj9yKA75XjcBXSQqNT6CVa', 1, '212 Maybelle Radial Apt. 969\nPort Adrianberg, NY 64469', 10, 'Bernadette', 'Wisozk', '94848', '+19542350858', NULL, '2024-02-22 00:41:13', '2024-02-22 00:41:13'),
(7, 'chartmann', 'trantow.lacy@example.net', NULL, '$2y$12$SuSY1CAbyd8wwZ.tNSgNh.2HFGe32e9sj9yKA75XjcBXSQqNT6CVa', 0, '209 Santino Track Suite 394\nPort Delmerbury, MI 96105', 29, 'Michale', 'Dickens', '80473-1666', '+17818141279', NULL, '2024-02-22 00:41:13', '2024-02-22 00:41:13'),
(8, 'vbraun', 'jamal.crooks@example.org', NULL, '$2y$12$SuSY1CAbyd8wwZ.tNSgNh.2HFGe32e9sj9yKA75XjcBXSQqNT6CVa', 0, '889 Mitchell Mall Suite 202\nSouth Kaceyview, GA 76860-4256', 9, 'Greg', 'Howe', '65524', '+16239482406', NULL, '2024-02-22 00:41:13', '2024-02-22 00:41:13'),
(9, 'ybraun', 'jleannon@example.org', NULL, '$2y$12$SuSY1CAbyd8wwZ.tNSgNh.2HFGe32e9sj9yKA75XjcBXSQqNT6CVa', 0, '5632 Nellie Haven Suite 584\nDewitthaven, KY 84244', 25, 'Janie', 'Lang', '08593-3115', '+14847306206', NULL, '2024-02-22 00:41:13', '2024-02-22 00:41:13'),
(10, 'karlie89', 'lbrakus@example.org', NULL, '$2y$12$SuSY1CAbyd8wwZ.tNSgNh.2HFGe32e9sj9yKA75XjcBXSQqNT6CVa', 0, '705 Sawayn Station\nEstefaniamouth, RI 96985-5810', 7, 'Caleigh', 'Towne', '95955-5450', '+14199077963', NULL, '2024-02-22 00:41:13', '2024-02-22 00:41:13'),
(11, 'graham.nedra', 'zaria61@example.net', NULL, '$2y$12$OA5Uxtb9xsKNWpMQ8uS4dOamCu7qUT98dEosYLlAenxZ05TEOYmJG', 1, '1671 Lind Common Apt. 247\nNew Floridaville, NE 49873', 7, 'Carey', 'Heidenreich', '97104-9329', '+12833674741', NULL, '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(12, 'uschaefer', 'derek.sanford@example.net', NULL, '$2y$12$OA5Uxtb9xsKNWpMQ8uS4dOamCu7qUT98dEosYLlAenxZ05TEOYmJG', 1, '3787 Paris Crescent Apt. 379\nKyleville, VA 49564', 16, 'Major', 'Moore', '89646-2287', '+14103733118', NULL, '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(13, 'psporer', 'murazik.roman@example.org', NULL, '$2y$12$OA5Uxtb9xsKNWpMQ8uS4dOamCu7qUT98dEosYLlAenxZ05TEOYmJG', 1, '9680 Lebsack Roads\nBrantport, CT 23023', 48, 'Kade', 'Runolfsdottir', '05179-9897', '+13319616096', NULL, '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(14, 'corkery.gudrun', 'skiles.isom@example.com', NULL, '$2y$12$OA5Uxtb9xsKNWpMQ8uS4dOamCu7qUT98dEosYLlAenxZ05TEOYmJG', 0, '77972 Alexandre Point Apt. 632\nKingside, VT 41780', 14, 'Jaydon', 'Bailey', '03377', '+15805797594', NULL, '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(15, 'garfield30', 'eva.russel@example.net', NULL, '$2y$12$OA5Uxtb9xsKNWpMQ8uS4dOamCu7qUT98dEosYLlAenxZ05TEOYmJG', 0, '4202 Alfreda Port Suite 183\nWest Frederik, MS 75866-8061', 30, 'Justen', 'Pfeffer', '78621', '+14057926145', NULL, '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(16, 'pstrosin', 'qhyatt@example.com', NULL, '$2y$12$OA5Uxtb9xsKNWpMQ8uS4dOamCu7qUT98dEosYLlAenxZ05TEOYmJG', 0, '77021 Hayley Key Suite 241\nWest Timothyberg, NE 27962-0711', 43, 'Giovanna', 'Gottlieb', '40192', '+13183081831', NULL, '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(17, 'jaida92', 'rpredovic@example.net', NULL, '$2y$12$OA5Uxtb9xsKNWpMQ8uS4dOamCu7qUT98dEosYLlAenxZ05TEOYmJG', 0, '52081 Wintheiser Flat Suite 559\nKihnborough, OR 51419', 25, 'Pansy', 'Kutch', '58277-4188', '+19169383165', NULL, '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(18, 'samson.emmerich', 'auer.shannon@example.com', NULL, '$2y$12$OA5Uxtb9xsKNWpMQ8uS4dOamCu7qUT98dEosYLlAenxZ05TEOYmJG', 1, '7952 Ondricka Square\nKuhnberg, CO 30027-9154', 34, 'Estella', 'Boehm', '60359', '+17859016303', NULL, '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(19, 'ferry.dortha', 'bode.beulah@example.org', NULL, '$2y$12$OA5Uxtb9xsKNWpMQ8uS4dOamCu7qUT98dEosYLlAenxZ05TEOYmJG', 1, '415 Abel Terrace Apt. 403\nNew Morris, ID 15161', 19, 'Isom', 'Goldner', '39225', '+19293491597', NULL, '2024-02-22 00:42:24', '2024-02-22 00:42:24'),
(20, 'louie72', 'mcclure.conner@example.net', NULL, '$2y$12$OA5Uxtb9xsKNWpMQ8uS4dOamCu7qUT98dEosYLlAenxZ05TEOYmJG', 0, '5455 Auer Extensions Apt. 525\nKiehnport, RI 25491', 25, 'Arturo', 'Kuhic', '36423-0670', '+19403357637', NULL, '2024-02-22 00:42:24', '2024-02-22 00:42:24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_buyer_id_foreign` (`buyer_id`),
  ADD KEY `orders_product_id_foreign` (`product_id`),
  ADD KEY `orders_location_id_foreign` (`location_id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_seller_id_foreign` (`seller_id`),
  ADD KEY `products_location_id_foreign` (`location_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_location_id_foreign` (`location_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `products_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
