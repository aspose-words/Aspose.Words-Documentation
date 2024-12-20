﻿---
title: Виконайте очищення до або під час операції Mail Merge
second_title: Aspose.Words для C++
articleTitle: Виконайте очищення до або під час операції Mail Merge
linktitle: Виконайте очищення до або під час операції Mail Merge
type: docs
description: "Застосовуйте різні параметри очищення та видалення, такі як видалення полів злиття перед виконанням операції Mail Merge або видалення невикористаних областей під час операції Mail Merge."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /uk/cpp/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words дозволяє застосовувати різні параметри очищення та видалення, такі як видалення полів об'єднання перед виконанням операції Mail Merge або видалення невикористаних областей під час операції Mail Merge. У цьому розділі пояснюється, як видалити об'єднані поля та як налаштувати параметр видалення.

## Видалення об'єднаних полів

Коли ви використовуєте будь-який довгий шаблон, створений кимось іншим, можливо, ви захочете видалити всі поля злиття, які вже існують у цьому шаблоні, перш ніж виконувати операцію Mail Merge. Ви можете використовувати метод [DeleteFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/deletefields/), якщо хочете видалити всі Комбіновані поля з документа без виконання операції Mail Merge. На цей метод не впливають жодні параметри видалення властивості [CleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_cleanupoptions/), і при його виконанні видаляються лише Комбіновані поля, а не будь-які поля, що містять, або порожні абзаци.

Наступний приклад коду показує, як видалити всі поля злиття з вашого шаблону без виконання операції Mail Merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-DeleteFields.h" >}}

## Встановіть параметр `Removing`

Aspose.Words дозволяє видаляти непоєднані поля, області та абзаци з шаблону під час операції Mail Merge за допомогою параметрів видалення.

Використовуйте властивість **CleanupOptions** разом з перерахуванням [MailMergeCleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergecleanupoptions/), щоб задати параметр видалення. Вкажіть, які елементи ви хочете видалити, вибравши наступні параметри (ви можете комбінувати кілька).:

* Видалити порожні абзаци
* Видалення невикористовуваних областей
* Видалення невикористовуваних полів
* Видалити містять поля
* Видалення статичних полів
* Видалення порожніх рядків таблиці

Поле злиття можна вважати непоєднаним при виконанні однієї з наступних умов:

1. Якщо поле злиття у джерелі даних не містить стовпця або поля відображення.
2. Якщо поле злиття у джерелі даних містить поле відображення, але дані мають значення null.

{{% alert color="primary" %}}

Якщо ви об'єднуєте дані, використовуючи окремі джерела даних, то ці параметри видалення будуть включені тільки при останньому виклику методу Mail Merge execute.

{{% /alert %}}

### Видалити порожні абзаци

Абзац, що містить лише поля для об'єднання, буде порожнім, коли процес Mail Merge видалить усі поля для об'єднання як не об'єднані. Ці порожні абзаци можуть додати непотрібного простору і змінити зовнішній вигляд Згенерованого звіту. При роботі з абзацами в процесі Mail Merge можуть виникнути дві ситуації:

1. Поле Mail Merge буде об'єднано з порожніми даними.
2. Поле для об'єднання не використовується і буде видалено.

В обох випадках опція **RemoveEmptyParagraphs** автоматично видалить порожні абзаци з документа. Крім того, вона видалить поля `TableStart` та TableEnd для об'єднання, якщо решта абзацу порожня.

Наступний приклад коду показує, як видалити порожні абзаци:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Mail Merge and Reporting-Working with CleanupOptions-RemoveEmptyParagraphs.h" >}}

{{% alert color="primary" %}}

Ви можете завантажити приклад файлу цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Видалення невикористовуваних полів

Aspose.Words дозволяє видалити всі невикористані Mail Merge поля, присвоївши прапору **RemoveUnusedFields** значення **CleanupOptions**. Цей параметр дозволяє видалити Комбіновані поля, які не містять відповідних даних у джерелі даних.

Наступний приклад коду показує, як автоматично видалити всі невикористані поля злиття з документа під час операції Mail Merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveUnusedFields.cpp" >}}

### Видалення містять полів

Поле для об'єднання може міститися всередині іншого поля, такого як поле **IF** або поле формули. Видаліть це зовнішнє поле, коли поле для об'єднання буде об'єднано або видалено з документа.

Наступний приклад коду показує, як видалити поля, що містять поля злиття, з документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveContainingFields.cpp" >}}

**Примітка**

### Видалення порожніх рядків таблиці

Aspose.Words дозволяє видаляти порожні рядки таблиці, присвоївши прапору **RemoveEmptyTableRows** значення **CleanupOptions**. Цей параметр дозволяє видаляти рядки таблиці, що містять порожні поля злиття.

Наступний приклад коду показує, як видалити порожні рядки таблиці, що містять області Mail Merge, з документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveEmptyTableRows.cpp" >}}
