---
title: Розбити таблицю в C#
second_title: Aspose.Words для .NET
articleTitle: Сплітній стіл
linktitle: Сплітній стіл
description: "Розбити таблицю в C#й Як розбити одну таблицю на дві окремі столи C#й"
type: docs
weight: 100
url: /uk/net/split-table/
timestamp: 2024-01-27-14-07-04
---

Стіл, представлений в таблиці Aspose.Words Document Object Model, складається з незалежних рядків і клітин, що дозволяє легко розбити стіл.

Щоб маніпулювати столиком, щоб розбити його на два столи, потрібно лише перенести рядки з оригінального столу до нового. Для цього потрібно підібрати ряд, за допомогою якого потрібно розбити стіл.

Ми можемо створити два таблиці з оригінального столу, використовуючи ці прості кроки:

1,1 км Створіть клон столу без затискання дітей, щоб зберегти пересувні рядки і вставити їх після оригінального столу
2,2 км Почати в зазначений ряд, перемістити всі наступні рядки в цей другий стіл

Приклад коду показує, як розбити таблицю на два таблиці за певним рядом:

{{< gist "aspose-words-gists" "4ab56c5443822fa44f4cac1f45af32b7" "split-table.cs" >}}
