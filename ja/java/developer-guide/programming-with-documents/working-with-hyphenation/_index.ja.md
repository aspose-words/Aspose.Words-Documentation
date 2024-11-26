---
title: Javaでハイフネーションを使用する
second_title: Aspose.WordsのためのJava
articleTitle: ハイフネーションの操作
linktitle: ハイフネーションの操作
description: "テキストをよりコンパクトに配置するには、ハイフネーションを使用します。 ハイフネーション辞書で動作する高度なアルゴリズムを提供し、OpenOffice辞書を使用してJavaを使用します。"
type: docs
weight: 220
url: /ja/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

ドキュメント内のテキストをよりコンパクトに配置するためにハイフネーションを使用する必要がある場合があります。 同時に、単語ハイフネーションの詳細は言語ごとに異なる可能性があることを理解することが重要です。

現在、ハイフネーションは、特に英語のテキストでは、以前ほど頻繁には使用されていません。ただし、この機能を使用すると、ユーザー ドキュメントに重大な影響を与える可能性があります。ハイフネーションはレイアウトに影響し、その結果、たとえば PDF 形式の出力ファイルの外観に影響します。

単語を正しく分割するために、言語固有のハイフネーション辞書が使用されます。 Aspose.Wordsは高度なアルゴリズムを使用してこのような辞書を操作し、Microsoft Wordと同じハイフネーションを取得できます。

## ハイフネーション辞書

異なる言語が単語ハイフネーションのために異なる規範と規則を使用するので、正しいハイフネーションのための最適な解決策は特別な辞書を使用することです。 Aspose.WordsはOpenOffice辞書を使用します。

スペルチェックのために、OpenOfficeは次のものを使用します [Hunspellライブラリ](https://hunspell.github.io/) これは、TeXのハイフネーションアルゴリズムの一般化です。 このアルゴリズムでは、競合する標準ハイフネーションパターンとカスタムハイフネーションパターンを使用して、非標準ハイフネーションを自動化できます。 Hunspellは [ハイフン](https://github.com/hunspell/hyphen) ハイフネーションのために。

{{% alert color="primary" %}}

ハイフネーション辞書は、次の場所から取得できます。 [LibreOffice辞書GitHub](https://github.com/LibreOffice/dictionaries). 例えば, [ja-USハイフネーション辞書](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft WordはOpenOffice辞書以外の辞書を使用してハイフネーションを実行するため、OpenOffice辞書によって定義された一部の単語のハイフネーションはMicrosoft Wordハイフネーションと異な このため、特定の単語のハイフネーションを修正するために、必要なパターンを辞書に追加するよう顧客にアドバイスする必要がある場合があります。

{{% /alert %}}

## ハイフネーションアルゴリズム

Aspose.Words実装 [TeXハイフネーションアルゴリズム](https://github.com/hunspell/hyphen/blob/master/README.hyphen) また、OpenOfficeハイフネーション辞書を再利用できます。

Aspose.Wordsアルゴリズムの次の機能を考慮する必要があります:

* ハイフネーション距離パラメータ(LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) ハイフネーション辞書で指定されたものは無視されます。 Aspose.Wordsは、文書互換モードに応じて独自の距離パラメータセットを使用します。
* Aspose.Wordsのハイフネーションアルゴリズムでは、次のことがサポートされています [複合ハイフネーション](https://github.com/hunspell/hyphen/blob/master/README.compound). ただし、Aspose.Wordsは、英字と非英字が混在する文字シーケンスを英字のみの部分(単語)に分割し、それらを別々にハイフネーションします。
  複合語のハイフネーションのMicrosoft Wordロジックは、文書互換モードに依存することに注意してください。
* Aspose.Wordsのハイフネーションアルゴリズムは、Aspose.Wordsのハイフネーションアルゴリズムを実装しません。 [非標準ハイフネーション](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). 非標準パターンは無視されます。

## ハイフネーション辞書の読み込み

ハイフネーション機能を使用するには、まずハイフネーション辞書を登録します。次のコード例は、指定された言語のハイフネーション辞書をファイルから読み込む方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

次のコード例は、ストリームから指定された言語のハイフネーション辞書を読み込む方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

ハイフネーション辞書を事前登録する代わりに、必要なハイフネーション辞書のみを"要求によって"登録することができます。 これを実現するには、[IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/)インターフェイスを実装し、静的コールバック[Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback)を使用します。

次のコード例は、**IHyphenationCallback**インターフェイスを実装する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## ハイフネーションがレイアウトに与える影響

テキストを行に分割するとき、Aspose.Wordsは各単語が現在の行に完全に収まるかどうかをチェックします。 別の単語が長すぎて行末に収まらない場合、デフォルトでAspose.Wordsはハイフネーションするのではなく、次の行の先頭に移動します。

ただし、Aspose.Wordsでハイフン機能を使用すると、単語にハイフンを挿入して、正当化されたテキストのギャップを排除したり、狭い列の行の長さを均等に保 これは明らかに行数、したがってページ数に影響を与える可能性があります。 つまり、ハイフネーション機能を使用すると、ドキュメントレイアウトに影響します。

## ハイフネーションと正当化(H&J)

Microsoft Wordには、テキストが正当化され、ハイフネーションが有効になっている場合にブレークポイントを選択するための複雑なロジックがあります。 つまり、Microsoft Wordは行のハイフネーションを避けるためにスペースを縮小またはストレッチすることを好む場合があります。 ほとんどの場合、このロジックは次のものに基づいています [クヌースの記事](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Wordsは独自のH&Jアルゴリズムを実装し、Microsoft Wordと同じ結果を得て、出力ドキュメント内で同一の改行を提供します。

## また見て下さい

* [ハイフン-ハイフネーションライブラリ](https://github.com/hunspell/hyphen/blob/master/README)
* [非標準ハイフネーション](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [オープンオフィスでの自動非標準ハイフネーション](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
