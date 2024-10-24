---
title: C++でのテーブルの位置
second_title: C++の場合Aspose.Words
articleTitle: テーブルを配置する
linktitle: テーブルを配置する
description: "C++でテーブルの位置を指定します。 テーブルの配置を取得し、c++を使用して浮動テーブルの位置を取得および設定します。"
type: docs
weight: 50
url: /ja/cpp/position-a-table/
---

フローティングテーブルとインラインテーブルがあります:

* **Inline tables**はテキストと同じレイヤー上に配置され、上下のテーブルのみを囲むテキストのフロー内に配置されます。 インラインテーブルは、それらを配置した段落の間に常に表示されます。
* **Floating tables**はテキストの上に階層化され、段落に対するテーブルの位置はテーブルアンカーによって決まります。 このため、ドキュメント内のフローティングテーブルの位置は、垂直方向および水平方向の位置設定の影響を受けます。

場合によっては、特定の方法で文書内のテーブルを配置する必要があります。 これを行うには、配置ツールを使用して、テーブルと周囲のテキストの間にインデントを設定する必要があります。

この記事では、どのオプションAspose.Wordsが位置決めに提供するかについて説明します。

## インラインテーブル位置の指定

インラインテーブルの位置はAspose.WordsAPIと[Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/)プロパティを使用して設定できます。 したがって、ドキュメントページに対するテーブルの配置を調整できます。

次のコード例は、インラインテーブルの位置を設定する方法を示しています:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## フローティングテーブルの配置を取得

テーブルのテキストの折り返しが**Around**に設定されている場合、[RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/)と[RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/)プロパティを使用してテーブルの水平方向と垂直方向の配置を取得できます。

**other types of text wrapping**を使用すると、[Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/)プロパティを使用してインラインテーブルの配置を取得できます。

次のコード例は、テーブルの配置を取得する方法を示しています:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## フローティングテーブルの位置を取得

 フローティングテーブルの位置は、次のプロパティを使用して決定されます:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/)–フローティングテーブルの水平位置を計算するためのオブジェクト
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/)–フローティングテーブルの垂直位置を計算するためのオブジェクト
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/)-絶対水平フローティングテーブルの位置
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/)-絶対的な垂直フローティングテーブルの位置
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/)-他のフローティングオブジェクトとの重複を有効/無効にするオプション
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/)–フローティングテーブルの相対的な水平方向の配置。
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/)–フローティングテーブルの相対的な垂直方向の配置。

次のコード例は、フローティングテーブルの位置を取得する方法を示しています:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## フローティングテーブルの位置を設定

取得と同じように、同じAspose.WordsAPIを使用してフローティングテーブルの位置を設定できます。

アライメントと水平方向と垂直方向の距離は結合されたプロパティであり、一方が他方をリセットできることを知っておくことが重要です。 たとえば、**RelativeHorizontalAlignment**を設定すると**AbsoluteHorizontalDistance**がデフォルト値にリセットされ、その逆も同様です。 垂直方向の配置についても同じことが言えます。

次のコード例は、フローティングテーブルの位置を設定する方法を示しています:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## テーブルと周囲のテキスト間の距離を取得する

Aspose.Wordsはまた、表と周囲のテキスト間の距離を見つける機会を提供します:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/)–上からの距離の値
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/)–知覚の距離の値
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/)–右側の距離値
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/)–左側の距離値

次のコード例は、テーブルとその周囲のテキストとの間の距離を取得する方法を示しています:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
