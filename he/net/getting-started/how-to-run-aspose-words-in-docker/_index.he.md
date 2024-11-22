---
title: איך לרוץ Aspose.Words פנימה Docker
second_title: Aspose.Words עבור .NET
articleTitle: איך לרוץ Aspose.Words פנימה Docker
linktitle: איך לרוץ Aspose.Words פנימה Docker
type: docs
description: "המונחים Aspose.Words פונקציונליות ביישום שלך Docker ללא קשר למה הטכנולוגיה נמצאת בערימה הפיתוח שלך. למד כיצד להשתמש As נניח מילים ב Docker מיכל C#."
weight: 120
url: /he/net/how-to-run-aspose-words-in-docker/
timestamp: 2024-08-19-11-05-36
---

Microservices, בשילוב עם מיכליזציה מאפשר לשלב בקלות טכנולוגיות. Docker מאפשר לך להשתלב בקלות Aspose.Words פונקציונליות ליישום שלך, ללא קשר למה הטכנולוגיה נמצאת בערימה הפיתוח שלך.

אם אתה מכוון מיקרו-שירותים, או אם הטכנולוגיה העיקרית בערימה שלך אינה .NET, C++ או Java, אבל אתה צריך Aspose.Words פונקציונליות, או אם אתה כבר משתמש Docker בערימה שלך, אתה יכול להיות מעוניין להשתמש Aspose.Words בתוך A Docker מיכל

## Prerequisites

- - Docker יש להתקין את המערכת שלך. למידע על איך להתקין Docker על Windows או Mac, מתייחס לקישורים בסעיף "ראה גם".

- - כמו כן, שימו לב Visual Studio 2017 .NET Core 2.2 2.2 2.2 2.2 SDK הוא משמש בדוגמה, מסופק למטה.


## Hello World Application

בדוגמה זו, אתה יוצר יישום קונסולת Hello World שהופך את מסמך "Hello World!", ומציל אותו בכל הפורמטים הנתמכות. לאחר מכן ניתן לבנות את היישום ולהפעיל Docker.

### יצירת יישום הקונסולה

כדי ליצור את תוכנית Hello World, בצע את השלבים הבאים:
1.1 1. פעם Docker מותקן, ודא כי הוא משתמש Linux מכיל (default). במידת הצורך, בחר את ה-Switch עד Linux אפשרות מכולות Docker תפריט שולחן העבודה
1.1 1. In In In Visual Studio, ליצור .NET Core יישום הקונסולה<br/>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1.1 1. התקן את האחרון Aspose.Words גרסה NuGet. סקי שארפ יותקן כתלויות Aspose.Words.<br/>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1.1 1. מאז היישום יופעל Linux הילידים המתאימים Linux יש להתקין נכסים. התחל עם Debian תמונת בסיס והתקנה `SkiaSharp.NativeAssets`.Linux.
1.1 1. כאשר כל התלויים הנדרשים מתווספים, כתבו תוכנית פשוטה שיוצרת מסמך "Hello World" ומצילים אותו בכל הפורמטים הנתמכות:<br/>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

שימו לב כי התיקיה "TestOut" מוגדרת כתיקייה פלטה לשמירת מסמכי פלט. בעת הפעלת היישום ב Docker תיקיה על המכונה המארחת תוצב לתיקיה זו במיכל. זה יאפשר לך לראות בקלות את הפלט שנוצר על ידי Aspose.Words בתוך Docker מיכל

### לתפוס a a Dockerfile

השלב הבא הוא ליצור ולהגדיר את Dockerfile.

1.1 1. יצירת Dockerfile ולמקם אותו ליד קובץ הפתרון של היישום שלך. שמור את שם הקובץ ללא הרחבה (ה ברירת המחדל).
1.1 1. בתוך Dockerfile, תגית:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

מלמעלה זה פשוט Dockerfile, אשר מכיל את ההוראות הבאות:

- The SDK תמונה לשימוש הנה הוא .NET Core SDK 2.2 תמונה Docker להוריד אותו כאשר הבניין מנוהל. הגרסה של SDK הוא מוגדר כתג.
- - מנהל העבודה, אשר מוגדר בשורה הבאה.
- - הפקודה להתקין libfontconfig1 מופעלת במיכל. זה נדרש על ידי SkiaSharp.
- - הפקודה להעתיק הכל כדי מכולה, לפרסם את היישום, ולקבוע את נקודת הכניסה.

### לבנות ולהפעיל את הבקשה Docker

עכשיו ניתן לבנות את היישום ולהפעיל Docker. פתח את בקשת הפקודה האהובה עליך, לשנות את התיקייה עם היישום (folder שבו קובץ הפתרון ואת קובץ הפתרון. Dockerfile הם מוצבים) ועושים את הפקודה הבאה:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

