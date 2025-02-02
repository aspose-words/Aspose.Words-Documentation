﻿---
title: JavaのLinuxにTrueTypeフォントをインストールする
second_title: Aspose.WordsのためのJava
articleTitle: TrueTypeフォントをLinuxにインストールする
linktitle: TrueTypeフォントをLinuxにインストールする
description: "Aspose.WordsforJavaMicrosoft Wordを使用して作成されたドキュメントをLinuxマシン上で最高の精度でレンダリングできます。"
type: docs
weight: 20
url: /ja/java/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

ほとんどの場合、Aspose.Wordsを使用してDOCまたはDOCX文書をPDF形式に変換します。 Linuxマシン上でこれを行う必要がある場合、このトピックはAspose.Wordsが最高の精度でドキュメントをレンダリングする方法を学ぶのに役立ちます。

ほとんどの場合、変換が必要なDOCおよびDOCX文書は、WindowsまたはMac OS オペレーティングシステム上でMicrosoft Wordを使用して作成されました。 したがって、DOCおよびDOCXドキュメントで使用されるフォントのほとんどは"Windowsフォント"または"Officeフォント"であり、Microsoft WindowsまたはMicrosoftOfficeとともにインストールされてい これらのフォントには、Arial、Calibri、Cambria、Century Gothic、Courier New、Garamond、Tahoma、Verdana、Wingdingsなどが含まれます。

問題は、上記の`TrueType`フォントがLinuxディストリビューションにデフォルトでインストールされていないことです。 Cambriaフォントでフォーマットされた典型的なDOCX文書をLinuxでPDF形式に変換しようとすると、Cambriaが利用できないためAspose.Wordsは別のフォントを使用します。 その結果、PDF文書は元のDOCX文書と比較して異なった外観になります。 Aspose.Wordsで変換された文書ができるだけ元の文書に近いように表示されるようにするには、Linuxシステムに"Windowsフォント"をインストールする必要があります。

LinuxシステムでTrueTypeフォントを取得するには、主に二つの方法があります:

- 了解TTFと.WindowsマシンからLinuxマシンへのTTCファイル
- *msttcorefonts*などの`TrueType`フォントパッケージをインストールします

## Windowsマシンからフォントをコピーする

LinuxシステムでTrueTypeフォントを簡単かつ迅速に取得する方法は、コピーすることです。TTFと.Windowsマシン上の`C:\Windows\Fonts`ディレクトリからLinuxマシン上のあるディレクトリへのTTCファイル。 これらのフォントをLinuxにインストールしたり登録したりする必要はありません。Aspose.Wordsの[FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/)クラスを使用してフォントの場所を指定するだけです。

{{% alert color="primary" %}}

フォントライセンスが必要かどうかを確認し、LinuxオペレーティングシステムにMSフォントをインストールする前にEULAをよく読んでください。

{{% /alert %}}

## `TrueType`フォントパッケージをインストールする

LinuxパッケージにはMicrosoftTrueTypeフォントが含まれており、Linuxマシンにダウンロードしてインストールできます。 正確なステップは、さまざまなLinux分布で異なる場合があります。

- Ubuntuで、Synaptic Package Managerを使用して*ttf-mscorefonts-installer*パッケージを見つけてインストールします。
- OpenSUSEで、Yast2→ソフトウェア管理を使用して*fetchmsttfonts*パッケージを見つけてインストールします。
- 標準のWindowsフォントの代替として、OFLの下でライセンスされた解放フォントを使用します:Arial、Times New Roman、およびCourier New。
- 他のLinuxディストリビューションに適したフォントパッケージについては、インターネット上で入手可能なドキュメンテーションを検索してください。

パッケージをインストールすると、Aspose.Wordsはシステム上のフォルダ内でこれらのフォントを見つけ、文書を操作するときに使用します。

## また見て下さい

- [解放フォント](https://github.com/liberationfonts) 標準のWindowsフォントに代わるものとして
