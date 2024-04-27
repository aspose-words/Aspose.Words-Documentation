---
title: โปรแกรมแรกสําหรับ Android ผ่าน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: โปรแกรมแรกของคุณ
linktitle: โปรแกรมแรกของคุณ
description: "กําลังติดตั้ง Aspose.Words สําหรับ Android ผ่าน Java."
type: docs
weight: 30
url: /th/java/your-first-application/
---

บทความ นี้ ให้ แนว คิด ที่ จะ เริ่ม ด้วย Aspose.Words สําหรับ Android ผ่าน Java. มันจะแสดงวิธีการตั้งใหม่ Android โครงการจากรอยขีดข่วน เพิ่มการอ้างอิงไปยัง Aspose.Words JAR และสร้างเอกสารใหม่ที่ถูกบันทึกเป็นดิสก์ในรูปแบบ DCX ตัวอย่างนี้ใช้ [Android สตูดิโอ](https://developer.android.com/studio/index.html) สําหรับการพัฒนา และโปรแกรมกําลังทํางานอยู่ Android ผู้ปลดปล่อย เริ่มด้วย Aspose.Words สําหรับ Android ผ่าน Javaกรุณาทําตามขั้นตอนนี้ขั้นตอนการสร้างแอพที่ใช้ Aspose.Words สําหรับ Android ผ่าน Java

1 ดาวน์โหลดและ [Android สตูดิโอ](https://developer.android.com/studio/index.html) และติดตั้งไปยังทุกที่
1 วิ่ง Android สตูดิโอ
1 สร้างใหม่ Android โครงการโปรแกรม<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. คัดลอกคําค้น 1 & 7.5-android.via.java.jar ในโครงการ libs/โฟลเดอร์ย่อยของคุณ<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1 เลือกส่วนโครงการ (จากเมนูแฟ้มแล้วคลิกบนแท็บสิ่งอํานวยความสะดวก)
   1. คลิกที่ปุ่ม "+" แล้วเลือกตัวเลือกที่เชื่อมโยงแฟ้ม
   1 เลือก Aspose.Words ไลบรารีจากโฟลเดอร์ libs แล้วคลิกที่ โอเค<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1 ปรับเทียบโครงการด้วยแฟ้ม Gradledge ถ้าจําเป็น<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1 ในการเข้าใช้สิทธิ์ที่อนุญาตพิเศษของ SDcard ต้องมีการเพิ่มเข้าไป คลิกบน Androidแสดงแฟ้ม.xml และเลือกมุมมอง XML เพิ่มบรรทัดต่อไปนี้ไปยังแฟ้ม <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1 นํากลับมาใช้ส่วนโค้ดของโปรแกรม และเพิ่มส่วนนําเข้าต่อไปนี้:<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
จากนั้นใส่โค้ดต่อไปนี้ในร่างกายของวิธีการบน Cred เพื่อสร้างเอกสารใหม่จากรอยขีดข่วน Aspose.Words,
ใส่ข้อความบางส่วนและบันทึกเป็น SDCard ในรูปแบบ DOCX<br/>
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
รหัสเต็มควรเป็นแบบนี้<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1 เริ่มโปรแกรมอีกครั้ง ครั้งนี้ Aspose.Words Code จะทํางานอยู่เบื้องหลังและสร้างเอกสารที่ถูกบันทึกเป็น SDcard<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1 เพื่อดูเอกสารที่ถูกสร้างขึ้น เพื่อเรียกดูเมนูเครื่องมือ จากนั้นเลือก Android และเลือก Android ติดตามดูอุปกรณ์<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1 ใช้ตัวแสดงปริยายเพื่อเปิดเอกสาร ผลผลิตที่ผลิตจากแอพ ที่มีโค๊ดไม่กี่บรรทัดเป็นแบบนี้<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)