בפעם הראשונה שהמפקדה הזו מבוצעת, היא עלולה להימשך זמן רב יותר. Docker צריך להוריד את התמונות הנדרשות. לאחר השלמת הפקודה הקודמת, בצע את הפקודה הבאה:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

שימו לב לטיעון ההר, כי כפי שהוזכר קודם לכן, התיקיה על המכונה המארחת מוטבעת בתיקיה של מיכל, כדי לראות בקלות את תוצאות ביצוע היישום. נתיבים Linux זה מקרה רגיש.

{{% /alert %}}

## תמונות תמיכה Aspose.Words

Aspose.Words זמין עבור שניהם .NET Framework ו .NET Core. The The The .NET Core תמונות קטנות בהרבה בגודל מאשר .NET Framework תמונות, מה שעושה .NET Core בחירה טובה יותר ליצירת מיקרו-שירותים לשימוש במיכלים. ניתן לפרוס יישומים Linux Docker מכולות (עבור פריסת cross-platform), שהן קלות יותר מאשר Windows מיכלים

תמונות רשמיות עבור .NET Core SDK ניתן ל:

- - Debian 9 ו-10
- - Ubuntu 18.04 ו-19.04
- - Alpine 3.7 ו 3.9
- - Windows ננו Server

לעבוד עם גרפיקה, Aspose.Words עבור .NET Standard תלוי ב- SkiaSharp. זה מגביל את התמונות Aspose.Words ניתן לרוץ אל הבאים:

- - Debian 9 ו-10
- - Ubuntu 18.04 ו-19.04
- Alpine 3.9

סקינבל לא עובד Windows ננו Server בשל חוסר תלות מקומית,[ נושא ידוע ב- SkiaSharp](https://github.com/mono/SkiaSharp/issues/676). הבעיה תיפתר ב-1.68.1.1 גירסה של SkiaSharp. אם אתה צריך לרוץ Aspose.Words בתוך A Windows מיכל, השתמש .NET Framework תמונת בסיס עם .NET Framework גירסה של Aspose.Wordsמה שלא תלוי ב- SkiaSharp.

SkiaSharp הוא עטופה סביב ספריית סקיה Native. זמני הריצה הבאים מסופקים ב- SkiaSharp NuGet חבילה:

- osx
- tizen-armel
- tizen-x86
- win10-arm
- win10-x64
- win10-x86
- win-x64
- win-x86

לרוץ את זה פנימה Linux, עליך להשתמש נוסף NuGet חבילות עם הנכסים המקומיים המקבילים, כגון Native Building of Skia Library, המפורטות להלן:

- - *SkiaSharp.NativeAssets.Linux* מספק בניין Native Skia עבור x64 Debian מבוסס Linux הפצה.
- - *SkiaSharp.NativeAssets.Linux.NoDependencies* החבילה אמורה לשמש Linux הפצה שאין לה את התלות של ה- libfontconfig. נבדק על RHEL 7 (x64)
- - *Goelze.SkiaSharp.NativeAssets.AlpineLinux* מספק בניין Native Skia עבור x64 Alpine Linux 3.9.
- - *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* - מספק בניין Native Skia עבור הזרוע 32 וזרוע64 Debian מבוסס Linux הפצה.

## דוגמאות נוספות

1.1 1. בדוגמה לעיל, היישום הופעל ב SDK תמונה SDK תמונות הן כבדות יותר מאשר תמונות של זמן ריצה. הדוגמה שלמטה מציגה כיצד Docker יש לשנות את הקובץ על מנת להשתמש SDK תמונה כדי לבנות את היישום, ואת תמונת הזמן לרוץ זה:<br/>
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
1.1 1. כדי להפעיל את היישום Ubuntu 18.04, Dockerfile נשאר זהה (רק התג משתנה):<br/>
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
1.1 1. כדי להפעיל את היישום Alpine Linux, יש צורך להוסיף את הנכסים הילידים של SkiaSharp ולהשתמש הבאים Dockerfile:<br/>
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
1.1 1. כדי להפעיל את היישום RHEL 7, יש צורך להוסיף את נכסי ה- SkiaSharp ולהשתמש בהם בהמשך Dockerfile:<br/>
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

## ראה גם

- [התקן Docker שולחן העבודה Windows](https://docs.docker.com/docker-for-windows/install/)
- [התקן Docker שולחן העבודה על Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- - [לעבור Linux מכולות](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers) אפשרות
- התקן [SkiaSharp.Native AssetsLinux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- פרטים נוספים [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- שימוש נוסף NuGet חבילות: [SkiaSharp.Native AssetsLinux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.Native AssetsLinuxהמונחים: noDepend](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.Native AssetsAlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.Native AssetsLinuxזרוע](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
