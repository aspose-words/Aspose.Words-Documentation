---
title: การทำงานกับไฮเปอร์ลิงก์ใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: เพิ่มหรือแก้ไขไฮเปอร์ลิงก์
linktitle: เพิ่มหรือแก้ไขไฮเปอร์ลิงก์
description: "วิธีเพิ่มไฮเปอร์ลิงก์ลงในเอกสารของคุณใน C# โดยใช้ Aspose.Words สำหรับ .NET"
type: docs
weight: 50
url: /th/net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

ไฮเปอร์ลิงก์ในเอกสาร Microsoft Word คือฟิลด์ `HYPERLINK` ใน Aspose.Words ไฮเปอร์ลิงก์ถูกนำมาใช้ผ่านคลาส [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/)

## แทรกไฮเปอร์ลิงก์

ใช้วิธี [InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/) เพื่อแทรกไฮเปอร์ลิงก์ลงในเอกสาร วิธีนี้ยอมรับพารามิเตอร์สามตัว:

1. ข้อความของลิงค์ที่จะแสดงในเอกสาร
2. ปลายทางลิงก์ (URL หรือชื่อบุ๊คมาร์คภายในเอกสาร)
3. พารามิเตอร์บูลีนที่ควรเป็น true หาก `URL` เป็นชื่อของบุ๊กมาร์กภายในเอกสาร

วิธีการ **InsertHyperlink** จะเพิ่มเครื่องหมายอะพอสทรอฟี่ที่จุดเริ่มต้นและจุดสิ้นสุดของ URL เสมอ

{{% alert color="primary" %}}

โปรดทราบว่าคุณต้องระบุการจัดรูปแบบแบบอักษรสำหรับข้อความที่แสดงไฮเปอร์ลิงก์อย่างชัดเจนโดยใช้คุณสมบัติ `Font`

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกไฮเปอร์ลิงก์ลงในเอกสารโดยใช้ [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## แทนที่หรือแก้ไขไฮเปอร์ลิงก์

ไฮเปอร์ลิงก์ในเอกสาร Microsoft Word คือช่อง ฟิลด์ในเอกสาร Word ดังที่เราได้กล่าวไว้ก่อนหน้านี้ เป็นโครงสร้างที่ซับซ้อนซึ่งประกอบด้วยหลายโหนดซึ่งรวมถึงจุดเริ่มต้นของฟิลด์ โค้ดฟิลด์ ตัวคั่นฟิลด์ ผลลัพธ์ของฟิลด์ และจุดสิ้นสุดของฟิลด์ ช่องต่างๆ สามารถซ้อนกัน มีเนื้อหาที่หลากหลาย และขยายหลายย่อหน้าหรือส่วนต่างๆ ในเอกสารได้

หากต้องการแทนที่หรือแก้ไขไฮเปอร์ลิงก์ จำเป็นต้องค้นหาไฮเปอร์ลิงก์ในเอกสารและแทนที่ข้อความ URL หรือทั้งสองอย่าง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีค้นหาไฮเปอร์ลิงก์ทั้งหมดในเอกสาร Word และเปลี่ยน `URL` และชื่อที่แสดง:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
