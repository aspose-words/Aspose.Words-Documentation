---
title: Docker で Aspose.Words を実行する方法
second_title: .NET用Aspose.Words
articleTitle: Docker で Aspose.Words を実行する方法
linktitle: Docker で Aspose.Words を実行する方法
type: docs
description: "開発スタックにどのようなテクノロジーが含まれているかに関係なく、Docker を使用して Aspose.Words 機能をアプリケーションに統合します。 C# の Docker コンテナーで Aspose .Words を使用する方法を学びます。"
weight: 120
url: /ja/net/how-to-run-aspose-words-in-docker/
---

マイクロサービスをコンテナ化と組み合わせることで、テクノロジーを簡単に組み合わせることができます。 Docker を使用すると、開発スタックにどのようなテクノロジが含まれているかに関係なく、Aspose.Words 機能をアプリケーションに簡単に統合できます。

マイクロサービスを対象としている場合、またはスタックの主要なテクノロジーが .NET、C++、Java ではないが Aspose.Words 機能が必要な場合、またはスタックですでに Docker を使用している場合は、Docker で Aspose.Words を利用することに興味があるかもしれません。容器。

## 前提条件

- Docker がシステムにインストールされている必要があります。 Windows または Mac に Docker をインストールする方法については、「関連項目」セクションのリンクを参照してください。

- また、以下の例では Visual Studio 2017、.NET Core 2.2 SDK が使用されていることにも注意してください。


## ハローワールドアプリケーション

この例では、「Hello World!」と言う単純な Hello World コンソール アプリケーションを作成します。ドキュメントを保存し、サポートされているすべての保存形式で保存します。その後、アプリケーションを Docker で構築して実行できます。

### コンソールアプリケーションの作成

Hello World プログラムを作成するには、次の手順に従います。
1. Docker をインストールしたら、Linux コンテナ (デフォルト) を使用していることを確認します。必要に応じて、Docker デスクトップ メニューから Linux コンテナに切り替えるオプションを選択します。
1. Visual Studio で、.NET Core コンソール アプリケーションを作成します。<br>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. NuGet から最新の Aspose.Words バージョンをインストールします。 SkiaSharp は Aspose.Words の依存関係としてインストールされます。<br>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. アプリケーションは Linux 上で実行されるため、適切なネイティブ Linux アセットをインストールする必要があります。 Debian ベース イメージから始めて、`SkiaSharp.NativeAssets`.Linux をインストールします。
1. 必要な依存関係をすべて追加したら、「Hello World!」を作成する簡単なプログラムを作成します。ドキュメントを保存し、サポートされているすべての保存形式で保存します。<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

なお、出力ドキュメントを保存する出力フォルダとして「TestOut」フォルダが指定されています。 Docker でアプリケーションを実行すると、ホスト マシン上のフォルダーがコンテナ内のこのフォルダーにマウントされます。これにより、Docker コンテナ内の Aspose.Words によって生成された出力を簡単に表示できるようになります。

### Dockerfileの構成

次のステップは、Dockerfile を作成して構成することです。

1. Dockerfile を作成し、アプリケーションのソリューション ファイルの隣に配置します。このファイル名は拡張子なしでそのままにしておきます (デフォルト)。
1. Dockerfile で次を指定します。

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

上記は単純な Dockerfile であり、次の命令が含まれています。

- 使用する SDK イメージ。これは .NET Core SDK 2.2 イメージです。ビルドの実行時に Docker によってダウンロードされます。 SDKのバージョンをタグで指定します。
- 作業ディレクトリ。次の行で指定します。
- libfontconfig1 をインストールするコマンドはコンテナーで実行されます。これは SkiaSharp に必要です。
- すべてをコンテナにコピーし、アプリケーションを公開し、エントリ ポイントを指定するコマンド。

### Docker でのアプリケーションの構築と実行

これで、アプリケーションを Docker で構築して実行できるようになりました。お気に入りのコマンド プロンプトを開き、アプリケーションのあるフォルダー (ソリューション ファイルと Dockerfile が配置されているフォルダー) にディレクトリを変更し、次のコマンドを実行します。

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

