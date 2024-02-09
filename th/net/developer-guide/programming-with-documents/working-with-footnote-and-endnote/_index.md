---
title: การทำงานกับเชิงอรรถและอ้างอิงท้ายเรื่องใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับเชิงอรรถและอ้างอิงท้ายเรื่อง
linktitle: การทำงานกับเชิงอรรถและอ้างอิงท้ายเรื่อง
description: "วิธีจัดการเชิงอรรถและอ้างอิงท้ายเรื่องโดยใช้ C#"
type: docs
weight: 160
url: /th/net/working-with-footnote-and-endnote/
---

Aspose.Words ยังมีคลาส วิธีการ และคุณสมบัติบางอย่างสำหรับการทำงานกับเชิงอรรถและอ้างอิงท้ายเรื่อง

## แทรกอ้างอิงท้ายเรื่องและตั้งค่าตัวเลือกการกำหนดหมายเลข

หากคุณต้องการแทรกเชิงอรรถหรืออ้างอิงท้ายเรื่องลงในเอกสาร Word โปรดใช้วิธี [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/) วิธีการนี้จะแทรกเชิงอรรถหรืออ้างอิงท้ายเรื่องลงในเอกสาร

คลาส [EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) และ [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) แสดงถึงตัวเลือกการกำหนดหมายเลขสำหรับเชิงอรรถและอ้างอิงท้ายเรื่อง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกอ้างอิงท้ายเรื่องลงในเอกสารและตั้งค่าตัวเลือกการกำหนดหมายเลข:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## กำหนดจำนวนคอลัมน์เค้าโครงเชิงอรรถ

คุณสามารถกำหนดจำนวนคอลัมน์เค้าโครงเชิงอรรถได้โดยใช้คุณสมบัติ [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/) หากคุณสมบัตินี้มีค่าเป็น 0 พื้นที่เชิงอรรถจะถูกจัดรูปแบบด้วยจำนวนคอลัมน์ตามจำนวนคอลัมน์บนเพจที่แสดง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าจำนวนคอลัมน์สำหรับโครงร่างเชิงอรรถ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## กำหนดตำแหน่งของเชิงอรรถและ EndNote

ตำแหน่งเชิงอรรถอาจอยู่ที่ด้านล่างของแต่ละหน้าหรือใต้ข้อความในแต่ละหน้า ตำแหน่งอ้างอิงท้ายเรื่องอาจอยู่ที่ส่วนท้ายของส่วนหรือส่วนท้ายของเอกสารก็ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าตำแหน่งของเชิงอรรถและอ้างอิงท้ายเรื่อง:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
