---
title: Как запустить Aspose.Words в Docker
second_title: Aspose.Words для .NET
articleTitle: Как запустить Aspose.Words в Docker
linktitle: Как запустить Aspose.Words в Docker
type: docs
description: "Интегрируйте функциональность Aspose.Words в свое приложение, используя Docker, независимо от того, какая технология используется в вашем стеке разработки. Узнайте, как использовать Aspose .Words в контейнере Docker в формате C#."
weight: 120
url: /ru/net/how-to-run-aspose-words-in-docker/
---

Микросервисы в сочетании с контейнеризацией позволяют легко комбинировать технологии. Docker позволяет легко интегрировать функциональность Aspose.Words в ваше приложение независимо от того, какая технология используется в вашем стеке разработки.

Если вы ориентируетесь на микросервисы или если основной технологией в вашем стеке не является .NET, C++ или Java, но вам нужна функциональность Aspose.Words, или если вы уже используете Docker в своем стеке, вас может заинтересовать использование Aspose.Words в Docker. контейнер.

## Предварительные условия

- Docker должен быть установлен в вашей системе. Информацию о том, как установить Docker на Windows или Mac, можно найти по ссылкам в разделе "См. также".

- Также обратите внимание, что в примере, приведенном ниже, используется Visual Studio 2017, .NET Core 2.2 SDK.


## Приложение "Привет, мир"

В этом примере вы создаете простое консольное приложение Hello World, которое создает команду "Hello World!" документ и сохраняет его во всех поддерживаемых форматах сохранения. Затем приложение можно построить и запустить в формате Docker.

### Создание консольного приложения

Чтобы создать программу Hello World, выполните следующие действия:
1. После установки Docker убедитесь, что он использует контейнеры Linux (по умолчанию). При необходимости выберите параметр "Переключиться на контейнеры Linux" в меню "Рабочие столы Docker".
1. В Visual Studio создайте консольное приложение .NET Core.<br>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. Установите последнюю версию Aspose.Words из NuGet. SkiaSharp будет установлен как зависимость Aspose.Words.<br>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. Поскольку приложение будет работать на Linux, необходимо установить соответствующие собственные ресурсы Linux. Начните с базового образа Debian и установите `SkiaSharp.NativeAssets`.Linux.
1. Когда все необходимые зависимости будут добавлены, напишите простую программу, создающую сообщение "Hello World!" документ и сохраняет его во всех поддерживаемых форматах сохранения:<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

Обратите внимание, что папка "TestOut" указана как выходная папка для сохранения выходных документов. При запуске приложения в Docker папка на хост-компьютере будет подключена к этой папке в контейнере. Это позволит вам легко просматривать выходные данные, созданные в формате Aspose.Words, в контейнере Docker.

### Настройка Dockerfile

Следующим шагом является создание и настройка Dockerfile.

1. Создайте Dockerfile и поместите его рядом с файлом решения вашего приложения. Сохраните это имя файла без расширения (по умолчанию).
1. В Dockerfile укажите:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

Выше приведен простой Dockerfile-код, который содержит следующие инструкции:

- SDK-изображение, которое будет использоваться. Вот изображение .NET Core SDK 2.2. Docker загрузит его при запуске сборки. Версия SDK указывается в виде тега.
- Рабочий каталог, указанный в следующей строке.
— В контейнере запускается команда установки libfontconfig1. Это требуется для SkiaSharp.
— Команда скопировать все в контейнер, опубликовать приложение и указать точку входа.

### Сборка и запуск приложения в Docker

Теперь приложение можно построить и запустить в формате Docker. Откройте любимую командную строку, перейдите в папку с приложением (папку, в которой находятся файл решения и Dockerfile) и выполните следующую команду:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

При первом выполнении этой команды это может занять больше времени, поскольку Docker необходимо загрузить необходимые изображения. После завершения предыдущей команды выполните следующую команду:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Обратите внимание на аргумент mount, поскольку, как упоминалось ранее, папка на хост-машине монтируется в папку контейнера, чтобы можно было легко увидеть результаты выполнения приложения. Пути в Linux чувствительны к регистру.

{{% /alert %}}

## Изображения, поддерживающие Aspose.Words

Aspose.Words доступен как для .NET Framework, так и для .NET Core. Изображения .NET Core намного меньше по размеру, чем изображения .NET Framework, что делает .NET Core лучшим выбором для создания микросервисов и использования в контейнерах. Приложения можно развертывать в контейнерах Linux Docker (для кросс-платформенного развертывания), которые легче контейнеров Windows.

Официальные изображения для .NET Core SDK предоставляются для:

- Debian 9 и 10
- Ubuntu 18.04 и 19.04
- Alpine 3.7 и 3.9
- Windows-нано-сервер

Для работы с графикой Aspose.Words для .NET Standard зависит от SkiaSharp. Это ограничивает возможности запуска изображений в Aspose.Words следующим образом:

- Debian 9 и 10
- Ubuntu 18.04 и 19.04
- Alpine 3.9

SkiaSharp не работает на Windows Nano Server из-за отсутствия некоторых встроенных зависимостей, [ это известная проблема в SkiaSharp](https://github.com/mono/SkiaSharp/issues/676). Проблема будет решена в версии SkiaSharp 1.68.1.1. Если вам нужно запустить Aspose.Words в контейнере Windows, используйте базовое изображение .NET Framework с версией Aspose.Words .NET Framework, которая не зависит от SkiaSharp.

SkiaSharp — это оболочка собственной библиотеки Skia. В NuGet-пакете SkiaSharp предусмотрены следующие среды выполнения:

- osx
- тизен-армель
- tizen-x86
- win10-arm
- Win10-x64
- Win10-x86
- win-x64
- win-x86

Чтобы запустить его в Linux, вам следует использовать дополнительные пакеты NuGet с соответствующими собственными ресурсами, например собственные сборки библиотеки Skia, перечисленные ниже:

- *SkiaSharp.NativeAssets.Linux* – предоставляет встроенную сборку Skia для дистрибутивов Linux на основе x64 Debian.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* – пакет предназначен для использования в дистрибутивах Linux, не имеющих зависимости от libfontconfig. Протестировано на RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* – предоставляет встроенную сборку Skia для x64 Alpine Linux 3.9.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* – предоставляет встроенную сборку Skia для дистрибутивов Linux на основе Arm32 и Arm64 Debian.

## Больше примеров

1. В приведенном выше примере приложение запускалось в образе SDK. SDK-изображения тяжелее, чем изображения времени выполнения. В приведенном ниже примере показано, как следует изменить файл Docker, чтобы использовать образ SDK для создания приложения и образ времени выполнения для его запуска:<br>
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
1. Для запуска приложения в Ubuntu 18.04 формат Dockerfile остается практически прежним (меняется только тег):<br>
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
1. Чтобы запустить приложение в формате Alpine Linux, необходимо добавить собственные ресурсы SkiaSharp и использовать следующий Dockerfile:<br>
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
1. Чтобы запустить приложение в RHEL 7, необходимо добавить собственные ресурсы SkiaSharp и использовать следующий Dockerfile:<br>
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

- [Установите рабочий стол Docker на Windows](https://docs.docker.com/docker-for-windows/install/)
- [Установите Docker Desktop на Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- опция [Переключиться на контейнеры Linux](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers)
- Установить [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- Дополнительная информация по [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- Используйте дополнительные пакеты NuGet: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.NoDependencys](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (х64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
