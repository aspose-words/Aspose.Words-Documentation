---
title: Javaに保存オプションを指定します
second_title: Aspose.WordsのためのJava
articleTitle: 保存オプションの指定
linktitle: 保存オプションの指定
description: "プロセスをより正確に制御できるように、Javaを使用して文書を保存するときに高度なプロパティを設定します。"
type: docs
weight: 20
url: /ja/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

ドキュメントを保存するときに、いくつかの高度なプロパティを設定できます。 Aspose.Wordsは、保存プロセスのより正確な制御を可能にする[SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/)クラスを提供します。 **SaveOptions**オブジェクトを受け入れる**Save**メソッドのオーバーロードがあります-それは**SaveOptions**クラスから派生したクラスのオブジェクトでなければなりません。 たとえば、PDF形式に保存する場合は[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)、Markdown形式に保存する場合は[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)、または画像に保存する場合は[ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)があります。PDF形式に保存する場合は[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)、[ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)形式に保存す この記事では、**SaveOptions**から派生したいくつかのオプションクラスを使用する例を示します。

次のコード例は、ドキュメントをHTMLに保存する前に保存オプションを設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

この記事では、ドキュメントを保存するときに制御できるいくつかのプロパティについて説明します。

## パスワードで文書を暗号化する

暗号化された文書のパスワードを取得または設定するには、**Password**プロパティを使用します。 対応するクラスの**Password**プロパティを使用して、選択したドキュメント形式を操作します。

たとえば、ドキュメントをDOCまたはDOT形式で保存する場合は、[DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/)クラスの[Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password)プロパティを使用します。

次のコード例は、RC4暗号化メソッドを使用して文書を暗号化するパスワードを設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

ドキュメントをODT形式で保存する場合は、[OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/)クラスの[Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password)プロパティを使用します。

次のコード例は、パスワードで暗号化されたOpenDocumentを読み込んで保存する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

すべての形式が暗号化と**Password**プロパティの使用をサポートしているわけではありません。

## ドキュメント保存の進行状況通知を表示する

Aspose.Wordsは、[ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback)プロパティを使用して、ドキュメントの保存の進行状況に関する通知を取得する機能を提供します。

に保存するときに利用できるようになりましたDOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, またはTXT形式。

## 文書の作成時間を更新する

Aspose.Wordsは、[CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime)プロパティを使用して、UTCのドキュメント作成日を取得または設定する機能を提供します。 [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty)オプションを使用して保存する前にこの値を更新することもできます。

次のコード例は、ドキュメントの作成時間を更新する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## 最後に保存したプロパティを更新する

Aspose.Wordsは、[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty)プロパティを使用して、保存する前に[LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime)プロパティが更新されるかどうかを決定する値を取得または設定する機能を提供します。

次のコード例は、このプロパティを設定してドキュメントを保存する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## 白黒画像を1ピクセルあたり1ビットの形式で保存する

画像保存オプションを制御するには、**ImageSaveOptions**クラスが使用されます。 たとえば、[PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat)プロパティを使用して、生成された画像のピクセル形式を設定できます。 出力画像のピクセル形式は、GDI+の作業のために設定値と異なる場合がありますのでご注意ください。

次のコード例は、白黒画像をピクセルごとに1ビットの形式で保存する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
