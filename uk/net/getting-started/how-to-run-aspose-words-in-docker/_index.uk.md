---
title: Як запустити Aspose.Words в Docker
second_title: Aspose.Words для .NET
articleTitle: Як запустити Aspose.Words в Docker
linktitle: Як запустити Aspose.Words в Docker
type: docs
description: "Інтеграція Aspose.Words функціональність в додатку Docker незалежно від того, яка технологія знаходиться у вашому пристрої. Дізнайтеся, як використовувати Aspose. Слова в Docker контейнер в C#й"
weight: 120
url: /uk/net/how-to-run-aspose-words-in-docker/
---

Мікросервіси, в поєднанні з контейнеризації дозволяють легко поєднувати технології. Docker дозволяє легко інтегрувати Aspose.Words функціональність в додатку, незалежно від того, яка технологія знаходиться у вашому пристрої.

Якщо ви орієнтуєтеся на мікросервіси, або якщо основні технології у вашому стеці не є .NET, C++ або Java, але потрібно Aspose.Words функціональність, або якщо ви вже використовуєте Docker у вашій стекі, потім ви можете зацікавити використання Aspose.Words в Docker контейнер.

## Вимоги

- до Docker необхідно встановити на вашу систему. Інформація про те, як встановити Docker на Windows або Mac, див. на посилання в розділі "Діти також".

- до Також зазначимо, що Visual Studio 2017 р. .NET Core 2.2 км SDK використовується в прикладі, що надається нижче.


## Привіт світ додаток

У цьому прикладі ви створюєте простий додаток для консолі Hello World, який робить документ "Hello World!" і зберігає його у всіх підтриманих форматах збереження. Додаток може бути вбудованим і працювати в Dockerй

### Створення програми консолі

Щоб створити програму Hello World, слідуйте за кроками нижче:
1,1 км Зареєструватися Docker встановлюється, переконайтеся, що він використовує Linux Контейнери (за замовчуванням). При необхідності виберіть перемикач Linux варіанти контейнерів від Docker Меню робочих місць.
1,1 км У Visual Studio, створити .NET Core Додаток консолі.<br/>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1,1 км Встановити останні Aspose.Words версія з NuGetй Про нас Заточка буде встановлена в залежності від Aspose.Wordsй<br/>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1,1 км Оскільки додаток буде працювати на <span notrans="<span notrans=" Linux"=""></span>, > відповідні рідні Linux повинні бути встановлені активи. Почати з Debian базовий образ і установка `SkiaSharp.NativeAssets`йLinuxй
1,1 км Коли всі необхідні залежності додаються, напишіть просту програму, яка створює документ "Hello World!" і зберігає її у всіх підтриманих форматах збереження:<br/>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

Зауважте, що папка "TestOut" вказана як вихідна папка для збереження вихідних документів. При запуску програми в <span notrans="<span notrans=" Docker"=""></span>, > папка на хост машина буде встановлена до цієї папки в контейнері. Це дозволить вам легко переглядати вихід, створений за допомогою Aspose.Words в Docker контейнер.

### Налаштування Dockerfile

Наступним кроком є створення та налаштування Dockerfileй

1,1 км Створити Dockerfile і розмістити його поруч із файлом розчину вашої програми. Зберігати ім'я файлу без розширення (за замовчуванням).
1,1 км У Dockerfile, вказати:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

Прості Dockerfile, які містять такі інструкції:

- У SDK зображення для використання. Ось це .NET Core SDK 2.2 зображень. Docker завантажить його, коли будівля працює. Версія SDK вказується як тег.
- до Робочий каталог, який вказаний в наступному рядку.
- до Команда для установки libfontconfig1 працює в контейнері. Що потрібно на SkiaSharp.
- до Команда копіювати всі контейнери, опублікувати заявку і вказати точку входу.

### Будівництво та запуск програми Docker

Тепер додаток може бути вбудованим і працювати в Dockerй Відкрийте свій улюблений командний запит, змініть каталог до папки за допомогою програми (папер, де файл розчину та файл рішення) Dockerfile розміщуються) і запустіть наступну команду:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

