---
title: วิธีเพิ่มรูปร่าง Group ลงในไฟล์ Word
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับรูปร่าง Group ในเอกสาร Word
linktitle: การทำงานกับรูปร่าง Group ในเอกสาร Word
description: "เพิ่ม group shape ลงในเอกสารโดยใช้ Python"
type: docs
weight: 290
url: /th/python-net/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

บางครั้งคุณจำเป็นต้องเพิ่ม group shape ลงในเอกสาร Word group shape ดังกล่าวประกอบด้วยหลายรูปร่าง

ใน Microsoft Word คุณสามารถเพิ่ม group shape ได้อย่างรวดเร็วโดยใช้คำสั่ง/ปุ่ม Group แต่ละรูปร่างในกลุ่มสามารถย้ายแยกกันได้

ใน Aspose.Words การเพิ่ม group shape โดยใช้คลาส [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) ทำได้ง่ายมาก รูปร่างถูกสร้างขึ้นแยกกันโดยใช้คลาส [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) จากนั้นเพิ่มในออบเจ็กต์ [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) โดยใช้วิธี [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีเพิ่ม group shape ลงในเอกสาร Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

ด้านล่างนี้คือ `Shape` บางประเภทที่รองรับใน Aspose.Words สำหรับรายการทั้งหมด โปรดดูการแจงนับ [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/)

- [Rectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#rectangle)
- [RoundRectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#round_rectangle)
- [Ellipse](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#ellipse)
- [Diamond](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diamond)
- [Triangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#triangle)
- [RightTriangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#right_triangle)
- [Parallelogram](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#parallelogram)
- [Trapezoid](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#trapezoid)
- [Hexagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#hexagon)
- [Octagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#octagon)

{{% /alert %}}
