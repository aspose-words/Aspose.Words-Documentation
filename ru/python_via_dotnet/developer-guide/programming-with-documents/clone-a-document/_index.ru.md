---
title: Клонировать документ в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Клонирование документа
linktitle: Клонирование документа
type: docs
description: "Клонируйте документ, чтобы получить его идентичную копию, используя Python. При создании копии клонируются узлы и свойства исходного документа."
weight: 70
url: /ru/python-net/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Клонирование документа - это процесс создания идентичной копии исходного документа, который может повысить производительность и уберечь вас от потенциальных утечек памяти.

В этой статье будут описаны основные варианты использования клонирования документа и как создать клон документа с помощью Aspose.Words.

## Операции с клонируемыми документами

Операция клонирования позволяет ускорить процесс создания документов, так как вам не нужно будет каждый раз загружать и анализировать документ из файла.

После создания клона вашего документа вы сможете редактировать его и выполнять с ним различные операции, например, сравнивать с исходным документом, добавлять или вставлять в другой документ. Вы также можете изменять клонированные элементы или их содержимое перед вставкой в другой документ.

## Создание клона документа

Aspose.Words позволяет вам клонировать документ, используя метод [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/), который выполняет глубокую копию документа и возвращает его. Другими словами, он получит полную копию DOM. Метод [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) ускоряет создание документов, и вам нужна всего одна строка кода, чтобы получить копию вашего документа.

При клонировании создается новый документ с тем же содержимым, что и в оригинале, но с уникальной копией каждого из узлов исходного документа. Вы также можете применить операцию клонирования к узлу документа, используя метод node [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/), который позволяет дублировать узлы составного документа с их дочерними узлами и без них.

{{% alert color="primary" %}}

Обратите внимание, что при применении метода клонирования будут клонированы все свойства документа.

{{% /alert %}}

В следующем примере кода показано, как клонировать документ и создать дубликат раздела в этом документе:

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
