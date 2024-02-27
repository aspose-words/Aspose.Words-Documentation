---
title: การทำงานกับรูปร่างใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับรูปทรง
linktitle: การทำงานกับรูปทรง
description: "สร้างและจัดการรูปร่าง วัตถุ ole ในเอกสารโดยใช้ Python"
type: docs
weight: 280
url: /th/python-net/working-with-shapes/
---

หัวข้อนี้อธิบายวิธีการทำงานโดยทางโปรแกรมกับรูปร่างโดยใช้ Aspose.Words

รูปร่างใน Aspose.Words แสดงถึงวัตถุในเลเยอร์การวาด เช่น รูปร่างอัตโนมัติ กล่องข้อความ รูปแบบอิสระ วัตถุ OLE ตัวควบคุม ActiveX หรือรูปภาพ เอกสาร Word สามารถมีรูปร่างที่แตกต่างกันตั้งแต่หนึ่งรูปร่างขึ้นไป รูปร่างของเอกสารแสดงโดยคลาส [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)

## การแทรกรูปร่างโดยใช้ตัวสร้างเอกสาร

คุณสามารถแทรกรูปร่างอินไลน์ที่มีประเภทและขนาดที่ระบุ และรูปร่างลอยอิสระพร้อมตำแหน่ง ขนาด และประเภทการตัดข้อความที่ระบุลงในเอกสารโดยใช้วิธี [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) วิธีการ [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) ช่วยให้สามารถแทรกรูปร่าง DML ลงในโมเดลเอกสารได้ ต้องบันทึกเอกสารในรูปแบบที่รองรับรูปร่าง DML มิฉะนั้นโหนดดังกล่าวจะถูกแปลงเป็นรูปร่าง VML ในขณะที่บันทึกเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกรูปร่างประเภทนี้ลงในเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## ตั้งค่าอัตราส่วนภาพถูกล็อค

เมื่อใช้ Aspose.Words คุณสามารถระบุว่าอัตราส่วนของรูปร่างถูกล็อกผ่านคุณสมบัติ [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) หรือไม่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ **AspectRatioLocked**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## กำหนดเค้าโครงรูปร่างในเซลล์

คุณยังสามารถระบุได้ว่าจะแสดงรูปร่างภายในตารางหรือภายนอกตารางโดยใช้คุณสมบัติ [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ **IsLayoutInCell**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## สร้างสี่เหลี่ยมผืนผ้ามุม Snip

คุณสามารถสร้างสี่เหลี่ยมผืนผ้ามุมสนิปได้โดยใช้ Aspose.Words ประเภทรูปร่าง ได้แก่ [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded) และ [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded)

รูปร่าง DML ถูกสร้างขึ้นโดยใช้วิธี [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) กับประเภทรูปร่างเหล่านี้ ประเภทเหล่านี้ไม่สามารถใช้เพื่อสร้างรูปร่าง VML ความพยายามที่จะสร้างรูปร่างโดยใช้ตัวสร้างสาธารณะของคลาส [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ทำให้เกิดข้อยกเว้น "NotSupportedException"

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกรูปร่างประเภทนี้ลงในเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## รับคะแนนขอบเขตรูปร่างจริง

เมื่อใช้ Aspose.Words API คุณจะได้รับตำแหน่งและขนาดของรูปร่างที่มีบล็อกเป็นจุด สัมพันธ์กับจุดยึดของรูปร่างบนสุด เมื่อต้องการทำเช่นนี้ ใช้คุณสมบัติ [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ **BoundsInPoints**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## ระบุจุดยึดแนวตั้ง

คุณสามารถระบุการจัดตำแหน่งข้อความในแนวตั้งภายในรูปร่างได้โดยใช้คุณสมบัติ [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ **VerticalAnchor**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## ตรวจจับรูปร่าง SmartArt

Aspose.Words ยังอนุญาตให้ตรวจสอบว่ารูปร่างมีวัตถุ `SmartArt` หรือไม่ เมื่อต้องการทำเช่นนี้ ใช้คุณสมบัติ [คุณสมบัติ has_smart_art](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ **HasSmartArt**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## แทรกกฎแนวนอนลงในเอกสาร

คุณสามารถแทรกรูปร่างกฎแนวนอนลงในเอกสารโดยใช้วิธี [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำเช่นนี้:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API จัดเตรียมคุณสมบัติ [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) เพื่อเข้าถึงคุณสมบัติของรูปร่างกฎแนวนอน คลาส [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) เปิดเผยคุณสมบัติพื้นฐาน เช่น [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) ฯลฯ สำหรับการจัดรูปแบบของกฎแนวนอน

ตัวอย่างโค้ดต่อไปนี้สาธิตวิธีการตั้งค่า [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## แทรกวัตถุ OLE เป็นไอคอน

Aspose.Words API มีฟังก์ชัน **Shape.insert_ole_object_as_icon** เพื่อแทรกวัตถุ OLE ที่ฝังหรือเชื่อมโยงเป็นไอคอนลงในเอกสาร ฟังก์ชั่นนี้ช่วยให้สามารถระบุไฟล์ไอคอนและคำอธิบายภาพได้ ประเภทออบเจ็กต์ `OLE` จะถูกตรวจพบโดยใช้นามสกุลไฟล์

ตัวอย่างรหัสต่อไปนี้สาธิตวิธีการตั้งค่าการแทรกวัตถุ OLE เป็นไอคอนลงในเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

ขนาดสูงสุดของไอคอนต้องเป็น 32x32 สำหรับการแสดงผลที่ถูกต้อง

{{% /alert %}}

## นำเข้ารูปร่างด้วย Math XML เป็นรูปร่างลงใน DOM

คุณสามารถใช้คุณสมบัติ [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) เพื่อแปลงรูปร่างด้วย EquationXML เป็นวัตถุ Office Math ค่าเริ่มต้นของคุณสมบัตินี้สอดคล้องกับพฤติกรรมของ MS Word เช่น รูปร่างที่มีสมการ XML จะไม่ถูกแปลงเป็นวัตถุทางคณิตศาสตร์ของ Office

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแปลงรูปร่างเป็นวัตถุ Office Math:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
