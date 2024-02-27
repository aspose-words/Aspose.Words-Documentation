---
title: วิธีเรียกใช้ Aspose.Words ในรูปแบบ Docker
second_title: Aspose.Words สำหรับ .NET
articleTitle: วิธีเรียกใช้ Aspose.Words ในรูปแบบ Docker
linktitle: วิธีเรียกใช้ Aspose.Words ในรูปแบบ Docker
type: docs
description: "รวมฟังก์ชัน Aspose.Words เข้ากับแอปพลิเคชันของคุณโดยใช้ Docker โดยไม่คำนึงถึงเทคโนโลยีที่อยู่ในกลุ่มการพัฒนาของคุณ เรียนรู้วิธีใช้ Aspose .Words ในคอนเทนเนอร์ Docker ใน C#"
weight: 120
url: /th/net/how-to-run-aspose-words-in-docker/
---

ไมโครเซอร์วิสร่วมกับคอนเทนเนอร์ทำให้สามารถรวมเทคโนโลยีต่างๆ ได้อย่างง่ายดาย Docker ช่วยให้คุณรวมฟังก์ชันการทำงานของ Aspose.Words เข้ากับแอปพลิเคชันของคุณได้อย่างง่ายดาย ไม่ว่าเทคโนโลยีใดจะอยู่ในกลุ่มการพัฒนาของคุณก็ตาม

ในกรณีที่คุณกำหนดเป้าหมายไมโครเซอร์วิส หรือหากเทคโนโลยีหลักในสแต็กของคุณไม่ใช่ .NET, C++ หรือ Java แต่คุณต้องการฟังก์ชัน Aspose.Words หรือหากคุณใช้ Docker ในสแต็กของคุณอยู่แล้ว คุณอาจสนใจใช้ Aspose.Words ใน Docker คอนเทนเนอร์.

## ข้อกำหนดเบื้องต้น

- ต้องติดตั้ง Docker บนระบบของคุณ สำหรับข้อมูลเกี่ยวกับวิธีการติดตั้ง Docker บน Windows หรือ Mac โปรดดูลิงก์ในส่วน "ดูเพิ่มเติม"

- นอกจากนี้ โปรดทราบว่าตัวอย่างต่อไปนี้จะใช้ Visual Studio 2017, .NET Core 2.2 SDK


## แอปพลิเคชั่น สวัสดีชาวโลก

ในตัวอย่างนี้ คุณสร้างแอปพลิเคชันคอนโซล Hello World ธรรมดาที่สร้าง "Hello World!" เอกสารและบันทึกในรูปแบบบันทึกที่รองรับทั้งหมด จากนั้นคุณสามารถสร้างและเรียกใช้แอปพลิเคชันใน Docker ได้

### การสร้างแอปพลิเคชันคอนโซล

หากต้องการสร้างโปรแกรม Hello World ให้ทำตามขั้นตอนด้านล่าง:
1. เมื่อติดตั้ง Docker แล้ว ตรวจสอบให้แน่ใจว่าใช้คอนเทนเนอร์ Linux (ค่าเริ่มต้น) หากจำเป็น ให้เลือกตัวเลือกเปลี่ยนเป็นคอนเทนเนอร์ Linux จากเมนูเดสก์ท็อป Docker
1. ใน Visual Studio ให้สร้างแอปพลิเคชันคอนโซล .NET Core<br>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. ติดตั้ง Aspose.Words เวอร์ชันล่าสุดจาก NuGet SkiaSharp จะได้รับการติดตั้งโดยขึ้นอยู่กับ Aspose.Words<br>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. เนื่องจากแอปพลิเคชันจะทำงานบน Linux จึงต้องติดตั้งเนื้อหา Linux ดั้งเดิมที่เหมาะสม เริ่มต้นด้วยอิมเมจฐาน Debian และติดตั้ง `SkiaSharp.NativeAssets`.Linux
1. เมื่อเพิ่มการขึ้นต่อกันที่จำเป็นทั้งหมดแล้ว ให้เขียนโปรแกรมง่ายๆ ที่สร้าง "Hello World!" เอกสารและบันทึกในรูปแบบบันทึกที่รองรับทั้งหมด:<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

