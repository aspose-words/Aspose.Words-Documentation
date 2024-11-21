---
title: Робота з Футнот і Енднот в Java
second_title: Aspose.Words для Java
articleTitle: Робота з ногами та Endnote
linktitle: Робота з ногами та Endnote
description: "Як маніпулювати примітки і ендоноти за допомогою Javaй"
type: docs
weight: 160
url: /uk/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words також надає деякі класи, методи та властивості для роботи з ногами та ендонотами.

## Вставити Endnote і встановити параметри кількості

Якщо ви хочете вставити примітку або кінцеву програму в документі Word, будь ласка, використовуйте [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) метод. Цей метод вставляє примітку або кінцеву в документ.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) і [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) класи представляють варіанти занурення ніг і ендоноти.

Наприклад, наступний код показує, як вставити кінцеві в документ і встановити параметри номерування:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Встановити кількість колонок для ніг

Ви можете встановити кількість стовпчиків для розмітки [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) майно. Якщо ця властивість має значення 0, площа приміток відформатована кількістю стовпчиків на основі кількості стовпців на сторінці відображення.

Приклад наступного коду показує, як встановити кількість стовпчиків для макета позначки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Встановити позицію Футно та EndNote

Посада примітки може бути в нижній частині кожної сторінки або приманити текст на кожній сторінці. Кінцева позиція може бути в кінці розділу або в кінці документа.

Наприклад, наступний код показує, як встановити позицію примітки та ендоноти:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
