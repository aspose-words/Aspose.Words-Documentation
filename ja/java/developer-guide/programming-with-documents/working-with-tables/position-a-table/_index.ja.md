---
title: Java内のテーブル位置
second_title: Aspose.WordsのためのJava
articleTitle: テーブルを配置する
linktitle: テーブルを配置する
description: "テーブルの位置をJavaで指定します。 テーブルの配置を取得し、Javaを使用して浮動テーブルの位置を取得および設定します。"
type: docs
weight: 50
url: /ja/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

フローティングテーブルとインラインテーブルがあります:

* **Inline tables**はテキストと同じレイヤー上に配置され、上下のテーブルのみを囲むテキストのフロー内に配置されます。 インラインテーブルは、それらを配置した段落の間に常に表示されます。
* **Floating tables**はテキストの上に階層化され、段落に対するテーブルの位置はテーブルアンカーによって決まります。 このため、ドキュメント内のフローティングテーブルの位置は、垂直方向および水平方向の位置設定の影響を受けます。

場合によっては、特定の方法で文書内のテーブルを配置する必要があります。 これを行うには、配置ツールを使用して、テーブルと周囲のテキストの間にインデントを設定する必要があります。

この記事では、どのオプションAspose.Wordsが位置決めに提供するかについて説明します。

## インラインテーブル位置の指定

インラインテーブルの位置は、Aspose.WordsAPIと[Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment)プロパティを使用して設定できます。 したがって、ドキュメントページに対するテーブルの配置を調整できます。

次のコード例は、インラインテーブルの位置を設定する方法を示しています:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## フローティングテーブルの配置を取得

テーブルのテキストの折り返しが**Around**に設定されている場合、[RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment)と[RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment)プロパティを使用してテーブルの水平方向と垂直方向の配置を取得できます。

**other types of text wrapping**を使用すると、**Alignment**プロパティを使用してインラインテーブルの配置を取得できます。

次のコード例は、テーブルの配置を取得する方法を示しています:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## フローティングテーブルの位置を取得

 フローティングテーブルの位置は、次のプロパティを使用して決定されます:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor)–フローティングテーブルの水平位置を計算するためのオブジェクト
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor)–フローティングテーブルの垂直位置を計算するためのオブジェクト
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance)-絶対水平フローティングテーブルの位置
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance)-絶対的な垂直フローティングテーブルの位置
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap)-他のフローティングオブジェクトとの重複を有効/無効にするオプション
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment)–フローティングテーブルの相対的な水平方向の配置。
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment)–フローティングテーブルの相対的な垂直方向の配置。

次のコード例は、フローティングテーブルの位置を取得する方法を示しています:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## フローティングテーブルの位置を設定

取得と同じように、同じAspose.WordsAPIを使用してフローティングテーブルの位置を設定できます。

アライメントと水平方向と垂直方向の距離は結合されたプロパティであり、一方が他方をリセットできることを知っておくことが重要です。 たとえば、**RelativeHorizontalAlignment**を設定すると**AbsoluteHorizontalDistance**がデフォルト値にリセットされ、その逆も同様です。 垂直方向の配置についても同じことが言えます。

次のコード例は、フローティングテーブルの位置を設定する方法を示しています:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## テーブルと周囲のテキスト間の距離を取得する

Aspose.Wordsはまた、表と周囲のテキスト間の距離を見つける機会を提供します:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop)–上からの距離の値
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom)–知覚の距離の値
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight)–右側の距離値
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft)–左側の距離値

次のコード例は、テーブルとその周囲のテキストとの間の距離を取得する方法を示しています:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
