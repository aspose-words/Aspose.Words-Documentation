---
title: C# での SmartArt コールド レンダリングの使用
second_title: .NET用Aspose.Words
articleTitle: SmartArt コールド レンダリングの使用
linktitle: SmartArt コールド レンダリングの使用
description: "C# を使用した SmartArt シェイプの紹介。"
type: docs
description: "Aspose.Words for .NET は SmartArt コールド レンダリングを実行します。つまり、事前にレンダリングされた SmartArt 描画が見つからない場合、または C# を使用して間違っている場合に、SmartArt オブジェクトをレイアウトしてレンダリングします。"
weight: 330
url: /ja/net/working-with-smartart-cold-rendering/
---

SmartArt グラフィックは、情報の視覚的表現を迅速かつ簡単に作成するために使用されます。状況に最も適した多数のレイアウトから選択するだけです。この使いやすさにより、SmartArt グラフィックスはいくつかの目的で非常に人気があります。

Microsoft Word は、`SmartArt` オブジェクトとともにプリレンダリングされた描画を生成し、保存します。ほとんどの場合、事前レンダリングされた描画は Aspose.Words によって適切にレンダリングされるため、追加のアクションは必要ありません。ただし、ドキュメントが他のアプリケーションで保存されている場合、事前にレンダリングされた SmartArt 描画が見つからないか、正しくない可能性があります。この場合、`SmartArt` オブジェクト自体を Aspose.Words を使用してレイアウトし、レンダリングする必要があります。このプロセスを `SmartArt` コールド レンダリングと呼びます。

## SmartArt コールド レンダリングの使用

Aspose.Words を使用すると、プリレンダリングされた描画を使用したり、コールド レンダリングを実行したりできます。

* 事前レンダリングされた描画が利用可能な場合、Aspose.Words はそれを使用して `SmartArt` オブジェクトをレンダリングします。
* 事前レンダリングされた描画が見つからない場合、Aspose.Words は暗黙的にコールド レンダリングを実行して `SmartArt` オブジェクトをレンダリングします。
* プリレンダリングされた図面が存在するが正しくない場合は、[UpdateSmartArtDrawing](https://reference.aspose.com/words/net/aspose.words.drawing/shape/updatesmartartdrawing/) メソッドを呼び出して明示的に SmartArt コールド レンダリングを実行する必要があります。

次のコード例は、ドキュメント内のすべての図の図面を更新する方法を示しています。

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cs" >}}

## 標準の SmartArt レイアウトのサポート

現在、限られた数の標準 Microsoft Word SmartArt レイアウトのみがサポートされています。また、これらのレイアウトの一部は部分的にサポートされています。つまり、ダイアグラムの重要なノードと形状がレンダリングされますが、Microsoft Word ダイアグラム レイアウトと Aspose.Words ダイアグラム レイアウトの間には違いがある可能性があります。

以下の表は、完全にサポートされているレイアウトと部分的にサポートされているレイアウトを示しています。

|  SmartArt レイアウト Group |  完全にサポートされたレイアウト |  部分的にサポートされているレイアウト |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>基本ブロックリスト</li><li>交互の六角形</li><li>縦方向の箇条書きリスト</li><li>縦型ボックスリスト</li><li>可変幅リスト</li><li>水平方向の箇条書きリスト</li><li>Group化されたリスト</li><li>垂直ブロックリスト</li><li>縦山形リスト</li><li>垂直矢印リスト</li><li>台形リスト</li><li>テーブルリスト</li><li>ピラミッド一覧</li><li>ターゲットリスト</li></ul> |  <ul><li>罫線付きリスト</li><li>縦括弧リスト</li><li>タブ一覧</li><li>積み上げリスト</li><li>縦方向のアクセントリスト</li><li>縦円リスト</li></ul> |
|  `Process`  |  <ul><li>基本的なプロセス</li><li>アクセントプロセス</li><li>連続ブロックプロセス</li><li>矢印のプロセスを増やす</li><li>収束するテキスト</li><li>基本的なタイムライン</li><li>基本的なシェブロンプロセス</li><li>シェブロンアクセントプロセス</li><li>クローズドシェブロンプロセス</li><li>シェブロンリスト</li><li>垂直プロセス</li><li>時間差プロセス</li><li>プロセス一覧</li><li>基本的な曲げ加工</li><li>繰り返し曲げ加工</li><li>詳細なプロセス</li><li>上向き矢印</li><li>降順プロセス</li><li>円形曲げ加工</li></ul> |  <ul><li>ステップアッププロセス</li><li>ステップダウンプロセス</li><li>交互の流れ</li><li>サークルを増やすプロセス</li><li>パイプロセス</li><li>相互接続されたブロックのプロセス</li><li>プロセスアロー</li><li>サークルアクセントタイムライン</li><li>サークルプロセス</li><li>サブステッププロセス</li><li>段階的なプロセス</li><li>ランダムから結果までのプロセス</li><li>サークルアロープロセス</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>細分化されたサイクル</li><li>ヘキサゴンラジアル</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>テーブル階層</li><li>アーキテクチャのレイアウト</li></ul> |
|  `Relationship`  |  <ul><li>バランス</li><li>漏斗</li><li>装備</li><li>プラスとマイナス</li><li>アローリボン</li><li>カウンターバランスアロー</li><li>向かい合う矢印</li><li>ネストされたターゲット</li><li>基本目標</li><li>ベーシックパイ</li><li>ベーシックベン</li><li>スタックドベン</li><li>相互接続されたリング</li></ul> |  <ul><li>サークル関係</li><li>相反する考え</li><li>方程式</li><li>垂直方程式</li><li>リニアベン</li></ul> |
|  `Matrix`  |  <ul><li>基本マトリックス</li><li>タイトル付きマトリックス</li><li>グリッドマトリックス</li><li>サイクルマトリックス</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>分割されたピラミッド</li></ul> |

## Aspose.Words と Microsoft での SmartArt レンダリングの比較

以下の表は、Microsoft Word 出力と比較したいくつかの標準レイアウトの Aspose.Words コールド レンダリングのサンプル画像を示しています。

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="Basic_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-word.png" alt="基本プロセスワード"/> |
|   **Circular Bending Process**   |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/> |
|   **Repeating Bending Process**  |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="再加工_曲げ加工_アスポーズ"/> |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="再加工_曲げ_プロセス_ワード"/> |
|   **Trapezoid List**             |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="台形リストワード"/> |
