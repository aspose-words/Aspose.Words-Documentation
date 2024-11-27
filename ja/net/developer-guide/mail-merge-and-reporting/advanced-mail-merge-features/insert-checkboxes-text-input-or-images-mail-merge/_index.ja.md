---
title: Checkboxes、テキスト入力、または画像をMail Merge中に挿入します
second_title: Aspose.Wordsのための.NET
articleTitle: Checkboxes、テキスト入力、または画像を挿入します
linktitle: Checkboxes、テキスト入力、または画像を挿入します
description: "C#を使用してMail Merge中にcheckboxesまたはテキスト入力フィールドを挿入します。 また、C#のMail Merge中にデータベースから画像を挿入します。"
type: docs
weight: 40
url: /ja/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

マージエンジンはドキュメントを入力として受け取り、その中の`MERGEFIELD`フィールドを探し、データソースから取得したデータに置き換えます。 通常、プレーンテキストとHTMLが挿入されますが、Aspose.WordsユーザーはMail Mergeフィールドのより珍しいシナリオを処理する文書を生成することもできます。

強力なAspose.Words機能を使用するとMail Mergeプロセスを拡張できます:

- checkboxesおよびテキスト入力フォームフィールドをmail merge中にドキュメントに挿入します
- 任意のカスタムストレージ(ファイル、BLOBフィールドなど)から画像を挿入します。)

## Mail Merge中にCheckboxesとテキスト入力を挿入します

差し込み項目でテキストが置換されるのではなく、checkboxまたはテキスト入力フィールドで置換されるように、Mail Merge操作を実行する必要がある場合があります。 これは最も一般的なシナリオではありませんが、一部のタスクでは非常に便利です。

次のWordドキュメントのスクリーンショットは、差し込み項目を含むテンプレートを示しています:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

以下のWord文書のスクリーンショットは、既に生成された文書を示しています:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

一部のフィールドはプレーンテキストに置き換えられ、一部のフィールドはcheckboxフォームフィールドに置き換えられ、`Subject`フィールドはテキスト入力フィールドに置

{{% /alert %}}

次のコード例は、mail merge中にcheckboxesと入力テキストフィールドをドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## Mail Merge中に画像を挿入する

Mail Merge操作を実行するときは、特殊なimageMail Mergeフィールドを使用してデータベースからドキュメントにイメージを挿入できます。 ImageMail MergeフィールドはImage:MyFieldNameという名前の差し込み項目です。

### データベースからの画像の挿入

Mail merge中に、ドキュメント内で画像Mail Mergeフィールドが検出されると、[FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/)イベントが発生します。 このイベントに応答して、ファイル名、ストリーム、または画像オブジェクトをMail Mergeエンジンに返し、ドキュメントに挿入できるようにすることができます。

次のコード例は、データベースBLOBフィールドに格納されている画像をレポートに挿入する方法を示しています:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### Mail Merge中にイメージプロパティを設定する

画像の差し込み項目をマージする際に、[WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/)などのさまざまな画像プロパティを制御する必要がある場合があります。

現在、[ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/)を使用すると、それぞれ画像の幅または高さのプロパティのみを設定できます。 この問題を解決するために、Aspose.Wordsは[Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/)プロパティを提供し、挿入された画像やその他の形状を完全に制御するのを容易にします。

次のコード例は、さまざまなイメージプロパティを設定する方法を示しています:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
