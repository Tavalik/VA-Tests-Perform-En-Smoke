﻿
#language: ru

@tree

Функциональность: Дымовые тесты - РегистрыБухгалтерии - ФормаСписка
# Конфигурация: 1C:Perform
# Версия: 3.2.4.9

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Открытие формы списка регистра бухгалтерии "Posting journal IFRS"

	Дано Я открываю основную форму списка регистра бухгалтерии "МСФО"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка регистра бухгалтерии МСФО"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка регистра бухгалтерии МСФО"
	И Я закрываю текущее окно
