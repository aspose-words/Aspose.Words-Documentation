---
title: 制御文字の使用
second_title: .NET用Aspose.Words
articleTitle: 制御文字の使用
linktitle: 制御文字の使用
description: "Aspose.Words for .NET での制御文字の操作の概要。"
type: docs
weight: 400
url: /ja/net/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word ドキュメントには、特別な意味を持つさまざまな文字が含まれている場合があります。通常、これらは書式設定の目的で使用され、通常モードでは描画されません。標準ツールバーにある「書式設定マークの表示/非表示」ボタンをクリックすると、それらを表示できます。

場合によっては、テキストに文字を追加したり、テキストから文字を削除したりする必要がある場合があります。たとえば、ドキュメントからプログラムでテキストを取得する場合、Aspose.Words はほとんどの制御文字を保持するため、このテキストを操作する必要がある場合は、文字を削除または置換する必要があります。

[ControlChar](https://reference.aspose.com/words/net/aspose.words/controlchar/) クラスは、ドキュメント内で頻繁に使用される制御文字を表す定数のリポジトリです。同じ定数の文字バージョンと文字列バージョンの両方が提供されます。たとえば、文字列 [LineBreak](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreak/) と文字 [LineBreakChar](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreakchar) は同じ値になります。

次のコード例は、制御文字の使用方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cs" >}}/words/net/working-with-content-control-sdt/)
