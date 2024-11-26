---
title: تثبيت Aspose.Words ل Android عبر Java
second_title: Aspose.Words ل Java
articleTitle: تثبيت Aspose.Words ل Android عبر Java
linktitle: تثبيت Aspose.Words ل Android عبر Java
description: "تثبيت Aspose.Words ل Android عبر Java."
type: docs
weight: 20
url: /ar/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

منذ عام 2017، يتوافق إصدار Aspose.Words لـ Android عبر Java مع Aspose.Words لـ Java.

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## تركيب

في السابق، تم توزيع Aspose.Words لـ Android عبر Java كملف ZIP واحد يحتوي على ملف JAR وعروض توضيحية وتوثيق Aspose.Words لـ Android عبر Java.

1. إذا كنت ترغب في استخدام أي إصدار قبل Aspose.Words ل Android عبر Java 1.11، تحتاج فقط إلى فك ضغط أي إصدار من Aspose.Words.Android.zip في دليل من اختيارك.
1. قم بتضمين ملف الجرة المستخرج في التطبيق الخاص بك باستخدام تكوين مسار الإنشاء لتطبيقه.

تم تقسيم الإصدارين 1.11 و 1.12 يدويا إلى قسمين: JAR و APK من أجل الحد من عدد الطرق في ملف DEX. في هذه الإصدارات، قدمنا محمل APK الخاص بنا لبدء التحميل الصحيح للفئات الإضافية.ملف التنفيذ المباشر. بدءا من الإصدار 17.2.0 نحن ندعم سير العمل الرسمي الموصوف [هنا](https://developer.android.com/studio/build/multidex.html).

### كيفية استخدام Aspose.Words ل Android عبر Java من 1.11 فصاعدا

سابقا، واحدة JAR من Aspose.Words ل Android عبر Java الواردة 47 + ألف الأساليب التي جعلت الإصدارات القديمة غير عملي قليلا لاستخدامها في تطبيقات الروبوت ضخمة. بدءا من هذا الإصدار، بدأنا في تقليل حجم Aspose.Words لـ Android عبر Java مكتبة. شاغلنا الرئيسي الآن هو تقليل عدد الطرق دون فقدان الوظائف. نحن نعمل باستمرار على تحسين جودة وسهولة استخدام Aspose.Words لـ Android عبر Java.

### Aspose.Words ل Android عبر Java مكتبة مقسمة إلى قسمين

لقد قسمنا المكتبة إلى أرشيفين تاليين:

- aspose-words-1.11-android-jdk15.jar: الأول يشمل الجمهور API وطرقه المساعدة. حاليا، لديها 32395 طريقة.
- aspose-words-1.11-libs-android-jdk15.apk: والثاني يتضمن الجرار الحزب 3، والطبقات الأساسية، والموارد. حاليا، لديها 18296 طريقة.

### باستخدام كلمات أسبوس ل Android عبر Java منذ 1.11

لتضمين Aspose.Words لـ Android عبر Java في المشروع، يمكنك استخدام أي من الطرق التالية:

- لوضع " aspose-words-1.11-android-jdk15.jar" في المجلد "ليبس" من المشروع الخاص بك، والأرشيف "aspose-words-1.11-libs-android-jdk15.apk" في المجلد "الأصول". تشير إلى أنك ذاهب لاستخدام AsposeWordsApplication باعتبارها واحدة أساسية.

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

لبدء حمولة من .ملف أبك في طريقة onCreate () وإذا كنت لا تريد استخدام الروبوت:اسم="كوم.أسبوس.كلمات.AsposeWordsApplication " في AndroidManifest.xml

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

### استخدام Aspose.Words لـ Android عبر Java في Android تطبيقات الاختبار

لاستخدام Aspose.Words لـ Android عبر Java في مشاريع الاختبار، يمكن تطبيق نفس النهج:

- حدد AsposeWordsTestRunner في AndroidManifest.xml من مشروع الاختبار.

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

في IDE قد يكون من الضروري الإشارة إلى AsposeWordsTestRunner في نافذة التكوين على النحو التالي:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- أو لبدء تحميل .أبك باستخدام طريقة getTargetContext ().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## كيفية استخدام Aspose.Words ل Android عبر Java من 17.2.0 فصاعدا

1. تحميل أحدث نسخة من [Aspose.Words ل Android عبر Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. انسخ aspose-words-18.3-android.via.java.jar إلى مجلد *libs/*الخاص بمشروعك
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### تثبيت Aspose.Words ل Android عبر Java من Maven مستودع

1. إضافة maven مستودع في البناء الخاص بك.غرادل
1. أضف 'Aspose.Words لـ Android عبر Java ' JAR كتبعية
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
