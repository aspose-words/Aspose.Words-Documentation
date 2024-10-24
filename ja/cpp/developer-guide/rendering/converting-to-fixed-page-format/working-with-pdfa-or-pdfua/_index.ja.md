---
title: PDF/AまたはPDF/UAでの作業
second_title: C++の場合Aspose.Words
articleTitle: PDF/AまたはPDF/UAでの作業
linktitle: PDF/AまたはPDF/UAでの作業
description: "に変換するPDF/A-1, PDF/A-2, PDF/A-4 とPDF/UAc++を使用します。 PDF/A文書に変換するときにはいくつかの問題があります。 C++の場合Aspose.Words それらを解決します。"
type: docs
weight: 38
url: /ja/cpp/working-with-pdfa-or-pdfua/
---

PDF/AおよびPDF/UA形式は、Word形式の文書からPDFへの自動変換中に満たすことができない文書の内容に関連するいくつかの要件を課します。 これらの要件は、完全にPDF/AおよびPDF/UA準拠の文書を作成するために、変換前のWord文書または変換後のPDF文書のいずれかで検証および修正する必要があり

基本的な要件は、PDF/AおよびPDF/UA文書の構造またはフォントに関するものであり、これについては次のセクションで検討します。

{{% alert color="primary" %}}

PDF/UA-1の出力もWCAG2.0およびセクション508に準拠することに注意してください。

{{% /alert %}}

## 文書構造の要件

現在の要件は次のとおりですPDF/A-1a, PDF/A-2a, PDF/A-4, とPDF/UA-1形式。

さまざまなPDF形式の標準に変換するときにAspose.Wordsがどのように機能するかにはいくつかのニュアンスがあります。 期待される結果を得たい場合は、それらを考慮に入れる必要があります。

{{% alert color="primary" %}}

PDF/A-4には論理構造の要件がないことに注意してください。 このため、この"文書構造の要件"のセクションではPDF/A-4バージョンは考慮していません。

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>仕様では、次のように示されています（詳細を表示するには展開してください）。:</summary>
    <p></p>
    <p>ライターが適切な検証なしに自動化されたプロセスを使用して構造的または意味的な情報を生成することはお勧めできません。</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

以下のサブセクションでは、さまざまなPDF形式の標準とそのソリューションのオプションに変換するときにAspose.Wordsがどのように機能するかに関す

### 構造のタイプ

| PDFAspose.Words内の標準コンプライアンスレベル | 要件の存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

PDFドキュメントは、見出し、段落、表などの一連のブロックです。 これらのブロックは文書構造を形成します–強くまたは弱いです。

強い構造と弱い構造の両方がPDF/Aに対して有効です。 Microsoft Word文書は設計上弱い構造を持ち、Aspose.Wordsはそれぞれ弱い構造を持つPDFを作成し、ソース文書内の段落のアウトラインレベルに従って見出しを生成します。Microsoft Word文書は設計上弱い構造を持ち、Aspose.Wordsはそれぞれ弱い構造を持つPDFを作成します。

構造が弱いPDF/UA-1文書の場合は、見出し番号がギャップなしで順番に並んでいることがさらに必要です。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では、次のように示されています（詳細を表示するには展開してください）。:</summary>
    <p></p>
    <p>ブロックレベルの構造は、次の2つの主要なパラダイムのいずれかに従うことができます:</p>
    </ol>
      <li>強く構造化されています。 グループ化要素は、材料の構成を記事、セクション、サブセクションなどに反映するために、必要な数のレベルにネストされます。 各レベルで、grouping要素の子は、見出し（H）、そのレベルのコンテンツ用の1つ以上の段落（P）、およびネストされたサブセクション用の1つ以上の追加のgrouping要素</li>
      <li>弱く構造化されています。 文書は比較的平坦であり、おそらく1つまたは2つのレベルのグループ化要素のみを持ち、すべての見出し、段落、およびその他のBLSEsを直接の子とします。 この場合、資料の構成は論理構造には反映されませんが、特定のレベル（H1–H6）の見出しを使用することによって表現することができます。</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>PDF/UA-1ドキュメントの場合、仕様には見出しレベルに関連する追加が含まれています(詳細を表示するには展開します):</summary>
    <p></p>
    <p>ドキュメントのセマンティクスがヘッダの降順を必要とする場合、そのようなシーケンスは厳密な数値順序で進行し、その間の見出しレベルをスキップしてはなりません。 H1H2H3は許容されますが、h1H3は許容されません。</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

