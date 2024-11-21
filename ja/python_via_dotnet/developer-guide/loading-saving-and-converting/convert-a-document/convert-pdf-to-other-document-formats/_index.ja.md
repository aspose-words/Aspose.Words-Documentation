---
title: PDF を他のドキュメント形式に変換する
second_title: Python via .NET用Aspose.Words
articleTitle: PDF を他のドキュメント形式に変換する
linktitle: PDF を他のドキュメント形式に変換する
type: docs
description: "`Python.Words` を使用して、PDF を DOCX、DOC などの Word 形式、JPG や PNG などの画像形式、または Aspose でサポートされているその他の形式に変換します。"
keywords: convert pdf to other formats python
weight: 45
url: /ja/python-net/convert-pdf-to-other-document-formats/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words は PDF のような複雑な形式でも読み込むことができます。これにより、新たな機会が開かれます。PDF を Word またはその他の形式に変換することが可能になり、ユーザーは多くの応用問題の解決においてはるかに先を行くことができます。

## PDF を他の形式に変換 {#convert-pdf-to-other-formats}

PDF からの最も一般的な変換は、DOCX、DOC などの Microsoft Word 形式、および JPG や PNG などの画像形式への変換です。そうは言っても、ドキュメントをある形式から別の形式に変換することは、おなじみの方法で実行されます。

次のコード例は、ドキュメントを PDF から DOCX に変換する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## PDF {#specify-load-options-when-importing-pdf} インポート時のロード オプションの指定

Aspose.Words は [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) クラスを提供します。これにより、PDF ドキュメントのロード方法をより正確に制御できます。

ほとんどのプロパティは、[LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) クラスにすでに存在するプロパティを継承またはオーバーロードします。これらに加えて、PDF 形式には多数のプロパティが指定されています。たとえば、[page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) プロパティと [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) プロパティを使用して PDF ドキュメントからロードするページ範囲を定義したり、[skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) プロパティを使用して PDF をロードするときに画像をスキップするかどうかを制御したりできます。サポートされているもう 1 つのパラメーターは [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/) です。これは、パスワードで保護されたドキュメントに指定する必要があります。

## サポートされている PDF コンテンツ {#supported-pdf-content}

PDF2Word プラグインは現在、次のデータ型をサポートしています。

* テキスト段落
※画像
* テーブル
* リスト
* ヘッダーとフッター
* 脚注
* ページ番号
* 右から左へのテキスト (いくつかの制限があります)
* 検索可能な PDF (背景テキストを優先して前面の画像が削除されます)

## 計画されている機能 {#planned-features}

一部の機能はまだ開発初期段階にあるか、開発ロードマップに含まれています。

* 目次
* 検索可能な PDF と検索不可能な PDF の OCR
* 経過報告
* 複数列のテキスト
* 数学の公式
* 自動フィールドの追加 (`PAGE` と NUMPAGES 以外)

## PDF ロードの例外

PDF ドキュメントの変換中に、次のいずれかの例外が発生する可能性があります。

|  例外 |  説明 |
|  --------------------------------  |  ------------------------------------------------------------  |
|   *FileLoadException*               |  何らかの理由で PDF ファイルを処理できません。<br /> {{% alert color="primary" %}}[テクニカルサポート](/words/ja/python-net/technical-support/).{{% /alert %}} を使用して、詳細な調査のために開発チームに問題を報告できます。 |
|   *DrmProtectedFileException*       |  PDF ファイルは Adobe DRM で保護されているため、Pdf2Word ではデコードできません。 |
|   *PasswordProtectedFileException*  |  パスワードで保護された PDF には、正しいパスワードを指定する必要があります。 |


