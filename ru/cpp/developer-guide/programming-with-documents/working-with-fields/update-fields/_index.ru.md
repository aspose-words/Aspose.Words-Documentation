---
title: Обновление полей в C++
second_title: Aspose.Words для C++
articleTitle: Обновлять поля
linktitle: Обновлять поля
description: "Узнайте, как обновлять поля в C++. Обновляйте поля программно или используйте автоматическое обновление полей с помощью C++ API."
type: docs
weight: 30
url: /ru/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

Как правило, поле, вставленное в Microsoft Word, уже содержит актуальное значение. Например, если поле представляет собой формулу или номер страницы, оно будет содержать правильное вычисленное значение для данной версии документа. Но если у вас есть приложение, которое генерирует или изменяет документ с полями, например, объединяет два документа или заполняет его данными, то в идеале все поля должны быть обновлены, чтобы документ был полезным.

## Как обновить поля

Когда документ загружен, Aspose.Words имитирует поведение Microsoft Word, при этом функция автоматического обновления полей отключена. Поведение можно резюмировать следующим образом:

- когда вы открываете/сохраняете документ, поля остаются нетронутыми
- вы можете явно обновить все поля в документе, например, перестроить `TOC`, когда вам нужно
- при рендеринге в PDF или XPS поля, относящиеся к нумерации страниц в верхних и нижних колонтитулах, обновляются
- когда вы выполняете mail merge, все поля обновляются автоматически

### Обновлять поля программным способом

Чтобы явно обновить поля во всем документе, просто вызовите метод [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/). Чтобы обновить поля, содержащиеся в части документа, получите объект [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) и вызовите метод [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/). В Aspose.Words вы можете получить значение **Range** для любого узла в дереве документа, например [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), и т.д., используя свойство [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/).Вы можете обновить результат для отдельного поля, вызвав метод [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/).

### Автоматическое обновление полей, связанных со страницей, во время рендеринга

Когда вы выполняете преобразование документа в формат фиксированной страницы, например, в PDF или XPS, в Aspose.Words автоматически обновляются поля, связанные с макетом страницы `PAGE`, `PAGEREF`, которые находятся в верхних и нижних колонтитулах документа. Это поведение имитирует поведение Microsoft Word при печати документа.

Если вы хотите обновить все остальные поля в документе, вам нужно вызвать [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) перед отображением документа.

В следующем примере кода показано, как обновить все поля перед отрисовкой документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Автоматическое обновление поля Во время Mail Merge

Когда вы выполняете команду mail merge, все поля в документе будут автоматически обновлены. Это связано с тем, что mail merge - это случай обновления поля. Программа обнаруживает поле mail merge и должна обновить свой результат, что включает в себя получение значения из источника данных и вставку его в поле. Логика, конечно, более сложная, например, когда достигнут конец области документа/mail merge, но есть еще дополнительные данные, которые необходимо объединить, тогда область необходимо продублировать и обновить новый набор полей.

## Обновите свойство LastSavedTime Перед сохранением

Вы можете использовать свойство [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) для обновления соответствующего встроенного свойства документа [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) при сохранении документа.

В следующем примере кода показано, как обновить это свойство:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


