---
title: Обновление полей Python
second_title: Aspose.Words для Python via .NET
articleTitle: Обновлять поля
linktitle: Обновлять поля
description: "Обновляйте поля в документе разными способами и используя разные опции в Python."
type: docs
weight: 30
url: /ru/python-net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Как правило, поле, вставленное в Microsoft Word, уже содержит актуальное значение. Например, если поле представляет собой формулу или номер страницы, оно будет содержать правильное вычисленное значение для данной версии документа. Но если у вас есть приложение, которое генерирует или изменяет документ с полями, например, объединяет два документа или заполняет его данными, то в идеале все поля должны быть обновлены, чтобы документ был полезным.

## Как обновить поля

Когда документ загружен, Aspose.Words имитирует поведение Microsoft Word, при этом опция автоматического обновления полей отключена. Поведение можно резюмировать следующим образом:

- когда вы открываете/сохраняете документ, поля остаются нетронутыми
- вы можете явно обновить все поля в документе (например, перестроить TOC), когда вам это необходимо
- при печати/отображении в PDF или XPS поля, относящиеся к нумерации страниц в верхних и нижних колонтитулах, обновляются
- когда вы выполняете Mail Merge, все поля обновляются автоматически

### Обновлять поля программным способом

Чтобы явно обновить поля во всем документе, просто вызовите [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). Чтобы обновить поля, содержащиеся в части документа, получите объект [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) и вызовите метод [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/). В Aspose.Words вы можете получить значение **Range** для любого узла в дереве документа, например [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), и т.д., используя свойство [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/). Вы можете обновить результат для отдельного поля, вызвав метод [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/).

### Автоматическое обновление полей, связанных со страницей, во время рендеринга

Когда вы выполняете преобразование документа в формат фиксированной страницы, например, в PDF или XPS, в Aspose.Words автоматически обновляются поля `PAGE`, `PAGEREF`, относящиеся к макету страницы, которые находятся в верхних и нижних колонтитулах документа. Это поведение имитирует поведение Microsoft Word при печати документа.

Если вы хотите обновить все остальные поля в документе, то вам нужно вызвать [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) перед отображением документа.

В следующем примере кода показано, как обновить все поля перед отрисовкой документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Автоматическое обновление поля Во время Mail Merge

Когда вы выполняете команду mail merge, все поля в документе будут автоматически обновлены. Это связано с тем, что Mail Merge - это случай обновления поля. Программа обнаруживает поле Mail Merge и должна обновить свой результат, что включает в себя получение значения из источника данных и вставку его в поле. Логика, конечно, более сложная, например, когда достигнут конец области документа/mail merge, но есть еще дополнительные данные, которые необходимо объединить, тогда область необходимо продублировать и обновить новый набор полей.

## Обновлять поля с грязным атрибутом

W:dirty - это атрибут уровня поля, который обновляет только указанное вами поле при открытии документа. Он указывает MS Word обновлять только это поле при следующем открытии документа. Вы можете использовать свойство [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/), чтобы указать, следует ли обновлять поля с атрибутом dirty. Если для значения **update_dirty_fields** установлено значение `True`, все поля, имеющие значение `True` для свойства [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) или [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/), обновляются при загрузке документа.

В следующем примере кода показано, как обновить поля, имеющие атрибут dirty:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Обновите свойство LastSavedTime Перед сохранением

Вы можете использовать свойство [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) для обновления соответствующего встроенного свойства документа [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) при сохранении документа.

В следующем примере кода показано, как обновить это свойство:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