正しい出力を確実にするには、ソース文書の内容が適切に整理され、段落のアウトラインレベルが正しく指定されていることを確認する必要があ それ以外の場合、ユーザーは出力PDF文書の構造を確認して修正する必要があります。

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、Microsoft Wordでアウトラインレベルを設定する方法、または出力PDF文書の構造を確認して修正する方法（詳細を表示するには展開します）の例を見ることができます。</summary>
    <p></p>
    <p>Microsoft Wordでは、アウトラインレベルを設定するためにデフォルトの"Heading X"スタイルを使用できます:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>また、"段落"ウィンドウでアウトラインレベルを確認または変更することができます:</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>Acrobatでは、「タグ」ペインで文書構造を確認または変更できます:</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### コンテンツを成果物としてマークする

| PDFAspose.Words内の標準コンプライアンスレベル | 要件の存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

現時点では、Aspose.Wordsはページヘッダーとフッター、ノートセパレータ、繰り返されるテーブルヘッダーセル、装飾画像をアーティファクトとしてマークします。 このリストは将来更新される可能性があることに注意してください。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では、次のように示されています（詳細を表示するには展開してください）。:</summary>
    <p></p>
    <p>ドキュメント内のgraphicsオブジェクトは、次の2つのクラスに分けることができます:</p>
    </ol>
      <li>文書の実際の内容は、文書の作成者によって最初に導入された資料を表すオブジェクトで構成されます。</li>
      <li>アーティファクトとは、作者の元のコンテンツの一部ではなく、ページネーション、レイアウト、またはその他の厳密に機械的なプロセスの過程で適合する作</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

ドキュメントにアーティファクトとしてマークする必要があるその他のコンテンツが含まれている場合、またはアーティファクト コンテンツのいずれかが実際のコンテンツである場合、顧客は出力 PDF でそれを修正する必要があります。

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、Microsoft Wordで図形を装飾としてマークする方法、または出力PDF文書で図形をアーティファクトとしてマークする方法（詳細を表示するには展開）の例を見ることができます。</summary>
    <p></p>
    <p>たとえば、図形はMicrosoft Wordで装飾としてマークされるため、アーティファクトとしてPDFにエクスポートされます:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Shapeを成果物として出力PDFにマークすることができます:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>また、ヘッダー内のテキストを成果物から出力PDFの実際のコンテンツに切り替えることもできます:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### 自然言語仕様

| PDFAspose.Words内の標準コンプライアンスレベル | 要件の存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

テキスト言語はMicrosoft Word文書で指定されています。 Aspose.Words指定された言語を出力PDFにエクスポートし、*Lang*属性をマークされたコンテンツシーケンスまたはSpanタグに添付します。[ExportLanguageToSpanTag](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_exportlanguagetospantag/)プロパティによって制御されます。 一般的に、Microsoft Wordを介してユーザーがテキストを入力した場合、言語の問題はありません。 ただし、テキストが自動的に生成されると、言語が不正確になる可能性があります。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では、次のように示されています（詳細を表示するには展開してください）。:</summary>
    <p></p>
    <p>ファイル内のすべてのテキストの既定の自然言語は、ドキュメントのカタログ辞書のLangエントリで指定する必要があります。</p>
    <p>デフォルト言語と異なるファイル内のすべてのテキストコンテンツは、マークされたコンテンツシーケンスに添付された`Lang`プロパティを使用するか、構造..</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>さらにPDF/UA-1の場合、仕様は次のように指示します（詳細を表示するために展開します）:</summary>
    <p></p>
    <p>自然言語は宣言されなければならない...自然言語の変化は宣言されなければならない。</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、例を見ることができます：言語が正しく指定されていることを確認する方法（詳細を表示するには展開します）。</summary>
    <p></p>
    <p>ユーザーは、ソースWord文書のいずれかで言語が正しく指定されていることを確認する必要があります:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>または出力PDF文書:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### 図のキャプション

| PDFAspose.Words内の標準コンプライアンスレベル | 要件の存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word文書では、ユーザーは図のキャプションを追加できます。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では、次のように示されています（詳細を表示するには展開してください）。:</summary>
    <p></p>
    <p>図に付随するキャプションは、キャプションタグでタグ付けされなければならない。</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

現在Aspose.WordsはCaptionタグ付きのキャプションを書き出すことができないため、出力PDFでフラグを付ける必要があります。

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、例を見ることができます：キャプションを挿入する方法（詳細を表示するには展開します）。</summary>
    <p></p>
    <p>Microsoft Wordでは、キャプションはコンテキストメニューから挿入できます:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>Acrobatでは、`Object`プロパティダイアログを使用してキャプションを追加または変更できます:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### 代替の説明

