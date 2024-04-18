---
title: Как да бягаме Aspose.Words в Docker
second_title: Aspose.Words вместо .NET
articleTitle: Как да бягаме Aspose.Words в Docker
linktitle: Как да бягаме Aspose.Words в Docker
type: docs
description: "Интеграция Aspose.Words функционалност във Вашето приложение, използвайки Docker без значение каква технология има в купчината за развитие. Научете как да използвате Aspose. Думи в Docker в C#."
weight: 120
url: /bg/net/how-to-run-aspose-words-in-docker/
---

Микроуслугите, заедно с контейнеризацията, позволяват лесно да се комбинират технологии. Docker ви позволява лесно да се интегрирате Aspose.Words функционалност във вашето приложение, независимо от това какво е технологията във вашия разработъчен стек.

В случай, че сте насочени към микроуслуги, или ако основната технология във вашия стек не е .NET, C++ или Java, но ти трябва Aspose.Words функционалност или ако вече използвате Docker в стека си, тогава може да се интересуват от използването Aspose.Words в Docker контейнер.

## Предпоставки

- Docker трябва да бъде инсталиран на вашата система. За информация как да инсталирате Docker върху Windows или Mac, се отнасят до линковете в раздел "Вижте също."

- Също така, имайте предвид, че Visual Studio 2017, .NET Core 2, 2 SDK е използван в примера по- долу.


## Здравейте World Application

В този пример, можете да създадете просто Hello World конзола приложение, което прави Allo World! да се запази във всички поддържани формати за запис. След това приложението може да бъде изградено и стартирано в Docker.

### Създаване на приложение за конзола

