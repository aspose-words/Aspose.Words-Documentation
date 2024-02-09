---
title: โคลนเอกสารใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: โคลนเอกสาร
linktitle: โคลนเอกสาร
type: docs
description: "โคลนเอกสารเพื่อรับสำเนาที่เหมือนกันโดยใช้ C# เมื่อสร้างสำเนา โหนดและคุณสมบัติของเอกสารต้นฉบับจะถูกโคลน"
weight: 70
url: /th/net/clone-a-document/
---

การโคลนเอกสารคือกระบวนการสร้างสำเนาที่เหมือนกันของเอกสารต้นฉบับ ซึ่งสามารถปรับปรุงประสิทธิภาพและช่วยคุณจากหน่วยความจำรั่วที่อาจเกิดขึ้นได้

บทความนี้จะอธิบายกรณีการใช้งานหลักของการโคลนเอกสารและวิธีการสร้างการโคลนเอกสารโดยใช้ Aspose.Words

## การดำเนินการกับเอกสารการโคลนนิ่ง

การดำเนินการโคลนช่วยให้คุณทำให้กระบวนการสร้างเอกสารเร็วขึ้น เนื่องจากคุณไม่จำเป็นต้องโหลดและแยกวิเคราะห์เอกสารจากไฟล์ทุกครั้ง

หลังจากสร้างสำเนาเอกสารของคุณแล้ว คุณจะสามารถแก้ไขและดำเนินการต่างๆ กับเอกสารนั้นได้ เช่น เปรียบเทียบกับเอกสารต้นฉบับ ผนวกหรือแทรกลงในเอกสารอื่น คุณยังสามารถแก้ไของค์ประกอบที่ลอกแบบหรือเนื้อหาก่อนที่จะแทรกลงในเอกสารอื่นได้

## การสร้างเอกสารโคลน

Aspose.Words ช่วยให้คุณสามารถโคลนเอกสารโดยใช้วิธี [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/) ที่ทำสำเนาเอกสารในเชิงลึกและส่งคืนเอกสารนั้น กล่าวอีกนัยหนึ่งจะได้รับสำเนา DOM ฉบับเต็ม วิธี `Clone` ช่วยเพิ่มความเร็วในการสร้างเอกสาร และคุณต้องการโค้ดเพียงบรรทัดเดียวเพื่อรับสำเนาเอกสารของคุณ

การโคลนจะสร้างเอกสารใหม่ที่มีเนื้อหาเหมือนกับต้นฉบับ แต่มีสำเนา [nodes](https://reference.aspose.com/words/net/aspose.words/node/) ของเอกสารต้นฉบับแต่ละฉบับไม่ซ้ำกัน คุณยังสามารถใช้การดำเนินการโคลนกับโหนดเอกสารได้โดยใช้วิธี [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) ของโหนด ซึ่งอนุญาตให้คุณทำซ้ำโหนดเอกสารคอมโพสิตโดยมีและไม่มีโหนดลูก

{{% alert color="primary" %}}

โปรดทราบว่าเมื่อใช้วิธีการโคลน คุณสมบัติเอกสารทั้งหมดจะถูกโคลน

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโคลนเอกสารและสร้างสำเนาของส่วนในเอกสารนั้น:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("This is the original document before applying the clone method"); 

// Clone the document.
Document clone = doc.Clone();

// Edit the cloned document.
DocumentBuilder builder = new DocumentBuilder(clone);
builder.Write("Section 1");
builder.InsertBreak(BreakType.SectionBreakNewPage);
builder.Write("Section 2");

// This shows what is in the document originally. The document has two sections.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());

// Duplicate the last section and append the copy to the end of the document.
int lastSectionIdx = clone.Sections.Count - 1;
Section newSection = clone.Sections[lastSectionIdx].Clone();
clone.Sections.Add(newSection);

// Check what the document contains after we changed it.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());
{{< /highlight >}}
