---
title: Mail MergeのテンプレートJava
second_title: Aspose.WordsのためのJava
articleTitle: Mail Mergeテンプレート
linktitle: Mail Mergeテンプレート
type: docs
description: "出力ドキュメント内の固定コンテンツを定義するMail Mergeテンプレートを作成し、Javaの差し込み項目を使用して差し込み文書を生成します。"
keywords: "create Mail Merge template Java, Mail Merge Java"
weight: 10
url: /ja/java/mail-merge-template/
timestamp: 2024-01-31-14-23-37
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

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)クラスを使用して、Aspose.Wordsを使用して必要なマージテンプレートを作成します。 このようなテンプレートには、テキスト、差し込み項目、および改行を含めることができます。[InsertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput(java.lang.String,int,java.lang.String,java.lang.String,int)), [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField(int,boolean)), と[InsertParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertParagraph())メソッド。

次のコード例は、Mail Mergeテンプレートを作成する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeTemplate-CreateMailMergeTemplate.java" >}}

下の図は、作成されたテンプレートを示しています:

<img src="/words/java/mail-merge-template/mail-merge-template-1.png" alt="mail_merge_template_aspose_words_java" style="width:650px"/>

## Mail Mergeテンプレートプロパティをカスタマイズする

Aspose.Words多くのプロパティを使用してテンプレートをカスタマイズできます。 テンプレートのカスタマイズは、画像とテキストのいくつかのプロパティをカスタマイズする例を介して以下に説明されます。

### 画像のプロパティをカスタマイズする

[ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/)クラスを使用してイメージプロパティを指定できます。 ここで説明するように、データベースからイメージを挿入できます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java#L226).

次のコード例は、イメージファイル名とイメージサイズを指定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-ImageFieldMerging.java" >}}

### テキストプロパティのカスタマイズ

[テキスト]https://reference.aspose.com/words/java/com.aspose.words/Fieldmergingargs#Text)現在の差し込み項目のドキュメントにテキストを挿入するプロパティですまた、[フロント]を使用して、テンプレート内のテキストや段階の式を変更することもできます](https://reference.aspose.com/words/java/com.aspose.words/font/)クラスと[ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/)クラスを使用できます。 差し込み項目の前後に挿入されるテキストは、[FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/)クラスに含まれる[TextBefore](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextBefore)および[TextAfter](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextAfter)プロパティを使用して処理できます。

次のコード例は、Mail Merge操作中にチェックボックスまたはHTMLを挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

また、`HandleMergeField`クラスの実装を次から確認することもできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java).

{{% /alert %}}

## また見て下さい

* Microsoft Wordでテンプレートを手動で作成する方法の詳細については、以下を確認してください [テンプレートを作成する](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) Microsoftドキュメントの記事
