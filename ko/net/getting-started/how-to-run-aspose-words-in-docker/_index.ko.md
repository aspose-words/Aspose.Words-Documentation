---
title: Docker에서 Aspose.Words를 실행하는 방법
second_title: .NET용 Aspose.Words
articleTitle: Docker에서 Aspose.Words를 실행하는 방법
linktitle: Docker에서 Aspose.Words를 실행하는 방법
type: docs
description: "개발 스택에 어떤 기술이 있는지에 관계없이 Docker를 사용하여 Aspose.Words 기능을 애플리케이션에 통합하세요. C#의 Docker 컨테이너에서 Aspose .Words를 사용하는 방법을 알아보세요."
weight: 120
url: /ko/net/how-to-run-aspose-words-in-docker/
timestamp: 2024-08-19-11-05-36
---

마이크로서비스는 컨테이너화와 함께 기술을 쉽게 결합할 수 있게 해줍니다. Docker를 사용하면 개발 스택에 어떤 기술이 있는지에 관계없이 Aspose.Words 기능을 애플리케이션에 쉽게 통합할 수 있습니다.

마이크로서비스를 대상으로 하는 경우, 스택의 주요 기술이 .NET, C++ 또는 Java이 아니지만 Aspose.Words 기능이 필요한 경우, 또는 이미 스택에서 Docker을 사용하고 있는 경우 Docker에서 Aspose.Words를 활용하는 데 관심이 있을 수 있습니다. 컨테이너.

## 전제 조건

- 시스템에 Docker가 설치되어 있어야 합니다. Windows 또는 Mac에 Docker를 설치하는 방법에 대한 자세한 내용은 "참조" 섹션의 링크를 참조하세요.

- 또한 아래 제공된 예에서는 Visual Studio 2017, .NET Core 2.2 SDK이 사용되었습니다.


## 안녕하세요 세계 응용 프로그램

이 예에서는 "Hello World!"를 만드는 간단한 Hello World 콘솔 애플리케이션을 만듭니다. 문서를 작성하고 지원되는 모든 저장 형식으로 저장합니다. 그런 다음 Docker에서 애플리케이션을 빌드하고 실행할 수 있습니다.

### 콘솔 애플리케이션 생성

Hello World 프로그램을 만들려면 다음 단계를 따르세요
1. Docker가 설치되면 Linux 컨테이너(기본값)를 사용하는지 확인하세요. 필요한 경우 Docker 데스크탑 메뉴에서 Linux 컨테이너로 전환 옵션을 선택합니다.
1. Visual Studio에서 .NET Core 콘솔 애플리케이션을 생성합니다.<br>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. NuGet에서 최신 Aspose.Words 버전을 설치합니다. SkiaSharp는 Aspose.Words의 종속성으로 설치됩니다.<br>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. 애플리케이션이 Linux에서 실행되므로 적절한 기본 Linux 자산을 설치해야 합니다. Debian 기본 이미지로 시작하고 `SkiaSharp.NativeAssets.Linux`를 설치합니다.
1. 필요한 모든 종속성이 추가되면 "Hello World!"를 생성하는 간단한 프로그램을 작성합니다. 문서를 작성하고 지원되는 모든 저장 형식으로 저장합니다.<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

"TestOut" 폴더는 출력 문서를 저장하기 위한 출력 폴더로 지정됩니다. Docker에서 애플리케이션을 실행하면 호스트 시스템의 폴더가 컨테이너의 이 폴더에 마운트됩니다. 이렇게 하면 Docker 컨테이너에서 Aspose.Words에 의해 생성된 출력을 쉽게 볼 수 있습니다.

### Dockerfile 구성

다음 단계는 Dockerfile를 생성하고 구성하는 것입니다.

1. Dockerfile를 생성하여 애플리케이션의 솔루션 파일 옆에 배치합니다. 확장자 없이 이 파일 이름을 유지합니다(기본값).
1. Dockerfile에서 다음을 지정합니다

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

위의 내용은 다음 지침을 포함하는 간단한 Dockerfile입니다

- 사용할 SDK 이미지입니다. 다음은 .NET Core SDK 2.2 이미지입니다. Docker은 빌드가 실행될 때 이를 다운로드합니다. SDK 버전은 태그로 지정됩니다.
- 다음 줄에 지정되는 작업 디렉터리입니다.
- libfontconfig1을 설치하는 명령이 컨테이너에서 실행됩니다. 이는 SkiaSharp에 필요합니다.
- 모든 것을 컨테이너에 복사하고, 애플리케이션을 게시하고, 진입점을 지정하는 명령입니다.

### Docker에서 애플리케이션 빌드 및 실행

