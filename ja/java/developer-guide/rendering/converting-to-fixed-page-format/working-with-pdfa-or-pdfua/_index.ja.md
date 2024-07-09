---
title: PDF/A または PDF/UA と連携
second_title: Aspose.Words お問い合わせ Java
articleTitle: PDF/A または PDF/UA と連携
linktitle: PDF/A または PDF/UA と連携
description: "PDF/A-1、PDF/A-2、PDF/A-4、PDF/UAへの変換 Javaお問い合わせ PDF/A 文書に変換する際に問題がいくつかあります。 Aspose.Words お問い合わせ Java 解決する。"
type: docs
weight: 28
url: /ja/java/working-with-pdfa-or-pdfua/
---

PDF/A および PDF/UA 形式は、Word 形式の文書から PDF への自動変換中に満たせないドキュメントコンテンツに関連するいくつかの要件を意味します。 これらの要件は、完全なPDF / AおよびPDF / UA準拠文書を生成するために変換後のPDF文書または変換前のWord文書で検証し、修正する必要があります。

基本的な要件は、PDF/A と PDF/UA の文書の構造やフォントのためです。次のセクションで検討します。

{{% alert color="primary" %}}

PDF/UA-1 の出力は、WCAG 2.0 および 508 のセクションでも対応可能です。

{{% /alert %}}

## 文書構造要件

PDF/A-1a、PDF/A-2a、PDF/A-4、PDF/UA-1 のフォーマットは現在の条件です。

方法のニュアンスがあります Aspose.Words さまざまなPDF形式規格に変換するときに動作します。 想定した結果を取得したい場合は、考慮に入れる必要があります。

{{% alert color="primary" %}}

PDF/A-4の論理構造要件はありません。 そのため、この「文書構造要件」セクションでPDF/A-4版は検討しておりません。

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>仕様は、以下を教えてくれます(詳細を見るために展開します):</summary>
    <p></p>
    <p>適切な検証なしに自動化されたプロセスを使用して、構造的または意味のある情報を生成するためにライターにとっては不注意です。</p>
    <p>ISO 19005-2、6.7.1</p>
</details>
{{% /alert %}}

下のサブセクションは、どのようにニュアンスを記述します Aspose.Words さまざまなPDFフォーマットの基準やソリューションのオプションに変換するときに動作します。

### 構造のタイプ

|  PDF標準準拠レベル Aspose.Words |  要件の存在 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a をダウンロード |   {{< emoticons/tick >}}   |
|  PDF/A-2a(PDF) |   {{< emoticons/tick >}}   |
|  PDFファイル/UA-1 |   {{< emoticons/tick >}}   |

PDF文書は、見出し、段落、表などのブロックの順番です。 これらのブロックは、文書構造を形成する - 強く、弱い。

強弱な構造物もPDF/Aで有効です。 Microsoft Word 文書は設計によって弱い構造を持っていて、 Aspose.Words それぞれ弱構造でPDFを作成し、ソース文書の段落の輪郭レベルに応じて見出しを生成します。

弱構造のPDF/UA-1ドキュメントでは、見出し番号がギャップなしで順に進むことが必要です。

{{% alert color="secondary" %}}
<details>
    <summary>仕様は、以下を教えてくれます(詳細を見るために展開します):</summary>
    <p></p>
    <p>ブロックレベルの構造は、2つの主要なパラダイムの1つに従うかもしれません:</p>
    </ol>
      <li>強く構成される。 グループの要素は、材料の組織を記事、セクション、サブセクションなどに反映するために必要な多くのレベルに巣立ちます。 各レベルでは、グループ化要素の子供は、そのレベルのコンテンツの見出し(H)、1つまたは複数の段落(P)で構成され、ネストされたサブセクションの1つまたは複数のグループ化要素で構成されています。</li>
      <li>弱い構造。 ドキュメントは比較的平らで、グループ化要素の1つまたは2つのレベルだけ、すべての見出し、段落、そして他のBLSEを即時の子供として持っている。 この場合、材料の組織は論理構造に反映されませんが、特定のレベル(H1–H6)で見出しの使用によって表現されることがあります。</li>
    </ol>
    <p></p>
    <p>ISO-32000-1、14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>PDF/UA-1 のドキュメントでは、ヘッディングレベルに関連する仕様(詳細を見るための拡張)が含まれています。</summary>
    <p></p>
    <p>文書のセマンティックスがヘッダの降下シーケンスを必要とする場合、そのようなシーケンスは厳密な数値順で進行し、介入見出しレベルをスキップしません。 H1 H2 H3は許されませんが、H1 H3はそうではありません。</p>
    <p>ISO-14289-1、7.4.2</p>
