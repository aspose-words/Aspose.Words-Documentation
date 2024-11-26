---
title: การทำงานกับรูปร่างในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับรูปร่าง
linktitle: การทำงานกับรูปร่าง
type: docs
description: "รู้เบื้องต้นเกี่ยวกับภาษามาร์กอัปสร้างรูปร่างที่แตกต่างกันโดยใช้C++."
weight: 280
url: /th/cpp/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

หัวข้อนี้อธิบายถึงวิธีการทำงานตามโปรแกรมที่มีรูปร่างโดยใช้Aspose.Words.

รูปร่างในAspose.Wordsเป็นตัวแทนของวัตถุในเลเยอร์รูปวาดเช่นAutoShapeกล่องข้อความแบบอิสระOLEวัตถุการควบ เอกสารคำสามารถประกอบด้วยรูปทรงที่แตกต่างกันอย่างน้อยหนึ่ง รูปร่างของเอกสารจะแสดงโดยคลาส[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/).

## แทรกรูปร่างโดยใช้ตัวสร้างเอกสาร

คุณสามารถแทรกรูปร่างแบบอินไลน์ที่มีชนิดและขนาดที่ระบุและรูปร่างแบบลอยตัวได้ด้วยตำแหน่งขนาดและชนิดการตัดข้อความที่ระบุในเอกสารโดยใช้วิธีการ[InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/) วิธี**InsertShape**อนุญาตให้แทรกDMLรูปร่างลงในโมเดลเอกสาร เอกสารจะต้องถูกบันทึกในรูปแบบที่รองรับDMLรูปร่างมิฉะนั้นโหนดดังกล่าวจะถูกแปลงเป็นVMLรูปร่างในขณะที่บันทึกเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกรูปร่างชนิดนี้ลงในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## ตั้งค่าอัตราส่วนภาพล็อค

ใช้Aspose.Wordsคุณสามารถระบุว่าอัตราส่วนของรูปร่างถูกล็อคผ่านคุณสมบัติ[AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ**AspectRatioLocked**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## ตั้งรูปแบบรูปร่างในเซลล์

นอกจากนี้คุณยังสามารถระบุว่ารูปร่างจะแสดงภายในตารางหรือภายนอกโดยใช้คุณสมบัติ[IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ**IsLayoutInCell**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## สร้างมุมตัดสี่เหลี่ยมผืนผ้า

คุณสามารถสร้างสี่เหลี่ยมมุมตัดด้วยAspose.Words ประเภทรูปร่างคือ*SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,*และ*DiagonalCornersRounded.*

รูปร่างDMLถูกสร้างขึ้นโดยใช้วิธีการ**InsertShape**กับประเภทรูปร่างเหล่านี้ ชนิดเหล่านี้ไม่สามารถใช้เพื่อสร้างVMLรูปร่าง พยายามที่จะสร้างรูปร่างโดยใช้ตัวสร้างสาธารณะของ"รูปร่าง"ชั้นยกข้อยกเว้น"NotSupportedException".

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกชนิดของรูปร่างเหล่านี้ลงในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## รับรูปร่างขอบเขตที่เกิดขึ้นจริงจุด

ใช้Aspose.WordsAPIคุณจะได้รับตำแหน่งและขนาดของรูปร่างที่มีบล็อกในจุดเมื่อเทียบกับสมอของรูปร่างบ เมื่อต้องการทำเช่นนี้ให้ใช้คุณสมบัติ[BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ**BoundsInPoints**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## รูปแบบกฎแนวนอน

Aspose.WordsAPIให้คุณสมบัติ[HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/)เพื่อเข้าถึงคุณสมบัติของรูปร่างกฎแนวนอน **HorizontalRuleFormat**ชั้นแสดงคุณสมบัติพื้นฐานเช่นความสูง,สี,สี,ฯลฯ สำหรับการจัดรูปแบบของกฎแนวนอน.

ตัวอย่างรหัสต่อไปนี้สาธิตวิธีการตั้งค่า**HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## แทรกOLEวัตถุเป็นไอคอน

Aspose.WordsAPIให้**Shape**ฟังก์ชัน{**InsertOleObjectAsIcon**เพื่อแทรกวัตถุฝังตัวหรือเชื่อมโยงOLEเป็นไอคอนในเอกสาร ฟังก์ชันนี้อนุญาตให้ระบุแฟ้มไอคอนและคำอธิบายภาพได้ ชนิดของวัตถุ`OLE`จะถูกตรวจพบโดยใช้นามสกุลของไฟล์.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าแทรกOLEวัตถุเป็นไอคอนในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

ขนาดสูงสุดของไอคอนต้องเป็น 32*32 สำหรับจอแสดงผลที่ถูกต้อง.

{{% /alert %}}
