---
title: Вимоги до системи
second_title: Aspose.Words для Java
articleTitle: Вимоги до системи
linktitle: Вимоги до системи
description: "Перед тим як розпочати роботу Aspose.Words для Java, Забезпечте, що ви відповідаєте операційній системі, платформі, рамки та вимоги до навколишнього середовища, щоб діяльність на ваших пристроях була належним чином зарахована."
type: docs
weight: 80
url: /uk/java/system-requirements/
---

Aspose.Words для Java не потрібно сторонніх товарів, таких як Microsoft Word бути встановленими. Aspose.Words це двигун для створення, редагування, перетворення та надання документів у різних форматах, включаючи Microsoft Word формати документів.

## Підтримувані операційні системи

Будь-яка операційна система, яка може запустити Java Запуск навколишнього середовища (JRE) може працювати Aspose.Words для Javaй У списку нижче, але не всі, підтримувані операційні системи.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Операційна система</td>
			<td style="font-weight: bold; width:400px">Версія</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 р. Server (х64, х86)</li><li>Windows 2008 Server (х64, х86)</li><li>Windows 2012 рік Server (х64, х86)</li><li>Windows 2012 рік R2 Server (х64, х86)</li><li>Windows 2016 рік Server (х64, х86)</li><li>Windows 2019 рік Server (х64, х86)</li><li>Windows XP (х64, х86)</li><li>Windows Vista (х64, х86)</li><li>Windows 7 (х64, х86)</li><li>Windows 8, 8.1 (х64, x86)</li><li>Windows 10 (х64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>Відкриті</li><li>CentOS</li><li>та інші</li></ul></td>
		</tr>
  <tr>
			<td>М'ясо</td>
			<td><ul><li>macOS версія 10.9 (Mavericks) і пізніше</li></ul></td>
		</tr>
  <tr>
			<td>Мобільний</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Підтримка хмарних платформ

Aspose.Words для Java підтримує будь-які хмарні платформи, які можуть запустити Java додатки

## Підтримувані Java Версія

Aspose.Words для Java опори Java 7 і новачок. Якщо ви змушені використовувати Java 6, ми ще випускаємо окрему JAR для Java 6. Жнівень


## Додаткові залежності

Як ми говорили вище, Aspose.Words для Java Задоволення *only* Про нас Java Ви не повинні встановлювати додаткові бібліотеки.

Однак іноді виникають ситуації, де потрібно додати сторонні бібліотеки:

- до JogAmp JOGL Бібліотека для апаратного прискорення OpenGL рендерингу. Бібліотека включено до фраз POM файл як зовнішній залежностей. Ви можете редагувати POM файл для збереження JOGL банки, необхідні для вашої платформи тільки. Або ви можете видалити залежність, якщо вам не потрібно обладнання прискорити OpenGL рендеринг.
- до HarfBuzz font двигун. Він вже включений в JRE 9 і новіший. Якщо ви використовуєте JRE 8 або старше, ви можете використовувати струнку-harfbuzz-plugin залежності в нашій країні POM файл. В іншому випадку можна видалити залежність.
- до Java Advanced Imaging (JAI) для підтримки зображень TIFF. Зображення TIFF не підтримується Java 8 і старше. Для підтримки TIFF у старій Java середовища, Aspose.Words для Java залежить від [Java Advanced Imaging (JAI) Пакети](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) з Oracleй Ми розповімо, як встановити JAI нижче.

### Як встановити JAI на Windows

Перейдіть за цими кроками, щоб встановити рідний JAI і ImageIO на Windows:

1. Завантажити **ДЖА 1.1.3**й
   У момент написання лише 32-розрядна версія інсталятора доступна, тому якщо ви використовуєте JDK для завантаження [Яй-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) і якщо ви використовуєте JRE, вам потрібно завантажити [Яй-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe)й
1,1 км Запустіть інсталятор і вказуйте його до каталогу, де встановлюється JDK/JRE.
1. Завантажити **JAI Зображення I / O 1.1**й
   У момент написання лише 32-розрядна версія інсталятора доступна, тому якщо ви використовуєте JDK для завантаження [JavaРеєстрація API Веб-сайт Go1.13.8](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) і якщо ви використовуєте JRE, вам потрібно завантажити [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1,1 км Запустіть інсталятор і вказуйте його до каталогу, де встановлюється JDK/JRE.

### Як встановити JAI на Linux

Перейдіть за цими кроками, щоб встановити рідний JAI і ImageIO на Linux:

1. Завантажити **ДЖА 1.1.3** вибір відповідної архітектури:
   1,1 км [й586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) для 32-бітних систем
   1,1 км [коди64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) для 64-розрядних (навіть якщо використовувати процесори Intel)
1,1 км Витягти файл в тимчасовий каталог.
1,1 км Мов JAR Файли до JDK/JRE **ліворуч** папка.
1,1 км Перемістити SO файли в JDK / JRE **lib/amd64** папка.<br/>

   Наприклад, на 64-розрядному Ubuntu система, кроки 1-4 будуть виглядати так:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Завантажити **JAI Зображення I / O 1.1**, вибір відповідної архітектури:
   1,1 км [й586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) для 32-бітних систем
   1,1 км [коди64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) для 64-бітних (навіть якщо використовувати процесори Intel)
1,1 км Витягти файл в тимчасовий каталог.
1,1 км Мов JAR Файли до JDK/JRE **ліворуч** папка.
1,1 км Перемістити SO файли в JDK / JRE **lib/amd64** папка.<br/>

   Наприклад, на 64-розрядному Ubuntu система, кроки 5-8 будуть виглядати так:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Складання для Тимчасових файлів

Aspose.Words для Java використовує тимчасовий каталог на вашому комп'ютері, який вказаний через `java.io.tmpdir` системне майно. Aspose.Words для Java напишіть тимчасові файли, а потім видаліть ці файли, як тільки це буде завершено.

`java.io.tmpdir` стандарт Java системне майно, яке також використовується політиками зберігання диска. Визначається, де JVM записує тимчасові файли.