</details>
{{% /alert %}}

正しい出力を確保するため、ユーザーは、ソース文書のコンテンツを適切に整理し、輪郭レベルが正しく段落のために指定されていることを確認する必要があります。 それ以外の場合は、出力PDF文書の構造を検証して修正する必要があります。

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、例を確認できます。アウトラインレベルを設定する方法 Microsoft Word または出力PDF文書の構造を点検し、修正して下さい(細部を見るために拡大して下さい)。</summary>
    <p></p>
    <p>インスタグラム Microsoft Word デフォルトでは、"Heading X" スタイルは、アウトラインレベルを設定するために使用できます。</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>また、「パラグラフ」ウィンドウでアウトラインレベルの確認や変更ができます。</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>アクロバットでは、ドキュメント構造を「タグ」ペインでチェックまたは変更できます。</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### コンテンツをアーティファクトとしてマークする

|  PDF標準準拠レベル Aspose.Words |  要件の存在 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a をダウンロード |   {{< emoticons/tick >}}   |
|  PDF/A-2a(PDF) |   {{< emoticons/tick >}}   |
|  PDFファイル/UA-1 |   {{< emoticons/tick >}}   |

瞬間に、 Aspose.Words マークページヘッダーとフッター、セパレータ、繰り返しテーブルヘッダセル、およびアーティファクトとして装飾的な画像に注意して下さい。 このリストは今後更新される可能性があります。

{{% alert color="secondary" %}}
<details>
    <summary>仕様は、以下を教えてくれます(詳細を見るために展開します):</summary>
    <p></p>
    <p>ドキュメント内のグラフィックオブジェクトは、2つのクラスに分けられます。</p>
    </ol>
      <li>ドキュメントの実際のコンテンツは、文書の作者によって最初に導入された素材を表すオブジェクトで構成されています。</li>
      <li>アーティファクトは、作者の元のコンテンツの一部ではないグラフィックスオブジェクトですが、パジネーション、レイアウト、またはその他の厳密に機械的プロセスの過程で、コンフィグライターによって生成されます。</li>
    </ol>
    <p></p>
    <p>ISO-32000-1、14.8.2.2.1</p>
</details>
{{% /alert %}}

文書にアーティファクトとしてマークされるべきその他のコンテンツが含まれている場合、またはアーティファクトされたコンテンツのいずれかが実際のコンテンツである場合、顧客は出力PDFでそれを修正する必要があります。

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、例を確認できます。形状を装飾としてマークする方法 Microsoft Word または出力PDF文書のアーティファクトとして形状をマークする(詳細を見るために展開)。</summary>
    <p></p>
    <p>たとえば、形状は装飾としてマークすることができます Microsoft Word, 従ってそれらはアーティファクトとしてPDFに輸出されます:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>出力PDFのアーティファクトとして形状をマークすることができます。</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>また、アーティファクトから実際のコンテンツにテキストを出力PDFに切り替えることができます。</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### 自然言語指定

|  PDF標準準拠レベル Aspose.Words |  要件の存在 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a をダウンロード |   {{< emoticons/tick >}}   |
|  PDF/A-2a(PDF) |   {{< emoticons/tick >}}   |
|  PDFファイル/UA-1 |   {{< emoticons/tick >}}   |

テキスト言語の指定 Microsoft Word ドキュメント。 Aspose.Words 指定された言語を出力PDFにエクスポート *Lang* マークされたコンテンツシーケンスまたはスパンタグに添付された属性 – によって制御される [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) プロパティ. 一般的に、テキストがユーザーによって入力されたときには言語の問題はありません。 Microsoft Wordお問い合わせ しかし、テキストが自動的に生成されると言語が不正確である可能性がある。

