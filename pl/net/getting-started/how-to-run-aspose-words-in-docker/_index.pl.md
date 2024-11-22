---
title: Jak uruchomić Aspose.Words w Docker
second_title: Aspose.Words dla .NET
articleTitle: Jak uruchomić Aspose.Words w Docker
linktitle: Jak uruchomić Aspose.Words w Docker
type: docs
description: "Zintegruj funkcjonalność Aspose.Words ze swoją aplikacją za pomocą Docker, niezależnie od tego, jaka technologia znajduje się w stosie programistycznym. Dowiedz się, jak używać Aspose .Words w kontenerze Docker w formacie C#."
weight: 120
url: /pl/net/how-to-run-aspose-words-in-docker/
timestamp: 2024-08-19-11-05-36
---

Mikrousługi w połączeniu z konteneryzacją umożliwiają łatwe łączenie technologii. Docker pozwala łatwo zintegrować funkcjonalność Aspose.Words z aplikacją, niezależnie od tego, jaka technologia znajduje się w stosie programistycznym.

Jeśli celujesz w mikrousługi lub jeśli główną technologią w Twoim stosie nie jest .NET, C++ ani Java, ale potrzebujesz funkcjonalności Aspose.Words, lub jeśli już używasz Docker w swoim stosie, możesz być zainteresowany wykorzystaniem Aspose.Words w Docker pojemnik.

## Warunki wstępne

- Docker musi być zainstalowany w twoim systemie. Aby uzyskać informacje na temat instalacji Docker na Windows lub Mac, skorzystaj z łączy w sekcji "Zobacz także".

- Należy również pamiętać, że w przykładzie podanym poniżej użyto formatu Visual Studio 2017, .NET Core 2.2 SDK.


## Aplikacja Hello World

W tym przykładzie tworzysz prostą aplikację konsolową Hello World, która tworzy komunikat "Hello World!" dokument i zapisuje go we wszystkich obsługiwanych formatach zapisu. Aplikację można następnie zbudować i uruchomić w formacie Docker.

### Tworzenie aplikacji konsolowej

Aby utworzyć program Hello World, wykonaj poniższe czynności:
1. Po zainstalowaniu Docker upewnij się, że korzysta z kontenerów Linux (domyślnie). W razie potrzeby wybierz opcję Przełącz na kontenery Linux z menu Komputery stacjonarne Docker.
1. W Visual Studio utwórz aplikację konsolową .NET Core.<br>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. Zainstaluj najnowszą wersję Aspose.Words z NuGet. SkiaSharp zostanie zainstalowany jako zależność Aspose.Words.<br>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. Ponieważ aplikacja będzie działać w formacie Linux, należy zainstalować odpowiednie natywne zasoby Linux. Zacznij od obrazu podstawowego Debian i zainstaluj plik `SkiaSharp.NativeAssets.Linux`.
1. Po dodaniu wszystkich wymaganych zależności napisz prosty program, który utworzy witrynę "Hello World!" dokument i zapisuje go we wszystkich obsługiwanych formatach zapisu:<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

Należy pamiętać, że folder "TestOut" jest określony jako folder wyjściowy do zapisywania dokumentów wyjściowych. Podczas uruchamiania aplikacji w Docker, folder na komputerze hosta zostanie zamontowany do tego folderu w kontenerze. Umożliwi to łatwe przeglądanie danych wyjściowych wygenerowanych przez Aspose.Words w kontenerze Docker.

### Konfiguracja Dockerfile

Następnym krokiem jest utworzenie i skonfigurowanie pliku Dockerfile.

1. Utwórz plik Dockerfile i umieść go obok pliku rozwiązania swojej aplikacji. Zachowaj tę nazwę pliku bez rozszerzenia (domyślnie).
1. W Dockerfile określ:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

Powyższy jest prostym plikiem Dockerfile, który zawiera następujące instrukcje:

- Obraz SDK, który ma zostać użyty. Oto obraz .NET Core SDK 2.2. Docker pobierze go po uruchomieniu kompilacji. Wersja SDK jest określona jako tag.
- Katalog roboczy określony w następnym wierszu.
- Polecenie instalacji libfontconfig1 jest uruchamiane w kontenerze. Jest to wymagane przez usługę SkiaSharp.
- Polecenie skopiowania wszystkiego do kontenera, opublikowania aplikacji i określenia punktu wejścia.

### Budowanie i uruchamianie aplikacji w Docker

