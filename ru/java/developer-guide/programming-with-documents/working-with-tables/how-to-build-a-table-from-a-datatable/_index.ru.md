---
title: Как построить таблицу из DataTable в Java
second_title: Aspose.Words для Java
articleTitle: Создайте таблицу из DataTable
linktitle: Создайте таблицу из DataTable
description: "Пример заполнения таблицы документов из внешней базы данных с помощью Java."
type: docs
weight: 130
url: /ru/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

Часто ваше приложение извлекает данные из базы данных и сохраняет их в виде **DataTable**. Возможно, вы захотите легко вставить эти данные в свой документ в виде новой таблицы и быстро применить форматирование ко всей таблице.

{{% alert color="primary" %}}

Обратите внимание, что предпочтительным способом вставки данных из **DataTable** в таблицу документа является использование [Mail Merge с областями](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained) Метод, представленный в этой статье, рекомендуется только в том случае, если вы не можете заранее создать подходящий шаблон для объединения данных, другими словами, если вам требуется, чтобы все происходило программно.

{{% /alert %}}

Используя Aspose.Words, вы можете легко извлекать данные из базы данных и сохранять их в виде таблицы:

1. Создайте новый объект [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) на вашем [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Начните новую таблицу с помощью [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Если мы хотим вставить имена каждого из столбцов из нашего **DataTable** в качестве строки заголовка, то выполните итерацию по каждому столбцу данных и запишите имена столбцов в строку таблицы.
1. Выполните итерацию по каждому **DataRow** в **DataTable**:
   1. Выполните итерацию по каждому объекту в поле **DataRow**.
   1. Вставьте объект в документ, используя [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Используемый метод зависит от типа вставляемого объекта, например, [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) для текста и [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) для массива байт, представляющего изображение.
   1. В конце обработки строки данных также завершите строку, создаваемую с помощью [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder), используя [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Как только все строки из **DataTable** будут обработаны, завершите работу с таблицей, вызвав [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. Наконец, мы можем задать желаемый стиль таблицы, используя одно из соответствующих свойств таблицы, например [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier), чтобы автоматически применить форматирование ко всей таблице.
   В этом примере используются следующие данные в нашем **DataTable**:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

В следующем примере кода показано, как выполнить описанный выше алгоритм в Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

Затем метод можно легко вызвать, используя ваши **DocumentBuilder** и данные.

В следующем примере кода показано, как импортировать данные из `DataTable` и вставить их в новую таблицу в документе:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

Таблица, показанная на рисунке ниже, создается путем выполнения приведенного выше кода.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