Перший раз ця команда виконана вона може зайняти більше, так як Docker необхідно завантажити потрібні зображення. Після завершення попередньої команди запустіть наступну команду:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Зверніть увагу на аргумент кріплення, оскільки, як зазначено раніше, папка на апараті господаря встановлюється в папку контейнера, щоб легко побачити результати виконання заявки. Шляхи в Linux є чутливими.

{{% /alert %}}

## Підтримка зображень Aspose.Words

Aspose.Words Для обох .NET Framework і .NET Coreй Про нас .NET Core зображення набагато менші за розмірами .NET Framework зображення, що робить зображення .NET Core Кращий вибір для створення мікросервісів і для використання в контейнерах. Доступно для розгортання додатків Linux Docker контейнери (для перехресного розгортання), які світліші, ніж Windows контейнери.

Офіційні зображення для .NET Core SDK Для:

- до Debian 9 і 10
- до Ubuntu 18.04 та 19.04
- до Alpine 3.7 і 3.9
- до Windows Навігація Server

Для роботи з графікою, Aspose.Words для .NET Standard від SkiaSharp Цей ліміт зображення Aspose.Words може виконуватися на наступній:

- до Debian 9 і 10
- до Ubuntu 18.04 та 19.04
- Alpine 3.9

Схарп не працює Windows Навігація Server через брак деяких рідних залежностей,[ Про компанію SkiaSharp](https://github.com/mono/SkiaSharp/issues/676)й Питання буде вирішено в 1.68.1.1 версія SkiaSharp. Якщо потрібно запустити Aspose.Words в Windows контейнер, використовувати .NET Framework базове зображення з .NET Framework версія Aspose.Words, яка не залежить від SkiaSharp.

РусскийУкраїнськаБеларускаяOʻzbek tiliEnglish На SkiaSharp передбачені наступні робочі години NuGet пакет:

- оскс
- тизен-арм
- тизен-кс86
- win10-arm
- виграш10-х64
- виграш10-х86
- win-x64
- win-x86

Для запуску Linux, Ви повинні використовувати додаткові NuGet Пакети з відповідними рідними активами, такі як рідні збірки бібліотеки Skia, перераховані нижче:

- до *SkiaSharp.NativeAssets.Linux* – забезпечує надійну коляску для x64 Debian на основі Linux розподіли.
- до *SkiaSharp.NativeAssets.Linux.NoDependencies* – пакет призначений для використання в Linux розподіли, які не мають залежностей libfontconfig. Тестування RHEL 7 (х64).
- до *Goelze.SkiaSharp.NativeAssets.AlpineLinux* – забезпечує надійну коляску для x64 Alpine Linux 3.9.
- до *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* – забезпечує надійне будівництво Skia для рук32 та рук64 Debian на основі Linux розподіли.

## Більше прикладів

1,1 км У наведеному вище прикладі програма була запущена в SDK зображення. SDK зображення важке, ніж часові зображення. Приклад нижче показує, як показується Docker файл повинен бути модифікований для використання SDK зображення для створення програми, а зображення робочого часу для його запуску:<br/>
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
1,1 км Для запуску програми в Ubuntu 18.04, р. Dockerfile залишається практично таким же (тільки тег змінився):<br/>
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
1,1 км Для запуску програми в Alpine Linux, необхідно додати рідні активи SkiaSharp і використовувати наступні Dockerfile:<br/>
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
1,1 км Для запуску програми в RHEL 7 потрібно додавати рідні активи SkiaSharp і використовувати наступні Dockerfile:<br/>
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

## Дивитися ще

- [Увійти Docker Настільний Windows](https://docs.docker.com/docker-for-windows/install/)
- [Увійти Docker Робочий стіл на Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- до [Перемикач Linux контейнери](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers) опція
- Встановити [НавігаціяLinux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- Додаткова інформація [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- Використовуйте додаткові NuGet Пакети: [НавігаціяLinux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [НавігаціяLinux.NoDependencies](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxРушники](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (х64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
