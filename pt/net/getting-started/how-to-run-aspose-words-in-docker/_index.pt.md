---
title: Como executar Aspose.Words em Docker
second_title: Aspose.Words para .NET
articleTitle: Como executar Aspose.Words em Docker
linktitle: Como executar Aspose.Words em Docker
type: docs
description: "Integre a funcionalidade Aspose.Words ao seu aplicativo usando Docker, independentemente da tecnologia que estiver em sua pilha de desenvolvimento. Aprenda como usar Aspose .Words em um contêiner Docker em C#."
weight: 120
url: /pt/net/how-to-run-aspose-words-in-docker/
---

Os microsserviços, em conjunto com a conteinerização, permitem combinar facilmente tecnologias. Docker permite integrar facilmente a funcionalidade Aspose.Words em seu aplicativo, independentemente de qual tecnologia esteja em sua pilha de desenvolvimento.

Caso você esteja visando microsserviços, ou se a tecnologia principal em sua pilha não for .NET, C++ ou Java, mas você precisar da funcionalidade Aspose.Words, ou se já usar Docker em sua pilha, então você pode estar interessado em utilizar Aspose.Words em um Docker recipiente.

## Pré-requisitos

- Docker deve estar instalado em seu sistema. Para obter informações sobre como instalar Docker em Windows ou Mac, consulte os links na seção "Consulte também".

- Além disso, observe que Visual Studio 2017, .NET Core 2.2 SDK é usado no exemplo fornecido abaixo.


## Aplicativo Olá Mundo

Neste exemplo, você cria um aplicativo de console simples Hello World que faz uma mensagem "Hello World!" documento e salva-o em todos os formatos de salvamento suportados. O aplicativo pode então ser criado e executado em Docker.

### Criando o aplicativo de console

