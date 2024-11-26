---
title: การทำงานกับการเชื่อมโยงหลายมิติในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: เพิ่มหรือแก้ไขการเชื่อมโยงหลายมิติ
linktitle: เพิ่มหรือแก้ไขการเชื่อมโยงหลายมิติ
description: "วิธีการเพิ่มการเชื่อมโยงหลายมิติลงในเอกสารของคุณโดยใช้ Aspose.WordsสำหรับC++."
type: docs
weight: 180
url: /th/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

การเชื่อมโยงหลายมิติในMicrosoft Wordเอกสารคือฟิลด์`HYPERLINK` ในAspose.Wordsการเชื่อมโยงหลายมิติจะดำเนินการผ่าน[FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/)คลาส.

## การแทรกการเชื่อมโยงหลายมิติ

ใช้วิธีการ[InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/)เพื่อแทรกการเชื่อมโยงหลายมิติลงในเอกสาร วิธีนี้ยอมรับสามพารามิเตอร์:

1. ข้อความของลิงก์ที่จะแสดงในเอกสาร
2. เชื่อมโยงปลายทาง(URLหรือชื่อของบุ๊กมาร์กภายในเอกสาร)
3. พารามิเตอร์บูลีนที่ควรเป็นจริงถ้า`URL`เป็นชื่อของบุ๊กมาร์กภายในเอกสาร

วิธี**InsertHyperlink**จะเพิ่มเครื่องหมายวรรคตอนที่จุดเริ่มต้นและจุดสิ้นสุดของURLเสมอ.

{{% alert color="primary" %}}

โปรดทราบว่าคุณต้องระบุการจัดรูปแบบแบบอักษรสำหรับข้อความแสดงการเชื่อมโยงหลายมิติอย่างชัดเจนโดยใช้คุณสมบัติ`Font`.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกการเชื่อมโยงหลายมิติลงในเอกสารโดยใช้[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## แทนที่หรือแก้ไขการเชื่อมโยงหลายมิติ

การเชื่อมโยงหลายมิติในMicrosoft Wordเอกสารคือฟิลด์ เขตข้อมูลในเอกสารคำเป็นโครงสร้างที่ซับซ้อนประกอบด้วยหลายโหนดที่มีเขตข้อมูลเริ่ม ฟิลด์สามารถซ้อนกันมีเนื้อหาที่อุดมไปด้วยและขยายหลายย่อหน้าหรือส่วนในเอกสาร.

คลาส`FieldHyperlink`ใช้ฟิลด์`HYPERLINK`.

ตัวอย่างโค้ดต่อไปนี้จะแสดงวิธีค้นหาไฮเปอร์ลิงก์ทั้งหมดในเอกสาร Word และเปลี่ยน `URL` และชื่อที่แสดง:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
