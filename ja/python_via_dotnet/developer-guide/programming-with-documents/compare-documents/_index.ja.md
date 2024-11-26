---
title: Python でドキュメントを比較する
second_title: Python via .NET用Aspose.Words
articleTitle: ドキュメントの比較
linktitle: ドキュメントの比較
description: "サポートされている形式の 2 つのドキュメントを比較し、Python を使用してコンテンツの変更を表示します。比較するときに詳細オプションを適用できます。"
type: docs
weight: 60
url: /ja/python-net/compare-documents/
timestamp: 2024-01-27-14-07-04
---

ドキュメントの比較は、2 つのドキュメント間の変更を特定し、その変更をリビジョンとして含めるプロセスです。このプロセスでは、特定の 1 つのドキュメントのバージョンを含む 2 つのドキュメントを比較し、両方のドキュメント間の変更が最初のドキュメントのリビジョンとして表示されます。

比較方法は、単語を文字レベルまたは単語レベルで比較することによって実現されます。単語に少なくとも 1 文字の変更が含まれている場合、結果では、その違いは文字ではなく単語全体の変更として表示されます。この比較プロセスは、法律業界や金融業界では通常の作業です。

ドキュメント間またはドキュメントの異なるバージョン間の相違点を手動で検索する代わりに、Aspose.Words を使用してドキュメントを比較し、書式設定、ヘッダー/フッター、表などの内容の変更を取得できます。

この記事では、ドキュメントを比較する方法と、高度な比較プロパティを指定する方法について説明します。

{{% alert color="primary" %}}

**オンラインで試す**

[オンラインでの文書比較](https://products.aspose.app/words/comparison) ツールを使用すると、2 つのドキュメントをオンラインで比較できます。

このツールでは、同等の結果が確実に得られるように、以下で説明する比較方法が使用されていることに注意してください。したがって、オンライン比較ツールを使用しても、Aspose.Words の比較方法を使用しても、同じ結果が得られます。

{{% /alert %}}

## 制限事項とサポートされるファイル形式 {#limitations-and-supported-file-formats}

ドキュメントの比較は非常に複雑な機能です。コンテンツの組み合わせには、すべての違いを認識するために分析する必要があるさまざまな部分があります。この複雑さの理由は、Aspose.Words が Microsoft Word 比較アルゴリズムと同じ比較結果を取得することを目指しているためです。

比較される 2 つのドキュメントの一般的な制限は、compare メソッドを呼び出す前にドキュメントにリビジョンが存在してはいけないということです。この制限は Microsoft Word に存在します。

{{% alert color="primary" %}}

[サポートされているドキュメント形式](/words/ja/python-net/supported-document-formats/) 内の任意の 2 つのドキュメントを比較できることに注意してください。基本的に、ドキュメント オブジェクトを比較でき、特定の形式を持たずにそれらのオブジェクトを最初から作成することもできます。

{{% /alert %}}

## 2 つのドキュメントの比較 {#compare-two-documents}

文書を比較すると、後者の文書と前者の差異が、前者の改訂として現れます。ドキュメントを変更すると、比較メソッドの実行後に各編集に独自のリビジョンが適用されます。

Aspose.Words では、[compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) メソッドを使用してドキュメントの相違点を識別できます。これは Microsoft Word ドキュメントの比較機能に似ています。これにより、ドキュメントまたはドキュメントのバージョンをチェックして、フォントの変更、間隔の変更、単語や段落の追加などの書式変更を含む相違点や変更点を見つけることができます。

比較の結果、ドキュメントが等しいか等しくないかを判断できます。 「等しい」ドキュメントという用語は、比較方法が変更をリビジョンとして表すことができないことを意味します。これは、ドキュメントのテキストとテキストの書式設定が同じであることを意味します。ただし、ドキュメント間には他にも違いがある可能性があります。たとえば、Microsoft Word はスタイルの形式リビジョンのみをサポートし、スタイルの挿入/削除を表すことはできません。したがって、ドキュメントには異なるスタイルのセットを含めることができますが、[compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) メソッドでは依然としてリビジョンが生成されません。

次のコード例は、2 つのドキュメントが等しいかどうかを確認する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

次のコード例は、`Compare` メソッドを 2 つのドキュメントに単純に適用する方法を示しています。

{{< highlight python >}}
# The source document doc1.
doc1 = aw.Document()
builder = aw.DocumentBuilder(doc1)
builder.writeln("This is the original document.")

# The target document doc2.
doc2 = aw.Document()
builder = aw.DocumentBuilder(doc2)
builder.writeln("This is the edited document.")

# If either document has a revision, an exception will be thrown.
if (doc1.revisions.count == 0 and doc2.revisions.count == 0) :
    doc1.compare(doc2, "authorName", datetime.today())

# If doc1 and doc2 are different, doc1 now has some revisions after the comparison, which can now be viewed and processed.
self.assertEqual(2, doc1.revisions.count)

for r in doc1.revisions :
    print(f"Revision type: {r.revision_type}, on a node of type \"{r.parent_node.node_type}\"")
    print(f"\tChanged text: \"{r.parent_node.get_text()}\"")

# All the revisions in doc1 are differences between doc1 and doc2, so accepting them on doc1 transforms doc1 into doc2.
doc1.revisions.accept_all()

# doc1, when saved, now resembles doc2.
doc1.save(docs_base.artifacts_dir + "Document.Compare.docx")
doc1 = aw.Document(docs_base.artifacts_dir + "Document.Compare.docx")
self.assertEqual(0, doc1.revisions.count)
self.assertEqual(doc2.get_text().strip(), doc1.get_text().strip())
{{< /highlight >}}

## 高度な比較プロパティの指定 {#specify-advanced-comparing-properties}

[CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) クラスには、ドキュメントを比較するときに適用できるさまざまなプロパティが多数あります。

たとえば、Aspose.Words を使用すると、元のドキュメント内の特定の種類のオブジェクトに対する比較操作中に加えられた変更を無視できます。 [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/)、[ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/)、[ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/) などのオブジェクト タイプを `True` に設定することで、適切なプロパティを選択できます。

さらに、Aspose.Words には、変更を文字ごとに追跡するか単語ごとに追跡するかを指定できる [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) プロパティが用意されています。

もう 1 つの共通のプロパティは、比較の変更をどのドキュメントで表示するかを選択することです。たとえば、Microsoft Word の [ドキュメントの比較] ダイアログ ボックスには、[変更内容を表示する] オプションがあります。これは比較にも影響します。 Aspose.Words は、この目的範囲 [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) プロパティを提供します。

次のコード例は、詳細な比較プロパティを設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
