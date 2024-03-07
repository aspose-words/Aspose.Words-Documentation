---
title: ระดับลอจิคัลของโหนดในเอกสาร
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ระดับลอจิคัลของโหนดในเอกสาร
linktitle: ระดับลอจิคัลของโหนดในเอกสาร
type: docs
description: "ในเอกสาร Aspose.Words สำหรับ Python via .NET กล่าวถึงระดับตรรกะของโหนด - ระดับบล็อก ระดับอินไลน์ หรือระดับแถว ระดับโหนดใช้เพื่ออธิบายตำแหน่งในแผนผังเอกสารที่โหนดมักเกิดขึ้น"
weight: 10
url: /th/python-net/logical-levels-of-nodes-in-a-document/
---

เอกสารนี้บางครั้งอ้างถึงกลุ่มของคลาสโหนดที่เป็นของ "ระดับ" ในเอกสาร เช่น "ระดับบล็อก" "ระดับอินไลน์" (หรือที่เรียกว่า "อินไลน์") หรือโหนด "ระดับแถว". ระดับเหล่านี้ในเอกสารมีความแตกต่างกันในเชิงตรรกะล้วนๆ และไม่ได้แสดงอย่างชัดเจนโดยการสืบทอดหรือวิธีการ Aspose.Words DOM อื่นๆ ระดับโหนดใช้เพื่ออธิบายตำแหน่งในแผนผังเอกสารที่โหนดมักจะเกิดขึ้น

ในบทความก่อนหน้านี้ เราได้พูดคุยกันแล้วเกี่ยวกับความสัมพันธ์ระหว่างโหนดและความจริงที่ว่าไม่ใช่ทุกโหนดจะได้รับอนุญาตให้เป็นลูกของโหนดใดๆ ตัวอย่างเช่น [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) สามารถเป็นได้เฉพาะรายการย่อย [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) และ [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) สามารถเป็นได้เฉพาะรายการย่อย [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) เป็นต้น ความสัมพันธ์เหล่านี้ยังใช้สำหรับการแบ่งโหนดตามตรรกะตามระดับต่างๆ ในเอกสารอีกด้วย

ส่วนต่อไปนี้จะอธิบายระดับลอจิคัลของโหนดใน Aspose.Words และคลาสที่เป็นของแต่ละระดับ

## ระดับตรรกะของเอกสารและมาตรา

เอกสาร Word ประกอบด้วยหนึ่งส่วนขึ้นไป ซึ่งแสดงโดยคลาส [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) และคั่นด้วยตัวแบ่งส่วน ส่วนสามารถกำหนดขนาดหน้า ระยะขอบ การวางแนว จำนวนคอลัมน์ข้อความ และส่วนหัวและส่วนท้ายของตนเองได้

โหนดระดับ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) และ [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) มีโครงสร้างดังแสดงในแผนภาพต่อไปนี้

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="เอกสารและระดับส่วนกำหนดคำ" style="width:700px"/>

ส่วนประกอบด้วยข้อความหลัก ตลอดจนส่วนหัวและส่วนท้ายสำหรับหน้าแรก หน้าคู่ และหน้าคี่ "กระแส" ของข้อความที่แตกต่างกันเหล่านี้เรียกว่า *stories*

ใน Aspose.Words โหนด [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) จะมีโหนดเรื่องราว [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) และ [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) วัตถุ [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) เก็บข้อความหลัก ออบเจ็กต์ [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) จะจัดเก็บข้อความสำหรับแต่ละส่วนหัวและส่วนท้าย ข้อความของเรื่องราวใดๆ ประกอบด้วยย่อหน้าและตาราง ตามลำดับซึ่งแสดงด้วยออบเจ็กต์ [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) และ [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ของระดับบล็อก

นอกจากนี้ เอกสาร Word แต่ละฉบับสามารถมีอภิธานศัพท์ซึ่งแสดงโดยโหนด [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) ใน Aspose.Words เอกสารอภิธานศัพท์ประกอบด้วยรายการ [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text) และ [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct)

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) มีโหนด [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) ที่แสดงรายการเอกสารอภิธานศัพท์ประเภทต่างๆ [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) แต่ละรายการมีส่วนที่สามารถแทรก ลบ และคัดลอกลงในเอกสารได้

