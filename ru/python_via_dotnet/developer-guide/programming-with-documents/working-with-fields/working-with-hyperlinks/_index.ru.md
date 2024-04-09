---
title: Работа с Hyperlinks
second_title: Aspose.Words для Python via .NET
articleTitle: Добавить или изменить гиперссылки
linktitle: Добавить или изменить гиперссылки
description: "Добавление, замена или изменение гиперссылки в документе с использованием Python."
type: docs
weight: 50
url: /ru/python-net/working-with-hyperlinks/
---

Гиперссылка в Microsoft Word Документы являются `HYPERLINK` поле. в Aspose.Words, гиперссылки реализуются через [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) класс.

## Включить гиперссылку

Используйте [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/) Способ вставки гиперссылки в документ. Этот метод принимает три параметра:

1. Текст ссылки для отображения в документе
2. Пункт назначения ссылки (URL или название закладки внутри документа)
3. Булевой параметр, который должен быть true если `URL` имя закладки внутри документа

The **InsertHyperlink** Способ всегда добавляет апострофы в начале и конце URL.

{{% alert color="primary" %}}

Обратите внимание, что вам нужно указать форматирование шрифта для текста отображения гиперссылки явно с использованием `Font` собственность.

{{% /alert %}}

Следующий пример кода показывает, как вставить гиперссылку в документ, используя [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## Заменить или изменить гиперссылки

Гиперссылка Microsoft Word Документы – это поле. Поле в документе Word представляет собой сложную структуру, состоящую из нескольких узлов, которые включают начало поля, код поля, разделитель поля, результат поля и конец поля. Поля могут быть вложены, содержать богатое содержание и охватывать несколько абзацев или разделов в документе

Чтобы заменить или изменить гиперссылки, необходимо найти гиперссылки в документе и заменить их текст, URL-адреса или оба.

Следующий пример кода показывает, как найти все гиперссылки в документе Word и изменить их. `URL` и отображаемое имя:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}
