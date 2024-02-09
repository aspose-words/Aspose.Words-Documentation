---
title: การทำงานกับ SDT การควบคุมเนื้อหา
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับ SDT การควบคุมเนื้อหา
linktitle: การทำงานกับ SDT การควบคุมเนื้อหา
description: "การจัดการเนื้อหาเอกสารขั้นสูง วิธีสร้างและจัดการการควบคุมเนื้อหา (แท็กเอกสารที่มีโครงสร้าง) โดยใช้ C#"
type: docs
weight: 390
url: /th/net/working-with-content-control-sdt/
---

ใน Microsoft Word คุณสามารถสร้างแบบฟอร์มได้โดยเริ่มต้นด้วยเทมเพลตและเพิ่มการควบคุมเนื้อหา รวมถึงช่องทำเครื่องหมาย กล่องข้อความ ตัวเลือกวันที่ และรายการแบบเลื่อนลง ใน Aspose.Words แท็กเอกสารที่มีโครงสร้างหรือการควบคุมเนื้อหาจากเอกสารใดๆ ที่โหลดลงใน Aspose.Words จะถูกนำเข้าเป็นโหนด StructuredDocumentTag แท็กเอกสารที่มีโครงสร้าง (SDT หรือการควบคุมเนื้อหา) ช่วยให้สามารถฝังความหมายที่ลูกค้ากำหนดตลอดจนลักษณะการทำงานและรูปลักษณ์ลงในเอกสารได้

StructuredDocumentTag สามารถเกิดขึ้นในเอกสารในตำแหน่งต่อไปนี้:

- ระดับบล็อก - ระหว่างย่อหน้าและตารางในฐานะลูกของ Body, HeaderFooter, ความคิดเห็น, เชิงอรรถหรือโหนดรูปร่าง
- ระดับแถว – ท่ามกลางแถวในตาราง เป็นลูกของโหนดตาราง
- ระดับเซลล์ – ท่ามกลางเซลล์ในแถวของตาราง เป็นลูกของโหนดแถว
- ระดับอินไลน์ – ท่ามกลางเนื้อหาอินไลน์ภายใน เป็นรายการย่อยของย่อหน้า
- ซ้อนอยู่ภายใน StructuredDocumentTag อื่น

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

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างการควบคุมเนื้อหาประเภทช่องทำเครื่องหมาย:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างการควบคุมเนื้อหาของกล่องข้อความชนิด rich text:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างการควบคุมเนื้อหาของกล่องคำสั่งผสมชนิด:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## วิธีอัปเดตการควบคุมเนื้อหา

ส่วนนี้อธิบายวิธีอัปเดตค่า SDT หรือการควบคุมเนื้อหาโดยทางโปรแกรม

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าสถานะปัจจุบันของช่องทำเครื่องหมาย:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการปรับเปลี่ยนการควบคุมเนื้อหาของประเภทกล่องข้อความธรรมดา รายการแบบหล่นลง และรูปภาพ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## การเชื่อมโยงการควบคุมเนื้อหาเข้ากับส่วน XML ที่กำหนดเอง

คุณสามารถผูกตัวควบคุมเนื้อหากับข้อมูล XML (*ส่วน XML แบบกำหนดเอง*) ในเอกสาร Word ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการผูกการควบคุมเนื้อหากับส่วน XML แบบกำหนดเอง:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## XMLMapping ของช่วงแท็กเอกสารที่มีโครงสร้าง

คุณสามารถรับการแมปช่วงแท็กเอกสารที่มีโครงสร้างนี้กับข้อมูล XML ในส่วน XML ที่กำหนดเองของเอกสารปัจจุบันได้โดยใช้ **คุณสมบัติ StructuredDocumentTagRangeStart.XmlMapping** อย่างไรก็ตาม สามารถใช้วิธี [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) เพื่อแมปช่วงแท็กเอกสารที่มีโครงสร้างกับข้อมูล XML

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าการแมป XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## ล้างเนื้อหาของการควบคุมเนื้อหา

