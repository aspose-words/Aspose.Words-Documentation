---
title: 克隆 C# 中的文档
second_title: .NET 格式的 Aspose.Words
articleTitle: 克隆文档
linktitle: 克隆文档
type: docs
description: "使用 C# 克隆文档以获取其相同的副本。创建副本时，将克隆原始文档的节点和属性。"
weight: 70
url: /zh/net/clone-a-document/
---

克隆文档是创建原始文档的相同副本的过程，这可以提高性能并避免潜在的内存泄漏。

本文将解释克隆文档的主要用例以及如何使用 Aspose.Words 创建文档克隆。

## 克隆文档的操作

克隆操作使您可以更快地创建文档，因为您无需每次都从文件加载和解析文档。

创建文档的克隆后，您将能够对其进行编辑并对其执行不同的操作，例如，将其与原始文档进行比较、将其附加或插入到另一个文档中。您还可以在将克隆元素或其内容插入到另一个文档之前对其进行修改。

## 创建文档克隆

Aspose.Words 允许您使用 [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/) 方法克隆文档，该方法执行文档的深层复制并返回它。换句话说，它将获得 DOM 的完整副本。 `Clone` 方法可加快文档生成速度，您只需一行代码即可获取文档的副本。

克隆会生成一个与原始文档内容相同的新文档，但具有原始文档的每个 [nodes](https://reference.aspose.com/words/net/aspose.words/node/) 的唯一副本。您还可以使用节点 [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) 方法将克隆操作应用于文档节点，该方法允许您复制带有或不带有子节点的复合文档节点。

{{% alert color="primary" %}}

请注意，应用克隆方法时，所有文档属性都将被克隆。

{{% /alert %}}

以下代码示例演示如何克隆文档并创建该文档中某个部分的副本：

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
