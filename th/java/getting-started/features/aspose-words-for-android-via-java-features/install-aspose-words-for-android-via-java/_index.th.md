---
title: ติดตั้งAspose.WordsสำหรับAndroidผ่านทางJava
second_title: Aspose.WordsสำหรับJava
articleTitle: ติดตั้งAspose.WordsสำหรับAndroidผ่านทางJava
linktitle: ติดตั้งAspose.WordsสำหรับAndroidผ่านทางJava
description: "การติดตั้งAspose.WordsสำหรับAndroidผ่านทางJava."
type: docs
weight: 20
url: /th/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

ตั้งแต่ 2017 รุ่นของAspose.WordsสำหรับAndroidผ่านทางJavaสอดคล้องกับAspose.WordsสำหรับJava

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## การติดตั้ง

ก่อนหน้านี้Aspose.WordsสำหรับAndroidผ่านทางJavaถูกแจกจ่ายเป็นไฟล์เดียวZIPที่มีไฟล์JARการสาธิตและเอกสารประกอบของAspose.WordsสำหรับAndroidผ่านทางJava.

1. ถ้าคุณต้องการที่จะใช้รุ่นใดๆก่อนAspose.WordsสำหรับAndroidผ่านทางJava1.11คุณเพียงแค่ต้องเปิดเครื่องรูดรุ่นใดๆของAspose.Words.Android.zipลงในไดเรกทอรีที่คุณเลือก.
1. รวมไฟล์โถที่แยกไว้ในแอ็พพลิเคชันของคุณโดยใช้การกำหนดค่าบิลด์พาธสำหรับแอ็พพลิเคชั.

รุ่น1.11และ1.12ถูกแบ่งออกเป็นสองส่วนด้วยตนเอง:JARและAPKเพื่อจำกัดจำนวนของวิธีการในไฟล์DEX ในรุ่นเหล่านี้เราให้โหลดของเราเองAPKเพื่อเริ่มต้นการโหลดที่ถูกต้องของชั้นเรียนเพิ่มเติมแฟ้มเด็กซ์ เริ่มต้นจากรุ่น17.2.0เราสนับสนุนขั้นตอนการทำงานอย่างเป็นทางการอธิบาย [ที่นี่](https://developer.android.com/studio/build/multidex.html).

### วิธีใช้Aspose.WordsสำหรับAndroidผ่านJavaจาก1.11เป็นต้นไป

ก่อนหน้านี้เดียวJARของAspose.WordsสำหรับAndroidผ่านทางJavaมี 47+พันวิธีซึ่งทำให้รุ่นเก่าเล็กๆน้อยๆทำไม่ได้ที่จะใช้ในก ตอนนี้เริ่มต้นจากรุ่นนี้,เราได้เริ่มต้นที่จะลดขนาดของAspose.WordsสำหรับAndroidผ่านทางJavaไลบรารี. ความกังวลที่สำคัญของเราตอนนี้คือการลดจำนวนของวิธีการโดยไม่สูญเสียของการทำงา เรากำลังทำงานอย่างต่อเนื่องในการปรับปรุงคุณภาพและการใช้งานของAspose.WordsสำหรับAndroidผ่านJava.

### Aspose.WordsสำหรับAndroidผ่านทางJavaห้องสมุดแบ่งออกเป็นสองส่วน

เราได้แบ่งห้องสมุดออกเป็นสองที่เก็บต่อไปนี้ที่เก็บ:

- aspose-words-1.11-android-jdk15.jar:อันแรกประกอบด้วยสาธารณะAPIและวิธีการเสริม ปัจจุบันมันมี 32,395 วิธีการ.
- aspose-words-1.11-libs-android-jdk15.apk:อันที่สองประกอบด้วยขวดของบุคคลที่ 3,ชั้นเรียนพื้นฐาน,และทรัพยากร. ปัจจุบันมันมี 18,296 วิธีการ.

### โดยใช้คำแอสพีสสำหรับAndroidผ่านทางJavaตั้งแต่1.11

ในการรวมAspose.WordsสำหรับAndroidผ่านทางJavaในโครงการคุณสามารถใช้วิธีการใดๆต่อไปนี้:

- เมื่อต้องการวาง"aspose-words-1.11-android-jdk15.jar"ในโฟลเดอร์"ไลบ์"ของโครงการของคุณและเก็บ"aspose-words-1.11-libs-android-jdk15.apk"ลงในโฟลเดอร์"สินทรัพย์" ระบุว่าคุณจะใช้AsposeWordsApplicationเป็นพื้นฐานหนึ่ง.

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

เพื่อเริ่มต้นการโหลดของไฟล์เอพีเคในonCreate()วิธีการและถ้าคุณไม่ต้องการที่จะใช้หุ่นยนต์:ชื่อ="คอม.แอสโปสคำพูดAsposeWordsApplication"ในAndroidManifest.xml

**กิจกรรมJavaไฟล์**

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

### ใช้Aspose.WordsสำหรับAndroidผ่านทางJavaในAndroidโปรแกรมทดสอบ

ในการใช้Aspose.WordsสำหรับAndroidผ่านทางJavaในโครงการทดสอบ,วิธีการเดียวกันสามารถนำมาใช้:

- ระบุAsposeWordsTestRunnerในAndroidManifest.xmlของโครงการทดสอบ.

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

ในIDEอาจจำเป็นต้องระบุAsposeWordsTestRunnerในหน้าต่างการกำหนดค่าดังนี้:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- หรือเพื่อเริ่มต้นการโหลดของเอพีเคโดยใช้getTargetContext()วิธีการ.

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## วิธีใช้Aspose.WordsสำหรับAndroidผ่านJavaจาก17.2.0เป็นต้นไป

1. ดาวน์โหลดรุ่นใหม่ล่าสุดของ [แอสโปสWordsสำหรับAndroidผ่านJava](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. คัดลอกaspose-words-18.3-android.via.java.jarลงในโฟลเดอร์*libs/*ของโครงการของคุณ
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### ติดตั้งAspose.WordsสำหรับAndroidผ่านทางJavaจากMavenที่เก็บข้อมูล

1. เพิ่มพื้นที่เก็บข้อมูลmavenลงในบิลด์ของคุณเกรด
1. เพิ่ม'Aspose.WordsสำหรับAndroidผ่านทางJava'JARเป็นการพึ่งพา
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
