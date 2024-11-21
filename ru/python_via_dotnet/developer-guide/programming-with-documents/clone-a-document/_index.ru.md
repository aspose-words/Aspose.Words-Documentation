---
title: Клонировать документ в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Клонировать документ
linktitle: Клонировать документ
type: docs
description: "Клонировать документ, чтобы получить его идентичную копию Python. При создании копии клонируются узлы и свойства оригинального документа."
weight: 70
url: /ru/python-net/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Клонирование документа - это процесс создания идентичной копии оригинального документа, которая может улучшить производительность и спасти вас от потенциальных утечек памяти.

В данной статье разъясняются основные случаи использования клонирования документа и способы создания документа с использованием клона. Aspose.Words.

## Операции с документами клонирования

Операция клонирования позволяет ускорить процесс создания документов, так как вам не нужно будет каждый раз загружать и анализировать документ из файла.

После создания клона вашего документа вы сможете редактировать его и выполнять на нем различные операции, например, сравнивать его с оригиналом документа, добавлять или вставлять в другой документ. Вы также можете изменить клонированные элементы или их содержимое, прежде чем вставлять их в другой документ.

## Создание клона документа

Aspose.Words позволяет клонировать документ с помощью [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) метод, который выполняет глубокую копию документа и возвращает его. Таким образом, он получит полную копию DOM. The [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) Метод ускоряет генерацию документов, и для получения копии документа вам нужна только одна строка кода.

Клонирование создает новый документ с тем же содержанием, что и оригинал, но с уникальной копией каждого из узлов оригинального документа. Вы также можете применить операцию клона к узлу документа, используя узел. [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) метод, позволяющий дублировать композитные документные узлы с их дочерними узлами и без них.

{{% alert color="primary" %}}

Отметим, что при применении метода клонирования будут клонироваться все свойства документа.

{{% /alert %}}

Следующий пример кода показывает, как клонировать документ и создать дубликат раздела в этом документе:

{{< highlight python >}}
# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("This is the original document before applying the clone method")

# Clone the document.
clone = doc.clone().as_document()

# Edit the cloned document.
builder = aw.DocumentBuilder(clone)
builder.write("Section 1")
builder.insert_break(aw.BreakType.SECTION_BREAK_NEW_PAGE)
builder.write("Section 2")

# This shows what is in the document originally. The document has two sections.
self.assertEqual(clone.sections.count, 2)

# Duplicate the last section and append the copy to the end of the document.
lastSectionIdx = clone.sections.count - 1
newSection = clone.sections[lastSectionIdx].clone()
clone.sections.add(newSection)

# Check what the document contains after we changed it.
self.assertEqual(clone.sections.count, 3)
{{< /highlight >}}
