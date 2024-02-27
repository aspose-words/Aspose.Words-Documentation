---
title: โคลนเอกสารใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: โคลนเอกสาร
linktitle: โคลนเอกสาร
type: docs
description: "โคลนเอกสารเพื่อรับสำเนาที่เหมือนกันโดยใช้ Python เมื่อสร้างสำเนา โหนดและคุณสมบัติของเอกสารต้นฉบับจะถูกโคลน"
weight: 70
url: /th/python-net/clone-a-document/
---

การโคลนเอกสารคือกระบวนการสร้างสำเนาที่เหมือนกันของเอกสารต้นฉบับ ซึ่งสามารถปรับปรุงประสิทธิภาพและช่วยคุณจากหน่วยความจำรั่วที่อาจเกิดขึ้นได้

บทความนี้จะอธิบายกรณีการใช้งานหลักของการโคลนเอกสารและวิธีการสร้างการโคลนเอกสารโดยใช้ Aspose.Words

## การดำเนินการกับเอกสารการโคลนนิ่ง

การดำเนินการโคลนช่วยให้คุณทำให้กระบวนการสร้างเอกสารเร็วขึ้น เนื่องจากคุณไม่จำเป็นต้องโหลดและแยกวิเคราะห์เอกสารจากไฟล์ทุกครั้ง

หลังจากสร้างสำเนาเอกสารของคุณแล้ว คุณจะสามารถแก้ไขและดำเนินการต่างๆ กับเอกสารนั้นได้ เช่น เปรียบเทียบกับเอกสารต้นฉบับ ผนวกหรือแทรกลงในเอกสารอื่น คุณยังสามารถแก้ไของค์ประกอบที่ลอกแบบหรือเนื้อหาก่อนที่จะแทรกลงในเอกสารอื่นได้

## การสร้างเอกสารโคลน

Aspose.Words ช่วยให้คุณสามารถโคลนเอกสารโดยใช้วิธี [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) ที่ทำสำเนาเอกสารในเชิงลึกและส่งคืนเอกสารนั้น กล่าวอีกนัยหนึ่งก็คือจะได้รับสำเนา DOM ฉบับเต็ม วิธี [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) ช่วยเพิ่มความเร็วในการสร้างเอกสาร และคุณต้องการโค้ดเพียงบรรทัดเดียวเพื่อรับสำเนาเอกสารของคุณ

การโคลนจะสร้างเอกสารใหม่ที่มีเนื้อหาเหมือนกับต้นฉบับ แต่มีสำเนาเฉพาะของโหนดของเอกสารต้นฉบับแต่ละอัน คุณยังสามารถใช้การดำเนินการโคลนกับโหนดเอกสารได้โดยใช้วิธี [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) ของโหนด ซึ่งช่วยให้คุณสามารถทำซ้ำโหนดเอกสารคอมโพสิตโดยมีและไม่มีโหนดลูกได้

{{% alert color="primary" %}}

โปรดทราบว่าเมื่อใช้วิธีการโคลน คุณสมบัติเอกสารทั้งหมดจะถูกโคลน

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโคลนเอกสารและสร้างสำเนาของส่วนในเอกสารนั้น:

{{< highlight python >}}
# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("This is the original document before applying the clone method")

# Clone the document.
clone = doc.clone().as_document()

# Edit the cloned document.
builder = aw.DocumentBuilder(clone)
builder.write("Section 1")
builder.insert_break(aw.BreakType.SECTION_BREAK_NEW_PAGE)
builder.write("Section 2")

# This shows what is in the document originally. The document has two sections.
self.assertEqual(clone.sections.count, 2)

# Duplicate the last section and append the copy to the end of the document.
lastSectionIdx = clone.sections.count - 1
newSection = clone.sections[lastSectionIdx].clone()
clone.sections.add(newSection)

# Check what the document contains after we changed it.
self.assertEqual(clone.sections.count, 3)
{{< /highlight >}}
