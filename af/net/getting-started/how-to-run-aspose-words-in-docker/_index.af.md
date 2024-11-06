---
title: Hoe om te Hardloop Aspose.Words In Docker
second_title: Aspose.Words vir .NET
articleTitle: Hoe om te Hardloop Aspose.Words In Docker
linktitle: Hoe om te Hardloop Aspose.Words In Docker
type: docs
description: "Integreer Aspose.Words funksionaliteit in jou aansoek met Docker, ongeag watter tegnologie in jou ontwikkelingstapel is. Leer Hoe Om Aspose te gebruik .Woorde in'n Docker houer in C#."
weight: 120
url: /af/net/how-to-run-aspose-words-in-docker/
---

Mikroservices, in samewerking met containerisering maak dit moontlik om tegnologieë maklik te kombineer. Docker laat jou toe om Aspose.Words funksionaliteit maklik in jou aansoek te integreer, ongeag watter tegnologie in jou ontwikkelingstapel is.

As jy mikroservices teiken, of as die hooftegnologie in jou stapel nie .NET, C++ of Java is nie, maar jy het Aspose.Words funksionaliteit nodig, of as jy Reeds Docker in jou stapel gebruik, dan sal jy dalk belangstel om Aspose.Words in'n Docker-houer te gebruik.

## Voorwaardes

- Docker moet op jou stelsel geïnstalleer word. Vir inligting oor hoe Om Docker op Windows of Mac te installeer, verwys na die skakels in die afdeling "Sien ook".

- Let ook daarop dat Visual Studio 2017, .NET Core 2.2 SDK word in die voorbeeld hieronder gebruik.


## Hallo Wêreld Aansoek

In hierdie voorbeeld, jy skep'n eenvoudige Hello World console aansoek wat'n "Hello World!"dokument en stoor dit in alle ondersteun stoor formate. Die aansoek kan dan gebou word en uitgevoer word in Docker.

### Skep Die Konsole-Toepassing

Volg die onderstaande stappe om Die Hello World-program te skep:
1. Sodra Docker geïnstalleer is, maak seker dat dit Linux Houers gebruik (verstek). Kies indien nodig Die Opsie Switch to Linux containers in die Docker Desktops-kieslys.
1. In Visual Studio, skep'n .NET Core konsole aansoek.<br>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. Installeer die nuutste Aspose.Words weergawe van NuGet. SkiaSharp sal geïnstalleer word as'n afhanklikheid van Aspose.Words.<br>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. Aangesien die aansoek op Linux uitgevoer sal word, moet die toepaslike inheemse Linux bates geïnstalleer word. Begin met die Debian basis beeld en installeer `SkiaSharp.NativeAssets.Linux`.
1. Wanneer al die vereiste afhanklikhede bygevoeg word, skryf'n eenvoudige program wat'n "Hallo Wêreld!"dokument en stoor dit in alle ondersteun stoor formate:<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

Let daarop dat die" TestOut " gids is gespesifiseer as'n uitset gids vir die stoor van uitset dokumente. Wanneer die aansoek in Docker uitgevoer word, sal'n gids op die gasheermasjien in hierdie gids in die houer gemonteer word. Dit sal jou in staat stel om die uitset wat deur Aspose.Words gegenereer word, maklik in die Docker-houer te sien.

### Konfigurasie van'n Dockerfile

Die volgende stap is om Die Dockerfile te skep en te konfigureer.

1. Skep die Dockerfile en plaas dit langs die oplossingslêer van u aansoek. Hou hierdie lêernaam sonder uitbreiding (die verstek).
1. In die Dockerfile, spesifiseer:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

Bogenoemde is'n eenvoudige Dockerfile, wat die volgende instruksies bevat:

- Die SDK beeld wat gebruik moet word. Hier is dit die .NET Core SDK 2.2 beeld. Docker sal dit aflaai wanneer die bou uitgevoer word. Die weergawe van SDK word as'n etiket gespesifiseer.
- Die werkgids, wat in die volgende reël gespesifiseer word.
- Die opdrag om libfontconfig1 te installeer word in die houer uitgevoer. Dit word vereis deur SkiaSharp.
- Die opdrag om alles te kopieer na houer, publiseer die aansoek, en spesifiseer die inskrywing punt.

### Bou en Hardloop Die Aansoek In Docker