Teraz aplikację można zbudować i uruchomić w Docker. Otwórz swój ulubiony wiersz poleceń, zmień katalog na folder z aplikacją (folder, w którym znajduje się plik rozwiązania i Dockerfile) i uruchom następującą komendę:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

Wykonanie tego polecenia po raz pierwszy może zająć więcej czasu, ponieważ Docker musi pobrać wymagane obrazy. Po zakończeniu poprzedniego polecenia uruchom następujące polecenie:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Zwróć uwagę na argument montowania, ponieważ jak wspomniano wcześniej, folder na komputerze hosta jest montowany w folderze kontenera, aby łatwo zobaczyć wyniki wykonania aplikacji. W ścieżkach Linux rozróżniana jest wielkość liter.

{{% /alert %}}

## Obrazy obsługujące Aspose.Words

Aspose.Words jest dostępny zarówno w formacie .NET Framework, jak i .NET Core. Obrazy .NET Core mają znacznie mniejszy rozmiar niż obrazy .NET Framework, co sprawia, że .NET Core jest lepszym wyborem do tworzenia mikrousług i do stosowania w kontenerach. Możliwe jest wdrażanie aplikacji w kontenerach Linux Docker (w celu wdrożenia międzyplatformowego), które są lżejsze niż kontenery Windows.

Oficjalne obrazy .NET Core SDK są dostępne dla:

- Debian 9 i 10
- Ubuntu 18.04 i 19.04
- Alpine 3.7 i 3.9
- Windows Nano Server

Aby pracować z grafiką, Aspose.Words dla .NET Standard zależy od SkiaSharp. Ogranicza to obrazy, na których można uruchomić Aspose.Words, do następujących:

- Debian 9 i 10
- Ubuntu 18.04 i 19.04
- Alpine 3.9

SkiaSharp nie działa na Windows Nano Server ze względu na brak niektórych natywnych zależności, [ co jest znanym problemem w Skiasharp](https://github.com/mono/SkiaSharp/issues/676). Problem zostanie rozwiązany w wersji 1.68.1.1 Skiasharp. Jeśli chcesz uruchomić Aspose.Words w kontenerze Windows, użyj obrazu podstawowego .NET Framework z wersją Aspose.Words .NET Framework, która nie jest zależna od SkiaSharp.

SkiaSharp to opakowanie natywnej biblioteki Skia. W pakiecie SkiaSharp NuGet dostępne są następujące środowiska wykonawcze:

- osx
- tizen-armel
- tizen-x86
- win10-arm
- win10-x64
- win10-x86
- win-x64
- win-x86

Aby uruchomić go w Linux, powinieneś użyć dodatkowych pakietów NuGet z odpowiednimi zasobami natywnymi, takimi jak natywne kompilacje biblioteki Skia, wymienione poniżej:

- *SkiaSharp.NativeAssets.Linux* – zapewnia natywną kompilację Skia dla dystrybucji Linux opartych na x64 Debian.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* – pakiet przeznaczony do wykorzystania w dystrybucjach Linux, które nie posiadają zależności libfontconfig. Testowane na formacie RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* – zapewnia natywną wersję Skia dla x64 Alpine Linux 3.9.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* – zapewnia natywną kompilację Skia dla dystrybucji Linux opartych na arm32 i arm64 Debian.

## Więcej przykładów

1. W powyższym przykładzie aplikacja została uruchomiona w obrazie SDK. Obrazy SDK są cięższe niż obrazy środowiska wykonawczego. Poniższy przykład pokazuje, jak należy zmodyfikować plik Docker, aby użyć obrazu SDK do zbudowania aplikacji i obrazu wykonawczego do jej uruchomienia:<br>
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
1. Aby uruchomić aplikację w Ubuntu 18.04, Dockerfile pozostaje praktycznie taki sam (zmieniony jest jedynie tag):<br>
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
1. Aby uruchomić aplikację w formacie Alpine Linux należy dodać natywne zasoby SkiaSharp i użyć następującego formatu Dockerfile:<br>
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
1. Aby uruchomić aplikację w RHEL 7 należy dodać natywne zasoby SkiaSharp i użyć następującego Dockerfile:<br>
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

## Zobacz też

- [Zainstaluj Docker Desktop na Windows](https://docs.docker.com/docker-for-windows/install/)
- [Zainstaluj Docker Desktop na Macu](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- Opcja [Przejdź na kontenery Linux](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers)
- Zainstaluj [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- Dodatkowe informacje na temat [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- Użyj dodatkowych pakietów NuGet: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.NoDependency](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
