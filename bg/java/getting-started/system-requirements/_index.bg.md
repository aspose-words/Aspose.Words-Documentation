---
title: Системни изисквания
second_title: Aspose.Words вместо Java
articleTitle: Системни изисквания
linktitle: Системни изисквания
description: "Преди да започнете да работите с Aspose.Words вместо Java, гарантира, че отговаряте на изискванията на операционната система, платформата, рамката и околната среда, така че дейностите на вашите устройства да се отчитат правилно."
type: docs
weight: 80
url: /bg/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words вместо Java не изисква продукт на трета страна като Microsoft Word да бъде инсталиран. Aspose.Words сам по себе си е двигател за създаване, промяна, преобразуване и предаване на документи в различни формати, включително Microsoft Word формат на документите.

## Поддържани операционни системи

Всяка операционна система, която може да работи Java Runtime Environment (JRE) може да работи Aspose.Words вместо Java. Следващата таблица изброява повечето, но не всички, поддържа операционни системи.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Операционна система</td>
			<td style="font-weight: bold; width:400px">Версия</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 г. Server (x64, x86)</li><li>Windows 2012 г. R2 Server (x64, x86)</li><li>Windows 2016 г. Server (x64, x86)</li><li>Windows 2019 г. Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>и други</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>MacOS версия 10.9 (Mavericks) и по-късно</li></ul></td>
		</tr>
  <tr>
			<td>Мобилен</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Поддържани клауд платформи

Aspose.Words вместо Java поддържа всички клауд платформи, които могат да работят Java заявления

## Поддържани Java Версия

Aspose.Words вместо Java Поддръжка Java 7 и по-нова. Ако сте принудени да използвате Java 6, все още пускаме отделно. JAR вместо Java 6.


## Опционални зависимости

Както казахме по-горе, Aspose.Words вместо Java Изисква *only* на Java Runtime Environment и не е нужно да инсталирате допълнителни библиотеки.

Понякога обаче може да се наложи да добавите библиотеки на трети страни:

- JogAmp JOGL библиотека за хардуерни ускорени OpenGL изображения. Библиотеката е включена в буквите POM файл като външна зависимост. Можете да редактирате POM файл за запазване JOGL буркани, необходими само за вашата платформа. Или можете да премахнете зависимостта, ако не се нуждаете от хардуер ускорено OpenGL предаване.
- HarfBuzz шрифтов двигател. Тя вече е включена в JRE 9 и по-нова. Ако използвате JRE 8 или по-стари, можете да използвате зависимостта форма-харфбъз- плъгин в нашия POM Досие. В противен случай, можете да премахнете зависимостта.
- Java Advanced Imaging (JAI) да поддържа изображения на TIFF. TIFF изображенията не се поддържат от Java На 8 години. За поддръжка на TIFF в стари Java околна среда, Aspose.Words вместо Java зависи от [Java Advanced Imaging (JAI) Опаковка](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) от Oracle. Ще опишем как да инсталираме JAI по-долу.

### Как да инсталирате JAI на Windows

Следвайте тези стъпки, за да инсталирате местните JAI и ImageIO на Windows:

1. Изтеглете **JAI 1.1.3**.
   По време на писане, само 32-битовата версия на инсталатора е на разположение, така че ако използвате JDK трябва да изтеглите [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) и ако използвате JRE трябва да изтеглите [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Пусни инсталатора и го насочи към директорията, където е инсталиран JDK/JRE.
1. Изтеглете **JAI Image I/O 1.1**.
   По време на писане, само 32-битовата версия на инсталатора е на разположение, така че ако използвате JDK трябва да изтеглите [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) и ако използвате JRE трябва да изтеглите [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Пусни инсталатора и го насочи към директорията, където е инсталиран JDK/JRE.

### Как да инсталирате JAI на Linux

Следвайте тези стъпки, за да инсталирате местните JAI и ImageIO на Linux:

1. Изтеглете **JAI 1.1.3** избор на подходяща архитектура:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) за 32-битови системи
   1. [amb64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) за 64-битови (дори ако се използват процесори с Intel)
1. Изтеглете файла във временна директория.
1. Движение. JAR файлове към JDK/JRE **lib/ext** папка.
1. Преместване на файловете в JDK/JRE **lib/amd64** папка.<br/>

   Например, на 64-битов Ubuntu система, стъпки 1-4 ще изглежда така:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Изтеглете **JAI Image I/O 1.1**, избор на подходяща архитектура:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) за 32-битовите системи
   1. [amb64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) за 64-битовите (дори ако се използват процесори с Intel)
1. Изтеглете файла във временна директория.
1. Движение. JAR файлове към JDK/JRE **lib/ext** папка.
1. Преместване на файловете в JDK/JRE **lib/amd64** папка.<br/>

   Например, на 64-битов Ubuntu система, стъпки 5-8 ще изглеждат така:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Папка за временни файлове

Aspose.Words вместо Java използва временна директория на вашия компютър, която е посочена чрез `java.io.tmpdir` собственост на системата. Aspose.Words вместо Java пише временни файлове и след това премахва тези файлове веднага след като преводът е завършен.

`java.io.tmpdir` е стандарт Java собственост на системата, която също се използва от политики за съхранение на дискова основа. Той определя къде JVM пише временни файлове.