이제 Docker에서 애플리케이션을 구축하고 실행할 수 있습니다. 즐겨찾는 명령 프롬프트를 열고 디렉터리를 애플리케이션이 있는 폴더(솔루션 파일과 Dockerfile가 있는 폴더)로 변경한 후 다음 명령을 실행합니다

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

이 명령을 처음 실행하면 Docker가 필요한 이미지를 다운로드해야 하므로 시간이 더 오래 걸릴 수 있습니다. 이전 명령이 완료되면 다음 명령을 실행합니다

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

앞서 언급한 것처럼 호스트 머신의 폴더가 컨테이너의 폴더에 마운트되어 애플리케이션 실행 결과를 쉽게 볼 수 있기 때문에 mount 인수에 주의하세요. Linux의 경로는 대소문자를 구분합니다.

{{% /alert %}}

## Aspose.Words를 지원하는 이미지

Aspose.Words는 .NET Framework와 .NET Core 모두에 사용할 수 있습니다. .NET Core 이미지는 .NET Framework 이미지보다 크기가 훨씬 작으므로 마이크로서비스 생성 및 컨테이너 사용에 .NET Core이 더 적합합니다. Windows 컨테이너보다 가벼운 Linux Docker 컨테이너(교차 플랫폼 배포용)에 앱을 배포할 수 있습니다.

.NET Core SDK의 공식 이미지는 다음과 같이 제공됩니다

- Debian 9 및 10
- Ubuntu 18.04 및 19.04
- Alpine 3.7 및 3.9
- Windows 나노 Server

그래픽 작업을 위해 .NET Standard용 Aspose.Words는 SkiaSharp에 의존합니다. 이로 인해 Aspose.Words를 실행할 수 있는 이미지가 다음으로 제한됩니다

- Debian 9 및 10
- Ubuntu 18.04 및 19.04
- Alpine 3.9

SkiaSharp는 일부 기본 종속성인 [ 이는 SkiaSharp의 알려진 문제입니다](https://github.com/mono/SkiaSharp/issues/676)이 부족하여 Windows Nano Server에서 작동하지 않습니다. 이 문제는 SkiaSharp 1.68.1.1 버전에서 해결될 예정입니다. Windows 컨테이너에서 Aspose.Words를 실행해야 하는 경우 SkiaSharp에 의존하지 않는 .NET Framework 버전의 Aspose.Words와 함께 .NET Framework 기본 이미지를 사용하세요.

SkiaSharp는 기본 Skia 라이브러리를 둘러싼 래퍼입니다. SkiaSharp NuGet 패키지에는 다음 런타임이 제공됩니다

- OSX
- 티젠 아멜
- 타이젠-x86
- win10-arm
- win10-x64
-win10-x86
- win-x64
- win-x86

Linux에서 실행하려면 아래 나열된 Skia 라이브러리의 기본 빌드와 같은 해당 기본 자산과 함께 추가 NuGet 패키지를 사용해야 합니다

- *SkiaSharp.NativeAssets.Linux* – x64 Debian 기반 Linux 배포를 위한 기본 Skia 빌드를 제공합니다.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* – 패키지는 libfontconfig 종속성이 없는 Linux 배포판에 사용되도록 고안되었습니다. RHEL 7(x64)에서 테스트되었습니다.
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* – x64 Alpine Linux 3.9용 기본 Skia 빌드를 제공합니다.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* – arm32 및 arm64 Debian 기반 Linux 배포를 위한 기본 Skia 빌드를 제공합니다.

## 더 많은 예

1. 위의 예에서 애플리케이션은 SDK 이미지에서 실행되었습니다. SDK 이미지는 런타임 이미지보다 무겁습니다. 아래 예에서는 SDK 이미지를 사용하여 애플리케이션을 빌드하고 런타임 이미지를 사용하여 이를 실행하기 위해 Docker 파일을 수정하는 방법을 보여줍니다.<br>
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
1. Ubuntu 18.04에서 애플리케이션을 실행하려면 Dockerfile가 거의 동일하게 유지됩니다(태그만 변경됨).<br>
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
1. Alpine Linux에서 애플리케이션을 실행하려면 SkiaSharp 기본 자산을 추가하고 다음 Dockerfile을 사용해야 합니다.<br>
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
1. RHEL 7에서 애플리케이션을 실행하려면 SkiaSharp 기본 자산을 추가하고 다음 Dockerfile를 사용해야 합니다.<br>
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

## 또한보십시오

- [Windows에 Docker 데스크탑 설치](https://docs.docker.com/docker-for-windows/install/)
- [Mac에 Docker 데스크탑 설치](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- [Linux 컨테이너로 전환](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers) 옵션
- [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux) 설치
- [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)에 대한 추가 정보
- 추가 NuGet 패키지 사용: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.NoDependency](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7(x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
