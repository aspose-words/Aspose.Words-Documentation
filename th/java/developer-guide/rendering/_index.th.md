---
title: แสดงใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: การแสดงผล
linktitle: การแสดงผล
description: "ใช้ Aspose.Words สําหรับ Java คุณสมบัติการแสดงผลเพื่อฟอร์แมตเอกสารแบบ flow- left เป็นหน้าและแปลงเอกสารดังกล่าว หรือหน้าเว็บที่เลือกเป็นเอกสารอื่น (PDF, HTML) XPS, ฯลฯ หรือภาพ (TIFF, PNG, SVG ฯลฯ) สําหรับการแสดง, การแปลงภาพ, หรือการพิมพ์"
type: docs
weight: 30
url: /th/java/rendering/
---

เราใช้คําว่า "ส่ง" ใน Aspose.Words เพื่ออธิบายกระบวนการการแปลงเอกสารเป็นรูปแบบแฟ้ม หรือสื่อที่ถูกดัดแปลง หรือมีแนวคิดของหน้าต่าง ๆ เรากําลังพูดถึงการแปลเอกสารเป็นหน้ากระดาษ แผนภูมิต่อไปนี้แสดงการแปลใน Aspose.Words.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

ลักษณะการแสดงของ Aspose.Words เปิดใช้งานต่อไปนี้:

- แปลงเอกสารหรือหน้าที่เลือกไว้เป็น PDF XPS, HTML, XAML, โพสต์สคริปต์, และรูปแบบ PCL
- แปลงเอกสารเป็นเอกสาร TIFF หรือแปลงหน้าใด ๆ เป็นอิมเมจราสเตอร์ และบันทึกเป็น BMP, PNG หรือ JPEG
- แปลงหน้าเอกสารเป็นภาพกราฟิกของ Akregator แบบ Schalable (SVG) หรือแปลงเป็นภาพเวกเตอร์ และบันทึกเป็น EMF.
- วาด (วาด) หน้าเอกสารที่มีขนาดหรือขนาดเฉพาะบน `Graphics` วัตถุในการสร้างภาพตัวอย่าง, ขนาดเต็มหรือปรับขนาดภาพจากหน้าเอกสาร
- ให้ [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) ออบเจ็กต์ที่แยกออกจากเอกสารเป็นรูปแบบรูปภาพหรือรูปแบบใด ๆ `Graphics` วัตถุ
- แสดงหน้าใด ๆ ของเอกสารในส่วนแกว่ง
- พิมพ์หรือแสดงตัวอย่างหน้าเอกสารโดยใช้มาตรฐาน Java พิมพ์โครงสร้างพื้นฐาน

## แปรงทาสี รูปแบบเอกสาร {#flow-layout-or-fixed-layout-document-formats}

รูปแบบเอกสารส่วนใหญ่ที่สามารถเรียกใช้ได้ Aspose.Words เป็น ที่ รู้ จัก กัน ว่า "แบบ แปลน น้ํา ไหล " รูปแบบ flow- Layout รวมถึง DOC, OOXML, RTF, ODT และ HTML เอกสาร ใน รูป แบบ เหล่า นี้ ประกอบ ด้วย ธาตุ ต่าง ๆ เช่น วรรค, ตาราง, หัว ม้า, รูป ปั้น, สนาม, และ รูป แบบ ต่าง ๆ เช่น ตัว อักษร, ตัว อักษร, ตัว อักษร, ขนาด. อย่างไรก็ตาม รูปแบบการไล่ระดับสี ไม่มีส่วนข้อมูลเกี่ยวกับตําแหน่ง ที่แต่ละย่อหน้าหรือตัวอักษรแต่ละตัวจะแสดงบนหน้าใดหน้าหนึ่ง

ในทางตรงกันข้าม, รูปแบบการ "แก้ไข- left" (หรือรู้จักในชื่อ "หน้าที่แนบมา") เช่น PDF และ XPS บรรจุข้อมูลตําแหน่งที่แน่นอน สําหรับองค์ประกอบทั้งหมดของเอกสาร รูป แบบ เหล่า นี้ คง ไว้ ซึ่ง การ ปรากฏ ตัว เดิม ของ เอกสาร หลัง จาก วาง เอกสาร ลง ใน หน้า ต่าง ๆ แล้ว ทํา ให้ ข้อมูล ที่ ได้ รับ การ แสดง นั้น แม่นยํา ยิ่ง ขึ้น.

## กลไกการจัดวางหน้ากระดาษ {#page-layout-engine}

Aspose.Words ใช้กลไกการจัดวางหน้ากระดาษของมันเอง เพื่อฟอร์แมตเอกสารแบบ flow-Layout เป็นหน้า Aspose.Words ใช้ตัวแปลหลายตัวเพื่อสร้างเอกสารแบบคงที่ เช่น PDF หรือ XPS, หรือแสดงหน้าสื่ออื่น เช่น พิมพ์หรือวาด ข้อควรจําการส่งออกนี้ สามารถนํามาใช้กับ HTML และ XAML ได้เช่นกัน นี่หมายความว่า เอกสารสามารถถูกบันทึกเป็นเอกสารแบบ HTML หรือ XAML (รูปแบบข้อความ) หรือ "เขียน" แบบ HTML และ XAML ที่มีคุณสมบัติเฉพาะของธาตุ

ข้อดีที่สําคัญที่สุดของการใช้ Aspose.Words เครื่องยนต์ผังหน้ากระดาษ คือ มันเลียนแบบวิธี Microsoft Wordเครื่อง ยนต์ แบบ หน้า หนึ่ง ใช้ ได้ ผล. ดังนั้นเมื่อคุณแปลง Microsoft Word เอกสารเข้าเอกสาร PDF XPS, หรือพิมพ์โดยใช้ Aspose.Wordsการแสดงผลจะปรากฏเกือบจะเป็นถ้ามันทําโดย Microsoft Word. สังเกตว่า Aspose.Words ไม่ใช้ Microsoft Word.