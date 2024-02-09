---
title: วิธีเพิ่มรูปร่าง Group ลงในเอกสาร Word
second_title: Aspose.Words สำหรับ .NET
articleTitle: วิธีเพิ่มรูปร่าง Group ลงในเอกสาร Word
linktitle: การทำงานกับรูปร่าง Group ในเอกสาร Word
description: "Grouping และยกเลิกการจัดกลุ่มรูปร่างโดยใช้ C#"
type: docs
weight: 290
url: /th/net/how-to-add-group-shape-into-a-word-document/
---

บางครั้งคุณจำเป็นต้องเพิ่ม group shape ลงในเอกสาร Word group shape ดังกล่าวประกอบด้วยหลายรูปร่าง

ใน Microsoft Word คุณสามารถเพิ่ม group shape ได้อย่างรวดเร็วโดยใช้คำสั่ง/ปุ่ม Group แต่ละรูปร่างในกลุ่มสามารถย้ายแยกกันได้

ใน Aspose.Words การเพิ่ม group shape โดยใช้คลาส [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) ทำได้ง่ายมาก **Shape** ถูกสร้างขึ้นแยกต่างหากโดยใช้คลาส [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) จากนั้นเพิ่มลงในออบเจ็กต์ [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) โดยใช้วิธี [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีเพิ่ม group shape ลงในเอกสาร Word:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

ด้านล่างนี้คือประเภท `Shape` บางประเภทที่รองรับใน Aspose.Words:

- สี่เหลี่ยมผืนผ้า
- สี่เหลี่ยมกลม
- สี่เหลี่ยมกลม
- วงรี
- เพชร
- สามเหลี่ยม
- สามเหลี่ยมมุมฉาก
- สี่เหลี่ยมด้านขนาน
- สี่เหลี่ยมคางหมู
- หกเหลี่ยม
- แปดเหลี่ยม

หากต้องการดูรายการทั้งหมด โปรดตรวจสอบคลาส [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype)

{{% /alert %}}