---
title: การทำงานกับการเชื่อมโยงหลายมิติในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: เพิ่มหรือแก้ไขการเชื่อมโยงหลายมิติ
linktitle: เพิ่มหรือแก้ไขการเชื่อมโยงหลายมิติ
description: "วิธีการเพิ่มการเชื่อมโยงหลายมิติลงในเอกสารของคุณโดยใช้Java."
type: docs
weight: 50
url: /th/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

การเชื่อมโยงหลายมิติในMicrosoft Wordเอกสารคือฟิลด์`HYPERLINK` ในAspose.Wordsการเชื่อมโยงหลายมิติจะดำเนินการผ่าน[FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/)คลาส.

## แทรกการเชื่อมโยงหลายมิติ

ใช้วิธีการ[InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean)เพื่อแทรกการเชื่อมโยงหลายมิติลงในเอกสาร วิธีนี้ยอมรับสามพารามิเตอร์:

1. ข้อความของลิงก์ที่จะแสดงในเอกสาร
2. เชื่อมโยงปลายทาง(URLหรือชื่อของบุ๊กมาร์กภายในเอกสาร)
3. พารามิเตอร์บูลีนที่ควรเป็นจริงถ้า`URL`เป็นชื่อของบุ๊กมาร์กภายในเอกสาร

วิธี**InsertHyperlink**จะเพิ่มเครื่องหมายวรรคตอนที่จุดเริ่มต้นและจุดสิ้นสุดของURLเสมอ

{{% alert color="primary" %}}

โปรดทราบว่าคุณต้องระบุการจัดรูปแบบแบบอักษรสำหรับข้อความแสดงการเชื่อมโยงหลายมิติอย่างชัดเจนโดยใช้คุณสมบัติ`Font`.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกการเชื่อมโยงหลายมิติลงในเอกสารโดยใช้[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## แทนที่หรือแก้ไขการเชื่อมโยงหลายมิติ

การเชื่อมโยงหลายมิติในMicrosoft Wordเอกสารคือฟิลด์ เขตข้อมูลในเอกสารคำที่เรากล่าวว่าก่อนหน้านี้เป็นโครงสร้างที่ซับซ้อนประกอบด้วยโหนด ฟิลด์สามารถซ้อนกันมีเนื้อหาที่อุดมไปด้วยและขยายหลายย่อหน้าหรือส่วนในเอกสาร.

ในการแทนที่หรือแก้ไขการเชื่อมโยงหลายมิติจำเป็นต้องค้นหาการเชื่อมโยงหลายมิติในเอกสารและแทนที่ข้อความURLsหรือทั้งสองอย่าง.

ตัวอย่างโค้ดต่อไปนี้จะแสดงวิธีค้นหาไฮเปอร์ลิงก์ทั้งหมดในเอกสาร Word และเปลี่ยน `URL` และชื่อที่แสดง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
