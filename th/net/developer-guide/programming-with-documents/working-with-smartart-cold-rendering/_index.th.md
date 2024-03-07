---
title: การทำงานกับ SmartArt Cold Rendering ใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับ SmartArt Cold Rendering
linktitle: การทำงานกับ SmartArt Cold Rendering
description: "ข้อมูลเบื้องต้นเกี่ยวกับรูปร่าง SmartArt โดยใช้ C#"
type: docs
description: "Aspose.Words สำหรับ .NET ดำเนินการ SmartArt Cold Rendering ซึ่งหมายความว่าจะจัดวางและเรนเดอร์วัตถุ SmartArt หากภาพวาด SmartArt ที่แสดงผลล่วงหน้าหายไปหรือไม่ถูกต้องโดยใช้ C#"
weight: 330
url: /th/net/working-with-smartart-cold-rendering/
---

กราฟิก SmartArt ใช้เพื่อสร้างการแสดงข้อมูลด้วยภาพอย่างรวดเร็วและง่ายดาย คุณเพียงแค่เลือกจากเค้าโครงจำนวนมากที่เหมาะกับสถานการณ์ของคุณมากที่สุด ความสะดวกในการใช้งานนี้ทำให้กราฟิก SmartArt ค่อนข้างเป็นที่นิยมสำหรับวัตถุประสงค์บางประการ

Microsoft Word จะสร้างและบันทึกภาพวาดที่แสดงผลล่วงหน้าพร้อมกับออบเจ็กต์ `SmartArt` ในกรณีส่วนใหญ่ ภาพวาดที่แสดงผลล่วงหน้าจะแสดงผลได้ดีโดย Aspose.Words และไม่จำเป็นต้องดำเนินการใดๆ เพิ่มเติม อย่างไรก็ตาม หากแอปพลิเคชันอื่นบันทึกเอกสาร ภาพวาด SmartArt ที่แสดงผลล่วงหน้าอาจหายไปหรือไม่ถูกต้อง ในกรณีนี้ อ็อบเจ็กต์ `SmartArt` ควรถูกจัดวางและเรนเดอร์โดยใช้ Aspose.Words เราเรียกกระบวนการนี้ว่า `SmartArt` Cold Rendering

## การใช้ SmartArt Cold Rendering

Aspose.Words อนุญาตให้คุณใช้ภาพวาดที่แสดงผลล่วงหน้าหรือทำการเรนเดอร์แบบเย็น:

