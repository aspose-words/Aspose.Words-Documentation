---
title: Aspose.Words را برای Android از طریق Javaنصب کنید
second_title: Aspose.Words برای Java
articleTitle: Aspose.Words را برای Android از طریق Javaنصب کنید
linktitle: Aspose.Words را برای Android از طریق Javaنصب کنید
description: "نصب Aspose.Words برای Android از طریق Java."
type: docs
weight: 20
url: /fa/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

از سال 2017 نسخه Aspose.Words برای Android از طریق Java با Aspose.Words برای Java مطابقت دارد.

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## نصب و راه اندازی

پیش از این، Aspose.Words برای Android از طریق Java به عنوان یک فایل ZIP واحد توزیع می شد که شامل فایل JAR، نمایشی و مستندات Aspose.Words برای Android از طریق Java بود.

1. اگر می خواهید از هر نسخه ای قبل از Aspose.Words برای Android از طریق Java 1.11 استفاده کنید، فقط باید هر نسخه ای از Aspose.Words.Android.zip را در دایرکتوری مورد نظر خود باز کنید.
1. فایل jar استخراج شده را در برنامه خود با استفاده از پیکربندی مسیر ساخت برای برنامه خود قرار دهید.

نسخه های 1.11 و 1.12 به صورت دستی به دو بخش تقسیم شدند: JAR و APK به منظور محدود کردن تعداد روش ها در فایل DEX. در این نسخه ها، ما لودر APK خود را برای شروع بارگذاری صحیح کلاس های اضافی فراهم کردیم.پرونده دکس شروع از نسخه 17.2.0 ما از گردش کار رسمی توصیف شده پشتیبانی می کنیم [اینجا](https://developer.android.com/studio/build/multidex.html).

### نحوه استفاده از Aspose.Words برای Android از طریق Java از 1.11 به بعد

پیش از این، یک JAR از Aspose.Words برای Android از طریق Java شامل 47+ هزار روش بود که نسخه های قدیمی را برای استفاده در برنامه های بزرگ اندروید کمی غیر عملی می کرد. حالا از این نسخه شروع می کنیم، ما شروع به کاهش اندازه Aspose.Words برای Android از طریق Java کتابخانه کرده ایم. نگرانی اصلی ما در حال حاضر کاهش تعداد روش ها بدون از دست دادن عملکرد است. ما به طور مداوم در حال کار بر روی بهبود کیفیت و قابلیت استفاده از Aspose.Words برای Android از طریق Java هستیم.

### Aspose.Words برای Android از طریق Java کتابخانه به دو بخش تقسیم شده است

ما کتابخانه را به دو آرشیو زیر تقسیم کرده بودیم:

- aspose-words-1.11-android-jdk15.jar: اولین مورد شامل عمومی API و روش های کمکی آن است. در حال حاضر 32395 روش دارد.
- aspose-words-1.11-libs-android-jdk15.apk: مورد دوم شامل شیشه های شخص ثالث، کلاس های پایه و منابع است. در حال حاضر، 18296 روش دارد.

### استفاده از کلمات Aspose برای Android از طریق Java از 1.11

برای شامل کردن Aspose.Words برای Android از طریق Java در پروژه می توانید از هر یک از روش های زیر استفاده کنید:

- برای قرار دادن "aspose-words-1.11-android-jdk15.jar" در پوشه "libs" پروژه خود و آرشیو "aspose-words-1.11-libs-android-jdk15.apk" در پوشه "assets". نشان دهید که از AsposeWordsApplication به عنوان پایه استفاده خواهید کرد.

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

برای شروع یک بار از .فایل apk در روش onCreate() و اگر نمی خواهید از android:name="com استفاده کنید.اسپوزکلمات.AsposeWordsApplication" در AndroidManifest.xml

**فعالیت Java فایل**

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

### استفاده از Aspose.Words برای Android از طریق Java در Android برنامه های تست

برای استفاده از Aspose.Words برای Android از طریق Java در پروژه های آزمایشی، همان رویکرد را می توان اعمال کرد:

- AsposeWordsTestRunner را در AndroidManifest.xml پروژه تست نشان دهید.

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

در IDE ممکن است لازم باشد که AsposeWordsTestRunner را در پنجره پیکربندی به شرح زیر نشان دهید:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- یا برای شروع بار .apk با استفاده از روش getTargetContext ().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## چگونه از Aspose.Words برای Android از طریق Java از 17.2.0 به بعد استفاده کنیم

1. دانلود جدیدترین نسخه [Aspose.Words برای Android از طریق Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Aspose-words-18.3-android.via.java.jar را در پوشه *libs/*پروژه خود کپی کنید
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Aspose.Words را برای Android از طریق Java از Maven مخزن نصب کنید

1. مخزن maven را به ساخت خود اضافه کنید.گرادل
1. Aspose.Words برای Android از طریق Java 'JAR به عنوان وابستگی اضافه کنید
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
