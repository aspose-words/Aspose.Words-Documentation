---
title: Cómo ejecutar Aspose.Words en Docker
second_title: Aspose.Words para .NET
articleTitle: Cómo ejecutar Aspose.Words en Docker
linktitle: Cómo ejecutar Aspose.Words en Docker
type: docs
description: "Integre la funcionalidad Aspose.Words en su aplicación usando Docker independientemente de la tecnología que haya en su pila de desarrollo. Aprenda a utilizar Aspose .Words en un contenedor Docker en C#."
weight: 120
url: /es/net/how-to-run-aspose-words-in-docker/
---

Los microservicios, junto con la contenedorización, permiten combinar tecnologías fácilmente. Docker le permite integrar fácilmente la funcionalidad Aspose.Words en su aplicación, independientemente de la tecnología que haya en su pila de desarrollo.

En caso de que esté apuntando a microservicios, o si la tecnología principal en su pila no es .NET, C++ o Java, pero necesita la funcionalidad Aspose.Words, o si ya usa Docker en su pila, entonces puede estar interesado en utilizar Aspose.Words en un Docker. envase.

## Requisitos previos

- Docker debe estar instalado en su sistema. Para obtener información sobre cómo instalar Docker en Windows o Mac, consulte los enlaces en la sección "Ver también".

- Además, tenga en cuenta que en el ejemplo que se proporciona a continuación se utiliza Visual Studio 2017, .NET Core 2.2 SDK.


## Aplicación Hola Mundo

En este ejemplo, creará una aplicación de consola simple Hola Mundo que genera un mensaje "¡Hola Mundo!" documento y lo guarda en todos los formatos de guardado admitidos. Luego, la aplicación se puede crear y ejecutar en Docker.

### Creando la aplicación de consola

