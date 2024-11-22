---
title: Hoe te rennen Aspose.Words in Docker
second_title: Aspose.Words voor .NET
articleTitle: Hoe te rennen Aspose.Words in Docker
linktitle: Hoe te rennen Aspose.Words in Docker
type: docs
description: "Integreren Aspose.Words functionaliteit in uw toepassing met behulp van Docker ongeacht welke technologie er in uw ontwikkelstack zit. Leer hoe je Aspose moet gebruiken. Woorden in een Docker container in C#."
weight: 120
url: /nl/net/how-to-run-aspose-words-in-docker/
timestamp: 2024-08-19-11-05-36
---

Microservices, in combinatie met containerisatie maken het mogelijk om technologieën eenvoudig te combineren. Docker kunt u gemakkelijk integreren Aspose.Words functionaliteit in uw toepassing, ongeacht welke technologie zich in uw ontwikkelstack bevindt.

In het geval dat u zich richt op microservices, of als de belangrijkste technologie in uw stack is niet .NET, C++ of Java, maar je moet Aspose.Words functionaliteit, of als u al gebruik Docker in uw stack, dan kunt u geïnteresseerd zijn in het gebruik Aspose.Words in een Docker container.

## Vereisten

- Docker moet zijn geïnstalleerd op uw systeem. Voor informatie over hoe te installeren Docker op Windows of Mac, verwijzen naar de links in de sectie "Zie ook."

- Merk ook op dat Visual Studio 2017, .NET Core 2.2 SDK wordt gebruikt in het onderstaande voorbeeld.


## Hallo Wereldtoepassing

In dit voorbeeld, maakt u een eenvoudige Hello World console applicatie die een document maakt van Hallo World! De toepassing kan dan worden ingebouwd en uitgevoerd in Docker.

### De console-toepassing aanmaken

Om het Hello World programma te maken, volg onderstaande stappen:
1. Eén keer Docker is geïnstalleerd, zorg ervoor dat het gebruikt Linux Containers (standaard). Selecteer indien nodig de Schakelaar naar Linux container optie van de Docker Bureaubladmenu.
1. In Visual Studio, een .NET Core console toepassing.<br/>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. Laatste installeren Aspose.Words versie van NuGet. Skia Sharp zal worden geïnstalleerd als een afhankelijkheid van Aspose.Words.<br/>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. Aangezien de toepassing zal worden uitgevoerd op Linux de geschikte inheemse Linux activa moeten worden geïnstalleerd. Begin met de Debian basisafbeelding en installatie `SkiaSharp.NativeAssets.Linux`.
1. Als alle vereiste afhankelijkheden worden toegevoegd, schrijf dan een eenvoudig programma dat een "Hallo World!" document maakt en het opslaat in alle ondersteunde opslagformaten:<br/>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

Merk op dat de map "TestOut" is opgegeven als een uitvoermap voor het opslaan van uitvoerdocumenten. Bij het uitvoeren van de toepassing in Docker een map op de host machine zal worden gekoppeld aan deze map in de container. Dit zal u in staat stellen om gemakkelijk de uitvoer gegenereerd door Aspose.Words in de Docker container.

### A configureren Dockerfile

De volgende stap is om de Dockerfile.

1. Creëer de Dockerfile en plaats het naast het oplossingsbestand van uw toepassing. Bewaar deze bestandsnaam zonder extensie (standaard).
1. In de Dockerfile, specificeren:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

Het bovenstaande is eenvoudig Dockerfile, die de volgende instructies bevat:

- De SDK te gebruiken afbeelding. Hier is het .NET Core SDK 2.2 afbeelding. Docker zal het downloaden wanneer de build wordt uitgevoerd. De versie van SDK is gespecificeerd als een tag.
- De werkmap, die in de volgende regel wordt opgegeven.
- Het commando om libfontconfig1 te installeren wordt uitgevoerd in de container. Dit is vereist door SkiaSharp.
- Het commando om alles naar container te kopiëren, de toepassing te publiceren en het invoerpunt te specificeren.

### Bouwen en uitvoeren van de toepassing in Docker

Nu kan de toepassing worden ingebouwd en uitgevoerd in Docker. Open uw favoriete opdrachtprompt, verander directory naar de map met de toepassing (map waar de oplossing bestand en de Dockerfile worden geplaatst) en voer het volgende commando uit:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

