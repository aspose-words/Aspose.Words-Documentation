﻿---
title: Работа с системой управления контентом SDT
second_title: Aspose.Words для C++
articleTitle: Работа с системой управления контентом SDT
linktitle: Работа с системой управления контентом SDT
type: docs
description: "Расширенное управление содержимым документов, как создавать элементы управления содержимым (структурированные теги документов) и манипулировать ими с помощью C++."
weight: 390
url: /ru/cpp/structured-document-tags-or-content-control/
---

В Microsoft Word вы можете создать форму, начав с шаблона и добавив элементы управления содержимым, включая флажки, текстовые поля, средства выбора даты и выпадающие списки. В Aspose.Words тег структурированного документа или элемент управления содержимым из любого документа, загруженного в Aspose.Words, импортируется как узел StructuredDocumentTag. Теги структурированного документа (SDT или content control) позволяют внедрять в документ семантику, определяемую пользователем, а также его поведение и внешний вид. Тег StructuredDocumentTag может встречаться в документе в следующих местах:

- На уровне блоков - между абзацами и таблицами, в качестве дочернего элемента основного текста, заголовка, комментария, сноски или узла формы
- На уровне строк - среди строк в таблице, как дочерний элемент узла таблицы
- На уровне ячейки - среди ячеек в строке таблицы, как дочерний элемент узла строки
- Встроенный уровень - среди встроенного содержимого внутри, как дочерний элемент абзаца
- Вложенный в другой StructuredDocumentTag

## Как задать стиль для форматирования текста, введенного в элемент управления содержимым

Если вы хотите задать стиль управления содержимым, вы можете использовать свойства `StructuredDocumentTag.Style` или `StructuredDocumentTag.StyleName`. Когда вы вводите текст в content control в выходном документе, набранный текст будет иметь стиль "Цитата".

{{% alert color="primary" %}}

Обратите внимание, что к элементу управления контентом могут быть применены только связанные стили и стили символов. Исключение InvalidOperationException ("Невозможно применить этот стиль к SDT") возникает, когда применяется стиль, который существует, но не связан, или стиль символов.

{{% /alert %}}

В следующем примере кода показано, как задать стиль управления контентом:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## Работа с повторяющимся содержимым раздела

Элемент управления содержимым повторяющегося раздела позволяет повторять содержимое, содержащееся в нем. Используя Aspose.Words, можно создать узлы тегов структурированного документа для типов элементов повторяющегося раздела и повторяющегося раздела, и для этой цели тип перечисления SdtType предоставляет свойство **RepeatingSectionItem**.

В следующем примере кода показано, как привязать элемент управления содержимым повторяющегося раздела к таблице:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}