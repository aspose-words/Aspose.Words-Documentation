---
title: ทํางานกับ Hyperlinks ใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: เพิ่มหรือแก้ไขไฮเปอร์ลิงก์
linktitle: เพิ่มหรือแก้ไขไฮเปอร์ลิงก์
description: "วิธีเพิ่มไฮเปอร์ลิงก์เข้าไปในเอกสารของคุณโดยใช้ Java."
type: docs
weight: 50
url: /th/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

ไฮเปอร์ลิงก์ใน Microsoft Word เอกสารคือ `HYPERLINK` สนาม ใน Aspose.Words, ไฮเปอร์ลิงก์ถูกนําไปใช้ผ่าน [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) ชั้นเรียน.

## แทรกลิงก์ไฮเปอร์ลิงก์

ใช้ [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) วิธีการแทรกข้อมูล Hyperlink ไปยังเอกสาร วิธีการนี้ยอมรับพารามิเตอร์สามตัว:

1 ข้อความเชื่อมโยงที่จะแสดงในเอกสาร
2 เชื่อมโยงปลายทาง (URL หรือชื่อของที่คั่นหน้าภายในเอกสาร)
3 พารามิเตอร์ต่าง ๆ ที่ควรจะค่า true ถ้า `URL` ชื่อของที่คั่นหน้าภายในเอกสาร

เดอะ **InsertHyperlink** วิธีการมักเพิ่ม postrophes ที่จุดเริ่มต้นและปลายของที่อยู่ URL

{{% alert color="primary" %}}

หมายเหตุว่า คุณต้องกําหนดรูปแบบแบบอักษรสําหรับข้อความการแสดงผลแบบไฮเปอร์ลิงก์โดยตรงโดยใช้ `Font` ทรัพย์สิน

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการแทรกไฮเปอร์ลิงก์ลงในเอกสารโดยใช้ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## แทนที่หรือแก้ไขไฮเปอร์ลิงก์

ไฮเปอร์ลิงก์เข้ามา Microsoft Word เอกสารเป็นสนาม ฟิลด์ในเอกสารคํา ดังที่เรากล่าวไปก่อนหน้านี้ เป็นโครงสร้างที่ซับซ้อน ประกอบไปด้วยหลายโหนด ที่รวมถึงการเริ่มต้นสนาม รหัสสนาม ตัวแบ่งสนาม ผลและปลายสนาม อาจ ทํา รัง ได้ โดย มี เนื้อหา มาก มาย และ มี หลาย วรรค หรือ หลาย ตอน ใน เอกสาร.

เพื่อ จะ แทน ที่ หรือ แก้ไข ความ ซับ ซ้อน ได้ จําเป็น ต้อง หา ไฮเปอร์ลิงก์ ใน เอกสาร และ แทน ที่ ข้อ ความ, ที่ อยู่ อาศัย, หรือ ทั้ง สอง อย่าง.

ตัวอย่างโค้ดต่อไปนี้ แสดงให้เห็นว่าจะหาไฮเปอร์ลิงก์ทั้งหมดในเอกสารคํา และเปลี่ยนแปลงมัน `URL` ชื่อที่ใช้แสดง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
