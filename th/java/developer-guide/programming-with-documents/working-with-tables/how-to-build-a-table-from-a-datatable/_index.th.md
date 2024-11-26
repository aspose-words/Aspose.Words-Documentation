---
title: วิธีการสร้างตารางจากDataTableในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: สร้างตารางจากDataTable
linktitle: สร้างตารางจากDataTable
description: "ตัวอย่างการกรอกตารางเอกสารจากฐานข้อมูลภายนอกโดยใช้Java."
type: docs
weight: 130
url: /th/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

บ่อยครั้งที่โปรแกรมประยุกต์ของคุณจะดึงข้อมูลจากฐานข้อมูลและเก็บไว้ในรูปแบบของ**DataTable** คุณอาจต้องการแทรกข้อมูลนี้ลงในเอกสารของคุณเป็นตารางใหม่ได้อย่างง่ายดายและใช้.

{{% alert color="primary" %}}

โปรดทราบว่าวิธีที่ต้องการในการแทรกข้อมูลจาก**DataTable**ลงในตารางเอกสารคือโดยใช้ [Mail Mergeกับภูมิภาค](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). เทคนิคที่นำเสนอในบทความนี้จะแนะนำเฉพาะถ้าคุณไม่สามารถสร้างแม่แบบที่เหมาะสมล่.

{{% /alert %}}

โดยใช้Aspose.Wordsคุณสามารถดึงข้อมูลจากฐานข้อมูลและจัดเก็บเป็นตาราง:

1. สร้างวัตถุใหม่[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)บน[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)ของคุณ.
1. เริ่มต้นตารางใหม่โดยใช้[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. ถ้าเราต้องการแทรกชื่อของแต่ละคอลัมน์จาก**DataTable**ของเราเป็นแถวส่วนหัวแล้วซ้ำผ่านแต่ละคอลัมน์ข้อมูลและเขียนชื่อคอลัมน์ลงในแถวในตาราง.
1. ย้ำผ่านแต่ละ**DataRow**ใน**DataTable**:
   1. ย้ำผ่านแต่ละวัตถุใน**DataRow**.
   1. ใส่วัตถุลงในเอกสารด้วย[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) วิธีการที่ใช้ขึ้นอยู่กับชนิดของวัตถุที่ถูกแทรกเช่น[DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln())สำหรับข้อความและ[DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[]))สำหรับอาร์เรย์ไบต์ที่แ.
   1. ในตอนท้ายของการประมวลผลของแถวข้อมูลยังสิ้นสุดแถวที่ถูกสร้างขึ้นโดย[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder)โดยใช้[DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. เมื่อแถวทั้งหมดจาก**DataTable**ได้รับการประมวลผลเสร็จสิ้นตารางโดยการโทร[DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. ในที่สุด เราก็สามารถตั้งค่ารูปแบบตารางที่ต้องการได้โดยใช้คุณสมบัติตารางที่เหมาะสมอย่างใดอย่างหนึ่ง เช่น [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) เพื่อนำการจัดรูปแบบไปใช้กับตารางทั้งหมดโดยอัตโนมัติ.
   ข้อมูลต่อไปนี้ใน**DataTable**ของเราถูกนำมาใช้ในตัวอย่างนี้:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดำเนินการอัลกอริทึมข้างต้นในAspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

วิธีการนั้นสามารถเรียกได้อย่างง่ายดายโดยใช้ของคุณ**DocumentBuilder**และข้อมูล.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการนำเข้าข้อมูลจาก`DataTable`และแทรกลงในตารางใหม่ในเอกสาร:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

ตารางที่แสดงในภาพด้านล่างจะผลิตโดยการเรียกใช้รหัสข้างต้น.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
