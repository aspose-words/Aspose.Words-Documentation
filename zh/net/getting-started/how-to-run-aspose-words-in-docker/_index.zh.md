---
title: 如何在 Docker 中运行 Aspose.Words
second_title: .NET 格式的 Aspose.Words
articleTitle: 如何在 Docker 中运行 Aspose.Words
linktitle: 如何在 Docker 中运行 Aspose.Words
type: docs
description: "使用 Docker 将 Aspose.Words 功能集成到您的应用程序中，无论您的开发堆栈中采用什么技术。了解如何在 C# 格式的 Docker 容器中使用 Aspose .Words。"
weight: 120
url: /zh/net/how-to-run-aspose-words-in-docker/
---

微服务与容器化相结合使得轻松组合技术成为可能。 Docker 允许您轻松地将 Aspose.Words 功能集成到您的应用程序中，无论您的开发堆栈中采用什么技术。

如果您的目标是微服务，或者您的堆栈中的主要技术不是 .NET、C++ 或 Java，但您需要 Aspose.Words 功能，或者您已经在堆栈中使用 Docker，那么您可能有兴趣在 Docker 中使用 Aspose.Words容器。

## 先决条件

- Docker 必须安装在您的系统上。有关如何在 Windows 或 Mac 上安装 Docker 的信息，请参阅"另请参阅"部分中的链接。

- 另请注意，示例中使用了 Visual Studio 2017、.NET Core 2.2 SDK，如下所示。


## 你好世界应用程序

在此示例中，您将创建一个简单的 Hello World 控制台应用程序，用于生成"Hello World!"文档并将其保存为所有支持的保存格式。然后可以在 Docker 中构建并运行该应用程序。

### 创建控制台应用程序

要创建 Hello World 程序，请按照以下步骤操作：
1. 安装 Docker 后，请确保它使用 Linux 容器（默认）。如有必要，请从 Docker 桌面菜单中选择切换到 Linux 容器选项。
1. 在 Visual Studio 中，创建 .NET Core 控制台应用程序。<br>
![net-console-application](https:/https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. 从 NuGet 安装最新的 Aspose.Words 版本。 SkiaSharp 将作为 Aspose.Words 的依赖项安装。<br>
![skiasharp-dependency](https:/https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. 由于应用程序将在 Linux 上运行，因此必须安装适当的本机 Linux 资产。从 Debian 基础映像开始并安装 `SkiaSharp.NativeAssets`.Linux。
1. 添加所有必需的依赖项后，编写一个简单的程序来创建"Hello World!"文档并将其保存为所有支持的保存格式：<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

请注意，"TestOut"文件夹被指定为用于保存输出文档的输出文件夹。当在 Docker 中运行应用程序时，主机上的一个文件夹将被挂载到容器中的该文件夹中。这将使您能够轻松查看 Docker 容器中 Aspose.Words 生成的输出。

### 配置 Dockerfile

下一步是创建和配置 Dockerfile。

1. 创建 Dockerfile 并将其放置在应用程序的解决方案文件旁边。保留此文件名，不带扩展名（默认）。
1. 在 Dockerfile 中，指定：

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

上面是一个简单的Dockerfile，其中包含以下指令：

- 要使用的 SDK 图像。这是 .NET Core SDK 2.2 图像。 Docker 将在构建运行时下载它。 SDK 的版本被指定为标签。
- 工作目录，在下一行中指定。
- 安装 libfontconfig1 的命令在容器中运行。这是 SkiaSharp 所要求的。
- 将所有内容复制到容器、发布应用程序并指定入口点的命令。

### 在 Docker 中构建并运行应用程序

现在可以在 Docker 中构建并运行该应用程序。打开您最喜欢的命令提示符，将目录更改为应用程序所在的文件夹（放置解决方案文件和 Dockerfile 的文件夹）并运行以下命令：

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

第一次执行此命令可能需要更长的时间，因为 Docker 需要下载所需的图像。上一个命令完成后，运行以下命令：

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

请注意挂载参数，因为如前所述，主机上的文件夹被挂载到容器的文件夹中，以便轻松查看应用程序执行的结果。 Linux 中的路径区分大小写。

{{% /alert %}}

## 支持 Aspose.Words 的图像

Aspose.Words 可用于 .NET Framework 和 .NET Core。 .NET Core 图像的大小比 .NET Framework 图像小得多，这使得 .NET Core 成为创建微服务和在容器中使用的更好选择。可以将应用程序部署到 Linux Docker 容器（用于跨平台部署），该容器比 Windows 容器更轻。

.NET Core SDK 的官方图像提供给：

- Debian 9 和 10
- Ubuntu 18.04 和 19.04
- Alpine 3.7 和 3.9
- Windows 纳米 Server

为了处理图形，Aspose.Words for .NET Standard 依赖于 SkiaSharp。这限制了 Aspose.Words 可以运行的图像如下：

- Debian 9 和 10
- Ubuntu 18.04 和 19.04
- Alpine 3.9

由于缺少一些本机依赖项、[ 这是 SkiaSharp 中的一个已知问题](https://github.com/mono/SkiaSharp/issues/676)，SkiaSharp 不适用于 Windows Nano Server。该问题将在 SkiaSharp 1.68.1.1 版本中得到解决。如果您需要在 Windows 容器中运行 Aspose.Words，请使用 .NET Framework 基础映像和 Aspose.Words 的 .NET Framework 版本，它不依赖于 SkiaSharp。

SkiaSharp 是原生 Skia 库的包装器。 SkiaSharp NuGet 包中提供了以下运行时：

- 操作系统
- 蒂森-阿梅尔
- tizen-x86
- win10-arm
- win10-x64
- win10-x86
- win-x64
- win-x86

要在 Linux 中运行它，您应该使用其他 NuGet 包以及相应的本机资源，例如 Skia 库的本机构建，如下所示：

- *SkiaSharp.NativeAssets.Linux* – 为基于 x64 Debian 的 Linux 发行版提供本机 Skia 构建。
- *SkiaSharp.NativeAssets.Linux.NoDependencies* – 该包旨在用于没有 libfontconfig 依赖项的 Linux 发行版。在 RHEL 7 (x64) 上进行测试。
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* – 为 x64 Alpine Linux 3.9 提供本机 Skia 构建。
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* – 为基于arm32 和arm64 Debian 的Linux 发行版提供本机Skia 构建。

## 更多示例

1. 在上面的示例中，应用程序在 SDK 映像中运行。 SDK 图像比运行时图像重。下面的示例演示了如何修改 Docker 文件，以便使用 SDK 映像来构建应用程序，并使用运行时映像来运行它：<br>
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
1. 要在 Ubuntu 18.04 中运行应用程序，Dockerfile 几乎保持不变（仅更改了标签）：<br>
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
1. 要在 Alpine Linux 中运行应用程序，需要添加 SkiaSharp 本机资源并使用以下 Dockerfile：<br>
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
1. 要在 RHEL 7 中运行应用程序，需要添加 SkiaSharp 原生资源并使用以下 Dockerfile：<br>
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

## 也可以看看

- [在 Windows 上安装 Docker Desktop](https://docs.docker.com/docker-for-windows/install/)
- [在 Mac 上安装 Docker 桌面](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- [切换到 Linux 容器](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers) 选项
- 安装[SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- 有关 [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk) 的附加信息
- 使用额外的 NuGet 包：[SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)、[SkiaSharp.NativeAssets.Linux.NoDependencies](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies)、[Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux)、[Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
