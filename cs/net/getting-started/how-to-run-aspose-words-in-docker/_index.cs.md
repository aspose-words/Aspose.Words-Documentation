---
title: Jak spustit Aspose.Words tro Docker
second_title: Aspose.Words místo .NET
articleTitle: Jak spustit Aspose.Words tro Docker
linktitle: Jak spustit Aspose.Words tro Docker
type: docs
description: "Integrovat Aspose.Words funkce do aplikace pomocí Docker Bez ohledu na to, jaká technologie je ve vašem vývojovém stacku. Naučte se používat Aspose. Slova v Docker obal C#."
weight: 120
url: /cs/net/how-to-run-aspose-words-in-docker/
---

Mikroslužby ve spojení s kontejnerizací umožňují snadno kombinovat technologie. Docker umožňuje snadno integrovat Aspose.Words funkčnost do vaší aplikace, bez ohledu na to, jaká technologie je ve vašem vývojovém stacku.

V případě, že se zaměřujete na mikroslužby, nebo pokud hlavní technologie ve vašem zásobníku není .NET, C++ nebo Java, ale potřebuješ Aspose.Words funkce, nebo pokud již používáte Docker ve vašem stacku, pak můžete mít zájem o využití Aspose.Words v Docker kontejner.

## Předpoklady

- Docker musí být nainstalován ve vašem systému. Informace o tom, jak nainstalovat Docker n Windows nebo Mac, viz odkazy v sekci "Viz také."

- Také si všimněte, že Visual Studio 2017, .NET Core 2, 2 SDK se používá v příkladu uvedeném níže.


## Hello World Application

V tomto příkladu vytvoříte jednoduchou aplikaci Hello World konzole, která vytvoří dokument Hello World! Aplikace pak může být postavena a spuštěna v Docker.

### Vytvoření aplikace konzole

