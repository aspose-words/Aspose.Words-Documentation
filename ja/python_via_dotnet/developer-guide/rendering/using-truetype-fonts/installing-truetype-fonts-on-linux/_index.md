---
title: Linux に TrueType フォントをインストールする
second_title: Python via .NET用Aspose.Words
articleTitle: Linux に TrueType フォントをインストールする
linktitle: Linux に TrueType フォントをインストールする
description: "Aspose.Words for Python を使用すると、Microsoft Word を使用して作成されたドキュメントを Linux マシンで最高の精度でレンダリングできます。これを行うには、Windows マシンからフォント ファイルをコピーするか、`TrueType` フォント パッケージを Linux マシンにインストールします。"
type: docs
weight: 20
url: /ja/python-net/installing-truetype-fonts-on-linux/
---

ほとんどの場合、Aspose.Words を使用して DOC または DOCX ドキュメントを PDF 形式に変換します。 Linux マシンでこれを行う必要がある場合、このトピックは、Aspose.Words がドキュメントを最高の精度でレンダリングする方法を学ぶのに役立ちます。

ほとんどの場合、変換が必要な DOC および DOCX ドキュメントは、Windows または Mac OS オペレーティング システム上で Microsoft Word を使用して作成されています。したがって、DOC および DOCX ドキュメントで使用されるほとんどのフォントは、Microsoft Windows または Microsoft Office とともにインストールされるフォントである「Windows フォント」または「Office フォント」です。これらのフォントには、Arial、Calibri、Cambria、Century Gothic、Courier New、Garamond、Tahoma、Verdana、Wingdings などが含まれます。

問題は、上記の `TrueType` フォントが Linux ディストリビューションにデフォルトでインストールされていないことです。 Cambria フォントでフォーマットされた一般的な DOCX ドキュメントを Linux 上の PDF フォーマットに変換しようとすると、Cambria が使用できないため、Aspose.Words は別のフォントを使用します。その結果、PDF ドキュメントは元の DOCX ドキュメントと比較して異なって見えます。 Aspose.Words によって変換されたドキュメントができるだけオリジナルに近いように表示されるようにするには、Linux システムに「Windows フォント」をインストールする必要があります。

Linux システムで TrueType フォントを入手するには、主に 2 つの方法があります。

- .TTF および .TTC ファイルを Windows マシンから Linux マシンにコピーします。
- *msttcorefonts* などの `TrueType` フォント パッケージをインストールします。

## Windows マシンからのフォントのコピー

Linux システムで TrueType フォントを簡単かつ迅速に入手する方法は、Windows マシン上の `C:\Windows\Fonts` ディレクトリから .TTF および .TTC ファイルを Linux マシン上のディレクトリにコピーすることです。これらのフォントを Linux にインストールしたり登録したりする必要はまったくありません。 Aspose.Words の [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) クラスを使用してフォントの場所を指定するだけです。

{{% alert color="primary" %}}

Linux オペレーティング システムに MS フォントをインストールする前に、フォントのライセンスが必要かどうかを確認し、EULA をよく読んでください。

{{% /alert %}}

## `TrueType` フォント パッケージをインストールする

Microsoft TrueType フォントを含む Linux パッケージが多数あり、ダウンロードして Linux マシンにインストールできます。正確な手順は、さまざまな Linux ディストリビューションによって異なる場合があります。

- Ubuntu では、Synaptic パッケージ マネージャーを使用して *ttf-mscorefonts-installer* パッケージを見つけてインストールします。
- openSUSE では、Yast2 → ソフトウェア管理を使用して *fetchmsttfonts* パッケージを見つけてインストールします。
- 標準の Windows フォント (Arial、Times New Roman、および Courier New) の代替として、OFL に基づいてライセンス供与された Liberation フォントを使用します。
- 他の Linux ディストリビューションに適したフォント パッケージについては、インターネット上で利用可能なドキュメントを検索してください。

パッケージをインストールすると、Aspose.Words はシステム上のフォルダー内でこれらのフォントを検索し、ドキュメントを操作するときに使用します。

## 関連項目

- 標準 Windows フォントの代替としての [リベラシオンフォント](https://pagure.io/liberation-fonts)
