---
title: ระดับลอจิคัลของโหนดในเอกสารใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: ระดับลอจิคัลของโหนดในเอกสาร
linktitle: ระดับลอจิคัลของโหนดในเอกสาร
type: docs
description: "ในเอกสาร Aspose.Words สำหรับ .NET กล่าวถึงระดับตรรกะของโหนด - ระดับบล็อก ระดับอินไลน์ หรือระดับแถวโดยใช้ C# ระดับโหนดใช้เพื่ออธิบายตำแหน่งในแผนผังเอกสารที่โหนดมักเกิดขึ้น"
weight: 10
url: /th/net/logical-levels-of-nodes-in-a-document/
---

เอกสารนี้บางครั้งอ้างถึงกลุ่มของคลาสโหนดที่เป็นของ "ระดับ" ในเอกสาร เช่น "ระดับบล็อก" "ระดับอินไลน์" (หรือที่เรียกว่า "อินไลน์") หรือโหนด "ระดับแถว". ระดับเหล่านี้ในเอกสารมีความแตกต่างกันในเชิงตรรกะล้วนๆ และไม่ได้แสดงอย่างชัดเจนโดยการสืบทอดหรือวิธีการ Aspose.Words DOM อื่นๆ ระดับโหนดใช้เพื่ออธิบายตำแหน่งในแผนผังเอกสารที่โหนดมักจะเกิดขึ้น

ในบทความก่อนหน้านี้ เราได้พูดคุยกันแล้วเกี่ยวกับความสัมพันธ์ระหว่างโหนดและความจริงที่ว่าไม่ใช่ทุกโหนดจะได้รับอนุญาตให้เป็นลูกของโหนดใดๆ ตัวอย่างเช่น เซลล์สามารถเป็นได้เฉพาะลูกของแถว และแถวสามารถเป็นได้เฉพาะลูกของตาราง และอื่นๆ ความสัมพันธ์เหล่านี้ยังใช้สำหรับการแบ่งโหนดตามตรรกะตามระดับต่างๆ ในเอกสารอีกด้วย

ส่วนต่อไปนี้จะอธิบายระดับลอจิคัลของโหนดใน Aspose.Words และคลาสที่เป็นของแต่ละระดับ

## ระดับตรรกะของเอกสารและส่วน

