---
title: PDF/AおよびPDF/UAへの変換
second_title: Aspose.WordsのためのJava
articleTitle: PDF/AとPDF/UAへの変換の特徴を学ぶ
linktitle: PDF/AとPDF/UAへの変換の特徴を学ぶ
description: "に変換するPDF/A-1, PDF/A-2, PDF/A-4 そして、PDF/UAはJavaを使用します。 Javaを使用して文書を変換するには、最適なPDF標準を選択します。"
type: docs
weight: 25
url: /ja/java/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDFは固定ページ形式であり、ユーザーの間で非常に人気があり、さまざまなアプリケーションで広くサポートされています。PDF文書はどのデバイスでも同じように見えます。 このため、PDFへの変換はAspose.Wordsの重要な機能です。

PDFは、特定のファイル構造、グラフィカルモデル、フォントの埋め込み、および文書構造タグ、暗号化、デジタル署名、編集可能なフォームなどの複雑な出力機能を備えているため、それ自体が複雑な形式です。 さらに、ドキュメントをPDFに変換するには、いくつかの計算段階が必要であり、複雑で時間がかかります。

このセクションでは、さまざまなPDF標準のドキュメントを操作するときに発生する可能性のある主な問題を検討し、それらを解決するためのオプ

## どのPDF標準Aspose.Wordsがサポートしていますか

Aspose.Wordsでは、PDF/A-1、PDF/A-2、PDF/A-4形式とPDF/UA-1形式を使用できるようになりました:

* PDF/A-1には透過性などの重大な制限があり、一部の圧縮オプションは禁止されています
* PDF/A-2は、透明度やレイヤー効果のサポートやOpenTypeフォントの埋め込みなど、PDF/A-1の制限の一部を排除します
* PDF/A-4は改訂された準拠レベルを前提としています:通常のPDF/A-4準拠は以前のバージョンのレベルU準拠と同等であり、レベルA準拠は削除されます
* PDF/UA-1コンテンツは、ISO32000-1:2008に従ってタグ付けおよび標準化する必要があります

PDF/Aは、電子文書のアーカイブおよび長期保存に使用することを目的としたISO-標準化されたバージョンPDFです。 同時に、PDF/UAは、支援技術を使用する障害を持つ人々のアクセシビリティを確保するために設計されたPDFの別のISO標準化されたバージョンです。 PDF標準への準拠レベルを指定するには、[Compliance](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getCompliance)プロパティを使用します。 保存条件のため、PDF/A文書はすべてのフォントを埋め込み、暗号化を無効にする必要がありますが、PDF/UAはすべてのフォントのみを埋め込

このセクションでは、PDF/AまたはPDF/UA-1ドキュメントの操作について詳しく見ていきます。

## PDF規格に関連するISO

異なるPDF規格の詳細については、次のISOsを確認してください:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## また見て下さい

* [Adobe Acrobatで文書構造タグを編集する方法](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Microsoft Wordでテキスト言語を確認または編集する方法](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Adobe Acrobatのテキスト言語を変更する方法](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [図形、画像、グラフ、SmartArtグラフィック、またはMicrosoft Word内の他のオブジェクトに代替テキストを追加する方法](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [代替テキストと補足情報をタグに追加する方法](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) （または同じ情報を読んでください [Adobe Acrobatユーザー・ガイド](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [テキストのActualTextエントリを設定する方法](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html)、"省略された用語、数式、またはUnicode以外の記号の実際のテキストを追加する"セクション
* [一般的なWindowsシンボリックフォントのUnicodeマッピング](http://www.alanwood.net/demos/webdings.html)
