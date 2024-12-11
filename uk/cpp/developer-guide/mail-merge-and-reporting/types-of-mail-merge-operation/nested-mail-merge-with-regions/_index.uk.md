﻿---
title: Вкладені Mail Merge з регіонами в C++
second_title: Aspose.Words для C++
articleTitle: Вкладені Mail Merge з регіонами
linktitle: Вкладені Mail Merge з регіонами
type: docs
description: "Виконайте операцію Mail Merge з вкладеними областями, використовуючи C++. Вкладене злиття-це функція, яка дозволяє об'єднувати ієрархічні дані з вашого джерела даних у ваш шаблон злиття."
keywords: "mail merge with nested regions c++"
weight: 30
url: /uk/cpp/nested-mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

У деяких сценаріях вам може знадобитися використовувати вкладені Mail Merge області. Вкладене злиття-це функція, яка дозволяє об'єднати ієрархічні дані з вашого джерела даних у шаблон злиття, щоб полегшити заповнення документа. По суті, ієрархічні дані представлені як набір елементів даних, а ієрархічні зв'язки описують, як елементи даних пов'язані між собою (один елемент даних є батьківським для іншого).

Aspose.Words дозволяє виконати операцію Mail Merge з вкладеними областями. Ви можете використовувати цю функцію, якщо у вас є джерело даних, організоване як структура дерева, і ви хочете виконати операцію Mail Merge для заповнення шаблону ієрархічними даними.

{{% alert color="primary" %}}

Вкладений Mail Merge має значення лише при виконанні Mail Merge з регіонами.

{{% /alert %}}

## Що таке вкладений Mail Merge

Область Mail Merge називається вкладеною, якщо у вас є дві або більше областей Mail Merge, одна з яких знаходиться всередині іншої в ієрархічній формі. Зверніть увагу, що кожна область містить дані з однієї таблиці.

Найпоширенішим прикладом вкладеного Mail Merge є замовлення, що містить кілька елементів, де вам потрібно зв'язати багато таблиць даних та представити інформацію як шаблон.

На малюнку нижче показано дві вкладені області, де область *Order* Mail Merge є батьківською для області *Item* Mail Merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Як обробити Mail Merge з вкладеними областями

Дані, які будуть об'єднані в шаблон, можуть бути отримані з різних джерел, в основному з реляційних баз даних або документів XML. У нашому прикладі ми будемо використовувати [SQLite](https://www.sqlite.org/index.html) база даних для зберігання наших даних і завантаження їх за допомогою користувальницької реалізації джерела даних.

На малюнку нижче показано, як дані з таблиці *Order*, передані в вкладені області злиття, будуть пов'язані з таблицею *Item*, а також вихідні дані, згенеровані під час операції злиття.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Як ви можете бачити з вихідного документа, кожне замовлення з таблиці **Order** вставляється в шаблон об'єднання з усіма пов'язаними із замовленням позиціями з таблиці **Item**. Наступне замовлення буде вставлятися разом зі своїми позиціями до тих пір, поки не будуть перераховані всі замовлення і позиції. Порядок вкладання Mail Merge регіонів у шаблон повинен відповідати співвідношенням даних між таблицями у джерелі даних.

## Як створити зв'язки з даними з джерела даних користувача

Реалізуйте інтерфейс [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) для створення зв'язків у структурі "батько-нащадок" вашого користувацького джерела даних. Використовуйте метод [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/), щоб повернути відповідні дочірні дані поточного батьківського запису.

Наступний приклад коду показує, як генерувати рахунок-фактуру, використовуючи вкладені Mail Merge області з [SQLite](https://www.sqlite.org/index.html) база даних з [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}