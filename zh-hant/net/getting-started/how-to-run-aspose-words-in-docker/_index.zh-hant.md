---
title: 「如何在 Docker 中運行 Aspose.Words」
second_title: 「Aspose.Words for .NET」
articleTitle: 「如何在 Docker 中運行 Aspose.Words」
linktitle: 「如何在 Docker 中運行 Aspose.Words」
type: docs
description: "「整合 Aspose.Words 的功能到您的應用程式中，請使用 Docker 來完成，無論開發堆疊中的技術是什麼。」 在 C# 中學習如何在 Docker 容器中使用 Aspose。Words。"
weight: 120
url: /zh-hant/net/how-to-run-aspose-words-in-docker/
---

「微服務、容器化能讓技術結合。Docker 可以讓你將 Aspose.Words 的功能輕鬆整合到你的應用程式中，無論在開發堆疊中的技術是什麼。」

如果你是針對微服務，或是堆疊中的主要技術不是 .NET、C++ 或 Java，但你需要 Aspose.Words 功能，或是你已經在堆疊中使用 Docker，那麼你可能對在 Docker 容器中利用 Aspose.Words 有興趣。

## 先決條件

「- Docker 必須在你的系統上安裝。」 在「如何將 Docker 安裝到 Windows 或 Mac」的資訊請參閱「另見」部分中的連結。

- 此外，請注意示例中使用的 Visual Studio 2017，.NET Core 2.2 SDK。


## 「Hello World 應用程式」

在這個例子中，你會創造一個簡單的「Hello World」主控台應用程式，它會建立一份「Hello World！」文件並儲存於所有支援的儲存格式中。 應用程式可於 Docker 中建造並運行。

### 建立コンソールアプリケーション

「要創建『Hello World』的程式，請按照下列步驟：」
1. 「一旦 Docker 安裝，請確保它使用 Linux 容器（預設）。」 「若有需要，請從『 Docker』桌面菜單中選擇『切換至 Linux 容器』選項。」
1. 在Visual Studio中,建立 a 。 网易 核心控制台應用程式 。<br/>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. 從 NuGet 安裝最新 Aspose.Words 版本。 「SkiaSharp 將會被建立為 Aspose.Words 的依賴項。<br>」
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. 「由於該應用程式將在 Linux 上執行，必須安裝適當的原生 Linux 資產。」 「從 Debian 基底圖像開始，然後安裝 `SkiaSharp.NativeAssets`.Linux。」
1. 「當所有所需的依賴項被加進去後，寫一篇簡單的程式來建立一個「你好世界！」的文件並將其儲存於所有支援的儲存格式中：<br>」

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

注意「TestOut」資料夹被指定為儲存輸出文件的輸出 폴더。 「當在 Docker 運行應用程式時，主機機器上某個資料夾會連到容器中的這個資料夹。」 這將讓您輕鬆地查看由 Aspose.Words 在 Docker 容器中生成的輸出。

### 配置 Dockerfile

接下來要做的就是建立並設定 Dockerfile。

1. 建立 Dockerfile，並將其放在你的程式解決方案檔案旁邊。 請保持此檔案名稱不帶副檔名（預設）。
1. 「在 Dockerfile 中指定：」

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

「上面是一份簡單的 Dockerfile，其中包含以下指示：」

- 將要使用的 SDK 圖像。 「這是 .NET Core SDK 2.2 版本，當構建過程執行時，Docker 將會下載它。 SDK的版本被指定為標籤。
「- 下一行所指定的工作目錄。」
「- 安裝libfontconfig1的命令會在容器中執行。」 「SkiaSharp 需要這個。」
- 命令將所有內容複製到容器中，發行應用程式並指定入口點。

### 在 Docker 中建立並執行應用程式

現在應用程式可以在 Docker 中構建並運行。 「打開最喜歡的指令提示符，將目錄變更到包含應用程式（解決方案檔案和 Dockerfile 位置的資料夾）的資料夹，然後運行以下命令：」

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