* หากมีภาพวาดที่แสดงผลล่วงหน้า Aspose.Words จะใช้ภาพวาดนั้นเพื่อแสดงออบเจ็กต์ `SmartArt`
* หากภาพวาดที่แสดงผลล่วงหน้าหายไป Aspose.Words จะดำเนินการเรนเดอร์แบบเย็นโดยปริยายเพื่อเรนเดอร์ออบเจ็กต์ `SmartArt`
* หากมีภาพวาดที่แสดงผลล่วงหน้าแต่ไม่ถูกต้อง จะต้องทำการเรนเดอร์ SmartArt แบบเย็นอย่างชัดเจนโดยการเรียกวิธี [UpdateSmartArtDrawing](https://reference.aspose.com/words/net/aspose.words.drawing/shape/updatesmartartdrawing/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีอัปเดตรูปวาดสำหรับไดอะแกรมทั้งหมดในเอกสาร:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cs" >}}

## รองรับเค้าโครง SmartArt มาตรฐาน

ในปัจจุบัน รองรับเค้าโครง Microsoft Word SmartArt มาตรฐานในจำนวนจำกัดเท่านั้น นอกจากนี้ โครงร่างเหล่านี้บางส่วนได้รับการรองรับบางส่วน ซึ่งหมายความว่าโหนดและรูปร่างที่สำคัญของไดอะแกรมถูกเรนเดอร์ แต่อาจมีความแตกต่างระหว่างโครงร่างไดอะแกรม Microsoft Word และ Aspose.Words

ตารางด้านล่างแสดงรายการเค้าโครงที่รองรับทั้งหมดและบางส่วน:

|  เค้าโครง SmartArt Group |  รูปแบบที่รองรับอย่างเต็มที่ |  รูปแบบที่รองรับบางส่วน |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>รายการบล็อกพื้นฐาน</li><li>รูปหกเหลี่ยมสลับกัน</li><li>รายการสัญลักษณ์แสดงหัวข้อย่อยแนวตั้ง</li><li>รายการกล่องแนวตั้ง</li><li>รายการความกว้างที่แตกต่างกัน</li><li>รายการสัญลักษณ์แสดงหัวข้อย่อยแนวนอน</li><li>รายการ Grouped</li><li>รายการบล็อกแนวตั้ง</li><li>รายการเชฟรอนแนวตั้ง</li><li>รายการลูกศรแนวตั้ง</li><li>รายการรูปสี่เหลี่ยมคางหมู</li><li>รายการตาราง</li><li>รายการพีระมิด</li><li>รายการเป้าหมาย</li></ul> |  <ul><li>รายการเรียงแถว</li><li>รายการวงเล็บแนวตั้ง</li><li>รายการแท็บ</li><li>รายการซ้อนกัน</li><li>รายการสำเนียงแนวตั้ง</li><li>รายการวงกลมแนวตั้ง</li></ul> |
|  `Process`  |  <ul><li>กระบวนการพื้นฐาน</li><li>กระบวนการเน้นเสียง</li><li>กระบวนการบล็อกอย่างต่อเนื่อง</li><li>การเพิ่มกระบวนการลูกศร</li><li>การรวมข้อความ</li><li>ไทม์ไลน์พื้นฐาน</li><li>กระบวนการเชฟรอนขั้นพื้นฐาน</li><li>กระบวนการสำเนียงเชฟรอน</li><li>กระบวนการเชฟรอนแบบปิด</li><li>รายการเชฟรอน</li><li>กระบวนการแนวตั้ง</li><li>กระบวนการเซ</li><li>รายการกระบวนการ</li><li>กระบวนการดัดขั้นพื้นฐาน</li><li>ทำซ้ำกระบวนการดัด</li><li>กระบวนการโดยละเอียด</li><li>ลูกศรขึ้น</li><li>กระบวนการจากมากไปน้อย</li><li>กระบวนการดัดแบบวงกลม</li></ul> |  <ul><li>ก้าวขึ้นกระบวนการ</li><li>ขั้นตอนลงกระบวนการ</li><li>กระแสสลับ</li><li>กระบวนการวงกลมที่เพิ่มขึ้น</li><li>กระบวนการพาย</li><li>กระบวนการบล็อกที่เชื่อมต่อถึงกัน</li><li>ลูกศรกระบวนการ</li><li>เส้นเวลาสำเนียงวงกลม</li><li>กระบวนการวงกลม</li><li>กระบวนการขั้นตอนย่อย</li><li>กระบวนการแบบค่อยเป็นค่อยไป</li><li>สุ่มไปสู่กระบวนการผลลัพธ์</li><li>กระบวนการลูกศรวงกลม</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>วงจรแบบแบ่งส่วน</li><li>รัศมีหกเหลี่ยม</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>ลำดับชั้นของตาราง</li><li>เค้าโครงสถาปัตยกรรม</li></ul> |
|  `Relationship`  |  <ul><li>สมดุล</li><li>ช่องทาง</li><li>เกียร์</li><li>บวกและลบ</li><li>ลูกศรริบบิ้น</li><li>ลูกศรถ่วงดุล</li><li>ลูกศรฝ่ายตรงข้าม</li><li>เป้าหมายที่ซ้อนกัน</li><li>เป้าหมายพื้นฐาน</li><li>พายพื้นฐาน</li><li>เวนน์ขั้นพื้นฐาน</li><li>เวนน์ซ้อนกัน</li><li>แหวนที่เชื่อมต่อถึงกัน</li></ul> |  <ul><li>ความสัมพันธ์แบบวงกลม</li><li>ความคิดที่ขัดแย้งกัน</li><li>สมการ</li><li>สมการแนวตั้ง</li><li>ลิเนียร์เวนน์</li></ul> |
|  `Matrix`  |  <ul><li>เมทริกซ์พื้นฐาน</li><li>ชื่อเมทริกซ์</li><li>กริดเมทริกซ์</li><li>วงจรเมทริกซ์</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>พีระมิดแบบแบ่งส่วน</li></ul> |

## การเปรียบเทียบการเรนเดอร์ SmartArt ใน Aspose.Words และ Microsoft

ตารางด้านล่างแสดงรูปภาพตัวอย่าง Aspose.Words Cold Rendering ของเลย์เอาต์มาตรฐานบางเลย์เอาต์เมื่อเปรียบเทียบกับเอาต์พุต Microsoft Word:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/> |
|   **Circular Bending Process**   |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="Circular_bending_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="วงกลม_ดัด_กระบวนการ_คำ"/> |
|   **Repeating Bending Process**  |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
|   **Trapezoid List**             |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="สี่เหลี่ยมคางหมู_list_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="สี่เหลี่ยมคางหมู_รายการ_คำ"/> |