このコマンドを初めて実行するときは、Docker が必要なイメージをダウンロードする必要があるため、時間がかかることがあります。前のコマンドが完了したら、次のコマンドを実行します。

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

前述したように、アプリケーションの実行結果を簡単に確認できるように、ホスト マシン上のフォルダーがコンテナーのフォルダーにマウントされるため、マウント引数に注意してください。 Linux のパスでは大文字と小文字が区別されます。

{{% /alert %}}

## Aspose.Wordsをサポートするイメージ

Aspose.Words は .NET Framework と .NET Core の両方で使用できます。 .NET Core イメージは .NET Framework イメージよりもサイズがはるかに小さいため、マイクロサービスの作成やコンテナーでの使用には .NET Core が適しています。 Windows コンテナよりも軽量な Linux Docker コンテナ (クロスプラットフォーム展開用) にアプリを展開することができます。

.NET Core SDK の公式イメージは次の目的で提供されています。

- Debian 9 および 10
- Ubuntu 18.04 および 19.04
- Alpine 3.7 および 3.9
- WindowsナノServer

グラフィックスを操作するには、Aspose.Words for .NET Standard は SkiaSharp に依存します。これにより、Aspose.Words を実行できるイメージが次のものに制限されます。

- Debian 9 および 10
- Ubuntu 18.04 および 19.04
- Alpine 3.9

