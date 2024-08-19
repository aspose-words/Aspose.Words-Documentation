---
title: Aspose.Words'i Docker'de Çalıştırma
second_title: .NET için Aspose.Words
articleTitle: Aspose.Words'i Docker'de Çalıştırma
linktitle: Aspose.Words'i Docker'de Çalıştırma
type: docs
description: "Geliştirme yığınınızda hangi teknolojinin bulunduğuna bakılmaksızın, Docker kullanarak Aspose.Words işlevselliğini uygulamanıza entegre edin. Aspose .Words'ü C#'de Docker kapsayıcısında nasıl kullanacağınızı öğrenin."
weight: 120
url: /tr/net/how-to-run-aspose-words-in-docker/
---

Mikro hizmetler, konteynerleştirmeyle birlikte teknolojilerin kolayca birleştirilmesini mümkün kılar. Docker, geliştirme yığınınızda hangi teknolojinin bulunduğuna bakılmaksızın Aspose.Words işlevselliğini uygulamanıza kolayca entegre etmenize olanak tanır.

Mikro hizmetleri hedefliyorsanız veya yığınınızdaki ana teknoloji .NET, C++ veya Java değilse ancak Aspose.Words işlevselliğine ihtiyacınız varsa veya yığınınızda zaten Docker kullanıyorsanız, o zaman Aspose.Words'i bir Docker'da kullanmak ilginizi çekebilir konteyner.

## Önkoşullar

- Sisteminizde Docker kurulu olmalıdır. Docker'in Windows veya Mac'e nasıl kurulacağı hakkında bilgi için "Ayrıca Bakınız" bölümündeki bağlantılara bakın.

- Ayrıca aşağıda verilen örnekte Visual Studio 2017, .NET Core 2.2 SDK'nin kullanıldığını unutmayın.


## Merhaba Dünya Uygulaması

Bu örnekte, "Merhaba Dünya!" anlamına gelen basit bir Merhaba Dünya konsol uygulaması yaratacaksınız. belgeyi destekler ve onu desteklenen tüm kaydetme formatlarında kaydeder. Uygulama daha sonra Docker'te oluşturulabilir ve çalıştırılabilir.

### Konsol Uygulamasını Oluşturma

Merhaba Dünya programını oluşturmak için aşağıdaki adımları izleyin:
1. Docker kurulduktan sonra Linux Konteynerlerini (varsayılan) kullandığından emin olun. Gerekirse Docker Masaüstü Bilgisayarlar menüsünden Linux kapsayıcılarına geç seçeneğini seçin.
1. Visual Studio'te bir .NET Core konsol uygulaması oluşturun.<br>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. NuGet'den en son Aspose.Words sürümünü yükleyin. SkiaSharp, Aspose.Words'e bağımlı olarak kurulacaktır.<br>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. Uygulama Linux üzerinde çalışacağından uygun yerel Linux varlıklarının yüklenmesi gerekmektedir. Debian temel görüntüsüyle başlayın ve `SkiaSharp.NativeAssets`.Linux'i yükleyin.
1. Gerekli tüm bağımlılıklar eklendiğinde, "Merhaba Dünya!" yaratan basit bir program yazın. belgeyi destekler ve onu desteklenen tüm kaydetme formatlarında kaydeder:<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

"TestOut" klasörünün çıktı belgelerini kaydetmek için bir çıktı klasörü olarak belirtildiğini unutmayın. Uygulamayı Docker'te çalıştırırken, ana makinedeki bir klasör konteynerdeki bu klasöre bağlanacaktır. Bu, Aspose.Words tarafından oluşturulan çıktıyı Docker kapsayıcısında kolayca görüntülemenizi sağlayacaktır.

### Dockerfile'i yapılandırma

Bir sonraki adım Dockerfile'i oluşturmak ve yapılandırmaktır.

1. Dockerfile'i oluşturun ve uygulamanızın çözüm dosyasının yanına yerleştirin. Bu dosya adını uzantısız tutun (varsayılan).
1. Dockerfile'te şunları belirtin:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

Yukarıdaki, aşağıdaki talimatları içeren basit bir Dockerfile'tir:

- Kullanılacak SDK görüntüsü. İşte .NET Core SDK 2.2 görüntüsü. Derleme çalıştırıldığında Docker onu indirecektir. SDK sürümü etiket olarak belirtilir.
- Bir sonraki satırda belirtilen çalışma dizini.
- Libfontconfig1'i kurma komutu kapta çalıştırılır. Bu SkiaSharp için gereklidir.
- Her şeyi konteynere kopyalama, uygulamayı yayınlama ve giriş noktasını belirtme komutu.

### Uygulamayı Docker'te Oluşturma ve Çalıştırma

Artık uygulama Docker'te oluşturulabilir ve çalıştırılabilir. Favori komut isteminizi açın, dizini uygulamanın bulunduğu klasöre (çözüm dosyasının ve Dockerfile'nin yerleştirildiği klasör) değiştirin ve aşağıdaki komutu çalıştırın:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

