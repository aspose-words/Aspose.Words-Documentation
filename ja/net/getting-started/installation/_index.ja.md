---
title: インストール
second_title: .NET用Aspose.Words
articleTitle: インストール
linktitle: インストール
description: "Manage NuGet Packages や Package Manager Console などの Visual Studio ツールと MSI インストーラーを使用して、Aspose.Words for .NET をインストールします。 C#で設定されたFull Trust権限を使用します。"
type: docs
weight: 10
url: /ja/net/installation/
---

始める前に、お使いのマシンが [システム要求](/words/ja/net/system-requirements/) を満たしていることを確認してください。

この記事では、Aspose.Words for .NET をコンピュータにインストールする方法について説明します。

## Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget} を使用した .NET 用 Aspose.Words のインストールまたは更新

NuGet は、[.NET用Aspose.Words](https://www.nuget.org/packages/Aspose.Words/) API をダウンロードしてインストールする最も簡単な方法です。これを行うには、次の手順に従います。

1. メニューから *Microsoft Visual Studio* と *Manage NuGet Packages* を開き、パッケージ マネージャーを開きます。
2.「aspose」または「aspose.words」を検索して、目的の Aspose API を見つけます。<br>
   <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-words-nuget" style="width:800px"/>
3. 目的の Aspose API を選択し、[インストール] をクリックします。

選択した API がダウンロードされ、プロジェクト内で参照されます。

*Manage NuGet Packages* を使用して、Aspose.Words for .NET を目的のバージョンに更新することもできます。

## Package Manager Console を使用して Aspose.Words をインストールまたは更新する

*Package Manager Console* を使用して、.NET API 用の Aspose.Words をインストールまたは更新することもできます。これを行うには、次の手順に従います。

1. メニューから *Microsoft Visual Studio* と *Package Manager Console* を開き、パッケージ マネージャー コンソールを開きます。<br>
   <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2. コマンド `Install-Package Aspose.Words` を入力して Enter キーを押し、最新の完全リリースをアプリケーションにインストールします。<br>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br>
   {{% alert color="primary" %}}さらに、`-prerelease` サフィックスをコマンドに追加して、ホットフィックスを含む最新リリースもインストールする必要があることを指定できます。{{% /alert %}}
3. ダウンロードが完了すると、確認メッセージが表示されます。<br>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istaled" style="width:600px"/><br>
   {{% alert color="primary" %}}[EULA を削除する](https://about.aspose.com/legal/eula/) に詳しくない場合は、URL.{{% /alert %}} で参照されているライセンスを読むことをお勧めします。
4. これで、Aspose.Words がアプリケーションに正常に追加され、参照されたことがわかります。<br>
   <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-words-nuget-references" style="width:400px"/>

*Package Manager Console* では、`Update-Package Aspose.Words` コマンドを使用して Aspose.Words パッケージの更新を確認し、存在する場合はインストールすることもできます。 `-prerelease` サフィックスを追加して最新リリースを更新することもできます。

## インストーラーを使用して Aspose.Words for .NET をインストールします

Aspose.Words for .NET は、[ダウンロードセクション](https://releases.aspose.com/words/) から MSI インストーラーを直接ダウンロードしてインストールできます。

{{% alert color="primary" %}}

インストーラーをダウンロードするにはログインする必要があります。まだ登録されていない場合は、無料で登録できます。

{{% /alert %}}

.NET 用 Aspose.Words をインストールするには、次の手順に従います。

1. [ダウンロードセクション](https://releases.aspose.com/words/) から `Aspose.Words_`{LatestVersion}.msi をダウンロードします。
2. ダウンロードしたファイルをダブルクリックするとセットアップ ウィザードが開始され、セットアップ ウィザードの指示に従います。<br>
   <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-words-setup-1" style="width:500px"/>
3. セットアップ ウィザードがインストールを完了すると、指定されたフォルダー パスのフォルダーに必要なファイルが存在します。<br>
   <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-words-setup-4" style="width:500px"/>
4. Visual Studio でソリューション/プロジェクトを開きます
5. *ソリューション エクスプローラー* でプロジェクトを右クリックし、インストールされているアセンブリへの参照を追加します
6. Aspose.Words for .NET がインストールされたアセンブリは、[アセンブリ] セクションの拡張機能に表示されます。必要な DLL コンポーネントを選択するだけです。<br>
   <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7. 最後に、「OK」をクリックします。

## 共有 Server 環境で実行する場合の考慮事項

すべての Aspose .NET コンポーネントは、*Full Trust* 権限セットを使用して実行することをお勧めします。これは、Aspose .NET コンポーネントが、フォントの読み取りなど、仮想ディレクトリ以外の場所にあるレジストリ設定やファイルにアクセスする必要がある場合があるためです。さらに、`Aspose.NET` コンポーネントはコア .NET システム クラスに基づいており、その一部は実行するために *Full Trust* 権限を必要とする場合もあります。

さまざまな企業の複数のアプリケーションをホストしているインターネット サービス プロバイダーは、ほとんどの場合、*中信頼* セキュリティ レベルを適用します。 .NET 2.0 の場合、このようなセキュリティ レベルにより次の制約が課される可能性があり、Aspose.Words が適切に実行する能力に影響を与える可能性があります。

- **RegistryPermission**は使用できません。これは、ドキュメントを表示するときにインストールされているフォントを列挙するために必要なレジストリにアクセスできないことを意味します。
- **FileIOPermission**は制限されています。これは、アプリケーションの仮想ディレクトリ階層内のファイルにのみアクセスできることを意味します。これは、エクスポート中にフォントを読み取れない可能性があることも意味します。

上記の理由により、Full Trust 権限を使用して Aspose.Words を実行することをお勧めします。中程度の信頼でさまざまなタスクを実行すると、ライブラリ機能の一部が機能する場合がありますが、レンダリングなどの機能が機能しない場合もあります。これは、GDI+ 画像処理呼び出しに関連している可能性があります。
