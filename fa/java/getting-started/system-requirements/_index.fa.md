---
title: الزامات سیستم
second_title: Aspose.Words برای Java
articleTitle: الزامات سیستم
linktitle: الزامات سیستم
description: "قبل از شروع کار با Aspose.Words برای Java, اطمینان حاصل کنید که شما سیستم عامل، پلت فرم، چارچوب ها و الزامات محیط را برآورده می کنید تا فعالیت های دستگاه های شما به درستی محاسبه شوند."
type: docs
weight: 80
url: /fa/java/system-requirements/
---

Aspose.Words برای Java نیازی به محصول شخص ثالث مانند Microsoft Word نصب شود. Aspose.Words خود یک موتور برای ایجاد، اصلاح، تبدیل و ارائه اسناد در فرمت های مختلف، از جمله Microsoft Word فرمت های سند

## پشتیبانی از سیستم های عملیاتی

هر سیستم عملیاتی که بتواند اجرا کند Java محیط زیست (JRE) می تواند اجرا شود Aspose.Words برای Java... جدول زیر بیشتر، اما نه همه، از سیستم های عملیاتی پشتیبانی می کند.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">سیستم عامل</td>
			<td style="font-weight: bold; width:400px">نسخه ها</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows ۲۰۰۳ Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8، 8.1 (x64، x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>و دیگران</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>نسخه macOS 10.9Mavericksو بعدا</li></ul></td>
		</tr>
  <tr>
			<td>موبایل موبایل Mobile</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## پشتیبانی از Cloud Platforms

Aspose.Words برای Java پشتیبانی از هر سیستم عامل ابری که می تواند اجرا شود Java برنامه ها

## پشتیبانی Java نسخه ها

Aspose.Words برای Java پشتیبانی Java 7 و جدیدتر اگر مجبور به استفاده از Java 6 ما هنوز یک جداگانه آزاد می کنیم JAR برای Java 6.


## وابستگی اختیاری

همانطور که در بالا گفتیم، Aspose.Words برای Java نیاز *only* The the the Java محیط زیست، و شما نیازی به نصب کتابخانه های اضافی ندارید.

با این حال، گاهی اوقات شرایطی وجود دارد که ممکن است نیاز به اضافه کردن کتابخانه های شخص ثالث داشته باشید:

- JogAmp JOGL کتابخانه برای سخت افزار ارائه OpenGL را تسریع کرد. این کتابخانه در کلمه های aspose گنجانده شده است. POM فایل به عنوان یک وابستگی خارجی شما می توانید ویرایش کنید POM فایل برای حفظ اصطلاحات JOGL مورد نیاز برای پلت فرم شما. یا شما می توانید وابستگی را حذف کنید اگر نیازی به رندر سریع OpenGL ندارید.
- HarfBuzz موتور فونت در حال حاضر در JRE 9 و جدیدتر است. اگر شما از JRE 8 یا بالاتر استفاده می کنید، می توانید از وابستگی به شکل گیری-harfbuzz-plugin در ما استفاده کنید. POM فایل در غیر این صورت می توانید وابستگی را حذف کنید.
- Java Advanced Imaging (JAI) پشتیبانی از تصاویر TIFF تصاویر TIFF پشتیبانی نمی شوند Java 8 و بالاتر پشتیبانی از TIFF در قدیمی Java محیط ها، Aspose.Words برای Java بستگی به [Java Advanced Imaging (JAI) بسته بسته بسته](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) از Oracle... ما چگونگی نصب JAI زیر را توضیح خواهیم داد.

### چگونه JAI را نصب کنیم Windows

این مراحل را برای نصب JAI بومی و ImageIO در Windows:

دانلود بازی 1. **JAI 1.1.3**...
   در زمان نوشتن، تنها نسخه 32 بیتی نصب کننده در دسترس است، بنابراین اگر از JDK استفاده می کنید، باید دانلود کنید. [J-1: 3CrWindowsA586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) اگر از JRE استفاده می کنید باید دانلود کنید [J-1: 3CrWindowsدانلود بازی Harvest Punch 0586-jre](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe)...
1. نصب کننده را اجرا کنید و آن را به دایرکتوری که JDK / JRE نصب شده است، اشاره کنید.
دانلود بازی 1. **تصویر JAI I/O 1.1**...
   در زمان نوشتن، تنها نسخه 32 بیتی نصب کننده در دسترس است، بنابراین اگر از JDK استفاده می کنید، باید دانلود کنید. [J_imageio-1 bWindowsA586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) اگر از JRE استفاده می کنید باید دانلود کنید [J_imageio-1 bWindowsدانلود بازی Harvest Punch 0586-jre](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. نصب کننده را اجرا کنید و آن را به دایرکتوری که JDK / JRE نصب شده است، اشاره کنید.

### چگونه JAI را نصب کنیم Linux

این مراحل را برای نصب JAI بومی و ImageIO در Linux:

دانلود بازی 1. **JAI 1.1.3** انتخاب معماری مناسب:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) سیستم های 32 بیتی
   1. [Id64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) برای 64 بیتی (حتی اگر از پردازنده های اینتل استفاده کنید)
1. فایل را به یک دایرکتوری موقت وارد کنید.
1. حرکت حرکت JAR فایل های JDK / JRE **آزادی / اخراج** پوشه
1. انتقال فایل های SO به JDK / JRE **آزاد / آزاد/amd64** پوشه<br/>

   به عنوان مثال، در ۶۴ بیتی Ubuntu سیستم، گام های ۴ تا ۴ به این شکل خواهد بود:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
دانلود بازی 1. **تصویر JAI I/O 1.1**, انتخاب معماری مناسب:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) برای سیستم های 32 بیتی
   1. [Id64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) برای 64 بیتی (حتی اگر از پردازنده های اینتل استفاده کنید)
1. فایل را به یک دایرکتوری موقت وارد کنید.
1. حرکت حرکت JAR فایل های JDK / JRE **آزادی / اخراج** پوشه
1. انتقال فایل های SO به JDK / JRE **آزاد / آزاد/amd64** پوشه<br/>

   به عنوان مثال، در ۶۴ بیتی Ubuntu سیستم، مراحل 5-8 شبیه به این است:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## پوشه برای Temporary Files

Aspose.Words برای Java از یک دایرکتوری موقت در کامپیوتر خود استفاده کنید که از طریق آن مشخص شده است. `java.io.tmpdir` مالکیت سیستم Aspose.Words برای Java فایل های موقت را می نویسد و سپس این فایل ها را به محض تکمیل رندر حذف می کند.

`java.io.tmpdir` استاندارد Java مالکیت سیستم که توسط سیاست های ذخیره سازی مبتنی بر دیسک نیز استفاده می شود. مشخص می کند که JVM فایل های موقت می نویسد.
