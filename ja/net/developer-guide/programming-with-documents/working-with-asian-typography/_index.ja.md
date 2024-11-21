---
title: C# のアジアのタイポグラフィ
second_title: .NET用Aspose.Words
articleTitle: アジアのタイポグラフィーを使用する
linktitle: アジアのタイポグラフィーを使用する
description: "C# を使用してアジアのタイポグラフィを操作します。 C# でアジア語とラテン語のテキスト間のスペースを調整します。"
type: docs
weight: 240
url: /ja/net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

アジアのタイポグラフィは、アジアの言語で書かれた文書内のテキスト段落のオプションのセットです。

Aspose.Words は、[ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) クラスとその一部のプロパティを使用して、アジアのタイポグラフィをサポートします。

## アジア語とラテン語のテキストまたは数字の間のスペースを自動的に調整する

東アジア言語とラテン語の両方のテキストを含むテンプレートをデザインしており、両方の種類のテキスト間のスペースを制御してフォーム テンプレートの外観を向上させたい場合は、これら 2 種類のテキスト間のスペースを自動的に調整するようにフォーム テンプレートを構成できます。 。これを実現するには、`ParagraphFormat` クラスの [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) プロパティと [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) プロパティを使用します。

次のコード例は、**AddSpaceBetweenFarEastAndAlpha** プロパティと **AddSpaceBetweenFarEastAndDigit** プロパティの使用方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## 改行オプションの設定

Microsoft Word の段落プロパティ ダイアログ ボックスの Asian Typography タブには改行グループがあります。このグループのオプションは、**ParagraphFormat** クラスの [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/)、[WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/)、[HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) プロパティを使用して設定できます。

次のコード例は、これらのプロパティの使用方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
