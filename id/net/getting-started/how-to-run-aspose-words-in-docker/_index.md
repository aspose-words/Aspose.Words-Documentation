---
title: Cara Menjalankan Aspose.Words di Docker
second_title: Aspose.Words untuk .NET
articleTitle: Cara Menjalankan Aspose.Words di Docker
linktitle: Cara Menjalankan Aspose.Words di Docker
type: docs
description: "Integrasikan fungsionalitas Aspose.Words ke dalam aplikasi Anda menggunakan Docker, apa pun teknologi yang ada dalam tumpukan pengembangan Anda. Pelajari cara menggunakan Aspose .Words dalam kontainer Docker dalam C#."
weight: 120
url: /id/net/how-to-run-aspose-words-in-docker/
---

Layanan mikro, bersama dengan containerisasi, memungkinkan penggabungan teknologi dengan mudah. Docker memungkinkan Anda dengan mudah mengintegrasikan fungsionalitas Aspose.Words ke dalam aplikasi Anda, apa pun teknologi yang ada dalam tumpukan pengembangan Anda.

Jika Anda menargetkan layanan mikro, atau jika teknologi utama dalam tumpukan Anda bukan .NET, C++, atau Java, tetapi Anda memerlukan fungsionalitas Aspose.Words, atau jika Anda sudah menggunakan Docker di tumpukan Anda, maka Anda mungkin tertarik untuk menggunakan Aspose.Words dalam Docker wadah.

## Prasyarat

- Docker harus diinstal pada sistem Anda. Untuk informasi tentang cara menginstal Docker di Windows atau Mac, lihat tautan di bagian "Lihat Juga".

- Perhatikan juga bahwa Visual Studio 2017, .NET Core 2.2 SDK digunakan dalam contoh yang disediakan di bawah ini.


## Halo Aplikasi Dunia

Dalam contoh ini, Anda membuat aplikasi konsol Hello World sederhana yang membuat pesan "Hello World!" dokumen dan menyimpannya dalam semua format penyimpanan yang didukung. Aplikasi kemudian dapat dibangun dan dijalankan di Docker.

### Membuat Aplikasi Konsol

Untuk membuat program Hello World, ikuti langkah-langkah di bawah ini:
1. Setelah Docker terinstal, pastikan Docker menggunakan Linux Containers (default). Jika perlu, pilih opsi Beralih ke wadah Linux dari menu Docker Desktops.
1. Di Visual Studio, buat aplikasi konsol .NET Core.<br>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. Instal versi Aspose.Words terbaru dari NuGet. SkiaSharp akan diinstal sebagai ketergantungan Aspose.Words.<br>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. Karena aplikasi akan dijalankan di Linux, aset Linux asli yang sesuai harus diinstal. Mulailah dengan gambar dasar Debian dan instal `SkiaSharp.NativeAssets`.Linux.
1. Ketika semua dependensi yang diperlukan telah ditambahkan, tulislah sebuah program sederhana yang menciptakan pesan "Hello World!" mendokumentasikan dan menyimpannya dalam semua format penyimpanan yang didukung:<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

Perhatikan bahwa folder "TestOut" ditentukan sebagai folder keluaran untuk menyimpan dokumen keluaran. Saat menjalankan aplikasi di Docker, folder di mesin host akan dipasang ke folder ini di dalam container. Ini akan memungkinkan Anda dengan mudah melihat keluaran yang dihasilkan oleh Aspose.Words di penampung Docker.

### Mengonfigurasi Dockerfile

Langkah selanjutnya adalah membuat dan mengkonfigurasi Dockerfile.

1. Buat Dockerfile dan letakkan di sebelah file solusi aplikasi Anda. Pertahankan nama file ini tanpa ekstensi (default).
1. Di Dockerfile, tentukan:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

Di atas adalah Dockerfile sederhana, yang berisi instruksi berikut:

- Gambar SDK yang akan digunakan. Ini dia gambar .NET Core SDK 2.2. Docker akan mendownloadnya saat build dijalankan. Versi SDK ditentukan sebagai tag.
- Direktori kerja, yang ditentukan pada baris berikutnya.
- Perintah untuk menginstal libfontconfig1 dijalankan di container. Ini diperlukan oleh SkiaSharp.
- Perintah untuk menyalin semuanya ke container, mempublikasikan aplikasi, dan menentukan titik masuk.

### Membangun dan Menjalankan Aplikasi di Docker

