---
title: نحوه اجرای Aspose.Words در Docker
second_title: Aspose.Words برای .NET
articleTitle: نحوه اجرای Aspose.Words در Docker
linktitle: نحوه اجرای Aspose.Words در Docker
type: docs
description: "بدون در نظر گرفتن اینکه چه فناوری در پشته توسعه شما وجود دارد، عملکرد Aspose.Words را با استفاده از Docker در برنامه خود ادغام کنید. نحوه استفاده از Aspose.Words را در یک ظرف Docker در C# بیاموزید."
weight: 120
url: /fa/net/how-to-run-aspose-words-in-docker/
---

میکروسرویس‌ها در ارتباط با کانتینری‌سازی، ترکیب آسان فناوری‌ها را ممکن می‌سازد. Docker به شما امکان می دهد تا به راحتی عملکرد Aspose.Words را بدون توجه به اینکه چه فناوری در پشته توسعه شما وجود دارد، در برنامه خود ادغام کنید.

اگر میکروسرویس‌ها را هدف قرار می‌دهید، یا اگر فناوری اصلی پشته شما .NET، C++ یا Java نیست، اما به عملکرد Aspose.Words نیاز دارید، یا اگر قبلاً از Docker در پشته خود استفاده می‌کنید، ممکن است علاقه مند به استفاده از Aspose.Words در یک Docker باشید. ظرف

## پیش نیازها

- Docker باید روی سیستم شما نصب باشد. برای اطلاعات در مورد نحوه نصب Docker در Windows یا Mac، به پیوندهای موجود در بخش "همچنین ببینید" مراجعه کنید.

- همچنین توجه داشته باشید که در مثال زیر از Visual Studio 2017, .NET Core 2.2 SDK استفاده شده است.


## سلام اپلیکیشن جهانی

در این مثال، شما یک برنامه کنسول ساده Hello World ایجاد می کنید که یک "Hello World!" سند و آن را در تمام فرمت های ذخیره پشتیبانی شده ذخیره می کند. سپس می توان برنامه را در Docker ساخته و اجرا کرد.

### ایجاد اپلیکیشن کنسول

