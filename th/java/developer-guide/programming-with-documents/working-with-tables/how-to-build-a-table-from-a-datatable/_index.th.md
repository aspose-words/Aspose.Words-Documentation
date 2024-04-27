---
title: วิธี สร้าง โต๊ะ จาก `DataTable` ใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: สร้างตารางจาก `DataTable`
linktitle: สร้างตารางจาก `DataTable`
description: "ตัวอย่างของการเติมตารางเอกสารจากฐานข้อมูลภายนอกโดยใช้ Java."
type: docs
weight: 130
url: /th/java/how-to-build-a-table-from-a-datatable/
---

บ่อยครั้งที่โปรแกรมของคุณจะดึงข้อมูลจากฐานข้อมูล และจัดเก็บไว้ในรูปแบบของ **DataTable**. คุณ อาจ อยาก จะ สอด ข้อมูล เหล่า นี้ เข้า ไป ใน เอกสาร ของ คุณ เป็น ตาราง ใหม่ และ นํา มา ปรับ ปรุง ให้ เข้า กับ ตาราง ทั้ง หมด อย่าง รวด เร็ว.

{{% alert color="primary" %}}

สังเกตว่าวิธีเพิ่มเติมในการใส่ข้อมูลจาก **DataTable** ไปยังตารางเอกสารโดยการใช้ [Mail Merge ขอสาบานต่อมะลาอิกะฮฺที่จําแนกระหว่างความจริงกับความเท็จ](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). เทคนิค ที่ นํา เสนอ ใน บทความ นี้ จะ แนะ ว่า ถ้า คุณ ไม่ สามารถ สร้าง แม่ แบบ ที่ เหมาะ สม ได้ ก่อน ที่ จะ รวม ข้อมูล เข้า ด้วย พูด อีก อย่าง หนึ่ง คือ ถ้า คุณ ต้องการ ให้ ทุก อย่าง เกิด ขึ้น ตาม โปรแกรม.

{{% /alert %}}

ใช้ Aspose.Words, คุณสามารถดึงข้อมูลจากฐานข้อมูลและเก็บข้อมูลได้โดยง่าย

1 สร้างใหม่ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) วัตถุบนของคุณ [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1 เริ่มตารางใหม่โดยใช้ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1 ถ้าเราใส่ชื่อของแต่ละคอลัมน์ **DataTable** เป็นแถวหัวกระดาษ แล้วเขียนค่าผ่านแต่ละคอลัมน์ข้อมูล แล้วเขียนคอลัมน์ลงบนแถวในตาราง
1 ทําซ้ําผ่านแต่ละ **DataRow** ใน **DataTable**
   1. ประมวลผลผ่านแต่ละวัตถุใน **DataRow**.
   1. แทรกวัตถุเข้าไปในเอกสารโดยใช้ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). วิธีการที่ใช้ขึ้นอยู่กับชนิดของวัตถุที่ถูกแทรก e.g [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()สําหรับข้อความและ [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])สําหรับอาร์เรย์ที่แสดงถึงภาพ
   1. ตอนจบของการประมวลผลแถวข้อมูล ก็จบแถวที่สร้างโดย [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) โดยใช้ [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1 เมื่อแถวทั้งหมดมาจาก **DataTable** ได้ดําเนินการเสร็จสิ้นตารางด้วยการเรียก [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1 สุดท้าย, เราสามารถตั้งค่ารูปแบบตารางที่ต้องการ โดยใช้คุณสมบัติตารางที่เหมาะสมอย่างหนึ่ง เช่น [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) ให้ปรับใช้รูปแบบกับทั้งตารางโดยอัตโนมัติ
   ข้อมูลต่อไปนี้ใน **DataTable** มี การ ใช้ ใน ตัว อย่าง นี้:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการประมวลผลอัลกอริทึมด้านบนใน Aspose.Words

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

แล้ววิธีการสามารถเรียกง่าย ๆ ว่าการใช้ของคุณ **DocumentBuilder** และข้อมูล

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการนําเข้าข้อมูลจาก `DataTable` แล้วใส่มันลงในตารางใหม่ในเอกสาร:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

ตาราง ที่ แสดง ใน ภาพ ข้าง ล่าง นี้ ผลิต โดย ใช้ รหัส ข้าง บน.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