โปรดทราบว่าโฟลเดอร์ "TestOut" ถูกระบุเป็นโฟลเดอร์เอาต์พุตสำหรับบันทึกเอกสารเอาต์พุต เมื่อเรียกใช้แอปพลิเคชันใน Docker โฟลเดอร์บนเครื่องโฮสต์จะถูกต่อเข้ากับโฟลเดอร์นี้ในคอนเทนเนอร์ ซึ่งจะทำให้คุณสามารถดูเอาต์พุตที่สร้างโดย Aspose.Words ในคอนเทนเนอร์ Docker ได้อย่างง่ายดาย

### การกำหนดค่า Dockerfile

ขั้นตอนต่อไปคือการสร้างและกำหนดค่า Dockerfile

1. สร้าง Dockerfile และวางไว้ถัดจากไฟล์โซลูชันของแอปพลิเคชันของคุณ เก็บชื่อไฟล์นี้โดยไม่มีนามสกุล (ค่าเริ่มต้น)
1. ใน Dockerfile ให้ระบุ:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

ข้างต้นเป็น Dockerfile แบบธรรมดาซึ่งมีคำแนะนำต่อไปนี้:

- รูปภาพ SDK ที่จะใช้ นี่คืออิมเมจ .NET Core SDK 2.2 Docker จะดาวน์โหลดเมื่อมีการรันบิลด์ เวอร์ชันของ SDK ถูกระบุเป็นแท็ก
- ไดเร็กทอรีการทำงานซึ่งระบุไว้ในบรรทัดถัดไป
- คำสั่งในการติดตั้ง libfontconfig1 รันอยู่ในคอนเทนเนอร์ SkiaSharp กำหนดให้สิ่งนี้จำเป็น
- คำสั่งให้คัดลอกทุกอย่างลงคอนเทนเนอร์ เผยแพร่แอปพลิเคชัน และระบุจุดเริ่มต้น

### การสร้างและใช้งานแอปพลิเคชันใน Docker

ขณะนี้คุณสามารถสร้างและเรียกใช้แอปพลิเคชันใน Docker ได้แล้ว เปิดพรอมต์คำสั่งที่คุณชื่นชอบ เปลี่ยนไดเร็กทอรีเป็นโฟลเดอร์ที่มีแอปพลิเคชัน (โฟลเดอร์ที่วางไฟล์โซลูชันและ Dockerfile) และรันคำสั่งต่อไปนี้:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

ครั้งแรกที่ดำเนินการคำสั่งนี้อาจใช้เวลานานกว่านั้น เนื่องจาก Docker จำเป็นต้องดาวน์โหลดอิมเมจที่จำเป็น เมื่อคำสั่งก่อนหน้าเสร็จสิ้น ให้รันคำสั่งต่อไปนี้:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

โปรดใส่ใจกับอาร์กิวเมนต์ mount เนื่องจากดังที่กล่าวไว้ข้างต้น โฟลเดอร์บนเครื่องโฮสต์จะถูกเมาท์ในโฟลเดอร์ของคอนเทนเนอร์ เพื่อให้สามารถดูผลลัพธ์ของการทำงานของแอปพลิเคชันได้อย่างง่ายดาย เส้นทางใน Linux คำนึงถึงตัวพิมพ์เล็กและตัวพิมพ์ใหญ่

{{% /alert %}}

## รูปภาพที่รองรับ Aspose.Words

Aspose.Words ใช้ได้กับทั้ง .NET Framework และ .NET Core รูปภาพ .NET Core มีขนาดเล็กกว่ารูปภาพ .NET Framework มาก ซึ่งทำให้ .NET Core เป็นตัวเลือกที่ดีกว่าสำหรับการสร้างไมโครเซอร์วิสและสำหรับใช้ในคอนเทนเนอร์ คุณสามารถปรับใช้แอปกับคอนเทนเนอร์ Linux Docker ได้ (สำหรับการปรับใช้ข้ามแพลตฟอร์ม) ซึ่งมีน้ำหนักเบากว่าคอนเทนเนอร์ Windows

รูปภาพอย่างเป็นทางการสำหรับ .NET Core SDK มีให้สำหรับ:

- Debian 9 และ 10
- Ubuntu 18.04 และ 19.04
- Alpine 3.7 และ 3.9
- Windows นาโน Server

