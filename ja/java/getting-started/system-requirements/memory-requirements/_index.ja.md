---
title: 記憶条件
second_title: Aspose.Words お問い合わせ Java
articleTitle: 記憶条件
linktitle: 記憶条件
description: "メモリの量 Aspose.Words お問い合わせ Java 書類の作業が必要ですか? 詳細情報をご覧ください。"
type: docs
weight: 10
url: /ja/java/memory-requirements/
---

Aspose.Words さまざまなフォーマットで文書を扱う機能の広い範囲を提供します。 ドキュメントファイルの最大サイズに制限がないことに注意してください。 Aspose.Words 処理するか、またはレンダリングできます。 唯一の制限は、あなたの側に利用可能なRAM(メモリー)の量です。

## 記憶の頻度 Aspose.Words お問い合わせ

よくある質問 Aspose.Words メモリ内のドキュメントのモデルを構築するために、ドキュメントサイズよりも複数のメモリが必要です。 例えば、ドキュメントサイズが1MBの場合、 Aspose.Words ビルドするRAMの10-20 MBが必要です Document Object Model ( )DOM) 記憶の。 複数のフォーマットは、他のフォーマットよりもコンパクトであるため、フォーマットによって異なります。 例えば、DOCXはDOCとRTFよりもコンパクトで、DOCはRTFよりもコンパクトです。

メモリの量を推定する正確な方法はありません Aspose.Words 特定の文書ファイルを処理するときに実際に消費します。 あなたが知っているかもしれないので Java クラス内のデータを格納し、各クラスインスタンスはJVMのメモリを使用する ( )Java 仮想マシン)内部目的。 そのため、段落またはフォーマットされたテキスト( 1つの文字から構成される)は、積み込み後に追加のメモリがかかる DOMお問い合わせ さらに、 Java ゴミ収集機エンジンは、メモリ収集をするのに最適な時間を決定するために複雑なアルゴリズムを使用しており、実際のメモリ消費量を決定するのは困難です。

## メモリの量を計算する方法

2つの文書を考えてみましょう。

1。 DOCX "A"ドキュメント - 0.35 MBサイズ(2千ページ)、テキストのみ
2。 DOCX "B"ドキュメント - 0.35 MBサイズ(ちょうど1ページ)、内のPNG画像

あなたが知っているように、DOCX、ODTなどの現代的なフォーマットの多くは、単純なZIPアーカイブです。 そのため、次の計算アルゴリズムを取得します。
1. 解凍。 未読文書「A」は20 MBのサイズ、文書「B」に0.4 MBのサイズがあります
2。 ドキュメントをモデルにロードする(そのビルド) Document Object Model – – DOM):
* 作成 DOM 「A」の最初のドキュメントでは、49 MB のサイズが必要です。
* 作成 DOM 2番目のドキュメントの「B」には2MBの容量が必要です。
3。 これらの文書をPDFにレンダリングするメモリの必要な量を測定します。 この操作のため、 Aspose.Words 要求して下さい:
  * 294 ドキュメント "A" の MB
  * ドキュメント "B" の 7 MB

つまり、入力文書サイズに線形依存性がないことがわかります。 必要なRAMサイズ、ドキュメント形式、複雑性、構造、画像数、フォーマット、その他多くの要因に影響を与えることができる多くの要因があります。

## メモリーマルチプライヤーを正確に計算する方法

実際の文書の何千もの実験は、典型的に示す Aspose.Words メモリ内のドキュメントモデルを構築し、フローフォーマット間の変換のような単純な操作を実行するため、平均的なドキュメントサイズよりも複数のメモリが必要です。 mail merge, パース、交換など。 2のマルチプライヤーについて話していることもあります。

レンダリング(固定ページフォーマットに変換する)、フィールドの更新、ページ分割などの複雑な操作は、いくつかの文書では、読み込まれた文書によって割り当てられたメモリよりも20倍のリソースを必要とします Aspose.Words DOMお問い合わせ

あなたのプロファイリング結果が可能なメモリ問題を示す場合 Aspose.Words, お問い合わせ [テクニカルサポート](/words/ja/java/technical-support/) そしてすべての診断情報を含んで下さい。

## お問い合わせ

* [レンダリング](/words/ja/java/rendering/)
* [Mail Merge そして報告](/words/java/mail-merge-and-reporting/)
* [フィールドを扱う](/words/ja/java/working-with-fields/)