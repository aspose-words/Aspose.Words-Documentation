---
title: C++でのリストの操作
second_title: C++の場合Aspose.Words
articleTitle: リストの操作
linktitle: リストの操作
description: "のナンバリング書式設定機能の紹介 C++の場合Aspose.Words."
type: docs
weight: 200
url: /ja/cpp/working-with-lists/
---

Microsoft Wordドキュメント内のリストは、リストの書式設定プロパティのセットです。 リストは、書式設定、配置、およびテキストを強調するためにあなたの文書で使用することができます。 リストは、ドキュメント内のデータを整理するための優れた方法であり、読者が重要なポイントを理解しやすくします。

各リストは9レベルまで持つことができ、数値スタイル、開始値、インデント、タブ位置などの書式設定プロパティはレベルごとに個別に定義されます。

Aspose.Wordsでは、リストの操作は[Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/)名前空間で表されます。 ただし、[List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/)オブジェクトは常に[ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/)コレクションに属します。

このトピックでは、Aspose.Wordsを使用してリストをプログラムで操作する方法について説明します。

## リストレベルの書式設定の指定

リストレベルのオブジェクトは、リストの作成時に自動的に作成されます。 リストの個々のレベルの書式設定を制御するには、[ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/)クラスのプロパティとメソッドを使用します。

## 各セクションのリストを再起動します

[IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/)プロパティを使用して、各セクションのリストを再起動できます。 このオプションは、RTF、DOC、DOCXのドキュメント形式でのみサポートされています。 このオプションは、OoxmlComplianceがEcma376よりも高い場合にのみDOCXに書き込まれます。

次のコード例は、リストを作成して各セクションで再起動する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
