---
title: Comment exécuter Aspose.Words dans Docker
second_title: Aspose.Words pour .NET
articleTitle: Comment exécuter Aspose.Words dans Docker
linktitle: Comment exécuter Aspose.Words dans Docker
type: docs
description: "Intégrez la fonctionnalité Aspose.Words dans votre application à l'aide de Docker, quelle que soit la technologie présente dans votre pile de développement. Découvrez comment utiliser Aspose .Words dans un conteneur Docker en C#."
weight: 120
url: /fr/net/how-to-run-aspose-words-in-docker/
---

Les microservices, associés à la conteneurisation, permettent de combiner facilement les technologies. Docker vous permet d'intégrer facilement la fonctionnalité Aspose.Words dans votre application, quelle que soit la technologie présente dans votre pile de développement.

Si vous ciblez des microservices, ou si la technologie principale de votre pile n'est pas .NET, C++ ou Java, mais que vous avez besoin de la fonctionnalité Aspose.Words, ou si vous utilisez déjà Docker dans votre pile, vous pourriez être intéressé par l'utilisation de Aspose.Words dans un Docker. récipient.

## Conditions préalables

- Docker doit être installé sur votre système. Pour plus d'informations sur la façon d'installer Docker sur Windows ou Mac, reportez-vous aux liens dans la section "Voir aussi".

- Notez également que Visual Studio 2017, .NET Core 2.2 SDK est utilisé dans l'exemple fourni ci-dessous.


## Application Bonjour tout le monde

Dans cet exemple, vous créez une simple application console Hello World qui crée un message "Hello World!" document et l'enregistre dans tous les formats de sauvegarde pris en charge. L'application peut ensuite être créée et exécutée dans Docker.

### Création de l'application console

Pour créer le programme Hello World, suivez les étapes ci-dessous:
1. Une fois Docker installé, assurez-vous qu'il utilise les conteneurs Linux (par défaut). Si nécessaire, sélectionnez l'option Passer aux conteneurs Linux dans le menu Bureaux Docker.
1. Dans Visual Studio, créez une application console .NET Core.<br>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. Installez la dernière version de Aspose.Words à partir de NuGet. SkiaSharp sera installé en tant que dépendance de Aspose.Words.<br>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. Étant donné que l'application sera exécutée sur Linux, les ressources Linux natives appropriées doivent être installées. Commencez par l'image de base Debian et installez `SkiaSharp.NativeAssets`.Linux.
1. Lorsque toutes les dépendances requises sont ajoutées, écrivez un programme simple qui crée un message "Hello World!" document et l'enregistre dans tous les formats de sauvegarde pris en charge:<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

Notez que le dossier "TestOut" est spécifié comme dossier de sortie pour enregistrer les documents de sortie. Lors de l'exécution de l'application dans Docker, un dossier sur la machine hôte sera monté dans ce dossier dans le conteneur. Cela vous permettra de visualiser facilement la sortie générée par Aspose.Words dans le conteneur Docker.

### Configurer un Dockerfile

L'étape suivante consiste à créer et configurer le Dockerfile.

1. Créez le Dockerfile et placez-le à côté du fichier solution de votre application. Conservez ce nom de fichier sans extension (valeur par défaut).
1. Dans le Dockerfile, précisez:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

Ce qui précède est un simple Dockerfile, qui contient les instructions suivantes:

- L'image SDK à utiliser. Ici, c'est l'image .NET Core SDK 2.2. Docker le téléchargera lors de l'exécution de la construction. La version de SDK est spécifiée sous forme de balise.
- Le répertoire de travail, spécifié dans la ligne suivante.
- La commande d'installation de libfontconfig1 est exécutée dans le conteneur. Ceci est requis par SkiaSharp.
- La commande pour tout copier dans le conteneur, publier l'application et spécifier le point d'entrée.

### Création et exécution de l'application dans Docker

L'application peut désormais être créée et exécutée dans Docker. Ouvrez votre invite de commande préférée, accédez au dossier contenant l'application (dossier où sont placés le fichier de solution et le Dockerfile) et exécutez la commande suivante:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

