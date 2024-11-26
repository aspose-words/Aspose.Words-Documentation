---
title: ภาพรวมของตัวสร้างเอกสารในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: ภาพรวมสร้างเอกสาร
linktitle: ภาพรวมสร้างเอกสาร
type: docs
description: "DocumentBuilderช่วยให้คุณสามารถสร้างเอกสารแบบไดนามิกจากรอยขีดข่วนหรือเพิ่มองค์ประกอบใหม่ใ DocumentBuilderมีวิธีการแทรกข้อความ,checkboxเอส,ตาราง,รูปภาพ,และองค์ประกอบเนื้อหาอื่นๆในJava."
weight: 30
url: /th/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)เป็นคลาสที่มีประสิทธิภาพที่เชื่อมโยงกับ[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)และช่วยให้คุณสามารถสร้างเอกสารแบบไดนามิ.

**DocumentBuilder**

## สร้างเอกสารหรือAspose.WordsDOM

**DocumentBuilder**

การดำเนินงานที่เป็นไปได้ด้วย**DocumentBuilder**นอกจากนี้ยังเป็นไปได้เมื่อใช้ชั้นเรียนของAspose.WordsDOMโดยตรง อย่างไรก็ตามการใช้ชั้นเรียนAspose.WordsDOMโดยตรงมักจะต้องใช้บรรทัดของรหัสมากกว่าการใช้**DocumentBuilder**.

## นำทางเอกสาร

การนำทางเอกสารขึ้นอยู่กับแนวคิดของเคอร์เซอร์เสมือนซึ่งคุณสามารถย้ายไปยังตำแหน่งอื่นในเอกสารโดยใช้วิธีการต่างๆ**DocumentBuilder.MoveToXXX**เช่น[MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart)และ[MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) นูป๊อปอัปที่จะให้เลือกความช่วยเหลือหากต้องการทดสอบให้คลิกเมาส์ปุ่มขวาบนที่ใดๆของข้[Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), และอื่นๆ ดูบทความต่อไปนี้"นำทางด้วยเคอร์เซอร์"เพื่อเรียนรู้เพิ่มเติมเกี่ยวกับเคอร์เซอร์เสมือน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการนำทางไปยังบุ๊กมาร์ก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## การสร้างและแก้ไขเอกสาร

Aspose.WordsAPIมีหลายชั้นเรียนที่มีความรับผิดชอบสำหรับการจัดรูปแบบองค์ประกอบต่างๆของเอกสาร แต่ละชั้นเรียนห่อหุ้มคุณสมบัติการจัดรูปแบบที่เกี่ยวข้องกับองค์ประกอบเอกสารที่เฉพาะเจ ตัวอย่างเช่นคลาส[Font](https://reference.aspose.com/words/java/com.aspose.words/font/)แสดงถึงคุณสมบัติการจัดรูปแบบอักขระคลาส[ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/)แสดงถึงคุณสมบัติการจัดรูป วัตถุของชั้นเรียนเหล่านี้จะถูกส่งกลับโดยสอดคล้องกัน**DocumentBuilder**คุณสมบัติซึ่งมีชื่อเดียวกันกับชั้นเรียน นั้นคุณสามารถเข้าถึงพวกเขาและตั้งค่าการจัดรูปแบบที่ต้องการในระหว่างการสร้างเอก.

นอกจากนี้คุณยังสามารถแทรกข้อความcheckbox,วัตถุโอลิรูปภาพ,บุ๊กมาร์ก,ฟิลด์ฟอร์มและองค์ประกอบเอกสารอื่นๆที่ตำแหน่งเคอร์เซอร์โดยใช้วิธีการ`Write`หรือวิธีใดๆของ**DocumentBuilder.InsertXXX**เช่น[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean),[InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String)และวิธีการที่คล้ายกัน.

ลองดูวิธีการสร้างเอกสารอย่างง่ายโดยใช้**DocumentBuilder**.

### สร้างเอกสารโดยใช้DocumentBuilder

ในการเริ่มต้นคุณต้องสร้าง**DocumentBuilder**และเชื่อมโยงกับวัตถุ**Document** คุณสร้างอินสแตนซ์ใหม่ของ**DocumentBuilder**โดยเรียกตัวสร้างและส่งผ่านไปยังออบเจกต์**Document**สำหรับสิ่งที่แนบ.

ในการแทรกข้อความให้ส่งสตริงข้อความที่คุณต้องการแทรกลงในเอกสารไปยังวิธีการ**Write**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างเอกสารอย่างง่ายโดยใช้ตัวสร้างเอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### ระบุการจัดรูปแบบเอกสาร

คุณสมบัติ[Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont)กำหนดการจัดรูปแบบข้อความ วัตถุนี้มีแอตทริบิวต์แบบอักษรที่แตกต่างกัน(ชื่อแบบอักษรขนาดตัวอักษรสีและอื่นๆ) คุณลักษณะแบบอักษรที่สำคัญบางอย่างจะแสดงด้วยคุณสมบัติ**DocumentBuilder**เพื่อให้คุณสามารถเข้าถึงได้โ เหล่านี้คือ[Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold),[Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic)และ[Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline)คุณสมบัติบูลีน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกข้อความที่จัดรูปแบบโดยใช้**DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont)ระบุการจัดรูปแบบอักขระที่จะใช้กับข้อความทั้งหมดที่แทรกจากตำแหน่งปัจจุบันในเอกสารเป็นต้นไป.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/)ระบุการจัดรูปแบบย่อหน้าสำหรับย่อหน้าปัจจุบันและย่อหน้าทั้งหมดที่จะแทรก.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/)ระบุคุณสมบัติของเพจและส่วนของส่วนปัจจุบันและส่วนทั้งหมดที่จะแทรก.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat)และ[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat)ระบุคุณสมบัติการจัดรูปแบบที่จะใช้กับเซลล์ตารางและแถวจากตำแหน่งปัจจุบันในเอกสารเป็นต้นไป.

ในสถานการณ์นี้"ปัจจุบัน"หมายถึงตำแหน่งย่อหน้าส่วนเซลล์หรือแถวที่เคอร์เซอร์อยู่.

{{% /alert %}}

{{% alert color="primary" %}}

โปรดทราบว่าคุณสมบัติของ**Font**,**ParagraphFormat**และ**PageSetup**จะถูกอัปเดตเมื่อใดก็ตามที่คุณไปยังตำแหน่งอื่นในเอกส.

{{% /alert %}}
