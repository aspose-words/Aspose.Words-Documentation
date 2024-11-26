---
title: Работа с гиперссылками в Java
second_title: Aspose.Words для Java
articleTitle: Добавление или изменение гиперссылок
linktitle: Добавление или изменение гиперссылок
description: "Как добавить гиперссылку в свой документ с помощью Java."
type: docs
weight: 50
url: /ru/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Гиперссылкой в документах Microsoft Word является поле `HYPERLINK`. В документе Aspose.Words гиперссылки реализуются с помощью класса [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/).

## Вставить гиперссылку

Используйте метод [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean), чтобы вставить гиперссылку в документ. Этот метод принимает три параметра:

1. Текст ссылки, которая будет отображаться в документе
2. Место назначения ссылки (URL или название закладки внутри документа)
3. Логический параметр, который должен иметь значение true, если `URL` является именем закладки внутри документа

Метод **InsertHyperlink** всегда добавляет апострофы в начале и конце URL.

{{% alert color="primary" %}}

Обратите внимание, что вам необходимо явно указать форматирование шрифта для отображаемого текста гиперссылки, используя свойство `Font`.

{{% /alert %}}

В следующем примере кода показано, как вставить гиперссылку в документ с помощью [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Заменять или модифицировать гиперссылки

Гиперссылка в документах Microsoft Word - это поле. Поле в документе Word, как мы говорили ранее, представляет собой сложную структуру, состоящую из множества узлов, которые включают начало поля, код поля, разделитель полей, результат поля и конец поля. Поля могут быть вложенными, содержать обширное содержимое и охватывать несколько абзацев или разделов документа.

Чтобы заменить или модифицировать гиперссылки, необходимо найти гиперссылки в документе и заменить либо их текст, либо URLs, либо и то, и другое.

В следующем примере кода показано, как найти все гиперссылки в документе Word и изменить их `URL` и отображаемое название:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
