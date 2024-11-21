---
title: การทำงานกับ SDT การควบคุมเนื้อหา
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับ SDT การควบคุมเนื้อหา
linktitle: การทำงานกับ SDT การควบคุมเนื้อหา
description: "การใช้ Python คุณสามารถฝังความหมายที่ลูกค้ากำหนด รวมถึงลักษณะการทำงานและรูปลักษณ์ลงในเอกสารได้"
type: docs
weight: 390
url: /th/python-net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

ใน Microsoft Word คุณสามารถสร้างแบบฟอร์มได้โดยเริ่มต้นด้วยเทมเพลตและเพิ่มการควบคุมเนื้อหา รวมถึงช่องทำเครื่องหมาย กล่องข้อความ ตัวเลือกวันที่ และรายการแบบเลื่อนลง ใน Aspose.Words แท็กเอกสารที่มีโครงสร้างหรือการควบคุมเนื้อหาจากเอกสารใดๆ ที่โหลดลงใน Aspose.Words จะถูกนำเข้าเป็นโหนด [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) แท็กเอกสารที่มีโครงสร้าง (SDT หรือการควบคุมเนื้อหา) ช่วยให้สามารถฝังความหมายที่ลูกค้ากำหนด รวมถึงลักษณะการทำงานและรูปลักษณ์ลงในเอกสารได้ [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) สามารถเกิดขึ้นในเอกสารในตำแหน่งต่อไปนี้:

