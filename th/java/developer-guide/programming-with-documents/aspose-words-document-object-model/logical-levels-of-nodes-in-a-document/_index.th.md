---
title: ระดับตรรกะของโหนดในเอกสาร Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ระดับตรรกะของโหนดในเอกสาร
linktitle: ระดับตรรกะของโหนดในเอกสาร
type: docs
description: "ใน Aspose.Words สําหรับ Java เอกสารที่กล่าวถึงระดับตรรกะของโหนด – ระดับบล็อก, ระดับในบรรทัด หรือระดับแถว ระดับโหนดถูกใช้อธิบายตําแหน่งบนต้นไม้ของเอกสาร ซึ่งปกติจะเป็นโหนด"
weight: 10
url: /th/java/logical-levels-of-nodes-in-a-document/
---

เอกสารนี้บางครั้งก็อ้างถึงกลุ่มคลาสของโหนด ว่าเป็นส่วนหนึ่งของ "ระดับ" ในเอกสาร เช่น "บล็อก-ระดับ", "ระดับ" (หรือที่รู้จักกันในชื่อ "อินไลน์") หรือ "ระดับ" โหนด ระดับในเอกสารเหล่านี้ถูกแยกตามตรรกะเท่านั้น และไม่ได้แสดงอย่างชัดเจนโดยมรดกหรืออื่น ๆ Aspose.Words DOM หมายถึง ระดับโหนดถูกใช้เพื่ออธิบายตําแหน่งที่อยู่บนต้นไม้ของเอกสาร ซึ่งตามปกติจะเป็นโหนด

ในบทความก่อนหน้านี้ เราได้พูดถึงความสัมพันธ์ระหว่างโหนด กับความจริงที่ว่า โหนดทั้งหมดไม่ได้ได้รับอนุญาตให้เป็นเด็ก ยกตัวอย่างเช่น เซลล์เป็นเพียงเด็กแถว และแถวเป็นเพียงเด็กโต๊ะ และอื่น ๆ ความ สัมพันธ์ เหล่า นี้ ยัง นํา มา ใช้ ได้ ด้วย กับ การ แบ่ง โหนด ตาม เหตุ ผล ใน ระดับ ใน เอกสาร.

ส่วนต่าง ๆ ต่อไปนี้ จะอธิบายระดับของโหนดตามตรรกะใน Aspose.Words และเป็นชั้นเรียนในแต่ละระดับ

## ระดับตัวอักษรและเอกสาร