{{% alert color="secondary" %}}
<details>
    <summary>仕様は、以下を教えてくれます(詳細を見るために展開します):</summary>
    <p></p>
    <p>ファイルのすべてのテキストのデフォルトの自然言語は、ドキュメントのカタログ辞書のLangエントリで指定する必要があります。</p>
    <p>デフォルト言語と異なるファイル内のすべてのテキストコンテンツは、使用して表示する必要があります `Lang` マークされたコンテンツシーケンスに添付されたプロパティ、または構造要素の辞書のLangエントリによって...</p>
    <p>ISO-19005-2、6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>また、PDF/UA-1 では、以下の仕様をお伝えします。(詳細は、下記をご覧ください。)</summary>
    <p></p>
    <p>自然言語は宣言しなければなりません... 自然言語の変化を宣言する。</p>
    <p>ISO日 時 分 時 分 時 分 時 分 時 分 時 分 時 分 時 分 時 分 時 分 時 分 時 分 時 分 時 分 時 分 時 分 時 分 時 分 時 分 時 分 時 分 時 分 時 分 分 時 分 分 時 分 時 分 分 時 分 分 時 分 分 時 時 分 分 分 時 分 時 時 分 分 時 時 時 時 分 分 時 時 時 時 時 時 分 時 時 時 時 時 時 時 時 時 時 時 時 時 分 分 時 分 分 分 時 分 時 時 分 分 時 時 時 時 時 分 時 分 時 時 分 分 時 時 時 分 分</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、言語が正しく指定されていることを確認する方法(詳細を参照して)例を見ることができます。</summary>
    <p></p>
    <p>ユーザーは、Word文書のいずれかで言語が正しく指定されていることを確認する必要があります。</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>または出力PDF文書:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### 図キャプション

|  PDF標準準拠レベル Aspose.Words |  要件の存在 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a をダウンロード |                           |
|  PDF/A-2a(PDF) |                           |
|  PDFファイル/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word 文書は、ユーザーが数値キャプションを追加できるようにします。

{{% alert color="secondary" %}}
<details>
    <summary>仕様は、以下を教えてくれます(詳細を見るために展開します):</summary>
    <p></p>
    <p>図に付随するキャプションは、キャプションタグでタグ付けします。</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

最近の投稿 Aspose.Words Captionタグでキャプションをエクスポートできないため、出力PDFにフラグを立てる必要があります。

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、キャプション(詳細を見るためにexpand)をインサートする方法を例に示すことができます。</summary>
    <p></p>
    <p>インスタグラム Microsoft Word, コンテキストメニューからキャプションを差し込むことができます。</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>アクロバットではキャプションを追加または変更することができます `Object` プロパティダイアログ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### 代替説明

|  PDF標準準拠レベル Aspose.Words |  要件の存在 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a をダウンロード |   {{< emoticons/tick >}}   |
|  PDF/A-2a(PDF) |   {{< emoticons/tick >}}   |
|  PDFファイル/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word 文書は、ユーザーが画像、図形、表に代替テキストを追加できるようにします。 Aspose.Words そのような代替テキストを出力PDFにエクスポートします。

{{% alert color="secondary" %}}
<details>
    <summary>仕様は、以下を教えてくれます(詳細を見るために展開します):</summary>
    <p></p>
    <p>コンテンツが自然な前述のテキストのアナログを持っていないすべての構造要素、例えば画像、式など、構造要素の辞書のAltエントリを使用して代替テキストの説明を供給する必要があります...</p>
    <p>お問い合わせ 代替説明は、他の不透明非テキストコンテンツの適切な解釈で役立つテキストの説明を提供します。</p>
    <p>ISO-19005-2、6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、すべての要素が代替テキストを持っていることを確実にする方法(詳細を参照するために拡張)。</summary>
    <p></p>
    <p>ユーザーは、すべての要素がソースWord文書の代替テキストを持っていることを確実にする必要があります。</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>または出力PDF文書:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Hyperlinksの代替説明

|  PDF標準準拠レベル Aspose.Words |  要件の存在 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a をダウンロード |                           |
|  PDF/A-2a(PDF) |                           |
|  PDFファイル/UA-1 |   {{< emoticons/tick >}}   |

前のポイントに加えて、 Microsoft Word 文書はまた、ユーザーがハイパーリンクに代替テキストを追加できるようにします。 Aspose.Words そのような代替テキストを出力PDFにエクスポートします。

残念ながら、すべてのアプリケーションでは、代替説明を設定することができます。 例えば、 Adobe Acrobat 現在、ハイパーリンクの記述を設定することはできません。 しかし、 Microsoft Word, 次のようにします。

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

コンテンツ(TOC)の表に自動生成されたハイパーリンク用のaltテキストを設定できないことがあります。 Microsoft Word ログイン Aspose.Words そのようなフィールドを更新し、リンクを自分で生成できます。

更新するコード例に従ってください `TOC` フィールドを使用してフィールド Aspose.Words Document Object Model ( )DOM):

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### テーブルヘッダー

|  PDF標準準拠レベル Aspose.Words |  要件の存在 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a をダウンロード |                           |
|  PDF/A-2a(PDF) |                           |
|  PDFファイル/UA-1 |   {{< emoticons/tick >}}   |

