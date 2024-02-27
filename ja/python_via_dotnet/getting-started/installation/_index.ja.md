---
title: インストール
second_title: Python via .NET用Aspose.Words
articleTitle: インストール
linktitle: インストール
description: "Manage NuGet Packages や Package Manager Console などの Visual Studio ツールと MSI インストーラーを使用して、Aspose.Words for Python をインストールします。 Full Trust 権限セットを使用します。"
type: docs
weight: 10
url: /ja/python-net/installation/
---

始める前に、お使いのマシンが [システム要求](/words/ja/python-net/system-requirements/) を満たしていることを確認してください。

この記事では、Aspose.Words for Python via .NET をコンピュータにインストールする方法について説明します。

`pip` は、[Python via .NET用Aspose.Words](https://pypi.org/project/aspose-words/) API をダウンロードしてインストールする最も簡単な方法です。これを行うには、次のコマンドを実行します。

`pip install aspose-words`

モジュールがインストールされたら、Python コードから使用できます。

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
