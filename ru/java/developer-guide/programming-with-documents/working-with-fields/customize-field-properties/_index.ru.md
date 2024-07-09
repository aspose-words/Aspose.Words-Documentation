---
title: Настройка полевых свойств
second_title: Aspose.Words для Java
articleTitle: Настройка полевых свойств
linktitle: Настройка полевых свойств
description: "Узнайте, как настроить свойства поля в Java. Переименовать поля слияния или получить результаты для полей без узла сепаратора Java."
type: docs
weight: 27
url: /ru/java/customize-field-properties/
---

Aspose.Words обеспечивает возможность программно взаимодействовать с различными свойствами поля. В этой статье мы рассмотрим несколько примеров, чтобы вы поняли основной принцип работы со свойствами поля. Вы можете увидеть полный список свойств для каждого типа поля в соответствующем классе.

## Обновление Field Property Update

Иногда пользователям необходимо изменить стоимость недвижимости. Например, обновить [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) имуществом, `AUTHOR` Поле или изменить [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) имуществом, `MERGEFIELD` поле.

Следующий пример кода показывает, как переименовать поля слияния в документ Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Результат Field Display

Aspose.Words обеспечивает свойство получать результат поля для полей, не имеющих узла разделителя поля. Мы называем это "фальшивым результатом" или результатом отображения; MS Word отображает его в документе, вычисляя значение поля на лету, но такого значения в модели документа нет.

Следующий пример кода показывает использование [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) имущество:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
