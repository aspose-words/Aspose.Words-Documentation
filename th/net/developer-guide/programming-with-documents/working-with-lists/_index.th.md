---
title: การทำงานกับรายการใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับรายการ
linktitle: การทำงานกับรายการ
description: "ข้อมูลเบื้องต้นเกี่ยวกับคุณลักษณะการจัดรูปแบบลำดับเลขใน Aspose.Words สำหรับ .NET"
type: docs
weight: 200
url: /th/net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

รายการในเอกสาร Microsoft Word คือชุดของคุณสมบัติการจัดรูปแบบย่อหน้า สามารถใช้รายการในเอกสารเพื่อจัดโครงสร้าง จัดเรียง และเน้นข้อความได้ รายการเป็นวิธีที่ดีในการจัดระเบียบข้อมูลในเอกสารในลักษณะที่ทำให้ผู้อ่านซึมซับและทำความเข้าใจประเด็นสำคัญได้ง่าย

แต่ละรายการสามารถมีได้สูงสุด 9 ระดับ และคุณสมบัติการจัดรูปแบบ เช่น สไตล์ตัวเลข ค่าเริ่มต้น การเยื้อง ตำแหน่งแท็บ และอื่นๆ จะถูกกำหนดแยกกันสำหรับแต่ละระดับ

ใน Aspose.Words การทำงานกับรายการจะแสดงด้วยเนมสเปซ [Lists](https://reference.aspose.com/words/net/aspose.words.lists/) อย่างไรก็ตาม ออบเจ็กต์ [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) จะเป็นของ [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/) เสมอ

บทความนี้จะอธิบายการทำงานเชิงโปรแกรมกับรายการที่ใช้ Aspose.Words

## สร้างรายการโดยใช้การจัดรูปแบบรายการ

Aspose.Words ช่วยให้สร้างรายการได้ง่ายโดยใช้การจัดรูปแบบรายการ [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) จัดเตรียมคุณสมบัติ [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) ที่ส่งคืนออบเจ็กต์ **ListFormat** วัตถุนี้มีหลายวิธีในการเริ่มต้นและสิ้นสุดรายการและเพิ่ม/ลดการเยื้อง มีรายการทั่วไปสองประเภทใน Microsoft Word: สัญลักษณ์แสดงหัวข้อย่อยและลำดับเลข:

- หากต้องการเริ่มรายการหัวข้อย่อย ให้โทร [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)
- หากต้องการเริ่มรายการลำดับเลข ให้โทร [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)

สัญลักษณ์แสดงหัวข้อย่อยหรือตัวเลขและการจัดรูปแบบจะถูกเพิ่มลงในย่อหน้าปัจจุบันและย่อหน้าเพิ่มเติมทั้งหมดที่สร้างขึ้นโดยใช้ **DocumentBuilder** จนกว่า [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) จะถูกเรียกให้หยุดการจัดรูปแบบรายการสัญลักษณ์แสดงหัวข้อย่อย

ในเอกสาร Word รายการอาจประกอบด้วยได้ถึงเก้าระดับ การจัดรูปแบบรายการสำหรับแต่ละระดับจะระบุหัวข้อย่อยหรือตัวเลขที่ใช้ เยื้องซ้าย ช่องว่างระหว่างหัวข้อย่อยและข้อความ ฯลฯ วิธีการต่อไปนี้จะเปลี่ยนระดับรายการและใช้คุณสมบัติการจัดรูปแบบของระดับใหม่:

- หากต้องการเพิ่มระดับรายการของย่อหน้าปัจจุบันหนึ่งระดับ ให้โทร [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)
- หากต้องการลดระดับรายการของย่อหน้าปัจจุบันลงหนึ่งระดับ ให้โทร [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)

คุณยังสามารถใช้คุณสมบัติ [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) เพื่อรับหรือตั้งค่าระดับรายการสำหรับย่อหน้าได้

{{% alert color="primary" %}}

ระดับรายการจะมีหมายเลข 0 ถึง 8

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างรายการหลายระดับ:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## ระบุการจัดรูปแบบสำหรับระดับรายการ

ออบเจ็กต์ระดับรายการจะถูกสร้างขึ้นโดยอัตโนมัติเมื่อมีการสร้างรายการ ใช้คุณสมบัติและวิธีการของคลาส [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) เพื่อควบคุมการจัดรูปแบบของรายการแต่ละระดับ

## รายการรีสตาร์ทสำหรับแต่ละส่วน

คุณสามารถรีสตาร์ทรายการสำหรับแต่ละส่วนได้โดยใช้คุณสมบัติ [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/) โปรดทราบว่าตัวเลือกนี้รองรับเฉพาะในรูปแบบเอกสาร RTF, DOC และ DOCX เท่านั้น ตัวเลือกนี้จะถูกเขียนลงใน DOCX เฉพาะเมื่อ OoxmlCompliance สูงกว่า Ecma376 เท่านั้น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างรายการและเริ่มใหม่สำหรับแต่ละส่วน:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