Bu komut ilk kez çalıştırıldığında Docker'in gerekli görüntüleri indirmesi gerektiğinden daha uzun sürebilir. Önceki komut tamamlandıktan sonra aşağıdaki komutu çalıştırın:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Mount argümanına dikkat edin, çünkü daha önce de belirtildiği gibi, uygulamanın yürütülmesinin sonuçlarını kolayca görmek için ana makinedeki bir klasör konteynerin klasörüne eklenir. Linux'teki yollar büyük/küçük harfe duyarlıdır.

{{% /alert %}}

## Aspose.Words'i Destekleyen Görseller

Aspose.Words hem .NET Framework hem de .NET Core için kullanılabilir. .NET Core görüntülerinin boyutu .NET Framework görüntülerinden çok daha küçüktür; bu da .NET Core'i mikro hizmetler oluşturmak ve kapsayıcılarda kullanmak için daha iyi bir seçim haline getirir. Uygulamaları, Windows kapsayıcılarından daha hafif olan Linux Docker kapsayıcılarına (platformlar arası dağıtım için) dağıtmak mümkündür.

.NET Core SDK'nin resmi görselleri aşağıdakiler için sağlanmıştır:

-Debian 9 ve 10
-Ubuntu 18.04 ve 19.04
-Alpine 3.7 ve 3.9
-Windows Nano Server

Grafiklerle çalışmak için .NET Standard için Aspose.Words, SkiaSharp'a bağlıdır. Bu, Aspose.Words'in çalıştırılabileceği görüntüleri aşağıdakilerle sınırlar:

-Debian 9 ve 10
-Ubuntu 18.04 ve 19.04
- Alpine 3.9

SkiaSharp, [ bu SkiaSharp'ta bilinen bir sorundur](https://github.com/mono/SkiaSharp/issues/676) gibi bazı yerel bağımlılıkların bulunmamasından dolayı Windows Nano Server üzerinde çalışmaz. Sorun SkiaSharp'ın 1.68.1.1 sürümünde çözülecektir. Aspose.Words'i bir Windows kapsayıcısında çalıştırmanız gerekiyorsa .NET Framework temel görüntüsünü, SkiaSharp'a bağlı olmayan Aspose.Words'in .NET Framework sürümüyle birlikte kullanın.

SkiaSharp, yerel Skia kütüphanesini çevreleyen bir sarmalayıcıdır. SkiaSharp NuGet paketinde aşağıdaki çalışma süreleri sağlanmaktadır:

- osx
- tizen-armel
- tizen-x86
- win10-arm
- win10-x64
- win10-x86
- win-x64
- win-x86

Linux'te çalıştırmak için, aşağıda listelenen Skia kitaplığının yerel yapıları gibi ilgili yerel varlıklarla birlikte ek NuGet paketleri kullanmalısınız:

- *SkiaSharp.NativeAssets.Linux* – x64 Debian tabanlı Linux dağıtımları için yerel bir Skia yapısı sağlar.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* – paketin libfontconfig bağımlılığı olmayan Linux dağıtımlarında kullanılması amaçlanmıştır. RHEL 7 (x64) üzerinde test edilmiştir.
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* – x64 Alpine Linux 3.9 için yerel bir Skia yapısı sağlar.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* – arm32 ve arm64 Debian tabanlı Linux dağıtımları için yerel bir Skia yapısı sağlar.

## Daha fazla örnek

1. Yukarıdaki örnekte uygulama SDK görüntüsünde çalıştırılmıştır. SDK görüntüleri çalışma zamanı görüntülerinden daha ağırdır. Aşağıdaki örnek, uygulamayı oluşturmak amacıyla SDK görüntüsünü ve onu çalıştırmak için çalışma zamanı görüntüsünü kullanmak amacıyla Docker dosyasının nasıl değiştirilmesi gerektiğini gösterir:<br>
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
1. Uygulamayı Ubuntu 18.04'te çalıştırmak için Dockerfile pratik olarak aynı kalır (yalnızca etiket değiştirilir):<br>
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
1. Uygulamayı Alpine Linux'de çalıştırmak için SkiaSharp yerel varlıklarını eklemek ve aşağıdaki Dockerfile'i kullanmak gerekir:<br>
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
1. Uygulamayı RHEL 7'de çalıştırmak için SkiaSharp yerel varlıklarını eklemek ve aşağıdaki Dockerfile'yi kullanmak gerekir:<br>
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

## Ayrıca bakınız

- [Docker Masaüstünü Windows'ye yükleyin](https://docs.docker.com/docker-for-windows/install/)
- [Docker Desktop'ı Mac'e yükleyin](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
-[Linux kapsayıcılarına geçiş yapın](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers) seçeneği
- [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)'i yükleyin
- [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk) hakkında ek bilgi
- Ek NuGet paketlerini kullanın: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.NoDependencing'ler](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