Para criar o programa Hello World, siga as etapas abaixo:
1. Depois que o Docker estiver instalado, certifique-se de que ele use contêineres Linux (padrão). Se necessário, selecione a opção Alternar para contêineres Linux no menu Docker Desktops.
1. No Visual Studio, crie um aplicativo de console .NET Core.<br>
![net-console-application](https:/https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. Instale a versão Aspose.Words mais recente do NuGet. SkiaSharp será instalado como uma dependência do Aspose.Words.<br>
![skiasharp-dependency](https:/https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. Como o aplicativo será executado em Linux, os ativos Linux nativos apropriados deverão ser instalados. Comece com a imagem base Debian e instale o `SkiaSharp.NativeAssets`.Linux.
1. Quando todas as dependências necessárias forem adicionadas, escreva um programa simples que crie um "Hello World!" documento e salva-o em todos os formatos de salvamento suportados:<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

Observe que a pasta "TestOut" é especificada como uma pasta de saída para salvar documentos de saída. Ao executar o aplicativo em Docker, uma pasta na máquina host será montada nesta pasta no contêiner. Isso permitirá que você visualize facilmente a saída gerada pelo Aspose.Words no contêiner Docker.

### Configurando um Dockerfile

A próxima etapa é criar e configurar o Dockerfile.

1. Crie o Dockerfile e coloque-o próximo ao arquivo de solução da sua aplicação. Mantenha este nome de arquivo sem extensão (o padrão).
1. No Dockerfile, especifique:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

O texto acima é um Dockerfile simples, que contém as seguintes instruções:

- A imagem SDK a ser utilizada. Aqui está a imagem .NET Core SDK 2.2. O Docker fará o download dele quando a compilação for executada. A versão do SDK é especificada como uma tag.
- O diretório de trabalho, especificado na próxima linha.
- O comando para instalar libfontconfig1 é executado no contêiner. Isso é exigido pelo SkiaSharp.
- O comando para copiar tudo para o contêiner, publicar o aplicativo e especificar o ponto de entrada.

### Construindo e executando o aplicativo em Docker

Agora o aplicativo pode ser criado e executado em Docker. Abra seu prompt de comando favorito, mude o diretório para a pasta com o aplicativo (pasta onde estão colocados o arquivo da solução e o Dockerfile) e execute o seguinte comando:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

A primeira vez que este comando for executado pode demorar mais, pois o Docker precisa baixar as imagens necessárias. Assim que o comando anterior for concluído, execute o seguinte comando:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Preste atenção ao argumento mount, pois, como mencionado anteriormente, uma pasta na máquina host é montada na pasta do contêiner, para ver facilmente os resultados da execução da aplicação. Os caminhos no Linux diferenciam maiúsculas de minúsculas.

{{% /alert %}}

## Imagens com suporte para Aspose.Words

Aspose.Words está disponível para .NET Framework e .NET Core. As imagens .NET Core são muito menores que as imagens .NET Framework, o que torna o .NET Core a melhor escolha para criação de microsserviços e para uso em contêineres. É possível implantar aplicativos em contêineres Linux Docker (para implantação em várias plataformas), que são mais leves que os contêineres Windows.

As imagens oficiais do .NET Core SDK são fornecidas para:

- Debian 9 e 10
- Ubuntu 18.04 e 19.04
-Alpine 3.7 e 3.9
-Windows NanoServer

Para trabalhar com gráficos, Aspose.Words for .NET Standard depende do SkiaSharp. Isso limita as imagens nas quais o Aspose.Words pode ser executado ao seguinte:

- Debian 9 e 10
- Ubuntu 18.04 e 19.04
- Alpine 3.9

SkiaSharp não funciona em Windows Nano Server devido à falta de algumas dependências nativas,[ que é um problema conhecido no SkiaSharp](https://github.com/mono/SkiaSharp/issues/676). O problema será resolvido na versão 1.68.1.1 do SkiaSharp. Se você precisar executar o Aspose.Words em um contêiner Windows, use a imagem base .NET Framework com a versão .NET Framework do Aspose.Words, que não depende do SkiaSharp.

SkiaSharp é um wrapper da biblioteca nativa Skia. Os seguintes tempos de execução são fornecidos no pacote SkiaSharp NuGet:

- osx
- tizen-armel
-tizen-x86
- win10-arm
-win10-x64
-win10-x86
- win-x64
- win-x86

Para executá-lo em Linux, você deve usar pacotes NuGet adicionais com os ativos nativos correspondentes, como compilações nativas da biblioteca Skia, listadas abaixo:

- *SkiaSharp.NativeAssets.Linux* – fornece uma construção nativa do Skia para distribuições Linux baseadas em x64 Debian.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* – o pacote se destina a ser usado em distribuições Linux que não possuem a dependência libfontconfig. Testado em RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* – fornece uma versão nativa do Skia para x64 Alpine Linux 3.9.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* – fornece uma versão nativa do Skia para distribuições Linux baseadas em arm32 e arm64 Debian.

## Mais exemplos

1. No exemplo acima, a aplicação foi executada em uma imagem SDK. As imagens SDK são mais pesadas que as imagens de tempo de execução. O exemplo abaixo demonstra como o arquivo Docker deve ser modificado para utilizar a imagem SDK para construir a aplicação e a imagem de tempo de execução para executá-la:<br>
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
1. Para rodar a aplicação em Ubuntu 18.04, o Dockerfile permanece praticamente o mesmo (apenas a tag é alterada):<br>
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
1. Para executar a aplicação em Alpine Linux, é necessário adicionar os assets nativos do SkiaSharp e utilizar o seguinte Dockerfile:<br>
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
1. Para executar a aplicação em RHEL 7, é necessário adicionar os assets nativos do SkiaSharp e utilizar o seguinte Dockerfile:<br>
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

## Veja também

- [Instale Docker Desktop em Windows](https://docs.docker.com/docker-for-windows/install/)
- [Instale Docker Desktop no Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- opção [Mudar para contêineres Linux](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers)
- Instalar [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- Informações adicionais sobre [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- Use pacotes NuGet adicionais: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.NoDependencies](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
