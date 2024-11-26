---
title: Mail MergeのテンプレートC#
second_title: Aspose.Wordsのための.NET
articleTitle: Mail Mergeテンプレート
linktitle: Mail Mergeテンプレート
type: docs
description: "出力ドキュメント内の固定コンテンツを定義するMail Mergeテンプレートを作成し、C#の差し込み項目を使用して差し込み文書を生成します。"
keywords: "create Mail Merge template с#"
weight: 10
url: /ja/net/mail-merge-template/
timestamp: 2024-07-11-08-07-06
---

マージテンプレートをMail Merge操作のベースドキュメントとして使用するのは、単純なMail Mergeまたはリージョンを持つMail Mergeのいずれかである場合が一般的です。 地域を持つMail mergeは、単純なmail mergeよりも強力で人気があります。 単純なMail Mergeは、領域が文書全体である領域を持つMail Mergeの特定のケースと見なされます。 すべてについては、次の記事「Mail Merge操作の種類」で詳しく説明します。

テンプレートは、出力マージされたドキュメント内のテキストが正しくフォーマットされていることを保証し、Mail Merge操作は、データソースからのテキストがマージテンプレートデータソースからのテキストが正しく入力されていることを保証します。

Aspose.Wordsは、固定コンテンツを定義し、差し込み項目を使用して差し込み文書を生成するためのMail Mergeテンプレートを作成する機能を提供します。 したがって、マージテンプレートには、すべての出力ドキュメントで同じ必要なテキストと、変更内容を入力するためのマージフィールドがあります。 その結果、マージされたドキュメントの生成中に、指定されたデータソースからの情報がこれらのフィールドを介してマージテンプレートに追加されます。

## Mail Mergeテンプレートとは何ですか

Mail Mergeテンプレートは、固定データと、変数テキストを配置するマージされたフィールドを含むパーソナライズされた文書です。 マージテンプレートは、フィールドをサポートする任意の形式にすることができます。, DOC, DOCX, DOT, DOTX, RTF. さらに、記事"Mustacheテンプレート構文"で詳しく説明されているmustacheテンプレートを使用することもできます。

マージテンプレートを作成して新しいドキュメントのモデルにすることができ、マージされたドキュメントの各バージョンで同じである必要があるメインテ テンプレート内に差し込み項目を追加すると、データソースから取得された名前や住所などの個人用設定データが表示されます。 Mail Merge操作により、データソースからマージテンプレートドキュメントに個人用設定データが自動的に挿入されます。

さらに、テンプレートにMail Merge領域を追加するには、2つのMail Mergeフィールドを挿入して、メール領域の先頭と末尾をマークします。 次の記事"Mail Merge操作の種類"では、これについて詳しく説明しています。

## Mail Mergeテンプレートを作成する

テンプレートを作成し、それに特定の差し込み項目を追加すると、Microsoft Wordを使用して手動で、またはAspose.Wordsを使用してプログラムでデータソースの値に置き換えら この記事では、テンプレートを作成するプログラム的な方法を見ていきます。

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)クラスを使用して、Aspose.Wordsを使用して必要なマージテンプレートを作成します。 このようなテンプレートには、[InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/)、[InsetField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/)、および[InsertParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertparagraph/)メソッドを使用して、テキスト、差し込み項目、および改行を含めることができます。

次のコード例は、Mail Mergeテンプレートを作成する方法を示しています:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "create-mail-merge-template.cs" >}}

下の図は、作成されたテンプレートを示しています:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Mail Mergeテンプレートプロパティをカスタマイズする

Aspose.Words多くのプロパティを使用してテンプレートをカスタマイズできます。 テンプレートのカスタマイズは、画像とテキストのいくつかのプロパティをカスタマイズする例を介して以下に説明されます。

### 画像のプロパティをカスタマイズする

[ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/)クラスを使用してイメージプロパティを指定できます。 ここで説明するように、データベースからイメージを挿入できます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L214).

次のコード例は、イメージファイル名とイメージサイズを指定する方法を示しています:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "image-field-merging.cs" >}}

### テキストプロパティのカスタマイズ

現在の差し込み項目の文書にテキストを挿入するには、[Text](https://reference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs/text/)プロパティを使用します。 また、[Font](https://reference.aspose.com/words/net/aspose.words/font/)クラスと[ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/)クラスを使用して、テンプレート内のテキストと段落の書式を変更することもできます。 差し込み項目の前後に挿入するテキストは、[FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/)クラスに含まれる[TextBefore](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textbefore/)プロパティと[TextAfter](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textafter/)プロパティを使用して処理できます。

次のコード例は、Mail Merge操作中にチェックボックスまたはHTMLを挿入する方法を示しています:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

また、`HandleMergeField`クラスの実装を次から確認することもできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/828b58e207e96afa624956867ec9c777fa10af87/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L43).

{{% /alert %}}

## また見て下さい

* Microsoft Wordでテンプレートを手動で作成する方法の詳細については、以下を確認してください [テンプレートを作成する](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) Microsoftドキュメントの記事
