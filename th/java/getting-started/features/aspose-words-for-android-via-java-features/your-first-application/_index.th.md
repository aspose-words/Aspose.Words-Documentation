---
title: ใบสมัครครั้งแรกของคุณสำหรับAndroidผ่านJava
second_title: Aspose.WordsสำหรับJava
articleTitle: ใบสมัครครั้งแรกของคุณ
linktitle: ใบสมัครครั้งแรกของคุณ
description: "การติดตั้งAspose.WordsสำหรับAndroidผ่านทางJava."
type: docs
weight: 30
url: /th/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

บทความนี้จะช่วยให้คุณมีความคิดในการเริ่มต้นด้วยAspose.WordsสำหรับAndroidผ่านทางJava มันจะสาธิตวิธีการตั้งค่าโครงการAndroidใหม่จากรอยขีดข่วน,เพิ่มการอ้างอิงไปยังAspose.WordsJARและสร้างเอกสารใหม่ที่ถูกบันทึกไว้ในดิสก์ในรูปแบบDOCX. ตัวอย่างนี้ใช้ [Androidสตูดิโอ](https://developer.android.com/studio/index.html) สำหรับการพัฒนาและการประยุกต์ใช้จะทำงานบนAndroidจำลอง เริ่มต้นด้วยAspose.WordsสำหรับAndroidผ่านทางJavaโปรดทำตามขั้นตอนนี้โดยขั้นตอนการสอนเพื่อสร้างแอปที่ใช้Aspose.WordsสำหรับAndroidผ่านทางJava:

1. ดาวน์โหลดและ [Androidสตูดิโอ](https://developer.android.com/studio/index.html) และติดตั้งไปยังสถานที่ใดๆ.
1. เรียกใช้สตูดิโอAndroid.
1. สร้างโปรเจ็กต์แอ็พพลิเคชันAndroidใหม่<br>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. คัดลอกaspose-words-17.5-android.via.java.jarลงในไลบรารี/โฟลเดอร์ของโครงการของคุณ<br>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. เลือกส่วนโครงการ(จากแฟ้มเมนูและคลิกที่การอ้างอิงแท็บ.
   1. คลิกที่ปุ่ม"+"เลือกตัวเลือกการพึ่งพาแฟ้ม.
   1. เลือกAspose.Wordsห้องสมุดจากโฟลเดอร์ไลบรารีและคลิกที่OK<br>
   ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. ซิงค์โปรเจ็กต์กับไฟล์เกรดถ้าจำเป็น<br>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. เพื่อเข้าถึงSDcardสิทธิ์พิเศษจะต้องเพิ่ม คลิกที่ไฟล์AndroidManifest.xmlและเลือกมุมมองXML เพิ่มบรรทัดต่อไปนี้ไปยังแฟ้ม <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. นำทางกลับไปยังส่วนโค้ดของแอปและเพิ่มการนำเข้าต่อไปนี้:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
จากนั้นใส่รหัสต่อไปนี้ในเนื้อหาของวิธีการonCreateเพื่อสร้างเอกสารใหม่จากรอยขีดข่วนโดยใช้Aspose.Words,
แทรกข้อความบางข้อความและบันทึกไว้ในรูปแบบSDCardในDOCX<br>
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
รหัสเต็มควรมีลักษณะเช่นนี้:<br>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. ตอนนี้เรียกใช้โปรแกรมประยุกต์อีกครั้ง เวลานี้รหัสAspose.Wordsจะทำงานในพื้นหลังและสร้างเอกสารที่ถูกบันทึกไว้ในSDcard<br>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. หากต้องการดูเอกสารที่สร้างขึ้นให้ไปที่เมนูเครื่องมือจากนั้นเลือกAndroidและเลือกAndroidจอภาพของอุปกรณ์<br>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. ใช้มุมมองดีฟอลต์เพื่อเปิดเอกสาร การส่งออกที่สร้างขึ้นโดยการตรวจสอบที่มีเพียงไม่กี่บรรทัดของรหัสมีลักษณะเช่นนี้:<br>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
