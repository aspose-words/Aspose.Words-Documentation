---
title: طلبك الأول لـ Android عبر Java
second_title: Aspose.Words ل Java
articleTitle: طلبك الأول
linktitle: طلبك الأول
description: "تثبيت Aspose.Words ل Android عبر Java."
type: docs
weight: 30
url: /ar/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

تمنحك هذه المقالة فكرة عن البدء بـ Aspose.Words إلى عن على Android عبر Java. سيوضح كيفية إعداد مشروع Android جديد من البداية، وإضافة مرجع إلى Aspose.Words JAR وإنشاء مستند جديد يتم حفظه على القرص بتنسيق DOCX. يستخدم هذا المثال [Android ستوديو](https://developer.android.com/studio/index.html) للتنمية ويتم تشغيل التطبيق على Android المحاكي. للبدء بـ Aspose.Words لـ Android عبر Java، يرجى اتباع هذا البرنامج التعليمي خطوة بخطوة لإنشاء تطبيق يستخدم Aspose.Words لـ Android عبر Java:

1. تحميل و [Android ستوديو](https://developer.android.com/studio/index.html) وتثبيته إلى أي مكان.
1. تشغيل Android الاستوديو.
1. إنشاء مشروع تطبيق Android جديد.<br>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. نسخ aspose-words-17.5-android.via.java.jar في ليبس المشروع الخاص بك / مجلد<br>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. حدد قسم المشروع (من القائمة ملف وانقر فوق علامة التبويب التبعيات.
   1. انقر فوق الزر "+"، وحدد خيار تبعية الملف.
   1. حدد Aspose.Words مكتبة من مجلد ليبس وانقر على OK.<br>
   ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. مزامنة المشروع مع ملفات غرادل إذا لزم الأمر<br>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. من أجل الوصول إلى SDcard يجب إضافة أذونات خاصة. انقر فوق ملف AndroidManifest.xml واختر عرض XML. أضف السطر التالي إلى الملف <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. انتقل مرة أخرى إلى قسم التعليمات البرمجية في التطبيق وأضف الواردات التالية:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
ثم أدخل الكود التالي في نص طريقة onCreate لإنشاء مستند جديد من البداية باستخدام Aspose.Words,
أدخل بعض النص واحفظه في SDCard بتنسيق DOCX.<br>
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
يجب أن يبدو الرمز الكامل كما يلي:<br>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. الآن قم بتشغيل التطبيق مرة أخرى. هذه المرة سيتم تشغيل رمز Aspose.Words في الخلفية وإنشاء مستند يتم حفظه في SDcard.<br>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. لعرض المستند الذي تم إنشاؤه، انتقل إلى قائمة الأدوات ثم اختر Android واختر Android مراقب الجهاز<br>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. استخدم العارض الافتراضي لفتح المستند. يبدو الإخراج الناتج عن التطبيق ببضعة أسطر من التعليمات البرمجية كما يلي:<br>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
