---
title: C# でのテーブルの位置
second_title: .NET用Aspose.Words
articleTitle: テーブルを配置する
linktitle: テーブルを配置する
description: "C# でテーブルの位置を指定します。 C# を使用してテーブルの位置合わせを取得し、フローティング テーブルの位置を取得および設定します。"
type: docs
weight: 50
url: /ja/net/position-a-table/
---

フローティング テーブルとインライン テーブルがあります。

※**インラインテーブル**はテキストと同じレイヤーに配置され、表の上下のみを囲むテキストの流れの中に配置されます。インライン テーブルは、配置した段落の間に常に表示されます。
* **フローティングテーブル** はテキストの上に重ねられ、段落に対する表の位置は表のアンカーによって決まります。このため、ドキュメント内のフローティング テーブルの位置は、垂直および水平の位置設定の影響を受けます。

場合によっては、特定の方法で文書内に表を配置する必要があることがあります。これを行うには、配置ツールを使用して、表と周囲のテキストの間にインデントを設定する必要があります。

この記事では、Aspose.Words が測位のために提供するオプションについて説明します。

## インラインテーブル位置の指定

Aspose.Words API と [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) プロパティを使用して、インライン テーブルの位置を設定できます。したがって、ドキュメント ページを基準にしてテーブルの配置を調整できます。

次のコード例は、インライン テーブルの位置を設定する方法を示しています。

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## フローティングテーブルの配置を取得する

テーブルのテキストの折り返しが **Around** に設定されている場合、[RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) プロパティと [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) プロパティを使用してテーブルの水平方向と垂直方向の配置を取得できます。

**他のタイプのテキストの折り返し** では、[Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) プロパティを使用してインライン テーブルの配置を取得できます。

次のコード例は、テーブルの配置を取得する方法を示しています。

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## フローティングテーブルの位置を取得する

 フローティング テーブルの位置は、次のプロパティを使用して決定されます。

* [HorizontalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/horizontalanchor/) – フローティングテーブルの水平位置を計算するためのオブジェクト
* [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/verticalanchor/) – フローティングテーブルの垂直位置を計算するためのオブジェクト
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absolutehorizontaldistance/) – 絶対水平フローティングテーブル位置
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absoluteverticaldistance/) – 垂直フローティングテーブルの絶対位置
* [AllowOverlap](https://reference.aspose.com/words/net/aspose.words.tables/table/allowoverlap/) – 他の浮動オブジェクトとのオーバーラップを有効/無効にするオプション
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) – フローティング テーブルの相対的な水平方向の配置。
* [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) – フローティング テーブルの相対的な垂直方向の配置。

次のコード例は、フローティング テーブルの位置を取得する方法を示しています。

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## フローティングテーブルの位置を設定する

取得と同様に、同じ Aspose.Words API を使用してフローティング テーブルの位置を設定できます。

配置と水平距離と垂直距離は組み合わせられたプロパティであり、一方が他方をリセットできることを知っておくことが重要です。たとえば、**RelativeHorizontalAlignment** を設定すると **AbsoluteHorizontalDistance** がデフォルト値にリセットされ、その逆も同様です。縦方向の配置の true も同様です。

次のコード例は、フローティング テーブルの位置を設定する方法を示しています。

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## 表と周囲のテキストの間の距離を取得する

Aspose.Words は、表と周囲のテキストの間の距離を調べる機会も提供します。

- [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) – 上からの距離の値
- [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/) – 知覚距離の値
- [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/) – 右側の距離値
- [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/) – 左側の距離値

次のコード例は、表とその周囲のテキストの間の距離を取得する方法を示しています。

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
