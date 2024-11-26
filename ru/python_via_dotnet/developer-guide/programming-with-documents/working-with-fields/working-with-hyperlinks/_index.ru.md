---
title: Работа с гиперссылками
second_title: Aspose.Words для Python via .NET
articleTitle: Добавление или изменение гиперссылок
linktitle: Добавление или изменение гиперссылок
description: "Добавьте, замените или измените гиперссылку в документе, используя Python."
type: docs
weight: 50
url: /ru/python-net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Гиперссылкой в документах Microsoft Word является поле `HYPERLINK`. В документе Aspose.Words гиперссылки реализуются с помощью класса [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/).

## Вставка гиперссылки

Используйте метод [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/), чтобы вставить гиперссылку в документ. Этот метод принимает три параметра:

1. Текст ссылки, которая будет отображаться в документе
2. Место назначения ссылки (URL или название закладки внутри документа)
3. Логический параметр, который должен иметь значение true, если `URL` является именем закладки внутри документа

Метод **InsertHyperlink** всегда добавляет апострофы в начале и конце URL.

{{% alert color="primary" %}}

Обратите внимание, что вам необходимо явно указать форматирование шрифта для отображаемого текста гиперссылки, используя свойство `Font`.

{{% /alert %}}

В следующем примере кода показано, как вставить гиперссылку в документ с помощью [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## Заменять или модифицировать гиперссылки

Гиперссылка в документах Microsoft Word - это поле. Поле в документе Word представляет собой сложную структуру, состоящую из нескольких узлов, которые включают начало поля, код поля, разделитель полей, результат поля и конец поля. Поля могут быть вложенными, содержать обширное содержимое и охватывать несколько абзацев или разделов документа.

Чтобы заменить или модифицировать гиперссылки, необходимо найти гиперссылки в документе и заменить либо их текст, либо URLs, либо и то, и другое.

В следующем примере кода показано, как найти все гиперссылки в документе Word и изменить их `URL` и отображаемое название:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}
