---
title: Системные требования
second_title: Aspose.Words для Java
articleTitle: Системные требования
linktitle: Системные требования
description: "Прежде чем начать работать с Aspose.Words для Java, Убедитесь, что вы соответствуете требованиям операционной системы, платформы, фреймворков и окружающей среды, чтобы действия на ваших устройствах были должным образом учтены."
type: docs
weight: 80
url: /ru/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words для Java не требует сторонних продуктов, таких как Microsoft Word для установки. Aspose.Words сам по себе является двигателем для создания, изменения, преобразования и рендеринга документов в различных форматах, в том числе Microsoft Word Форматы документов.

## Поддерживаемые операционные системы

Любая операционная система, которая может Java Runtime Environment (JRE) может работать Aspose.Words для Java. В следующей таблице перечислены большинство, но не все поддерживаемые операционные системы.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Операционная система</td>
			<td style="font-weight: bold; width:400px">Версии</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 год Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 год Server (x64, x86)</li><li>Windows 2012 год R2 Server (x64, x86)</li><li>Windows 2016 год Server (x64, x86)</li><li>Windows 2019 год Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>Открытие</li><li>CentOS</li><li>и другие</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS версии 10.9Mavericks) и позднее</li></ul></td>
		</tr>
  <tr>
			<td>Мобильный</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Поддерживаемые облачные платформы

Aspose.Words для Java Поддерживает любые облачные платформы, которые могут работать Java приложения

## Поддерживаемый Java Версии

Aspose.Words для Java поддержка Java 7 и более новые. Если вы вынуждены использовать Java 6, мы выпустим отдельный JAR для Java 6.


## Факультативные зависимости

Как мы уже говорили выше, Aspose.Words для Java требует *only* тот Java Среда выполнения и вам не нужно устанавливать дополнительные библиотеки.

Однако иногда бывают ситуации, когда вам может потребоваться добавить сторонние библиотеки:

- JogAmp JOGL Библиотека для аппаратного ускоренного рендеринга OpenGL. Библиотека включена в слова-предложения POM Файл как внешняя зависимость. Вы можете редактировать POM Файл для сохранения JOGL-банок, необходимых только для вашей платформы. Или вы можете удалить зависимость, если вам не нужен аппаратный ускоренный рендеринг OpenGL.
- HarfBuzz Двигатель шрифта. Он уже включен в JRE 9 и более новый. Если вы используете JRE 8 или старше, вы можете использовать зависимость от shaping-harfbuzz-plugin в нашей системе. POM Файл. В противном случае можно снять зависимость.
- Java Advanced Imaging (JAI) Поддержка изображений TIFF. Фотографии TIFF не поддерживаются Java 8 и старше. Поддержка TIFF в старину Java окружающей среды, Aspose.Words для Java зависит от [Java Advanced Imaging (JAI) пакет](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) из Oracle. Ниже мы расскажем, как установить JAI.

### Как установить JAI Windows

Следуйте этим шагам, чтобы установить нативный JAI и ImageIO на Windows:

1.Загрузить **ГАИ 1.1.3**.
   На момент написания статьи доступна только 32-разрядная версия установщика, поэтому, если вы используете JDK, вам нужно скачать [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) Если вы используете JRE, вам нужно скачать [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Запустите установщик и направьте его в каталог, где установлен JDK/JRE.
1.Загрузить **Изображение: I/O 1.1**.
   На момент написания статьи доступна только 32-разрядная версия установщика, поэтому, если вы используете JDK, вам нужно скачать [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) Если вы используете JRE, вам нужно скачать [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Запустите установщик и направьте его в каталог, где установлен JDK/JRE.

### Как установить JAI Linux

Следуйте этим шагам, чтобы установить нативный JAI и ImageIO на Linux:

1.Загрузить **ГАИ 1.1.3** Выбор подходящей архитектуры:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) для 32-битных систем
   1. [AMD64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) 64-разрядные (даже с использованием процессоров Intel)
1. Извлеките файл во временный каталог.
1. Двигаться JAR Файлы для JDK/JRE **lib/ext** папка.
1. Переместить файлы SO в JDK/JRE **lib/amd64** папка.<br/>

   Например, на 64-битном Ubuntu Шаги 1-4 будут выглядеть так:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1.Загрузить **Изображение: I/O 1.1**, Выбор подходящей архитектуры:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) Для 32-битных систем
   1. [AMD64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) 64-разрядные (даже с использованием процессоров Intel)
1. Извлеките файл во временный каталог.
1. Двигаться JAR Файлы для JDK/JRE **lib/ext** папка.
1. Переместить файлы SO в JDK/JRE **lib/amd64** папка.<br/>

   Например, на 64-битном Ubuntu Шаги 5-8 будут выглядеть так:<br/>
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

Aspose.Words для Java использует временный каталог на вашем компьютере, который указывается через `java.io.tmpdir` Системная собственность. Aspose.Words для Java записывает временные файлы, а затем удаляет эти файлы, как только рендеринг завершен.

`java.io.tmpdir` является стандартом Java свойство системы, которое также используется дисковыми политиками хранения. Он определяет, где JVM пишет временные файлы.