## บล็อกระดับลอจิคัล

โหนดระดับบล็อกแสดงถึงคอนเทนเนอร์สำหรับเนื้อหาและการควบคุมเนื้อหา และสามารถเกิดขึ้นได้ในโหนดย่อยของแผนผังเอกสารในโหนดต่อไปนี้:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

โหนดระดับบล็อกแสดงโดยคลาสต่อไปนี้:

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) และ [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ซึ่งเป็นโหนดระดับบล็อกที่สำคัญที่สุด
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/) ซึ่งเกิดขึ้นทั้งในระดับบล็อกและระดับอินไลน์
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) ซึ่งแสดงถึงมาร์กอัปที่กำหนดเองและสามารถมีทั้งเนื้อหาและการควบคุมเนื้อหา

แผนภาพต่อไปนี้แสดงองค์ประกอบระดับบล็อก

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="บล็อกระดับ aspose-คำ" style="width:550px"/>

## ระดับลอจิคัลแบบอินไลน์

โหนดระดับอินไลน์แสดงถึงเนื้อหาจริงของเอกสารและสามารถบรรจุอยู่ในคอนเทนเนอร์ต่อไปนี้:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) – คอนเทนเนอร์ที่พบบ่อยที่สุด
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

องค์ประกอบระดับอินไลน์จะแสดงโดยคลาสต่อไปนี้:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) – การเรียกใช้ข้อความที่มีรูปแบบแตกต่างออกไป
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) และ [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) เป็นตัวแทนของบุ๊กมาร์ก
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) และ [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) เป็นตัวแทนคำอธิบายประกอบ
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) และ [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) ที่แสดงอักขระฟิลด์ และ [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) แสดงถึงฟิลด์ Word
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) แสดงถึงอักขระพิเศษในเอกสาร
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) และ [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) เป็นตัวแทนรูปร่าง ภาพวาด รูปภาพ ฯลฯ
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) และ [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) แสดงถึงมาร์กอัปที่กำหนดเอง

แผนภาพต่อไปนี้แสดงโครงสร้างโหนดระดับอินไลน์

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="คำระดับอินไลน์ aspose" style="width:785px"/>

{{% alert color="primary" %}}

รูปร่างใน Microsoft Word ประกอบด้วยรูปร่างอัตโนมัติของ Office Art, กล่องข้อความ, รูปภาพ, วัตถุ OLE และตัวควบคุม ActiveX ซึ่งทั้งหมดนี้แสดงโดยใช้คลาส `Shape` รูปร่างบางรูปร่างสามารถมีข้อความได้ ดังนั้นโหนดรูปร่างใน Aspose.Words จึงสามารถมีโหนดระดับบล็อกได้

รูปร่างสามารถจัดกลุ่มไว้ภายในกันและกันได้โดยใช้โหนด [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)

{{% /alert %}}

{{% alert color="primary" %}}

เชิงอรรถและความคิดเห็นสามารถมีข้อความได้ ดังนั้นโหนด [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) และ [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) ใน Aspose.Words จึงสามารถมีโหนดระดับบล็อกได้

{{% /alert %}}

## ระดับตาราง แถว และโหนดเซลล์

ตารางประกอบด้วยโหนดของแถวและเซลล์ องค์ประกอบ [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) จะแสดงโดยคลาสต่อไปนี้:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) แสดงถึงแถวของตาราง
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) แสดงถึงเซลล์ตาราง
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) แสดงถึงมาร์กอัปที่กำหนดเอง

แผนภาพต่อไปนี้แสดงโครงสร้างโหนดของระดับ [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) และ [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="ตารางแถวเซลล์กำหนดคำ" style="width:910px"/>