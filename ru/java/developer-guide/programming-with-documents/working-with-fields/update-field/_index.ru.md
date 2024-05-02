---
title: Обновление полей в Java
second_title: Aspose.Words для Java
articleTitle: Обновление Fields
linktitle: Обновление Fields
description: "Узнайте, как обновлять поля в Java. Программное обновление полей или автоматическое обновление полей с использованием Java API"
type: docs
weight: 30
url: /ru/java/update-field/
---

Как правило, поле вставляется в Microsoft Word Он уже содержит актуальную ценность. Например, если поле представляет собой формулу или номер страницы, оно будет содержать правильно рассчитанное значение для данной версии документа. Но если у вас есть приложение, которое генерирует или изменяет документ с такими полями, как слияние двух документов или заполнение его данными, то в идеале все поля должны быть обновлены, чтобы документ был полезен.

## Как обновить поля

Когда документ загружается, Aspose.Words имитирует поведение Microsoft Word с возможностью автоматического обновления полей отключается. Поведение можно резюмировать следующим образом:

- Когда вы открываете/сохраняете документ, поля остаются нетронутыми
- Вы можете явно обновить все поля в документе, например, восстановить `TOC` Когда вам нужно
- когда вы печатаете/сдаете в PDF или XPS Обновляются поля, связанные с нумерацией страниц в заголовках/футерах
- когда вы выполняете mail merge Все поля обновляются автоматически

### Обновление полей программно

Чтобы явно обновить поля во всем документе, просто позвоните по адресу: [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) метод. Для обновления полей, содержащихся в части документа, получить [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) объект и вызвать [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) метод. в Aspose.Words, Вы можете получить a **Range** для любого узла в дереве документа, такого как [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), и т.д. используя [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) собственность. Вы можете обновить результат одного поля, позвонив в [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) метод.

### Автоматическое обновление полей, связанных со страницами, во время рендеринга

Когда вы выполняете преобразование документа в формат фиксированной страницы, например, в PDF или XPS, затем Aspose.Words будет автоматически обновлять поля, связанные с макетом страницы `PAGE`, `PAGEREF` в заголовках/футерах документа. Это поведение имитирует поведение Microsoft Word При печати документа.

Если вы хотите обновить все остальные поля в документе, то вам нужно позвонить [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) перед оформлением документа.

Следующий пример показывает, как обновить все поля перед визуализацией документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Автоматическое обновление поля во время Mail Merge

Когда вы выполняете <span notrans="<span notrans=" mail merge"=""></span>"> Все поля в документе будут автоматически обновлены. Это потому, что mail merge Это случай обновления поля. Программа сталкивается с a mail merge поле и нуждается в обновлении своего результата, что предполагает захват значения из источника данных и вставку его в поле. Логика, конечно, сложнее, например, когда конец документа/mail merge Регион достигнут, но есть еще дополнительные данные для объединения, затем регион должен быть дублирован и обновлен новый набор полей.

## Обновление поля с грязным атрибутом

W:dirty - это атрибут уровня поля, который обновляет только поле, которое вы указываете при открытии документа. MS Word будет обновлять это поле только при открытии документа. Вы можете использовать свойство LoadOptions.setUpdateDirtyFields(), чтобы указать, следует ли обновлять поля с помощью грязного атрибута. Когда устанавливается значение LoadOptions.setUpdateDirtyFields() <span notrans="<span notrans=" *true*"=""></span>"> Все поля, имеющие *true* ценность для `Field.IsDirty` или `FieldChar.IsDirty` Имущество обновляется при загрузке документа

Следующий пример кода показывает, как обновить поля с грязным атрибутом:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Обновление свойств LastSavedTime перед экономией

Вы можете использовать [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) Обновить ли соответствующий встроенный документ имущество [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) При сохранении документа.

Следующий пример кода показывает, как обновить это свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
