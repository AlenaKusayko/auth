-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 18 2022 г., 11:38
-- Версия сервера: 5.7.38
-- Версия PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mydatabase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `message_issue` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `id_users`, `message_issue`, `message`, `message_date_time`) VALUES
(31, 2, 'Вопрос по обработке платежей', '   vvvvvvvvvvv', '2022-07-15 11:19:33'),
(32, 1, 'Технический вопрос', '   gregfgdf', '2022-07-18 09:13:10'),
(81, 1, 'Технический вопрос', '   qqqqqqqqqqq', '2022-07-18 10:02:53'),
(123, 1, 'Технический вопрос', 'yyy', '2022-07-18 11:08:27'),
(124, 2, 'Технический вопрос', 'ergerg', '2022-07-18 11:14:25'),
(125, 2, 'Технический вопрос', 'rthtrhth', '2022-07-18 11:14:28');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `FIO` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Birthday` date NOT NULL,
  `Phone_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `E_Mail` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `FIO`, `Birthday`, `Phone_number`, `E_Mail`) VALUES
(1, 'Cat2202', 'Cat2202', 'Иванов Кирилл Петрович', '2019-06-10', '+7(999)888-33-22', 'test1@test.ru'),
(2, 'Dao4404', 'Dao4404', 'Кириллов Сергей Иванович', '2018-07-14', '+7(888)727-72-72', 'test2@test.ru'),
(3, 'Pig3303', 'Pig3303', 'Сергеева Ольга Петровна', '2020-07-19', '+7(333)222-33-66', 'test3@test.ru'),
(4, 'Pup1101', 'Pup1101', 'Овсеева Ирина Ивановна', '2020-02-14', '+7(333)777-88-44', 'Test4@test.ru'),
(5, 'Lol6606', 'Lol6606', 'Андреева Василиса Андреевна', '2022-01-02', '+7(666)333-22-11', 'Test5@test.ru'),
(6, 'Pip1103', 'Pip1103', 'петров Игнат Андреевич', '2022-03-19', '+7(999)352-22-40', 'test6@test.ru');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_users` (`id_users`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
