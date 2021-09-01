-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 01 2021 г., 17:35
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `akademostest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `branch`
--

INSERT INTO `branch` (`id`, `name`) VALUES
(1, 'Альфа'),
(2, 'Бета'),
(3, 'Гамма'),
(4, 'Дельта'),
(5, 'Эпсилон'),
(6, 'Дзета');

-- --------------------------------------------------------

--
-- Структура таблицы `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `office_id` int(11) NOT NULL,
  `chief_id` int(11) DEFAULT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wage` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `person`
--

INSERT INTO `person` (`id`, `office_id`, `chief_id`, `name`, `wage`) VALUES
(1, 3, NULL, 'Андрей', 5500),
(2, 5, NULL, 'Геннадий', 10000),
(3, 1, 2, 'Иван', 7600),
(4, 5, 2, 'Василий', 25000),
(5, 1, 1, 'Сергей', 3100),
(6, 6, 3, 'Станислав', 18500),
(7, 6, NULL, 'Кирилл', 18500),
(8, 2, 4, 'Ирина', 25000);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`),
  ADD KEY `office_id` (`office_id`),
  ADD KEY `chief_id` (`chief_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`office_id`) REFERENCES `branch` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `person_ibfk_2` FOREIGN KEY (`chief_id`) REFERENCES `person` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