- ระดับบล็อก - ระหว่างย่อหน้าและตารางในฐานะลูกของ [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) หรือโหนด [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- ระดับแถว - ท่ามกลางแถวในตารางในฐานะลูกของโหนด [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
- ระดับเซลล์ - ในกลุ่มเซลล์ในแถวของตาราง เป็นรายการย่อยของโหนด [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)
- ระดับอินไลน์ - ท่ามกลางเนื้อหาอินไลน์ภายในในฐานะลูกของ [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- ซ้อนอยู่ใน [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) อื่น

## การแทรกการควบคุมเนื้อหาลงในเอกสาร

ใน Aspose.Words เวอร์ชันนี้ คุณจะสร้าง SDT หรือการควบคุมเนื้อหาประเภทต่อไปนี้ได้

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

ตัวอย่างรหัสต่อไปนี้สาธิตวิธีการสร้างการควบคุมเนื้อหาประเภทช่องทำเครื่องหมาย

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

ตัวอย่างโค้ดต่อไปนี้สาธิตวิธีการสร้างการควบคุมเนื้อหาของกล่องข้อความ rich text ชนิด

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

ตัวอย่างโค้ดต่อไปนี้สาธิตวิธีการสร้างการควบคุมเนื้อหาของกล่องคำสั่งผสมชนิด

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## วิธีอัปเดตการควบคุมเนื้อหา

ส่วนนี้อธิบายวิธีอัปเดตค่า SDT หรือการควบคุมเนื้อหาโดยทางโปรแกรม

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าสถานะปัจจุบันของช่องทำเครื่องหมาย:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการปรับเปลี่ยนการควบคุมเนื้อหาของประเภทกล่องข้อความธรรมดา รายการแบบหล่นลง และรูปภาพ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างเหล่านี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx)

{{% /alert %}}

## การเชื่อมโยงการควบคุมเนื้อหาเข้ากับส่วน XML ที่กำหนดเอง

คุณสามารถผูกตัวควบคุมเนื้อหากับข้อมูล XML (*ส่วน XML แบบกำหนดเอง*) ในเอกสาร Word ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการผูกการควบคุมเนื้อหากับส่วน XML แบบกำหนดเอง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## XMLMapping ของช่วงแท็กเอกสารที่มีโครงสร้าง

คุณสามารถรับการแมปช่วงแท็กเอกสารที่มีโครงสร้างนี้กับข้อมูล XML ในส่วน XML ที่กำหนดเองของเอกสารปัจจุบันได้โดยใช้คุณสมบัติ [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/) อย่างไรก็ตาม สามารถใช้วิธี [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) เพื่อแมปช่วงแท็กเอกสารที่มีโครงสร้างกับข้อมูล XML

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าการแมป XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## ล้างเนื้อหาของการควบคุมเนื้อหา

คุณสามารถล้างเนื้อหาของตัวควบคุมเนื้อหาด้วยการแสดงพื้นที่ที่สำรองไว้ วิธี [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) จะล้างเนื้อหาของแท็กเอกสารที่มีโครงสร้างนี้ และแสดงตัวยึดตำแหน่งหากมีการกำหนดไว้ อย่างไรก็ตาม ไม่สามารถล้างเนื้อหาของตัวควบคุมเนื้อหาได้หากมีการแก้ไข ถ้าตัวควบคุมเนื้อหาไม่มีพื้นที่ที่สำรองไว้ ระบบจะแทรกช่องว่างห้าช่องเหมือนกับใน MS Word (ยกเว้นส่วนที่ทำซ้ำ รายการส่วนที่ซ้ำ กลุ่ม กล่องกาเครื่องหมาย ข้อมูลอ้างอิง) ถ้าตัวควบคุมเนื้อหาถูกแมปกับ XML แบบกำหนดเอง โหนด XML ที่อ้างอิงจะถูกล้าง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการล้างเนื้อหาของการควบคุมเนื้อหา:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## เปลี่ยนพื้นหลังการควบคุมเนื้อหาและสีเส้นขอบ

คุณสมบัติ [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) ช่วยให้คุณสามารถรับหรือตั้งค่าสีของการควบคุมเนื้อหาได้ สีส่งผลต่อการควบคุมเนื้อหาในสองสถานการณ์:

1. MS Word เน้นพื้นหลังของตัวควบคุมเนื้อหาเมื่อเลื่อนเมาส์ไปเหนือตัวควบคุมเนื้อหา ซึ่งช่วยในการระบุการควบคุมเนื้อหา สีไฮไลต์จะ "อ่อนกว่า" เล็กน้อยกว่า *color* ตัวอย่างเช่น MS Word เน้นพื้นหลังด้วยสีชมพู เมื่อ *color* เป็นสีแดง
2. เมื่อคุณโต้ตอบ (แก้ไข การเลือก ฯลฯ) กับตัวควบคุมเนื้อหา เส้นขอบของตัวควบคุมเนื้อหาจะมีสีด้วย *color*

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเปลี่ยนสีของการควบคุมเนื้อหา:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## วิธีการตั้งค่าสไตล์เพื่อจัดรูปแบบข้อความที่พิมพ์ลงในตัวควบคุมเนื้อหา

ถ้าคุณต้องการตั้งค่าสไตล์ของการควบคุมเนื้อหา คุณสามารถใช้คุณสมบัติ [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) หรือ [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/) ได้ เมื่อคุณพิมพ์ข้อความลงในตัวควบคุมเนื้อหาในเอกสารผลลัพธ์ ข้อความที่พิมพ์จะมีลักษณะเป็น "เครื่องหมายคำพูด"

{{% alert color="primary" %}}

โปรดทราบว่าเฉพาะลักษณะที่เชื่อมโยงและอักขระเท่านั้นที่สามารถนำไปใช้กับการควบคุมเนื้อหาได้ ข้อยกเว้น ("ไม่สามารถใช้สไตล์นี้กับ SDT") เกิดขึ้นเมื่อมีการใช้สไตล์ที่มีอยู่แต่ไม่ได้เชื่อมโยงหรือลักษณะอักขระ

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่ารูปแบบของการควบคุมเนื้อหา:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## การทำงานกับการควบคุมเนื้อหาส่วนการทำซ้ำ

การควบคุมเนื้อหาส่วนที่ทำซ้ำช่วยให้สามารถทำซ้ำเนื้อหาที่มีอยู่ภายในได้ เมื่อใช้ Aspose.Words คุณสามารถสร้างโหนดแท็กเอกสารที่มีโครงสร้างของส่วนการทำซ้ำและประเภทรายการส่วนที่ทำซ้ำได้ และเพื่อจุดประสงค์นี้ ประเภทการแจงนับ [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) จะจัดเตรียมคุณสมบัติ [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการผูกตัวควบคุมเนื้อหาส่วนที่ทำซ้ำกับตาราง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
