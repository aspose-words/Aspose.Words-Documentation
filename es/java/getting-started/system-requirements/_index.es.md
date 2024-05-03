---
title: Requisitos del sistema
second_title: Aspose.Words para Java
articleTitle: Requisitos del sistema
linktitle: Requisitos del sistema
description: "Antes de empezar a trabajar con Aspose.Words para Java, asegúrese de cumplir con el sistema operativo, la plataforma, los marcos y los requisitos ambientales para que las actividades en sus dispositivos sean debidamente contabilizadas."
type: docs
weight: 80
url: /es/java/system-requirements/
---

Aspose.Words para Java no requiere productos de terceros como Microsoft Word para ser instalado. Aspose.Words es un motor para crear, modificar, convertir y renderizar documentos en diversos formatos, incluyendo Microsoft Word formatos de documentos.

## Sistemas operativos compatibles

Cualquier sistema operativo que pueda ejecutar Java Runtime Environment (JRE) puede funcionar Aspose.Words para Java. Las siguientes tablas enumeran la mayoría, pero no todas, soportan Sistemas Operativos.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Sistema operativo</td>
			<td style="font-weight: bold; width:400px">Versiones</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>y otros</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS versión 10.9Mavericks) y más tarde</li></ul></td>
		</tr>
  <tr>
			<td>Móvil</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Plataformas de cloud compatibles

Aspose.Words para Java soporta cualquier plataforma de nube que pueda funcionar Java aplicaciones

## Apoyo Java Versiones

Aspose.Words para Java soportes Java 7 y más nuevo. Si te obligan a usar Java 6, todavía liberamos un separado JAR para Java 6.


## Dependencias optativas

Como hemos dicho anteriormente, Aspose.Words para Java Requisitos *only* el Java Runtime Environment, y usted no necesita instalar ninguna biblioteca adicional.

Sin embargo, a veces hay situaciones donde es posible que necesite añadir bibliotecas de terceros:

- JogAmp JOGL biblioteca para la renderización OpenGL acelerada del hardware. La biblioteca está incluida en las palabras de la aspose POM archivo como dependencia externa. Puedes editar POM archivo para preservar los frascos JOGL requeridos para su plataforma solamente. O puede eliminar la dependencia si no necesita hardware de renderizado OpenGL acelerado.
- HarfBuzz motor de fuentes. Ya está incluido en JRE 9 y más reciente. Si está usando JRE 8 o más, puede utilizar la dependencia de configuración-harfbuzz-plugin en nuestra POM archivo. De lo contrario, puede eliminar la dependencia.
- Java Advanced Imaging (JAI) para apoyar las imágenes TIFF. Las imágenes TIFF no son soportadas por Java 8 años y más. Para soporte TIFF en viejo Java entornos, Aspose.Words para Java depende de [Java Advanced Imaging (JAI) paquete](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) desde Oracle. Describiremos cómo instalar JAI a continuación.

### Cómo instalar JAI en Windows

Siga estos pasos para instalar JAI nativo y ImageIO on Windows:

1. Descarga **JAI 1.1.3**.
   En el momento de escribir, sólo está disponible la versión de 32 bits del instalador, por lo que si utiliza un JDK necesita descargar [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) y si utiliza un JRE necesita descargar [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Ejecute el instalador y apunte al directorio donde se instala JDK/JRE.
1. Descarga **JAI Image I/O 1.1**.
   En el momento de escribir, sólo está disponible la versión de 32 bits del instalador, por lo que si utiliza un JDK necesita descargar [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) y si utiliza un JRE necesita descargar [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Ejecute el instalador y apunte al directorio donde se instala JDK/JRE.

### Cómo instalar JAI en Linux

Siga estos pasos para instalar JAI nativo y ImageIO on Linux:

1. Descarga **JAI 1.1.3** elegir la arquitectura apropiada:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) para sistemas de 32 bits
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) para los de 64 bits (incluso si utiliza procesadores Intel)
1. Extraiga el archivo en un directorio temporal.
1. Moveos JAR archivos al JDK/JRE **lib/ext** carpeta.
1. Mover archivos SO al JDK/JRE **lib/amd64** carpeta.<br/>

   Por ejemplo, en un 64-bit Ubuntu sistema, pasos 1-4 se verá así:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Descarga **JAI Image I/O 1.1**, elegir la arquitectura apropiada:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) para los sistemas de 32 bits
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) para los 64 bits (incluso si utiliza procesadores Intel)
1. Extraiga el archivo en un directorio temporal.
1. Moveos JAR archivos al JDK/JRE **lib/ext** carpeta.
1. Mover archivos SO al JDK/JRE **lib/amd64** carpeta.<br/>

   Por ejemplo, en un 64-bit Ubuntu sistema, pasos 5-8 se verá así:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Carpeta para archivos temporales

Aspose.Words para Java utiliza un directorio temporal en su computadora, que se especifica a través de `java.io.tmpdir` propiedad del sistema. Aspose.Words para Java escribe archivos temporales y luego elimina estos archivos tan pronto como se complete el renderizado.

`java.io.tmpdir` es un estándar Java propiedad del sistema que también se utiliza por políticas de almacenamiento basadas en disco. Determina dónde el JVM escribe archivos temporales.
