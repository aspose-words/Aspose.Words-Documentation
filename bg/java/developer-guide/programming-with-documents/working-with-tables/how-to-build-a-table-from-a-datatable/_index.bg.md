---
title: Как да се изгради таблица от DataTable в Java
second_title: Aspose.Words вместо Java
articleTitle: Изграждане на таблица от DataTable
linktitle: Изграждане на таблица от DataTable
description: "Пример за попълване на таблица с документи от външна база данни, като се използва Java."
type: docs
weight: 130
url: /bg/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

Често вашето приложение ще изтегли данни от база данни и ще го съхранява под формата на **DataTable**. Можете лесно да въведете тези данни в документа си като нова таблица и бързо да приложите форматиране на цялата таблица.

{{% alert color="primary" %}}

Имайте предвид, че предпочитан начин за въвеждане на данни от a **DataTable** в таблица с документи е чрез използване [Mail Merge с региони](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). Техниката, представена в тази статия, се предлага само ако не сте в състояние да създадете подходящ шаблон предварително, за да се слеят данни, с други думи, ако искате всичко да се случи програмно.

{{% /alert %}}

Използване Aspose.Words, лесно можете да извлечете данни от база данни и да ги съхранявате като таблица:

1. Създаване на нов [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Възразявам. [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Стартиране на нова таблица с използване [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Ако искаме да вмъкнем имената на всяка от колоните от нашите **DataTable** като заглавен ред след това итерат през всяка колона данни и да запишете имената на колоните в ред в таблицата.
1. Итерат през всеки **DataRow** в **DataTable**:
   1. Итерат през всеки обект в **DataRow**.
   1. Въведете обекта в документа, като използвате [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Използваният метод зависи от вида на обекта, който се вмъква, например [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) за текст и [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) за байт масив, който представлява изображение.
   1. В края на обработката на реда от данни също завършват реда, създаден от [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) чрез [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. След като всички редове от **DataTable** Бяха обработени, завърши таблицата като се обади [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. И накрая, можем да зададем желания стил на таблицата с помощта на един от подходящите свойства на таблицата, като [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) автоматично прилагане на форматиране към цялата таблица.
   Следните данни в нашия **DataTable** е използван в този пример:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Следният пример за код показва как да се изпълни горния алгоритъм в Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

След това методът може лесно да се нарече с помощта на вашия **DocumentBuilder** и данни.

Следният пример за код показва как да се внасят данните от a `DataTable` и да го поставите в нова таблица в документа:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

Таблицата, показана на снимката по-долу, се произвежда чрез използване на горния код.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
