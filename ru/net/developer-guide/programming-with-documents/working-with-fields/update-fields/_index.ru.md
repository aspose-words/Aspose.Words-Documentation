---
title: Обновление Fields C#
second_title: Aspose.Words для .NET
articleTitle: Обновление Fields
linktitle: Обновление Fields
description: "Узнайте, как обновлять поля в C#. Программное обновление полей или автоматическое обновление полей с использованием .NET API."
type: docs
weight: 30
url: /ru/net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Как правило, поле вставляется в Microsoft Word Он уже содержит актуальную ценность. Например, если поле представляет собой формулу или номер страницы, оно будет содержать правильно рассчитанное значение для данной версии документа. Но если у вас есть приложение, которое генерирует или изменяет документ с такими полями, как слияние двух документов или заполнение его данными, то в идеале все поля должны быть обновлены, чтобы документ был полезен.

## Как обновить поля

Когда документ загружается, Aspose.Words имитирует поведение Microsoft Word с возможностью автоматического обновления полей отключается. Поведение можно резюмировать следующим образом:

- Когда вы открываете/сохраняете документ, поля остаются нетронутыми
- Вы можете явно обновить все поля в документе, например, восстановить `TOC`, Когда вам нужно
- когда вы печатаете/сдаете в PDF или XPS Обновляются поля, связанные с нумерацией страниц в заголовках/футерах
- когда вы выполняете Mail Merge Все поля обновляются автоматически

### Обновление полей программно

Чтобы явно обновить поля во всем документе, просто позвоните по адресу: [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) метод. Для обновления полей, содержащихся в части документа, получить [Range](https://reference.aspose.com/words/net/aspose.words/range/) объект и вызвать [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/) метод. в Aspose.Words, Вы можете получить a **Range** для любого узла в дереве документа, такого как [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) , [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), и т.д. используя [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) собственность. Вы можете обновить результат одного поля, позвонив в [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/) метод.

### Автоматическое обновление полей, связанных со страницами, во время рендеринга

Когда вы выполняете преобразование документа в формат фиксированной страницы, например, в PDF или XPS, затем Aspose.Words будет автоматически обновлять поля, связанные с макетом страницы `PAGE`, `PAGEREF` в заголовках/футерах документа. Это поведение имитирует поведение Microsoft Word При печати документа.

Если вы хотите обновить все остальные поля в документе, то вам нужно позвонить [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) перед оформлением документа.

Следующий пример кода показывает, как обновить все поля перед визуализацией документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Автоматическое обновление поля во время Mail Merge

Когда вы выполняете <p notrans="<p notrans=" mail merge"=""></p>"> Все поля в документе будут автоматически обновлены. Это потому, что Mail Merge Это случай обновления поля. Программа сталкивается с a Mail Merge поле и нуждается в обновлении своего результата, что предполагает захват значения из источника данных и вставку его в поле. Логика, конечно, сложнее, например, когда конец документа.mail merge Регион достигнут, но есть еще дополнительные данные для объединения, затем регион должен быть дублирован и обновлен новый набор полей.

## Обновление полей с грязным атрибутом

W:dirty - это атрибут уровня поля, который обновляет только поле, которое вы указываете при открытии документа. MS Word будет обновлять это поле только при открытии документа. Вы можете использовать [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) свойство указывать, обновлять ли поля с грязным атрибутом. Когда ценность **UpdateDirtyFields** устанавливается <p notrans="<p notrans=" *true*"=""></p>"> Все поля имеют *true* ценность для [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) или [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) Имущество обновляется при загрузке документов.

Следующий пример кода показывает, как обновить поля с грязным атрибутом:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Обновление свойств LastSavedTime перед экономией

Вы можете использовать [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) Обновить ли соответствующий встроенный документ имущество [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) При сохранении документа.

Следующий пример кода показывает, как обновить это свойство:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
