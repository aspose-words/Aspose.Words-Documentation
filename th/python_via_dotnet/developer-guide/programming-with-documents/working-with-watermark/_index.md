---
title: การทำงานกับลายน้ำใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับลายน้ำ
linktitle: การทำงานกับลายน้ำ
description: "สร้างและจัดการลายน้ำในเอกสารโดยใช้ Python"
type: docs
weight: 340
url: /th/python-net/working-with-watermark/
---

หัวข้อนี้อธิบายวิธีการทำงานโดยทางโปรแกรมด้วยลายน้ำโดยใช้ Aspose.Words ลายน้ำคือภาพพื้นหลังที่แสดงอยู่ด้านหลังข้อความในเอกสาร ลายน้ำอาจมีข้อความหรือรูปภาพที่แสดงโดยคลาส [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/)

{{% alert color="primary" %}}

**ลองออนไลน์**

คุณสามารถลองใช้ฟังก์ชันนี้กับ [ลายน้ำเอกสารออนไลน์ฟรี](https://products.aspose.app/words/watermark) ของเราได้

{{% /alert %}}

## วิธีเพิ่มลายน้ำให้กับเอกสาร

ใน Microsoft Word คุณสามารถแทรกลายน้ำในเอกสารได้อย่างง่ายดายโดยใช้คำสั่งแทรกลายน้ำ Aspose.Words จัดเตรียมคลาส [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) เพื่อเพิ่มหรือลบลายน้ำในเอกสาร Aspose.Words จัดให้มีการแจงนับ [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) ซึ่งกำหนดลายน้ำที่เป็นไปได้สามประเภท ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image) และ [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) ที่จะใช้งาน

### เพิ่มลายน้ำข้อความ

ตัวอย่างโค้ดต่อไปนี้สาธิตวิธีการแทรกลายน้ำข้อความในเอกสารโดยการกำหนด [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) โดยใช้วิธี [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/)

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### เพิ่มลายน้ำรูปภาพ

ตัวอย่างโค้ดต่อไปนี้สาธิตวิธีการแทรกลายน้ำรูปภาพในเอกสารโดยการกำหนด [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) โดยใช้วิธี [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

ลายน้ำสามารถแทรกได้โดยใช้คลาสรูปร่างเช่นกัน มันง่ายมากที่จะแทรกรูปร่างหรือรูปภาพใด ๆ ลงในส่วนหัวหรือส่วนท้ายและสร้างลายน้ำประเภทใดก็ได้เท่าที่จะจินตนาการได้

ตัวอย่างรหัสต่อไปนี้แทรกลายน้ำลงในเอกสาร Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [ที่นี่](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}


## ลบลายน้ำออกจากเอกสาร

คลาส [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) จัดเตรียมวิธีการลบเพื่อลบลายน้ำออกจากเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบลายน้ำออกจากเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

หากเพิ่มลายน้ำโดยใช้วัตถุคลาส [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) หากต้องการลบลายน้ำออกจากเอกสาร คุณต้องตั้งชื่อรูปร่างลายน้ำเท่านั้นในระหว่างการแทรก จากนั้นจึงลบรูปร่างลายน้ำตามชื่อที่กำหนด

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีตั้งชื่อรูปร่างลายน้ำและลบออกจากเอกสาร:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## เพิ่มลายน้ำในเซลล์ตาราง

บางครั้งคุณจำเป็นต้องแทรกลายน้ำ/รูปภาพลงในเซลล์ของตารางและแสดงไว้นอกตาราง คุณสามารถใช้คุณสมบัติ [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) ได้ คุณสมบัตินี้ได้รับหรือตั้งค่าสถานะที่ระบุว่ารูปร่างจะแสดงภายในตารางหรือภายนอก โปรดทราบว่าคุณสมบัตินี้ใช้งานได้เฉพาะเมื่อคุณปรับเอกสารให้เหมาะสมสำหรับ Microsoft Word 2010 โดยใช้วิธี [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัตินี้:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
