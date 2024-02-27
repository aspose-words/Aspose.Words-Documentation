---
title: Клонировать документ в C#
second_title: Aspose.Words для .NET
articleTitle: Клонировать документ
linktitle: Клонировать документ
type: docs
description: "Клонируйте документ, чтобы получить его идентичную копию, используя C#. При создании копии клонируются узлы и свойства исходного документа."
weight: 70
url: /ru/net/clone-a-document/
---

Клонирование документа — это процесс создания идентичной копии исходного документа, который может повысить производительность и уберечь вас от потенциальных утечек памяти.

В этой статье будут объяснены основные варианты использования клонирования документа и способы создания клона документа с использованием Aspose.Words.

## Операции с клонирующими документами

Операция клонирования позволяет ускорить процесс создания документов, поскольку вам не нужно будет каждый раз загружать и анализировать документ из файла.

После создания клона вашего документа вы сможете редактировать его и выполнять над ним разные операции, например, сравнивать с исходным документом, добавлять или вставлять в другой документ. Вы также можете изменить клонированные элементы или их содержимое перед вставкой их в другой документ.

## Создание клона документа

Aspose.Words позволяет клонировать документ с помощью метода [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/), который выполняет глубокое копирование документа и возвращает его. Другими словами, он получит полную копию DOM. Метод `Clone` ускоряет генерацию документов, и вам понадобится всего одна строка кода, чтобы получить копию вашего документа.

При клонировании создается новый документ с тем же содержимым, что и оригинал, но с уникальной копией каждого из исходных документов [nodes](https://reference.aspose.com/words/net/aspose.words/node/). Вы также можете применить операцию клонирования к узлу документа, используя метод узла [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/), который позволяет дублировать составной документ. узлы документа с дочерними узлами и без них.

{{% alert color="primary" %}}

Обратите внимание, что при применении метода клонирования будут клонированы все свойства документа.

{{% /alert %}}

В следующем примере кода показано, как клонировать документ и создать дубликат раздела в этом документе:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("This is the original document before applying the clone method"); 

// Clone the document.
Document clone = doc.Clone();

// Edit the cloned document.
DocumentBuilder builder = new DocumentBuilder(clone);
builder.Write("Section 1");
builder.InsertBreak(BreakType.SectionBreakNewPage);
builder.Write("Section 2");

// This shows what is in the document originally. The document has two sections.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());

// Duplicate the last section and append the copy to the end of the document.
int lastSectionIdx = clone.Sections.Count - 1;
Section newSection = clone.Sections[lastSectionIdx].Clone();
clone.Sections.Add(newSection);

// Check what the document contains after we changed it.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());
{{< /highlight >}}
