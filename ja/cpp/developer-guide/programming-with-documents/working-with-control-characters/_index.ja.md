---
title: 制御文字の操作
second_title: C++の場合Aspose.Words
articleTitle: 制御文字の操作
linktitle: 制御文字の操作
description: "での制御文字の操作の概要 C++の場合Aspose.Words."
type: docs
weight: 400
url: /ja/cpp/working-with-control-characters/
---

Microsoft Word文書には、特別な意味を持つさまざまな文字を含めることができます。 通常、これらは書式設定の目的で使用され、通常モードでは描画されません。 標準ツールバーにある書式マークの表示/非表示ボタンをクリックすると、それらを表示することができます。

時には、テキストに/から文字を追加または削除する必要がある場合があります。 たとえば、文書からプログラムでテキストを取得する場合、Aspose.Wordsはほとんどの制御文字を保持するため、このテキストを操作する必要がある場合は、文字を削除または置換する必要があります。

[ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/)クラスは、ドキュメントでよく見られる制御文字を表す定数のリポジトリです。 同じ定数のcharバージョンとstringバージョンの両方を提供します。 たとえば、string[LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/)とchar**ControlChar.LineBreakChar**の値は同じです。

制御文字の使用方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}