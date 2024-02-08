---
title: Come eseguire Aspose.Words in Docker
second_title: Aspose.Words per .NET
articleTitle: Come eseguire Aspose.Words in Docker
linktitle: Come eseguire Aspose.Words in Docker
type: docs
description: "Integra la funzionalità Aspose.Words nella tua applicazione utilizzando Docker indipendentemente dalla tecnologia presente nel tuo stack di sviluppo. Scopri come utilizzare Aspose .Words in un contenitore Docker in C#."
weight: 120
url: /it/net/how-to-run-aspose-words-in-docker/
---

I microservizi, insieme alla containerizzazione, consentono di combinare facilmente le tecnologie. Docker ti consente di integrare facilmente la funzionalità Aspose.Words nella tua applicazione, indipendentemente dalla tecnologia presente nel tuo stack di sviluppo.

Nel caso in cui ti rivolgi ai microservizi o se la tecnologia principale nel tuo stack non è .NET, C++ o Java, ma hai bisogno della funzionalità Aspose.Words o se utilizzi già Docker nel tuo stack, potresti essere interessato a utilizzare Aspose.Words in un Docker contenitore.

## Prerequisiti

- Docker deve essere installato sul tuo sistema. Per informazioni su come installare Docker su Windows o Mac fare riferimento ai link presenti nella sezione "Vedi anche".

- Tieni inoltre presente che nell'esempio fornito di seguito viene utilizzato Visual Studio 2017, .NET Core 2.2 SDK.


## Applicazione Ciao mondo

In questo esempio, crei una semplice applicazione console Hello World che crea un messaggio "Hello World!" documento e lo salva in tutti i formati di salvataggio supportati. L'applicazione può quindi essere creata ed eseguita in Docker.

### Creazione dell'applicazione console

Per creare il programma Hello World, attenersi alla seguente procedura:
1. Una volta installato Docker, assicurati che utilizzi i contenitori Linux (impostazione predefinita). Se necessario, seleziona l'opzione Passa a contenitori Linux dal menu Desktop Docker.
1. In Visual Studio, creare un'applicazione console .NET Core.<br>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. Installa l'ultima versione Aspose.Words da NuGet. SkiaSharp verrà installato come dipendenza di Aspose.Words.<br>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. Poiché l'applicazione verrà eseguita su Linux, è necessario installare le risorse Linux native appropriate. Inizia con l'immagine di base Debian e installa `SkiaSharp.NativeAssets`.Linux.
1. Una volta aggiunte tutte le dipendenze richieste, scrivere un semplice programma che crei un messaggio "Hello World!" documento e lo salva in tutti i formati di salvataggio supportati:<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

Tieni presente che la cartella "TestOut" è specificata come cartella di output per il salvataggio dei documenti di output. Quando si esegue l'applicazione in Docker, una cartella sul computer host verrà montata su questa cartella nel contenitore. Ciò ti consentirà di visualizzare facilmente l'output generato da Aspose.Words nel contenitore Docker.

### Configurazione di un Dockerfile

Il passaggio successivo è creare e configurare il Dockerfile.

1. Crea il Dockerfile e posizionalo accanto al file di soluzione della tua applicazione. Mantieni questo nome file senza estensione (impostazione predefinita).
1. Nel Dockerfile, specificare:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

Quanto sopra è un semplice Dockerfile, che contiene le seguenti istruzioni:

- L'immagine SDK da utilizzare. Ecco l'immagine .NET Core SDK 2.2. Docker lo scaricherà quando verrà eseguita la compilazione. La versione di SDK è specificata come tag.
- La directory di lavoro, specificata nella riga successiva.
- Il comando per installare libfontconfig1 viene eseguito nel contenitore. Ciò è richiesto da SkiaSharp.
- Il comando per copiare tutto nel contenitore, pubblicare l'applicazione e specificare il punto di ingresso.

### Creazione ed esecuzione dell'applicazione in Docker

Ora l'applicazione può essere creata ed eseguita in Docker. Apri il tuo prompt dei comandi preferito, cambia la directory nella cartella con l'applicazione (cartella in cui sono posizionati il file della soluzione e il Dockerfile) ed esegui il seguente comando:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

