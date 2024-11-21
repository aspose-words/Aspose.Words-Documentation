---
title: متطلبات النظام
second_title: Aspose.Words for Java
articleTitle: متطلبات النظام
linktitle: متطلبات النظام
description: "قبل أن تبدأ العمل Aspose.Words for Java, ضمان أن تفي بنظام التشغيل، والمنصات، والأطر، والمتطلبات البيئية حتى يتم حساب الأنشطة على أجهزةكم بشكل سليم."
type: docs
weight: 80
url: /ar/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words for Java لا يتطلب منتجاً من طرف ثالث مثل Microsoft Word سيتم تركيبها Aspose.Words وهو في حد ذاته محرك لوضع الوثائق وتعديلها وتحويلها وإصدارها في أشكال مختلفة، بما في ذلك Microsoft Word صيغ الوثائق.

## نظم التشغيل الداعمة

أي نظام تشغيل يمكن أن يدير Java (JRE) Environment (JRE) can run Aspose.Words for Java. ويورد الجدول التالي معظم نظم التشغيل، ولكن ليس كلها.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">نظام التشغيل</td>
			<td style="font-weight: bold; width:400px">الركائز</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>مفتوحة</li><li>CentOS</li><li>and others</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>الصيغة ١٠-٩ من نظام ماكوسMavericksوبعد ذلك</li></ul></td>
		</tr>
  <tr>
			<td>متنقلة</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## منصات السحاب المدعومة

Aspose.Words for Java دعم أي منابر السحاب التي يمكن تشغيلها Java الطلبات

## الدعم Java الركائز

Aspose.Words for Java الدعم Java سبعة وأحدث إذا أجبرت على استخدام Java 6، ما زلنا نطلق سراح منفصل JAR for Java 6


## الإعالة الاختيارية

كما ذكرنا أعلاه، Aspose.Words for Java الاحتياجات *only* the Java بيئة العمل، وأنت لا تحتاج إلى تركيب أي مكتبات إضافية.

غير أن هناك أحياناً حالات قد تحتاج فيها إلى إضافة مكتبات طرف ثالث:

- JogAmp JOGL مكتبة للمعدات المعجّلة The library is included in the aspose-words POM الملف كتبعية خارجية يمكنك تحرير POM ملف للحفاظ على جرار جوجل مطلوب لمنصتك فقط أو يمكنك إزالة التبعية إذا كنت لا تحتاج المعدات المعجّلة الصنع.
- HarfBuzz محرك فونت. It is already included in JRE 9 and newer. إذا كنت تستخدم الـ "جي آر 8" أو أكبر، يمكنك استخدام تبعية "هارفبوز" في نفقتنا POM ملف وإلا، يمكنك إزالة التبعية.
- Java Advanced Imaging (JAI) لدعم صور TTIFF. صور TFF لا تدعمها Java ثمانية وأكبر من أجل دعم المنتدى القديم Java البيئات Aspose.Words for Java يعتمد على [Java Advanced Imaging (JAI) طرد](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) من Oracle. سوف نصف كيف نثبت (جي أي) بالأسفل

### كيف ستثبت (جي آي) Windows

متابعة هذه الخطوات لتركيب المعهد الوطني للبحث والتطوير ImageIO on Windows:

1- الحمولة **1-1-3**.
   في وقت الكتابة، فقط النسخة 32 من الـ (سلاتلر) متاحة، لذا إذا استخدمت (جي دي كي) فعليك التحميل [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) وإذا كنت تستخدم JRE تحتاج إلى تحميل [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1 أدير المُسلّم وأرسله إلى الدليل حيث يتم تركيب (جي دي كي) و(جيري).
1- الحمولة **الرسم البياني الأول/الأول**.
   في وقت الكتابة، فقط النسخة 32 من الـ (سلاتلر) متاحة، لذا إذا استخدمت (جي دي كي) فعليك التحميل [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) وإذا كنت تستخدم JRE تحتاج إلى تحميل [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1 أدير المُسلّم وأرسله إلى الدليل حيث يتم تركيب (جي دي كي) و(جيري).

### كيف ستثبت (جي آي) Linux

متابعة هذه الخطوات لتركيب المعهد الوطني للبحث والتطوير ImageIO on Linux:

1- الحمولة **1-1-3** اختيار الهيكل المناسب:
   1 [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) نظم المدار
   1 [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) (حتى إذا استخدم مجهزو المعلومات)
1 اسحب الملف إلى دليل مؤقت
1 تحرك JAR الملفات إلى JDK/JRE **lib/ext** ملف
1 نقل الملفات الخاصة إلى JDK/JRE **lib/amd64** ملف<br/>

   على سبيل المثال، على شكل 64 Ubuntu النظام، الخطوات من 1 إلى 4 سوف تبدو مثل هذا:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1- الحمولة **الرسم البياني الأول/الأول**, اختيار الهيكل المناسب:
   1 [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) لنظم المدار 32
   1 [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) (حتى في حالة استخدام مجهزي المعلومات)
1 اسحب الملف إلى دليل مؤقت
1 تحرك JAR الملفات إلى JDK/JRE **lib/ext** ملف
1 نقل الملفات الخاصة إلى JDK/JRE **lib/amd64** ملف<br/>

   على سبيل المثال، على شكل 64 Ubuntu النظام، الخطوات 5-8 سوف تبدو مثل هذا:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## بيع الملفات المؤقتة

Aspose.Words for Java يستخدم دليلاً مؤقتاً على حاسوبك الذي يحدد عن طريق `java.io.tmpdir` ملكية النظام Aspose.Words for Java يكتب ملفات مؤقتة ثم يزيل هذه الملفات بمجرد الانتهاء من إصدارها.

`java.io.tmpdir` هو معيار Java:: الممتلكات النظامية التي تستخدمها أيضا سياسات التخزين القائمة على الأقراص. ويحدد المكان الذي يكتب فيه الـ(جي في إم) ملفات مؤقتة
