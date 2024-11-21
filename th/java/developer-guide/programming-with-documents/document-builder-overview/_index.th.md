---
title: ผู้สร้างเอกสาร ดูภาพรวม Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ภาพรวมของผู้สร้างเอกสาร
linktitle: ภาพรวมของผู้สร้างเอกสาร
type: docs
description: "ตัวสร้างเอกสารอนุญาตให้คุณสร้างเอกสารแบบไม่ตายตัวจากรอยขีดข่วน หรือเพิ่มองค์ประกอบใหม่ไปยังเอกสารที่มีอยู่แล้ว ผู้สร้างเอกสารมีวิธีการในการแทรกข้อความ, Checkboxs, ตาราง, รูปภาพ, และองค์ประกอบเนื้อหาอื่น ๆ ใน Java."
weight: 30
url: /th/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) เป็นชนชั้นที่มีอํานาจมาก [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) และทําให้คุณสามารถสร้างเอกสารไดนามิกจากรอยขีดข่วน หรือเพิ่มองค์ประกอบใหม่ไปยังเอกสารที่มีอยู่แล้ว

**DocumentBuilder** วิธี การ ต่าง ๆ ที่ ใช้ ใน การ แทรก ข้อ ความ, กล่อง, วัตถุ, วรรค, รายการ, ตาราง, ภาพ, และ ส่วน ประกอบ อื่น ๆ ของ เนื้อหา. มันอนุญาตให้คุณระบุแบบอักษร, ย่อหน้า หรือส่วน การฟอร์แมต, และปฏิบัติการอื่น ๆ

## ตัวสร้างเอกสารหรือ Aspose.Words DOM

