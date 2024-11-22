---
title: ทํางานกับศูนย์ควบคุมเนื้อหา Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับศูนย์ควบคุมเนื้อหา SDT
linktitle: ทํางานกับศูนย์ควบคุมเนื้อหา SDT
type: docs
description: "ระบบจัดการเนื้อหาของเอกสารขั้นสูง, วิธีสร้างและจัดการเนื้อหาต่าง ๆ (แท็กเอกสารแบบจุลภาค) ใช้ Java."
weight: 390
url: /th/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

ใน Microsoft Word, คุณสามารถสร้างแบบฟอร์มได้โดยเริ่มจากแม่แบบ และเพิ่มการควบคุมเนื้อหาได้ รวมถึง checkboxs, กล่องข้อความ, เลือกวันที่, และวางรายการ ใน Aspose.Words'"> แท็กหรือเนื้อหาของเอกสารที่มีโครงสร้างหรือควบคุมจากเอกสารใด ๆ ที่ถูกโหลดเข้าไป Aspose.Words นําเข้ามาในรูปแบบโหนด DocumentTag แท็กของเอกสารที่ถูกคอมไพล์มา (SDT หรือ Control) อนุญาตให้มีการฝังโปรแกรมลูกข่ายที่กําหนดไว้ รวมถึงพฤติกรรมและรูปลักษณ์ ลงในเอกสารด้วย

โครงสร้าง document ป้ายกํากับสามารถเกิดขึ้นในเอกสารในตําแหน่งต่อไปนี้ได้:

- บล็อกระดับ - จากย่อหน้าและตาราง, เป็นลูกของร่างกาย, ส่วนหัว Footer, หมายเหตุ, เชิงอรร หรือโหนดรูป
- ระดับแถว - จากแถวในตาราง เป็นเด็กของ Table โหนด
- เซลล์ระดับ - ในบรรดาเซลล์ในแถวตาราง เป็นเด็กของโหนดแถว
- Inline-ระดับ - ในเนื้อหาภายในในฐานะเด็กของย่อหน้า
- ถูกฝังอยู่ในซากยาน

## แทรกเนื้อหาที่จะควบคุมเป็นเอกสาร

ในรุ่นนี้ Aspose.Words, สร้างประเภทของ SDT หรือควบคุมเนื้อหาต่อไปนี้ได้:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีสร้างการควบคุมเนื้อหาของกาเลือกประเภท:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

ตัวอย่างรหัสต่อไปนี้ แสดงถึงวิธีสร้างการควบคุมเนื้อหาของกล่องข้อความที่อุดมสมบูรณ์:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีสร้างกล่องประเภทคอมโบเนื้อหา:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## วิธี ปรับ ปรุง การ ควบคุม เนื้อหา

ส่วนนี้อธิบายวิธีปรับปรุงค่าของ SDT หรือโปรแกรมควบคุมเนื้อหา

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการตั้งค่าสถานะของ checkbox ปัจจุบัน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีแก้ไขเนื้อหาในการควบคุม กล่องข้อความธรรมดา, รายการวางและภาพ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างเหล่านี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## การทําดัชนีข้อความเป็นรูปแบบ XML

คุณสามารถผูกเนื้อหาที่ควบคุมด้วยข้อมูล XML (ส่วน XML*) ในเอกสารคํา

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการผูกค่าเนื้อหากับส่วน XML ที่กําหนดเอง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## การ ควบคุม เนื้อหา ที่ ชัดเจน

คุณสามารถล้างเนื้อหาของการควบคุมเนื้อหากับการแสดงผู้ถือครอง **โครงสร้าง documentTag. icard ()** วิธีการล้างเนื้อหาของป้ายเอกสารที่มีโครงสร้างนี้ และแสดงตัวแสดงตําแหน่งหากกําหนดค่า อย่างไรก็ตาม เป็น ไป ไม่ ได้ ที่ จะ ลบ เนื้อหา ของ การ ควบคุม เนื้อหา หาก มี การ แก้ไข. หากตัวควบคุมเนื้อหาไม่มีตัวแทนค่า ช่อง 5 ช่องจะถูกแทรกเหมือนใน MSW (ยกเว้นส่วนซ้ํา, ทําซ้ํารายการ, กลุ่ม, Check-boxs, cords) หากมีการโยงตัวควบคุมเนื้อหาไปยัง XML ที่ปรับแต่งเอง จะเป็นการล้างโหนด XML ที่อ้างถึง

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี แก้ เนื้อหา ของ การ ควบคุม เนื้อหา:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## เปลี่ยนสีพื้นหลังและกรอบเนื้อหา

เดอะ `StructuredDocumentTag.Color` คุณสมบัติอนุญาตให้คุณได้รับหรือตั้งค่าสีของการควบคุมเนื้อหาได้ สีส่งผลกระทบต่อเนื้อหาที่ควบคุมในสองสถานการณ์:

1 MSWord เน้นพื้นหลังของตัวควบคุมเนื้อหา เมื่อมีการเคลื่อนเมาส์มาอยู่เหนือการควบคุมเนื้อหา นี่ ช่วย ระบุ ตัว ควบคุม เนื้อหา. สีของการเน้นเป็นบิต " softer" กว่า *Color*. ตัวอย่างเช่น MSWord เน้นพื้นหลังด้วยสีชมพู เมื่อ *Color* เป็นสีแดง
2 เมื่อคุณทําปฏิกิริยา (พิมพ์, เลือก เป็นต้น) กับการควบคุมเนื้อหา ขอบเขตของเนื้อหาจะถูกระบายสีด้วย *Color*.

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีเปลี่ยนสีของตัวควบคุมเนื้อหา:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## กําหนดรูปแบบที่จะพิมพ์ข้อความลงในการควบคุมเนื้อหา

หากคุณต้องการตั้งค่ารูปแบบการควบคุมเนื้อหา คุณสามารถใช้ `StructuredDocumentTag.Style` หรือ `StructuredDocumentTag.StyleName` คุณสมบัติ เมื่อคุณพิมพ์ข้อความลงในเอกสารควบคุมเนื้อหา ข้อความที่พิมพ์ออกมาจะมีรูปแบบ " Quoto"

{{% alert color="primary" %}}

ควรจําไว้ว่า เฉพาะรูปแบบที่อยู่เชื่อมโยงและรูปแบบอักขระที่สามารถนําไปใช้กับการควบคุมเนื้อหาได้ Expression ไม่ถูกต้อง ("ไม่สามารถปรับใช้รูปแบบนี้กับ SDT") ได้ เมื่อมีรูปแบบที่ทํางานอยู่ แต่ไม่ได้มีการปรับใช้รูปแบบเชื่อมโยงหรือรูปแบบอักขระอยู่

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการตั้งค่ารูปแบบของการควบคุมเนื้อหา:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## ทํางานกับส่วนควบคุมส่วนเนื้อหาซ้ํา

ตัวควบคุมการทําซ้ําของเนื้อหา สามารถทําซ้ําเนื้อหาที่อยู่ภายใน ใช้ Aspose.Words, โหนดแท็กของเอกสารที่มีโครงสร้างของส่วนซ้ํา และทําซ้ําส่วนรายการชนิด สามารถถูกสร้างขึ้น และสําหรับวัตถุประสงค์นี้ [ชนิดการเผาผลาญของสื่อ](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) ให้สมาชิกผู้เข้าแข่งขัน

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ เชื่อม เนื้อหา ซ้ํา เข้า กับ ตาราง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

