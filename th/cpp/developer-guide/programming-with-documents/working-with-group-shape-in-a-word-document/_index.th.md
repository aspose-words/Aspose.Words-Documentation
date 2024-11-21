---
title: วิธีการเพิ่มGroup Shapeลงในเอกสารคำ
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับGroup Shapesในเอกสารคำ
linktitle: การทำงานกับGroup Shapesในเอกสารคำ
description: "การจัดกลุ่มและยกเลิกการจัดกลุ่มรูปร่างโดยใช้C++."
type: docs
weight: 290
url: /th/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

บางครั้งคุณต้องเพิ่มgroup shapeลงในเอกสารคำ เช่นgroup shapeประกอบด้วยหลายรูปร่าง.

ในMicrosoft Wordคุณสามารถเพิ่มgroup shapeได้อย่างรวดเร็วโดยใช้ปุ่มคำสั่ง/กลุ่ม รูปร่างของแต่ละบุคคลในกลุ่มสามารถเคลื่อนย้ายแยกต่างหาก.

ในAspose.Wordsมันเป็นเรื่องง่ายมากที่จะเพิ่มgroup shapeโดยใช้[GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/)ชั้น. รูปร่างถูกสร้างขึ้นแยกต่างหากโดยใช้ชั้นเรียน[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)แล้วเพิ่มไปยังวัตถุ**GroupShape**โดยใช้วิธีการ[AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มgroup shapeลงในเอกสารคำ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

ด้านล่างนี้คือบางประเภท`Shape`ที่รองรับในAspose.Words สำหรับรายการที่สมบูรณ์กรุณาเยี่ยมชม[ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- สี่เหลี่ยมผืนผ้า
- RoundRectangle
- RoundRectangle
- วงรี
- เพชร
- สามเหลี่ยม
- RightTriangle
- สี่เหลี่ยมด้านขนาน
- สี่เหลี่ยมคางหมู
- หกเหลี่ยม
- แปดเหลี่ยม

{{% /alert %}}