ในการทำงานกับกราฟิก Aspose.Words สำหรับ .NET Standard ขึ้นอยู่กับ SkiaSharp นี่เป็นการจำกัดอิมเมจที่ Aspose.Words สามารถเรียกใช้ได้ดังต่อไปนี้:

- Debian 9 และ 10
- Ubuntu 18.04 และ 19.04
- Alpine 3.9

SkiaSharp ใช้งานไม่ได้กับ Windows Nano Server เนื่องจากขาดการขึ้นต่อกันแบบเนทีฟบางอย่าง [ ซึ่งเป็นปัญหาที่ทราบแล้วใน SkiaSharp](https://github.com/mono/SkiaSharp/issues/676) ปัญหาจะได้รับการแก้ไขใน SkiaSharp เวอร์ชัน 1.68.1.1 หากคุณต้องการเรียกใช้ Aspose.Words ในคอนเทนเนอร์ Windows ให้ใช้อิมเมจพื้นฐาน .NET Framework กับ Aspose.Words เวอร์ชัน .NET Framework ซึ่งไม่ได้ขึ้นอยู่กับ SkiaSharp

SkiaSharp เป็นส่วนเสริมของห้องสมุด Skia ดั้งเดิม รันไทม์ต่อไปนี้มีอยู่ในแพ็คเกจ SkiaSharp NuGet:

- osx
- ทิเซน-อาร์เมล
- tizen-x86
- win10-arm
- win10-x64
- win10-x86
- win-x64
- win-x86

หากต้องการรันใน Linux คุณควรใช้แพ็คเกจ NuGet เพิ่มเติมกับเนื้อหาเนทิฟที่เกี่ยวข้อง เช่น บิลด์เนทิฟของไลบรารี Skia ตามรายการด้านล่าง:

- *SkiaSharp.NativeAssets.Linux* - จัดเตรียม Skia build ดั้งเดิมสำหรับการแจกแจง Linux ที่ใช้ x64 Debian
- *SkiaSharp.NativeAssets.Linux.NoDependencies* - แพ็คเกจนี้มีวัตถุประสงค์เพื่อใช้ในการแจกแจง Linux ที่ไม่มีการพึ่งพา libfontconfig ทดสอบบน RHEL 7 (x64)
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* - ให้ Skia build ดั้งเดิมสำหรับ x64 Alpine Linux 3.9
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* - จัดเตรียม Skia build ดั้งเดิมสำหรับการกระจาย Linux ที่ใช้ Debian ของ arm32 และ arm64

## ตัวอย่างเพิ่มเติม

1. ในตัวอย่างข้างต้น แอปพลิเคชันทำงานในอิมเมจ SDK รูปภาพ SDK หนักกว่ารูปภาพรันไทม์ ตัวอย่างด้านล่างสาธิตวิธีการแก้ไขไฟล์ Docker เพื่อใช้อิมเมจ SDK เพื่อสร้างแอปพลิเคชัน และอิมเมจรันไทม์ในการรัน:<br>
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
1. ในการเรียกใช้แอปพลิเคชันใน Ubuntu 18.04 Dockerfile จะยังคงเหมือนเดิม (เปลี่ยนเฉพาะแท็กเท่านั้น):<br>
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
1. หากต้องการเรียกใช้แอปพลิเคชันใน Alpine Linux จำเป็นต้องเพิ่มเนื้อหาดั้งเดิมของ SkiaSharp และใช้ Dockerfile ต่อไปนี้:<br>
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
1. หากต้องการเรียกใช้แอปพลิเคชันใน RHEL 7 จำเป็นต้องเพิ่มเนื้อหาดั้งเดิมของ SkiaSharp และใช้ Dockerfile ต่อไปนี้:<br>
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

## ดูสิ่งนี้ด้วย

- [ติดตั้ง Docker Desktop บน Windows](https://docs.docker.com/docker-for-windows/install/)
- [ติดตั้ง Docker Desktop บน Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- ตัวเลือก [เปลี่ยนไปใช้คอนเทนเนอร์ Linux](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers)
- ติดตั้ง [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- ข้อมูลเพิ่มเติมเกี่ยวกับ [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- ใช้แพ็คเกจ NuGet เพิ่มเติม: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.NoDependencies](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxAArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