| PDFAspose.Words内の標準コンプライアンスレベル | 要件の存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Wordドキュメントを使用すると、ユーザーは画像、図形、および表に代替テキストを追加できます。 Aspose.Wordsこのような代替テキストを出力PDFにエクスポートします。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では、次のように示されています（詳細を表示するには展開してください）。:</summary>
    <p></p>
    <p>コンテンツが自然な所定のテキスト類似体を持たないすべての構造要素、例えば画像、式など。、構造要素辞書のAltエントリを使用して代替テキストの説明を提供する必要があります。..</p>
    <p>注代替の説明は、それ以外の場合は不透明な非テキストコンテンツの適切な解釈を支援するテキストの説明を提供します。</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、例を見ることができます：すべての要素に代替テキストが含まれていることを確認する方法（詳細を表示するには展開します）。</summary>
    <p></p>
    <p>ユーザーは、ソースWord文書のいずれかにすべての要素に代替テキストが含まれていることを確認する必要があります:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>または出力PDF文書:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### ハイパーリンクの代替説明

| PDFAspose.Words内の標準コンプライアンスレベル | 要件の存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

前の点に加えて、Microsoft Wordドキュメントでは、ユーザーがハイパーリンクに代替テキストを追加することもできます。 Aspose.Wordsこのような代替テキストを出力PDFにエクスポートします。

残念ながら、すべてのアプリケーションで別の説明を設定できるわけではありません。 たとえば、Adobe Acrobatは現在、ハイパーリンクのような説明を設定することはできません。 ただし、Microsoft Wordでは、次のようにしてこれを行うことができます:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Microsoft WordGUIを使用して目次(TOC)で自動生成されたハイパーリンクの代替テキストを設定できないという問題が発生することがあります。 Aspose.Wordsはそのようなフィールドを更新し、独自にリンクを生成することができます。

コード例に従って、Aspose.Wordsドキュメントオブジェクトモデル(DOM)を使用して`TOC`フィールドを更新します:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(filename);
auto tocHyperLinks = doc->get_Range()->get_Fields()->
    LINQ_Where([](SharedPtr<Field> f) {return f->get_Type() == FieldType::FieldHyperlink; })->            
    LINQ_Where([](SharedPtr<FieldHyperlink> f) { return f->get_DisplayResult().StartsWith(u"#_Toc"); });

for (const auto& link : tocHyperLinks)
    link->set_ScreenTip(link->get_DisplayResult());

auto opt = MakeObject<PdfSaveOptions>();
opt->set_Compliance(PdfCompliance::PdfUa1);
opt->set_DisplayDocTitle(true);
opt->set_ExportDocumentStructure(true);
opt->get_OutlineOptions()->set_HeadingsOutlineLevels(3);
opt->get_OutlineOptions()->set_CreateMissingOutlineLevels(true);

auto outFile = filename.substr(0, filename.find_last_of('.')) + "_aw.pdf";
doc->Save(outFile, opt);
{{< /highlight >}}

### テーブルヘッダー

| PDFAspose.Words内の標準コンプライアンスレベル | 要件の存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

PDF/UA-1ドキュメント内のテーブルには、列、行、またはその両方のヘッダーが必要です。 PDF/Aは標準のテーブルマークアップのみを必要としますが、これには追加の制限はありません。 Aspose.Wordsは標準テーブルマークアップを自動的に生成することに注意してください。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では、次のように示されています（詳細を表示するには展開してください）。:</summary>
    <p></p>
    <p>テーブルにはヘッダーを含める必要があります...テーブルには、列ヘッダー、行ヘッダー、またはその両方を含めることができます。</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、例を見ることができます：テーブルヘッダーを設定する方法（詳細を表示するために展開）。</summary>
    <p></p>
    <p>テーブルヘッダーは、ソースMicrosoft Word文書のいずれかを設定できます:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>または出力PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### 置換テキスト

| PDFAspose.Words内の標準コンプライアンスレベル | 要件の存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>仕様では、次のように示されています（詳細を表示するには展開してください）。:</summary>
    <p></p>
    <p>仕様では、次のことが示されています。:</p>
    <p>カスタム文字やインライングラフィックスなど、非標準的な方法で表されるすべてのテキスト構造要素は、構造要素辞書の`ActualText`エントリを使用して..</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Wordドキュメントでは、ユーザーは置換テキストを設定できません。 したがって、これは出力PDFで確認して修正する必要があります:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### 略語と頭字語の拡張

