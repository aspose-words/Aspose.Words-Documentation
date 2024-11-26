---
title: Checkboxes、テキスト入力、または画像をMail Merge中に挿入します
second_title: Aspose.WordsのためのC++
articleTitle: Checkboxes、テキスト入力、または画像を挿入します
linktitle: Checkboxes、テキスト入力、または画像を挿入します
description: "C++を使用してMail Merge中にチェックボックスまたはテキスト入力フィールドを挿入します。 また、C++のMail Mergeの間にデータベースから画像を挿入します。"
type: docs
weight: 40
url: /ja/cpp/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

マージエンジンはドキュメントを入力として受け取り、その中の`MERGEFIELD`フィールドを探し、データソースから取得したデータに置き換えます。 通常、プレーンテキストとHTMLが挿入されますが、Aspose.Wordsユーザーはmail mergeフィールドのより珍しいシナリオを処理する文書を生成することもできます。

強力なAspose.Words機能を使用するとmail mergeプロセスを拡張できます:

- mail merge中にチェックボックスとテキスト入力フォームフィールドを文書に挿入します
- 任意のカスタムストレージ(ファイル、BLOBフィールドなど)から画像を挿入します。)

## Mail Merge中にCheckboxesとテキスト入力を挿入します

差し込み項目でテキストが置換されるのではなく、チェックボックスまたはテキスト入力フィールドで置換されるようにmail merge操作を実行する必要があ これは最も一般的なシナリオではありませんが、一部のタスクでは非常に便利です。

Word文書の次のスクリーンショットは、差し込み項目を含むテンプレートを示しています:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

下のWord文書のこのスクリーンショットは、すでに生成された文書を示しています:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

一部のフィールドはプレーンテキストに置き換えられ、一部のフィールドはチェックボックスフォームフィールドに置き換えられ、`Subject`フィールドはテキ

{{% /alert %}}

次のコード例は、mail merge中にドキュメントにチェックボックスと入力テキストフィールドを挿入する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-HandleMergeField.cpp" >}}

## Mail Merge中に画像を挿入する

Mail merge操作を実行するときは、特殊なimagemail mergeフィールドを使用してデータベースからドキュメントにイメージを挿入できます。 Imagemail mergeフィールドはImage:MyFieldNameという名前の差し込み項目です。

### データベースからの画像の挿入

Mail merge中に、ドキュメント内で画像mail mergeフィールドが検出されると、[FieldMergingCallback](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_fieldmergingcallback/)イベントが発生します。 このイベントに応答して、ファイル名、ストリーム、または画像オブジェクトをmail mergeエンジンに返し、ドキュメントに挿入できるようにすることができます。

次のコード例は、データベースBLOBフィールドに格納されている画像をレポートに挿入する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageInsert.cpp" >}}

### Mail Merge中にイメージプロパティを設定する

画像の差し込み項目をマージする際に、[WrapType](https://reference.aspose.com/words/cpp/aspose.words.drawing/wraptype/)などのさまざまな画像プロパティを制御する必要がある場合があります。

現在、[ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args)を使用すると、それぞれ画像の幅または高さのプロパティのみを設定できます。 この問題を解決するために、Aspose.Wordsは[Shape](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/get_shape/)プロパティを提供し、挿入された画像やその他の形状を完全に制御するのを容易にします。

次のコード例は、さまざまなイメージプロパティを設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}
