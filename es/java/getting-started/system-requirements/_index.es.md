---
title: Requisitos del Sistema
second_title: Aspose.Words por Java
articleTitle: Requisitos del Sistema
linktitle: Requisitos del Sistema
description: "Antes de comenzar a trabajar con Aspose.Words para Java, asegúrese de cumplir con los requisitos del sistema operativo, la plataforma, los marcos y el entorno para que las actividades en sus dispositivos se contabilicen correctamente."
type: docs
weight: 80
url: /es/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words para Java no requiere que se instale un producto de terceros como Microsoft Word. Aspose.Words en sí mismo es un motor para crear, modificar, convertir y renderizar documentos en varios formatos, incluidos los formatos de documentos Microsoft Word.

## Sistemas Operativos Compatibles

Cualquier sistema operativo que pueda ejecutar el entorno de ejecución Java (JRE) puede ejecutarse Aspose.Words para Java. La siguiente tabla enumera la mayoría de los sistemas operativos compatibles, pero no todos.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Sistema Operativo</td>
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
			<td><ul><li>macOS versión 10.9 (Mavericks) y posteriores</li></ul></td>
		</tr>
  <tr>
			<td>Móvil</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Plataformas en la Nube Compatibles

Aspose.Words para Java admite cualquier plataforma en la nube que pueda ejecutar Java aplicaciones.

## Versiones Java compatibles

Aspose.Words para Java admite Java 7 y versiones posteriores. Si se ve obligado a usar Java 6, aún publicamos un JAR separado para Java 6.


## Dependencias Opcionales

Como dijimos anteriormente, Aspose.Words para Java requiere *only* el Entorno de ejecución Java, y no necesita instalar ninguna biblioteca adicional.

Sin embargo, a veces hay situaciones en las que es posible que deba agregar bibliotecas de terceros:

- JogAmp JOGL biblioteca para renderizado acelerado por hardware OpenGL. La biblioteca se incluye en el archivo aspose-words POM como una dependencia externa. Puede editar el archivo POM para conservar JOGL frascos necesarios solo para su plataforma. O puede eliminar la dependencia si no necesita procesamiento OpenGL acelerado por hardware.
- Motor de fuentes HarfBuzz. Ya está incluido en JRE 9 y posteriores. Si está utilizando JRE 8 o una versión anterior, puede usar la dependencia shaping-harfbuzz-plugin en nuestro archivo POM. De lo contrario, puede eliminar la dependencia.
- Java Imágenes avanzadas (JAI) para admitir TIFF imágenes. TIFF las imágenes no son compatibles con Java 8 y versiones anteriores. Para la compatibilidad con TIFF en entornos Java antiguos, Aspose.Words para Java depende de la [Paquete de Java Imágenes avanzadas (JAI)](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) de Oracle. Describiremos cómo instalar JAI a continuación.

### Cómo instalar JAI en Windows

Siga estos pasos para instalar JAI y ImageIO nativos en Windows:

1. Descargar **JAI 1.1.3**.
   En el momento de escribir este artículo, solo está disponible la versión de 32 bits del instalador, por lo que si usa un JDK, debe descargarlo [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) y si usas un JRE necesitas descargar [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Ejecute el instalador y apúntelo al directorio donde está instalado JDK / JRE.
1. Descargar **JAI Image I/O 1.1**.
   En el momento de escribir este artículo, solo está disponible la versión de 32 bits del instalador, por lo que si usa un JDK, debe descargarlo [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) y si usas un JRE necesitas descargar [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Ejecute el instalador y apúntelo al directorio donde está instalado JDK / JRE.

### Cómo instalar JAI en Linux

Siga estos pasos para instalar JAI y ImageIO nativos en Linux:

1. Descargar **JAI 1.1.3** elegir la arquitectura adecuada:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) para sistemas de 32 bits
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) para los de 64 bits (incluso si usa procesadores Intel)
1. Extraiga el archivo en un directorio temporal.
1. Mueva JAR archivos al JDK/JRE **lib/ext** carpeta.
1. Mueva SO archivos al JDK/JRE **lib/amd64** carpeta.<br>

   Por ejemplo, en un sistema Ubuntu de 64 bits, los pasos 1 a 4 se verán así:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Descargue **JAI Image I/O 1.1**, eligiendo la arquitectura adecuada:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) para los sistemas de 32 bits
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) para los de 64 bits (incluso si usa procesadores Intel)
1. Extraiga el archivo en un directorio temporal.
1. Mueva JAR archivos al JDK/JRE **lib/ext** carpeta.
1. Mueva SO archivos al JDK/JRE **lib/amd64** carpeta.<br>

   Por ejemplo, en un sistema Ubuntu de 64 bits, los pasos 5 a 8 se verán así:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Carpeta para Archivos Temporales

Aspose.Words para Java usa un directorio temporal en su computadora, que se especifica a través de la propiedad del sistema `java.io.tmpdir`. Aspose.Words para Java escribe archivos temporales y luego elimina estos archivos tan pronto como se completa el procesamiento.

`java.io.tmpdir` es una propiedad estándar del sistema Java que también utilizan las directivas de almacenamiento basadas en disco. Determina dónde escribe JVM los archivos temporales.
