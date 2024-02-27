---
title: Обновление полей Python
second_title: Aspose.Words для Python via .NET
articleTitle: Обновить поля
linktitle: Обновить поля
description: "Обновляйте поля в документе разными способами и используя другую опцию в Python."
type: docs
weight: 30
url: /ru/python-net/update-fields/
---

Обычно поле, вставленное в Microsoft Word, уже содержит актуальное значение. Например, если поле представляет собой формулу или номер страницы, оно будет содержать правильное рассчитанное значение для данной версии документа. Но если у вас есть приложение, которое генерирует или изменяет документ с помощью таких полей, как объединение двух документов или заполнение его данными, то в идеале все поля должны быть обновлены, чтобы документ был полезным.

## Как обновить поля

При загрузке документа Aspose.Words имитирует поведение Microsoft Word, но опция автоматического обновления полей отключена. Поведение можно резюмировать следующим образом:

- при открытии/сохранении документа поля остаются нетронутыми
- вы можете явно обновить все поля в документе (например, перестроить оглавление), когда вам нужно
- при печати/рендеринге в PDF или XPS обновляются поля, связанные с нумерацией страниц в верхних/нижних колонтитулах
- при выполнении mail merge все поля обновляются автоматически

### Обновить поля программно

Чтобы явно обновить поля во всем документе, просто вызовите [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). Чтобы обновить поля, содержащиеся в части документа, получите объект [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) и вызовите метод [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/). В Aspose.Words вы можете получить **Range** для любого узла в дереве документа, например [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) и т.д., используя свойство [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/). Вы можете обновить результат одного поля, вызвав метод [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/).

### Автоматическое обновление полей, связанных со страницей, во время рендеринга

Когда вы выполняете преобразование документа в формат с фиксированной страницей, например, в PDF или XPS, Aspose.Words автоматически обновляет поля `PAGE`, `PAGEREF`, связанные с макетом страницы, которые находятся в верхних и нижних колонтитулах документа. Это поведение имитирует поведение Microsoft Word при печати документа.

Если вы хотите обновить все остальные поля в документе, вам необходимо позвонить по номеру [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) перед визуализацией документа.

В следующем примере кода показано, как обновить все поля перед визуализацией документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Автоматическое обновление поля в течение Mail Merge

Когда вы выполняете mail merge, все поля в документе будут автоматически обновлены. Это связано с тем, что mail merge — это случай обновления поля. Программа обнаруживает поле mail merge, и ей необходимо обновить его результат, что включает в себя получение значения из источника данных и вставку его в поле. Логика, конечно, сложнее, например, когда достигнут конец региона document/mail merge, но есть еще данные для объединения, тогда регион необходимо продублировать и обновить новый набор полей.

## Обновить поля, имеющие грязный атрибут

w:dirty — это атрибут уровня поля, который будет обновлять только указанное вами поле при открытии документа. Он сообщает MS Word обновлять это поле только при следующем открытии документа. Вы можете использовать свойство [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/), чтобы указать, следует ли обновлять поля с атрибутомгрязный. Если для значения **update_dirty_fields** установлено значение `True`, все поля, имеющие значение `True` для свойства [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) или [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/), обновляются при загрузке документа.

В следующем примере кода показано, как обновить поля, имеющие атрибутгрязный:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Обновить свойство LastSavedTime перед сохранением

Вы можете использовать свойство [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/), чтобы обновить соответствующее встроенное свойство документа [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) при сохранении документа.

В следующем примере кода показано, как обновить это свойство:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

