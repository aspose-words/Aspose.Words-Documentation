---
title: Обновить поля в Java
second_title: Aspose.Words для Java
articleTitle: Обновлять поля
linktitle: Обновлять поля
description: "Узнайте, как обновить поля в Java. Обновляйте поля программно или используйте автоматическое обновление полей с помощью Java API"
type: docs
weight: 30
url: /ru/java/update-field/
timestamp: 2024-01-27-14-07-04
---

Как правило, поле, вставленное в Microsoft Word, уже содержит актуальное значение. Например, если поле представляет собой формулу или номер страницы, оно будет содержать правильное вычисленное значение для данной версии документа. Но если у вас есть приложение, которое генерирует или изменяет документ с полями, например, объединяет два документа или заполняет его данными, то в идеале все поля должны быть обновлены, чтобы документ был полезным.

## Как обновить поля

Когда документ загружен, Aspose.Words имитирует поведение Microsoft Word, при этом опция автоматического обновления полей отключена. Поведение можно резюмировать следующим образом:

- когда вы открываете/сохраняете документ, поля остаются нетронутыми
- вы можете явно обновить все поля в документе, например, перестроить `TOC`, когда вам нужно
- при печати/отображении в PDF или XPS поля, относящиеся к нумерации страниц в верхних и нижних колонтитулах, обновляются
- когда вы выполняете Mail Merge, все поля обновляются автоматически

### Обновлять поля программным способом

Чтобы явно обновить поля во всем документе, просто вызовите метод [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields). Чтобы обновить поля, содержащиеся в части документа, получите объект [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) и вызовите метод [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields). В Aspose.Words вы можете получить значение **Range** для любого узла в дереве документа, например [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), и т.д., используя свойство [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange). Вы можете обновить результат для отдельного поля, вызвав метод [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update).

### Автоматическое обновление полей, связанных со страницей, во время рендеринга

Когда вы выполняете преобразование документа в формат фиксированной страницы, например, в PDF или XPS, в Aspose.Words автоматически обновляются поля `PAGE`, `PAGEREF`, относящиеся к макету страницы, которые находятся в верхних и нижних колонтитулах документа. Это поведение имитирует поведение Microsoft Word при печати документа.

Если вы хотите обновить все остальные поля в документе, то вам нужно вызвать [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) перед отображением документа.

В следующем примере показано, как обновить все поля перед отрисовкой документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Автоматическое обновление поля во время Mail Merge

Когда вы выполняете mail merge, все поля в документе будут автоматически обновлены. Это связано с тем, что Mail Merge - это случай обновления поля. Программа обнаруживает поле Mail Merge и должна обновить свой результат, что включает в себя получение значения из источника данных и вставку его в поле. Логика, конечно, более сложная, например, когда достигнут конец области документа/mail merge, но есть еще дополнительные данные, которые необходимо объединить, тогда область необходимо продублировать и обновить новый набор полей.

## Обновлять поля с грязным атрибутом

W:dirty - это атрибут уровня поля, который обновляет только указанное вами поле при открытии документа. Он указывает MS Word обновлять только это поле при следующем открытии документа. Вы можете использовать свойство LoadOptions.setUpdateDirtyFields(), чтобы указать, следует ли обновлять поля с атрибутом dirty. Если значение LoadOptions.setUpdateDirtyFields() равно *true*, все поля, имеющие значение *true* для свойства `Field.IsDirty` или `FieldChar.IsDirty`, обновляются при загрузке документа.

В следующем примере кода показано, как обновить поля, имеющие атрибут dirty:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Обновите свойство LastSavedTime Перед сохранением

Вы можете использовать свойство [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) для определения того, следует ли обновлять соответствующее встроенное свойство документа [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) при сохранении документа.

В следующем примере кода показано, как обновить это свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
