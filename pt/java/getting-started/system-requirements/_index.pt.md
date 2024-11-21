---
title: Requisitos do sistema
second_title: Aspose.Words para Java
articleTitle: Requisitos do sistema
linktitle: Requisitos do sistema
description: "Antes de começar a trabalhar com Aspose.Words para Java, garantir que você atenda aos requisitos do sistema operacional, plataforma, frameworks e ambiente para que as atividades em seus dispositivos sejam devidamente contabilizadas."
type: docs
weight: 80
url: /pt/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words para Java não requer produto de terceiros, como Microsoft Word para ser instalado. Aspose.Words é um motor para criar, modificar, converter e renderizar documentos em vários formatos, incluindo Microsoft Word formatos de documentos.

## Sistemas operacionais suportados

Qualquer Sistema Operacional que possa executar Java Runtime Ambiente (JRE) pode executar Aspose.Words para Java. A tabela a seguir lista mais, mas não todos, sistemas operacionais suportados.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Sistema operacional</td>
			<td style="font-weight: bold; width:400px">Versões</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>Abertura</li><li>CentOS</li><li>e outros</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS versão 10.9 (Mavericks) e depois</li></ul></td>
		</tr>
  <tr>
			<td>Móvel</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Plataformas de nuvem suportadas

Aspose.Words para Java suporta qualquer plataforma de nuvem que possa executar Java aplicações

## Apoiado Java Versões

Aspose.Words para Java suportes Java 7 e mais recente. Se você é forçado a usar Java 6, nós ainda liberamos um separado JAR para Java 6.


## Dependências opcionais

Como afirmamos acima, Aspose.Words para Java requerimento *only* o Java Runtime Environment, e você não precisa instalar nenhuma biblioteca adicional.

No entanto, às vezes há situações em que você pode precisar adicionar bibliotecas de terceiros:

- Não. JogAmp JOGL biblioteca para renderização acelerada de hardware OpenGL. A biblioteca está incluída nas palavras-passe POM arquivo como uma dependência externa. Você pode editar o POM arquivo para preservar jarros JOGL necessários para sua plataforma apenas. Ou você pode remover a dependência se você não precisar de renderização OpenGL acelerada por hardware.
- Não. HarfBuzz motor de fonte. Já está incluído no JRE 9 e mais recente. Se você estiver usando JRE 8 ou mais, você pode usar a dependência shaping-harfbuzz-plugin em nossa POM ficheiro. Caso contrário, você pode remover a dependência.
- Não. Java Advanced Imaging (JAI) para suportar imagens TIFF. As imagens TIFF não são suportadas Java 8 e mais. Para suporte TIFF em velho Java ambiente, Aspose.Words para Java depende do [Java Advanced Imaging (JAI) Pacote:](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) a partir de Oracle. Vamos descrever como instalar JAI abaixo.

### Como instalar o JAI em Windows

Siga estes passos para instalar o JAI nativo e ImageIO sobre Windows:

1. Baixar **JAI 1.1.3**.
   No momento da escrita, apenas a versão de 32 bits do instalador está disponível, então se você usar um JDK você precisa baixar [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) e se você usar um JRE você precisa baixar [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Execute o instalador e aponte-o para o diretório onde JDK/JRE está instalado.
1. Baixar **Imagem JAI I/O 1.1**.
   No momento da escrita, apenas a versão de 32 bits do instalador está disponível, então se você usar um JDK você precisa baixar [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) e se você usar um JRE você precisa baixar [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Execute o instalador e aponte-o para o diretório onde JDK/JRE está instalado.

### Como instalar o JAI em Linux

Siga estes passos para instalar o JAI nativo e ImageIO sobre Linux:

1. Baixar **JAI 1.1.3** escolher a arquitetura apropriada:
   1. [I586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) para sistemas de 32 bits
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) para 64 bits (mesmo se usar processadores Intel)
1. Extraia o arquivo em um diretório temporário.
1. Mexam-se! JAR arquivos para o JDK / JRE **lib/ext** pasta.
1. Mover arquivos SO para o JDK / JRE **lib/amd64** pasta.<br/>

   Por exemplo, em um 64-bit Ubuntu sistema, os passos 1-4 serão assim:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Baixar **Imagem JAI I/O 1.1**, escolher a arquitetura apropriada:
   1. [I586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) para os sistemas de 32 bits
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) para os 64 bits (mesmo se usar processadores Intel)
1. Extraia o arquivo em um diretório temporário.
1. Mexam-se! JAR arquivos para o JDK / JRE **lib/ext** pasta.
1. Mover arquivos SO para o JDK / JRE **lib/amd64** pasta.<br/>

   Por exemplo, em um 64-bit Ubuntu sistema, os passos 5-8 serão assim:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Pasta para arquivos temporários

Aspose.Words para Java usa um diretório temporário em seu computador, que é especificado via `java.io.tmpdir` propriedade do sistema. Aspose.Words para Java escreve arquivos temporários e, em seguida, remove esses arquivos assim que a renderização é concluída.

`java.io.tmpdir` é um padrão Java propriedade do sistema que também é usado por políticas de armazenamento baseadas em disco. Ele determina onde a JVM escreve arquivos temporários.