PDF/UA-1 文書の表には、ヘッダ - 列、行、または両方が必要です。 PDF/A は標準テーブルのマークアップだけを必要とし、追加の制限はありません。 注意: Aspose.Words 標準的なテーブルマークアップを自動的に生成します。

{{% alert color="secondary" %}}
<details>
    <summary>仕様は、以下を教えてくれます(詳細を見るために展開します):</summary>
    <p></p>
    <p>テーブルにはヘッダが含まれている必要があります... カラムヘッダ、行ヘッダ、または両方を含むことができます。</p>
    <p>ISO-14289-1、7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、テーブルヘッダの設定方法(詳細を見るために展開)の例を確認できます。</summary>
    <p></p>
    <p>テーブルヘッダーは、ソースのいずれかを設定できます Microsoft Word ドキュメント:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>または出力PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### 置換テキスト

|  PDF標準準拠レベル Aspose.Words |  要件の存在 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a をダウンロード |   {{< emoticons/tick >}}   |
|  PDF/A-2a(PDF) |   {{< emoticons/tick >}}   |
|  PDFファイル/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>仕様は、以下を教えてくれます(詳細を見るために展開します):</summary>
    <p></p>
    <p>仕様は以下のとおりです。</p>
    <p>標準でない方法で表されるすべてのテキスト構造要素、例えば、カスタム文字またはインライン グラフィックスは、代替テキストをを使用して供給する必要があります `ActualText` 構造要素辞書のエントリ...</p>
    <p>ISO-19005-2、6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word ドキュメントは、ユーザーが置換テキストを設定することはできません。 そのため、出力PDFで検証および修正する必要があります。

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### 略語と頭字語の拡張

|  PDF標準準拠レベル Aspose.Words |  要件の存在 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a をダウンロード |   {{< emoticons/tick >}}   |
|  PDF/A-2a(PDF) |   {{< emoticons/tick >}}   |
|  PDFファイル/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>仕様は、以下を教えてくれます(詳細を見るために展開します):</summary>
    <p></p>
    <p>テキストコンテンツの省略と頭字語のすべてのインスタンスは、E プロパティが省略または頭字語のテキスト拡張を提供するスパンタグでマークされたコンテンツシーケンスに配置する必要があります。</p>
<p>ISO-19005-2、6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word ドキュメントは、ユーザーが省略と頭字語の拡張を設定することはできません。 そのため、出力PDFで検証して修正する必要があります。

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## ドキュメントタイトル

|  PDF標準準拠レベル Aspose.Words |  要件の存在 |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a をダウンロード |                                                                |
|  PDF/A-2a(PDF) |                                                                |
|  PDFファイル/A-4 |                                                                |
|  PDFファイル/UA-1 |  {{< emoticons/tick >}}<br/>PDF/UA-1 のドキュメントにはタイトルが必要です。 |

{{% alert color="secondary" %}}
<details>
    <summary>仕様は、以下を教えてくれます(詳細を見るために展開します):</summary>
    <p></p>
    <p>仕様は以下のとおりです。</p>
    <p>ドキュメントのカタログ辞書のメタデータストリームには、dc:title エントリが含まれている必要があります。dc は、ダブリンコアメタデータスキーマの推奨接頭辞です。</p>
    <p>ISO-14289-1、7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、ドキュメントのタイトルを設定する方法(詳細を参照するための拡張)の例を見ることができます。</summary>
    <p></p>
    <p>ドキュメントのタイトルは、ソースのいずれかを設定することができます Microsoft Word ドキュメント:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>または出力PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## フォントの要件

|  PDF標準準拠レベル Aspose.Words |  要件の存在 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a をダウンロード |   {{< emoticons/tick >}}   |
|  PDF/A-1bの特長 |   {{< emoticons/tick >}}   |
|  PDF/A-2a(PDF) |   {{< emoticons/tick >}}   |
|  PDF/A-2bの特長 |   {{< emoticons/tick >}}   |
|  PDFファイル/A-4 |   {{< emoticons/tick >}}   |
|  PDFファイル/UA-1 |   {{< emoticons/tick >}}   |

PDF/A-1、PDF/A-2、PDF/A-4、PDF/UA-1の形式に変換すると、フォントで作業するニュアンスもいくつかあります。 Aspose.Wordsお問い合わせ 出力文書に問題が起きないようにするには、考慮に入れなければなりません。

