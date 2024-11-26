---
title: متطلبات النظام
second_title: Aspose.Words ل Java
articleTitle: متطلبات النظام
linktitle: متطلبات النظام
description: "قبل البدء في العمل باستخدام Aspose.Words لـ Java، تأكد من أنك تفي بمتطلبات نظام التشغيل والنظام الأساسي والأطر والبيئة حتى يتم حساب الأنشطة على أجهزتك بشكل صحيح."
type: docs
weight: 80
url: /ar/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ل Java لا يتطلب منتج طرف ثالث مثل Microsoft Word ليتم تثبيتها. Aspose.Words نفسها هي محرك لإنشاء المستندات وتعديلها وتحويلها وعرضها بتنسيقات مختلفة، بما في ذلك Microsoft Word تنسيقات المستندات.

## أنظمة التشغيل المدعومة

يمكن تشغيل أي نظام تشغيل يمكنه تشغيل بيئة وقت التشغيل Java (JRE) Aspose.Words لـ Java. يسرد الجدول التالي معظم أنظمة التشغيل المدعومة وليس كلها.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">نظام التشغيل</td>
			<td style="font-weight: bold; width:400px">الإصدارات</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>وغيرها</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS الإصدار 10.9 (Mavericks) وما بعده</li></ul></td>
		</tr>
  <tr>
			<td>موبايل</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## المنصات السحابية المدعومة

Aspose.Words ل Java يدعم أي المنصات السحابية التي يمكن تشغيل Java التطبيقات.

## الإصدارات المدعومة Java

Aspose.Words ل Java يدعم Java 7 وأحدث. إذا كنت مجبرا على استخدام Java 6، فإننا لا نزال نصدر JAR منفصلا لـ Java 6.


## التبعيات الاختيارية

كما ذكرنا أعلاه، Aspose.Words ل Java يتطلب *only* بيئة وقت التشغيل Java، ولا تحتاج إلى تثبيت أي مكتبات إضافية.

ومع ذلك، في بعض الأحيان توجد مواقف قد تحتاج فيها إلى إضافة مكتبات تابعة لجهات خارجية:

- JogAmp JOGL مكتبة الأجهزة المعجل OpenGL تقديم. يتم تضمين المكتبة في ملف أسبوس-الكلمات POM كتبعية خارجية. يمكنك تحرير ملف POM للحفاظ على JOGL الجرار المطلوبة لمنصتك فقط. أو يمكنك إزالة التبعية إذا كنت لا تحتاج إلى تسريع الأجهزة OpenGL التقديم.
- HarfBuzz محرك الخط. تم تضمينه بالفعل في JRE 9 وأحدث. إذا كنت تستخدم JRE 8 أو أكثر، يمكنك استخدام تشكيل-هرفبوز-التبعية المساعد في منطقتنا POM ملف. خلاف ذلك، يمكنك إزالة التبعية.
- Java التصوير المتقدم (JAI) لدعم TIFF الصور. TIFF الصور غير معتمدة من قبل Java 8 وكبار السن. ل TIFF الدعم في القديم Java البيئات، Aspose.Words ل Java يعتمد على [Java التصوير المتقدم (JAI) حزمة](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) من Oracle. سنصف كيفية التثبيت JAI أدناه.

### كيفية تثبيت JAI على Windows

اتبع هذه الخطوات لتثبيت أصلي JAI و ImageIO على Windows:

1. تحميل **JAI 1.1.3**.
   في وقت كتابة هذا التقرير، يتوفر إصدار 32 بت فقط من المثبت، لذلك إذا كنت تستخدم JDK، فأنت بحاجة إلى التنزيل [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) وإذا كنت تستخدم JRE تحتاج إلى تحميل [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. قم بتشغيل المثبت ووجهه إلى الدليل حيث تم تثبيت JDK/JRE.
1. تحميل **JAI Image I/O 1.1**.
   في وقت كتابة هذا التقرير، يتوفر إصدار 32 بت فقط من المثبت، لذلك إذا كنت تستخدم JDK، فأنت بحاجة إلى التنزيل [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) وإذا كنت تستخدم JRE تحتاج إلى تحميل [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. قم بتشغيل المثبت ووجهه إلى الدليل حيث تم تثبيت JDK/JRE.

### كيفية تثبيت JAI على Linux

اتبع هذه الخطوات لتثبيت أصلي JAI و ImageIO على Linux:

1. تحميل **JAI 1.1.3** اختيار العمارة المناسبة:
   1. [ط586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) لأنظمة 32 بت
   1. [أيه إم دي 64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) بالنسبة إلى 64 بت (حتى في حالة استخدام معالجات إنتل)
1. استخراج الملف في دليل مؤقت.
1. نقل JAR الملفات إلى JDK/JRE **lib/ext** مجلد.
1. نقل SO الملفات إلى JDK/JRE **lib/amd64** مجلد.<br>

   على سبيل المثال، في نظام 64 بت Ubuntu، ستبدو الخطوات من 1 إلى 4 كما يلي:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. تحميل **JAI Image I/O 1.1**، واختيار العمارة المناسبة:
   1. [ط586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) لأنظمة 32 بت
   1. [أيه إم دي 64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) بالنسبة إلى 64 بت (حتى في حالة استخدام معالجات إنتل)
1. استخراج الملف في دليل مؤقت.
1. نقل JAR الملفات إلى JDK/JRE **lib/ext** مجلد.
1. نقل SO الملفات إلى JDK/JRE **lib/amd64** مجلد.<br>

   على سبيل المثال، في نظام 64 بت Ubuntu، ستبدو الخطوات من 5 إلى 8 كما يلي:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## مجلد للملفات المؤقتة

Aspose.Words ل Java يستخدم دليل مؤقت على جهاز الكمبيوتر الخاص بك، والذي تم تحديده عبر `java.io.tmpdir` خاصية النظام. Aspose.Words ل Java يكتب الملفات المؤقتة ثم يزيل هذه الملفات بمجرد اكتمال العرض.

`java.io.tmpdir` هي خاصية نظام Java قياسية تستخدم أيضا بواسطة سياسات التخزين المستندة إلى القرص. يحدد مكان JVM يكتب الملفات المؤقتة.
