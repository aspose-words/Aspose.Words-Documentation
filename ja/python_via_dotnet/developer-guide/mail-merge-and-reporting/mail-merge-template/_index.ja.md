---
title: Mail MergeのテンプレートPython
second_title: Aspose.WordsはPython via .NETに対してAspose.Wordsを意味します。
articleTitle: Mail Mergeテンプレート
linktitle: Mail Mergeテンプレート
type: docs
description: "出力ドキュメント内の固定コンテンツを定義するMail Mergeテンプレートを作成し、Pythonの差し込み項目を使用して差し込み文書を生成します。"
keywords: "create Mail Merge template python"
weight: 10
url: /ja/python-net/mail-merge-template/
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

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)クラスを使用して、Aspose.Wordsを使用して必要なマージテンプレートを作成します。 このようなテンプレートには、[insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/)、[inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/)、および[insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/)メソッドを使用して、テキスト、差し込み項目、および改行を含めることができます。

次のコード例は、Mail Mergeテンプレートを作成する方法を示しています:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

下の図は、作成されたテンプレートを示しています:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Mail Mergeテンプレートプロパティをカスタマイズする

Aspose.Words多くのプロパティを使用してテンプレートをカスタマイズできます。 テンプレートのカスタマイズは、画像とテキストのいくつかのプロパティをカスタマイズする例を介して以下に説明されます。

## また見て下さい

* Microsoft Wordでテンプレートを手動で作成する方法の詳細については、以下を確認してください [テンプレートを作成する](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) Microsoftドキュメントの記事
