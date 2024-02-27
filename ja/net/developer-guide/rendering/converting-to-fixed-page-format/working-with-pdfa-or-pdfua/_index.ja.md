---
title: PDF/A または PDF/UA の操作
second_title: .NET用Aspose.Words
articleTitle: PDF/A または PDF/UA の操作
linktitle: PDF/A または PDF/UA の操作
description: "C# を使用して PDF/A-1、PDF/A-2、PDF/A-4、PDF/UA に変換します。 PDF/A ドキュメントに変換する際にはいくつかの問題がありますが、Aspose.Words for .NET はそれらを解決します。"
type: docs
weight: 28
url: /ja/net/working-with-pdfa-or-pdfua/
---

PDF/A および PDF/UA 形式では、Word 形式のドキュメントから PDF への自動変換中に満たすことができない、ドキュメントのコンテンツに関連するいくつかの要件が課されます。 PDF/A および PDF/UA に完全に準拠したドキュメントを作成するには、変換前の Word ドキュメントまたは変換後の PDF ドキュメントでこれらの要件を確認および修正する必要があります。

基本的な要件は PDF/A および PDF/UA ドキュメントの構造またはフォントに関するものであり、これについては次のセクションで検討します。

{{% alert color="primary" %}}

PDF/UA-1 出力も WCAG 2.0 およびセクション 508 に準拠することに注意してください。

{{% /alert %}}

## 文書構造の要件

現在の要件は、PDF/A-1a、PDF/A-2a、PDF/A-4、および PDF/UA-1 形式です。

さまざまな PDF 形式標準に変換する際の Aspose.Words の動作には、いくつかの微妙な違いがあります。期待どおりの結果を得たい場合は、これらを考慮する必要があります。

{{% alert color="primary" %}}

