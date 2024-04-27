---
title: 保存オプションを指定する Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: 保存オプションを指定する
linktitle: 保存オプションを指定する
description: "ドキュメントを保存する際に高度なプロパティを設定する Java プロセス上のより精密な制御を提供するために。"
type: docs
weight: 20
url: /ja/java/specify-save-options/
---

ドキュメントを保存する際に、高度なプロパティを設定できます。 Aspose.Words あなたに提供する [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) 保存プロセスのより精密な制御を可能にするクラス。 積み過ぎはあります **Save** 受け入れる方法 **SaveOptions** オブジェクト - から派生したクラスのオブジェクトでなければなりません **SaveOptions** クラス。 各保存形式には、この保存フォーマットの保存オプションを保持する対応するクラスがあります。例えば、 [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) PDF形式への保存のため、 [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) 節約のため Markdown フォーマット、または [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) 画像への保存 この記事では、から派生するいくつかのオプションのクラスと作業の例を提供します **SaveOptions**お問い合わせ

次のコードの例では、ドキュメントを HTML に保存する前に保存オプションを設定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

この例のテンプレートファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)お問い合わせ

{{% /alert %}}

この記事では、ドキュメントを保存するときに制御できるいくつかのプロパティについて説明します。

## ドキュメントの暗号化 パスワードで

利用する **Password** 暗号化されたドキュメントのパスワードを取得または設定するプロパティ。 利用する **Password** 対応するクラスのプロパティで、選択したドキュメントフォーマットで動作します。

例えば、ドキュメントをDOCに保存するか、 DOT フォーマットは、使用します [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) のプロパティ [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) クラス。

次のコードの例では、RC4 暗号化方式を使用して文書を暗号化するためにパスワードを設定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

ドキュメントをODT形式に保存するときは、 [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) のプロパティ [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) クラス。

次のコードの例では、パスワードで暗号化されたOpenDocumentを読み、保存する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

すべてのフォーマットが暗号化と使用をサポートしていない **Password** プロパティ.

## 文書保存進捗通知を表示する

Aspose.Words 使用する能力を提供する [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) 文書保存の進捗に関する通知を取得するプロパティ。

DOCX、FlatOpc、DOCM に保存すると利用可能になりました。 DOTM、 DOTX、HTML、MHTML、EPUB、XamlFlow、XamlFlowPack、またはTXTフォーマット。

## ドキュメント作成時間の更新

Aspose.Words 使用する能力を提供する [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) UTCのドキュメント作成日を取得または設定するプロパティ。 保存する前にこの値を更新することもできます。 [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) オプション。

次のコードの例では、ドキュメント作成時間を更新する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## 最終保存されたプロパティの更新

Aspose.Words 使用する能力を提供する [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) 値が決定するかどうかを取得するか設定するプロパティ [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) 保存する前にプロパティを更新します。

以下のコードの例では、このプロパティを設定し、文書を保存する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## ピクセル フォーマットごとの1ビットの黒および白いイメージを救いて下さい

画像保存オプションを制御するため、 **ImageSaveOptions** クラスは使用されます。 例えば、 [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) 生成された画像のピクセル形式を設定します。 出力イメージのピクセル形式は、GDI+ の作業のため、セット値と異なる場合があります。

次のコードの例では、ピクセルごとの1ビットで黒と白の画像を保存する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
