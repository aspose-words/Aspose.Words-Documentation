---
title: Клонировать документ в C#
second_title: Aspose.Words для .NET
articleTitle: Клонировать документ
linktitle: Клонировать документ
type: docs
description: "Клонировать документ, чтобы получить его идентичную копию C#. При создании копии клонируются узлы и свойства оригинального документа."
weight: 70
url: /ru/net/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Клонирование документа - это процесс создания идентичной копии оригинального документа, которая может улучшить производительность и спасти вас от потенциальных утечек памяти.

В данной статье разъясняются основные случаи использования клонирования документа и способы создания документа с использованием клона. Aspose.Words.

## Операции с документами клонирования

Операция клонирования позволяет ускорить процесс создания документов, так как вам не нужно будет каждый раз загружать и анализировать документ из файла.

После создания клона вашего документа вы сможете редактировать его и выполнять на нем различные операции, например, сравнивать его с оригиналом документа, добавлять или вставлять в другой документ. Вы также можете изменить клонированные элементы или их содержимое, прежде чем вставлять их в другой документ.

## Создание клона документа

Aspose.Words позволяет клонировать документ с помощью [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/) метод, который выполняет глубокую копию документа и возвращает его. Таким образом, он получит полную копию DOM. The `Clone` Метод ускоряет генерацию документов, и для получения копии документа вам нужна только одна строка кода.

Клонирование создает новый документ с тем же содержанием, что и оригинал, но с уникальной копией каждого оригинального документа. [nodes](https://reference.aspose.com/words/net/aspose.words/node/). Вы также можете применить операцию клона к узлу документа, используя узел. [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) метод, позволяющий дублировать композитные документные узлы с их дочерними узлами и без них.

{{% alert color="primary" %}}

Отметим, что при применении метода клонирования будут клонироваться все свойства документа.

{{% /alert %}}

Следующий пример кода показывает, как клонировать документ и создать дубликат раздела в этом документе:

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
