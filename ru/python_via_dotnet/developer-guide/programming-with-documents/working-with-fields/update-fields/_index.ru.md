---
title: Обновление полей Python
second_title: Aspose.Words для Python via .NET
articleTitle: Обновление Fields
linktitle: Обновление Fields
description: "Обновление полей в документе различными способами и использование различных опций в Python."
type: docs
weight: 30
url: /ru/python-net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Как правило, поле вставляется в Microsoft Word Он уже содержит актуальную ценность. Например, если поле представляет собой формулу или номер страницы, оно будет содержать правильно рассчитанное значение для данной версии документа. Но если у вас есть приложение, которое генерирует или изменяет документ с такими полями, как слияние двух документов или заполнение его данными, то в идеале все поля должны быть обновлены, чтобы документ был полезен.

## Как обновить поля

Когда документ загружается, Aspose.Words имитирует поведение Microsoft Word с возможностью автоматического обновления полей отключается. Поведение можно резюмировать следующим образом:

- Когда вы открываете/сохраняете документ, поля остаются нетронутыми
- Вы можете явно обновить все поля в документе (например, восстановить TOC), когда вам нужно
- когда вы печатаете/сдаете в PDF или XPS Обновляются поля, связанные с нумерацией страниц в заголовках/футерах
- когда вы выполняете Mail Merge Все поля обновляются автоматически

### Обновление полей программно

Чтобы явно обновить поля во всем документе, просто позвоните [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). Для обновления полей, содержащихся в части документа, получить [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) объект и вызвать [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/) метод. в Aspose.Words, Вы можете получить a **Range** для любого узла в дереве документа, такого как [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), и т.д. используя [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) собственность. Вы можете обновить результат одного поля, позвонив в [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/) метод.

### Автоматическое обновление полей, связанных со страницами, во время рендеринга

Когда вы выполняете преобразование документа в формат фиксированной страницы, например, в PDF или XPS, затем Aspose.Words будет автоматически обновлять поля, связанные с макетом страницы `PAGE`, `PAGEREF` в заголовках/футерах документа. Это поведение имитирует поведение Microsoft Word При печати документа.

Если вы хотите обновить все остальные поля в документе, то вам нужно позвонить [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) перед оформлением документа.

Следующий пример кода показывает, как обновить все поля перед визуализацией документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Автоматическое обновление поля во время Mail Merge

Когда вы выполняете mail merge Все поля в документе будут автоматически обновлены. Это потому, что Mail Merge Это случай обновления поля. Программа сталкивается с a Mail Merge поле и нуждается в обновлении своего результата, что предполагает захват значения из источника данных и вставку его в поле. Логика, конечно, сложнее, например, когда конец документа.mail merge Регион достигнут, но есть еще дополнительные данные для объединения, затем регион должен быть дублирован и обновлен новый набор полей.

## Обновление полей с грязным атрибутом

W:dirty - это атрибут уровня поля, который обновляет только поле, которое вы указываете при открытии документа. MS Word будет обновлять это поле только при открытии документа. Вы можете использовать [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) свойство указывать, обновлять ли поля с грязным атрибутом. Когда ценность **Обновление_dirty_fields** устанавливается `True` Все поля имеют `True` ценность для [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) или [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) Имущество обновляется при загрузке документов.

Следующий пример кода показывает, как обновить поля с грязным атрибутом:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Обновление свойств LastSavedTime перед экономией

Вы можете использовать [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) Обновить ли соответствующий встроенный документ имущество [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) При сохранении документа.

Следующий пример кода показывает, как обновить это свойство:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

