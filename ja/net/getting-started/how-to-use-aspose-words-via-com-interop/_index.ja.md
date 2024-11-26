---
title: COM Interop 経由の .NET 用 Aspose.Words
second_title: .NET用Aspose.Words
articleTitle: COM Interop 経由で Aspose.Words for .NET を使用する方法
linktitle: COM Interop 経由で Aspose.Words for .NET を使用する方法
type: docs
description: "Python、PHP、VBScript、JScript、およびその他のプログラミング言語で COM Interop 経由で Aspose.Words for .NET を使用します。"
weight: 130
url: /ja/net/how-to-use-aspose-words-via-com-interop/
timestamp: 2024-09-25-11-08-55
---

このトピックの情報は、次のいずれかのプログラミング言語で COM Interop 経由で Aspose.Words for .NET を使用するシナリオに適用されます。

- ASP
- Delphi ([例](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- JScript
- Perl
- PHP
- パワービルダー
- Python
- VBスクリプト
- Visual Basic

## COM Interop を使用する

Aspose.Words for .NET は .NET Framework の制御下で実行され、これはマネージ コードと呼ばれます。上記のすべての言語で記述されたコードは .NET Framework の外部で実行され、アンマネージ コードと呼ばれます。アンマネージ コードと Aspose.Words の間の対話は、COM Interop と呼ばれる .NET 機能を介して行われます。

Aspose.Words オブジェクトは .NET オブジェクトですが、COM Interop 経由で使用すると、プログラミング言語では COM オブジェクトとして表示されます。したがって、Aspose.Words の使用を開始する前に、プログラミング言語で COM オブジェクトを作成および使用する方法を理解しておくことが最善です。

最終的にマスターする必要があるトピックは次のとおりです。

- プログラミング言語で COM オブジェクトを使用する。プログラミング言語のドキュメントと、このドキュメントの言語固有のトピックを参照してください。
- .NET COM Interop によって公開される COM オブジェクトの操作。 MSDN の [アンマネージ コードによる Interoperating](https://learn.microsoft.com/en-us/dotnet/framework/interop/) と [.NET Framework コンポーネントを COM に公開する](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) を参照してください。
- Aspose.Words ドキュメント オブジェクト モデル。 「Aspose.Words [開発者ガイド](/words/ja/net/developer-guide/) と [API Reference](https://reference.aspose.com/words/net/)」を参照してください。

## COM Interop を使用した .NET の Aspose.Words の登録

[インストール](/words/ja/net/installation/) の後に、`regasm.exe` ユーティリティを使用して COM Interop の Aspose.Words を登録する必要があります。

`regasm.exe` は .NET Framework SDK に含まれるツールです。すべての .NET Framework SDK ツールは、`%windir%\Microsoft .NET\Framework\<FrameworkVersion>\` ディレクトリ (たとえば、*C:\Windows\Microsoft .NET\Framework\v4.0.30319*) にあります。

tlb ファイルを取得するには、cmd で `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` を実行します。`<installdir>` は、Aspose.Words (通常は `%USERPROFILE%\.nuget\packages\aspose.words\`) をインストールしたディレクトリです。

## COM Interop経由でAspose.Wordsを操作する

### ProgIDs

ProgID は「プログラム識別子」の略で、オブジェクトを作成するために使用する必要がある `COM` クラスの名前です。

現在、Aspose.Words は 4 つの公的に作成可能な COM オブジェクトを定義しています。それらの ProgIDs は次のとおりです。

- コムヘルパー
- 書類
- ドキュメントビルダー
- ライセンス

ProgIDs はライブラリ名 (「Aspose.Words」) とクラス名で構成されます。

### タイプライブラリ

インストール中に、Aspose.Words.tlb (COM タイプ ライブラリ) がコンピュータにコピーされます。

- .NET Framework 4.0から**<installdir>\lib\net40-クライアント**の場合

使用しているプログラミング言語 (Visual Basic や Delphi など) で `COM` タイプ ライブラリを参照できる場合は、**Aspose.Words.tlb** への参照を追加すると、オブジェクト ブラウザーですべての Aspose.Words クラス、メソッド、プロパティ、列挙型を確認できるようになります。

### COM オブジェクトの作成

.NET オブジェクトの作成は、通常の COM オブジェクトの作成と似ています。

**VBScript**

```
ディムヘルパー
Set helper = CreateObject("Aspose.Words.ComHelper")
 
```

作成後は、`COM` オブジェクトであるかのように、オブジェクトのメソッドとプロパティにアクセスできます。

**VBScript**

```
薄暗いドキュメント
Set doc = helper.Open("C:\my.doc")
 
```

一部のメソッドにはオーバーロードがあり、変更されない最初のメソッドを除き、数値サフィックスが追加された状態で COM Interop によって公開されます。たとえば、`Document.Save` メソッドのオーバーロードは `Document.Save`、`Document.Save_2`、`Document.Save_3` などになります。

詳細については、このドキュメントの言語固有の記事を参照してください。

### ラッパーアセンブリの作成

多くの Aspose.Words クラス、メソッド、プロパティを使用する必要がある場合は、(C# またはその他の .NET プログラミング言語を使用して) ラッパー アセンブリを作成することを検討してください。これにより、アンマネージ コードから Aspose.Words を直接使用することを避けることができます。

良いアプローチは、Aspose.Words を参照し、Aspose.Words を使用してすべての作業を実行し、最小限のクラスとメソッドのセットのみをアンマネージ コードに公開する .NET アセンブリを開発することです。そうすれば、アプリケーションはラッパー ライブラリだけで動作するはずです。

COM Interop 経由で .NET クラスを使用するには高度なスキルが必要になる場合が多いため、COM Interop 経由で呼び出す必要があるクラスとメソッドの数を減らすとプロジェクトが簡素化されます。
