---
title: Mail MergeのテンプレートC++
second_title: Aspose.WordsのためのC++
articleTitle: Mail Mergeテンプレート
linktitle: Mail Mergeテンプレート
type: docs
description: "出力ドキュメント内の固定コンテンツを定義するmail mergeテンプレートを作成し、差し込み項目を使用して差し込み文書を生成します。"
keywords: "create mail merge template с++"
weight: 10
url: /ja/cpp/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

マージテンプレートをmail merge操作のベースドキュメントとして使用するのは、単純なmail mergeまたはリージョンを持つmail mergeのいずれかである場合が一般的です。 地域を持つMail mergeは、単純なmail mergeよりも強力で人気があります。 単純なmail mergeは、領域が文書全体である領域を持つmail mergeの特定のケースと見なされます。 すべてについては、次の記事「Mail Merge操作の種類」で詳しく説明します。

テンプレートは、出力マージされたドキュメント内のテキストが正しくフォーマットされていることを保証し、mail merge操作は、データソースからのテキストがマージテンプレートデータソースからのテキストが正しく入力されていることを保証します。

Aspose.Wordsは、固定コンテンツを定義し、差し込み項目を使用して差し込み文書を生成するためのmail mergeテンプレートを作成する機能を提供します。 したがって、マージテンプレートには、すべての出力ドキュメントで同じ必要なテキストと、変更内容を入力するためのマージフィールドがあります。 その結果、マージされたドキュメントの生成中に、指定されたデータソースからの情報がこれらのフィールドを介してマージテンプレートに追加されます。

## Mail Mergeテンプレートとは何ですか

Mail mergeテンプレートは、固定データと、変数テキストを配置するマージされたフィールドを含むパーソナライズされた文書です。 マージテンプレートは、フィールドをサポートする任意の形式にすることができます。, DOC, DOCX, DOT, DOTX, RTF. さらに、記事"Mustacheテンプレート構文"で詳しく説明されているmustacheテンプレートを使用することもできます。

マージテンプレートを作成して新しいドキュメントのモデルにすることができ、マージされたドキュメントの各バージョンで同じである必要があるメインテ テンプレート内に差し込み項目を追加すると、データソースから取得された名前や住所などの個人用設定データが表示されます。 mail merge操作により、データソースからマージテンプレートドキュメントに個人用設定データが自動的に挿入されます。

さらに、テンプレートにmail merge領域を追加するには、2つのmail mergeフィールドを挿入して、メール領域の先頭と末尾をマークします。 次の記事"Mail Merge操作の種類"では、これについて詳しく説明しています。

## Mail Mergeテンプレートを作成する

テンプレートを作成し、それに特定の差し込み項目を追加すると、Microsoft Wordを使用して手動で、またはAspose.Wordsを使用してプログラムでデータソースの値に置き換えら この記事では、テンプレートを作成するプログラム的な方法を見ていきます。

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)クラスを使用して、Aspose.Wordsを使用して必要なマージテンプレートを作成します。 このようなテンプレートには、[InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/)、[InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/)、および[InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/)メソッドを使用して、テキスト、差し込み項目、および改行を含めることができます。

次のコード例は、mail mergeテンプレートを作成する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

下の図は、作成されたテンプレートを示しています:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## Mail Mergeテンプレートプロパティをカスタマイズする

Aspose.Words多くのプロパティを使用してテンプレートをカスタマイズできます。 テンプレートのカスタマイズは、画像とテキストのいくつかのプロパティをカスタマイズする例を介して以下に説明されます。

### 画像のプロパティをカスタマイズする

イメージプロパティは[ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/)クラスを使用して指定できます。

次のコード例は、イメージファイル名とイメージサイズを指定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### テキストプロパティのカスタマイズ

現在の差し込み項目の文書にテキストを挿入するには、[Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/)プロパティを使用します。 また、[Font](https://reference.aspose.com/words/cpp/aspose.words/font/)クラスと[ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/)クラスを使用して、テンプレート内のテキストと段落の書式を変更することもできます。 差し込み項目の前後に挿入するテキストは、[FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/)クラスに含まれる[TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/)プロパティと[TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/)プロパティを使用して処理できます。

次のコード例は、mail merge操作中にチェックボックスまたはHTMLを挿入する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

また、`HandleMergeField`クラスの実装を次から確認することもできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## また見て下さい

* Microsoft Wordでテンプレートを手動で作成する方法の詳細については、以下を確認してください [テンプレートを作成する](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) Microsoftドキュメントの記事
