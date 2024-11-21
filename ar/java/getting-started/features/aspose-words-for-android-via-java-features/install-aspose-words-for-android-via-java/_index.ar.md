---
title: Install Aspose.Words for Android عبر Java
second_title: Aspose.Words for Java
articleTitle: Install Aspose.Words for Android عبر Java
linktitle: Install Aspose.Words for Android عبر Java
description: "التركيب Aspose.Words for Android عبر Java."
type: docs
weight: 20
url: /ar/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

منذ عام 2017 إصدار Aspose.Words for Android عبر Java الامتثال Aspose.Words for Java

[الكلمات المُفترضة -20.2- والستيرويد](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## التركيب

سابقاً Aspose.Words for Android عبر Java وُزعت في ملف واحد من ملفات شركة ZIP تضمن JAR الملفات، والسجلات، ووثائق Aspose.Words for Android عبر Java.

1 إذا كنت تريد استخدام أي نسخة من قبل Aspose.Words for Android عبر Java 1-11، أنت فقط بحاجة إلى فك أي نسخة Aspose.Words.Androidضع في دليل من اختيارك
1 إدراج ملف (جار) المستخرج في طلبك باستخدام تشكيلة مسار البناء لتطبيقه.

1-11 و 1-12 قُسما يدويا إلى جزأين: JAR (د) و(أ.ك) من أجل الحد من عدد الأساليب في ملف إدارة شؤون الإعلام. وفي هذه النسخ، قدمنا حمّلنا الخاص بـ (آي بي كي) لبدء التحميل الصحيح للصفوف الإضافية. نبدأ من النسخة 17.2.0 ندعم سير العمل الرسمي الموصوفة [هنا](https://developer.android.com/studio/build/multidex.html).

### How to Use Aspose.Words for Android عبر Java من 1-11 فصاعدا

في الحلقات السابقة JAR of of Aspose.Words for Android عبر Java يحتوي على 47+000 طريقة تجعل النسخ القديمة غير عملية إلى حد ما لاستخدامها في تطبيقات الكويكبات الضخمة. الآن بدءاً من هذا الإفراج، بدأنا في تخفيض حجم Aspose.Words for Android عبر Java المكتبة ويتمثل شاغلنا الرئيسي الآن في تخفيض عدد الأساليب دون فقدان القدرة على العمل. ونحن نعمل باستمرار على تحسين نوعية وقابلية الاستخدام Aspose.Words for Android عبر Java.

### Aspose.Words for Android عبر Java تقسيم المكتبة إلى جزأين

لقد قسمنا المكتبة إلى تتبع محفوظين:

-الكلمات الافتراضية -1.11 الأول يشمل الجمهور API وطرقه المساعدة وحالياً، لديها 32395 طريقة.
-الكلمات الافتراضية -1.11 ليرة-وريد-جيديك15 والثاني يشمل جرار الحزب الثالث، والفصول الأساسية، والموارد. وحالياً، لديها 18296 طريقة.

### استخدام الكلمات المفترضة Android عبر Java منذ 1-11

To include Aspose.Words for Android عبر Java في المشروع يمكنك استخدام أي من الأساليب التالية:

- وضع " الكلمات المهزومة - ١/١١ - والستيرويد - jdk15.jar " في ملف " العيار " من مشروعكم، والمحفوظات " الكلمات المهزومة - ١/١١ - ليرة - وريدي - jdk15.apk " في " مجموعات ". اذكر انك ستستخدم "أبوسودز" كشرطي أساسي

**AndroidManifest.xml**

{{< highlight csharp >}}
...
...
<application        
    android:allowBackup="true"
    android:icon="@drawable/ic_launcher"
    android:name="com.aspose.words.AsposeWordsApplication"
    android:label="@string/app_name"
    android:theme="@style/AppTheme" >
    <activity
...
...
{{< /highlight >}}

لاستهلال حمولة من ملف "الباب" في طريقة "الحياكة" وإذا كنت لا تريد استخدام "الكورب: الاسم=" AndroidManifest.xml

**النشاط Java ملف**

{{< highlight csharp >}}
@Override
protected void onCreate(Bundle savedInstanceState) 
{
    super.onCreate(savedInstanceState);

    // load AW manually
    AsposeWordsApplication awapp = new AsposeWordsApplication();
    
    // this context AW uses to find assets/ folder which contains the second part of the library.
    awapp.loadLibs(getApplicationContext()); 
    if (!checkIfAWSetUpCorrectly())
            throw new IllegalStateException();	
    ...
}
public static boolean checkIfAWSetUpCorrectly()
{
    try
    {
        Class.forName("com.aspose.words.Document");
        return true;
    }
    catch (ClassNotFoundException e)
    {
        e.printStackTrace();
        return false;
    }
}
{{< /highlight >}}

### استخدام Aspose.Words for Android عبر Java في Android تطبيقات الاختبار

To use Aspose.Words for Android عبر Java وفي مشاريع الاختبار، يمكن تطبيق نفس النهج:

- يرجى ذكر امتحانات امتحانات تداول الأسلحة Androidسائل من مشروع الإختبار

**AndroidManifest.xml**

{{< highlight csharp >}}
...
...
<instrumentation
    android:name="com.aspose.words.AsposeWordsTestRunner"    
    android:targetPackage="com.aspose.releaseapp" />
...
...
{{< /highlight >}}

وقد يكون من الضروري في المعهد الدولي للديمقراطية والمساعدة الانتخابية أن يُشار إلى " الافتراضات " في نافذة التشكيلة على النحو التالي:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

-أو أن تبدأ حمولة "بابك" بإستخدام طريقة "تاراغيت كونتيكست"

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## How to Use Aspose.Words for Android عبر Java من 17.2.0 فصاعدا

1 تحميل أحدث نسخة [Aspose.Words for Android عبر Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
١ - الكلمات المستنسخة ١٨-٣ و٣-اندرويد.فيا.جافا.جر في مشروعكم
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Install Aspose.Words for Android عبر Java من Maven المستودع

1 مضافا إليها maven مستودع في بنائك التدرج
1 أضفAspose.Words for Android عبر Java' JAR التبعية
{{< highlight csharp >}}

// 1. Add maven repository into your build.gradle 
repositories {
    mavenCentral()
    maven { url "https://repository.aspose.com/words/" }
}

// 2. Add 'Aspose.Words for Android via Java' JAR as a dependency
dependencies {
    ...
    ...
    compile (group: 'com.aspose', name: 'aspose-words', version: '20.2', classifier: 'android.via.java')
}
{{< /highlight >}}
