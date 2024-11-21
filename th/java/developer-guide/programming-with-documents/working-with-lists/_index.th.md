---
title: ทํางานกับรายการใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับรายการ
linktitle: ทํางานกับรายการ
description: "แนะ นํา ให้ แต่ง ตัว ตาม จํานวน Aspose.Words สําหรับ Java."
type: docs
weight: 200
url: /th/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

รายชื่อใน Microsoft Word เอกสารเป็นชุดคุณสมบัติการฟอร์แมตรายการ รายการต่าง ๆ สามารถถูกใช้ในเอกสารของคุณ ในรูปแบบ, จัดทํา, และเน้นข้อความ รายการ ต่าง ๆ เป็น วิธี ที่ ดี มาก ใน การ จัด การ ข้อมูล ใน เอกสาร ต่าง ๆ และ ทํา ให้ ผู้ อ่าน เข้าใจ จุด สําคัญ ได้ ง่าย ขึ้น.

แต่ละรายการสามารถมีระดับถึง 9 ระดับ และปรับรูปแบบได้ เช่น รูปแบบตัวเลข, เริ่มค่า, ตําแหน่งระยะเยื้อง, ตําแหน่งแท็บ, และอื่น ๆ จะถูกแยกแยกแต่ละระดับ

บทความ นี้ พรรณนา ถึง การ ทํา งาน ด้วย วิธี การ ต่าง ๆ ที่ ใช้ Aspose.Words.

## กําลังสร้างรายการโดยการปรับใช้รูปแบบรายการ

Aspose.Words อนุญาตให้สร้างรายการได้ง่ายขึ้น โดยการปรับใช้รูปแบบรายการ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ให้ [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) คุณสมบัติที่คืนค่า **ListFormat** วัตถุ วัตถุนี้มีวิธีการหลายวิธีในการเริ่มต้นและจบรายการ และเพื่อเพิ่ม/ decrease the Indent มีรายการทั่วไป 2 ประเภท Microsoft Wordกระสุนและหมายเลข:

- การเริ่มต้นรายการกระสุนโทร [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- เริ่มรายการหมายเลข [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

กระสุนหรือตัวเลขและรูปแบบจะถูกเพิ่มไปยังย่อหน้าปัจจุบันและทุก paragraphy ที่สร้างขึ้นโดยใช้ **DocumentBuilder** ถึง [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) ถูกเรียกให้หยุดออกแบบรายการ

ใน เอกสาร คํา ศัพท์ รายการ อาจ ประกอบ ด้วย เก้า ระดับ. รายการการฟอร์แมตสําหรับแต่ละระดับ ระบุว่าใช้กระสุนหรือตัวเลขอะไร ด้านซ้าย, ช่องว่างระหว่างกระสุนและข้อความ เป็นต้น วิธีต่อไปนี้จะเปลี่ยนระดับรายการและปรับใช้คุณสมบัติการฟอร์แมตระดับใหม่:

- เพื่อเพิ่มระดับรายการของย่อหน้าปัจจุบันทีละระดับ ให้เรียก [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- เพื่อลดระดับรายการของย่อหน้าปัจจุบันด้วยระดับหนึ่ง ให้เรียก [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

วิธีการเปลี่ยนระดับรายการ และปรับใช้คุณสมบัติการฟอร์แมตระดับใหม่

{{% alert color="primary" %}}

คุณสามารถใช้ [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) คุณสมบัติที่จะใช้รับหรือตั้งค่าระดับรายการของย่อหน้า ระดับรายชื่ออยู่ที่ 0 ถึง 8

{{% /alert %}}

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง วิธี สร้าง รายการ หลาย ระดับ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## กําหนดรูปแบบสําหรับระดับรายการ

วัตถุระดับรายการถูกสร้างโดยอัตโนมัติเมื่อสร้างรายการ ใช้คุณสมบัติและวิธีการของ [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) คลาสควบคุมการฟอร์แมตของรายการแต่ละคน

## เริ่มรายการใหม่สําหรับแต่ละหัวข้อ

คุณสามารถเริ่มการทํางานรายการสําหรับแต่ละส่วนใหม่อีกครั้งได้ โดยใช้ [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) ทรัพย์สิน โปรดสังเกตว่า ตัวเลือกนี้ได้ถูกรองรับเฉพาะในรูปแบบเอกสาร RTF, DOC และ DOCX เท่านั้น ตัวเลือกนี้จะถูกเขียนเป็น DoCX ก็ต่อเมื่อ Ooxml Complience สูงกว่า จากนั้น Ecma376

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีสร้างรายการ และเริ่มใหม่อีกครั้งสําหรับแต่ละส่วน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

