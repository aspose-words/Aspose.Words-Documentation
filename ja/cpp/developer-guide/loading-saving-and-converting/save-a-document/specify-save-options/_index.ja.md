---
title: C++での保存オプションの指定
second_title: C++の場合Aspose.Words
articleTitle: 保存オプションの指定
linktitle: 保存オプションの指定
description: "保存プロセスをより正確に制御します。"
type: docs
weight: 10
url: /ja/cpp/specify-save-options/
---

ドキュメントを保存するときに、いくつかの高度なプロパティを設定できます。 Aspose.Wordsは、保存プロセスのより正確な制御を可能にする[SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/)クラスを提供します。 **SaveOptions**オブジェクトを受け入れる**Save**メソッドのオーバーロードがあります–それは**SaveOptions**クラスから派生したクラスのオブジェクトでなければなりません。 たとえば、PDF形式に保存する場合は[PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/)、Markdown形式に保存する場合は[MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions)、または画像に保存する場合は[ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/)があります。PDF形式に保存する場合は[PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/)、PDF形式に保存す この記事では、**SaveOptions**から派生したいくつかのオプションクラスを使用する例を示します。

次のコード例は、ドキュメントをHTMLに保存する前に保存オプションを設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp">}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

この記事では、ドキュメントを保存するときに制御できるいくつかのプロパティについて説明します。

## パスワードで文書を暗号化する

暗号化された文書のパスワードを取得または設定するには、**Password**プロパティを使用します。 対応するクラスの**Password**プロパティを使用して、選択したドキュメント形式を操作します。

たとえば、ドキュメントをDOCまたはDOT形式で保存する場合は、[DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options)クラスの[Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/)プロパティを使用します。

次のコード例は、RC4暗号化メソッドを使用してドキュメントを暗号化するためのパスワードを設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Loading-And-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp">}}

ドキュメントをODT形式で保存する場合は、[OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options)クラスの[Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/)プロパティを使用します。

次のコード例は、パスワードで暗号化されたOpenDocumentを読み込んで保存する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp">}}

すべての形式が暗号化と**Password**プロパティの使用をサポートしているわけではありません。

## ドキュメント保存の進行状況通知を表示する

Aspose.Wordsは、[ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/)プロパティを使用して、ドキュメントの保存の進行状況に関する通知を取得する機能を提供します。

に保存するときに利用できるようになりましたDOCX, FlatOpc, DOCM, DOTM, DOTX, HTML、MHTML、EPUB、XamlFlow、XamlFlowPack、またはTXT形式。

## 文書の作成時間を更新する

Aspose.Wordsは、[CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/)プロパティを使用してutcでドキュメント作成日を取得または設定する機能を提供します。 [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/)オプションを使用して保存する前にこの値を更新することもできます。

次のコード例は、ドキュメントの作成時間を更新する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp">}}

## 最後に保存したプロパティを更新する

Aspose.Wordsは、[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/)プロパティを使用して、[LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/)プロパティが保存前に更新されるかどうかを決定する値を取得または設定する機能を提供します。

次のコード例は、このプロパティを設定してドキュメントを保存する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Loading-And-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp">}}

## 白黒画像を1ピクセルあたり1ビットの形式で保存する

画像保存オプションを制御するには、**ImageSaveOptions**クラスが使用されます。 たとえば、[PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/)プロパティを使用して、生成された画像のピクセル形式を設定できます。 出力画像のピクセル形式は、GDI+の作業のために設定値と異なる場合がありますのでご注意ください。

次のコード例は、白黒画像をピクセルごとに1ビットの形式で保存する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
