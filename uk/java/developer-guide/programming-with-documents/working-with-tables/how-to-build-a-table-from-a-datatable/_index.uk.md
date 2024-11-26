---
title: Як побудувати таблицю з DataTable в Java
second_title: Aspose.Words для Java
articleTitle: Побудувати столик з DataTable
linktitle: Побудувати столик з DataTable
description: "Приклад заповнення таблиці документів з зовнішньої бази даних Javaй"
type: docs
weight: 130
url: /uk/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

Часто ваша заявка витягне дані з бази даних і зберігає її у вигляді бази даних **DataTable**й Ви можете легко вставити дані в ваш документ як новий стіл і швидко застосувати форматування на весь стіл.

{{% alert color="primary" %}}

Зверніть увагу, що найкращий спосіб вставки даних з **DataTable** в таблицю документів здійснюється за допомогою [Mail Merge з регіонами](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained)й Якщо ви не змогли створити зручний шаблон перед тим, як об'єднати дані з іншими словами, якщо вам потрібно все, щоб стати программатично.

{{% /alert %}}

Використання Aspose.Words, Ви можете легко отримувати дані з бази даних і зберігати його як таблицю:

1,1 км Створити новий [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) об'єкт на вашому [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)й
1,1 км Почати новий стіл за допомогою [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)й
1,1 км Якщо ми хочемо вставити імена кожного стовпчика з нашого **DataTable** як рядок заголовка, потім ітерувати через кожен стовпчик даних і написати імена стовпців в ряд в таблиці.
1,1 км Протипоказання **DataRow** в **DataTable**:
   1. Встановити по кожному об'єкту **DataRow**й
   1. Вставте об'єкт в документ, використовуючи [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)й Метод, який використовується в залежності від типу об'єкта, який вставляється наприклад [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) для тексту та [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) для байтного масиву, який представляє образ.
   1. В кінці обробки ряду даних також закінчується ряд, який створюється [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) за допомогою [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)й
1,1 км Як тільки всі рядки з **DataTable** Опрацьовуємо таблицю за викликом [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)й
1,1 км Нарешті, ми можемо встановити бажаний стиль таблиці за допомогою одного з відповідних властивостей таблиці, таких як [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) автоматично застосувати форматування на весь стіл.
   Наші дані **DataTable** використовується в цьому прикладі:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Приклад коду показує, як виконати вище алгоритм в Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

Метод може бути легко викликаний за допомогою вашого **DocumentBuilder** та дані.

Приклад коду показує, як імпортувати дані з `DataTable` і вставте його в новий стіл в документі:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

Стіл, зображений на малюнку нижче, виробляється за допомогою запуску вище коду.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
