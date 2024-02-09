---
title: C# での保存オプションの指定
second_title: .NET用Aspose.Words
articleTitle: 保存オプションの指定
linktitle: 保存オプションの指定
description: "C# を使用して保存プロセスをより正確に制御します。"
type: docs
weight: 10
url: /ja/net/specify-save-options/
---

ドキュメントを保存するときに、いくつかの詳細プロパティを設定できます。 Aspose.Words は、保存プロセスをより正確に制御できる [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/) クラスを提供します。 **SaveOptions** オブジェクトを受け入れる **Save** メソッドのオーバーロードがあります。これは、**SaveOptions** クラスから派生したクラスのオブジェクトである必要があります。各保存形式には、その保存形式の保存オプションを保持する対応するクラスがあります。たとえば、PDF 形式に保存する場合は [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/)、Markdown 形式に保存する場合は [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/)、画像に保存する場合は [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) があります。この記事では、**SaveOptions** から派生したいくつかのオプション クラスの操作例を示します。

次のコード例は、ドキュメントを HTML に保存する前に保存オプションを設定する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

{{% /alert %}}

この記事では、ドキュメントを保存するときに制御できるいくつかのプロパティについて説明します。

## パスワードを使用してドキュメントを暗号化する

**Password** プロパティを使用して、暗号化されたドキュメントのパスワードを取得または設定します。選択したドキュメント形式を操作するには、対応するクラスの **Password** プロパティを使用します。

たとえば、ドキュメントを DOC または DOT 形式で保存する場合は、[DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) クラスの [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) プロパティを使用します。

次のコード例は、RC4 暗号化方式を使用してドキュメントを暗号化するためのパスワードを設定する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

ドキュメントを Odt 形式で保存する場合は、[OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) クラスの [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) プロパティを使用します。

次のコード例は、パスワードで暗号化された OpenDocument をロードおよび保存する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

すべての形式が暗号化と **Password** プロパティの使用をサポートしているわけではありません。

## ドキュメントの保存の進行状況通知を表示する

Aspose.Words では、[ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) プロパティを使用してドキュメントの保存の進行状況に関する通知を取得する機能が提供されます。

DOCX、FlatOpc、DOCM、DOTM、DOTX、HTML、MHTML、EPUB、XamlFlow、XamlFlowPack、または TXT 形式で保存するときに利用できるようになりました。

## ドキュメント作成時刻を更新する

Aspose.Words は、[CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) プロパティを使用してドキュメントの作成日を UTC で取得または設定する機能を提供します。 [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/) オプションを使用して、保存する前にこの値を更新することもできます。

次のコード例は、ドキュメントの作成時間を更新する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## 最後に保存したプロパティを更新する

Aspose.Words は、[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) プロパティを使用して、[LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) プロパティが保存前に更新されるかどうかを決定する値を取得または設定する機能を提供します。

次のコード例は、このプロパティを設定してドキュメントを保存する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## ドキュメントを HTML または SVG に保存するときに外部リソースを制御する

HTML または SVG を PDF に変換するには、[Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) メソッドを呼び出して、「.PDF」拡張子の付いたファイル名を指定するだけです。画像や CSS などを外部ソースから読み込みたい場合は、[IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/) を使用できます。

次のコード例は、HTML を PDF に変換し、外部ソースから画像をロードする方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## 白黒画像を 1 ビット/ピクセル形式で保存する

画像保存オプションを制御するには、**ImageSaveOptions** クラスが使用されます。たとえば、[PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) プロパティを使用して、生成される画像のピクセル形式を設定できます。 GDI+の働きにより、出力画像のピクセル形式が設定値と異なる場合がありますのでご注意ください。

次のコード例は、白黒画像を 1 ピクセルあたり 1 ビットの形式で保存する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