SkiaSharp は、ネイティブの依存関係、[ これは SkiaSharp の既知の問題です](https://github.com/mono/SkiaSharp/issues/676) が欠如しているため、Windows Nano Server では動作しません。この問題は、SkiaSharp バージョン 1.68.1.1 で解決される予定です。 Windows コンテナーで Aspose.Words を実行する必要がある場合は、SkiaSharp に依存しない .NET Framework バージョンの Aspose.Words で .NET Framework ベース イメージを使用します。

SkiaSharp は、ネイティブ Skia ライブラリのラッパーです。 SkiaSharp NuGet パッケージでは、次のランタイムが提供されます。

- OSX
- ティゼン・アーメル
- tizen-x86
- win10-arm
- win10-x64
- win10-x86
- win-x64
- win-x86

Linux で実行するには、以下に示す Skia ライブラリのネイティブ ビルドなど、対応するネイティブ アセットを含む追加の NuGet パッケージを使用する必要があります。

- *SkiaSharp.NativeAssets.Linux* – x64 Debian ベースの Linux ディストリビューション用のネイティブ Skia ビルドを提供します。
- *SkiaSharp.NativeAssets.Linux.NoDependencies* – このパッケージは、libfontconfig 依存関係のない Linux ディストリビューションで使用することを目的としています。 RHEL 7 (x64) でテスト済み。
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* – x64 Alpine Linux 3.9 用のネイティブ Skia ビルドを提供します。
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* – arm32 および arm64 Debian ベースの Linux ディストリビューション用のネイティブ Skia ビルドを提供します。

## 他の例

1. 上記の例では、アプリケーションは SDK イメージで実行されました。 SDK イメージはランタイム イメージよりも重いです。以下の例は、SDK イメージを使用してアプリケーションを構築し、ランタイム イメージを使用してアプリケーションを実行するために、Docker ファイルをどのように変更する必要があるかを示しています。<br>
{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build
WORKDIR /app
\# copy csproj and restore as distinct layers
COPY Aspose.Words.Docker.Sample/*.csproj ./Aspose.Words.Docker.Sample/
WORKDIR /app/Aspose.Words.Docker.Sample
RUN dotnet restore
\# copy and publish app and libraries
WORKDIR /app/
COPY Aspose.Words.Docker.Sample/. ./Aspose.Words.Docker.Sample/
WORKDIR /app/Aspose.Words.Docker.Sample
RUN dotnet publish -c Release -o out
\# copy to runtime environment
FROM mcr.microsoft.com/dotnet/core/runtime:2.2 AS runtime
WORKDIR /app
\# libfontconfig1 is required to properly work with fonts in Linux.
RUN apt-get update && apt-get install -y libfontconfig1
RUN apt install libharfbuzz-icu0
COPY --from=build /app/Aspose.Words.Docker.Sample/out ./
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}
1. Ubuntu 18.04 でアプリケーションを実行するには、Dockerfile は実質的に同じままです (タグのみが変更されます)。<br>
{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2-bionic AS build
WORKDIR /app
\# copy csproj and restore as distinct layers
COPY Aspose.Words.Docker.Sample/*.csproj ./Aspose.Words.Docker.Sample/
WORKDIR /app/Aspose.Words.Docker.Sample
RUN dotnet restore
\# copy and publish app and libraries
WORKDIR /app/
COPY Aspose.Words.Docker.Sample/. ./Aspose.Words.Docker.Sample/
WORKDIR /app/Aspose.Words.Docker.Sample
RUN dotnet publish -c Release -o out
\# copy to runtime environment
FROM mcr.microsoft.com/dotnet/core/runtime:2.2-bionic AS runtime
WORKDIR /app
\# libfontconfig1 is required to properly work with fonts in Linux.
RUN apt-get update && apt-get install -y libfontconfig1
RUN apt install libharfbuzz-icu0
COPY --from=build /app/Aspose.Words.Docker.Sample/out ./
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}
1. Alpine Linux でアプリケーションを実行するには、SkiaSharp ネイティブ アセットを追加し、次の Dockerfile を使用する必要があります。<br>
{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2-alpine3.9 AS build
WORKDIR /app
\# copy csproj and restore as distinct layers
COPY Aspose.Words.Docker.Sample/*.csproj ./Aspose.Words.Docker.Sample/
WORKDIR /app/Aspose.Words.Docker.Sample
RUN dotnet restore
\# copy and publish app and libraries
WORKDIR /app/
COPY Aspose.Words.Docker.Sample/. ./Aspose.Words.Docker.Sample/
WORKDIR /app/Aspose.Words.Docker.Sample
RUN dotnet publish -c Release -o out
\# copy to runtime environment
FROM mcr.microsoft.com/dotnet/core/runtime:2.2-alpine3.9 AS runtime
WORKDIR /app
\# fontconfig is required to properly work with fonts in Linux.
RUN apk update && apk upgrade && apk add fontconfig && apk add harfbuzz
COPY --from=build /app/Aspose.Words.Docker.Sample/out ./
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}
1. RHEL 7 でアプリケーションを実行するには、SkiaSharp ネイティブ アセットを追加し、次の Dockerfile を使用する必要があります。<br>
{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.1 AS build
WORKDIR /app
\# copy csproj and restore as distinct layers
COPY Aspose.Words.Docker.Sample/*.csproj ./Aspose.Words.Docker.Sample/
WORKDIR /app/Aspose.Words.Docker.Sample
RUN dotnet restore
\# copy and publish app and libraries
WORKDIR /app/
COPY Aspose.Words.Docker.Sample/. ./Aspose.Words.Docker.Sample/
WORKDIR /app/Aspose.Words.Docker.Sample
RUN dotnet publish -c Release -o out
\# copy to runtime environment
FROM kkamberta/dotnet-21-rhel7 AS runtime
WORKDIR /app
COPY --from=build /app/Aspose.Words.Docker.Sample/out ./
ENTRYPOINT ["/opt/rh/rh-dotnet21/root/usr/bin/dotnet", "Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

## 関連項目

- [Docker デスクトップを Windows にインストールする](https://docs.docker.com/docker-for-windows/install/)
- [Mac に Docker デスクトップをインストールする](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- [Linuxコンテナに切り替える](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers)オプション
- [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)をインストールする
- [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk) に関する追加情報
- 追加の NuGet パッケージを使用します: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)、[SkiaSharp.NativeAssets.Linux.NoDependency](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies)、[Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux)、[Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL7(x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
