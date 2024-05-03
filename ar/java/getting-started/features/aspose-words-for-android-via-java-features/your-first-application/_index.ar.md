---
title: طلبك الأول Android عبر Java
second_title: Aspose.Words for Java
articleTitle: طلبك الأول
linktitle: طلبك الأول
description: "التركيب Aspose.Words for Android عبر Java."
type: docs
weight: 30
url: /ar/java/your-first-application/
---

هذه المقالة تعطيك فكرة البدء بها Aspose.Words for Android عبر Java. سيُظهر كيف يُنشئ Android مشروع من الصفر، إضافة إشارة إلى Aspose.Words JAR (و) إنشاء وثيقة جديدة يُحتفظ بها لتقريرها في شكل شركة DOCX. This example uses [Android Studio](https://developer.android.com/studio/index.html) من أجل التنمية والتطبيق يجري Android مرشد لتبدأ Aspose.Words for Android عبر Javaرجاءً إتبعوا هذا التعليم التدريجي لخلق تطبيق يستخدم Aspose.Words for Android عبر Java:

1 تحميل [Android Studio](https://developer.android.com/studio/index.html) و ضعه في أي مكان
1 اركض Android استوديو
1 إنشاء جديد Android مشروع التطبيق.<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
١ - الكلمات المستنسخة ١٧-٥ والستيرويد.via.java.jar into your project’s libs/folder<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1 اختيار قسم المشاريع (من قائمة الملفات ونقر على حساب الأقاليم.
   1 - اضغط على زر "+" واختار خيار إعالة الملفات
   1. Select Aspose.Words مكتبة من ملف العيار ونقر على ما يرام<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1 ترجمة:<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1 In order to access the SDcard special permissions must be added. اضغط على Androidملف (مانيفيست) و اختر وجهة نظر (إكس إم إل) يضاف السطر التالي إلى الملف <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1 عاود الاتصال بقسم الشفرة في التطبيق واضافة الواردات التالية:<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
وبعد ذلك يُدرج الرمز التالي في جسم طريقة (أوبرايت) لخلق وثيقة جديدة من الصفر باستخدام Aspose.Words,
يدرج بعض النص ويحتفظ به في استمارة DOCX.<br/>
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
الرمز الكامل يجب أن يبدو مثل هذا:<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1 الآن تشغيل الطلب مرة أخرى. هذه المرة Aspose.Words سيعمل الرمز في الخلفية ويولد وثيقة يتم توفيرها للسجل<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1 لمشاهدة الوثيقة المستحدثة تبحر إلى قائمة الأدوات ثم تختار Android والاختيار Android مرصد الأجهزة<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1 استخدم المشاهد الافتراضي لفتح الوثيقة الناتج الذي ينتجه التطبيق مع بعض خطوط الشفرة يبدو هذا<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)