---
title: Cum să rulezi Aspose.Words în Docker
second_title: Aspose.Words pentru .NET
articleTitle: Cum să rulezi Aspose.Words în Docker
linktitle: Cum să rulezi Aspose.Words în Docker
type: docs
description: "Integrare Aspose.Words funcționalitate în aplicația dvs. folosind Docker indiferent de tehnologia pe care o utilizați în stiva dvs. de dezvoltare. Învață cum să folosești Aspose. Words într-un Docker container în C#."
weight: 120
url: /ro/net/how-to-run-aspose-words-in-docker/
timestamp: 2024-08-19-11-05-36
---

Microserviciile, împreună cu containerizarea, fac posibilă o combinație ușoară a tehnologiilor. Docker vă permite să integrați cu ușurință funcționalitatea Aspose.Words în aplicația dvs., indiferent de tehnologia din stiva dvs. de dezvoltare.

În cazul în care vizați microservicii, sau dacă tehnologia principală din stiva voastră nu este .NET, C++ sau Java, dar aveți nevoie de funcționalitatea Aspose.Words sau dacă utilizați deja Docker în stiva voastră, atunci s-ar putea să fiți interesat să utilizați Aspose.Words într-un container Docker.

## Precondiţii

"- Docker trebuie să fie instalat pe sistemul tău." Pentru informaţii despre cum să instalaţi Docker pe Windows sau Mac, consultaţi legăturile din secţiunea "Vezi şi".

De asemenea, observați că Visual Studio 2017, .NET Core 2.2 SDK este utilizat în exemplul de mai jos.


## Hello World Application

În acest exemplu, creezi o simplă aplicație consolă "Hello World", care creează un document "Hello World!" și îl salvează în toate formate de salvare acceptate. Aplicația poate fi apoi construită și rulată în Docker.

### Crearea aplicației console

Pentru a crea programul 'Hello World', urmați pașii de mai jos:
1. Odată ce Docker este instalat, asigurați-vă că utilizează containere Linux (implicit). Dacă este necesar, selectați opțiunea "Schimbă la Linux containere" din meniul Desktop Docker.
1. În Visual Studio, creaţi o aplicaţie de tip .NET Core console.<br>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. Instalați cea mai recentă versiune Aspose.Words de la NuGet. SkiaSharp va fi instalat ca o dependență de Aspose.Words.<br>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. Deoarece aplicația va rula pe Linux, trebuie instalate activele native corespunzătoare Linux. Începe cu Debian imaginea de bază și instalează `SkiaSharp.NativeAssets.Linux`.
1. Când toate dependențele necesare sunt adăugate, scrieți un program simplu care creează un document "Hello World!" și îl salvează în toate formatele de salvare acceptate:<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

Notă că folderul "TestOut" este specificat ca folder de ieșire pentru salvarea documentelor de ieșire. Când rulezi aplicația în Docker un folder de pe mașina gazdă va fi montat la acest folder din container. Aceasta vă va permite să vizualizați cu ușurință ieșirea generată de Aspose.Words în Docker containerului.

### Configurarea unei Dockerfile

Pasul următor este să creezi şi să configurezi Dockerfile.

1. Creați Dockerfile și plasați-l lângă fișierul soluției aplicației dvs. Păstrează acest nume de fişier fără extensie (implicit).
1. În Dockerfile, specificați:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

În sus este un Dockerfile simplu, care conține următoarele instrucțiuni:

- Imaginea SDK pentru a fi folosită. Aici este imaginea .NET Core SDK 2.2. Docker va descărca când se execută construirea. Versiunea de SDK este specificată ca etichetă.
- Directorul de lucru, care este specificat în linia următoare.
- Comanda pentru instalarea libfontconfig1 se execută în container. Acesta este necesar de către SkiaSharp.
- Comanda de a copia totul într-un container, de a publica aplicația și de a specifica punctul de intrare.

### Construirea și rularea aplicației în Docker

Acum aplicația poate fi construită și rula în Docker. Deschideți comanda preferată, schimbați directorul în dosarul cu aplicația (dosarul unde se află fișierul de soluție și fișierele Dockerfile) și rulați următoarea comandă:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