เอกสาร Word ประกอบด้วยหนึ่งส่วนขึ้นไป ซึ่งแสดงโดยคลาส [Section](https://reference.aspose.com/words/net/aspose.words/section/) และคั่นด้วยตัวแบ่งส่วน ส่วนสามารถกำหนดขนาดหน้า ระยะขอบ การวางแนว จำนวนคอลัมน์ข้อความ และส่วนหัวและส่วนท้ายของตนเองได้

โหนดระดับ [Document](https://reference.aspose.com/words/net/aspose.words/document/) และ [Section](https://reference.aspose.com/words/net/aspose.words/section/) มีโครงสร้างดังแสดงในแผนภาพต่อไปนี้

<img src="/words/net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="เอกสารและระดับส่วนกำหนดคำ" style="width:700px"/>

ส่วนประกอบด้วยข้อความหลัก ตลอดจนส่วนหัวและส่วนท้ายสำหรับหน้าแรก หน้าคู่ และหน้าคี่ "กระแส" ของข้อความที่แตกต่างกันเหล่านี้เรียกว่า *stories*

ใน Aspose.Words โหนด **Section** จะมีโหนดเรื่องราว [Body](https://reference.aspose.com/words/net/aspose.words/body/) และ [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) วัตถุ **Body** เก็บข้อความหลัก ออบเจ็กต์ **HeaderFooter** จะจัดเก็บข้อความสำหรับแต่ละส่วนหัวและส่วนท้าย ข้อความของเรื่องราวใดๆ ประกอบด้วยย่อหน้าและตาราง ตามลำดับซึ่งแสดงด้วยออบเจ็กต์ **Paragraph** และ **Table** ของระดับบล็อก

นอกจากนี้ เอกสาร Word แต่ละฉบับสามารถมีอภิธานศัพท์ซึ่งแสดงโดยโหนด [GlossaryDocument](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/) ใน Aspose.Words เอกสารอภิธานศัพท์ประกอบด้วยรายการ [BuildingBlocks](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/buildingblocks/), [AutoText](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) และ [AutoCorrect](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/)

**GlossaryDocument** มีโหนด [BuildingBlock](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblock/) ที่แสดงรายการเอกสารอภิธานศัพท์ประเภทต่างๆ **BuildingBlock** แต่ละส่วนมีส่วนต่างๆ ที่สามารถแทรก ลบ และคัดลอกลงในเอกสารได้

## บล็อกระดับลอจิคัล

โหนดระดับบล็อกแสดงถึงคอนเทนเนอร์สำหรับเนื้อหาและการควบคุมเนื้อหา และสามารถเกิดขึ้นได้ในโหนดย่อยของแผนผังเอกสารในโหนดต่อไปนี้:

- ร่างกาย
- หัวข้อ
- ส่วนท้าย
- เชิงอรรถ
- ความคิดเห็น
- รูปร่าง
- GroupShape
- เซลล์
- StructuredDocumentTag

โหนดระดับบล็อกแสดงโดยคลาสต่อไปนี้:

- [Tables](https://reference.aspose.com/words/net/aspose.words.tables/table/) และ [Paragraphs](https://reference.aspose.com/words/net/aspose.words/paragraph/) ซึ่งเป็นโหนดระดับบล็อกที่สำคัญที่สุด
- บุ๊กมาร์กซึ่งเกิดขึ้นทั้งในระดับบล็อกและระดับอินไลน์
- [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/) ซึ่งแสดงถึงมาร์กอัปที่กำหนดเองและสามารถมีทั้งเนื้อหาและการควบคุมเนื้อหา

แผนภาพต่อไปนี้แสดงองค์ประกอบระดับบล็อก

<img src="/words/net/logical-levels-of-nodes-in-a-document/block-level.png" alt="บล็อกระดับ aspose-คำ" style="width:550px"/>

## ระดับลอจิคัลแบบอินไลน์

โหนดระดับอินไลน์แสดงถึงเนื้อหาจริงของเอกสารและสามารถบรรจุอยู่ในคอนเทนเนอร์ต่อไปนี้:

- ย่อหน้า – คอนเทนเนอร์ที่พบบ่อยที่สุด
- [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/)
- StructuredDocumentTag

องค์ประกอบระดับอินไลน์จะแสดงโดยคลาสต่อไปนี้:

- [Run](https://reference.aspose.com/words/net/aspose.words/run/) – การเรียกใช้ข้อความที่มีรูปแบบแตกต่างออกไป
- [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmarkstart/) และ [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmarkend/) เป็นตัวแทนของบุ๊กมาร์ก
- [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) และ [Footnote](https://reference.aspose.com/words/net/aspose.words.notes/footnote/) เป็นตัวแทนคำอธิบายประกอบ
- [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) และ [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) ที่แสดงอักขระฟิลด์ และ [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) แสดงถึงฟิลด์ Word
- [SpecialChar](https://reference.aspose.com/words/net/aspose.words/specialchar/) แสดงถึงอักขระพิเศษในเอกสาร
- [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) และ [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) เป็นตัวแทนรูปร่าง ภาพวาด รูปภาพ ฯลฯ
- SmartTag และ StructuredDocumentTag เป็นตัวแทนมาร์กอัปที่กำหนดเอง

แผนภาพต่อไปนี้แสดงโครงสร้างโหนดระดับอินไลน์

<img src="/words/net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="คำระดับอินไลน์ aspose" style="width:785px"/>

{{% alert color="primary" %}}

รูปร่างใน Microsoft Word ประกอบด้วยรูปร่างอัตโนมัติของ Office Art, กล่องข้อความ, รูปภาพ, วัตถุ OLE และตัวควบคุม ActiveX ซึ่งทั้งหมดนี้แสดงโดยใช้คลาส `Shape` รูปร่างบางรูปร่างสามารถมีข้อความได้ ดังนั้นโหนดรูปร่างใน Aspose.Words จึงสามารถมีโหนดระดับบล็อกได้

รูปร่างสามารถจัดกลุ่มไว้ภายในกันและกันได้โดยใช้โหนด GroupShape

{{% /alert %}}

{{% alert color="primary" %}}

เชิงอรรถและความคิดเห็นสามารถมีข้อความได้ ดังนั้นโหนดเชิงอรรถและความคิดเห็นใน Aspose.Words จึงสามารถมีโหนดระดับบล็อกได้

{{% /alert %}}

## ระดับตาราง แถว และโหนดเซลล์

ตารางประกอบด้วยโหนดของแถวและเซลล์ องค์ประกอบตารางจะแสดงโดยคลาสต่อไปนี้:

- [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) แสดงถึงแถวของตาราง
- [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) แสดงถึงเซลล์ตาราง
- StructuredDocumentTag แสดงถึงมาร์กอัปที่กำหนดเอง

แผนภาพต่อไปนี้แสดงโครงสร้างโหนดของระดับตาราง แถว และเซลล์

<img src="/words/net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="ตารางแถวเซลล์กำหนดคำ" style="width:910px"/>