Kini aplikasi dapat dibangun dan dijalankan di Docker. Buka command prompt favorit Anda, ubah direktori ke folder dengan aplikasi (folder tempat file solusi dan Dockerfile ditempatkan) dan jalankan perintah berikut:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

Pertama kali perintah ini dijalankan mungkin memerlukan waktu lebih lama, karena Docker perlu mengunduh gambar yang diperlukan. Setelah perintah sebelumnya selesai, jalankan perintah berikut:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Perhatikan argumen mount, karena seperti yang disebutkan sebelumnya, folder di mesin host dipasang ke folder container, untuk melihat hasil eksekusi aplikasi dengan mudah. Jalur di Linux peka huruf besar-kecil.

{{% /alert %}}

## Gambar Mendukung Aspose.Words

Aspose.Words tersedia untuk .NET Framework dan .NET Core. Gambar .NET Core berukuran jauh lebih kecil dibandingkan gambar .NET Framework, sehingga menjadikan .NET Core pilihan yang lebih baik untuk membuat layanan mikro dan untuk digunakan dalam container. Dimungkinkan untuk menyebarkan aplikasi ke wadah Linux Docker (untuk penerapan lintas platform), yang lebih ringan dari wadah Windows.

Gambar resmi untuk .NET Core SDK disediakan untuk:

- Debian 9 dan 10
- Ubuntu 18.04 dan 19.04
- Alpine 3.7 dan 3.9
- Windows Nano Server

Untuk bekerja dengan grafis, Aspose.Words untuk .NET Standard bergantung pada SkiaSharp. Ini membatasi gambar Aspose.Words yang dapat dijalankan sebagai berikut:

- Debian 9 dan 10
- Ubuntu 18.04 dan 19.04
- Alpine 3.9

SkiaSharp tidak berfungsi pada Windows Nano Server karena kurangnya beberapa dependensi asli, [ yang merupakan masalah umum di SkiaSharp](https://github.com/mono/SkiaSharp/issues/676). Masalah ini akan teratasi di SkiaSharp versi 1.68.1.1. Jika Anda perlu menjalankan Aspose.Words dalam wadah Windows, gunakan gambar dasar .NET Framework dengan Aspose.Words versi .NET Framework, yang tidak bergantung pada SkiaSharp.

SkiaSharp adalah pembungkus perpustakaan Skia asli. Runtime berikut disediakan dalam paket SkiaSharp NuGet:

- osx
- tizen-armel
- tizen-x86
- win10-arm
- menang10-x64
- menang10-x86
- win-x64
- win-x86

Untuk menjalankannya di Linux, Anda harus menggunakan paket NuGet tambahan dengan aset asli yang sesuai, seperti versi asli perpustakaan Skia, yang tercantum di bawah:

- *SkiaSharp.NativeAssets.Linux* – menyediakan build Skia asli untuk distribusi Linux berbasis x64 Debian.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* – paket ini dimaksudkan untuk digunakan dalam distribusi Linux yang tidak memiliki ketergantungan libfontconfig. Diuji pada RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* – menyediakan build Skia asli untuk x64 Alpine Linux 3.9.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* – menyediakan build Skia asli untuk distribusi Linux berbasis arm32 dan arm64 Debian.

## Contoh Lainnya

1. Dalam contoh di atas, aplikasi dijalankan dalam image SDK. Gambar SDK lebih berat daripada gambar runtime. Contoh di bawah ini menunjukkan bagaimana file Docker harus dimodifikasi agar dapat menggunakan gambar SDK untuk membangun aplikasi, dan gambar runtime untuk menjalankannya:<br>
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
1. Untuk menjalankan aplikasi di Ubuntu 18.04, Dockerfile praktis tetap sama (hanya tag yang diubah):<br>
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
1. Untuk menjalankan aplikasi di Alpine Linux, diperlukan penambahan aset asli SkiaSharp dan menggunakan Dockerfile berikut:<br>
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
1. Untuk menjalankan aplikasi di RHEL 7, diperlukan penambahan aset asli SkiaSharp dan menggunakan Dockerfile berikut:<br>
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

## Lihat juga

- [Instal Docker Desktop di Windows](https://docs.docker.com/docker-for-windows/install/)
- [Instal Docker Desktop di Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- Opsi [Beralih ke wadah Linux](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers)
- Instal [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- Informasi tambahan tentang [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- Gunakan paket NuGet tambahan: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.Tanpa Ketergantungan](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
