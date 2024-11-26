---
title: จัดลำดับและทำงานกับเอกสารในฐานข้อมูล
second_title: Aspose.WordsสำหรับJava
articleTitle: จัดลำดับและทำงานกับเอกสารในฐานข้อมูล
linktitle: จัดลำดับและทำงานกับเอกสารในฐานข้อมูล
description: "แปลงเอกสารเป็นอาร์เรย์ไบต์สำหรับการทำงานกับเอกสารนี้ในฐานข้อมูล คุณสามารถจัดเก็บและดึงเอกสารไปยังและจากฐานข้อมูลโดยใช้Java."
type: docs
weight: 40
url: /th/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

หนึ่งในงานที่คุณอาจต้องดำเนินการเมื่อทำงานกับเอกสารคือการจัดเก็บและดึงออบเจกต์**Document**ไปและกลับจากฐานข้อมูล งเช่นนี้จะมีความจำเป็นถ้าคุณกำลังใช้ระบบการจัดการเนื้อหาชนิดใดๆ เอกสารรุ่นก่อนหน้าทั้งหมดจะต้องถูกเก็บไว้ในระบบฐานข้อมูล ความสามารถในการจัดเก็บเอกสารในฐานข้อมูลยังมีประโยชน์อย่างมากเมื่อโปรแกรมป.

Aspose.Wordsให้ความสามารถในการแปลงเอกสารเป็นอาร์เรย์ไบต์สำหรับงานที่ตามมากับเอกสารนี้.

## แปลงเอกสารเป็นอาร์เรย์ไบต์

การจัดเก็บเอกสารในฐานข้อมูลหรือการเตรียมเอกสารสำหรับการส่งผ่านเว็บก็มักจะจำ.

เพื่อจัดลำดับวัตถุ[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)ในAspose.Words:

1. บันทึกลงใน**MemoryStream**โดยใช้[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int)วิธีการโอเวอร์โหลดของ**Document**คลาส.
1. เรียกวิธีการ**ToArray**ซึ่งส่งกลับอาร์เรย์ของไบต์ที่แสดงเอกสารในรูปแบบไบต์.

ขั้นตอนข้างต้นสามารถย้อนกลับเพื่อโหลดไบต์กลับไปยังวัตถุ**Document**.

{{% alert color="primary" %}}

รูปแบบการบันทึกที่เลือกเป็นสิ่งสำคัญเพื่อให้แน่ใจว่าความจงรักภักดีสูงสุดจะถูกเก็บไว้เมื่อบันทึกและโหลดไปยังออบเจกต์**Document** ด้วยเหตุนี้จึงแนะนำให้ใช้ชุดของOOXMLรูปแบบไฟล์.

{{% /alert %}}

ตัวอย่างด้านล่างแสดงวิธีการจัดลำดับวัตถุ**Document**เพื่อขอรับอาร์เรย์ไบต์และจากนั้นวิธีการยกเลิกการเรียงลำดับอาร์เรย์ไบต์เพื่อขอรับวัตถุ**Document**อีกครั้ง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## เก็บอ่านและลบเอกสารในฐานข้อมูล

ส่วนนี้แสดงวิธีการบันทึกเอกสารในฐานข้อมูลและโหลดกลับไปยังออบเจกต์`Document`สำหรับการ เพื่อความเรียบง่ายชื่อแฟ้มเป็นคีย์ที่ใช้ในการจัดเก็บและดึงเอกสารจากฐานข้อมูล ฐานข้อมูลประกอบด้วยสองคอลัมน์ คอลัมน์แรก"FileName"จะถูกเก็บเป็นสตริงและใช้เพื่อระบุเอกสาร คอลัมน์ที่สอง"FileContent"ถูกเก็บไว้เป็นวัตถุ`BLOB`ซึ่งจัดเก็บวัตถุเอกสารในรูปแบบไบต์.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าการเชื่อมต่อกับฐานข้อมูลและรันคำสั่ง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

ในตัวอย่างนี้เราใช้ฐานข้อมูลMySQLเพื่อเก็บเอกสารAspose.Words.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการบันทึกเอกสารไปยังฐานข้อมูลแล้วอ่านเอกสารเดียวกันอี:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### บันทึกเอกสารไปยังฐานข้อมูล

เมื่อต้องการบันทึกเอกสารในฐานข้อมูลแปลงเอกสารนี้เป็นอาร์เรย์ของไบต์ตามที่อธิบาย จากนั้นบันทึกอาร์เรย์ไบต์นี้ลงในฟิลด์ฐานข้อมูล.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการบันทึกเอกสารไปยังฐานข้อมูลที่ระบุ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

ระบุcommandStringซึ่งเป็นSQLนิพจน์ที่ทำงานทั้งหมด:

- เมื่อต้องการบันทึกเอกสารลงในฐานข้อมูลใช้คำสั่ง"INSERTINTO"และตารางที่ระบุพร้อมกับค่าของสองเขตข้อมูลระเบียน-FileNameและFileContent เมื่อต้องการหลีกเลี่ยงพารามิเตอร์เพิ่มเติมชื่อไฟล์จะถูกนำมาจากออบเจกต์**Document**ตัวเอง ค่าฟิลด์`FileContent`ถูกกำหนดไบต์จากสตรีมหน่วยความจำซึ่งประกอบด้วยตัวแทนไบนารีของเอกสารที่.
- บรรทัดที่เหลือของรหัสรันคำสั่งที่เก็บเอกสารAspose.Wordsในฐานข้อมูล.

### ดึงเอกสารจากฐานข้อมูล

เมื่อต้องการดึงเอกสารจากฐานข้อมูลให้เลือกระเบียนที่ประกอบด้วยข้อมูลเอกสารเป็นอ แล้วโหลดอาร์เรย์ไบต์จากเรกคอร์ดลงใน**MemoryStream**และสร้างวัตถุ**Document**ที่จะโหลดเอกสารจาก**MemoryStream**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดึงข้อมูลและส่งคืนเอกสารจากฐานข้อมูลที่ระบุโดยใช้ชื่อ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

คำสั่งSQL"SELECT*FROM"ถูกใช้เพื่อดึงข้อมูลระเบียนที่เหมาะสมตามชื่อแฟ้ม.

{{% /alert %}}

### ลบเอกสารจากฐานข้อมูล

เมื่อต้องการลบเอกสารออกจากฐานข้อมูลให้ใช้คำสั่งSQLที่เหมาะสมโดยไม่มีการจัดกิจวัตรใดๆบนวัตถุ**Document**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลบเอกสารจากฐานข้อมูลโดยใช้ชื่อแฟ้มเพื่อดึงข้อมูลเรก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
