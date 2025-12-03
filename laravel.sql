-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 03, 2025 lúc 07:41 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_phim`
--

CREATE TABLE `banner_phim` (
  `maBanner` bigint(20) UNSIGNED NOT NULL,
  `duongDan` varchar(255) NOT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `hinhAnh` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `maComment` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `maBaiViet` bigint(20) UNSIGNED DEFAULT NULL,
  `maPhim` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `maFeedback` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `tieuDe` text NOT NULL,
  `noiDung` text NOT NULL,
  `ngayXuLy` date DEFAULT NULL,
  `noiDungXuLy` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_06_22_025155_create_news_table', 1),
(11, '2023_06_28_171800_banner_table', 1),
(12, '2023_06_30_170151_showtime', 1),
(13, '2023_07_01_142911_create_movies_table', 1),
(14, '2023_07_03_141715_create_rapchieu', 1),
(15, '2023_07_03_151149_create_seats', 1),
(16, '2023_07_15_150346_create_province_table', 1),
(17, '2023_07_17_115318_create_comment_article', 1),
(18, '2023_07_22_025520_create_orderdetail_table', 1),
(19, '2023_07_29_091521_create_feedback_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movies`
--

CREATE TABLE `movies` (
  `maPhim` bigint(20) UNSIGNED NOT NULL,
  `tenPhim` varchar(255) NOT NULL,
  `trailer` varchar(255) NOT NULL,
  `hinhAnh` varchar(255) NOT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `moTa` text NOT NULL,
  `ngayKhoiChieu` date NOT NULL,
  `danhGia` int(11) NOT NULL,
  `hot` tinyint(1) NOT NULL,
  `dangChieu` tinyint(1) NOT NULL,
  `sapChieu` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `movies`
--

INSERT INTO `movies` (`maPhim`, `tenPhim`, `trailer`, `hinhAnh`, `fileName`, `moTa`, `ngayKhoiChieu`, `danhGia`, `hot`, `dangChieu`, `sapChieu`, `created_at`, `updated_at`) VALUES
(1, 'Truy Tìm Long Diên Hương', 'https://youtu.be/4Az_1SWJANo', 'http://127.0.0.1:8000/images/movie/6d9dKZeFbR3M.jpg', '6d9dKZeFbR3M.jpg', 'Báu vật làng biển Long Diên Hương bị đánh cắp, mở ra cuộc hành trình truy tìm đầy kịch tính. Không chỉ có võ thuật mãn nhãn, bộ phim còn mang đến tiếng cười, sự gắn kết và những giá trị nhân văn của con người làng chài.', '2025-12-05', 5, 0, 1, 0, '2025-12-02 04:27:41', '2025-12-02 04:27:41'),
(2, 'Truy Tìm Long Diên Hương', 'https://youtu.be/4Az_1SWJANo', 'http://127.0.0.1:8000/images/movie/6d9dKZeFbR3M.jpg', '6d9dKZeFbR3M.jpg', 'Báu vật làng biển Long Diên Hương bị đánh cắp, mở ra cuộc hành trình truy tìm đầy kịch tính. Không chỉ có võ thuật mãn nhãn, bộ phim còn mang đến tiếng cười, sự gắn kết và những giá trị nhân văn của con người làng chài.', '2025-12-05', 5, 0, 1, 0, '2025-12-02 04:27:41', '2025-12-02 04:27:41'),
(3, 'Truy Tìm Long Diên Hương', 'https://youtu.be/4Az_1SWJANo', 'http://127.0.0.1:8000/images/movie/6d9dKZeFbR3M.jpg', '6d9dKZeFbR3M.jpg', 'Báu vật làng biển Long Diên Hương bị đánh cắp, mở ra cuộc hành trình truy tìm đầy kịch tính. Không chỉ có võ thuật mãn nhãn, bộ phim còn mang đến tiếng cười, sự gắn kết và những giá trị nhân văn của con người làng chài.', '2025-12-05', 5, 0, 1, 0, '2025-12-02 04:27:41', '2025-12-02 04:27:41'),
(4, 'Truy Tìm Long Diên Hương', 'https://youtu.be/4Az_1SWJANo', 'http://127.0.0.1:8000/images/movie/6d9dKZeFbR3M.jpg', '6d9dKZeFbR3M.jpg', 'Báu vật làng biển Long Diên Hương bị đánh cắp, mở ra cuộc hành trình truy tìm đầy kịch tính. Không chỉ có võ thuật mãn nhãn, bộ phim còn mang đến tiếng cười, sự gắn kết và những giá trị nhân văn của con người làng chài.', '2025-12-05', 5, 0, 1, 0, '2025-12-02 04:27:41', '2025-12-02 04:27:41'),
(5, 'Truy Tìm Long Diên Hương', 'https://youtu.be/4Az_1SWJANo', 'http://127.0.0.1:8000/images/movie/6d9dKZeFbR3M.jpg', '6d9dKZeFbR3M.jpg', 'Báu vật làng biển Long Diên Hương bị đánh cắp, mở ra cuộc hành trình truy tìm đầy kịch tính. Không chỉ có võ thuật mãn nhãn, bộ phim còn mang đến tiếng cười, sự gắn kết và những giá trị nhân văn của con người làng chài.', '2025-12-05', 5, 0, 1, 0, '2025-12-02 04:27:41', '2025-12-02 04:27:41'),
(6, 'Truy Tìm Long Diên Hương', 'https://youtu.be/4Az_1SWJANo', 'http://127.0.0.1:8000/images/movie/6d9dKZeFbR3M.jpg', '6d9dKZeFbR3M.jpg', 'Báu vật làng biển Long Diên Hương bị đánh cắp, mở ra cuộc hành trình truy tìm đầy kịch tính. Không chỉ có võ thuật mãn nhãn, bộ phim còn mang đến tiếng cười, sự gắn kết và những giá trị nhân văn của con người làng chài.', '2025-12-05', 5, 0, 1, 0, '2025-12-02 04:27:41', '2025-12-02 04:27:41'),
(7, 'Truy Tìm Long Diên Hương', 'https://youtu.be/4Az_1SWJANo', 'http://127.0.0.1:8000/images/movie/6d9dKZeFbR3M.jpg', '6d9dKZeFbR3M.jpg', 'Báu vật làng biển Long Diên Hương bị đánh cắp, mở ra cuộc hành trình truy tìm đầy kịch tính. Không chỉ có võ thuật mãn nhãn, bộ phim còn mang đến tiếng cười, sự gắn kết và những giá trị nhân văn của con người làng chài.', '2025-12-05', 5, 0, 1, 0, '2025-12-02 04:27:41', '2025-12-02 04:27:41'),
(8, 'Truy Tìm Long Diên Hương', 'https://youtu.be/4Az_1SWJANo', 'http://127.0.0.1:8000/images/movie/6d9dKZeFbR3M.jpg', '6d9dKZeFbR3M.jpg', 'Báu vật làng biển Long Diên Hương bị đánh cắp, mở ra cuộc hành trình truy tìm đầy kịch tính. Không chỉ có võ thuật mãn nhãn, bộ phim còn mang đến tiếng cười, sự gắn kết và những giá trị nhân văn của con người làng chài.', '2025-12-05', 5, 0, 1, 0, '2025-12-02 04:27:41', '2025-12-02 04:27:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('d0c47b264591ab598cbb99643f50eb7e18687295ef19eb3926122f74978a17a9152c8e960dca4c83', 4, 1, 'Personal Access Token', '[]', 0, '2025-12-02 07:42:53', '2025-12-02 07:42:54', '2026-12-02 14:42:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'DMoIZ7MTx4tQLZPrpqcBqQ5gmwwbOLr2C3kGwNhG', NULL, 'http://localhost', 1, 0, 0, '2025-12-02 07:42:40', '2025-12-02 07:42:40'),
(2, NULL, 'Laravel Password Grant Client', 'z1LjWUzcy3phKiGFg8WbNie09rBYFVhKBA6wu6KF', 'users', 'http://localhost', 0, 1, 0, '2025-12-02 07:42:40', '2025-12-02 07:42:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-12-02 07:42:40', '2025-12-02 07:42:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `maOrder` bigint(20) UNSIGNED NOT NULL,
  `maLichChieu` bigint(20) UNSIGNED NOT NULL,
  `rapChieu` varchar(255) NOT NULL,
  `maPhim` int(11) NOT NULL,
  `phim` varchar(255) NOT NULL,
  `gioChieu` varchar(255) NOT NULL,
  `ngayChieu` varchar(255) NOT NULL,
  `danhSachGhe` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tongTien` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `maTinh` bigint(20) UNSIGNED NOT NULL,
  `tenTinh` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`maTinh`, `tenTinh`, `created_at`, `updated_at`) VALUES
(1, 'TP. Hồ Chí Minh', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(2, 'TP. Hà Nội', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(3, 'Đà Nẵng', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(4, 'An Giang', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(5, 'Bà Rịa-Vũng Tàu', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(6, 'Bạc Liêu', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(7, 'Bắc Giang', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(8, 'Bắc Kạn', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(9, 'Bắc Ninh', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(10, 'Bến Tre', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(11, 'Bình Dương', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(12, 'Bình Định', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(13, 'Bình Phước', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(14, 'Bình Thuận', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(15, 'Cà Mau', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(16, 'Cao Bằng', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(17, 'Cần Thơ', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(18, 'Đà Nẵng', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(19, 'Đắk Nông', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(20, 'Điện Biên', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(21, 'Đồng Nai', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(22, 'Đồng Tháp', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(23, 'Gia Lai', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(24, 'Hà Giang', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(25, 'Hà Nam', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(26, 'Hà Tĩnh', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(27, 'Hải Dương', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(28, 'Hải Phòng', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(29, 'Hậu Giang', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(30, 'Hòa Bình', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(31, 'Hưng Yên', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(32, 'Khánh Hòa', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(33, 'Kiên Giang', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(34, 'Kon Tum', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(35, 'Lai Châu', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(36, 'Lạng Sơn', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(37, 'Lào Cai', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(38, 'Lâm Đồng', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(39, 'Long An', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(40, 'Nam Định', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(41, 'Nghệ An', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(42, 'Ninh Bình', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(43, 'Ninh Thuận', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(44, 'Phú Thọ', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(45, 'Phú Yên', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(46, 'Quảng Bình', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(47, 'Quảng Bình', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(48, 'Quảng Ngãi', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(49, 'Quảng Ninh', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(50, 'Quảng Trị', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(51, 'Sóc Trăng', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(52, 'Sơn La', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(53, 'Tây Ninh', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(54, 'Thái Bình', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(55, 'Thái Nguyên', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(56, 'Thanh Hóa', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(57, 'Thừa Thiên Huế', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(58, 'Tiền Giang', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(59, 'Trà Vinh', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(60, 'Tuyên Quang', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(61, 'Vĩnh Long', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(62, 'Vĩnh Phúc', '2025-12-02 04:22:38', '2025-12-02 04:22:38'),
(63, 'Yên Bái', '2025-12-02 04:22:38', '2025-12-02 04:22:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rapchieu`
--

CREATE TABLE `rapchieu` (
  `maRap` bigint(20) UNSIGNED NOT NULL,
  `tenRap` varchar(255) NOT NULL,
  `maTinh_id` bigint(20) UNSIGNED DEFAULT NULL,
  `diaChi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seats`
--

CREATE TABLE `seats` (
  `maGhe` bigint(20) UNSIGNED NOT NULL,
  `tenGhe` varchar(255) NOT NULL,
  `loaiGhe` varchar(255) NOT NULL,
  `nguoiDat` varchar(255) DEFAULT NULL,
  `nguoiChon` varchar(255) DEFAULT NULL,
  `maLichChieu` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `showtime`
--

CREATE TABLE `showtime` (
  `maLichChieu` bigint(20) UNSIGNED NOT NULL,
  `ngayChieu` date NOT NULL,
  `gioChieu` time NOT NULL,
  `giaVeThuong` int(11) NOT NULL,
  `giaVeVip` int(11) NOT NULL,
  `maPhim` bigint(20) UNSIGNED DEFAULT NULL,
  `maRap` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbnews`
--

CREATE TABLE `tbnews` (
  `maBaiViet` bigint(20) UNSIGNED NOT NULL,
  `tieuDe` varchar(255) NOT NULL,
  `tacGia` varchar(255) NOT NULL,
  `noiDungPhu` text NOT NULL,
  `noiDung` text NOT NULL,
  `hinhAnh` varchar(255) NOT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `theLoai` varchar(255) NOT NULL,
  `maPhim` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbnews`
--

INSERT INTO `tbnews` (`maBaiViet`, `tieuDe`, `tacGia`, `noiDungPhu`, `noiDung`, `hinhAnh`, `fileName`, `theLoai`, `maPhim`, `created_at`, `updated_at`) VALUES
(1, 'Truy Tìm Long Diên Hương - Bộ phim chứng minh \"hài Việt\" đã khác xưa', 'Ivy_Trat', 'Tiếng cười trong phim Truy Tìm Long Diên Hương không chỉ để giải trí mà còn khiến chúng ta bớt sợ cụm từ “hài Việt”. Hài Việt, nếu đến từ sự tử tế và sáng tạo, vẫn có thể trở thành một thứ nghệ thuật đáng trân trọng.', '<p>Từ quá trình xem xét lại thể loại, học hỏi từ quá khứ, tái và nhận định nghiêm túc lại thể loại, học hỏi những nền điện ảnh quốc tế của đoàn làm phim, thành quả là chúng ta có một làn gió mới cho thể loại từng bị gắn mác “nhảm” một cách bất ngờ mang tên <strong>Truy Tìm Long Diên Hương</strong>.</p><p>Vừa hài vừa hành động nảy lửa, vừa gần gũi lại vừa là lạ, bộ phim của đạo diễn Dương Minh Chiến mới mẻ theo cách riêng của nó. Và vũ khí lợi hại nhất của phim chính là khiếu hài hước được biến tấu từ cú bắt tay giữa chất Châu Tinh Trì và phong cách hài truyền thống quen thuộc của điện ảnh Việt.</p><figure class=\"image\"><img src=\"https://i.imgur.com/ByO4Xp9.jpg\" alt=\"Truy Tìm Long Diên Hương là phim thị trường, nhưng chắc chắn không phải hài nhảm\"></figure><p>Truy Tìm Long Diên Hương là phim thị trường, nhưng chắc chắn không phải hài nhảm</p><h2><strong>1. Mảng miếng hài lệch nhịp, lộn pha</strong></h2><p>Hành động hài từ lâu là thể loại phim ảnh được sản xuất nhiều nhất điện ảnh Việt Nam, nhưng cũng là thể loại mang tai tiếng không mong muốn. Những kiểu mẫu nhân vật sáo rỗng một chiều - cô nàng ngốc nghếch, người đàn ông mất não hay phản diện ngờ nghệch - biến bản thân thành trò cười một cách vô tri cho bộ phim thêm “hương vị”. Lúc ấy, câu chuyện phải dừng lại để nhường chỗ cho màn hài ấy.</p><p>Qua năm tháng, những hương vị ấy đã trở nên cũ kỹ và dễ đoán. Cứ đến cao trào, biên kịch sẽ “nới nhịp” bằng một màn tấu, một câu đùa, hay một nhân vật cường điệu, thổi phồng mọi thứ đến mức cợt nhả.&nbsp;Tai tiếng quá lố, quá sống sượng, vô duyên, nhạt nhẽo cứ thế đã đeo bám thể loại trong suốt năm tháng sau đó.</p><p><strong>Truy Tìm Long Diên Hương</strong>&nbsp;là phim giải trí, là phim thị trường, nhưng cái mác \"hài nhảm\" không thể áp dụng ở đây. Dương Minh Chiến không hẳn từ bỏ lối pha hài quen thuộc, mà tìm cách làm mới lại một bộ áo đã quá chật để sử dụng. Nhà làm phim đã tìm thấy sự đổi mới trong sự lệch nhịp, lộn pha.&nbsp;</p>', 'http://127.0.0.1:8000/images/tintuc/i8dYK1RMxS5X.jpg', 'i8dYK1RMxS5X.jpg', 'Tin điện ảnh', NULL, '2025-12-02 04:29:08', '2025-12-02 04:29:08'),
(2, 'Truy Tìm Long Diên Hương - Bộ phim chứng minh \"hài Việt\" đã khác xưa', 'Ivy_Trat', 'Tiếng cười trong phim Truy Tìm Long Diên Hương không chỉ để giải trí mà còn khiến chúng ta bớt sợ cụm từ “hài Việt”. Hài Việt, nếu đến từ sự tử tế và sáng tạo, vẫn có thể trở thành một thứ nghệ thuật đáng trân trọng.', '<p>Từ quá trình xem xét lại thể loại, học hỏi từ quá khứ, tái và nhận định nghiêm túc lại thể loại, học hỏi những nền điện ảnh quốc tế của đoàn làm phim, thành quả là chúng ta có một làn gió mới cho thể loại từng bị gắn mác “nhảm” một cách bất ngờ mang tên <strong>Truy Tìm Long Diên Hương</strong>.</p><p>Vừa hài vừa hành động nảy lửa, vừa gần gũi lại vừa là lạ, bộ phim của đạo diễn Dương Minh Chiến mới mẻ theo cách riêng của nó. Và vũ khí lợi hại nhất của phim chính là khiếu hài hước được biến tấu từ cú bắt tay giữa chất Châu Tinh Trì và phong cách hài truyền thống quen thuộc của điện ảnh Việt.</p><figure class=\"image\"><img src=\"https://i.imgur.com/ByO4Xp9.jpg\" alt=\"Truy Tìm Long Diên Hương là phim thị trường, nhưng chắc chắn không phải hài nhảm\"></figure><p>Truy Tìm Long Diên Hương là phim thị trường, nhưng chắc chắn không phải hài nhảm</p><h2><strong>1. Mảng miếng hài lệch nhịp, lộn pha</strong></h2><p>Hành động hài từ lâu là thể loại phim ảnh được sản xuất nhiều nhất điện ảnh Việt Nam, nhưng cũng là thể loại mang tai tiếng không mong muốn. Những kiểu mẫu nhân vật sáo rỗng một chiều - cô nàng ngốc nghếch, người đàn ông mất não hay phản diện ngờ nghệch - biến bản thân thành trò cười một cách vô tri cho bộ phim thêm “hương vị”. Lúc ấy, câu chuyện phải dừng lại để nhường chỗ cho màn hài ấy.</p><p>Qua năm tháng, những hương vị ấy đã trở nên cũ kỹ và dễ đoán. Cứ đến cao trào, biên kịch sẽ “nới nhịp” bằng một màn tấu, một câu đùa, hay một nhân vật cường điệu, thổi phồng mọi thứ đến mức cợt nhả.&nbsp;Tai tiếng quá lố, quá sống sượng, vô duyên, nhạt nhẽo cứ thế đã đeo bám thể loại trong suốt năm tháng sau đó.</p><p><strong>Truy Tìm Long Diên Hương</strong>&nbsp;là phim giải trí, là phim thị trường, nhưng cái mác \"hài nhảm\" không thể áp dụng ở đây. Dương Minh Chiến không hẳn từ bỏ lối pha hài quen thuộc, mà tìm cách làm mới lại một bộ áo đã quá chật để sử dụng. Nhà làm phim đã tìm thấy sự đổi mới trong sự lệch nhịp, lộn pha.&nbsp;</p>', 'http://127.0.0.1:8000/images/tintuc/i8dYK1RMxS5X.jpg', 'i8dYK1RMxS5X.jpg', 'Tin điện ảnh', NULL, '2025-12-02 04:29:08', '2025-12-02 04:29:08'),
(3, 'Truy Tìm Long Diên Hương - Bộ phim chứng minh \"hài Việt\" đã khác xưa', 'Ivy_Trat', 'Tiếng cười trong phim Truy Tìm Long Diên Hương không chỉ để giải trí mà còn khiến chúng ta bớt sợ cụm từ “hài Việt”. Hài Việt, nếu đến từ sự tử tế và sáng tạo, vẫn có thể trở thành một thứ nghệ thuật đáng trân trọng.', '<p>Từ quá trình xem xét lại thể loại, học hỏi từ quá khứ, tái và nhận định nghiêm túc lại thể loại, học hỏi những nền điện ảnh quốc tế của đoàn làm phim, thành quả là chúng ta có một làn gió mới cho thể loại từng bị gắn mác “nhảm” một cách bất ngờ mang tên <strong>Truy Tìm Long Diên Hương</strong>.</p><p>Vừa hài vừa hành động nảy lửa, vừa gần gũi lại vừa là lạ, bộ phim của đạo diễn Dương Minh Chiến mới mẻ theo cách riêng của nó. Và vũ khí lợi hại nhất của phim chính là khiếu hài hước được biến tấu từ cú bắt tay giữa chất Châu Tinh Trì và phong cách hài truyền thống quen thuộc của điện ảnh Việt.</p><figure class=\"image\"><img src=\"https://i.imgur.com/ByO4Xp9.jpg\" alt=\"Truy Tìm Long Diên Hương là phim thị trường, nhưng chắc chắn không phải hài nhảm\"></figure><p>Truy Tìm Long Diên Hương là phim thị trường, nhưng chắc chắn không phải hài nhảm</p><h2><strong>1. Mảng miếng hài lệch nhịp, lộn pha</strong></h2><p>Hành động hài từ lâu là thể loại phim ảnh được sản xuất nhiều nhất điện ảnh Việt Nam, nhưng cũng là thể loại mang tai tiếng không mong muốn. Những kiểu mẫu nhân vật sáo rỗng một chiều - cô nàng ngốc nghếch, người đàn ông mất não hay phản diện ngờ nghệch - biến bản thân thành trò cười một cách vô tri cho bộ phim thêm “hương vị”. Lúc ấy, câu chuyện phải dừng lại để nhường chỗ cho màn hài ấy.</p><p>Qua năm tháng, những hương vị ấy đã trở nên cũ kỹ và dễ đoán. Cứ đến cao trào, biên kịch sẽ “nới nhịp” bằng một màn tấu, một câu đùa, hay một nhân vật cường điệu, thổi phồng mọi thứ đến mức cợt nhả.&nbsp;Tai tiếng quá lố, quá sống sượng, vô duyên, nhạt nhẽo cứ thế đã đeo bám thể loại trong suốt năm tháng sau đó.</p><p><strong>Truy Tìm Long Diên Hương</strong>&nbsp;là phim giải trí, là phim thị trường, nhưng cái mác \"hài nhảm\" không thể áp dụng ở đây. Dương Minh Chiến không hẳn từ bỏ lối pha hài quen thuộc, mà tìm cách làm mới lại một bộ áo đã quá chật để sử dụng. Nhà làm phim đã tìm thấy sự đổi mới trong sự lệch nhịp, lộn pha.&nbsp;</p>', 'http://127.0.0.1:8000/images/tintuc/i8dYK1RMxS5X.jpg', 'i8dYK1RMxS5X.jpg', 'Tin điện ảnh', NULL, '2025-12-02 04:29:08', '2025-12-02 04:29:08'),
(4, 'Truy Tìm Long Diên Hương - Bộ phim chứng minh \"hài Việt\" đã khác xưa', 'Ivy_Trat', 'Tiếng cười trong phim Truy Tìm Long Diên Hương không chỉ để giải trí mà còn khiến chúng ta bớt sợ cụm từ “hài Việt”. Hài Việt, nếu đến từ sự tử tế và sáng tạo, vẫn có thể trở thành một thứ nghệ thuật đáng trân trọng.', '<p>Từ quá trình xem xét lại thể loại, học hỏi từ quá khứ, tái và nhận định nghiêm túc lại thể loại, học hỏi những nền điện ảnh quốc tế của đoàn làm phim, thành quả là chúng ta có một làn gió mới cho thể loại từng bị gắn mác “nhảm” một cách bất ngờ mang tên <strong>Truy Tìm Long Diên Hương</strong>.</p><p>Vừa hài vừa hành động nảy lửa, vừa gần gũi lại vừa là lạ, bộ phim của đạo diễn Dương Minh Chiến mới mẻ theo cách riêng của nó. Và vũ khí lợi hại nhất của phim chính là khiếu hài hước được biến tấu từ cú bắt tay giữa chất Châu Tinh Trì và phong cách hài truyền thống quen thuộc của điện ảnh Việt.</p><figure class=\"image\"><img src=\"https://i.imgur.com/ByO4Xp9.jpg\" alt=\"Truy Tìm Long Diên Hương là phim thị trường, nhưng chắc chắn không phải hài nhảm\"></figure><p>Truy Tìm Long Diên Hương là phim thị trường, nhưng chắc chắn không phải hài nhảm</p><h2><strong>1. Mảng miếng hài lệch nhịp, lộn pha</strong></h2><p>Hành động hài từ lâu là thể loại phim ảnh được sản xuất nhiều nhất điện ảnh Việt Nam, nhưng cũng là thể loại mang tai tiếng không mong muốn. Những kiểu mẫu nhân vật sáo rỗng một chiều - cô nàng ngốc nghếch, người đàn ông mất não hay phản diện ngờ nghệch - biến bản thân thành trò cười một cách vô tri cho bộ phim thêm “hương vị”. Lúc ấy, câu chuyện phải dừng lại để nhường chỗ cho màn hài ấy.</p><p>Qua năm tháng, những hương vị ấy đã trở nên cũ kỹ và dễ đoán. Cứ đến cao trào, biên kịch sẽ “nới nhịp” bằng một màn tấu, một câu đùa, hay một nhân vật cường điệu, thổi phồng mọi thứ đến mức cợt nhả.&nbsp;Tai tiếng quá lố, quá sống sượng, vô duyên, nhạt nhẽo cứ thế đã đeo bám thể loại trong suốt năm tháng sau đó.</p><p><strong>Truy Tìm Long Diên Hương</strong>&nbsp;là phim giải trí, là phim thị trường, nhưng cái mác \"hài nhảm\" không thể áp dụng ở đây. Dương Minh Chiến không hẳn từ bỏ lối pha hài quen thuộc, mà tìm cách làm mới lại một bộ áo đã quá chật để sử dụng. Nhà làm phim đã tìm thấy sự đổi mới trong sự lệch nhịp, lộn pha.&nbsp;</p>', 'http://127.0.0.1:8000/images/tintuc/i8dYK1RMxS5X.jpg', 'i8dYK1RMxS5X.jpg', 'Tin điện ảnh', NULL, '2025-12-02 04:29:08', '2025-12-02 04:29:08'),
(5, 'Truy Tìm Long Diên Hương - Bộ phim chứng minh \"hài Việt\" đã khác xưa', 'Ivy_Trat', 'Tiếng cười trong phim Truy Tìm Long Diên Hương không chỉ để giải trí mà còn khiến chúng ta bớt sợ cụm từ “hài Việt”. Hài Việt, nếu đến từ sự tử tế và sáng tạo, vẫn có thể trở thành một thứ nghệ thuật đáng trân trọng.', '<p>Từ quá trình xem xét lại thể loại, học hỏi từ quá khứ, tái và nhận định nghiêm túc lại thể loại, học hỏi những nền điện ảnh quốc tế của đoàn làm phim, thành quả là chúng ta có một làn gió mới cho thể loại từng bị gắn mác “nhảm” một cách bất ngờ mang tên <strong>Truy Tìm Long Diên Hương</strong>.</p><p>Vừa hài vừa hành động nảy lửa, vừa gần gũi lại vừa là lạ, bộ phim của đạo diễn Dương Minh Chiến mới mẻ theo cách riêng của nó. Và vũ khí lợi hại nhất của phim chính là khiếu hài hước được biến tấu từ cú bắt tay giữa chất Châu Tinh Trì và phong cách hài truyền thống quen thuộc của điện ảnh Việt.</p><figure class=\"image\"><img src=\"https://i.imgur.com/ByO4Xp9.jpg\" alt=\"Truy Tìm Long Diên Hương là phim thị trường, nhưng chắc chắn không phải hài nhảm\"></figure><p>Truy Tìm Long Diên Hương là phim thị trường, nhưng chắc chắn không phải hài nhảm</p><h2><strong>1. Mảng miếng hài lệch nhịp, lộn pha</strong></h2><p>Hành động hài từ lâu là thể loại phim ảnh được sản xuất nhiều nhất điện ảnh Việt Nam, nhưng cũng là thể loại mang tai tiếng không mong muốn. Những kiểu mẫu nhân vật sáo rỗng một chiều - cô nàng ngốc nghếch, người đàn ông mất não hay phản diện ngờ nghệch - biến bản thân thành trò cười một cách vô tri cho bộ phim thêm “hương vị”. Lúc ấy, câu chuyện phải dừng lại để nhường chỗ cho màn hài ấy.</p><p>Qua năm tháng, những hương vị ấy đã trở nên cũ kỹ và dễ đoán. Cứ đến cao trào, biên kịch sẽ “nới nhịp” bằng một màn tấu, một câu đùa, hay một nhân vật cường điệu, thổi phồng mọi thứ đến mức cợt nhả.&nbsp;Tai tiếng quá lố, quá sống sượng, vô duyên, nhạt nhẽo cứ thế đã đeo bám thể loại trong suốt năm tháng sau đó.</p><p><strong>Truy Tìm Long Diên Hương</strong>&nbsp;là phim giải trí, là phim thị trường, nhưng cái mác \"hài nhảm\" không thể áp dụng ở đây. Dương Minh Chiến không hẳn từ bỏ lối pha hài quen thuộc, mà tìm cách làm mới lại một bộ áo đã quá chật để sử dụng. Nhà làm phim đã tìm thấy sự đổi mới trong sự lệch nhịp, lộn pha.&nbsp;</p>', 'http://127.0.0.1:8000/images/tintuc/i8dYK1RMxS5X.jpg', 'i8dYK1RMxS5X.jpg', 'Tin điện ảnh', NULL, '2025-12-02 04:29:08', '2025-12-02 04:29:08'),
(6, 'Truy Tìm Long Diên Hương - Bộ phim chứng minh \"hài Việt\" đã khác xưa', 'Ivy_Trat', 'Tiếng cười trong phim Truy Tìm Long Diên Hương không chỉ để giải trí mà còn khiến chúng ta bớt sợ cụm từ “hài Việt”. Hài Việt, nếu đến từ sự tử tế và sáng tạo, vẫn có thể trở thành một thứ nghệ thuật đáng trân trọng.', '<p>Từ quá trình xem xét lại thể loại, học hỏi từ quá khứ, tái và nhận định nghiêm túc lại thể loại, học hỏi những nền điện ảnh quốc tế của đoàn làm phim, thành quả là chúng ta có một làn gió mới cho thể loại từng bị gắn mác “nhảm” một cách bất ngờ mang tên <strong>Truy Tìm Long Diên Hương</strong>.</p><p>Vừa hài vừa hành động nảy lửa, vừa gần gũi lại vừa là lạ, bộ phim của đạo diễn Dương Minh Chiến mới mẻ theo cách riêng của nó. Và vũ khí lợi hại nhất của phim chính là khiếu hài hước được biến tấu từ cú bắt tay giữa chất Châu Tinh Trì và phong cách hài truyền thống quen thuộc của điện ảnh Việt.</p><figure class=\"image\"><img src=\"https://i.imgur.com/ByO4Xp9.jpg\" alt=\"Truy Tìm Long Diên Hương là phim thị trường, nhưng chắc chắn không phải hài nhảm\"></figure><p>Truy Tìm Long Diên Hương là phim thị trường, nhưng chắc chắn không phải hài nhảm</p><h2><strong>1. Mảng miếng hài lệch nhịp, lộn pha</strong></h2><p>Hành động hài từ lâu là thể loại phim ảnh được sản xuất nhiều nhất điện ảnh Việt Nam, nhưng cũng là thể loại mang tai tiếng không mong muốn. Những kiểu mẫu nhân vật sáo rỗng một chiều - cô nàng ngốc nghếch, người đàn ông mất não hay phản diện ngờ nghệch - biến bản thân thành trò cười một cách vô tri cho bộ phim thêm “hương vị”. Lúc ấy, câu chuyện phải dừng lại để nhường chỗ cho màn hài ấy.</p><p>Qua năm tháng, những hương vị ấy đã trở nên cũ kỹ và dễ đoán. Cứ đến cao trào, biên kịch sẽ “nới nhịp” bằng một màn tấu, một câu đùa, hay một nhân vật cường điệu, thổi phồng mọi thứ đến mức cợt nhả.&nbsp;Tai tiếng quá lố, quá sống sượng, vô duyên, nhạt nhẽo cứ thế đã đeo bám thể loại trong suốt năm tháng sau đó.</p><p><strong>Truy Tìm Long Diên Hương</strong>&nbsp;là phim giải trí, là phim thị trường, nhưng cái mác \"hài nhảm\" không thể áp dụng ở đây. Dương Minh Chiến không hẳn từ bỏ lối pha hài quen thuộc, mà tìm cách làm mới lại một bộ áo đã quá chật để sử dụng. Nhà làm phim đã tìm thấy sự đổi mới trong sự lệch nhịp, lộn pha.&nbsp;</p>', 'http://127.0.0.1:8000/images/tintuc/i8dYK1RMxS5X.jpg', 'i8dYK1RMxS5X.jpg', 'Tin điện ảnh', NULL, '2025-12-02 04:29:08', '2025-12-02 04:29:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'KhachHang',
  `avatar` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `avatar`, `fileName`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@phtv.com', NULL, '$2y$10$MNZq4wgjglsp4JlEW4PcqeIhJeVR77EbLN9rpVc1uw1jevyey3Nlq', 'Super', NULL, NULL, NULL, '2025-12-02 04:22:37', '2025-12-02 04:22:37'),
(2, 'mod', 'mod@phtv.com', NULL, '$2y$10$qkpU0DOCP8oQ4swRNRE5.eypiNVfmcoZXUqN/MZRIgZA.tTzqGuNK', 'QuanTri', NULL, NULL, NULL, '2025-12-02 04:22:37', '2025-12-02 04:22:37'),
(3, 'free', 'free@phtv.com', NULL, '$2y$10$luRa/.hKNoWgobuGU4Ct7unUjBuWwRn69PGhUqINwy1yOeE6/K7gu', 'KhachHang', NULL, NULL, NULL, '2025-12-02 04:22:37', '2025-12-02 04:22:37'),
(4, 'toilaminhbui', 'toilaminhbui@gmail.com', NULL, '$2y$10$GO1wQoh/zcdNnTAIKH3IP.51LAV0NVxLHH0reZcvKCid/bkbfGVzq', 'QuanTri', NULL, NULL, NULL, '2025-12-02 07:39:35', '2025-12-02 07:39:35');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner_phim`
--
ALTER TABLE `banner_phim`
  ADD PRIMARY KEY (`maBanner`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`maComment`),
  ADD KEY `comment_mabaiviet_foreign` (`maBaiViet`),
  ADD KEY `comment_maphim_foreign` (`maPhim`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`maFeedback`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`maPhim`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`maOrder`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`maTinh`);

--
-- Chỉ mục cho bảng `rapchieu`
--
ALTER TABLE `rapchieu`
  ADD PRIMARY KEY (`maRap`);

--
-- Chỉ mục cho bảng `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`maGhe`),
  ADD KEY `seats_malichchieu_foreign` (`maLichChieu`);

--
-- Chỉ mục cho bảng `showtime`
--
ALTER TABLE `showtime`
  ADD PRIMARY KEY (`maLichChieu`);

--
-- Chỉ mục cho bảng `tbnews`
--
ALTER TABLE `tbnews`
  ADD PRIMARY KEY (`maBaiViet`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner_phim`
--
ALTER TABLE `banner_phim`
  MODIFY `maBanner` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `maComment` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `maFeedback` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `movies`
--
ALTER TABLE `movies`
  MODIFY `maPhim` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `maOrder` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `maTinh` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `rapchieu`
--
ALTER TABLE `rapchieu`
  MODIFY `maRap` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `seats`
--
ALTER TABLE `seats`
  MODIFY `maGhe` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `showtime`
--
ALTER TABLE `showtime`
  MODIFY `maLichChieu` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbnews`
--
ALTER TABLE `tbnews`
  MODIFY `maBaiViet` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_mabaiviet_foreign` FOREIGN KEY (`maBaiViet`) REFERENCES `tbnews` (`maBaiViet`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_maphim_foreign` FOREIGN KEY (`maPhim`) REFERENCES `movies` (`maPhim`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_malichchieu_foreign` FOREIGN KEY (`maLichChieu`) REFERENCES `showtime` (`maLichChieu`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