คุณสามารถล้างเนื้อหาของตัวควบคุมเนื้อหาด้วยการแสดงพื้นที่ที่สำรองไว้ เมธอด **StructuredDocumentTag.Clear** จะล้างเนื้อหาของแท็กเอกสารที่มีโครงสร้างนี้ และแสดงตัวยึดตำแหน่งหากมีการกำหนดไว้ อย่างไรก็ตาม ไม่สามารถล้างเนื้อหาของตัวควบคุมเนื้อหาได้หากมีการแก้ไข ถ้าตัวควบคุมเนื้อหาไม่มีพื้นที่ที่สำรองไว้ ระบบจะแทรกช่องว่างห้าช่องเหมือนใน Microsoft Word (ยกเว้นส่วนที่ทำซ้ำ รายการส่วนที่ซ้ำ กลุ่ม กล่องกาเครื่องหมาย ข้อมูลอ้างอิง) ถ้าตัวควบคุมเนื้อหาถูกแมปกับ XML แบบกำหนดเอง โหนด XML ที่อ้างอิงจะถูกล้าง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการล้างเนื้อหาของการควบคุมเนื้อหา:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## เปลี่ยนพื้นหลังการควบคุมเนื้อหาและสีเส้นขอบ

คุณสมบัติ `StructuredDocumentTag.Color` ช่วยให้คุณสามารถรับหรือตั้งค่าสีของการควบคุมเนื้อหาได้ สีส่งผลต่อการควบคุมเนื้อหาในสองสถานการณ์:

1. MS Word เน้นพื้นหลังของตัวควบคุมเนื้อหาเมื่อเลื่อนเมาส์ไปเหนือตัวควบคุมเนื้อหา ซึ่งช่วยในการระบุการควบคุมเนื้อหา สีไฮไลต์จะ "อ่อนกว่า" เล็กน้อยกว่า *Color* ตัวอย่างเช่น MS Word เน้นพื้นหลังด้วยสีชมพู เมื่อ *Color* เป็นสีแดง
2. เมื่อคุณโต้ตอบ (แก้ไข การเลือก ฯลฯ) กับตัวควบคุมเนื้อหา เส้นขอบของตัวควบคุมเนื้อหาจะมีสีด้วย *Color*

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเปลี่ยนสีของการควบคุมเนื้อหา:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## วิธีการตั้งค่าสไตล์เพื่อจัดรูปแบบข้อความที่พิมพ์ลงในตัวควบคุมเนื้อหา

ถ้าคุณต้องการตั้งค่าสไตล์ของการควบคุมเนื้อหา คุณสามารถใช้คุณสมบัติ `StructuredDocumentTag.Style` หรือ `StructuredDocumentTag.StyleName` ได้ เมื่อคุณพิมพ์ข้อความลงในตัวควบคุมเนื้อหาในเอกสารผลลัพธ์ ข้อความที่พิมพ์จะมีลักษณะเป็น "เครื่องหมายคำพูด"

{{% alert color="primary" %}}

โปรดทราบว่าเฉพาะลักษณะที่เชื่อมโยงและอักขระเท่านั้นที่สามารถนำไปใช้กับการควบคุมเนื้อหาได้ InvalidOperationException ("ไม่สามารถใช้สไตล์นี้กับ SDT") จะปรากฏขึ้นเมื่อมีการใช้สไตล์ที่มีอยู่แต่ไม่ได้เชื่อมโยงหรือลักษณะอักขระ

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่ารูปแบบของการควบคุมเนื้อหา:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## การทำงานกับการควบคุมเนื้อหาส่วนการทำซ้ำ

การควบคุมเนื้อหาส่วนที่ทำซ้ำช่วยให้สามารถทำซ้ำเนื้อหาที่มีอยู่ภายในได้ เมื่อใช้ Aspose.Words คุณสามารถสร้างโหนดแท็กเอกสารที่มีโครงสร้างของส่วนการทำซ้ำและประเภทรายการส่วนที่ทำซ้ำได้ และเพื่อจุดประสงค์นี้ [ประเภทการแจงนับ SdtType](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) จึงจัดเตรียมคุณสมบัติ **RepeatingSectionItem**

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการผูกตัวควบคุมเนื้อหาส่วนที่ทำซ้ำกับตาราง

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