برای ایجاد برنامه Hello World مراحل زیر را دنبال کنید:
1. پس از نصب Docker، مطمئن شوید که از ظروف Linux (پیش‌فرض) استفاده می‌کند. در صورت لزوم، گزینه Switch to Linux containers را از منوی Docker Desktops انتخاب کنید.
1. در Visual Studio، یک برنامه کنسول .NET Core ایجاد کنید.<br>
![net-console-application](https:/https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. آخرین نسخه Aspose.Words را از NuGet نصب کنید. SkiaSharp به عنوان یک وابستگی Aspose.Words نصب خواهد شد.<br>
![skiasharp-dependency](https:/https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. از آنجایی که برنامه روی Linux اجرا می شود، دارایی های Linux مناسب باید نصب شوند. با تصویر پایه Debian شروع کنید و `SkiaSharp.NativeAssets`.Linux را نصب کنید.
1. وقتی همه وابستگی های مورد نیاز اضافه شدند، یک برنامه ساده بنویسید که یک "Hello World!" ایجاد کند. سند و آن را در تمام فرمت های ذخیره پشتیبانی شده ذخیره می کند:<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

توجه داشته باشید که پوشه "TestOut" به عنوان یک پوشه خروجی برای ذخیره اسناد خروجی مشخص شده است. هنگام اجرای برنامه در Docker، یک پوشه در دستگاه میزبان به این پوشه در ظرف نصب می شود. این به شما امکان می دهد تا خروجی تولید شده توسط Aspose.Words را در ظرف Docker به راحتی مشاهده کنید.

### پیکربندی یک Dockerfile

مرحله بعدی ایجاد و پیکربندی Dockerfile است.

1. Dockerfile را ایجاد کنید و آن را در کنار فایل راه حل برنامه خود قرار دهید. نام این فایل را بدون پسوند (پیش‌فرض) نگه دارید.
1. در Dockerfile، مشخص کنید:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

مورد فوق یک Dockerfile ساده است که حاوی دستورالعمل های زیر است:

- تصویر SDK مورد استفاده. در اینجا این تصویر .NET Core SDK 2.2 است. Docker پس از اجرای بیلد آن را دانلود می کند. نسخه SDK به عنوان یک برچسب مشخص شده است.
- دایرکتوری کاری که در خط بعدی مشخص شده است.
- دستور نصب libfontconfig1 در کانتینر اجرا می شود. این مورد مورد نیاز SkiaSharp است.
- دستور کپی کردن همه چیز در کانتینر، انتشار برنامه و مشخص کردن نقطه ورود.

### ساخت و اجرای برنامه در Docker

اکنون برنامه را می توان در Docker ساخته و اجرا کرد. خط فرمان مورد علاقه خود را باز کنید، دایرکتوری را به پوشه برنامه تغییر دهید (پوشه ای که فایل حل و Dockerfile در آن قرار دارد) و دستور زیر را اجرا کنید:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

اولین باری که این دستور اجرا می شود ممکن است بیشتر طول بکشد، زیرا Docker باید تصاویر مورد نیاز را دانلود کند. پس از تکمیل دستور قبلی، دستور زیر را اجرا کنید:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

به آرگومان mount توجه کنید، زیرا همانطور که قبلا ذکر شد، یک پوشه در دستگاه میزبان در پوشه کانتینر نصب شده است تا نتایج اجرای برنامه را به راحتی ببینید. مسیرها در Linux به حروف کوچک و بزرگ حساس هستند.

{{% /alert %}}

## تصاویر از Aspose.Words پشتیبانی می کنند

Aspose.Words برای .NET Framework و .NET Core در دسترس است. تصاویر .NET Core از نظر اندازه بسیار کوچکتر از تصاویر .NET Framework هستند، که .NET Core را برای ایجاد میکروسرویس ها و استفاده در کانتینرها انتخاب بهتری می کند. امکان استقرار برنامه‌ها در کانتینرهای Linux Docker (برای استقرار بین پلتفرمی) وجود دارد که سبک‌تر از کانتینرهای Windows هستند.

تصاویر رسمی برای .NET Core SDK برای موارد زیر ارائه شده است:

- Debian 9 و 10
- Ubuntu 18.04 و 19.04
- Alpine 3.7 و 3.9
- Windows Nano Server

برای کار با گرافیک، Aspose.Words برای .NET Standard به SkiaSharp بستگی دارد. این تصاویری را که می‌توان روی Aspose.Words اجرا کرد به موارد زیر محدود می‌کند:

- Debian 9 و 10
- Ubuntu 18.04 و 19.04
- Alpine 3.9

SkiaSharp روی Windows Nano Server به دلیل عدم وجود برخی وابستگی‌های بومی، [ که یک مسئله شناخته شده در SkiaSharp است](https://github.com/mono/SkiaSharp/issues/676) کار نمی‌کند. این مشکل در نسخه 1.68.1.1 SkiaSharp حل خواهد شد. اگر نیاز به اجرای Aspose.Words در یک ظرف Windows دارید، از تصویر پایه .NET Framework با نسخه .NET Framework Aspose.Words استفاده کنید، که به SkiaSharp بستگی ندارد.

SkiaSharp یک بسته بندی در اطراف کتابخانه بومی Skia است. زمان های اجرا زیر در بسته SkiaSharp NuGet ارائه شده است:

- osx
- tizen-armel
- tizen-x86
- win10-arm
- win10-x64
- win10-x86
- win-x64
- win-x86

برای اجرای آن در Linux، باید از بسته‌های NuGet اضافی با دارایی‌های بومی مربوطه، مانند ساخت‌های بومی کتابخانه Skia، که در زیر فهرست شده‌اند، استفاده کنید:

- *SkiaSharp.NativeAssets.Linux* - یک ساخت Skia بومی برای توزیع های Linux مبتنی بر x64 Debian ارائه می دهد.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* - بسته برای استفاده در توزیع های Linux که وابستگی libfontconfig ندارند در نظر گرفته شده است. تست شده بر روی RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* - یک بیلد بومی Skia برای x64 Alpine Linux 3.9 ارائه می دهد.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* - یک بیلد بومی Skia برای توزیع‌های Linux مبتنی بر arm32 و arm64 Debian ارائه می‌کند.

## نمونه های بیشتر

1. در مثال بالا، برنامه در یک تصویر SDK اجرا شد. تصاویر SDK سنگین تر از تصاویر زمان اجرا هستند. مثال زیر نشان می دهد که چگونه فایل Docker باید اصلاح شود تا از تصویر SDK برای ساخت برنامه و تصویر زمان اجرا برای اجرای آن استفاده شود:<br>
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
1. برای اجرای برنامه در Ubuntu 18.04، Dockerfile عملاً ثابت می ماند (فقط تگ تغییر می کند):<br>
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
1. برای اجرای برنامه در Alpine Linux، باید دارایی های اصلی SkiaSharp را اضافه کنید و از Dockerfile زیر استفاده کنید:<br>
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
1. برای اجرای برنامه در RHEL 7، باید دارایی های اصلی SkiaSharp را اضافه کنید و از Dockerfile زیر استفاده کنید:<br>
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

## همچنین ببینید

- [Docker Desktop را روی Windows نصب کنید](https://docs.docker.com/docker-for-windows/install/)
- [Docker Desktop را روی مک نصب کنید](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- گزینه [به ظروف Linux بروید](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers)
- [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux) را نصب کنید
- اطلاعات اضافی در مورد [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- از بسته های NuGet اضافی استفاده کنید: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)، [SkiaSharp.NativeAssets.Linux.NoDependencies](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies)، [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux)، [Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