Para crear el programa Hello World, siga los pasos a continuación:
1. Una vez instalado Docker, asegúrese de que utilice contenedores Linux (predeterminado). Si es necesario, seleccione la opción Cambiar a contenedores Linux en el menú Escritorios Docker.
1. En Visual Studio, cree una aplicación de consola .NET Core.<br>
![net-console-application](https:/https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. Instale la última versión de Aspose.Words desde NuGet. SkiaSharp se instalará como una dependencia de Aspose.Words.<br>
![skiasharp-dependency](https:/https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. Dado que la aplicación se ejecutará en Linux, se deben instalar los activos Linux nativos adecuados. Comience con la imagen base Debian e instale `SkiaSharp.NativeAssets`.Linux.
1. Cuando se agreguen todas las dependencias requeridas, escriba un programa simple que cree un "¡Hola mundo!" documento y lo guarda en todos los formatos de guardado admitidos:<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

Tenga en cuenta que la carpeta "TestOut" se especifica como una carpeta de salida para guardar documentos de salida. Al ejecutar la aplicación en Docker, se montará una carpeta en la máquina host en esta carpeta en el contenedor. Esto le permitirá ver fácilmente el resultado generado por Aspose.Words en el contenedor Docker.

### Configurar un archivo Docker

El siguiente paso es crear y configurar el archivo Docker.

1. Cree el archivo Docker y colóquelo junto al archivo de solución de su aplicación. Mantenga este nombre de archivo sin extensión (el predeterminado).
1. En el archivo Docker, especifique:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

Lo anterior es un archivo Docker simple, que contiene las siguientes instrucciones:

- La imagen SDK que se utilizará. Aquí está la imagen .NET Core SDK 2.2. Docker lo descargará cuando se ejecute la compilación. La versión de SDK se especifica como una etiqueta.
- El directorio de trabajo, que se especifica en la siguiente línea.
- El comando para instalar libfontconfig1 se ejecuta en el contenedor. Esto es requerido por SkiaSharp.
- El comando para copiar todo al contenedor, publicar la aplicación y especificar el punto de entrada.

### Construyendo y ejecutando la aplicación en Docker

Ahora la aplicación se puede crear y ejecutar en Docker. Abra su símbolo del sistema favorito, cambie el directorio a la carpeta con la aplicación (carpeta donde se encuentran el archivo de la solución y el archivo Docker) y ejecute el siguiente comando:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

La primera vez que se ejecuta este comando puede tardar más, ya que Docker necesita descargar las imágenes requeridas. Una vez completado el comando anterior, ejecute el siguiente comando:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Preste atención al argumento de montaje porque, como se mencionó anteriormente, una carpeta en la máquina host se monta en la carpeta del contenedor, para ver fácilmente los resultados de la ejecución de la aplicación. Las rutas en Linux distinguen entre mayúsculas y minúsculas.

{{% /alert %}}

## Imágenes compatibles con Aspose.Words

Aspose.Words está disponible tanto para .NET Framework como para .NET Core. Las imágenes .NET Core son mucho más pequeñas que las imágenes .NET Framework, lo que hace que .NET Core sea la mejor opción para crear microservicios y usar en contenedores. Es posible implementar aplicaciones en contenedores Linux Docker (para implementación multiplataforma), que son más livianos que los contenedores Windows.

Se proporcionan imágenes oficiales para el .NET Core SDK para:

- Debian 9 y 10
- Ubuntu 18.04 y 19.04
- Alpino 3.7 y 3.9
- Nanoservidor Windows

Para trabajar con gráficos, Aspose.Words para .NET Standard depende de SkiaSharp. Esto limita las imágenes en las que se puede ejecutar Aspose.Words a lo siguiente:

- Debian 9 y 10
- Ubuntu 18.04 y 19.04
- Alpino 3.9

SkiaSharp no funciona en Windows Nano Server debido a la falta de algunas dependencias nativas, [ que es un problema conocido en SkiaSharp](https://github.com/mono/SkiaSharp/issues/676). El problema se resolverá en la versión 1.68.1.1 de SkiaSharp. Si necesita ejecutar Aspose.Words en un contenedor Windows, utilice la imagen base .NET Framework con la versión .NET Framework de Aspose.Words, que no depende de SkiaSharp.

SkiaSharp es un contenedor de la biblioteca nativa de Skia. Los siguientes tiempos de ejecución se proporcionan en el paquete SkiaSharp NuGet:

- osx
- tizen-armel
-tizen-x86
- win10-brazo
-win10-x64
-win10-x86
- ganar-x64
- ganar-x86

Para ejecutarlo en Linux, debe usar paquetes NuGet adicionales con los recursos nativos correspondientes, como las compilaciones nativas de la biblioteca Skia, que se enumeran a continuación:

- *SkiaSharp.NativeAssets.Linux*: proporciona una compilación nativa de Skia para distribuciones Linux basadas en Debian x64.
- *SkiaSharp.NativeAssets.Linux.NoDependencies*: el paquete está destinado a ser utilizado en distribuciones Linux que no tienen la dependencia libfontconfig. Probado en RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux*: proporciona una compilación nativa de Skia para x64 Alpine Linux 3.9.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm*: proporciona una compilación nativa de Skia para distribuciones Linux basadas en Debian arm32 y arm64.

## Más ejemplos

1. En el ejemplo anterior, la aplicación se ejecutó en una imagen SDK. Las imágenes SDK son más pesadas que las imágenes en tiempo de ejecución. El siguiente ejemplo demuestra cómo se debe modificar el archivo Docker para usar la imagen SDK para crear la aplicación y la imagen en tiempo de ejecución para ejecutarla:<br>
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
1. Para ejecutar la aplicación en Ubuntu 18.04, el archivo Docker permanece prácticamente igual (solo se cambia la etiqueta):<br>
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
1. Para ejecutar la aplicación en Alpine Linux, es necesario agregar los activos nativos de SkiaSharp y utilizar el siguiente archivo Docker:<br>
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
1. Para ejecutar la aplicación en RHEL 7, es necesario agregar los activos nativos de SkiaSharp y utilizar el siguiente archivo Docker:<br>
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

## Ver también

- [Instale el escritorio Docker en Windows](https://docs.docker.com/docker-for-windows/install/)
- [Instale el escritorio Docker en Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- Opción [Cambiar a contenedores Linux](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers)
- Instalar [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- Información adicional sobre [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- Utilice paquetes NuGet adicionales: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.NoDependencies](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
