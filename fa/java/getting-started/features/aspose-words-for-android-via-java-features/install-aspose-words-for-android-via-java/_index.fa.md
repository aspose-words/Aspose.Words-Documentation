---
title: نصب install Aspose.Words برای Android از طریق Java
second_title: Aspose.Words برای Java
articleTitle: نصب install Aspose.Words برای Android از طریق Java
linktitle: نصب install Aspose.Words برای Android از طریق Java
description: "نصب Aspose.Words برای Android از طریق Java..."
type: docs
weight: 20
url: /fa/java/install-aspose-words-for-android-via-java/
---

{{% alert color="primary" %}}

از سال 2017 نسخه برداری Aspose.Words برای Android از طریق Java مطابقت با Aspose.Words برای Java..

[aspose-word-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## نصب نصب

پیش از این، Aspose.Words برای Android از طریق Java به عنوان یک فایل پستی واحد توزیع شده است که شامل JAR فایل، نسخه ها و مستندات Aspose.Words برای Android از طریق Java...

1. اگر می خواهید از هر نسخه قبل از آن استفاده کنید Aspose.Words برای Android از طریق Java 1.1، شما فقط باید هر نسخه از نسخه را رد کنید Aspose.Words...Androidبه یک دایرکتوری از انتخاب خود را.
1. شامل فایل Jar استخراج شده در برنامه شما با استفاده از پیکربندی مسیر ساخت برای درخواست آن.

نسخه های 1.11 و 1.12 به صورت دستی به دو بخش تقسیم شدند: JAR و APK به منظور محدود کردن تعداد روش ها در فایل DEX. در این نسخه ها، ما بارگذاری APK خود را برای شروع بارگذاری صحیح از کلاس های اضافی.dex file ارائه دادیم. با شروع نسخه 17.2.0 ما از جریان کار رسمی شرح داده شده حمایت می کنیم [اینجا اینجا](https://developer.android.com/studio/build/multidex.html)...

### چگونه استفاده کنیم Aspose.Words برای Android از طریق Java از 1.11 Onward

پیش از این، یک تک JAR از Aspose.Words برای Android از طریق Java شامل 47+،000 روش است که نسخه های قدیمی را کمی غیر عملی برای استفاده در برنامه های بزرگ آندروید. در حال حاضر از این آزادی شروع به کاهش اندازه Aspose.Words برای Android از طریق Java کتابخانه نگرانی اصلی ما در حال حاضر کاهش تعداد روش ها بدون از دست دادن عملکرد است. ما به طور مداوم در بهبود کیفیت و قابلیت استفاده از Aspose.Words برای Android از طریق Java...

### Aspose.Words برای Android از طریق Java کتابخانه تقسیم شده به دو بخش

کتابخانه را به دو آرشیو تقسیم کردیم:

- · Aspose-word-1.11android-jdk15.jar: اولی شامل عمومی API و روش های کمکی آن در حال حاضر 32395 روش دارد.
- – Aspose-word-1.11libs-android-jdk15.apk: دوم شامل 3rd party، کلاس های پایه و منابع است. در حال حاضر دارای 18296 روش است.

### استفاده از Aspose Words for Android از طریق Java 1.11

شامل Aspose.Words برای Android از طریق Java در پروژه شما می توانید از هر یک از روش های زیر استفاده کنید:

- برای قرار دادن "Aspose-word-1.11android-jdk15.jar" در پوشه "libs" از پروژه خود، و بایگانی "aspose-word-1.11libs-android-jdk15.apk" به پوشه "assets". اطمینان حاصل کنید که شما قصد دارید از AsposeWords Application به عنوان یک پایه استفاده کنید.

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

برای شروع بار فایل .apk در متد Create() و اگر نمی خواهید از Android استفاده کنید:name="com.aspose.word. AndroidManifest.xml

**فعالیت Activity Activity Java فایل فایل فایل**

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

### استفاده از Aspose.Words برای Android از طریق Java در Android برنامه های آزمون

برای استفاده Aspose.Words برای Android از طریق Java در پروژه های آزمایشی، همان روش می تواند اعمال شود:

- • Indicate AsposeWordsTestRunner in AndroidManifest.xml از پروژه آزمایشی

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

در IDE ممکن است لازم باشد که AsposeWordsTestRunner را در پنجره پیکربندی نشان دهید:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- یا برای شروع بار .apk با استفاده از متد getTargetContext().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## چگونه استفاده کنیم Aspose.Words برای Android از طریق Java از 17.2.0 Onward

1. دانلود جدیدترین نسخه [Aspose.Words برای Android از طریق Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1- کپی aspose-word-18.3-android.via.java.jar را در ·libs/*folder
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### نصب install Aspose.Words برای Android از طریق Java از Maven بازگشت

1. Add Add maven ذخیره سازی در ساخت شما gradle
1. اضافه کردن "Aspose.Words برای Android از طریق Java"" JAR به عنوان وابستگی
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