「這個指令第一次執行的時候可能需要較長時間，因為Docker必須下載必要的圖像。」 在先前的命令完成後，請執行以下命令：

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

「特別注意mount参数，因为，如上所述，主机机上的一个文件夹被挂载到容器中的一个文件夹，以便轻松看到应用程序执行的结果。」 「Linux 中的路徑是分大小寫的。」

{{% /alert %}}

## 支援 Aspose.Words 的圖像

「Aspose.Words 適用於 .NET Framework 和 .NET Core。」 .NET Core 圖像比 .NET Framework 圖像小得多，這使得 .NET Core 是建立微服務和用於容器時更好的選擇。 「有可能在 Linux Docker 容器中部署應用程式（為跨平台部署），這些容器比 Windows 容器要輕。」

.NET Core SDK 的官方圖像提供給：

"- Debian 9 和 10"
"- Ubuntu 18.04 和 19.04"
「– Alpine 3.7 和 3.9」
"- Windows 納諾 Server"

要使用圖形，Aspose.Words for .NET Standard 依賴於 SkiaSharp。 「這限制了」 Aspose.Words 「能跑的圖像到以下：」

「- Debian 9 和 10」
"- Ubuntu 18.04 和 19.04"
- Alpine 3.9

「SkiaSharp 在 Windows Nano Server 上不工作，因為一些本機依賴項缺失.[ which is a known issue in SkiaSharp](https://github.com/mono/SkiaSharp/issues/676)」 「這個問題將在 SkiaSharp 的 1.68.1.1 版本中解決。」 如果您需要在 Aspose.Words 容器中運行 Windows，請使用 .NET Framework 基底圖像和 Aspose.Words 的 .NET Framework 版本，該版本不依賴於 SkiaSharp。

「SkiaSharp」是一個封裝在原生 Skia 庫上的外掛。 「SkiaSharp NuGet 套件中提供的以下運行時：」

"- osx"
"- tizen-armel"
"- tizen-x86"
- win10-arm
"- win10-x64"
- win10-x86
- win-x64
- win-x86

「若要讓它能在 Linux 中运行，您應該使用額外的 NuGet 套件和相应的本机资源，例如本机 Skia 库构建，以下列出了」：

- *SkiaSharp.NativeAssets.Linux* – 提供對x64 Debian 的原生Skia編譯，基於 Linux 分發。
- *SkiaSharp.NativeAssets.Linux.NoDependencies* – 此套件旨在用於未具備libfontconfig依賴性的Linux發行版。 「於 RHEL 7 (x64) 測試。」
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* 提供對 x64 的本機 Skia 建置，Alpine Linux 3.9。
"- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* 提供 arm32 和 arm64 的本機 Skia 建置 Debian 基於 Linux 分發。"

## 更多例子

1. 「在上述範例中，應用程式是在一個SDK圖像中執行。SDK圖像比實時圖像重。」 「以下範例示範了如何修改 Docker 檔，以便使用 SDK 圖像來建立應用程式及執行時間的圖像：<br>」
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
1. 要讓應用程式在 Ubuntu 18.04 執行， Dockerfile 部分就差不多相同（只有標籤有變）："<br>
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
1. 「若要在 Alpine Linux 中執行該應用程式，必須加入 SkiaSharp 本機資產並使用以下 Dockerfile：<br>」
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
1. 「若要在 RHEL 7 中執行應用程式，必須加入 SkiaSharp 本機資產並使用以下 Dockerfile：<br>」
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

## 見也

- [Install Docker Desktop on Windows](https://docs.docker.com/docker-for-windows/install/)
- [Install Docker Desktop on Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- [Switch to Linux containers](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers) 選項
- 安裝 [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
"- 其他有關 [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk) 的資訊"
"-使用額外的 NuGet 包：[SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)、[SkiaSharp.NativeAssets.Linux.NoDependencies](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies)、[Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux)、[Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)"
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
