---
title: Настройки на полето
second_title: Aspose.Words вместо Java
articleTitle: Настройки на полето
linktitle: Настройки на полето
description: "Научете как да персонализирате свойствата на полето в Java. Преименуване на полета за сливане или получаване на резултати за полета без разделител възел в Java."
type: docs
weight: 27
url: /bg/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words осигурява способността за програмно взаимодействие с различни свойства на полето. В тази статия ще разгледаме няколко примера, така че да разберете основния принцип на работа с полеви имоти. Можете да видите пълния списък на свойствата за всеки тип поле в съответния клас.

## Обновяване на имота

Понякога потребителите трябва да променят стойността на имота. Например, актуализиране на [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) собственост на `AUTHOR` област или промяна на [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) собственост на `MERGEFIELD` Поле.

Следният пример за код показва как да преименувате полетата за сливане в Word документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Резултат от дисплея

Aspose.Words предоставя свойство за получаване на резултата от полето за полета, които нямат разделителен възел на полето. Наричаме това "фалшив резултат" или резултат от дисплея; MS Word го показва в документа чрез изчисляване на стойността на полето в движение, но няма такава стойност в модела на документа.

Следният пример за код показва използването на [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) собственост:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
