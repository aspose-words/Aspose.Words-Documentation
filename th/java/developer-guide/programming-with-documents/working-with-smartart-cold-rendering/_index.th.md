---
title: ทํางานกับสมาร์ท Art Cooling in Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับสมาร์ท เคลือบ ด้วย ความ เย็น
linktitle: ทํางานกับสมาร์ท เคลือบ ด้วย ความ เย็น
type: docs
description: "Aspose.Words สําหรับ Java แสดงแบบฉลาด Art Cold tranting หมายความว่ามันวางออกและแปลวัตถุอัจฉริยะศิลปะ ถ้าภาพเขียนของสมาร์ทอาร์ทที่ไว้ก่อนนั้นหายไปหรือไม่ถูกต้อง"
weight: 330
url: /th/java/working-with-smartart-cold-rendering/
---

กราฟฟิกแบบฉลาดถูกใช้อย่างรวดเร็ว และง่ายต่อการสร้างภาพของข้อมูล คุณ เพียง แต่ เลือก จาก ผัง บ้าน จํานวน มาก ที่ เหมาะ กับ สภาพ การณ์ ของ คุณ. การ ใช้ แบบ ง่าย ๆ นี้ ทํา ให้ กราฟฟิก แบบ สมาร์ท อาร์ต เป็น ที่ นิยม กัน ใน บาง ด้าน.

Microsoft Word สร้างและบันทึกภาพวาดก่อนเรียนร่วมกับ `SmartArt` วัตถุ ในกรณีส่วนใหญ่ ภาพเขียนก่อนการทบทวนนั้นแปลได้ดีโดย Aspose.Words และ ไม่ มี ข้อ เรียก ร้อง เพิ่ม เติม. อย่างไรก็ตาม หากเอกสารถูกบันทึกโดยโปรแกรมอื่น ๆ การวาดแบบฉลาดก่อนถูกแก้ไขอาจจะหายไปหรือไม่ถูกต้อง ในกรณีนี้ `SmartArt` ออบเจกต์เองควรจะถูกวางและแปลเองโดยใช้ Aspose.Words. เราเรียกกระบวนการนี้ว่า `SmartArt` แช่แข็ง

## ใช้สมาร์ท เคลือบ ด้วย ความ เย็น

Aspose.Words ให้คุณได้ใช้ภาพวาดแบบก่อนเขียน หรือทําการแสดงผลแบบเย็น:

* ถ้าภาพเขียนก่อนแต่งใช้ได้ Aspose.Words ใช้มันเพื่อทําให้ `SmartArt` วัตถุ
* ถ้าภาพเขียนก่อนหน้านี้หายไป Aspose.Words โดยนัยแล้วทําให้การแสดงผลเย็นเพื่อทําให้ `SmartArt` วัตถุ
* หากมีการเขียนก่อนการตกแต่งอยู่ แต่ไม่ถูกต้อง, มันจําเป็นต้องดําเนินการแสดงสมาร์ทศิลปะ เย็นการแสดงผลอย่างชัดเจน โดยการเรียก [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) วิธี

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีปรับปรุงภาพสําหรับทุกแผนภาพในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## การรองรับผังแป้นพิมพ์แบบมาตรฐาน

ปัจจุบัน มี จํานวน มาตรฐาน จํากัด Microsoft Word ผังแป้นพิมพ์แบบฉลาดได้รับการรองรับ นอกจากนี้ แผนผังบางอันยังรองรับบางส่วน ซึ่งหมายความว่า โหนกและรูปร่างที่สําคัญของแผนภาพ แต่อาจจะแตกต่างกัน Microsoft Word ถึง Aspose.Words แผนผังภาพ

ตารางด้านล่างนี้มีรายการผังแป้นพิมพ์ที่รองรับอย่างเต็มที่และบางส่วน:

