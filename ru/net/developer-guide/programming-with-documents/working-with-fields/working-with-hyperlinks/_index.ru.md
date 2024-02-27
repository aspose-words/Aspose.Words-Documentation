---
title: Работа с гиперссылками в C#
second_title: Aspose.Words для .NET
articleTitle: Добавить или изменить гиперссылки
linktitle: Добавить или изменить гиперссылки
description: "Как добавить гиперссылку в документ в C#, используя Aspose.Words вместо .NET."
type: docs
weight: 50
url: /ru/net/working-with-hyperlinks/
---

Гиперссылкой в документах Microsoft Word является поле `HYPERLINK`. В Aspose.Words гиперссылки реализованы через класс [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/).

## Вставить гиперссылку

Используйте метод [InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/), чтобы вставить гиперссылку в документ. Этот метод принимает три параметра:

1. Текст ссылки, которая будет отображаться в документе
2. Назначение ссылки (URL или название закладки внутри документа)
3. Логический параметр, который должен иметь значение true, если `URL` — это имя закладки внутри документа

Метод **InsertHyperlink** всегда добавляет апострофы в начале и конце URL-адреса

{{% alert color="primary" %}}

Обратите внимание, что вам необходимо явно указать форматирование шрифта для отображаемого текста гиперссылки, используя свойство `Font`.

{{% /alert %}}

В следующем примере кода показано, как вставить гиперссылку в документ с помощью [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Замените или измените гиперссылки

Гиперссылка в Microsoft Word документах является полем. Поле в документе Word, как мы говорили ранее, представляет собой сложную структуру, состоящую из множества узлов, включающих начало поля, код поля, разделитель полей, результат поля и конец поля. Поля могут быть вложенными, содержать богатое содержимое и охватывать несколько абзацев или разделов документа.

Чтобы заменить или изменить гиперссылки, необходимо найти гиперссылки в документе и заменить их текст, URL-адреса или и то, и другое.

В следующем примере кода показано, как найти все гиперссылки в документе Word и изменить их `URL` и отображаемое имя:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
