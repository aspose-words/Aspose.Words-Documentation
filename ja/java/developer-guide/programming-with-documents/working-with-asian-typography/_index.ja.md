---
title: アジアのタイポグラフィJava
second_title: Aspose.WordsのためのJava
articleTitle: アジアのタイポグラフィを扱う
linktitle: アジアのタイポグラフィを扱う
description: "Javaを使用してアジアのタイポグラフィを操作します。 Javaでアジア語とラテン語のテキストの間のスペースを調整します。"
type: docs
weight: 240
url: /ja/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

アジアのタイポグラフィは、アジアの言語で書かれた文書のテキスト段落のオプションのセットです。

Aspose.Wordsは、[ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/)クラスとそのプロパティの一部を使用したアジアのタイポグラフィをサポートします。

## アジア語とラテン語のテキストまたは数字の間のスペースを自動的に調整します

東アジア語とラテン語の両方のテキストを含むテンプレートを設計していて、両方のタイプのテキスト間のスペースを制御してフォームテンプレートの外観を向上させたい場合は、これらの2つのタイプのテキスト間のスペースを自動的に調整するようにフォームテンプレートを構成できます。 これを実現するには、`ParagraphFormat`クラスの[AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha)プロパティと[AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit)プロパティを使用できます。

次のコード例は、**AddSpaceBetweenFarEastAndAlpha**プロパティと**AddSpaceBetweenFarEastAndDigit**プロパティの使用方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## 改行オプションの設定

Microsoft Wordの段落プロパティダイアログボックスのアジアのタイポグラフィタブには改行グループがあります。 このグループのオプションは、以下を使用して設定できます。[FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) **ParagraphFormat**クラスのプロパティ。

次のコード例は、これらのプロパティを使用する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## アジアの段落の間隔とインデントを変更する

次のコード例は、アジアの段落の間隔とインデントを変更する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
