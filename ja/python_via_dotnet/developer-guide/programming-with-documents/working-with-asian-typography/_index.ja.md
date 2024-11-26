---
title: Python のアジアのタイポグラフィ
second_title: Python用Aspose.Words
articleTitle: アジアのタイポグラフィーを使用する
linktitle: アジアのタイポグラフィーを使用する
description: "Python を使用してアジアのタイポグラフィを操作します。 Python でアジア語とラテン語のテキスト間のスペースを調整します。"
type: docs
weight: 240
url: /ja/python-net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

アジアのタイポグラフィは、アジアの言語で書かれた文書内のテキスト段落のオプションのセットです。

Aspose.Words は、[ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) クラスとその一部のプロパティを使用して、アジアのタイポグラフィをサポートします。

## アジア語とラテン語のテキストまたは数字の間のスペースを自動的に調整する

東アジア言語とラテン語の両方のテキストを含むテンプレートをデザインしており、両方の種類のテキスト間のスペースを制御してフォーム テンプレートの外観を向上させたい場合は、これら 2 種類のテキスト間のスペースを自動的に調整するようにフォーム テンプレートを構成できます。 。これを実現するには、`ParagraphFormat` クラスの [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_alpha/) プロパティと [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_digit/) プロパティを使用します。

次のコード例は、**AddSpaceBetweenFarEastAndAlpha** プロパティと **AddSpaceBetweenFarEastAndDigit** プロパティの使用方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-SpaceBetweenAsianAndLatinText.py" >}}

## 改行オプションの設定

Microsoft Word の段落プロパティ ダイアログ ボックスの Asian Typography タブには改行グループがあります。このグループのオプションは、**ParagraphFormat** クラスの [FarEastLineBreakControl](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/far_east_line_break_control/)、[WordWrap](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/word_wrap/)、[HangingPunctuation](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/hanging_punctuation/) プロパティを使用して設定できます。

次のコード例は、これらのプロパティの使用方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-AsianTypographyLineBreakGroup.py" >}}
