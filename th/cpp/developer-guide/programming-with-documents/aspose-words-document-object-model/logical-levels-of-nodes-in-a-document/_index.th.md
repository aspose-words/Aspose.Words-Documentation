---
title: ระดับตรรกะของโหนดในเอกสารในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: ระดับตรรกะของโหนดในเอกสาร
linktitle: ระดับตรรกะของโหนดในเอกสาร
type: docs
description: "ใน Aspose.WordsสำหรับC++ เอกสารที่กล่าวถึงระดับตรรกะของโหนด-ระดับบล็อกระดับอินไลน์หรือระดับแถว ระดับโหนดถูกใช้เพื่ออธิบายตำแหน่งในแผนผังเอกสารที่โหนดมักจะเกิดขึ้น."
weight: 10
url: /th/cpp/logical-levels-of-nodes-in-a-document/
---

บางครั้งเอกสารนี้หมายถึงกลุ่มของคลาสโหนดเป็นของ"ระดับ"ในเอกสารเช่น"ระดับบล็อก","ระดั ดงอย่างชัดเจนโดยมรดกหรือวิธีอื่นๆAspose.WordsDOM ระดับโหนดถูกใช้เพื่ออธิบายตำแหน่งในแผนผังเอกสารที่โหนดมักจะเกิดขึ้น.

ในบทความก่อนหน้านี้เราได้พูดคุยเกี่ยวกับความสัมพันธ์ระหว่างโหนดและความจริงที่ว่าโห ตัวอย่างเช่นเซลล์เท่านั้นที่สามารถเป็นเด็กแถวและแถวเท่านั้นที่สามารถเป็นเด็กตารางแ ความสัมพันธ์เหล่านี้ยังมีผลบังคับใช้สำหรับการแบ่งตรรกะของโหนดเป็นระดับในเอกสาร.

ส่วนต่อไปนี้อธิบายระดับตรรกะของโหนดในAspose.Wordsและคลาสที่อยู่ในแต่ละระดับ.

## เอกสารและระดับตรรกะส่วน

เอกสารคำประกอบด้วยส่วนอย่างน้อยหนึ่งส่วนแสดงโดยคลาส[Section](https://reference.aspose.com/words/cpp/aspose.words/section)และคั่นด้วยตัวแบ่งส่วน ส่วนสามารถกำหนดขนาดหน้าของตัวเอง,ขอบ,การวางแนว,จำนวนคอลัมน์ข้อความ,และส่วนหัว.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)และ [ส่วน](https://www.aspose.com/api/words/cpp/aspose.words/section/) โหนดระดับมีโครงสร้างดังแสดงในไดอะแกรมต่อไปนี้.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

ส่วนที่มีข้อความหลักเช่นเดียวกับส่วนหัวและท้ายกระดาษสำหรับครั้งแรกแม้และหน้าคี่ เหล่านี้แตกต่างกัน"กระแส"ของข้อความที่เรียกว่า*stories*.

ในAspose.Wordsโหนด**Section**มีโหนด[Body](https://reference.aspose.com/words/cpp/aspose.words/body/)และ[HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/)โหนดเรื่อง ออบเจกต์**Body**จะจัดเก็บข้อความหลัก วัตถุ**HeaderFooter**จะจัดเก็บข้อความสำหรับส่วนหัวและส่วนท้าย ข้อความของเรื่องใดๆประกอบด้วยย่อหน้าและตารางตามลำดับแสดงโดย**Paragraph**และ**Table**วัตถุของระดั.

นอกจากนี้แต่ละคำเอกสารสามารถประกอบด้วยอภิธานศัพท์ซึ่งแสดงโดยโหนด[GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/)ในAspose.Words เอกสารอภิธานศัพท์ประกอบด้วย[BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/),[AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/)และ[AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/)รายการ.

**GlossaryDocument**

## บล็อกระดับตรรกะ

โหนดระดับบล็อกแสดงคอนเทนเนอร์สำหรับควบคุมเนื้อหาและเนื้อหาและสามารถเกิดขึ้น:

- ร่างกาย
- ส่วนหัว
- ส่วนท้าย
- เชิงอรรถ
- แสดงความคิดเห็น
- สกรู
- GroupShape
- เซลล์
- StructuredDocumentTag

โหนดระดับบล็อกจะแสดงโดยคลาสต่อไปนี้:

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/)และ[Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/)ซึ่งเป็นโหนดบล็อกระดับที่สำคัญที่สุด
- ที่คั่นหน้าซึ่งเกิดขึ้นทั้งที่ระดับบล็อกและที่ระดับอินไลน์
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/)ซึ่งแสดงถึงมาร์กอัปที่กำหนดเองและสามารถมีทั้งตัวควบคุมเนื้อหาและเนื้อหา

แผนภาพต่อไปนี้แสดงองค์ประกอบระดับบล็อก.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## ระดับตรรกะแบบอินไลน์

โหนดระดับอินไลน์แสดงเนื้อหาจริงของเอกสารและสามารถมีอยู่ในคอนเทนเนอร์ต่อไปนี้:

- วรรค-contชนะที่พบมากที่สุด
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

อิลิเมนต์ระดับอินไลน์จะแสดงโดยคลาสต่อไปนี้:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/)-การทำงานของข้อความที่จัดรูปแบบแตกต่างกัน
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/)และ[BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend)เป็นตัวแทนของบุ๊กมาร์ก
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) และ[Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/)แสดงคำอธิบายประกอบ
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) และ[FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/)ที่เป็นตัวแทนของฟิลด์ตัวอักษรและ[FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/)เป็นตัวแทนของเขตข้อมูลคำ
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/)แสดงอักขระพิเศษในเอกสาร
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)และ[GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/)เป็นตัวแทนของรูปร่าง,ภาพวาด,ภาพฯลฯ.
- SmartTagและStructuredDocumentTagเป็นตัวแทนของมาร์กอัปที่กำหนดเอง

ไดอะแกรมต่อไปนี้แสดงโครงสร้างโหนดระดับอินไลน์.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

รูปร่างใน Microsoft Word ประกอบด้วย Office Art AutoShapes กล่องข้อความ รูปภาพ OLE วัตถุ และตัวควบคุม ActiveX ซึ่งทั้งหมดนี้แสดงโดยใช้คลาส `Shape` รูปร่างบางรูปร่างสามารถมีข้อความได้ด้วย ดังนั้นโหนดรูปร่างใน Aspose.Words จึงสามารถมีโหนดระดับบล็อกได้.

รูปร่างสามารถจัดกลุ่มภายในกันโดยใช้โหนดGroupShape.

{{% /alert %}}

{{% alert color="primary" %}}

เชิงอรรถและความคิดเห็นสามารถมีข้อความดังนั้นเชิงอรรถและโหนดความคิดเห็นในAspose.Wordsสา.

{{% /alert %}}

## ตารางแถวและระดับโหนดเซลล์

ตารางประกอบด้วยโหนดของแถวและเซลล์ องค์ประกอบตารางจะแสดงโดยชั้นเรียนต่อไปนี้:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/)แทนแถวตาราง
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/)แสดงถึงเซลล์ตาราง
- StructuredDocumentTagแสดงมาร์กอัปที่กำหนดเอง

ไดอะแกรมต่อไปนี้แสดงโครงสร้างโหนดของตารางแถวและระดับเซลล์.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>