Primul dată când este executat acest comand poate lua mai mult timp, deoarece Docker trebuie să descarce imaginile necesare. Odată ce comanda anterioară este finalizată, rulează următoarea comandă:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Fii atent la argumentele de montare deoarece, așa cum s-a menționat mai sus, un folder pe mașină gazdă este montat în folderul containerului pentru a vedea cu ușurință rezultatele execuției aplicației. Căile din Linux sunt sensibile la litere mari și mici.

{{% /alert %}}

## Imagini Suport Aspose.Words

Aspose.Words" este disponibil atât pentru .NET Framework cât și pentru .NET Core. .NET Core imagini sunt mult mai mici în dimensiune decât .NET Framework imagini, ceea ce face ca .NET Core o alegere mai bună pentru crearea de microservicii și pentru utilizarea în containere. Este posibil să implementezi aplicații la Linux Docker containere (pentru implementare multi-platformă), care sunt mai ușoare decât Windows containere.

Imaginile oficiale pentru SDK .NET Core sunt furnizate pentru:"

"- Debian 9 și 10"
- Ubuntu 18.04 și 19.04
- Alpine 3.7 și 3.9
- Windows nano Server

Pentru a lucra cu grafică, Aspose.Words pentru .NET Standard depinde de SkiaSharp. Această limită imaginile Aspose.Words pot fi executate la următoarele:

- Debian 9 și 10
- Ubuntu 18.04 și 19.04
- Alpine 3.9

SkiaSharp nu funcționează pe Windows Nano Server din cauza lipsei unora dintre dependențele native, [ which is a known issue in SkiaSharp](https://github.com/mono/SkiaSharp/issues/676). Problema va fi rezolvată în versiunea 1.68.1.1 a SkiaSharp. Dacă trebuie să rulezi Aspose.Words într-un container Windows, foloseşte imaginea de bază .NET Framework cu versiunea .NET Framework a Aspose.Words, care nu depinde de SkiaSharp.

SkiaSharp este un wrapper în jurul bibliotecii native Skia. Următoarele runtime-uri sunt furnizate în pachetul SkiaSharp NuGet:

- osx
-tizen-armel
- tizen-x86
- win10-arm
- win10-x64
"- win10-x86"
- win-x64
- win-x86

Pentru a o rula în Linux, ar trebui să folosiți pachete suplimentare NuGet cu active native corespunzătoare, cum ar fi versiuni native ale bibliotecii Skia, enumerate mai jos:

- *SkiaSharp.NativeAssets.Linux* – oferă o construcție nativă Skia pentru x64 Debian pe baza distribuțiilor Linux.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* – pachetul este destinat să fie utilizat în distribuții care nu au dependența de Linux libfontconfig. Testat pe RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* - oferă o construcție nativă Skia pentru x64 Alpine Linux 3.9.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* – oferă o versiune nativă Skia pentru arm32 și arm64 Debian bazat Linux distribuții.

## Mai multe exemple

1. În exemplul de mai sus, aplicația a fost rulată într-o imagine SDK. Imagini SDK sunt mai grele decât imaginile runtime. Exemplul de mai jos demonstrează cum ar trebui modificat fișierul Docker, pentru a folosi imaginea SDK, pentru a construi aplicația, și imaginea în timp de execuție pentru a o rula:<br>
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
1. Pentru a rula aplicația în Ubuntu 18.04, Dockerfile rămâne practic același (numai eticheta este schimbată):<br>
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
1. Pentru a rula aplicația în Alpine Linux, este necesar să adăugați activele native SkiaSharp și utilizați următoarele Dockerfile: <br>
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
1. Pentru a rula aplicația în RHEL 7, este necesar să adăugați activele native SkiaSharp și să utilizați următoarele Dockerfile:<br>
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

## Vezi și

- [Install Docker Desktop on Windows](https://docs.docker.com/docker-for-windows/install/)
- [Install Docker Desktop on Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- [Switch to Linux containers](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers) opțiune
- Instalează [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- Informaţii suplimentare despre [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- Utilizați pachete suplimentare NuGet: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.NoDependencies](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
