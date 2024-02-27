---
title: ผสานเซลล์ตาราง
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ผสานเซลล์ตาราง
linktitle: ผสานเซลล์ตาราง
description: "วิธีผสานเซลล์ตารางใน Python ตรวจสอบว่าเซลล์ในตารางผสานโดยใช้ Python หรือไม่"
type: docs
weight: 40
url: /th/python-net/working-with-merged-cells/
---

บางครั้งบางแถวในตารางจำเป็นต้องมีส่วนหัวหรือบล็อกข้อความขนาดใหญ่ที่ใช้ความกว้างเต็มตาราง เพื่อการออกแบบตารางที่เหมาะสม ผู้ใช้สามารถรวมเซลล์ตารางหลายเซลล์ให้เป็นเซลล์เดียวได้ Aspose.Words รองรับเซลล์ที่ผสานเมื่อทำงานกับรูปแบบอินพุตทั้งหมด รวมถึงการนำเข้าเนื้อหา HTML

## วิธีผสานเซลล์ตาราง

ใน Aspose.Words เซลล์ที่ผสานจะแสดงด้วยคุณสมบัติของคลาส [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) ต่อไปนี้:

- [HorizontalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/horizontal_merge/) ซึ่งอธิบายว่าเซลล์เป็นส่วนหนึ่งของการผสานเซลล์ในแนวนอนหรือไม่
- [VerticalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/vertical_merge/) ซึ่งอธิบายว่าเซลล์เป็นส่วนหนึ่งของการผสานเซลล์ในแนวตั้งหรือไม่

ค่าของคุณสมบัติเหล่านี้จะกำหนดพฤติกรรมการผสานของเซลล์:

- เซลล์แรกในลำดับของเซลล์ที่ผสานจะมี [CellMerge.First](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#first)
- เซลล์ที่รวมเข้าด้วยกันในเวลาต่อมาจะมี [CellMerge.Previous](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#previous)
- เซลล์ที่ไม่ถูกผสานจะมี [CellMerge.None](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#none)

{{% alert color="primary" %}}

บางครั้งเมื่อโหลดเซลล์เอกสารที่มีอยู่ในตาราง เซลล์เหล่านั้นจะปรากฏเป็นผสานกัน อย่างไรก็ตาม จริงๆ แล้วอาจเป็นเซลล์ยาวเซลล์เดียวก็ได้ บางครั้ง Microsoft Word จะส่งออกเซลล์ที่ผสานด้วยวิธีนี้ สิ่งนี้อาจทำให้เกิดความสับสนเมื่อพยายามทำงานกับเซลล์แต่ละเซลล์ แต่ดูเหมือนว่าจะไม่มีรูปแบบเฉพาะเจาะจงว่าเหตุการณ์นี้จะเกิดขึ้นเมื่อใด

{{% /alert %}}

## ตรวจสอบว่าเซลล์ถูกผสานหรือไม่

หากต้องการตรวจสอบว่าเซลล์เป็นส่วนหนึ่งของลำดับของเซลล์ที่ผสานหรือไม่ เราเพียงตรวจสอบคุณสมบัติ **HorizontalMerge** และ **VerticalMerge**

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการพิมพ์ชนิดการผสานเซลล์แนวนอนและแนวตั้ง:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "check-cells-merged.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx)

{{% /alert %}}

## ผสานเซลล์ตารางเมื่อใช้ DocumentBuilder

หากต้องการผสานเซลล์ในตารางที่สร้างด้วย [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) คุณต้องตั้งค่าประเภทการผสานที่เหมาะสมสำหรับเซลล์แต่ละเซลล์ที่คาดว่าจะมีการผสาน - **CellMerge.First** แรกแล้วตามด้วย **CellMerge.Previous**

นอกจากนี้ คุณต้องไม่ลืมล้างการตั้งค่าการผสานสำหรับเซลล์ที่ไม่จำเป็นต้องผสาน ซึ่งสามารถทำได้โดยการตั้งค่าเซลล์แรกที่ยังไม่ผสานเป็น **CellMerge.None** หากยังไม่เสร็จสิ้น เซลล์ทั้งหมดในตารางจะถูกรวมเข้าด้วยกัน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีสร้างตารางที่มีสองแถวโดยที่เซลล์ในแถวแรกจะผสานกันในแนวนอน:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "horizontal-merge.py" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีสร้างตารางสองคอลัมน์โดยที่เซลล์ในคอลัมน์แรกถูกผสานในแนวตั้ง:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "vertical-merge.py" >}}

## รวมเซลล์ตารางในกรณีอื่นๆ

ในสถานการณ์อื่นๆ ที่ไม่ได้ใช้ **DocumentBuilder** เช่น ในตารางที่มีอยู่ การรวมเซลล์ด้วยวิธีก่อนหน้าอาจไม่ง่ายอย่างนั้น แต่เราสามารถสรุปการดำเนินการพื้นฐานที่เกี่ยวข้องกับการใช้คุณสมบัติผสานกับเซลล์ด้วยวิธีที่ทำให้งานง่ายขึ้นมาก วิธีการนี้จะคล้ายกับวิธีการผสานอัตโนมัติ ซึ่งเรียกว่าการผสานช่วงของเซลล์ในตาราง

โค้ดด้านล่างนี้จะรวมเซลล์ตารางในช่วงที่ระบุ โดยเริ่มต้นที่เซลล์ที่กำหนดและสิ้นสุดที่เซลล์สุดท้าย ในกรณีนี้ ช่วงสามารถขยายได้หลายแถวหรือคอลัมน์:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cells.py" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการผสานช่วงของเซลล์ระหว่างสองเซลล์ที่ระบุ:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cell-range.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx)

{{% /alert %}}

ขึ้นอยู่กับเวอร์ชันของ Framework ที่คุณใช้ คุณอาจต้องการปรับแต่งวิธีนี้โดยเปลี่ยนเป็นวิธีการขยาย ในกรณีนี้ คุณสามารถเรียกใช้เมธอดนี้ได้โดยตรงบนเซลล์เพื่อผสานช่วงของเซลล์ เช่น `cell1.Merge(cell2)`

## แปลงเป็นเซลล์ที่ผสานในแนวนอน

บางครั้งก็เป็นไปไม่ได้ที่จะตรวจสอบว่าเซลล์ใดถูกผสาน เนื่องจาก Microsoft Word เวอร์ชันใหม่บางเวอร์ชันไม่ใช้แฟล็กผสานอีกต่อไปเมื่อเซลล์ถูกผสานในแนวนอน แต่สำหรับสถานการณ์ที่เซลล์ถูกผสานเข้ากับเซลล์ในแนวนอนตามความกว้างโดยใช้แฟล็กผสาน Aspose.Words จัดเตรียมวิธี `ConvertToHorizontallyMergedCells` เพื่อแปลงเซลล์ วิธีนี้จะแปลงตารางและเพิ่มเซลล์ใหม่ตามต้องการ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการข้างต้นในการดำเนินการ:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "convert-to-horizontally-merged-cells.py" >}}
