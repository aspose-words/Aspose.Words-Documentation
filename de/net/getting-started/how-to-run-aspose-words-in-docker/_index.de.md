---
title: So führen Sie Aspose.Words in Docker aus
second_title: Aspose.Words für .NET
articleTitle: So führen Sie Aspose.Words in Docker aus
linktitle: So führen Sie Aspose.Words in Docker aus
type: docs
description: "Integrieren Sie Aspose.Words-Funktionalität mithilfe von Docker in Ihre Anwendung, unabhängig davon, welche Technologie in Ihrem Entwicklungsstack enthalten ist. Erfahren Sie, wie Sie Aspose .Words in einem Docker-Container in C# verwenden."
weight: 120
url: /de/net/how-to-run-aspose-words-in-docker/
timestamp: 2024-08-19-11-05-36
---

Microservices ermöglichen in Verbindung mit Containerisierung die einfache Kombination von Technologien. Docker ermöglicht Ihnen die einfache Integration der Aspose.Words-Funktionalität in Ihre Anwendung, unabhängig davon, welche Technologie in Ihrem Entwicklungs-Stack enthalten ist.

Wenn Sie auf Microservices abzielen oder wenn die Haupttechnologie in Ihrem Stack nicht .NET, C++ oder Java ist, Sie aber Aspose.Words-Funktionalität benötigen oder wenn Sie bereits Docker in Ihrem Stack verwenden, dann könnten Sie daran interessiert sein, Aspose.Words in einem Docker zu verwenden Container.

## Voraussetzungen

- Docker muss auf Ihrem System installiert sein. Informationen zur Installation von Docker auf Windows oder Mac finden Sie unter den Links im Abschnitt "Siehe auch".

- Beachten Sie außerdem, dass im unten angegebenen Beispiel Visual Studio 2017, .NET Core 2.2 SDK verwendet wird.


## Hello World-Anwendung

In diesem Beispiel erstellen Sie eine einfache Hello World-Konsolenanwendung, die ein "Hello World!"-Programm erstellt. Dokument und speichert es in allen unterstützten Speicherformaten. Die Anwendung kann dann in Docker erstellt und ausgeführt werden.

### Erstellen der Konsolenanwendung

Um das Hello World-Programm zu erstellen, führen Sie die folgenden Schritte aus:
1. Stellen Sie nach der Installation von Docker sicher, dass Linux-Container verwendet werden (Standard). Wählen Sie bei Bedarf die Option "Zu Linux-Containern wechseln" im Menü "Docker-Desktops".
1. Erstellen Sie in Visual Studio eine .NET Core-Konsolenanwendung.<br>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. Installieren Sie die neueste Aspose.Words-Version von NuGet. SkiaSharp wird als Abhängigkeit von Aspose.Words installiert.<br>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. Da die Anwendung auf Linux ausgeführt wird, müssen die entsprechenden nativen Linux-Assets installiert werden. Beginnen Sie mit dem Debian-Basisimage und installieren Sie `SkiaSharp.NativeAssets.Linux`.
1. Wenn alle erforderlichen Abhängigkeiten hinzugefügt wurden, schreiben Sie ein einfaches Programm, das eine "Hello World!"-Datei erstellt. Dokument und speichert es in allen unterstützten Speicherformaten:<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

Beachten Sie, dass der Ordner "TestOut" als Ausgabeordner zum Speichern von Ausgabedokumenten angegeben ist. Wenn die Anwendung in Docker ausgeführt wird, wird ein Ordner auf dem Hostcomputer in diesen Ordner im Container eingebunden. Dadurch können Sie die von Aspose.Words generierte Ausgabe problemlos im Docker-Container anzeigen.

### Konfigurieren eines Dockerfile

Der nächste Schritt besteht darin, das Dockerfile zu erstellen und zu konfigurieren.

1. Erstellen Sie das Dockerfile und platzieren Sie es neben der Lösungsdatei Ihrer Anwendung. Behalten Sie diesen Dateinamen ohne Erweiterung bei (Standardeinstellung).
1. Geben Sie im Dockerfile Folgendes an:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

Das Obige ist ein einfaches Dockerfile, das die folgenden Anweisungen enthält:

– Das zu verwendende SDK-Image. Hier ist es das .NET Core SDK 2.2-Image. Docker lädt es herunter, wenn der Build ausgeführt wird. Die Version von SDK wird als Tag angegeben.
- Das Arbeitsverzeichnis, das in der nächsten Zeile angegeben wird.
– Der Befehl zur Installation von libfontconfig1 wird im Container ausgeführt. Dies wird von SkiaSharp verlangt.
– Der Befehl, alles in den Container zu kopieren, die Anwendung zu veröffentlichen und den Einstiegspunkt anzugeben.

### Erstellen und Ausführen der Anwendung in Docker

