---
title: C++でのアジアのタイポグラフィ
second_title: C++の場合Aspose.Words
articleTitle: アジアのタイポグラフィを扱う
linktitle: アジアのタイポグラフィを扱う
description: "C++を使用してアジアのタイポグラフィで作業します。 C++でアジア語とラテン語のテキストの間のスペースを調整します。"
type: docs
weight: 240
url: /ja/cpp/working-with-asian-typography/
---

アジアのタイポグラフィは、アジアの言語で書かれた文書のテキスト段落のオプションのセットです。

Aspose.Wordsは、[ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/)クラスとそのプロパティの一部を使用したアジアのタイポグラフィをサポートします。

## アジア語とラテン語のテキストまたは数字の間のスペースを自動的に調整します

東アジア語とラテン語の両方のテキストを含むテンプレートを設計していて、両方のタイプのテキスト間のスペースを制御してフォームテンプレートの外観を向上させたい場合は、これらの2つのタイプのテキスト間のスペースを自動的に調整するようにフォームテンプレートを構成できます。 これを実現するには、`ParagraphFormat`クラスの[AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/)プロパティと[AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/)プロパティを使用できます。

次のコード例は、**AddSpaceBetweenFarEastAndAlpha**プロパティと**AddSpaceBetweenFarEastAndDigit**プロパティの使用方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## 改行オプションの設定

Microsoft Wordの段落プロパティダイアログボックスのアジアのタイポグラフィタブには改行グループがあります。 このグループのオプションは、以下を使用して設定できます。[FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) **ParagraphFormat**クラスのプロパティ。

次のコード例は、これらのプロパティを使用する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
