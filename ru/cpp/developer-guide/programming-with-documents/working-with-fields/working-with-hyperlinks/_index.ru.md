---
title: Работа с гиперссылками на C++
second_title: Aspose.Words для C++
articleTitle: Добавление или изменение гиперссылок
linktitle: Добавление или изменение гиперссылок
description: "Как добавить гиперссылку в свой документ, используя Aspose.Words для C++."
type: docs
weight: 180
url: /ru/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Гиперссылкой в документах Microsoft Word является поле `HYPERLINK`. В Aspose.Words гиперссылки реализуются с помощью класса [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/).

## Вставка гиперссылки

Используйте метод [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/), чтобы вставить гиперссылку в документ. Этот метод принимает три параметра:

1. Текст ссылки, которая будет отображаться в документе
2. Место назначения ссылки (URL-адрес или название закладки внутри документа)
3. Логический параметр, который должен иметь значение true, если `URL` является именем закладки внутри документа

Метод **InsertHyperlink** всегда добавляет апострофы в начале и конце URL-адреса.

{{% alert color="primary" %}}

Обратите внимание, что вам необходимо явно указать форматирование шрифта для отображаемого текста гиперссылки, используя свойство `Font`.

{{% /alert %}}

В следующем примере кода показано, как вставить гиперссылку в документ с помощью [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Заменять или модифицировать гиперссылки

Гиперссылка в документах Microsoft Word - это поле. Поле в документе Word представляет собой сложную структуру, состоящую из нескольких узлов, которые включают начало поля, код поля, разделитель полей, результат поля и конец поля. Поля могут быть вложенными, содержать обширное содержимое и охватывать несколько абзацев или разделов документа.

Класс `FieldHyperlink` реализует поле `HYPERLINK`.

В следующем примере кода показано, как найти все гиперссылки в документе Word и изменить их `URL` и отображаемое название:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