Nou kan die aansoek gebou word en in Docker uitgevoer word. Maak jou gunsteling opdragprompt oop, verander gids na die gids met die toepassing (gids waar die oplossingslêer en Die Dockerfile geplaas is) en voer die volgende opdrag uit:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

Die eerste keer dat hierdie opdrag uitgevoer word, kan dit langer neem, aangesien Docker die vereiste beelde moet aflaai. Sodra die vorige opdrag voltooi is, voer die volgende opdrag uit:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Gee aandag aan die bergargument, want, soos vroeër genoem, is'n vouer op die gasheermasjien in die houer se vouer gemonteer om die resultate van die toepassingsuitvoering maklik te sien. Pad in Linux is hooflettergevoelig.

{{% /alert %}}

## Beelde Ondersteun Aspose.Words

Aspose.Words is beskikbaar vir beide .NET Framework en .NET Core. Die .NET Core beelde is baie kleiner as .NET Framework beelde, wat die .NET Core die beter keuse maak vir die skep van mikroservices en vir gebruik in houers. Dit is moontlik om programme te ontplooi na Linux Docker houers (vir kruis-platform ontplooiing), wat ligter is as Windows houers.

Amptelike beelde vir die .NET Core SDK word verskaf vir:

- Debian 9 en 10
- Ubuntu 18.04 en 19.04
- Alpine 3.7 en 3.9
- Windows Nano Server

Om met grafika te werk, Aspose.Words vir .NET Standaard hang af van SkiaSharp. Dit beperk die prente wat Aspose.Words gebruik kan word tot die volgende:

- Debian 9 en 10
- Ubuntu 18.04 en 19.04
- Alpine 3.9

SkiaSharp werk nie op Windows Nano Server as gevolg van'n gebrek aan'n paar inheemse afhanklikhede,[ wat is'n bekende kwessie in SkiaSharp](https://github.com/mono/SkiaSharp/issues/676). Die probleem sal opgelos word in 1.68.1.1 weergawe van SkiaSharp. As jy Aspose.Words in'n Windows houer moet hardloop, gebruik die .NET Framework basisbeeld met die .NET Framework weergawe van Aspose.Words, wat nie van SkiaSharp afhang nie.

SkiaSharp is'n omslag rondom die inheemse Skia biblioteek. Die volgende runtimes word verskaf in die SkiaSharp NuGet pakket:

- osx
- tizen-armel
- tizen - x86
- win10-arm
- win10 - x64
- win10 - x86
- wen - x64
- wen - x86

Om dit in Linux uit te voer, moet jy addisionele NuGet pakkette gebruik met die ooreenstemmende inheemse bates, soos inheemse bou Van Skia biblioteek, hieronder gelys:

- *SkiaSharp.NativeAssets.Linux* - verskaf'n inheemse Skia bou vir x64 Debian gebaseer Linux verspreidings.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* - die pakket is bedoel om gebruik te word in Linux verspreidings wat nie die libfontconfig afhanklikheid het nie. Getoets op RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* - bied'n inheemse Skia bou vir x64 Alpine Linux 3.9.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* - bied'n inheemse Skia bou vir arm32 en arm64 Debian gebaseer Linux verspreidings.

## Meer Voorbeelde

1. In die voorbeeld hierbo, is die aansoek uitgevoer in'n SDK beeld. SDK beelde is swaarder as runtime beelde. Die onderstaande voorbeeld toon hoe die Docker lêer moet verander word ten einde die SDK beeld te gebruik om die aansoek te bou, en die runtime beeld om dit uit te voer:<br>
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
1. Om die toepassing in Ubuntu 18.04 uit te voer, bly die Dockerfile feitlik dieselfde (slegs die etiket word verander):<br>
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
1. Om die aansoek in Alpine Linux uit te voer, is dit nodig om die SkiaSharp inheemse bates by te voeg en die volgende Dockerfile te gebruik:<br>
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
1. Om die aansoek in RHEL 7 uit te voer, is dit nodig om die SkiaSharp inheemse bates by te voeg en die volgende Dockerfile te gebruik:<br>
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

## Sien Ook

- [Installeer Docker Werkskerm op Windows](https://docs.docker.com/docker-for-windows/install/)
- [Installeer Docker Desktop Op Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- [Wissel na Linux houers](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers) opsie
- Installeer [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- Bykomende inligting oor [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- Gebruik addisionele NuGet pakkette: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.NoDependencies](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Kwartelvis.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
