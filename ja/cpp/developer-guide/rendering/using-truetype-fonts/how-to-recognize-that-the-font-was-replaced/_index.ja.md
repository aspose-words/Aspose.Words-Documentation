---
title: フォントがC++で置き換えられたことを認識する方法
second_title: C++の場合Aspose.Words
articleTitle: フォントが置き換えられたことを認識する方法
linktitle: フォントが置き換えられたことを認識する方法
description: "ドキュメントのレイアウトが変更された理由や、特定のフォントが期待どおりに表示されない理由がわからない場合は、フォント置換警告メッセージ"
type: docs
weight: 13
url: /ja/cpp/how-to-recognize-that-the-font-was-replaced/
---

場合によっては、ドキュメントのレイアウトが変更された理由や、一部のフォントが期待どおりに表示されない理由が不明なことがあります。このような場合、IWarningCallback インターフェイスによって実装されたフォント置換警告メッセージが役に立ちます。これらの警告メッセージには、[FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) 警告タイプと標準の説明テキスト形式、「フォント '<OriginalFont>' が見つかりません。代わりに '<SubstitutionFont>' フォントを使用します。理由:<Reason> 」と述べ、その理由は以下のとおりです。

- "文書からの代替名"-[AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)による置換の場合
- "fontconfig substitution"–フォント設定ルールによる置換の場合
- "テーブル置換"-テーブルルールによる置換の場合
- "font info substitution"-フォント情報ルールによる置換の場合
- "default font substitution"-デフォルトのフォントルールによる置換の場合
- "最初に利用可能なフォント"-最初に利用可能なフォントで置換するための
