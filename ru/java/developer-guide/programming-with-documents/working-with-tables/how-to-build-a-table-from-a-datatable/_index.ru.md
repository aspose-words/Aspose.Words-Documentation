---
title: Как построить стол из `DataTable` в Java
second_title: Aspose.Words для Java
articleTitle: Постройте стол из `DataTable`
linktitle: Постройте стол из `DataTable`
description: "Пример заполнения таблицы документов из внешней базы данных с использованием Java."
type: docs
weight: 130
url: /ru/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

Часто ваше приложение будет извлекать данные из базы данных и хранить их в виде **DataTable**. Вы можете легко вставить эти данные в документ в качестве новой таблицы и быстро применить форматирование ко всей таблице.

{{% alert color="primary" %}}

Отметим, что предпочтительным способом вставки данных из **DataTable** В таблице документов используется [Mail Merge с регионами](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). Техника, представленная в этой статье, предлагается только в том случае, если вы не можете заранее создать подходящий шаблон для объединения данных, другими словами, если вам нужно, чтобы все происходило программно.

{{% /alert %}}

Использовать Aspose.Words, Вы можете легко получить данные из базы данных и хранить их в виде таблицы:

1. Создать новый [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) объект на вашем [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Начните новый стол, используя [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Если мы хотим вставить имена каждой из колонок из нашего **DataTable** Затем в виде строки заголовка итерировать через каждый столбец данных и записать имена столбцов в строку в таблице.
1. Итерировать через каждый **DataRow** в **DataTable**:
   1. итерировать через каждый объект в **DataRow**.
   1. Вставить объект в документ с использованием [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Используемый метод зависит от типа вставляемого объекта например [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) для текста и [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) для байтового массива, представляющего собой изображение.
   1.В конце обработки строки данных также заканчивается строка, создаваемая [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) используя [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Когда-то все ряды из **DataTable** были обработаны закончить стол, позвонив [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. Наконец, мы можем установить желаемый стиль таблицы, используя одно из соответствующих свойств таблицы. [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) автоматически применять форматирование ко всей таблице.
   Следующие данные в нашей **DataTable** Используется в этом примере:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Следующий пример кода показывает, как выполнить вышеуказанный алгоритм в Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

Этот метод можно легко назвать с помощью **DocumentBuilder** и данные.

Следующий пример кода показывает, как импортировать данные из `DataTable` и включить его в новую таблицу в документе:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

Таблица, показанная на рисунке ниже, создается путем запуска вышеуказанного кода.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
