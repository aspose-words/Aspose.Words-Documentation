---
title: اولین درخواست شما برای Android از طریق Java
second_title: Aspose.Words برای Java
articleTitle: اولین درخواست شما
linktitle: اولین درخواست شما
description: "نصب Aspose.Words برای Android از طریق Java."
type: docs
weight: 30
url: /fa/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

این مقاله به شما ایده ای برای شروع با Aspose.Words برای Android از طریق Java می دهد. این نشان می دهد که چگونه یک پروژه جدید Android را از ابتدا تنظیم کنید، یک مرجع به Aspose.Words JAR اضافه کنید و یک سند جدید ایجاد کنید که در قالب DOCX به دیسک ذخیره می شود. این مثال از [Android استودیو](https://developer.android.com/studio/index.html) برای توسعه و برنامه بر روی شبیه ساز Android اجرا می شود. برای شروع با Aspose.Words برای Android از طریق Java، لطفا این آموزش گام به گام را برای ایجاد یک برنامه که از Aspose.Words برای Android از طریق Javaاستفاده می کند، دنبال کنید:

1. دانلود و [Android استودیو](https://developer.android.com/studio/index.html) و آن را در هر مکانی نصب کنید.
1. استودیو Android را اجرا کنید.
1. یک پروژه کاربردی جدید Android ایجاد کنید.<br>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Aspose-words-17.5-android.via.java.jar را در پوشه/libs پروژه خود کپی کنید<br>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. بخش پروژه را انتخاب کنید (از منوی فایل و روی برگه وابستگی ها کلیک کنید.
   1. روی دکمه "+" کلیک کنید، گزینه وابستگی فایل را انتخاب کنید.
   1. Aspose.Words library را از پوشه libs انتخاب کنید و روی OK کلیک کنید.<br>
   ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. در صورت نیاز پروژه را با فایل های Gradle همگام سازی کنید<br>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. برای دسترسی به مجوزهای ویژه SDcard باید اضافه شود. روی فایل AndroidManifest.xml کلیک کنید و نمای XML را انتخاب کنید. خط زیر را به فایل اضافه کنید <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. به بخش کد برنامه برگردید و واردات زیر را اضافه کنید:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
و سپس کد زیر را در بدنه روش onCreate قرار دهید تا یک سند جدید از ابتدا با استفاده از Aspose.Wordsایجاد کنید,
مقداری متن وارد کنید و آن را در فرمت SDCard در DOCX ذخیره کنید.<br>
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
{{< /highlight >}}<br>
کد کامل باید اینجوری باشه:<br>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. حالا برنامه را دوباره اجرا کنید. این بار کد Aspose.Words در پس زمینه اجرا می شود و یک سند ایجاد می کند که به SDcard ذخیره می شود.<br>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. برای مشاهده سند ایجاد شده، به منوی Tools بروید، سپس Android را انتخاب کنید و Android Device Monitor را انتخاب کنید<br>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. برای باز کردن سند از نمایشگر پیش فرض استفاده کنید. خروجی تولید شده توسط برنامه با فقط چند خط کد به این شکل است:<br>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