以下のセクションでは、そのようなニュアンスとソリューションのオプションについて説明します。

### フォント法的要件

|  PDF標準準拠レベル Aspose.Words |  要件の存在 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a をダウンロード |   {{< emoticons/tick >}}   |
|  PDF/A-1bの特長 |   {{< emoticons/tick >}}   |
|  PDF/A-2a(PDF) |   {{< emoticons/tick >}}   |
|  PDF/A-2bの特長 |   {{< emoticons/tick >}}   |
|  PDFファイル/A-4 |   {{< emoticons/tick >}}   |
|  PDFファイル/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words 使用されるフォントの法的制限を検証しません。それはユーザー次第です。 言い換えると、PDF変換用の不適切なフォントは使用しない Aspose.Wordsお問い合わせ

{{% alert color="secondary" %}}
<details>
    <summary>仕様は、以下を教えてくれます(詳細を見るために展開します):</summary>
    <p></p>
    <p>法的に埋め込まれるフォントプログラムのみが、無制限の、ユニバーサルレンダリングに使用できるファイルです。</p>
    <p>ISO-19005-2、6.2.11.4.1; ISO-14289-1, 7.21.4.1 (2つの仕様の同じ引用)</p>
</details>
{{% /alert %}}

### .notdefの特長 Glyph

|  PDF標準準拠レベル Aspose.Words |  要件の存在 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a をダウンロード |                           |
|  PDF/A-1bの特長 |                           |
|  PDF/A-2a(PDF) |   {{< emoticons/tick >}}   |
|  PDF/A-2bの特長 |   {{< emoticons/tick >}}   |
|  PDFファイル/A-4 |   {{< emoticons/tick >}}   |
|  PDFファイル/UA-1 |   {{< emoticons/tick >}}   |

利用状況 `.notdef` glyph 禁止事項 ザ・オブ・ザ・ `.notdef` glyph ドキュメントには、選択したフォントに存在しない文字と、フォントフォールバック機構を介して解決できない文字が含まれている場合に表示されます。

{{% alert color="secondary" %}}
<details>
    <summary>仕様は、以下を教えてくれます(詳細を見るために展開します):</summary>
    <p></p>
    <p>準拠文書は .notdef への参照を含んでいません glyph テキストレンダリングモードに関係なく、任意のコンテンツストリームで、オペレータを示すテキストのいずれかから。</p>
    <p>ISO-19005-2、6.2.11.8; ISO-14289-1, 7.21.8(2つの仕様の同じ引用)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、これらの文字を削除または置き換える例(詳細を参照するために拡張)を見ることができます。</summary>
    <p></p>
    <p>ユーザーは、ソースWord文書のいずれかでこれらの文字を削除または置き換える必要があります。</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>または「PDF編集」ツールを使用して出力PDF文書:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### プライベート利用エリア(PUA)

|  PDF標準準拠レベル Aspose.Words |  要件の存在 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a をダウンロード |                           |
|  PDF/A-1bの特長 |                           |
|  PDF/A-2a(PDF) |   {{< emoticons/tick >}}   |
|  PDF/A-2bの特長 |   {{< emoticons/tick >}}   |
|  PDFファイル/A-4 |   {{< emoticons/tick >}}   |
|  PDFファイル/UA-1 |                           |

プライベート利用エリア(PUA)の文字は大抵 Windows "Symbol", "Wingdings", "Webdings" などのシンボリックフォント。 Microsoft Word フォーマットは実際のテキストを文字に格納するオプションを提供しません。

{{% alert color="secondary" %}}
<details>
    <summary>仕様は、以下を教えてくれます(詳細を見るために展開します):</summary>
    <p></p>
    <p>レベルのため 適合性は、任意の文字に対してのみ、Unicode Private Use Area (PUA) のコードまたはコードにマッピングされ、ActualText エントリ... は、この文字またはそのような文字が部分である文字のシーケンスのために存在します。</p>
    <p>ISO-19005-2、6.2.11.7.3</p>
</details>
{{% /alert %}}

"「Segoe UIシンボル」は、 Windows 記号フォントの代替として使用できるUnicodeフォント。

{{% alert color="secondary" %}}
<details>
    <summary>このブロックでは、シンボリックフォント(詳細を参照するために拡張)で問題を解決するために、ユーザーが何をすべきかの例を見ることができます。</summary>
    <p></p>
    <p>ソースWord文書のUnicode 1でシンボルフォントを置き換えます。</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>または、出力 PDF ドキュメントで問題のある文字に ActualText エントリを追加します。</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
