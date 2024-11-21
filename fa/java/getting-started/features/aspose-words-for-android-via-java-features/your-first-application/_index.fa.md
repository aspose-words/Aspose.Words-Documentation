---
title: اولین درخواست شما برای Android از طریق Java
second_title: Aspose.Words برای Java
articleTitle: اولین درخواست شما
linktitle: اولین درخواست شما
description: "نصب Aspose.Words برای Android از طریق Java..."
type: docs
weight: 30
url: /fa/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

این مقاله به شما ایده ای از شروع کار با شما می دهد Aspose.Words برای Android از طریق Java... نشان می دهد که چگونه یک جدید را راه اندازی کنیم Android پروژه از ابتدا، یک مرجع به Aspose.Words JAR و ایجاد یک سند جدید که به دیسک در فرمت DOCX ذخیره شده است. استفاده از این مثال [Android استودیو](https://developer.android.com/studio/index.html) برای توسعه و برنامه در حال اجرا است Android شبیه سازی برای شروع با Aspose.Words برای Android از طریق Javaلطفا از این آموزش گام به گام برای ایجاد یک برنامه که استفاده می کند پیروی کنید. Aspose.Words برای Android از طریق Java:

1. دانلود و The Download [Android استودیو](https://developer.android.com/studio/index.html) و آن را به هر مکان نصب کنید.
1. دویدن The Run the Android استودیو
1. ایجاد یک جدید Android پروژه کاربردی<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1- کپی aspose-words-17.5-android.via.java.jar را به آزاد پروژه خود وارد کنید.<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. بخش پروژه را انتخاب کنید (از منوی فایل و روی برگه بسته بندی کلیک کنید.
   1. روی دکمه "+" کلیک کنید، گزینه وابستگی فایل را انتخاب کنید.
   انتخاب 1 Aspose.Words کتابخانه از پوشه های آزاد و روی OK کلیک کنید.<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. Sync پروژه با فایل های Gradle در صورت نیاز<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. برای دسترسی به مجوزهای ویژه کارت SD باید اضافه شود. Click on the Androidفایل Manifest.xml و نمای XML را انتخاب کنید. اضافه کردن خط زیر به فایل <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. به بخش کد برنامه بروید و واردات زیر را اضافه کنید:<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
سپس کد زیر را در بدن متد Create قرار دهید تا یک سند جدید را از ابتدا با استفاده از ابتدا ایجاد کنید. Aspose.Words,
برخی از متن ها را وارد کنید و آن را در فرمت DOCX ذخیره کنید.<br/>
{{< highlight csharp >}}
try
{
   Document doc = new Document();
   DocumentBuilder builder = new DocumentBuilder(doc);
   builder.writeln("Hello World!");
   String sdCardPath = Environment.getExternalStorageDirectory().getPath() + File.separator;
   doc.save(sdCardPath + "Document Out.docx");
}
catch (Exception e)
{
   e.printStackTrace();
}
{{< /highlight >}}<br/>
کد کامل باید شبیه به این باشد:<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. حالا دوباره درخواست را اجرا کنید. این بار Aspose.Words کد در پس زمینه اجرا می شود و یک سند ایجاد می کند که به کارت SD ذخیره می شود.<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. برای مشاهده سند ایجاد شده به منوی ابزار سپس انتخاب کنید Android انتخاب کنید Android Device Monitor<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. از بیننده پیش فرض برای باز کردن سند استفاده کنید. خروجی تولید شده توسط برنامه با فقط چند خط کد شبیه به این است:<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
