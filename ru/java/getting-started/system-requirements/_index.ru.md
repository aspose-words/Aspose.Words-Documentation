---
title: Системные требования
second_title: Aspose.Words для Java
articleTitle: Системные требования
linktitle: Системные требования
description: "Прежде чем приступить к работе с Aspose.Words вместо Java, убедитесь, что вы соответствуете требованиям операционной системы, платформы, фреймворков и среды, чтобы должным образом учитывать действия на ваших устройствах."
type: docs
weight: 80
url: /ru/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words для Java не требуется установка стороннего продукта, такого как Microsoft Word. Aspose.Words сам по себе является движком для создания, изменения, преобразования и визуализации документов в различных форматах, включая форматы документов Microsoft Word.

## Поддерживаемые операционные системы

Любая операционная система, которая может запускать среду выполнения Java (JRE), может запускать Aspose.Words для Java. В следующей таблице перечислено большинство, но не все поддерживаемые операционные системы.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Операционная система</td>
			<td style="font-weight: bold; width:400px">Версии</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>и другие</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS версия 10.9 (Mavericks) и более поздние версии</li></ul></td>
		</tr>
  <tr>
			<td>Мобильный</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Поддерживаемые облачные платформы

Aspose.Words для Java поддерживает любые облачные платформы, которые могут запускать Java приложения.

## Поддерживаемые версии Java

Aspose.Words для Java поддерживает Java 7 и более поздние версии. Если вы вынуждены использовать Java 6, мы все равно выпустим отдельную версию JAR для Java 6.


## Необязательные зависимости

Как мы указывали выше, для Aspose.Words для Java требуется *only* среда выполнения Java, и вам не нужно устанавливать какие-либо дополнительные библиотеки.

Однако иногда возникают ситуации, когда вам может потребоваться добавить сторонние библиотеки:

- Библиотека JogAmp JOGL для аппаратного ускорения рендеринга OpenGL. Библиотека включена в файл aspose-words POM в качестве внешней зависимости. Вы можете отредактировать файл POM, чтобы сохранить JOGL jar, необходимые только для вашей платформы. Или вы можете удалить зависимость, если вам не нужен рендеринг с аппаратным ускорением OpenGL.
- HarfBuzz движок шрифтов. Он уже включен в JRE 9 и более поздние версии. Если вы используете JRE 8 или более старые версии, вы можете использовать зависимость shaping-harfbuzz-plugin в нашем файле POM. В противном случае вы можете удалить зависимость.
- Java Расширенная обработка изображений (JAI) для поддержки TIFF изображений. TIFF изображения не поддерживаются в Java 8 и более старых версиях. Поддержка TIFF в старых Java средах, Aspose.Words для Java зависит от [Java Пакет расширенной обработки изображений (JAI)](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) от Oracle. Ниже мы опишем, как установить JAI.

### Как установить JAI на Windows

Выполните следующие действия, чтобы установить собственные JAI и ImageIO на Windows:

1. Скачать **JAI 1.1.3**.
   На момент написания этой статьи доступна только 32-разрядная версия установщика, поэтому, если вы используете JDK, вам необходимо загрузить [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) и если вы используете JRE, вам нужно загрузить [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Запустите программу установки и направьте ее в каталог, в котором установлен JDK/JRE.
1. Скачать **JAI Image I/O 1.1**.
   На момент написания этой статьи доступна только 32-разрядная версия установщика, поэтому, если вы используете JDK, вам необходимо загрузить [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) и если вы используете JRE, вам нужно загрузить [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Запустите программу установки и направьте ее в каталог, в котором установлен JDK/JRE.

### Как установить JAI на Linux

Выполните следующие действия, чтобы установить собственные JAI и ImageIO на Linux:

1. Загрузка **JAI 1.1.3** выбор подходящей архитектуры:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) для 32-разрядных систем
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) для 64-разрядных процессоров (даже если используются процессоры Intel)
1. Извлеките файл во временный каталог.
1. Переместите JAR файлы в папку JDK/JRE **lib/ext**.
1. Переместите SO файла в папку JDK/JRE **lib/amd64**.<br>

   Например, в 64-разрядной системе Ubuntu шаги 1-4 будут выглядеть следующим образом:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Загрузите **JAI Image I/O 1.1**, выбрав подходящую архитектуру:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) для 32-разрядных систем
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) для 64-разрядных процессоров (даже если используются процессоры Intel)
1. Извлеките файл во временный каталог.
1. Переместите JAR файлы в папку JDK/JRE **lib/ext**.
1. Переместите SO файла в папку JDK/JRE **lib/amd64**.<br>

   Например, в 64-разрядной системе Ubuntu шаги 5-8 будут выглядеть следующим образом:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Папка для временных файлов

Aspose.Words for Java использует временный каталог на вашем компьютере, который указан в системном свойстве `java.io.tmpdir`. Aspose.Words for Java записывает временные файлы, а затем удаляет их, как только завершается рендеринг.

`java.io.tmpdir` - это стандартное системное свойство Java, которое также используется политиками хранения на основе дисков. Оно определяет, куда JVM записывает временные файлы.
