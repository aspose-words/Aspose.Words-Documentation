---
title: C++でのドキュメントの比較
second_title: C++の場合Aspose.Words
articleTitle: 文書の比較
linktitle: 文書の比較
type: docs
description: "サポートされている任意の形式の2つのドキュメントを比較し、C++を使用してコンテンツの変更を表示します。 比較時に高度なオプションを適用できます。"
weight: 60
url: /ja/cpp/compare-documents/
timestamp: 2024-01-27-14-07-04
---

ドキュメントの比較は、2つのドキュメント間の変更を識別し、変更をリビジョンとして含むプロセスです。 このプロセスでは、特定の文書のバージョンを含む任意の二つの文書を比較し、両方の文書間の変更は、最初の文書のリビジョンとして表示されます。

比較方法は、文字レベルまたは単語レベルで単語を比較することによって達成される。 単語に少なくとも一つの文字の変更が含まれている場合、結果では、違いは文字ではなく単語全体の変更として表示されます。 この比較プロセスは、法律および金融業界では通常の作業です。

ドキュメント間または異なるバージョン間の違いを手動で検索する代わりに、Aspose.Wordsを使用してドキュメントを比較し、書式、ヘッダー/フッター、テーブルなどのコンテ

この記事では、ドキュメントを比較する方法と、高度な比較プロパティを指定する方法について説明します。

{{% alert color="primary" %}}

**オンラインで試す**

を使用してオンラインで二つの文書を比較することができます [オンラインでの文書比較](https://products.aspose.app/words/comparison) ツール。

このツールでは、同じ結果を得るために、以下で説明する比較方法が使用されていることに注意してください。 したがって、オンライン比較ツールを使用するか、Aspose.Wordsの比較方法を使用しても同じ結果が得られます。

{{% /alert %}}

## 制限事項とサポートされているファイル形式{#limitations-and-supported-file-formats}

文書の比較は非常に複雑な機能です。 コンテンツの組み合わせには、すべての違いを認識するために分析する必要があるさまざまな部分があります。 この複雑さの理由は、Aspose.WordsがMicrosoft Word比較アルゴリズムと同じ比較結果を得ることを目的としているという事実によるものです。

比較される二つの文書の一般的な制限は、この制限がMicrosoft Wordに存在するため、compareメソッドを呼び出す前にリビジョンを持ってはならないということです。

{{% alert color="primary" %}}

内の任意の二つの文書を比較することができることに注意してください [サポートされているファイル形式](/words/cpp/supported-document-formats/). ドキュメントオブジェクトを比較したり、特定の形式を持たずにそれらのオブジェクトを最初から作成したりすることもできます。

{{% /alert %}}

## 二つの文書を比較する{#compare-two-documents}

ドキュメントを比較すると、後者のドキュメントと前者のドキュメントの違いが前者のリビジョンとして表示されます。 ドキュメントを変更すると、compareメソッドを実行した後、各編集には独自のリビジョンがあります。

Aspose.Wordsは[Compare](https://reference.aspose.com/words/cpp/aspose.words/document/compare/)メソッドを使用して文書の違いを識別できます–これはMicrosoft Word文書比較機能に似ています。 文書や文書のバージョンを確認して、フォントの変更、間隔の変更、単語や段落の追加などの書式設定の変更など、違いや変更を見つけることができます。

比較の結果、文書は等しいか等しくないかを決定することができる。 「等しい」文書という用語は、比較方法が変更をリビジョンとして表すことができないことを意味します。 これは、ドキュメントのテキストとテキストの書式設定の両方が同じであることを意味します。 ただし、ドキュメント間には他にも違いがある可能性があります。 たとえば、Microsoft Wordはスタイルの書式変更のみをサポートし、スタイルの挿入/削除を表すことはできません。 したがって、文書は異なるスタイルのセットを持つことができ、**Compare**メソッドはまだリビジョンを生成しません。

次のコード例は、2つのドキュメントが等しいかどうかを確認する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

次のコード例は、単純に`Compare`メソッドを2つのドキュメントに適用する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareWhenDocumentHasRevisions.cpp" >}}

## 高度な比較オプション{#specify-advanced-comparing-properties}の指定

ドキュメントを比較するときに適用できる[CompareOptions](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/)クラスにはさまざまなプロパティがあります。

たとえば、Aspose.Wordsを使用すると、元のドキュメント内の特定の種類のオブジェクトの比較操作中に行われた変更を無視できます。 次のように、オブジェクトタイプに適切なプロパティを選択できます[IgnoreHeadersAndFooters](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignorecomments/), そして、他の人はそれらを"true"に設定します。

さらに、Aspose.Wordsには[Granularity](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_granularity/)プロパティが用意されており、変更を文字で追跡するか単語で追跡するかを指定することができます。

別の一般的なプロパティは、比較の変更を表示するドキュメントの選択です。 たとえば、Microsoft Wordの"ドキュメントの比較ダイアログボックス"には、"変更を表示する"オプションがあります。 Aspose.Wordsは、この目的を果たす[Target](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_target/)プロパティを提供します。

次のコード例は、高度な比較プロパティを設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}
