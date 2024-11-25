---
title: C++でテーブルを分割する
second_title: C++の場合Aspose.Words
articleTitle: 分割テーブル
linktitle: 分割テーブル
description: "C++でテーブルを分割します。 1つのテーブルを2つの別々のテーブルに分割する方法C++。"
type: docs
weight: 100
url: /ja/cpp/split-table/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsドキュメントオブジェクトモデルで表されるテーブルは、独立した行とセルで構成されているため、テーブルを簡単に分割できます。

テーブルを操作して2つのテーブルに分割するには、元のテーブルから新しいテーブルに行の一部を移動するだけです。 これを行うには、テーブルを分割する行を選択する必要があります。

次の簡単な手順に従って、元のテーブルから2つのテーブルを作成できます:

1. 移動された行を保持し、元のテーブルの後に挿入するために、子を複製せずにテーブルのクローンを作成します
2. 指定された行から開始して、後続のすべての行をこの2番目のテーブルに移動します

次のコード例は、テーブルを特定の行の2つのテーブルに分割する方法を示しています:

{{< gist "aspose-words-gists" "29ce7710cab8c3ef18e912a5813e0d36" "split-table.h" >}}