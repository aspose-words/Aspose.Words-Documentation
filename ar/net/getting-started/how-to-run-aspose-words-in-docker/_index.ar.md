---
title: كيفية تشغيل Aspose.Words في Docker
second_title: Aspose.Words لـ .NET
articleTitle: كيفية تشغيل Aspose.Words في Docker
linktitle: كيفية تشغيل Aspose.Words في Docker
type: docs
description: "قم بدمج وظيفة Aspose.Words في التطبيق الخاص بك باستخدام Docker بغض النظر عن التكنولوجيا الموجودة في حزمة التطوير الخاصة بك. تعرف على كيفية استخدام Aspose .Words في حاوية Docker في C#."
weight: 120
url: /ar/net/how-to-run-aspose-words-in-docker/
---

تتيح الخدمات الصغيرة، جنبًا إلى جنب مع النقل بالحاويات، إمكانية الجمع بين التقنيات بسهولة. يسمح لك Docker بدمج وظائف Aspose.Words بسهولة في تطبيقك، بغض النظر عن التقنية الموجودة في حزمة التطوير لديك.

في حال كنت تستهدف الخدمات الصغيرة، أو إذا كانت التقنية الرئيسية في مكدسك ليست .NET أو C++ أو Java، ولكنك تحتاج إلى وظيفة Aspose.Words، أو إذا كنت تستخدم بالفعل Docker في مكدسك، فقد تكون مهتمًا باستخدام Aspose.Words في Docker حاوية.

## المتطلبات الأساسية

- يجب تثبيت Docker على نظامك. للحصول على معلومات حول كيفية تثبيت Docker على Windows أو Mac، راجع الروابط الموجودة في قسم "انظر أيضًا".

- لاحظ أيضًا أنه تم استخدام Visual Studio 2017, .NET Core 2.2 SDK في المثال الموضح أدناه.


## تطبيق أهلا بالعالم

في هذا المثال، يمكنك إنشاء تطبيق وحدة تحكم Hello World بسيط يُنشئ رسالة "Hello World!" المستند وحفظه بجميع تنسيقات الحفظ المدعومة. يمكن بعد ذلك إنشاء التطبيق وتشغيله في Docker.

### إنشاء تطبيق وحدة التحكم

