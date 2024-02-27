---
title: C# でドキュメントのクローンを作成する
second_title: .NET用Aspose.Words
articleTitle: ドキュメントのクローンを作成する
linktitle: ドキュメントのクローンを作成する
type: docs
description: "C# を使用してドキュメントのクローンを作成し、同一のコピーを取得します。コピーを作成すると、元のドキュメントのノードとプロパティが複製されます。"
weight: 70
url: /ja/net/clone-a-document/
---

ドキュメントのクローン作成は、元のドキュメントの同一のコピーを作成するプロセスであり、これによりパフォーマンスが向上し、潜在的なメモリ リークを防ぐことができます。

この記事では、ドキュメントのクローン作成の主な使用例と、Aspose.Words を使用してドキュメントのクローンを作成する方法について説明します。

## クローンドキュメントの操作

クローン操作を使用すると、毎回ファイルからドキュメントをロードして解析する必要がなくなるため、ドキュメントの作成プロセスを高速化できます。

ドキュメントのクローンを作成した後、それを編集して、元のドキュメントと比較したり、別のドキュメントに追加または挿入したりするなど、さまざまな操作を実行できるようになります。クローン要素またはそのコンテンツを別のドキュメントに挿入する前に変更することもできます。

## ドキュメントクローンの作成

Aspose.Words では、ドキュメントのディープ コピーを実行してそれを返す [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/) メソッドを使用してドキュメントのクローンを作成できます。つまり、DOM の完全なコピーを取得します。 `Clone` 方式を使用するとドキュメントの生成が高速化され、ドキュメントのコピーを取得するために必要なコードは 1 行だけです。

クローンを作成すると、元のドキュメントと同じ内容を持つ新しいドキュメントが作成されますが、元のドキュメントの各 [nodes](https://reference.aspose.com/words/net/aspose.words/node/) の一意のコピーが含まれます。ノード [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) メソッドを使用して、ドキュメント ノードにクローン操作を適用することもできます。これにより、子ノードの有無にかかわらず、複合ドキュメント ノードを複製できます。

{{% alert color="primary" %}}

クローン作成メソッドを適用すると、すべてのドキュメント プロパティがクローンされることに注意してください。

{{% /alert %}}

次のコード例は、ドキュメントのクローンを作成し、そのドキュメント内のセクションの複製を作成する方法を示しています。

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
