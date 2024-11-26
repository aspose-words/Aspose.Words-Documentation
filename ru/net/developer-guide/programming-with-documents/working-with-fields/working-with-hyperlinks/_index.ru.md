---
title: Работа с Hyperlinks в C#
second_title: Aspose.Words для .NET
articleTitle: Добавить или изменить гиперссылки
linktitle: Добавить или изменить гиперссылки
description: "Как добавить гиперссылку в документ C# использовать Aspose.Words для .NET."
type: docs
weight: 50
url: /ru/net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Гиперссылка в Microsoft Word Документы являются `HYPERLINK` поле. в Aspose.Words, гиперссылки реализуются через [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) класс.

## Включить гиперссылку

Используйте [InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/) Способ вставки гиперссылки в документ. Этот метод принимает три параметра:

1. Текст ссылки для отображения в документе
2. Пункт назначения ссылки (URL или название закладки внутри документа)
3. Булевой параметр, который должен быть true если `URL` имя закладки внутри документа

The **InsertHyperlink** Способ всегда добавляет апострофы в начале и конце URL

{{% alert color="primary" %}}

Обратите внимание, что вам нужно указать форматирование шрифта для текста отображения гиперссылки явно с использованием `Font` собственность.

{{% /alert %}}

Следующий пример кода показывает, как вставить гиперссылку в документ, используя [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Заменить или изменить гиперссылки

Гиперссылка Microsoft Word Документы – это поле. Поле в документе Word, как мы говорили ранее, представляет собой сложную структуру, состоящую из нескольких узлов, которые включают начало поля, код поля, разделитель поля, результат поля и конец поля. Поля могут быть вложены, содержать богатое содержание и охватывать несколько абзацев или разделов в документе.

Чтобы заменить или изменить гиперссылки, необходимо найти гиперссылки в документе и заменить их текст, URL-адреса или оба.

Следующий пример кода показывает, как найти все гиперссылки в документе Word и изменить их. `URL` и отображаемое имя:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