لإنشاء برنامج Hello World، اتبع الخطوات التالية:
1. بمجرد تثبيت Docker، تأكد من أنه يستخدم حاويات Linux (افتراضي). إذا لزم الأمر، حدد خيار التبديل إلى حاويات Linux من قائمة Docker Desktops.
1. في Visual Studio، قم بإنشاء تطبيق وحدة تحكم .NET Core.<br>
![net-console-application](https:/https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. قم بتثبيت أحدث إصدار من Aspose.Words من NuGet. سيتم تثبيت SkiaSharp باعتباره تابعًا لـ Aspose.Words.<br>
![skiasharp-dependency](https:/https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. بما أن التطبيق سيتم تشغيله على Linux، فيجب تثبيت أصول Linux الأصلية المناسبة. ابدأ بالصورة الأساسية Debian وقم بتثبيت `SkiaSharp.NativeAssets`.Linux.
1. عند إضافة كافة التبعيات المطلوبة، اكتب برنامجًا بسيطًا يقوم بإنشاء "Hello World!" المستند وحفظه بجميع تنسيقات الحفظ المدعومة:<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

لاحظ أنه تم تحديد المجلد "TestOut" كمجلد إخراج لحفظ مستندات الإخراج. عند تشغيل التطبيق في Docker، سيتم تثبيت مجلد على الجهاز المضيف على هذا المجلد في الحاوية. سيمكنك هذا من عرض المخرجات التي تم إنشاؤها بواسطة Aspose.Words بسهولة في حاوية Docker.

### تكوين Dockerfile

الخطوة التالية هي إنشاء وتكوين Dockerfile.

1. قم بإنشاء Dockerfile ووضعه بجوار ملف الحل الخاص بالتطبيق الخاص بك. احتفظ باسم الملف هذا بدون امتداد (الافتراضي).
1. في Dockerfile، حدد:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

ما ورد أعلاه هو Dockerfile بسيط، والذي يحتوي على التعليمات التالية:

- صورة SDK المراد استخدامها. هذه هي صورة .NET Core SDK 2.2. سيقوم Docker بتنزيله عند تشغيل الإنشاء. يتم تحديد إصدار SDK كعلامة.
- دليل العمل المحدد في السطر التالي.
- يتم تشغيل أمر تثبيت libfontconfig1 في الحاوية. هذا مطلوب من قبل SkiaSharp.
- أمر نسخ كل شيء إلى الحاوية ونشر التطبيق وتحديد نقطة الإدخال.

### بناء وتشغيل التطبيق في Docker

الآن يمكن بناء التطبيق وتشغيله في Docker. افتح موجه الأوامر المفضل لديك، وقم بتغيير الدليل إلى المجلد الذي يحتوي على التطبيق (المجلد الذي يوجد به ملف الحل وDockerfile) وقم بتشغيل الأمر التالي:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

في المرة الأولى التي يتم فيها تنفيذ هذا الأمر، قد يستغرق الأمر وقتًا أطول، حيث يحتاج Docker إلى تنزيل الصور المطلوبة. بمجرد اكتمال الأمر السابق، قم بتشغيل الأمر التالي:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

انتبه إلى وسيطة التحميل، لأنه، كما ذكرنا سابقًا، يتم تثبيت مجلد على الجهاز المضيف في مجلد الحاوية، لرؤية نتائج تنفيذ التطبيق بسهولة. المسارات في Linux حساسة لحالة الأحرف.

{{% /alert %}}

## الصور التي تدعم Aspose.Words

Aspose.Words متاح لكل من .NET Framework و.NET Core. صور .NET Core أصغر حجمًا بكثير من صور .NET Framework، مما يجعل .NET Core الخيار الأفضل لإنشاء الخدمات الصغيرة وللاستخدام في الحاويات. من الممكن نشر التطبيقات في حاويات Linux Docker (للنشر عبر الأنظمة الأساسية)، وهي أخف من حاويات Windows.

يتم توفير الصور الرسمية لـ .NET Core SDK من أجل:

- Debian 9 و 10
- Ubuntu 18.04 و19.04
- Alpine 3.7 و 3.9
- Windows نانو Server

للعمل مع الرسومات، يعتمد Aspose.Words for .NET Standard على SkiaSharp. وهذا يحد من إمكانية تشغيل الصور Aspose.Words على ما يلي:

- Debian 9 و 10
- Ubuntu 18.04 و19.04
- Alpine 3.9

SkiaSharp لا يعمل على Windows Nano Server بسبب عدم وجود بعض التبعيات الأصلية، [ وهي مشكلة معروفة في SkiaSharp](https://github.com/mono/SkiaSharp/issues/676). سيتم حل المشكلة في الإصدار 1.68.1.1 من SkiaSharp. إذا كنت بحاجة إلى تشغيل Aspose.Words في حاوية Windows، فاستخدم صورة .NET Framework الأساسية مع إصدار .NET Framework من Aspose.Words، والذي لا يعتمد على SkiaSharp.

SkiaSharp عبارة عن غلاف حول مكتبة Skia الأصلية. يتم توفير أوقات التشغيل التالية في حزمة SkiaSharp NuGet:

- أوكس
- تيزن ارميل
- تايزن-x86
- win10-arm
- Win10-x64
- Win10-x86
- win-x64
- win-x86

لتشغيله في Linux، يجب عليك استخدام حزم NuGet إضافية مع الأصول الأصلية المقابلة، مثل الإصدارات الأصلية لمكتبة Skia، المدرجة أدناه:

- *SkiaSharp.NativeAssets.Linux* - يوفر إصدار Skia الأصلي لتوزيعات Linux المستندة إلى x64 Debian.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* - الحزمة مخصصة للاستخدام في توزيعات Linux التي لا تحتوي على تبعية libfontconfig. تم الاختبار على RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* - يوفر إصدار Skia الأصلي لـ x64 Alpine Linux 3.9.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* - يوفر تصميم Skia الأصلي لتوزيعات Linux المستندة إلى Arm32 وarm64 Debian.

## مزيد من الأمثلة

1. في المثال أعلاه، تم تشغيل التطبيق في صورة SDK. صور SDK أثقل من صور وقت التشغيل. يوضح المثال أدناه كيفية تعديل ملف Docker لاستخدام صورة SDK لإنشاء التطبيق، وصورة وقت التشغيل لتشغيله:<br>
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
1. لتشغيل التطبيق في Ubuntu 18.04، يظل Dockerfile كما هو عمليًا (يتم تغيير العلامة فقط):<br>
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
1. لتشغيل التطبيق في Alpine Linux، يلزم إضافة أصول SkiaSharp الأصلية واستخدام ملف Dockerfile التالي:<br>
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
1. لتشغيل التطبيق في RHEL 7، يلزم إضافة أصول SkiaSharp الأصلية واستخدام Dockerfile التالي:<br>
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

## أنظر أيضا

- [قم بتثبيت Docker Desktop على Windows](https://docs.docker.com/docker-for-windows/install/)
- [قم بتثبيت Docker Desktop على نظام Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- خيار [قم بالتبديل إلى حاويات Linux](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers)
- تثبيت [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- معلومات إضافية عن [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- استخدم حزم NuGet الإضافية: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)، [SkiaSharp.NativeAssets.Linux.NoDependeency](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies)، [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux)، [Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