Chcete-li vytvořit program Hello World, postupujte podle níže uvedených kroků:
1. Jednou Docker je nainstalována, ujistěte se, že používá Linux Kontejnery (výchozí). V případě potřeby zvolte Přepínač na Linux možnost kontejneru z Docker Menu Desktops.
1. In Visual Studio, vytvořit .NET Core aplikace konzole.<br/>
![net-console-application](/lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. Nainstalovat nejnovější Aspose.Words verze NuGet. Skia Sharp bude nainstalován jako závislost Aspose.Words.<br/>
![skiasharp-dependency](/lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. Vzhledem k tomu, že aplikace bude spuštěna <span notrans="<span notrans=" Linux"=""></span>,? příslušný rodák Linux aktiva musí být instalována. Začněte s Debian základní obraz a instalace `SkiaSharp.NativeAssets`.Linux.
1. Po přidání všech požadovaných závislostí napište jednoduchý program, který vytvoří dokument Hello World!<br/>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

Všimněte si, že složka Při spuštění aplikace v <span notrans="<span notrans=" Docker"=""></span>,? složka na hostitelském stroji bude namontována do této složky v kontejneru. To vám umožní snadno zobrazit výstup generovaný Aspose.Words v Docker kontejner.

### Nastavení a Dockerfile

Dalším krokem je vytvořit a nastavit Dockerfile.

1. Vytvořit Dockerfile a umístěte jej vedle souboru řešení vaší aplikace. Ponechat tento název souboru bez přípony (default).
1. V Dockerfile, upřesněte:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

Výše uvedené je jednoduché Dockerfile, obsahující tyto pokyny:

- The SDK obrázek, který má být použit. Tady to je. .NET Core SDK 2.2 obrázek. Docker stáhne ji, až bude stavba spuštěna. Verze SDK je uvedena jako značka.
- Pracovní adresář, který je uveden v dalším řádku.
- Příkaz k instalaci libfontconfig1 je spuštěn v kontejneru. To vyžaduje SkiaSharp.
- Příkaz zkopírovat vše do kontejneru, zveřejnit aplikaci a zadat vstupní bod.

### Budování a provozování aplikace v Docker

Nyní lze aplikaci postavit a spustit v Docker. Otevřete svůj oblíbený příkaz, změňte adresář do složky s aplikací (složka, kde je soubor řešení a Dockerfile jsou umístěny) a spustit následující příkaz:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

Poprvé je tento příkaz proveden může trvat déle, protože Docker potřebuje stáhnout požadované obrázky. Po dokončení předchozího příkazu spusťte následující příkaz:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Věnujte pozornost argumentu o připojení, protože, jak již bylo uvedeno dříve, je složka na hostitelském stroji namontována do složce kontejneru, aby bylo možné snadno vidět výsledky provedení aplikace. Cesty do Linux jsou citlivé na případ.

{{% /alert %}}

## Obrázek podporující Aspose.Words

Aspose.Words je k dispozici pro oba .NET Framework a .NET Core. • .NET Core obrázky jsou mnohem menší než .NET Framework obrázky, které činí .NET Core lepší volbou pro vytváření mikroslužeb a pro použití v kontejnerech. Je možné nasadit aplikace na Linux Docker kontejnery (pro příčné nasazení), které jsou lehčí než Windows kontejnery.

Oficiální obrázky pro .NET Core SDK jsou stanoveny pro:

- Debian 9 a 10
- Ubuntu 18,04 a 19,04
- Alpine 3, 7 a 3, 9
- Windows Nano Server

Pracovat s grafikou, Aspose.Words místo .NET Standard Záleží na SkiaSharp. To omezuje obrázky Aspose.Words mohou být provozovány na:

- Debian 9 a 10
- Ubuntu 18,04 a 19,04
- Alpine 3.9

SkiaSharp nefunguje na Windows Nano Server kvůli nedostatku domorodých závislostí,[ což je známé číslo ve SkiaSharp](https://github.com/mono/SkiaSharp/issues/676). Otázka bude vyřešena v verzi 1.68.1.1 SkiaSharp. Pokud potřebujete utéct Aspose.Words v Windows kontejner, použijte .NET Framework základní obrázek s .NET Framework verze Aspose.Words, která nezávisí na SkiaSharp.

SkiaSharp je obal kolem původní Skia knihovny. Následující runtimes jsou poskytovány v SkiaSharp NuGet balení:

- Osx
- tizen-armel
- tizen-x86
- win10-arm
- win10-x64
- Win10-x86
- win-x64
- win-x86

Proběhnout v Linux, Měli byste použít další NuGet balíčky s odpovídajícím původním majetkem, jako jsou nativní stavby Skia knihovny, uvedené níže:

- *SkiaSharp.NativeAssets.Linux* Pro x64 poskytuje původní postavu Skia Debian založené Linux distribuce.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* Balíček je určen k použití v Linux distribuce, které nemají závislost na libfontconfig. Testováno RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* Pro x64 poskytuje původní postavu Skia Alpine Linux 3.9.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* Nachází se zde lyžařská stavba pro rameno 32 a arm64 Debian založené Linux distribuce.

## Další příklady

1. Ve výše uvedeném příkladu byla aplikace spuštěna v SDK obrázek. SDK obrázky jsou těžší než runtime snímky. Níže uvedený příklad ukazuje, jak Docker Soubor by měl být upraven tak, aby byl použit SDK obrázek pro vytvoření aplikace a runtime obrázek pro spuštění:<br/>
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
1. Spustit aplikaci v Ubuntu 18.04 Dockerfile zůstává prakticky stejný (změní se pouze značka):<br/>
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
1. Spustit aplikaci v Alpine Linux, je nutné přidat původní majetek SkiaSharp a použít následující Dockerfile:<br/>
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
1. Spustit aplikaci v RHEL 7, je nutné přidat původní majetek SkiaSharp a použít následující Dockerfile:<br/>
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

## Viz také

- [Instalovat Docker Na ploše Windows](https://docs.docker.com/docker-for-windows/install/)
- [Instalovat Docker Tabulka na Macu](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- [Přepnout na Linux kontejnery](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers) možnost
- Instalovat [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- Dodatečné informace [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- Použít další NuGet balení: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.Žádné závislosti](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxRuka](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