| PDFAspose.Words内の標準コンプライアンスレベル | 要件の存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>仕様では、次のように示されています（詳細を表示するには展開してください）。:</summary>
    <p></p>
    <p>テキストコンテンツ内の略語と頭字語のすべてのインスタンスは、eプロパティが略語または頭字語のテキスト展開を提供するSpanタグを使用して、マークされたコンテンツシーケンスに配置する必要があります。..</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Wordドキュメントでは、ユーザーが略語や頭字語の拡張を設定することはできません。 したがって、これは出力PDFで確認して修正する必要があります:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## 文書タイトル

| PDFAspose.Words内の標準コンプライアンスレベル | 要件の存在 |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />PDF/UA-1の文書にはタイトルが必要です。 |

{{% alert color="secondary" %}}
<details>
    <summary>仕様では、次のように示されています（詳細を表示するには展開してください）。:</summary>
    <p></p>
    <p>仕様では、次のことが示されています。:</p>
    <p>ドキュメントのカタログディクショナリ内のメタデータストリームには、dc:titleエントリが含まれている必要があります。dcは、Dublin Coreメタデータスキーマの推奨…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、例を見ることができます:ドキュメントのタイトルを設定する方法(詳細を表示するには展開してください)。</summary>
    <p></p>
    <p>文書のタイトルは、ソースMicrosoft Word文書のいずれかを設定できます:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>または出力PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## フォント要件

| PDFAspose.Words内の標準コンプライアンスレベル | 要件の存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

に変換するときにフォントを操作する際のニュアンスもいくつかありますPDF/A-1, PDF/A-2, PDF/A-4 またはAspose.Wordsを使用したPDF/UA-1形式。 出力文書で起こりうる問題を回避したい場合は、それらを考慮に入れる必要があります。

以下のセクションでは、そのようなニュアンスとそのソリューションのオプションについて説明します。

### フォントの法的要件

| PDFAspose.Words内の標準コンプライアンスレベル | 要件の存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Wordsは使用されているフォントの法的制限を検証しません–それはユーザー次第です。 つまり、ユーザーはAspose.Wordsを使用してPDF変換に不適切なフォントを提供すべきではありません。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では、次のように示されています（詳細を表示するには展開してください）。:</summary>
    <p></p>
    <p>無制限の普遍的なレンダリングのためにファイルに合法的に埋め込まれているフォントプログラムのみが使用されます。</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (2つの仕様でまったく同じ引用符）</p>
</details>
{{% /alert %}}

### .notdefGlyph

| PDFAspose.Words内の標準コンプライアンスレベル | 要件の存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

`.notdef`グリフの使用は禁止されています。 選択したフォントに存在せず、フォントフォールバックメカニズムで解決できない文字が文書に含まれている場合、`.notdef`グリフが表示されます。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では、次のように示されています（詳細を表示するには展開してください）。:</summary>
    <p></p>
    <p>準拠する文書には、への参照が含まれてはなりません。notdef任意のコンテンツストリーム内のテキストレンダリングモードに関係なく、演算子を表示するテキストのいずれかからのグリフ。</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (2つの仕様でまったく同じ引用符）</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、例を見ることができます：これらの文字を削除または置換する方法（詳細を表示するために展開）。</summary>
    <p></p>
    <p>ユーザーは、ソースWord文書のいずれかでこれらの文字を削除または置換する必要があります:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>または"編集PDF"ツールを使用して出力PDF文書:</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### プライベートユースエリア（PUA）

| PDFAspose.Words内の標準コンプライアンスレベル | 要件の存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

プライベートユースエリア(PUA)文字は、主に"Symbol"、"Wingdings"、"Webdings"などのWindowsシンボリックフォントに表示されます。 Microsoft Word形式では、文字の実際のテキストを格納するオプションは提供されません。

{{% alert color="secondary" %}}
<details>
    <summary>仕様では、次のように示されています（詳細を表示するには展開してください）。:</summary>
    <p></p>
    <p>レベルa準拠の場合のみ、任意の文字の場合。.. これは、Unicode Private Use Area(PUA)内のコード、つまりActualTextエントリにマップされます。.. この文字またはそのような文字が一部である文字のシーケンスのために存在するものとします。</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol"は、シンボリックフォントの代替として使用できるWindowsUnicodeフォントです。

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、例を見ることができます：シンボリックフォントの問題を解決するためにユーザーが何をすべきか（詳細を表示するために展開）。</summary>
    <p></p>
    <p>ソースWord文書内のシンボリックフォントをUnicodeフォントに置き換えます:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>または、出力PDF文書内の問題のある文字にActualTextエントリを追加します:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}