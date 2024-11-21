---
title: Как бегать Aspose.Words в Docker
second_title: Aspose.Words для .NET
articleTitle: Как бегать Aspose.Words в Docker
linktitle: Как бегать Aspose.Words в Docker
type: docs
description: "Интегрировать Aspose.Words Функционал в вашем приложении с использованием Docker Независимо от того, какие технологии находятся в вашем стеке разработки. Узнайте, как использовать Aspose. Слова в a Docker контейнер в C#."
weight: 120
url: /ru/net/how-to-run-aspose-words-in-docker/
timestamp: 2024-08-19-11-05-36
---

Микросервисы в сочетании с контейнеризацией позволяют легко комбинировать технологии. Docker позволяет легко интегрировать Aspose.Words Функциональность в вашем приложении, независимо от того, какие технологии находятся в вашем стеке разработки.

Если вы ориентируетесь на микросервисы или если основная технология в вашем стеке не работает. .NET, C++ или Java, Но вам нужно Aspose.Words функциональности или если вы уже используете Docker В вашем стеке, то вы можете быть заинтересованы в использовании Aspose.Words в Docker контейнер.

## Предпосылки

- Docker Они должны быть установлены в вашей системе. Информация о том, как установить Docker на Windows или Mac, обратитесь к ссылкам в разделе "См. также".

- Кроме того, обратите внимание, что Visual Studio 2017, .NET Core 2.2.2 SDK используется в примере, приведенном ниже.


## Приложение Hello World

В этом примере вы создаете простое консольное приложение Hello World, которое делает документ "Hello World!" и сохраняет его во всех поддерживаемых форматах сохранения. Затем приложение может быть построено и запущено в Docker.

### Создание консоли приложения

Чтобы создать программу Hello World, выполните следующие действия:
1. Однажды Docker установлен, убедитесь, что он использует Linux Контейнеры (по умолчанию). При необходимости выберите Switch для Linux Контейнерный вариант из Docker Меню рабочего стола.
1. в Visual Studio, создавать .NET Core Консольное приложение.<br/>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. Установите последнюю Aspose.Words Версия из NuGet. Ски Sharp будет устанавливаться как зависимость от Aspose.Words.<br/>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. Поскольку приложение будет работать на <p notrans="<p notrans=" Linux"=""></p>"> подходящий родной Linux Активы должны быть установлены. Начнем с того, что Debian Базовое изображение и установка `SkiaSharp.NativeAssets`.Linux.
1. При добавлении всех необходимых зависимостей напишите простую программу, которая создает документ "Hello World!" и сохраняет его во всех поддерживаемых форматах сохранения:<br/>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

Обратите внимание, что папка "TestOut" указана как выходная папка для сохранения выходных документов. При запуске приложения в <p notrans="<p notrans=" Docker"=""></p>"> папка на хост-машине будет установлена на эту папку в контейнере. Это позволит вам легко просматривать результат, генерируемый Aspose.Words в Docker контейнер.

### Конфигурирование a Dockerfile

Следующим шагом является создание и настройка Dockerfile.

1. создавать Dockerfile Поместите его рядом с файлом решения вашего приложения. Сохраните имя файла без расширения (по умолчанию).
1. В этом Dockerfile, указать:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

Вышеприведенное является простым Dockerfile, который содержит следующие инструкции:

- SDK Изображение для использования. Вот оно, это .NET Core SDK 2.2 Изображение. Docker Загрузите его, когда сборка будет запущена. Версия для SDK указывается как тег.
- Рабочий каталог, который указан в следующей строке.
- Команда установки libfontconfig1 выполняется в контейнере. Этого требует SkiaSharp.
- Команда скопировать все в контейнер, опубликовать заявку и указать точку входа.

### Создание и запуск приложения в Docker

Теперь приложение можно построить и запустить в Docker. Откройте любимую командную строку, измените каталог в папку с приложением (папку, где находится файл решения и папка). Dockerfile Они расположены) и выполняют следующую команду:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

