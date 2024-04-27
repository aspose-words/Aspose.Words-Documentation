---
title: テーブルの位置 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: テーブルの位置
linktitle: テーブルの位置
description: "テーブルの位置を指定する Javaお問い合わせ テーブルのアライメントを受け取り、フローティングテーブルの位置をセットします。 Javaお問い合わせ"
type: docs
weight: 50
url: /ja/java/position-a-table/
---

フローティングテーブルとインラインテーブルがあります。

* 必須 **インラインテーブル** テキストと同じレイヤーに配置され、上記の表を囲むテキストの流れに配置されます。 インラインテーブルは、置いた段落の間に常に表示されます。
* 必須 **フローティングテーブル** テキストの上にレイヤーされ、段落の相対テーブルの位置はテーブルアンカーによって決定されます。 そのため、ドキュメントのフローティングテーブルの位置は、縦と横の位置設定の影響を受けます。

特定の方法で文書にテーブルを置く必要があります。 これを行うには、アライメントツールを使用して、テーブルと周囲のテキスト間のインデントを設定する必要があります。

この記事では、どのようなオプションについて議論します Aspose.Words 位置のために提供します。

## インラインテーブル位置を指定する

インラインテーブルの位置をインラインテーブルで設定できます。 Aspose.Words API そして、 [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) 宿泊施設 したがって、ドキュメントページに対してテーブルのアライメントを調整することができます。

次のコードの例では、インラインテーブルの位置を設定する方法を示します。

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## フローティングテーブルのアライメントを入手

テーブルテキストのラップが設定されている場合 **Around**, テーブルの水平方向と垂直方向のアライメントは、 [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) そして、 [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) プロパティ。

と **他の種類のテキストのラッピング**, インラインテーブルアライメントをインラインテーブルで取得できます。 **Alignment** プロパティ.

次のコードの例では、テーブルのアライメントを取得する方法を示します。

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## フローティングテーブルの位置を取得する

 浮動テーブルの位置は、次のプロパティを使用して決定されます。

* 必須 [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) - フローティングテーブルの水平位置を計算するためのオブジェクト
* 必須 [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) - フローティングテーブルの垂直位置を計算するためのオブジェクト
* 必須 [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) - 絶対横の浮遊テーブルの位置
* 必須 [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) - 絶対縦の浮遊テーブルの位置
* 必須 [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) - 他のフローティングオブジェクトで有効/無効なオーバーラップを有効にするオプション
* 必須 [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) - フローティングテーブルの相対的な水平方向の直線。
* 必須 [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) – 浮遊テーブルの相対的な縦の直線。

次のコードの例では、フローティングテーブルの位置を取得する方法を示します。

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## 浮遊テーブルの位置を置いて下さい

ちょうど、同じを使用して浮遊テーブルの位置を置くことができます Aspose.Words APIお問い合わせ

アライメントと水平方向と垂直距離が組み合わせられた特性を知っておくことが重要です。そして、もう1つはリセットできます。 例えば、 **RelativeHorizontalAlignment** リセット **AbsoluteHorizontalDistance** デフォルト値およびその逆に。 同じです true 垂直配置のため。

次のコードの例では、フローティングテーブルの位置を設定する方法を示します。

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## 表と周囲のテキスト間の距離を取得する

Aspose.Words また、テーブルと周囲のテキスト間の距離を見つける機会を提供します。

- - - [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) – 上記距離の値
- - - [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) – 知覚の距離の価値
- - - [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) - 右側の距離値
- - - [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) – 左の距離値

次のコードの例では、テーブルと周囲のテキストの間の距離を取得する方法を示します。

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
