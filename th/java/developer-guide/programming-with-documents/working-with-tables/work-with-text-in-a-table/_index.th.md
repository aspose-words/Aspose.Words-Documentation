---
title: ทํางานกับข้อความในตาราง
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับข้อความในตาราง
linktitle: ทํางานกับข้อความในตาราง
description: "แทนที่ข้อความในตาราง Java. คลายข้อความธรรมดาจากตารางหรือเซลล์โดยใช้ Java."
type: docs
weight: 60
url: /th/java/extract-text-from-and-replace-text-in-a-table/
---

ดัง ที่ กล่าว ไป แล้ว ใน บทความ ก่อน ตาราง มัก มี ข้อ ความ ธรรมดา ๆ แม้ ว่า จะ มี เนื้อหา อื่น ๆ เช่น รูป ภาพ หรือ แม้ แต่ ตาราง อื่น ๆ ก็ สามารถ ใส่ ไว้ ใน เม็ด อาหาร ได้.

การเพิ่มข้อความหรือเนื้อหาอื่น ๆ ไปยังตาราง จะดําเนินการโดยใช้วิธีการที่เหมาะสม [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ห้องเรียนและได้รับการอธิบายใน **"จัดโต๊ะ"** บทความ. ใน บทความ นี้ เรา จะ พิจารณา วิธี ที่ จะ ใช้ ข้อ ความ ใน โต๊ะ ที่ มี อยู่ แล้ว.

## แทนที่ข้อความในตาราง

โต๊ะนั่น เหมือนกับโหนกอื่นๆ Aspose.Words, มีการเข้าถึง [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) วัตถุ โดยใช้วัตถุในตาราง คุณสามารถแทนที่ข้อความในตารางได้

ความสามารถในการใช้อักขระพิเศษเมื่อทําการแทนที่อยู่ จึงเป็นไปได้ที่จะแทนที่ข้อความที่มีอยู่ด้วยข้อความหลายข้อความ ในการทําเช่นนี้คุณต้องใช้ parts พิเศษที่อธิบายใน [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) วิธี

{{% alert color="primary" %}}

โดย ทั่ว ไป ควร ทํา การ เปลี่ยน ข้อ ความ ใน ระดับ เซลล์ (Perเซลล์) หรือ ที่ ระดับ วรรค.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีแทนที่ข้อความทั้งหมดในตารางทั้งหมด:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## คลายข้อความธรรมดาออกจากตาราง

ใช้ **Range** วัตถุ คุณสามารถเรียกวิธีการในตารางทั้งหมด และแยกตารางเป็นข้อความธรรมดา เพื่อทําสิ่งนี้ ใช้ [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) ทรัพย์สิน

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี พิมพ์ ข้อ ความ ใน ตาราง ดัง ต่อ ไป นี้:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

เทคนิค เดียว กัน นี้ ใช้ เพื่อ สกัด เอา เนื้อหา จาก เซลล์ ของ โต๊ะ แต่ ละ เซลล์.

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการพิมพ์ข้อความในช่วงของแถวและองค์ประกอบตาราง:

{{% /alert %}}

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ พิมพ์ ข้อ ความ ใน รูป แถว และ หมาย เลข ตาราง.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## ทํางานกับข้อความที่เลือกไว้

Microsoft Word ตารางมี `table title` ถึง `table description` นั่น เป็น การ แสดง ข้อ ความ อีก อย่าง หนึ่ง ของ ข้อมูล ที่ มี อยู่ ใน โต๊ะ.

ใน Aspose.Words, คุณสามารถเพิ่มชื่อตารางและคําอธิบายโดยใช้ [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) ถึง [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) คุณสมบัติ คุณสมบัติเหล่านี้มีความหมายสําหรับเอกสาร DoCX ที่สอดคล้องกับ ISO2500. เมื่อบันทึกในรูปแบบก่อน ISO2500 ทรัพย์สินเหล่านี้ถูกละเลย

ตัวอย่างรหัสต่อไปนี้แสดงวิธีตั้งค่าชื่อและคําอธิบายของตาราง:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}