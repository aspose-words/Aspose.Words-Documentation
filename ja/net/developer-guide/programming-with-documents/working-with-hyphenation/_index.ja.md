---
title: C# でのハイフネーションの使用
second_title: .NET用Aspose.Words
articleTitle: ハイフネーションの使用
linktitle: ハイフネーションの使用
description: "C# を使用してテキストをよりコンパクトに配置するには、ハイフネーションを使用します。ハイフネーション辞書を操作する高度なアルゴリズムを提供し、OpenOffice 辞書を使用します。"
type: docs
weight: 220
url: /ja/net/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

文書内のテキストをよりコンパクトに配置するために、ハイフネーションの使用が必要になる場合があります。同時に、単語のハイフネーションの詳細は言語ごとに異なる可能性があることを理解することが重要です。

現在、ハイフネーションは、特に英語の文章では以前ほど頻繁に使用されていません。それにもかかわらず、この機能の使用はユーザーのドキュメントに重大な影響を与える可能性があります。ハイフネーションはレイアウトに影響を与え、その結果、PDF 形式などの出力ファイルの外観に影響を与えます。

単語を正しく分割するには、言語固有のハイフネーション辞書が使用されます。 Aspose.Words は高度なアルゴリズムを使用してこのような辞書を操作し、Microsoft Word と同じハイフネーションを取得できるようにします。

## ハイフネーション辞書

言語が異なれば単語のハイフネーションに異なる基準やルールが使用されるため、正しいハイフネーションの最適な解決策は特別な辞書を使用することです。 Aspose.Words は OpenOffice 辞書を使用します。

OpenOffice はスペル チェックのために、TeX のハイフネーション アルゴリズムを一般化した [Hunspellライブラリ](https://hunspell.github.io/) を使用します。このアルゴリズムにより、競合する標準ハイフネーション パターンとカスタム ハイフネーション パターンを使用した自動非標準ハイフネーションが可能になります。 Hunspell はハイフネーションに [ハイフン](https://github.com/hunspell/hyphen) を使用します。

{{% alert color="primary" %}}

ハイフネーション辞書は [LibreOffice辞書GitHub](https://github.com/LibreOffice/dictionaries) から取得できます。たとえば、[en-US ハイフネーション辞書](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic)。

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word は OpenOffice 辞書以外の辞書を使用してハイフネーションを実行するため、OpenOffice 辞書で定義されている一部の単語のハイフネーションは Microsoft Word ハイフネーションと異なる場合があります。このため、場合によっては、特定の単語のハイフネーションを修正するために必要なパターンを辞書に追加するようお客様にアドバイスしなければなりません。

{{% /alert %}}

## ハイフネーションアルゴリズム

Aspose.Words は [TeX ハイフネーション アルゴリズム](https://github.com/hunspell/hyphen/blob/master/README.hyphen) を実装しており、OpenOffice のハイフネーション辞書を再利用できます。

Aspose.Words アルゴリズムの次の機能を考慮する必要があります。

* ハイフネーション辞書で指定されたハイフネーション距離パラメーター (LEFTHYPHENMIN、RIGHTHYPHENMIN、COMPOUNDLEFTHYPHENMIN、COMPOUNDRIGHTHYPHENMIN) は無視されます。 Aspose.Words は、ドキュメントの互換性モードに応じて、独自の距離パラメータのセットを使用します。
* Aspose.Words のハイフネーション アルゴリズムは [複合ハイフネーション](https://github.com/hunspell/hyphen/blob/master/README.compound) をサポートしています。ただし、Aspose.Words は、アルファベット文字と非アルファベット文字が混在する文字シーケンスをアルファベットのみの部分 (単語) に分割し、それらを個別にハイフネーションします。
  複合語のハイフネーションの Microsoft Word ロジックはドキュメント互換モードに依存することに注意してください。
* Aspose.Words のハイフネーション アルゴリズムは [非標準のハイフネーション](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf) を実装していません。標準以外のパターンは無視されます。

## ハイフネーション辞書のロード

ハイフネーション機能を使用するには、まずハイフネーション辞書を登録します。次のコード例は、指定した言語のハイフネーション辞書をファイルからロードする方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.cs" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

{{% /alert %}}

次のコード例は、指定した言語のハイフネーション辞書をストリームからロードする方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.cs" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

{{% /alert %}}

ハイフネーション辞書を事前に登録する代わりに、「リクエストに応じて」必要なハイフネーション辞書のみを登録することも可能です。これを実現するには、[IHyphenationCallback](https://reference.aspose.com/words/net/aspose.words/ihyphenationcallback/) インターフェイスを実装し、静的コールバック [Callback](https://reference.aspose.com/words/net/aspose.words/hyphenation/callback/) を使用します。

次のコード例は、**IHyphenationCallback** インターフェイスを実装する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-CustomHyphenation.cs" >}}

## ハイフネーションのレイアウトへの影響

テキストを複数の行に分割するとき、Aspose.Words は各単語が現在の行に完全に収まるかどうかをチェックします。別の単語が長すぎて行末に収まらない場合、デフォルトでは、Aspose.Words はその単語をハイフンで区切らずに次の行の先頭に移動します。

ただし、Aspose.Words でハイフネーション機能を使用すると、単語にハイフンを挿入して、両端揃えのテキストのギャップをなくしたり、狭い列で均等な行の長さを維持したりできます。これは明らかに行数、つまりページ数に影響を与える可能性があります。つまり、ハイフネーション機能を使用すると、ドキュメントのレイアウトに影響します。

## ハイフネーションと両端揃え (H&amp;J)

Microsoft Word には、テキストが両端揃えでハイフネーションが有効になっている場合にブレークポイントを選択するための複雑なロジックがあります。つまり、Microsoft Word は行のハイフネーションを避けるためにスペースを縮小または拡張することを好む可能性があります。おそらく、このロジックは [クヌースの記事](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf) に基づいています。

Aspose.Words は独自の H&amp;J アルゴリズムを実装しており、Microsoft Word と同じ結果をもたらし、出力ドキュメント内で同一の改行を提供します。

## 関連項目

* [ハイフン – ハイフネーションライブラリ](https://github.com/hunspell/hyphen/blob/master/README)
* [標準以外のハイフネーション](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Open Office での自動非標準ハイフネーション](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
