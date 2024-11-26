---
title: การทำงานกับกล่องข้อความใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับกล่องข้อความ
linktitle: การทำงานกับกล่องข้อความ
description: "ข้อมูลเบื้องต้นเกี่ยวกับคุณลักษณะกล่องข้อความที่เชื่อมโยงใน Aspose.Words สำหรับ .NET"
type: docs
weight: 250
url: /th/net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

ใน Aspose.Words คลาส [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) ใช้เพื่อระบุวิธีแสดงข้อความภายในรูปร่าง โดยเปิดเผยทรัพย์สินสาธารณะชื่อ **Parent** เพื่อรับรูปร่างหลักสำหรับกล่องข้อความ เพื่อให้ลูกค้าสามารถค้นหา [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) ที่เชื่อมโยงจาก **TextBox** ที่เกี่ยวข้อง

## การสร้างลิงค์

คลาส **TextBox** จัดเตรียมวิธี [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) เพื่อตรวจสอบว่า **TextBox** สามารถเชื่อมโยงกับ **Textbox** เป้าหมายได้หรือไม่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีตรวจสอบว่า `TextBox` สามารถเชื่อมโยงกับกล่องข้อความเป้าหมายได้หรือไม่:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## ตรวจสอบลำดับกล่องข้อความ

มีหลายวิธีในการแสดงข้อความในรูปร่าง [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) อาจเป็น Head, Middle หรือ Tail ของลำดับก็ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีตรวจสอบว่า **TextBox** เป็น Head, Tail หรือ Middle ของลำดับหรือไม่:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## ทำลายลิงค์

เมื่อใช้วิธีการ [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/) คุณสามารถตัดลิงก์ไปยัง **TextBox** ถัดไปได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีแยกลิงก์สำหรับ **TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
