---
title: Обновить поля C#
second_title: Aspose.Words для .NET
articleTitle: Обновить поля
linktitle: Обновить поля
description: "Узнайте, как обновить поля в C#. Обновите поля программно или используйте автоматическое обновление полей с помощью .NET API."
type: docs
weight: 30
url: /ru/net/update-fields/
---

Обычно поле, вставленное в Microsoft Word, уже содержит актуальное значение. Например, если поле представляет собой формулу или номер страницы, оно будет содержать правильное рассчитанное значение для данной версии документа. Но если у вас есть приложение, которое генерирует или изменяет документ с помощью таких полей, как объединение двух документов или заполнение его данными, то в идеале все поля должны быть обновлены, чтобы документ был полезным.

## Как обновить поля

При загрузке документа Aspose.Words имитирует поведение Microsoft Word с отключенной опцией автоматического обновления полей. Поведение можно резюмировать следующим образом:

- при открытии/сохранении документа поля остаются нетронутыми
- можно явно обновить все поля в документе, например перестроить `TOC`, когда вам нужно
- при печати/рендеринге в PDF или XPS поля, относящиеся к нумерации страниц в верхних/нижних колонтитулах, обновляются
- при выполнении mail merge все поля обновляются автоматически

### Обновить поля программно

Чтобы явно обновить поля во всем документе, просто вызовите метод [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/). Чтобы обновить поля, содержащиеся в части документа, получите объект [Range](https://reference.aspose.com/words/net/aspose.words/range/) и вызовите метод [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/). В Aspose.Words вы можете получить **Range** для любого узла в дереве документа, например [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) и т.д., используя свойство [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/). Вы можете обновить результат одного поля, вызвав метод [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/).

### Автоматическое обновление полей, связанных со страницей, во время рендеринга

Когда вы выполняете преобразование документа в формат с фиксированной страницей, например, в PDF или XPS, Aspose.Words автоматически обновляет поля `PAGE`, `PAGEREF`, связанные с макетом страницы, которые находятся в верхних и нижних колонтитулах документа. Это поведение имитирует поведение Microsoft Word при печати документа.

Если вы хотите обновить все остальные поля в документе, вам нужно позвонить по номеру [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) перед визуализацией документа.

В следующем примере кода показано, как обновить все поля перед визуализацией документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Автоматическое обновление полей в течение Mail Merge

Когда вы выполняете mail merge, все поля в документе будут автоматически обновлены. Это связано с тем, что mail merge — это случай обновления поля. Программа обнаруживает поле mail merge, и ей необходимо обновить его результат, что включает в себя получение значения из источника данных и вставку его в поле. Логика, конечно, сложнее, например, когда достигнут конец региона document/mail merge, но есть еще данные для объединения, тогда регион необходимо продублировать и обновить новый набор полей.

## Обновить поля, имеющие грязный атрибут

w:dirty — это атрибут уровня поля, который будет обновлять только указанное вами поле при открытии документа. Он сообщает MS Word обновлять это поле только при следующем открытии документа. Вы можете использовать свойство [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/), чтобы указать, следует ли обновлять поля с атрибутомгрязный. Если для значения **UpdateDirtyFields** установлено значение *true*, все поля, имеющие значение *true* для свойства [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) или [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/), обновляются при загрузке документа.

В следующем примере кода показано, как обновить поля, имеющие атрибутгрязный:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Обновить свойство LastSavedTime перед сохранением

Вы можете использовать свойство [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/), чтобы обновить соответствующее встроенное свойство документа [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) при сохранении документа.

В следующем примере кода показано, как обновить это свойство:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
