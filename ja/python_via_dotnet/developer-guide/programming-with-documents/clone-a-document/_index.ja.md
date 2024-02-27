---
title: Python でドキュメントのクローンを作成する
second_title: Python via .NET用Aspose.Words
articleTitle: ドキュメントのクローンを作成する
linktitle: ドキュメントのクローンを作成する
type: docs
description: "Python を使用してドキュメントのクローンを作成し、同一のコピーを取得します。コピーを作成すると、元のドキュメントのノードとプロパティが複製されます。"
weight: 70
url: /ja/python-net/clone-a-document/
---

ドキュメントのクローン作成は、元のドキュメントの同一のコピーを作成するプロセスです。これにより、パフォーマンスが向上し、潜在的なメモリ リークを防ぐことができます。

この記事では、ドキュメントのクローン作成の主な使用例と、Aspose.Words を使用してドキュメントのクローンを作成する方法について説明します。

## クローンドキュメントの操作

クローン操作を使用すると、毎回ファイルからドキュメントをロードして解析する必要がなくなるため、ドキュメントの作成プロセスを高速化できます。

ドキュメントのクローンを作成した後、それを編集して、元のドキュメントと比較したり、別のドキュメントに追加または挿入したりするなど、さまざまな操作を実行できるようになります。クローン要素またはそのコンテンツを別のドキュメントに挿入する前に変更することもできます。

## ドキュメントクローンの作成

Aspose.Words では、ドキュメントのディープ コピーを実行してそれを返す [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) メソッドを使用してドキュメントのクローンを作成できます。つまり、DOM の完全なコピーを取得します。 [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) メソッドを使用するとドキュメントの生成が高速化され、ドキュメントのコピーを取得するために必要なコードは 1 行だけです。

クローンを作成すると、元のドキュメントと同じ内容を持つ新しいドキュメントが作成されますが、元のドキュメントの各ノードの一意のコピーが含まれます。ノード [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) メソッドを使用してクローン操作をドキュメント ノードに適用することもできます。これにより、子ノードの有無にかかわらず複合ドキュメント ノードを複製できます。

{{% alert color="primary" %}}

クローン作成メソッドを適用すると、すべてのドキュメント プロパティがクローンされることに注意してください。

{{% /alert %}}

次のコード例は、ドキュメントのクローンを作成し、そのドキュメント内のセクションの複製を作成する方法を示しています。

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