За да създадете програма Hello World, следвайте стъпките по-долу:
1. Веднъж Docker е инсталиран, уверете се, че той използва Linux Контейнери (по подразбиране). Ако е необходимо, изберете превключвателя Linux опция за контейнери от Docker Меню на работния плот.
1. В Visual Studio, създаване на .NET Core конзолно приложение.<br/>
![net-console-application](/lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. Инсталиране на последната Aspose.Words версия от NuGet. Скиа Sharp ще бъде инсталиран като зависимост от Aspose.Words.<br/>
![skiasharp-dependency](/lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. Тъй като заявлението ще бъде изпълнено <span notrans="<span notrans=" Linux"=""></span>,"> подходящите местни Linux активите трябва да бъдат инсталирани. Започнете с Debian основен образ и монтаж `SkiaSharp.NativeAssets`.Linux.
1. Когато се добавят всички необходими зависимости, напишете една проста програма, която създава голо World! това се записва във всички поддържани формати:<br/>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

Имайте предвид, че по-долу е посочено като папка за изход за запазване на изходни документи. При изпълнение на заявлението в <span notrans="<span notrans=" Docker"=""></span>,"> папка на хост машината ще бъде монтирана на тази папка в контейнера. Това ще ви позволи лесно да видите изхода, генериран от Aspose.Words в Docker контейнер.

### Настройване на a Dockerfile

Следващата стъпка е да се създаде и конфигурира Dockerfile.

1. Създаване на Dockerfile и го поставете до файла с решение на вашето заявление. Запазете това име на файла без разширение (по подразбиране).
1. В Dockerfile, посочва:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

Горното е просто. Dockerfile, която съдържа следните инструкции:

- На SDK да се използва изображение. Ето го. .NET Core SDK 2.2 изображение. Docker ще го изтеглите, когато сградата се стартира. Версия на SDK е посочено като таг.
- Работната директория, която е посочена в следващия ред.
- Командата за инсталиране на libfontconfig1 се изпълнява в контейнера. Това се изисква от SkiaSharp.
- Командата да копирате всичко в контейнера, да публикувате заявлението и да посочите входната точка.

### Изграждане и управление на приложението в Docker

Сега приложението може да бъде построено и работи в Docker. Отваряне на любимата си команда, промяна на директорията в папката с приложението (сгъване, където файлът с решение и Dockerfile са поставени) и изпълняват следната команда:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

За първи път тази команда се изпълнява може да отнеме повече време, тъй като Docker трябва да изтеглите необходимите изображения. След като предишната команда е завършена, стартирайте следната команда:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Обърнете внимание на аргумента за монтиране, защото, както беше споменато по-рано, папка на хост машината се монтира в кухненските кухненски бокс, за да видите лесно резултатите от изпълнението на приложението. Пътища в Linux са чувствителни към случая.

{{% /alert %}}

## Поддръжка на изображения Aspose.Words

Aspose.Words е на разположение и за двете .NET Framework както и .NET Core. На .NET Core изображенията са много по-малки по размер от .NET Framework изображения, което прави .NET Core по-добрият избор за създаване на микроуслуги и за използване в контейнери. Възможно е да се използват приложения за Linux Docker контейнери (за разполагане на кръстосани платформи), които са по-леки от Windows контейнери.

Официални изображения за .NET Core SDK са предвидени:

- Debian 9 и 10
- Ubuntu 18.04 и 19.04
- Alpine 3, 7 и 3, 9
- Windows Нано Server

За да работи с графики, Aspose.Words вместо .NET Standard зависи от SkiaSharp. Това ограничава изображенията Aspose.Words може да се премине към следното:

- Debian 9 и 10
- Ubuntu 18.04 и 19.04
- Alpine 3.9

SkiaSharp не работи върху Windows Нано Server поради липса на местни зависимости,[ което е известен проблем в SkiaSharp](https://github.com/mono/SkiaSharp/issues/676). Въпросът ще бъде решен в версия 1.68.1.1 на SkiaSharp. Ако искаш да бягаш Aspose.Words в Windows контейнер, използвайте .NET Framework базово изображение с .NET Framework версия на Aspose.Words, което не зависи от SkiaSharp.

SkiaSharp е опаковка около местната библиотека на Ския. В SkiaSharp са предвидени следните времеви интервали NuGet опаковка:

- osx
- тизен-армел
- tizen-x86
- win10-arm
- win10-x64
- win10-x86
- win-x64
- win-x86

За да го пусна. Linux, трябва да използвате допълнително NuGet пакети със съответните местни активи, като например местни сгради на библиотеката на Ския, изброени по-долу:

- *SkiaSharp.NativeAssets.Linux* год. Debian основа Linux разпределения.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* Пакетът е предназначен да се използва в Linux дистрибуции, които нямат зависимостта libfontconfig. Тествани върху RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* год. Alpine Linux 3.9.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* год. Debian основа Linux разпределения.

## Повече примери

1. В гореспоменатия пример, заявлението е направено в SDK образ. SDK изображенията са по-тежки от образите за бягане. Примерът по- долу показва как Docker файлът трябва да бъде променен, за да се използва SDK изображение, за да се изгради приложението, и на runtime изображение, за да го стартирате:<br/>
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
1. Изпълнение на заявлението в Ubuntu 18. 04. Dockerfile остава практически същото (само етикетът се променя):<br/>
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
1. Изпълнение на заявлението в Alpine Linux, от него се изисква да добави родния активи на SkiaSharp и да използва следните Dockerfile:<br/>
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
1. Изпълнение на заявлението в RHEL 7, необходимо е да се добавят местните активи на SkiaSharp и да се използват следните Dockerfile:<br/>
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

## Вижте също

- [Инсталиране Docker Настолен Windows](https://docs.docker.com/docker-for-windows/install/)
- [Инсталиране Docker Настолен компютър на Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- [Превключване към Linux контейнери](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers) опция
- Инсталиране [SkiaSharp. Native Assets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- Допълнителна информация за [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- Използвайте допълнително NuGet опаковки: [SkiaSharp. Native Assets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp. Native Assets.Linux. NoDepencies](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Гоелзе. СкиаШарп.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin. SkiaSharp. Native Assets.LinuxРъка](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
