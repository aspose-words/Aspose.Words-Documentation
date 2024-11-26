---
title: Настройка свойств поля
second_title: Aspose.Words для Java
articleTitle: Настройка свойств поля
linktitle: Настройка свойств поля
description: "Узнайте, как настроить свойства полей в Java. Переименуйте объединяемые поля или получите результаты для полей без узла-разделителя в Java."
type: docs
weight: 27
url: /ru/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words предоставляет возможность программного взаимодействия с различными свойствами полей. В этой статье мы рассмотрим несколько примеров, чтобы вы поняли основной принцип работы со свойствами полей. Вы можете ознакомиться с полным списком свойств для каждого типа полей в соответствующем классе.

## Обновление свойств поля

Иногда пользователям требуется изменить значение свойства поля. Например, обновите свойство [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) поля `AUTHOR` или измените свойство [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) поля `MERGEFIELD`.

В следующем примере кода показано, как переименовать объединяемые поля в документе Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Результат отображения поля

Aspose.Words предоставляет свойство для получения результата по полю для полей, у которых нет узла-разделителя полей. Мы называем это "поддельным результатом" или отображаемым результатом; MS Word отображает его в документе, вычисляя значение поля "на лету", но в модели документа такого значения нет.

В следующем примере кода показано использование свойства [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
