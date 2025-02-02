﻿---
title: Типи операцій Mail Merge в C++
second_title: Aspose.Words для C++
articleTitle: Типи операцій Mail Merge
linktitle: Типи операцій Mail Merge
type: docs
description: "Виконайте два різні типи операцій Mail Merge: прості Mail Merge та Mail Merge з регіонами, використовуючи C++. Простий Mail Merge повторює весь документ для кожного запису джерела даних, тоді як Mail Merge з регіонами повторює лише певні області для кожного запису."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /uk/cpp/types-of-mail-merge-operations/
timestamp: 2024-09-24-14-35-44
---

Основна ідея Mail Merge полягає в автоматичному створенні документа або декількох документів на основі вашого шаблону та даних, отриманих з вашого джерела даних. Aspose.Words дозволяє виконувати два різних типи операцій Mail Merge: прості Mail Merge і Mail Merge з регіонами.

Найпоширенішим прикладом використання simple Mail Merge є ситуація, коли ви хочете надіслати документ різним клієнтам, вказавши їх імена на початку документа. Для цього вам потрібно створити поля злиття, такі як *First Name* та *Last Name*, у вашому шаблоні, а потім заповнити їх даними з джерела даних. Тоді як найпоширеніший приклад використання Mail Merge з регіонами - це коли ви хочете надіслати документ, що містить конкретні замовлення, зі списком усіх товарів у кожному замовленні. Для цього вам потрібно буде створити регіони злиття всередині вашого шаблону – власний Регіон для кожного замовлення, щоб заповнити його всіма необхідними даними для товарів.

Основна відмінність між обома операціями злиття полягає в тому, що простий Mail Merge (без областей) повторює весь документ для кожного запису джерела даних, тоді як Mail Merge з областями повторює лише певні області для кожного запису. Ви можете розглядати просту операцію Mail Merge як окремий випадок злиття з областями, де єдиною областю є весь документ цілком.

{{% alert color="primary" %}}

Клас [MailMerge](https://reference.aspose.com/words/cpp/class/aspose.words.mailmerging/mailmerge/) представляє функціональність Mail Merge. За допомогою його властивостей ви можете налаштувати необхідну поведінку перед виконанням операції Mail Merge.

{{% /alert %}}

