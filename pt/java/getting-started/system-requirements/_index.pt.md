---
title: Requisitos Do Sistema
second_title: Aspose.Words para Java
articleTitle: Requisitos Do Sistema
linktitle: Requisitos Do Sistema
description: "Antes de começar a trabalhar com Aspose.Words para Java, Certifique-se de que cumpre os requisitos de sistema operativo, Plataforma, estruturas e ambiente para que as atividades nos seus dispositivos sejam devidamente contabilizadas."
type: docs
weight: 80
url: /pt/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Para Java não requer a instalação de produtos de terceiros, como Microsoft Word. Aspose.Words em si é um mecanismo para criar, modificar, converter e renderizar documentos em vários formatos, incluindo Microsoft Word formatos de documentos.

## Sistemas Operativos Suportados

Qualquer sistema operacional que possa executar o Java Runtime Environment (JRE) pode executar Aspose.Words para Java. A tabela a seguir lista a maioria, mas não todos, os sistemas operacionais suportados.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Sistema Operativo</td>
			<td style="font-weight: bold; width:400px">Versões</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>e outros</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS Versão 10.9 (Mavericks) e posterior</li></ul></td>
		</tr>
  <tr>
			<td>Móvel</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Plataformas Em Nuvem Suportadas

Aspose.Words for Java suporta quaisquer plataformas de nuvem que possam executar aplicações Java.

## Java Versões Suportadas

Aspose.Words para Java Suporta Java 7 e mais recentes. Se você for forçado a usar Java 6, ainda liberaremos um JAR separado para Java 6.


## Dependências Opcionais

Como dissemos acima, Aspose.Words para Java Requer *only* o ambiente de tempo de execução Java e você não precisa instalar nenhuma biblioteca adicional.

No entanto, às vezes há situações em que você pode precisar adicionar bibliotecas de terceiros:

- JogAmp JOGL biblioteca para renderização acelerada por hardware OpenGL. A biblioteca está incluída no ficheiro aspose-words POM como uma dependência externa. Você pode editar o arquivo POM para preservar JOGL jars necessários apenas para sua plataforma. Ou você pode remover a dependência se não precisar de Renderização acelerada por hardware OpenGL.
- HarfBuzz motor de fonte. Já está incluído em JRE 9 e mais recente. Se você estiver usando JRE 8 ou mais, poderá usar a dependência shaping-harfbuzz-plugin em nosso arquivo POM. Caso contrário, você pode remover a dependência.
- Java Imagem avançada (JAI) para suportar TIFF imagens. TIFF as imagens não são suportadas por Java 8 e anteriores. Para TIFF suporte em ambientes antigos Java, Aspose.Words para Java depende do [Java pacote de imagem avan extraterritorial (JAI)](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) da Oracle. Descreveremos como instalar JAI abaixo.

### Como instalar JAI em Windows

Siga estes passos para instalar o nativo JAI e ImageIO em Windows:

1. Baixar **JAI 1.1.3**.
   No momento da redação deste artigo, apenas a versão de 32 bits do instalador está disponível, portanto, se você usar um JDK, precisará fazer o download [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) e se você usar um JRE você precisa baixar [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Execute o instalador e aponte-o para o directório onde JDK/JRE está instalado.
1. Baixar **JAI Image I/O 1.1**.
   No momento da redação deste artigo, apenas a versão de 32 bits do instalador está disponível, portanto, se você usar um JDK, precisará fazer o download [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) e se você usar um JRE você precisa baixar [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Execute o instalador e aponte-o para o directório onde JDK/JRE está instalado.

### Como instalar JAI em Linux

Siga estes passos para instalar o nativo JAI e ImageIO em Linux:

1. Download **JAI 1.1.3** escolhendo a arquitetura apropriada:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) para sistemas de 32 bits
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) para os de 64 bits (mesmo que utilizem processadores Intel)
1. Extraia o ficheiro para um directório temporário.
1. Mover JAR ficheiros para o JDK/JRE **lib/ext** pasta.
1. Mover SO ficheiros para o JDK/JRE **lib/amd64** pasta.<br>

   Por exemplo, em um sistema de 64 bits Ubuntu, as etapas 1-4 terão a seguinte aparência:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Download **JAI Image I/O 1.1**, escolhendo a arquitetura apropriada:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) para os sistemas de 32 bits
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) para os de 64 bits (mesmo que utilizem processadores Intel)
1. Extraia o ficheiro para um directório temporário.
1. Mover JAR ficheiros para o JDK/JRE **lib/ext** pasta.
1. Mover SO ficheiros para o JDK/JRE **lib/amd64** pasta.<br>

   Por exemplo, em um sistema de 64 bits Ubuntu, as etapas 5-8 terão a seguinte aparência:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Pasta para ficheiros temporários

Aspose.Words for Java utiliza um directório temporário no seu computador, que é especificado através da propriedade do sistema `java.io.tmpdir`. Aspose.Words for Java grava ficheiros temporários e, em seguida, remove estes ficheiros assim que a renderização é concluída.

`java.io.tmpdir` é uma propriedade de sistema padrão Java que também é usada por Políticas de armazenamento baseadas em disco. Ele determina onde o JVM grava arquivos temporários.
