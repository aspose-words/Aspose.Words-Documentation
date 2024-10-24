---
title: C++でのSmartArtコールドレンダリングの操作
second_title: C++の場合Aspose.Words
articleTitle: SmartArtコールドレンダリングの操作
linktitle: SmartArtコールドレンダリングの操作
type: docs
description: "C++の場合Aspose.Words つまり、事前にレンダリングされたSmartArt図面が欠落しているか正しくない場合にSmartArtオブジェクトをレイアウトしてレンダリングします。"
weight: 330
url: /ja/cpp/working-with-smartart-cold-rendering/
---

SmartArtグラフィックスは、情報の視覚的表現を迅速かつ簡単に作成するために使用されます。 あなたは、単に最高のあなたの状況に合ったレイアウトの数が多いから選択します。 この使いやすさにより、SmartArtグラフィックはいくつかの目的で非常に人気があります。

Microsoft Wordは、事前にレンダリングされた描画を`SmartArt`オブジェクトとともに生成して保存します。 ほとんどの場合、プレレンダリングされた描画はAspose.Wordsによって適切にレンダリングされ、追加のアクションは必要ありません。 ただし、文書が他のアプリケーションによって保存されている場合は、事前にレンダリングされたSmartArt図面が欠落しているか、正しくない可能性があ この場合、`SmartArt`オブジェクト自体をレイアウトし、Aspose.Wordsを使用してレンダリングする必要があります。 このプロセスを`SmartArt`コールドレンダリングと呼びます。

## SmartArtコールドレンダリングを使用する

Aspose.Wordsプレレンダリングされた描画を使用したり、コールドレンダリングを実行したりできます:

* 事前にレンダリングされた図面が利用可能な場合、Aspose.Wordsはそれを使用して`SmartArt`オブジェクトをレンダリングします。
* プレレンダリングされた描画が欠落している場合、Aspose.Wordsは暗黙的にコールドレンダリングを実行して`SmartArt`オブジェクトをレンダリングします。
* プレレンダリングされた描画が存在するが正しくない場合は、[UpdateSmartArtDrawing](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/updatesmartartdrawing/)メソッドを呼び出してSmartArtコールドレンダリングを明示的に実行する必要があります。

次のコード例は、ドキュメント内のすべての図の図面を更新する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cpp" >}}

## 標準SmartArtレイアウトのサポート

現在、限られた数の標準Microsoft WordSmartArtレイアウトのみがサポートされています。 また、これらのレイアウトの一部は部分的にサポートされており、図の重要なノードと形状がレンダリングされますが、Microsoft WordとAspose.Words図のレイアウトに違いがあ

以下の表は、完全にサポートされているレイアウトと部分的にサポートされて:

| SmartArtレイアウトグループ | 完全にサポートされているレイアウト | 部分的にサポートされているレイアウト |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>基本ブロックリスト</li><li>交互六角形</li><li>縦の箇条書きリスト</li><li>縦の箱のリスト</li><li>幅の変更リスト</li><li>水平箇条書きリスト</li><li>グループ化されたリスト</li><li>垂直ブロックリスト</li><li>縦のシェブロンのリスト</li><li>縦矢印リスト</li><li>台形リスト</li><li>テーブルリスト</li><li>ピラミッドリスト</li><li>ターゲットリスト</li></ul> | <ul><li>並べられたリスト</li><li>縦括弧一覧</li><li>タブリスト</li><li>積み重ねられたリスト</li><li>縦のアクセントリスト</li><li>縦の円のリスト</li></ul> |
| `Process` | <ul><li>基本的なプロセス</li><li>アクセントプロセス</li><li>連続ブロックプロセス</li><li>矢印プロセスの増加</li><li>テキストの収束</li><li>基本的なタイムライン</li><li>基本的なシェブロンプロセス</li><li>シェブロンアクセントプロセス</li><li>閉じたシェブロンプロセス</li><li>シェブロン一覧</li><li>縦プロセス</li><li>互い違いにされたプロセス</li><li>プロセスリスト</li><li>基本的な曲げプロセス</li><li>曲がるプロセスを繰り返すこと</li><li>詳しいプロセス</li><li>上向きの矢印</li><li>降順プロセス</li><li>円の曲がるプロセス</li></ul> | <ul><li>ステップアッププロセス</li><li>ステップダウンプロセス</li><li>交互の流れ</li><li>円の増加プロセス</li><li>パイプロセス</li><li>相互接続されたブロックプロセス</li><li>プロセス矢印</li><li>円のアクセントのタイムライン</li><li>円プロセス</li><li>サブステッププロセス</li><li>段階的なプロセス</li><li>結果プロセスへの無作為</li><li>円の矢印プロセス</li></ul> |
| `Cycle` |  | <ul><li>セグメント化されたサイクル</li><li>ヘキサゴンラジアル</li></ul> |
| `Hierarchy` |  | <ul><li>テーブル階層</li><li>建築レイアウト</li></ul> |
| `Relationship` | <ul><li>バランス</li><li>じょうご</li><li>ギア</li><li>プラスとマイナス</li><li>アローリボン</li><li>カウンターバランスアロー</li><li>反対の矢</li><li>ネストされたターゲット</li><li>基本的なターゲット</li><li>ベーシックパイ</li><li>基本的なVenn</li><li>積み重ねられたVenn</li><li>相互接続されたリング</li></ul> | <ul><li>円関係</li><li>反対のアイデア</li><li>方程式</li><li>垂直方程式</li><li>リニアベン</li></ul> |
| `Matrix` | <ul><li>基本行列</li><li>"マトリックス"というタイトルの</li><li>グリッド行列</li><li>サイクルマトリックス</li></ul> |  |
| `Pyramid` |  | <ul><li>セグメント化されたピラミッド</li></ul> |

## Aspose.WordsでのSmartArtレンダリングとMicrosoftの比較

以下の表は、いくつかの標準レイアウトのAspose.Wordsコールドレンダリングの画像の例をMicrosoft Word出力と比較して示しています:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
