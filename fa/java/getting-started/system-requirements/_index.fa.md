---
title: الزامات سیستم
second_title: Aspose.Words برای Java
articleTitle: الزامات سیستم
linktitle: الزامات سیستم
description: "قبل از شروع کار با Aspose.Words برای Java، اطمینان حاصل کنید که سیستم عامل، پلتفرم، چارچوب ها و الزامات محیط را برآورده می کنید تا فعالیت های دستگاه های شما به درستی محاسبه شود."
type: docs
weight: 80
url: /fa/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words برای Java نیازی به نصب محصول شخص ثالث مانند Microsoft Word ندارد. Aspose.Words خود یک موتور برای ایجاد، تغییر، تبدیل و ارائه اسناد در فرمت های مختلف، از جمله Microsoft Word فرمت های سند است.

## سیستم عامل های پشتیبانی شده

هر سیستم عاملی که بتواند محیط Java Runtime (JRE) را اجرا کند می تواند Aspose.Words را برای Java اجرا کند. جدول زیر بیشتر، اما نه همه، سیستم عامل های پشتیبانی شده را لیست می کند.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">سیستم عامل</td>
			<td style="font-weight: bold; width:400px">نسخه ها</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>و دیگران</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS نسخه 10.9 (Mavericks)</li></ul></td>
		</tr>
  <tr>
			<td>موبایل</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## سیستم عامل های ابری پشتیبانی شده

Aspose.Words برای Java از هر پلتفرم ابری که می تواند برنامه های Java را اجرا کند پشتیبانی می کند.

## نسخه های پشتیبانی شده Java

Aspose.Words برای Java پشتیبانی از Java 7 و جدیدتر. اگر شما مجبور به استفاده از Java 6 هستید، ما هنوز یک JAR جداگانه برای Java 6 منتشر می کنیم.


## وابستگی های اختیاری

همانطور که در بالا گفتیم، Aspose.Words برای Java نیاز به *only* محیط Java زمان اجرا دارد، و شما نیازی به نصب هیچ کتابخانه اضافی ندارید.

با این حال، گاهی اوقات شرایطی وجود دارد که ممکن است نیاز به اضافه کردن کتابخانه های شخص ثالث داشته باشید:

- JogAmp JOGL کتابخانه برای سخت افزار شتاب OpenGL رندر. کتابخانه در فایل aspose-words POM به عنوان یک وابستگی خارجی گنجانده شده است. شما می توانید فایل POM را برای حفظ JOGL شیشه های مورد نیاز برای پلتفرم خود ویرایش کنید. یا شما می توانید وابستگی را حذف کنید اگر شما نیاز به سخت افزار شتاب OpenGL رندر.
- HarfBuzz موتور فونت. این در حال حاضر در JRE 9 و جدیدتر گنجانده شده است. اگر از JRE 8 یا بالاتر استفاده می کنید، می توانید از وابستگی shaping-harfbuzz-plugin در فایل POM ما استفاده کنید. در غیر این صورت می توانید وابستگی را از بین ببرید.
- Java تصویربرداری پیشرفته (JAI) برای پشتیبانی از TIFF تصاویر. TIFF تصاویر توسط Java 8 و بالاتر پشتیبانی نمی شوند. برای TIFF پشتیبانی در محیط های قدیمی Java، Aspose.Words برای Java بستگی به [Java بسته تصویربرداری پیشرفته (JAI)](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) از Oracle. ما در زیر نحوه نصب JAI را شرح خواهیم داد.

### نحوه نصب JAI روی Windows

این مراحل را برای نصب native JAI و ImageIO در Windowsدنبال کنید:

1. دانلود **JAI 1.1.3**.
   در زمان نوشتن این مقاله، تنها نسخه 32 بیتی نصب کننده در دسترس است، بنابراین اگر از JDK استفاده می کنید، باید دانلود کنید [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) و اگر از JRE استفاده می کنید باید دانلود کنید [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. نصب کننده را اجرا کنید و آن را به دایرکتوری که JDK/JRE نصب شده است هدایت کنید.
1. دانلود **JAI Image I/O 1.1**.
   در زمان نوشتن این مقاله، تنها نسخه 32 بیتی نصب کننده در دسترس است، بنابراین اگر از JDK استفاده می کنید، باید دانلود کنید [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) و اگر از JRE استفاده می کنید باید دانلود کنید [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. نصب کننده را اجرا کنید و آن را به دایرکتوری که JDK/JRE نصب شده است هدایت کنید.

### نحوه نصب JAI روی Linux

این مراحل را برای نصب native JAI و ImageIO در Linuxدنبال کنید:

1. دانلود **JAI 1.1.3** انتخاب معماری مناسب:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) برای سیستم های 32 بیتی
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) برای پردازنده های 64 بیتی (حتی اگر از پردازنده های اینتل استفاده کنید)
1. فایل را به یک دایرکتوری موقت استخراج کنید.
1. فایل های JAR را به JDK/JRE **lib/ext** پوشه.
1. فایل های SO را به JDK/JRE **lib/amd64** پوشه.<br>

   برای مثال، در یک سیستم 64 بیتی Ubuntu، مراحل 1-4 به این شکل خواهد بود:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. دانلود **JAI Image I/O 1.1**, انتخاب معماری مناسب:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) برای سیستم های 32 بیتی
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) برای 64 بیتی ها (حتی اگر از پردازنده های اینتل استفاده کنید)
1. فایل را به یک دایرکتوری موقت استخراج کنید.
1. فایل های JAR را به JDK/JRE **lib/ext** پوشه.
1. فایل های SO را به JDK/JRE **lib/amd64** پوشه.<br>

   برای مثال، در یک سیستم 64 بیتی Ubuntu، مراحل 5-8 به این شکل خواهد بود:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## پوشه برای فایل های موقت

Aspose.Words برای Java از یک دایرکتوری موقت در کامپیوتر شما استفاده می کند که از طریق ویژگی سیستم `java.io.tmpdir` مشخص شده است. Aspose.Words برای Java فایل های موقت می نویسد و سپس این فایل ها را به محض تکمیل رندر حذف می کند.

`java.io.tmpdir` یک ویژگی سیستم استاندارد Java است که توسط سیاست های ذخیره سازی مبتنی بر دیسک نیز استفاده می شود. مشخص می کند که JVM فایل های موقت را کجا می نویسد.