Jetzt kann die Anwendung in Docker erstellt und ausgeführt werden. Öffnen Sie Ihre bevorzugte Eingabeaufforderung, wechseln Sie in das Verzeichnis mit der Anwendung (Ordner, in dem die Lösungsdatei und die Dockerfile-Datei abgelegt sind) und führen Sie den folgenden Befehl aus:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

Bei der ersten Ausführung dieses Befehls kann es länger dauern, da Docker die erforderlichen Bilder herunterladen muss. Führen Sie nach Abschluss des vorherigen Befehls den folgenden Befehl aus:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Achten Sie auf das Mount-Argument, da, wie bereits erwähnt, ein Ordner auf dem Host-Computer in den Ordner des Containers eingebunden wird, um die Ergebnisse der Anwendungsausführung leicht sehen zu können. Bei Pfaden in Linux muss die Groß-/Kleinschreibung beachtet werden.

{{% /alert %}}

## Bilder, die Aspose.Words unterstützen

Aspose.Words ist sowohl für .NET Framework als auch .NET Core verfügbar. Die .NET Core-Bilder sind viel kleiner als .NET Framework-Bilder, was .NET Core zur besseren Wahl für die Erstellung von Microservices und die Verwendung in Containern macht. Es ist möglich, Apps in Linux-Docker-Containern bereitzustellen (für die plattformübergreifende Bereitstellung), die leichter sind als Windows-Container.

Offizielle Bilder für das .NET Core SDK werden bereitgestellt für:

- Debian 9 und 10
- Ubuntu 18.04 und 19.04
- Alpine 3.7 und 3.9
- Windows Nano Server

Um mit Grafiken arbeiten zu können, ist Aspose.Words für .NET Standard auf SkiaSharp angewiesen. Dies beschränkt die Anzahl der Bilder, auf denen Aspose.Words ausgeführt werden kann, auf Folgendes:

- Debian 9 und 10
- Ubuntu 18.04 und 19.04
- Alpine 3.9

SkiaSharp funktioniert nicht auf Windows Nano Server, da einige native Abhängigkeiten ([ Dies ist ein bekanntes Problem in SkiaSharp](https://github.com/mono/SkiaSharp/issues/676)) fehlen. Das Problem wird in der Version 1.68.1.1 von SkiaSharp behoben. Wenn Sie Aspose.Words in einem Windows-Container ausführen müssen, verwenden Sie das .NET Framework-Basisimage mit der .NET Framework-Version von Aspose.Words, die nicht von SkiaSharp abhängt.

SkiaSharp ist ein Wrapper um die native Skia-Bibliothek. Die folgenden Laufzeiten werden im SkiaSharp NuGet-Paket bereitgestellt:

- osx
- Tizen-Armel
- tizen-x86
- win10-arm
- win10-x64
- win10-x86
- win-x64
- win-x86

Um es in Linux auszuführen, sollten Sie zusätzliche NuGet-Pakete mit den entsprechenden nativen Assets verwenden, wie z. B. native Builds der Skia-Bibliothek, die unten aufgeführt sind:

- *SkiaSharp.NativeAssets.Linux* – bietet einen nativen Skia-Build für x64 Debian-basierte Linux-Distributionen.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* – das Paket soll in Linux-Distributionen verwendet werden, die nicht über die libfontconfig-Abhängigkeit verfügen. Getestet auf RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* – bietet einen nativen Skia-Build für x64 Alpine Linux 3.9.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* – bietet einen nativen Skia-Build für arm32- und arm64 Debian-basierte Linux-Distributionen.

## Mehr Beispiele

1. Im obigen Beispiel wurde die Anwendung in einem SDK-Image ausgeführt. SDK-Bilder sind schwerer als Laufzeitbilder. Das folgende Beispiel zeigt, wie die Docker-Datei geändert werden sollte, um das SDK-Image zum Erstellen der Anwendung und das Laufzeitimage zum Ausführen zu verwenden:<br>
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
1. Um die Anwendung in Ubuntu 18.04 auszuführen, bleibt der Dockerfile praktisch gleich (nur das Tag wird geändert):<br>
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
1. Um die Anwendung in Alpine Linux auszuführen, müssen die nativen SkiaSharp-Assets hinzugefügt und das folgende Dockerfile verwendet werden:<br>
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
1. Um die Anwendung in RHEL 7 auszuführen, ist es erforderlich, die nativen SkiaSharp-Assets hinzuzufügen und den folgenden Dockerfile zu verwenden:<br>
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

## Siehe auch

- [Installieren Sie Docker Desktop auf Windows](https://docs.docker.com/docker-for-windows/install/)
- [Installieren Sie Docker Desktop auf dem Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- [Wechseln Sie zu Linux-Containern](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers)-Option
- Installieren Sie [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- Zusätzliche Informationen zu [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- Verwenden Sie zusätzliche NuGet-Pakete: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.NoDependencies](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