La première fois que cette commande est exécutée, cela peut prendre plus de temps, car Docker doit télécharger les images requises. Une fois la commande précédente terminée, exécutez la commande suivante:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Faites attention à l'argument mount, car, comme mentionné précédemment, un dossier sur la machine hôte est monté dans le dossier du conteneur, pour voir facilement les résultats de l'exécution de l'application. Les chemins dans Linux sont sensibles à la casse.

{{% /alert %}}

## Images prenant en charge Aspose.Words

Aspose.Words est disponible pour .NET Framework et .NET Core. Les images .NET Core sont beaucoup plus petites que les images .NET Framework, ce qui fait du .NET Core le meilleur choix pour créer des microservices et pour une utilisation dans des conteneurs. Il est possible de déployer des applications sur des conteneurs Linux Docker (pour un déploiement multiplateforme), qui sont plus légers que les conteneurs Windows.

Les images officielles du .NET Core SDK sont fournies pour:

-Debian 9 et 10
-Ubuntu 18.04 et 19.04
-Alpine 3.7 et 3.9
-Windows NanoServer

Pour travailler avec des graphiques, Aspose.Words pour .NET Standard dépend de SkiaSharp. Cela limite les images sur lesquelles Aspose.Words peut être exécuté aux éléments suivants:

-Debian 9 et 10
-Ubuntu 18.04 et 19.04
- Alpine 3.9

SkiaSharp ne fonctionne pas sur Windows Nano Server en raison du manque de certaines dépendances natives [ qui est un problème connu dans SkiaSharp](https://github.com/mono/SkiaSharp/issues/676). Le problème sera résolu dans la version 1.68.1.1 de SkiaSharp. Si vous devez exécuter Aspose.Words dans un conteneur Windows, utilisez l'image de base .NET Framework avec la version .NET Framework de Aspose.Words, qui ne dépend pas de SkiaSharp.

SkiaSharp est un wrapper autour de la bibliothèque native Skia. Les environnements d'exécution suivants sont fournis dans le package SkiaSharp NuGet:

-osx
- Tizen-Armel
- tizen-x86
- win10-arm
-win10-x64
-win10-x86
- win-x64
- win-x86

Pour l'exécuter dans Linux, vous devez utiliser des packages NuGet supplémentaires avec les actifs natifs correspondants, tels que les versions natives de la bibliothèque Skia, répertoriées ci-dessous:

- *SkiaSharp.NativeAssets.Linux* – fournit une version native de Skia pour les distributions Linux x64 basées sur Debian.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* – le package est destiné à être utilisé dans les distributions Linux qui n'ont pas la dépendance libfontconfig. Testé sur RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* – fournit une version native de Skia pour x64 Alpine Linux 3.9.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* – fournit une version native de Skia pour les distributions Linux basées sur arm32 et arm64 Debian.

## Plus d'exemples

1. Dans l'exemple ci-dessus, l'application a été exécutée dans une image SDK. Les images SDK sont plus lourdes que les images d'exécution. L'exemple ci-dessous montre comment le fichier Docker doit être modifié afin d'utiliser l'image SDK pour créer l'application et l'image d'exécution pour l'exécuter:<br>
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
1. Pour exécuter l'application en Ubuntu 18.04, le Dockerfile reste pratiquement le même (seule la balise est modifiée):<br>
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
1. Pour exécuter l'application en Alpine Linux, il est nécessaire d'ajouter les ressources natives SkiaSharp et d'utiliser le Dockerfile suivant:<br>
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
1. Pour exécuter l'application dans RHEL 7, il est nécessaire d'ajouter les ressources natives SkiaSharp et d'utiliser le Dockerfile suivant:<br>
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

## Voir également

- [Installer Docker Desktop sur Windows](https://docs.docker.com/docker-for-windows/install/)
- [Installer le bureau Docker sur Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
-Option [Passer aux conteneurs Linux](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers)
- Installer [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- Informations complémentaires sur [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- Utilisez des packages NuGet supplémentaires: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.NoDependencies](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