De eerste keer dat dit commando wordt uitgevoerd kan het langer duren, omdat Docker moet de vereiste afbeeldingen te downloaden. Zodra het vorige commando is voltooid, voer dan het volgende commando uit:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Let op het mount argument, omdat, zoals eerder vermeld, een map op de host machine is gemonteerd in de map container Paden in Linux zijn hoofdlettergevoelig.

{{% /alert %}}

## Afbeeldingen ondersteunen Aspose.Words

Aspose.Words is beschikbaar voor beide .NET Framework en .NET Core. De .NET Core afbeeldingen zijn veel kleiner in grootte dan .NET Framework beelden, die de .NET Core de betere keuze voor het creëren van microdiensten en voor gebruik in containers. Het is mogelijk om apps te implementeren om Linux Docker containers (voor inzet op platforms), die lichter zijn dan Windows containers.

Officiële afbeeldingen voor de .NET Core SDK zijn voorzien in:

- Debian 9 en 10
- Ubuntu 18.04 en 19.04
- Alpine 3.7 en 3.9
- Windows Nano Server

Om te werken met graphics, Aspose.Words voor .NET Standard hangt af van SkiaSharp. Dit beperkt de afbeeldingen Aspose.Words kan worden uitgevoerd op het volgende:

- Debian 9 en 10
- Ubuntu 18.04 en 19.04
- Alpine 3.9

SkiaSharp werkt niet op Windows Nano Server als gevolg van een gebrek aan inheemse afhankelijkheden,[ wat een bekend probleem is in SkiaSharp](https://github.com/mono/SkiaSharp/issues/676). Het probleem zal worden opgelost in 1.68.1.1 versie van SkiaSharp. Als je moet rennen Aspose.Words in een Windows container, gebruik de .NET Framework basis afbeelding met de .NET Framework versie van Aspose.Words, die niet afhankelijk is van SkiaSharp.

SkiaSharp is een wikkelaar rond de native Skia bibliotheek. De volgende looptijden zijn voorzien in de SkiaSharp NuGet pakket:

- osx
- tijzen-armel
- tijzen-x86
- win10-arm
- win10-x64
- win10-x86
- win-x64
- win-x86

Om het in te voeren Linux, u moet extra NuGet pakketten met de bijbehorende inheemse activa, zoals de oorspronkelijke bouw van Skia bibliotheek, hieronder vermeld:

- *SkiaSharp.NativeAssets.Linux* Een native Skia build voor x64 Debian gebaseerd Linux distributies.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* De verpakking is bedoeld voor gebruik in Linux distributies die niet de libfontconfig afhankelijkheid hebben. Getest op RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* Een native Skia build voor x64 Alpine Linux 3.9.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* Een native Skia bouwt voor arm32 en arm64 Debian gebaseerd Linux distributies.

## Meer voorbeelden

1. In het bovenstaande voorbeeld werd de toepassing uitgevoerd in een SDK afbeelding. SDK beelden zijn zwaarder dan runtime beelden. Het voorbeeld hieronder laat zien hoe de Docker bestand moet worden gewijzigd om de SDK afbeelding om de toepassing te bouwen, en de runtime afbeelding om het uit te voeren:<br/>
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
1. De toepassing uitvoeren in Ubuntu 18.04. Dockerfile blijft praktisch hetzelfde (alleen de tag wordt gewijzigd):<br/>
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
1. De toepassing uitvoeren in Alpine Linux, het is vereist om de SkiaSharp inheemse activa toe te voegen en het volgende te gebruiken: Dockerfile:<br/>
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
1. De toepassing uitvoeren in RHEL 7, het is vereist om de SkiaSharp inheemse activa toe te voegen en gebruik te maken van de volgende Dockerfile:<br/>
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

## Zie ook

- [Installeren Docker Bureaublad aan Windows](https://docs.docker.com/docker-for-windows/install/)
- [Installeren Docker Bureaublad op Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- [Schakel naar Linux containers](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers) optie
- Installeren [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- Aanvullende informatie over [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- Gebruik extra NuGet verpakkingen: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.NoDependentie](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