PDF/A-4 には論理構造の要件がないことに注意してください。このため、この「文書構造の要件」セクションでは PDF/A-4 バージョンは考慮しません。

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>仕様では次のことがわかります (詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>ライターが適切な検証を行わずに自動プロセスを使用して構造情報または意味論的な情報を生成することはお勧めできません。</p>
    <p>ISO 19005-2、6.7.1</p>
</details>
{{% /alert %}}

以下のサブセクションでは、さまざまな PDF 形式標準とそのソリューションのオプションに変換する際の Aspose.Words の動作の微妙な違いについて説明します。

### 構造タイプ

|  Aspose.Words 内の PDF 標準準拠レベル |  要件の有無 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

PDF ドキュメントは、見出し、段落、表などの一連のブロックです。これらのブロックは、強くても弱くても文書構造を形成します。

PDF/A では、強い構造と弱い構造の両方が有効です。 Microsoft Word 文書は設計上弱い構造を持っており、Aspose.Words はそれぞれ弱い構造を持つ PDF を作成し、ソース文書内の段落のアウトライン レベルに応じて見出しも生成します。

構造が弱い PDF/UA-1 文書の場合は、見出し番号が隙間なく順番に並んでいることもさらに必要です。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では次のことがわかります (詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>ブロックレベルの構造は、次の 2 つの主要なパラダイムのいずれかに従います。</p>
    </ol>
      <li>しっかりとした構造。グループ化要素は、資料の構成を記事、セクション、サブセクションなどに反映するために、必要なレベルまでネストされます。各レベルで、グループ化要素の子は、見出し (H)、そのレベルのコンテンツの 1 つ以上の段落 (P)、およびネストされたサブセクションの 1 つ以上の追加のグループ化要素で構成されている必要があります。</li>
      <li>構造が弱い。この文書は比較的フラットで、すべての見出し、段落、およびその他の BLSE が直接の子として含まれるグループ化要素のレベルがおそらく 1 つまたは 2 つだけです。この場合、資料の構成は論理構造に反映されません。ただし、特定のレベル（H1 ～ H6）の見出しを使用して表現することもできます。</li>
    </ol>
    <p></p>
    <p>ISO-32000-1、14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>PDF/UA-1 ドキュメントの場合、仕様には見出しレベルに関連する追加が含まれています (詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>文書セマンティクスがヘッダーの降順シーケンスを必要とする場合、そのようなシーケンスは厳密な番号順に進み、介在する見出しレベルをスキップしてはならない。 H1 H2 H3 は許可されますが、H1 H3 は許可されません。</p>
    <p>ISO-14289-1、7.4.2</p>
</details>
{{% /alert %}}

正しい出力を保証するには、ユーザーはソース文書のコンテンツが適切に編成されており、段落のアウトライン レベルが正しく指定されていることを確認する必要があります。それ以外の場合、ユーザーは出力 PDF ドキュメントの構造を確認して修正する必要があります。

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、Microsoft Word でアウトライン レベルを設定する方法、または出力 PDF ドキュメントの構造を確認して修正する方法の例を確認できます (詳細を表示するには展開します)。</summary>
    <p></p>
    <p>Microsoft Word では、デフォルトの「見出し X」スタイルを使用してアウトライン レベルを設定できます。</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MW見出し1-2" style="width:800px"/>
    <p>さらに、「段落」ウィンドウでアウトライン レベルを確認または変更できます。</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWアウトラインレベル" style="width:800px"/>
    <p>Acrobat では、「タグ」ペインで文書構造を確認または変更できます。</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="Acrobatタグペイン" style="width:800px"/>
</details>
{{% /alert %}}

### コンテンツをアーティファクトとしてマークする

|  Aspose.Words 内の PDF 標準準拠レベル |  要件の有無 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

現時点では、Aspose.Words はページのヘッダーとフッター、メモの区切り文字、繰り返し表のヘッダー セル、および装飾画像をアーティファクトとしてマークします。このリストは将来更新される可能性があることに注意してください。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では次のことがわかります (詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>ドキュメント内のグラフィックス オブジェクトは、次の 2 つのクラスに分類できます。</p>
    </ol>
      <li>ドキュメントの実際のコンテンツは、ドキュメントの作成者によって最初に導入されたマテリアルを表すオブジェクトで構成されます。</li>
      <li>アーティファクトは、作成者の元のコンテンツの一部ではなく、ページネーション、レイアウト、またはその他の厳密に機械的なプロセスの過程で、準拠する作成者によって生成されるグラフィック オブジェクトです。</li>
    </ol>
    <p></p>
    <p>ISO-32000-1、14.8.2.2.1</p>
</details>
{{% /alert %}}

ドキュメントにアーティファクトとしてマークする必要がある他のコンテンツが含まれている場合、またはアーティファクトのコンテンツのいずれかが実際のコンテンツである場合、お客様は出力 PDF でそれを修正する必要があります。

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、Microsoft Word で図形を装飾としてマークする方法、または出力 PDF ドキュメントで図形をアーティファクトとしてマークする方法の例を確認できます (詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>たとえば、Microsoft Word で図形を装飾としてマークできるため、それらはアーティファクトとして PDF にエクスポートされます。</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MW装飾形状" style="width:800px"/>
    <p>出力 PDF でシェイプをアーティファクトとしてマークできます。</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="Pdf削除空のタグ" style="width:800px"/>
    <p>また、ヘッダー内のテキストを、出力 PDF 内のアーティファクトから実際のコンテンツに切り替えることもできます。</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### 自然言語仕様

|  Aspose.Words 内の PDF 標準準拠レベル |  要件の有無 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

テキスト言語は Microsoft Word ドキュメントで指定されます。 Aspose.Words は、マークされたコンテンツ シーケンスまたは Span タグに添付された *Lang* 属性を使用して、指定された言語を出力 PDF にエクスポートします。これは [ExportLanguageToSpanTag](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/exportlanguagetospantag/) プロパティによって制御されます。一般に、ユーザーが Microsoft Word 経由でテキストを入力する場合、言語の問題はありません。ただし、テキストが自動的に生成される場合、言語が不正確になる可能性があります。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では次のことがわかります (詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>ファイル内のすべてのテキストのデフォルトの自然言語は、ドキュメントのカタログ辞書の Lang エントリで指定する必要があります。</p>
    <p>ファイル内のデフォルト言語と異なるすべてのテキストコンテンツは、マークされたコンテンツシーケンスに付加された `Lang` プロパティを使用するか、構造要素辞書の Lang エントリによって示される必要があります。</p>
    <p>ISO-19005-2、6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>さらに、PDF/UA-1 に関して、仕様では次のことがわかります (詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>自然言語は宣言されなければなりません… 自然言語の変更は宣言されなければなりません。</p>
    <p>ISO-14289-1、7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、言語が正しく指定されていることを確認する方法の例を確認できます (展開して詳細を表示します)。</summary>
    <p></p>
    <p>ユーザーは、ソース Word 文書のいずれかで言語が正しく指定されていることを確認する必要があります。</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-language.png" alt="MW言語" style="width:800px"/>
    <p>または出力された PDF ドキュメント:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### 図のキャプション

|  Aspose.Words 内の PDF 標準準拠レベル |  要件の有無 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word ドキュメントでは、ユーザーが図のキャプションを追加できます。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では次のことがわかります (詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>図に付随するキャプションには、Caption タグが付けられます。</p>
    <p>ISO-14289-1、7.3</p>
</details>
{{% /alert %}}

現在、Aspose.Words は Caption タグを使用してキャプションをエクスポートできないため、出力 PDF でキャプションにフラグを付ける必要があります。

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、キャプションを挿入する方法の例を確認できます (展開して詳細を表示します)。</summary>
    <p></p>
    <p>Microsoft Word では、コンテキスト メニューからキャプションを挿入できます。</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="図-キャプション-mw" style="width:800px"/>
    <p>Acrobat では、`Object` プロパティ ダイアログを使用してキャプションを追加または変更できます。</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="図-キャプション-アクロバット" style="width:800px"/>
</details>
{{% /alert %}}

### 代替説明

|  Aspose.Words 内の PDF 標準準拠レベル |  要件の有無 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word ドキュメントを使用すると、ユーザーは画像、図形、表に代替テキストを追加できます。 Aspose.Words は、このような代替テキストを出力 PDF にエクスポートします。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では次のことがわかります (詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>画像や数式など、コンテンツにあらかじめ定められた自然なテキスト類似物がないすべての構造要素は、構造要素辞書の Alt エントリを使用して代替テキストの説明を提供する必要があります。</p>
    <p>注 代替説明は、不透明な非テキストコンテンツを適切に解釈するのに役立つテキスト説明を提供します。</p>
    <p>ISO-19005-2、6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、すべての要素に代替テキストがあることを確認する方法の例を確認できます (詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>ユーザーは、ソース Word 文書のいずれかにすべての要素に代替テキストがあることを確認する必要があります。</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>または出力された PDF ドキュメント:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="アクロバットシェイプAltText" style="width:800px"/>
</details>
{{% /alert %}}

### ハイパーリンクの代替説明

|  Aspose.Words 内の PDF 標準準拠レベル |  要件の有無 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

前述の点に加えて、Microsoft Word ドキュメントではユーザーがハイパーリンクに代替テキストを追加することもできます。 Aspose.Words は、このような代替テキストを出力 PDF にエクスポートします。

残念ながら、すべてのアプリケーションで代替説明を設定できるわけではありません。たとえば、Adobe Acrobat では現在、ハイパーリンクにそのような説明を設定できません。ただし、Microsoft Word では次のようにこれを行うことができます。

<img src="/words/net/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="代替説明-ハイパーリンク-mw" style="width:800px"/>

Microsoft Word GUI を使用して目次 (TOC) に自動生成されたハイパーリンクの代替テキストを設定できないという問題が発生することがあります。 Aspose.Words はそのようなフィールドを更新し、独自にリンクを生成できます。

コード例に従って、Aspose.Words Document Object Model (DOM) を使用して `TOC` フィールドを更新します。

{{< highlight csharp >}}
Document doc = new Document(fileName);

	var tocHyperLinks = doc.Range.Fields
		.Where(f => f.Type == FieldType.FieldHyperlink)
		.Cast<FieldHyperlink>()
		.Where(f => f.HRef.StartsWith("#_Toc"));
	
	foreach (FieldHyperlink link in tocHyperLinks)
		link.ScreenTip = link.DisplayResult;
	
	PdfSaveOptions opt = new PdfSaveOptions()
	{
		Compliance = PdfCompliance.PdfUa1,
		DisplayDocTitle = true,
		ExportDocumentStructure = true,
	};
	opt.OutlineOptions.HeadingsOutlineLevels = 3;
	opt.OutlineOptions.CreateMissingOutlineLevels = true;
	
	var outFile = Path.ChangeExtension(fileName, "_aw.pdf");
	doc.Save(outFile, opt);
{{< /highlight >}}

### テーブルヘッダー

|  Aspose.Words 内の PDF 標準準拠レベル |  要件の有無 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

PDF/UA-1 ドキュメントの表には、列、行、またはその両方のヘッダーが必要です。 PDF/A には標準のテーブル マークアップのみが必要であり、追加の制限はありません。 Aspose.Words は標準テーブル マークアップを自動的に生成することに注意してください。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では次のことがわかります (詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>テーブルにはヘッダーを含める必要があります。テーブルには列ヘッダー、行ヘッダー、またはその両方を含めることができます。</p>
    <p>ISO-14289-1、7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、テーブル ヘッダーの設定方法の例を確認できます (展開して詳細を表示します)。</summary>
    <p></p>
    <p>テーブル ヘッダーは、ソース Microsoft Word ドキュメントのいずれかで設定できます。</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="テーブルヘッダー-mw" style="width:800px"/>
    <p>または出力 PDF:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="テーブルヘッダーアクロバットヘッダーセル" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="テーブルヘッダー-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="テーブルヘッダー-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### 置換テキスト

|  Aspose.Words 内の PDF 標準準拠レベル |  要件の有無 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>仕様では次のことがわかります (詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>仕様では次のことがわかります。</p>
    <p>カスタム文字やインライングラフィックなど、非標準的な方法で表現されるすべてのテキスト構造要素は、構造要素辞書の `ActualText` エントリを使用して置換テキストを提供する必要があります。</p>
    <p>ISO-19005-2、6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word ドキュメントでは、ユーザーは置換テキストを設定できません。したがって、これを出力 PDF で確認して修正する必要があります。

<img src="/words/net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="Acrobat置換テキスト" style="width:800px"/>

### 略語と頭字語の拡張

|  Aspose.Words 内の PDF 標準準拠レベル |  要件の有無 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>仕様では次のことがわかります (詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>テキスト コンテンツ内の略語と頭字語のすべてのインスタンスは、略語または頭字語のテキスト展開を提供する E プロパティを持つ Span タグを使用して、マークされたコンテンツ シーケンスに配置する必要があります。</p>
<p>ISO-19005-2、6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word ドキュメントでは、ユーザーが略語や頭字語の拡張を設定することはできません。したがって、これを出力 PDF で確認して修正する必要があります。

<img src="/words/net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="アクロバット分割追加拡張テキスト" style="width:800px"/>

## ドキュメントのタイトル

|  Aspose.Words 内の PDF 標準準拠レベル |  要件の有無 |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br /> PDF/UA-1 の文書にはタイトルが必要です。 |

{{% alert color="secondary" %}}
<details>
    <summary>仕様では次のことがわかります (展開して詳細を表示します)。</summary>
    <p></p>
    <p>仕様では次のことがわかります。</p>
    <p>ドキュメントのカタログ辞書内のメタデータ ストリームには、dc:title エントリが含まれます。dc はダブリン コア メタデータ スキーマの推奨プレフィックスです。</p>
    <p>ISO-14289-1、7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、ドキュメントのタイトルを設定する方法の例を確認できます (展開して詳細を表示します)。</summary>
    <p></p>
    <p>ドキュメントのタイトルは、ソース Microsoft Word ドキュメントのいずれかで設定できます。</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/document-title-mw.png" alt="ドキュメントタイトル-mw" style="width:800px"/>
    <p>または出力 PDF:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="ドキュメントのタイトル-アクロバット" style="width:800px"/>
</details>
{{% /alert %}}

## フォントの要件

|  Aspose.Words 内の PDF 標準準拠レベル |  要件の有無 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words を使用して PDF/A-1、PDF/A-2、PDF/A-4、または PDF/UA-1 形式に変換する場合、フォントの操作にはさまざまな微妙な違いがあります。出力ドキュメントで発生する可能性のある問題を回避したい場合は、これらを考慮する必要があります。

以下のセクションでは、そのようなニュアンスと解決策のオプションについて説明します。

### フォントの法的要件

|  Aspose.Words 内の PDF 標準準拠レベル |  要件の有無 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words は、使用されているフォントの法的制限を検証しません。それはユーザー次第です。言い換えれば、ユーザーは Aspose.Words を使用した PDF 変換に不適切なフォントを提供すべきではありません。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では次のことがわかります (詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>無制限かつユニバーサルなレンダリングのためにファイルに合法的に埋め込むことができるフォント プログラムのみを使用するものとします。</p>
    <p>ISO-19005-2、6.2.11.4.1; ISO-14289-1、7.21.4.1 (2 つの仕様でまったく同じ引用符)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  Aspose.Words 内の PDF 標準準拠レベル |  要件の有無 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

`.notdef` glyph の使用は禁止されています。 `.notdef` glyph は、選択したフォントに存在せず、フォント フォールバック メカニズムでも解決できない文字がドキュメントに含まれている場合に表示されます。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では次のことがわかります (詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>適合ドキュメントには、テキスト レンダリング モードに関係なく、コンテンツ ストリーム内のテキスト表示演算子からの .notdef glyph への参照が含まれてはなりません。</p>
    <p>ISO-19005-2、6.2.11.8; ISO-14289-1、7.21.8 (2 つの仕様でまったく同じ引用符)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、これらの文字を削除または置換する方法の例を確認できます (展開して詳細を表示します)。</summary>
    <p></p>
    <p>ユーザーは、ソース Word 文書のいずれかでこれらの文字を削除または置換する必要があります。</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>または、「PDF 編集」ツールを使用して出力された PDF ドキュメント:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### プライベート使用エリア (PUA)

|  Aspose.Words 内の PDF 標準準拠レベル |  要件の有無 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Private Use Area (PUA) 文字は、主に「Symbol」、「Wingdings」、「Webdings」などの Windows シンボリック フォントに表示されます。 Microsoft Word 形式には、文字の実際のテキストを保存するオプションがありません。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では次のことがわかります (詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>レベル A 準拠の場合のみ、Unicode プライベート使用領域 (PUA) 内のコードにマップされている任意の文字について、ActualText エントリ ... この文字またはそのような文字のシーケンスが存在する必要があります。キャラクターはパーツです。</p>
    <p>ISO-19005-2、6.2.11.7.3</p>
</details>
{{% /alert %}}

「Segoe UI Symbol」は、シンボリック フォントの代替として使用できる Windows Unicode フォントです。

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、シンボリック フォントの問題を解決するためにユーザーが行うべきことの例を確認できます (展開して詳細を表示します)。</summary>
    <p></p>
    <p>ソース Word 文書内のシンボリック フォントを Unicode フォントに置き換えます。</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MW挿入シンボル" style="width:800px"/>
    <p>または、出力 PDF ドキュメントの問題のある文字に ActualText エントリを追加します。</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
