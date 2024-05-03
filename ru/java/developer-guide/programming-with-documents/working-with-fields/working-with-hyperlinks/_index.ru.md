---
title: Работа с Hyperlinks в Java
second_title: Aspose.Words для Java
articleTitle: Добавить или изменить гиперссылки
linktitle: Добавить или изменить гиперссылки
description: "Как добавить гиперссылку в документ с помощью Java."
type: docs
weight: 50
url: /ru/java/working-with-hyperlinks/
---

Гиперссылка в Microsoft Word Документы являются `HYPERLINK` поле. в Aspose.Words, гиперссылки реализуются через [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) класс.

## Включить гиперссылку

Используйте [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) Способ вставки гиперссылки в документ. Этот метод принимает три параметра:

1. Текст ссылки для отображения в документе
2. Пункт назначения ссылки (URL или название закладки внутри документа)
3. Булевой параметр, который должен быть true если `URL` Название закладки внутри документа

The **InsertHyperlink** Способ всегда добавляет апострофы в начале и конце URL

{{% alert color="primary" %}}

Обратите внимание, что вам нужно указать форматирование шрифта для текста отображения гиперссылки явно с использованием `Font` собственность.

{{% /alert %}}

Следующий пример кода показывает, как вставить гиперссылку в документ, используя [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Заменить или изменить гиперссылки

Гиперссылка Microsoft Word Документы – это поле. Поле в документе Word, как мы говорили ранее, представляет собой сложную структуру, состоящую из нескольких узлов, которые включают начало поля, код поля, разделитель поля, результат поля и конец поля. Поля могут быть вложены, содержать богатое содержание и охватывать несколько абзацев или разделов в документе.

Чтобы заменить или изменить гиперссылки, необходимо найти гиперссылки в документе и заменить их текст, URL-адреса или оба.

Следующий пример кода показывает, как найти все гиперссылки в документе Word и изменить их. `URL` и отображаемое имя:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
