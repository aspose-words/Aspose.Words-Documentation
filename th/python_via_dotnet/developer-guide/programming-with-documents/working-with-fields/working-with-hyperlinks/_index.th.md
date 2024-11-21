---
title: การทำงานกับไฮเปอร์ลิงก์
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: เพิ่มหรือแก้ไขไฮเปอร์ลิงก์
linktitle: เพิ่มหรือแก้ไขไฮเปอร์ลิงก์
description: "เพิ่ม แทนที่ หรือแก้ไขไฮเปอร์ลิงก์ในเอกสารโดยใช้ Python"
type: docs
weight: 50
url: /th/python-net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

ไฮเปอร์ลิงก์ในเอกสาร Microsoft Word คือฟิลด์ `HYPERLINK` ใน Aspose.Words ไฮเปอร์ลิงก์ถูกนำมาใช้ผ่านคลาส [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/)

## การแทรกไฮเปอร์ลิงก์

ใช้วิธี [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/) เพื่อแทรกไฮเปอร์ลิงก์ลงในเอกสาร วิธีนี้ยอมรับพารามิเตอร์สามตัว:

1. ข้อความของลิงค์ที่จะแสดงในเอกสาร
2. ปลายทางลิงก์ (URL หรือชื่อบุ๊คมาร์คภายในเอกสาร)
3. พารามิเตอร์บูลีนที่ควรเป็น true หาก `URL` เป็นชื่อของบุ๊กมาร์กภายในเอกสาร

วิธีการ **InsertHyperlink** จะเพิ่มเครื่องหมายอะพอสทรอฟี่ที่จุดเริ่มต้นและจุดสิ้นสุดของ URL เสมอ

{{% alert color="primary" %}}

โปรดทราบว่าคุณต้องระบุการจัดรูปแบบแบบอักษรสำหรับข้อความที่แสดงไฮเปอร์ลิงก์อย่างชัดเจนโดยใช้คุณสมบัติ `Font`

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกไฮเปอร์ลิงก์ลงในเอกสารโดยใช้ [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## แทนที่หรือแก้ไขไฮเปอร์ลิงก์

ไฮเปอร์ลิงก์ในเอกสาร Microsoft Word คือช่อง เขตข้อมูลในเอกสาร Word เป็นโครงสร้างที่ซับซ้อนซึ่งประกอบด้วยหลายโหนดซึ่งรวมถึงการเริ่มต้นเขตข้อมูล โค้ดเขตข้อมูล ตัวคั่นเขตข้อมูล ผลลัพธ์ของเขตข้อมูล และจุดสิ้นสุดของเขตข้อมูล ช่องต่างๆ สามารถซ้อนกัน มีเนื้อหาที่หลากหลาย และขยายหลายย่อหน้าหรือส่วนต่างๆ ในเอกสารได้

หากต้องการแทนที่หรือแก้ไขไฮเปอร์ลิงก์ จำเป็นต้องค้นหาไฮเปอร์ลิงก์ในเอกสารและแทนที่ข้อความ URL หรือทั้งสองอย่าง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีค้นหาไฮเปอร์ลิงก์ทั้งหมดในเอกสาร Word และเปลี่ยน `URL` และชื่อที่แสดง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}
