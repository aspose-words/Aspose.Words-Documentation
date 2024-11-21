---
title: 催眠活動 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: 催眠活動
linktitle: 催眠活動
description: "テキストのよりコンパクトな配置のためにハイフンを使用。 これは、ハイフン化辞書で動作する高度なアルゴリズムを提供し、OpenOffice辞書を使用して Javaお問い合わせ"
type: docs
weight: 220
url: /ja/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

時々、文書内のテキストのよりコンパクトな配置のためにハイフンを使用する必要があります。 同時に、各言語ごとに単語の催し物が異なる可能性があることを理解することが重要です。

現時点では、特に英語のテキストで使用すると、ハイフン化は頻繁に使われません。 それにもかかわらず、この機能の使用は、ユーザー文書に重大な影響を及ぼす可能性があります。 催眠はレイアウトに影響を与え、その結果、出力ファイルの外観、例えばPDF形式で。

単語の正しい分割のために、言語固有の催眠辞書が使用されます。 Aspose.Words 高度なアルゴリズムを使用して、このような辞書で動作し、同じ催眠を得ることができます Microsoft Wordお問い合わせ

## 催眠辞書

異なる言語は単語の催眠のために異なる規範とルールを使用するので、正しい催眠のための最適なソリューションは、特別な辞書を使用することです。 Aspose.Words OpenOffice辞書を使用します。

スペルチェックのため、OpenOfficeは [Hunspell ライブラリ](https://hunspell.github.io/), TeXのハイフェネーションアルゴリズムの総合化です。 このアルゴリズムは、標準的でカスタムのハイフェネーションパターンを組み合わせて自動非標準のハイフェネーションを可能にします。 Hunspell 利用する [ハイフン](https://github.com/hunspell/hyphen) 催眠のための。

{{% alert color="primary" %}}

催眠辞書は、 [LibreOffice 辞書 GitHub](https://github.com/LibreOffice/dictionaries)お問い合わせ 例えば、 [en-US 催眠辞書](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic)お問い合わせ

{{% /alert %}}

{{% alert color="primary" %}}

お問い合わせ Microsoft Word OpenOffice辞書以外の辞書を使用して、ハイフン化を実行し、OpenOffice辞書で定義された単語のハイフン化が異なる可能性があります。 Microsoft Word 催眠. そのため、特定の単語の催しを修正するために、必要なパターンを辞書に追加することをお勧めします。

{{% /alert %}}

## ハイフエンテーションアルゴリズム

Aspose.Words 導入事例 [TeXフェーハイリング](https://github.com/hunspell/hyphen/blob/master/README.hyphen) そして、OpenOfficeの催眠辞書を再利用することができます。

以下の特徴 Aspose.Words アルゴリズムは考慮に入れるべきです:

*催眠距離変数(LEFTHYPHENMIN、RIGHTHYPHENMIN、 COMPOUNDLEFTHYPHENMINの COM催眠辞書で指定されたPOUNDRIGHTHYPHENMINは無視されます。 Aspose.Words ドキュメントの互換性モードに応じて、独自の距離パラメータのセットを使用します。
* 必須 hyphenationアルゴリズム Aspose.Words サポート [合成の催眠](https://github.com/hunspell/hyphen/blob/master/README.compound)お問い合わせ しかし、 Aspose.Words アルファベットとアルファベット以外の文字を含む文字のシーケンスをアルファベットのみの部分(単語)に分割し、それらを個別に催眠します。
  注意: Microsoft Word 化合物の単語の催眠のロジックは、ドキュメントの互換性モードに依存します。
* 必須 hyphenationアルゴリズム Aspose.Words 実装しない [非標準的な催眠](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)お問い合わせ 非標準パターンは無視されます。

## ローディングの催眠の辞書

催眠機能を使用するには、まず衛生辞書を登録します。 次のコードの例では、指定された言語のハイフン化辞書をファイルから読み込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)お問い合わせ

{{% /alert %}}

次のコードの例では、指定した言語のハイフン化辞書をストリームから読み込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)お問い合わせ

{{% /alert %}}

事前登録の催眠辞書の代替として、必要な催眠辞書のみを「リクエスト」に登録することができます。 そのためには、 [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) インターフェイスおよび静的なコールバックを使用して下さい [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback)お問い合わせ

次のコードの例では、実装方法を示します。 **IHyphenationCallback** インターフェイス:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## レイアウトのハイフン化の影響

テキストを行に分割するとき、 Aspose.Words 現在の行に完全に収まるかどうか、各単語をチェックします。 別の単語がラインの端に収まるのに長い場合、デフォルトでは Aspose.Words それをハイフンではなく、次の行の先頭に移動します。

しかしながら、ハイフン化機能を使うことができます。 Aspose.Words 単語にハイフンを差し込み、正当化されたテキストのギャップをなくしたり、狭い列の線長を維持したりします。 これは明らかに行の数に影響を及ぼす可能性があるため、ページ数。 言い換えると、ハイフェネーション関数を使ってドキュメントレイアウトに影響します。

## 催眠と正当化(H&J)

Microsoft Word テキストが正当化され、ハイフン化が有効になっている場合、ブレイクポイントを選ぶための複雑なロジックがあります。 短く、 Microsoft Word ライン催眠を避けるためにスペースを縮めるか、または伸ばすことを好むかもしれません。 おそらくこのロジックは、 [Knuthの記事](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf)お問い合わせ

Aspose.Words 同じ結果をもたらす独自のH&Jアルゴリズムを実装 Microsoft Word 出力文書で区切る同一ラインを提供します。

## お問い合わせ

* [ハイフン – 催眠ライブラリ](https://github.com/hunspell/hyphen/blob/master/README)
* [非標準的な催眠](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [開いたオフィスの自動非標準的な催眠](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