**DocumentBuilder** คอมพลีเมนต์คลาสและวิธีการที่มีใน Aspose.Words Document Object Model (DOMเพื่อลดงานการสร้างเอกสาร นั่นคือ คุณสามารถสร้างและแก้ไขเนื้อหาของเอกสารทั้งสองผ่าน Aspose.Words DOMซึ่งต้องใช้ความเข้าใจที่ดีเกี่ยวกับโครงสร้างของต้นไม้ และการใช้ตัวสร้างเอกสาร เดอะ `DocumentBuilder` เป็น "ความซับซ้อน" ของความซับซ้อน **Document** โครง สร้าง ที่ ทํา ให้ คุณ สามารถ สอด เนื้อหา และ การ ตกแต่ง เข้า ไป ได้ อย่าง ง่าย ดาย.

ปฏิบัติการที่เป็นไปได้ **DocumentBuilder** ก็เป็นไปได้เช่นกันเมื่อใช้ชั้นเรียน Aspose.Words DOM โดยตรง อย่างไรก็ตาม ใช้ Aspose.Words DOM คลาสปกติมักต้องใช้โค๊ดมากกว่าการใช้ **DocumentBuilder**.

## การนําทางเอกสาร

การนําทางเอกสารนั้น อาศัยคอนเซ็ปต์ของเคอร์เซอร์เสมือน ซึ่งคุณสามารถย้ายไปยังอีกตําแหน่งหนึ่งได้ในเอกสาร โดยใช้ตัวเลือกต่าง ๆ **DocumentBuilder.MoveToXXX** วิธีการต่าง ๆ เช่น [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) ถึง [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). เคอร์เซอร์เสมือนนี้ แสดงถึงตําแหน่งของข้อความ เมื่อมีการเรียกวิธีการ [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), และคนอื่นๆ ดู บทความ ต่อ ไป นี้ ที่ ชื่อ "การ เคลื่อน ที่ ด้วย เคอร์เซอร์ " เพื่อ เรียน รู้ มาก ขึ้น เกี่ยว กับ เคอร์เซอร์ จริง ๆ.

ตัวอย่างโค้ดต่อไปนี้แสดงถึงวิธีการนําไปยังที่คั่นหน้า:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## การ สร้าง เอกสาร และ การ แก้ไข

Aspose.Words API จัด ให้ มี หลาย ชั้น ที่ ต้อง รับ ผิด ชอบ ใน การ แต่ง เติม ส่วน ต่าง ๆ ของ เอกสาร. แต่ ละ ชั้น รวม เอา คุณสมบัติ การ ฟอร์แมต ซึ่ง เกี่ยว ข้อง กับ ธาตุ เฉพาะ อย่าง เช่น ข้อ, วรรค, และ ส่วน อื่น ๆ. ยกตัวอย่างเช่น [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) คลาสแทนคุณสมบัติการฟอร์แมตตัวอักษร [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) คลาสแสดงคุณสมบัติการตกแต่ง และอื่นๆ วัตถุต่าง ๆ ในคลาสนี้ ถูกคืนให้ตามเดิม **DocumentBuilder** คุณสมบัติที่มีชื่อเดียวกับชั้นเรียน ดัง นั้น คุณ สามารถ เข้า ไป ได้ และ ทํา การ ฟอร์แมต ที่ ต้องการ ระหว่าง การ สร้าง เอกสาร.

คุณยังสามารถแทรกข้อความ, กล่องกาเลือก, วัตถุ, ภาพ, ที่คั่นหน้า, แบบฟอร์ม, และองค์ประกอบเอกสารอื่น ๆ ที่ตําแหน่งเคอร์เซอร์ได้โดยใช้ `Write` วิธีการหรือใด ๆ **DocumentBuilder.InsertXXX** วิธีการ เช่น [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), และวิธีคล้ายๆกัน

ลองดูวิธีสร้างเอกสารง่ายๆ โดยใช้ **DocumentBuilder**.

### สร้างเอกสารโดยใช้ตัวสร้างเอกสาร

เพื่อเริ่มต้น คุณต้องสร้าง **DocumentBuilder** ขอสาบานต่อมะลาอิกะฮฺที่จําแนกระหว่างความจริงกับความเท็จ **Document** วัตถุ คุณสร้างตัวอย่างของ **DocumentBuilder** ด้วยการเรียกตัวสร้าง แล้วส่งต่อไปยัง **Document** วัตถุสําหรับสิ่งที่แนบมาด้วยกับผู้สร้าง

หากต้องการแทรกข้อความ คุณต้องป้อนข้อความเข้าไปในเอกสาร **Write** วิธี

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี สร้าง เอกสาร แบบ ง่าย ๆ โดย ใช้ ผู้ สร้าง เอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### ระบุรูปแบบเอกสาร

เดอะ [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) คุณสมบัติ กําหนดการฟอร์แมตข้อความออบเจกต์นี้จะบรรจุคุณสมบัติของแบบอักษรที่แตกต่างกัน (ชื่อเต็ม, ขนาดตัวอักษร, สี เป็นต้น) คุณสมบัติบางอย่างที่สําคัญของแบบอักษรนี้ แสดงด้วย **DocumentBuilder** คุณสมบัติที่ช่วยให้คุณเข้าถึงมันโดยตรง นี่คือ [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), ถึง [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) สมบัติบูเลอัน

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการใส่ข้อความแบบสมบูรณ์โดยใช้ **DocumentBuilder**

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) กําหนดรูปแบบตัวอักษรที่จะใช้กับข้อความทั้งหมดที่แทรกมาจากตําแหน่งปัจจุบันในเอกสาร
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) กําหนดรูปแบบย่อหน้าสําหรับทั้งปัจจุบันและทุกย่อหน้าที่จะแทรก
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) กําหนดคุณสมบัติของหน้าและส่วนสําหรับส่วนปัจจุบัน และทั้งส่วนที่จะแทรก
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) ถึง [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) กําหนดคุณสมบัติการฟอร์แมตที่จะใช้กับตารางเซลล์และแถวจากตําแหน่งปัจจุบันในเอกสาร เป็นต้น

ในสถานการณ์นี้ "ปัจจุบัน" หมายถึง ตําแหน่ง, วรรค, ส่วน, เซลล์, หรือแถวที่เคอร์เซอร์อยู่

{{% /alert %}}

{{% alert color="primary" %}}

สังเกตว่า **Font**, **ParagraphFormat**, ถึง **PageSetup** คุณสมบัติจะถูกปรับปรุงเมื่อใดก็ตามที่คุณนําทางไปยังตําแหน่งอื่น ๆ ในเอกสาร เพื่อสะท้อนคุณสมบัติการฟอร์แมตของตําแหน่งนี้

{{% /alert %}}