В первый раз выполнение этой команды может занять больше времени, так как Docker Необходимо загрузить необходимые изображения. После завершения предыдущей команды выполните следующую команду:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Обратите внимание на аргумент крепления, потому что, как упоминалось ранее, папка на хост-машине вмонтирована в папку контейнера, чтобы легко увидеть результаты выполнения приложения. Пути внутрь Linux Это чувствительный случай.

{{% /alert %}}

## Поддерживающие изображения Aspose.Words

Aspose.Words Доступен для обоих .NET Framework и .NET Core. The .NET Core изображения намного меньше по размеру, чем .NET Framework Изображения, которые делают .NET Core лучший выбор для создания микросервисов и использования в контейнерах. Возможно развертывание приложений для Linux Docker контейнеры (для кроссплатформенного развертывания), которые легче Windows контейнеры.

Официальные изображения для .NET Core SDK Предусматривается:

- Debian 9 и 10
- Ubuntu 18.04 и 19.04
- Alpine 3.7 и 3.9
- Windows Нано Server

Для работы с графикой, Aspose.Words для .NET Standard Это зависит от SkiaSharp. Это ограничивает изображения Aspose.Words Можно перейти к следующему:

- Debian 9 и 10
- Ubuntu 18.04 и 19.04
- Alpine 3.9

SkiaSharp не работает Windows Нано Server из-за отсутствия некоторых зависимостей,[ Что известно в SkiaSharp](https://github.com/mono/SkiaSharp/issues/676). Вопрос будет решен в версии 1.68.1.1 SkiaSharp. Если вам нужно бежать Aspose.Words в Windows контейнер, использовать .NET Framework Базовое изображение с помощью .NET Framework версия Aspose.WordsЭто не зависит от SkiaSharp.

SkiaSharp - это обертка вокруг родной библиотеки Skia. В SkiaSharp предусмотрены следующие периоды выполнения NuGet упаковка:

- Оскс
- кольчуга
- tizen-x86
- win10-arm
- win10-x64
- win10-x86
- win-x64
- win-x86

Чтобы запустить его в Linux, Вы должны использовать дополнительные NuGet пакеты с соответствующими нативными активами, такими как нативные сборки библиотеки Skia, перечисленные ниже:

- *SkiaSharp.NativeAssets.Linux* - Обеспечивает родную сборку Skia для x64 Debian основанный на Linux распределения.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* Упаковка предназначена для использования в Linux дистрибутивы, не имеющие зависимости от libfontconfig. Проверено на RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* - Обеспечивает родную сборку Skia для x64 Alpine Linux 3.9.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* - Обеспечивает родную сборку Skia для arm32 и arm64 Debian основанный на Linux распределения.

## Больше примеров

1. В приведенном выше примере приложение было запущено в SDK Изображение. SDK Изображения тяжелее, чем изображения во время выполнения. Приведенный ниже пример показывает, как Docker файл должен быть изменен для использования SDK Изображение для создания приложения и изображение времени выполнения для его запуска:<br/>
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
1. Чтобы запустить приложение в Ubuntu 18.04, то есть Dockerfile остается практически неизменным (изменяется только тег):<br/>
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
1. Чтобы запустить приложение в Alpine Linux, необходимо добавить собственные активы SkiaSharp и использовать следующие Dockerfile:<br/>
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
1. Чтобы запустить приложение в RHEL 7, необходимо добавить собственные активы SkiaSharp и использовать следующее: Dockerfile:<br/>
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

## Смотрите также

- [Устанавливать Docker На рабочем столе Windows](https://docs.docker.com/docker-for-windows/install/)
- [Устанавливать Docker Desktop для Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- [Переключаться на Linux контейнеры](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers) вариант
- Установить [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- Дополнительная информация о [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- Используйте дополнительно NuGet пакеты: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.Независимость](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxАрмия](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