La prima volta che viene eseguito questo comando potrebbe richiedere più tempo, poiché Docker deve scaricare le immagini richieste. Una volta completato il comando precedente, eseguire il comando seguente:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Prestare attenzione all'argomento mount perché, come accennato in precedenza, una cartella sul computer host viene montata nella cartella del contenitore, per vedere facilmente i risultati dell'esecuzione dell'applicazione. I percorsi in Linux fanno distinzione tra maiuscole e minuscole.

{{% /alert %}}

## Immagini che supportano Aspose.Words

Aspose.Words è disponibile sia per .NET Framework che per .NET Core. Le immagini .NET Core sono di dimensioni molto più ridotte rispetto alle immagini .NET Framework, il che rende .NET Core la scelta migliore per la creazione di microservizi e per l'utilizzo nei contenitori. È possibile distribuire app in contenitori Linux Docker (per la distribuzione multipiattaforma), che sono più leggeri dei contenitori Windows.

Le immagini ufficiali per il .NET Core SDK sono fornite per:

- Debian 9 e 10
- Ubuntu 18.04 e 19.04
- Alpine 3.7 e 3.9
- Windows NanoServer

Per lavorare con la grafica, Aspose.Words per .NET Standard dipende da SkiaSharp. Ciò limita le immagini su cui è possibile eseguire Aspose.Words a quanto segue:

- Debian 9 e 10
- Ubuntu 18.04 e 19.04
- Alpine 3.9

SkiaSharp non funziona su Windows Nano Server a causa della mancanza di alcune dipendenze native, [ che è un problema noto in SkiaSharp](https://github.com/mono/SkiaSharp/issues/676). Il problema verrà risolto nella versione 1.68.1.1 di SkiaSharp. Se devi eseguire Aspose.Words in un contenitore Windows, utilizza l'immagine di base .NET Framework con la versione .NET Framework di Aspose.Words, che non dipende da SkiaSharp.

SkiaSharp è un wrapper attorno alla libreria nativa Skia. I seguenti runtime sono forniti nel pacchetto SkiaSharp NuGet:

-osx
- tizen-armel
-tizen-x86
- win10-arm
- win10-x64
-win10-x86
- win-x64
- win-x86

Per eseguirlo in Linux, dovresti utilizzare pacchetti NuGet aggiuntivi con le risorse native corrispondenti, come le build native della libreria Skia, elencate di seguito:

- *SkiaSharp.NativeAssets.Linux*: fornisce una build Skia nativa per distribuzioni Linux basate su x64 Debian.
- *SkiaSharp.NativeAssets.Linux.NoDependencies*: il pacchetto è destinato ad essere utilizzato nelle distribuzioni Linux che non hanno la dipendenza libfontconfig. Testato su RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux*: fornisce una build Skia nativa per x64 Alpine Linux 3.9.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm*: fornisce una build Skia nativa per distribuzioni Linux basate su arm32 e arm64 Debian.

## Altri esempi

1. Nell'esempio precedente, l'applicazione è stata eseguita in un'immagine SDK. Le immagini SDK sono più pesanti delle immagini runtime. L'esempio seguente mostra come modificare il file Docker per utilizzare l'immagine SDK per creare l'applicazione e l'immagine runtime per eseguirla:<br>
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
1. Per eseguire l'applicazione in Ubuntu 18.04, il Dockerfile rimane praticamente lo stesso (è cambiato solo il tag):<br>
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
1. Per eseguire l'applicazione in Alpine Linux, è necessario aggiungere le risorse native SkiaSharp e utilizzare il seguente Dockerfile:<br>
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
1. Per eseguire l'applicazione in RHEL 7, è necessario aggiungere le risorse native di SkiaSharp e utilizzare il seguente Dockerfile:<br>
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

## Guarda anche

- [Installa Docker Desktop su Windows](https://docs.docker.com/docker-for-windows/install/)
- [Installa Docker Desktop su Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
-Opzione [Passa ai contenitori Linux](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers)
-Installa [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- Ulteriori informazioni su [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- Utilizza pacchetti NuGet aggiuntivi: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.NoDependencies](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
