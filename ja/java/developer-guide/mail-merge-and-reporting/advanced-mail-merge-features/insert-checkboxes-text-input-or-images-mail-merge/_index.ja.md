---
title: Checkboxes、テキスト入力、または画像をMail Merge中に挿入します
second_title: Aspose.WordsのためのJava
articleTitle: Checkboxes、テキスト入力、または画像を挿入します
linktitle: Checkboxes、テキスト入力、または画像を挿入します
description: "Javaを使用してMail Merge中にcheckboxesまたはテキスト入力フィールドを挿入します。 また、JavaのMail Merge中にデータベースから画像を挿入します。"
type: docs
weight: 20
url: /ja/java/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

マージエンジンはドキュメントを入力として受け取り、その中の`MERGEFIELD`フィールドを探し、データソースから取得したデータに置き換えます。 通常、プレーンテキストとHTMLが挿入されますが、Aspose.WordsユーザーはMail Mergeフィールドのより珍しいシナリオを処理する文書を生成することもできます。

強力なAspose.Words機能を使用するとMail Mergeプロセスを拡張できます:

- checkboxesおよびテキスト入力フォームフィールドをmail merge中にドキュメントに挿入します
- 任意のカスタムストレージ(ファイル、BLOBフィールドなど)から画像を挿入します。)

## Mail Merge中にCheckboxesとテキスト入力を挿入します

差し込み項目でテキストが置換されるのではなく、checkboxまたはテキスト入力フィールドで置換されるように、Mail Merge操作を実行する必要がある場合があります。 これは最も一般的なシナリオではありませんが、一部のタスクでは非常に便利です。

Word文書の次のスクリーンショットは、差し込み項目を含むテンプレートを示しています:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-1](/words/java/insert-checkboxes-text-input-or-images-mail-merge/insert-checkboxes-html-or-images-during-mail-merge_1.jpeg)

下のWord文書のこのスクリーンショットは、すでに生成された文書を示しています:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-2](/words/java/insert-checkboxes-text-input-or-images-mail-merge/insert-checkboxes-html-or-images-during-mail-merge-2.png)

{{% alert color="primary" %}}

一部のフィールドはプレーンテキストに置き換えられ、一部のフィールドはcheckboxフォームフィールドに置き換えられ、`Subject`フィールドはテキスト入力フィールドに置

{{% /alert %}}

次のコード例は、mail merge中にcheckboxesと入力テキストフィールドをドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-HandleMergeField.java" >}}

## Mail Merge中に画像を挿入する

Mail Merge操作を実行するときは、特殊なimageMail Mergeフィールドを使用してデータベースからドキュメントにイメージを挿入できます。 ImageMail MergeフィールドはImage:MyFieldNameという名前の差し込み項目です。

### データベースからの画像の挿入

Mail merge中に、ドキュメント内で画像Mail Mergeフィールドが検出されると、[FieldMergingCallback](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldMergingCallback)イベントが発生します。 このイベントに応答して、ファイル名、ストリーム、または画像オブジェクトをMail Mergeエンジンに返し、ドキュメントに挿入できるようにすることができます。

次のコード例は、データベースBLOBフィールドに格納されている画像をレポートに挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageFromBlob.java" >}}

### Mail Merge中にイメージプロパティを設定する

画像の差し込み項目をマージする際に、[WrapType](https://reference.aspose.com/words/java/com.aspose.words/wraptype/)などのさまざまな画像プロパティを制御する必要がある場合があります。

現在、[ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/)を使用すると、それぞれ画像の幅または高さのプロパティのみを設定できます。 この問題を解決するために、Aspose.Wordsは[Shape](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/#getShape)プロパティを提供し、挿入された画像やその他の形状を完全に制御するのを容易にします。

次のコード例は、さまざまなイメージプロパティを設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-MailMergeImageField.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-FieldMergingHandler.java" >}}