|  ฉลาด การจัดวางงานศิลป์ Group |  การจัดวางที่รองรับอย่างเต็มที่ |  ผังแป้นพิมพ์ที่รองรับบางส่วน |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>รายการบล็อกพื้นฐาน</li><li>อัลกอริอะฮ์</li><li>รายการกระสุนทางแนวตั้ง</li><li>รายการกล่องทางแนวตั้ง</li><li>เรียกดูรายการที่</li><li>รายการกระสุนทางแนวนอน</li><li>Groupรายการ</li><li>รายการบล็อกทางแนวตั้ง</li><li>รายการสีทางแนวตั้ง</li><li>รายการลูกศรทางแนวตั้ง</li><li>รายการจิรต</li><li>รายการตาราง</li><li>รายการภาพไอคอนสื่ออารมณ์</li><li>รายการเป้าหมาย</li></ul> |  <ul><li>รายการบรรทัด</li><li>รายการวงเล็บทางแนวตั้ง</li><li>รายการแท็บ</li><li>รายการที่บรรจุอยู่</li><li>รายการในแนวตั้ง</li><li>รายการวงกลมทางแนวตั้ง</li></ul> |
|  `Process`  |  <ul><li>โพรเซสพื้นฐาน</li><li>โพรเซสของ Acent</li><li>โพรเซสแบบต่อเนื่อง</li><li>เพิ่มโพรเซสของลูกศร</li><li>แก้ไขโครงการหลัก...</li><li>เส้นเวลาพื้นฐาน</li><li>โพรเซสของเชฟรอนพื้นฐาน</li><li>โพรเซสของเชฟรอน</li><li>ปิดโพรเซสของเชฟรอน</li><li>รายการของเชฟรอน</li><li>โพรเซสทางแนวตั้ง</li><li>โพรเซสตัวแบ่ง</li><li>รายการโพรเซส</li><li>โพรเซสเบนดิงพื้นฐาน</li><li>ทําซ้ําโพรเซสเบนดิง</li><li>โพรเซสที่มีรายละเอียด</li><li>ลูกศรกลับหน้า</li><li>การส่งโพรเซส</li><li>โพรเซสเบนดิง</li></ul> |  <ul><li>โพรเซสที่เพิ่มขึ้น</li><li>โพรเซสลดระดับ</li><li>การปรับสีให้ค่อย ๆ ชัดขึ้น</li><li>โพรเซสแบบวงกลมที่เพิ่มขึ้น</li><li>โพรเซสพาย</li><li>โพรเซสแบบบล็อกเชื่อมต่อแล้ว</li><li>ลูกศรโพรเซส</li><li>เส้นเวลาแบบวงกลม</li><li>โพรเซสแบบวงกลม</li><li>โพรเซสย่อย</li><li>โพรเซสที่มีระยะ</li><li>สุ่มผลลัพธ์ของโพรเซส</li><li>โพรเซสแบบวงกลม</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>ไซโคลนแบบแยกส่วน</li><li>เรเดียน</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>ลําดับชั้นของตาราง</li><li>การจัดวางหน้ากระดาษ</li></ul> |
|  `Relationship`  |  <ul><li>สมดุล</li><li>Funnel</li><li>ตัวเลข</li><li>บวกกับลบ</li><li>แถบชุดลวดลายStencils</li><li>ลูกศรทวนเข็มนาฬิกา</li><li>การ ต่อ สู้</li><li>เป้าหมายที่ตั้งอยู่</li><li>เป้าหมายพื้นฐาน</li><li>สูตรพื้นฐาน</li><li>เวนน์พื้นฐาน</li><li>เวนน์ที่ถูกเสียบ</li><li>วงแหวนเชื่อมต่อแล้ว</li></ul> |  <ul><li>ความสัมพันธ์แบบวงกลม</li><li>การ คัดค้าน แนว คิด</li><li>การจัดอันดับ</li><li>ความเปรียบต่างทางแนวตั้ง</li><li>ไลน์ลาร์เวนน์</li></ul> |
|  `Matrix`  |  <ul><li>เมทริกซ์พื้นฐาน</li><li>เมทริกซ์ชื่อเรื่อง</li><li>เมทริกซ์กริด</li><li>วงจรเมตริกซ์</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>พีระมิดแบบแยกประเภท</li></ul> |

## เปรียบเทียบศิลปะอัจฉริยะใน Aspose.Words ถึง Microsoft

ตารางด้านล่างนี้แสดงรูปภาพตัวอย่างของ Aspose.Words เย็น แสดงผังแป้นพิมพ์มาตรฐานบางอย่างเมื่อเทียบกับ Microsoft Word การแสดงผล:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/>  |
|   **Circular Bending Process**   |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/>  |
|   **Repeating Bending Process**  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/>  |
|   **Trapezoid List**             |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/>  |