A เอกสารคําประกอบด้วยหนึ่งส่วนหรือมากกว่า ซึ่งแสดงโดย [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) ชั้นเรียนและแยกส่วนกัน ส่วน หนึ่ง สามารถ กําหนด ขนาด หน้า, ขอบ, การ นํา ทาง, จํานวน คอลัมน์, และ หัว เรือ ของ ตน เอง.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ถึง [หัวข้อ](https://www.aspose.com/api/words/java/com.aspose.words/section) โหนดระดับมีโครงสร้างตามที่แสดงในแผนภาพต่อไปนี้

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

ส่วน หนึ่ง มี ข้อ ความ หลัก รวม ทั้ง หัว เรื่อง และ ท้าย เท้า สําหรับ หน้า แรก, แม้ แต่ หน้า แปลก ๆ. มี การ เรียก ข้อ ความ ที่ ต่าง กัน นี้ ว่า "น้ํา ไหล " *stories*.

ใน Aspose.Words, คือ **Section** โหนดบรรจุ [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) ถึง [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) ปมเรื่องราว เดอะ **Body** วัตถุจัดเก็บข้อความหลัก เดอะ **HeaderFooter** วัตถุเก็บข้อความแต่ละหัวและท้ายกระดาษ ข้อความของเรื่องราวใด ๆ ประกอบไปด้วย paragraph และตาราง, ตามลําดับแสดงโดย **Paragraph** ถึง **Table** วัตถุของระดับบล็อก

นอก จาก นั้น แต่ ละ คน เอกสารคําสามารถบรรจุ magary, ซึ่งแสดงโดย [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) โหนดใน Aspose.Words. เอกสารมรกตบรรจุ [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), ถึง [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) ค่า

**GlossaryDocument** รวม [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) โหนดแสดงถึงรายการเอกสารแบบต่าง ๆ แต่ละ **BuildingBlock** มี ส่วน ต่าง ๆ ที่ สามารถ แทรก, เอา ออก, และ คัด ลอก เป็น เอกสาร.

## ระดับความโปร่งแสงของบล็อค

โหนดระดับบล็อกแสดงถึงคอนเทนเนอร์สําหรับเนื้อหาและควบคุมเนื้อหา และสามารถเกิดขึ้นในโหนดลูกของต้นไม้ ในโหนดต่อไปนี้:

- ร่างกาย
- หัวจดหมาย
- ส่วนท้าย
- เชิงอรร
- หมายเหตุ
- รูปร่าง
- Groupรูปร่าง
- เซลล์
- Document tag โครงสร้าง

โหนดระดับบล็อก จะแสดงโดยคลาสต่อไปนี้:

- [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) ถึง [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), ซึ่งเป็นโหนดระดับบล็อกที่สําคัญที่สุด
- ที่คั่นหน้าที่เกิดขึ้นทั้งในระดับบล็อกและระดับใน
- [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), ซึ่งแสดงถึงการทําเครื่องหมายเอง และสามารถควบคุมเนื้อหาและเนื้อหาได้

แผนภาพต่อไปนี้แสดงองค์ประกอบระดับบล็อก

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## ระดับตรรกะภายใน

โหนดในบรรทัด-ระดับแสดงถึงเนื้อหาจริงของเอกสาร และสามารถบรรจุได้ใน ภาชนะต่อไปนี้:

- วรรค - ตู้คอนเทนเนอร์ที่นิยมมากที่สุด
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- Document tag โครงสร้าง

สมาชิกระดับในบรรทัด จะแสดงโดยคลาสต่อไปนี้:

- [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) - ฉบับที่แตกต่างกัน
- [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) ถึง [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) แสดงที่คั่นหน้า
- [2013i. สืบค้นเมื่อ 25 July 2013.](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) ถึง [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) แสดงหมายเหตุประกอบ
- [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) ถึง [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) ที่เป็นตัวแทนของตัวละครภาคสนาม และ [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) แสดง ช่องข้อมูลข้อความ
- [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) แสดงอักขระพิเศษในเอกสาร
- [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) ถึง [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) แสดงรูปร่าง ภาพวาด ภาพ เป็นต้น
- สมาร์ทแท็กและโครงสร้าง Document ป้ายกํากับที่กําหนดเอง

แผนภาพต่อไปนี้แสดงโครงสร้างของโหนดระดับในบรรทัด

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

รูปทรงใน Microsoft Word รวม ถึง Art AutoShapes, กล่องข้อความ, ภาพ, วัตถุ OLE, และการควบคุม ATHX ซึ่งทั้งหมดแสดงโดยใช้ `Shape` ชั้นเรียน. รูปทรงบางรูปร่างสามารถบรรจุข้อความได้ ดังนั้นปมรูปทรงใน Aspose.Words สามารถบรรจุโหนดระดับบล็อก

รูปทรงสามารถจัดกลุ่มได้ภายในกันและกันโดยใช้ Groupปมรูปกาย

{{% /alert %}}

{{% alert color="primary" %}}

บทความ อื่น ๆ ใน ฉบับ นี้ Aspose.Words สามารถบรรจุโหนดระดับบล็อก

{{% /alert %}}

## ตาราง, แถว, และระดับโหนดเซลล์

ตาราง นี้ ประกอบ ด้วย โหนด ของ แถว และ เซลล์. มี การ แสดง ธาตุ ใน ตาราง โดย ชั้น เรียน ต่อ ไป นี้:

- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) แสดงแถวตาราง
- [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) แสดงเซลล์ตาราง
- โครงสร้าง Document ป้ายกํากับที่กําหนดเอง

แผนภูมิ ต่อ ไป นี้ แสดง ให้ เห็น โครง สร้าง โหนด ของ ตาราง, แถว, และ ระดับ เซลล์.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
