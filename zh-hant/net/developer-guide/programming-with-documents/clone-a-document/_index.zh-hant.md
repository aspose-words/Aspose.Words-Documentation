---
title: 在C#中複製一個文件
second_title: Aspose.Words for .NET
articleTitle: 清除文件
linktitle: 清除文件
type: docs
description: "透過 C# 克隆文件以取得其複製版本。 當建立一份複本時，原始文件的節點和屬性會複製出來。"
weight: 70
url: /zh-hant/net/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

複製文件是建立原始文件的完全副本的過程，它可以改善效能並避免潛在的記憶體洩漏。

本文將說明複製文件的主要使用案例，以及如何使用 Aspose.Words 來建立一份文件的副本。

## 透過複製文件進行的操作

複製操作允許您在創建文件時加快過程，因為您不需要每次都從檔案中載入並解析一個文件。

在複製文件後，你將能夠編輯它並進行不同的操作，例如將其與原始文件比較、附加或插入到另一份文件中。 您也可以在將複製元素插入另一文件之前，修改元素或它們的內容。

## 建立分身

Aspose.Words 讓您透過以 [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/) 方法複製文件，該方法會對文件進行深層複製並返回它。 换句話說，它將獲得該 DOM 的完整副本。  `Clone`的方法加速了文檔的生成，而只需一行代碼即可獲得您文檔的副本。

複製會產生一個與原檔相同內容的新檔案，但每個原檔的[nodes](https://reference.aspose.com/words/net/aspose.words/node/)都有一個獨特的副本。 您也可以透過使用 [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) 節點方法將複製運算符套用到文書節點上，這可讓您複製具有或不具有子節點的複合文書節點。

{{% alert color="primary" %}}

請注意，在應用複製方法時，所有文件屬性都會被複製。

{{% /alert %}}

接下來的程式碼範例說明如何複製文件並建立該文件中某一段的複本：

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
