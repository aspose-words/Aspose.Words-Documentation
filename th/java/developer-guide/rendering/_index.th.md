﻿---
title: การแสดงผลในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การแสดงผล
linktitle: การแสดงผล
description: "ใช้Aspose.WordsสำหรับJavaคุณลักษณะการแสดงผลเพื่อจัดรูปแบบเอกสารโครงร่างโฟลวลงในหน้าและแป(PDF, HTML, XPS, ฯลฯ)หรือภาพ(TIFF, PNG, SVG, ฯลฯ)รูปแบบสำหรับการดูการแปลงเพิ่มเติมหรือการพิมพ์."
type: docs
weight: 30
url: /th/java/rendering/
timestamp: 2024-01-27-14-07-04
---

เราใช้คำว่า"การแสดงผล"ในAspose.Wordsเพื่ออธิบายกระบวนการแปลงเอกสารให้เป็นรูปแบบไฟล์หรือ เรากำลังพูดถึงการแสดงผลของเอกสารลงในหน้า แผนภาพต่อไปนี้แสดงว่าการแสดงผลใดอยู่ในAspose.Words.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

คุณลักษณะการแสดงผลของAspose.Wordsช่วยให้คุณสามารถดำเนินการต่อไปนี้:

- แปลงเอกสารหรือเพจที่เลือกเป็นPDF, XPS, HTML, XAML, PostScript, และPCLรูปแบบ.
- แปลงเอกสารเป็นเอกสารหลายหน้าTIFFหรือแปลงหน้าใดๆเป็นภาพแรสเตอร์และบันทึกเป็นBMP,PNGหรือJPEG.
- แปลงหน้าเอกสารเป็นภาพกราฟิกแบบเวกเตอร์ที่สามารถปรับขนาดได้(SVG)หรือแปลงเป็นภาพเวกเตอร์และบันทึกเป็นEMF.
- แสดง(วาด)หน้าเอกสารที่มีขนาดเฉพาะหรือขนาดบนวัตถุ`Graphics`เพื่อสร้างภาพขนาดย่อ,ภาพขนาดเต็.
- แสดงผลออบเจกต์[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)แยกต่างหากจากเอกสารไปยังรูปแบบรูปภาพใดๆหรือไปยังออบเจกต์`Graphics`.
- แสดงหน้าใดๆของเอกสารในส่วนประกอบสวิง.
- พิมพ์หรือดูตัวอย่างหน้าเอกสารโดยใช้โครงสร้างพื้นฐานการพิมพ์มาตรฐานJava.

## รูปแบบการไหลหรือรูปแบบเอกสารเค้าโครงคงที่ {#flow-layout-or-fixed-layout-document-formats}

ส่วนใหญ่ของรูปแบบเอกสารที่สามารถโหลดลงในAspose.Wordsจะเรียกว่ารูปแบบ"โครงร่างการไหล" รูปแบบเค้าโครงไหลรวมถึงDOC, OOXML, RTF, ODT, และHTML เอกสารในรูปแบบเหล่านี้ประกอบด้วยองค์ประกอบต่างๆเช่นย่อหน้า,ตาราง,ส่วนหัว,ท้ายกระดาษ,ภาพ,ฟิลด์,และการจัดรูปแบบของพวกเขาเช่นตัวหนา,ตัวเอียง,แบบอักษร,ขนาด น่งที่แต่ละย่อหน้าหรืออักขระใดย่อหน้าหนึ่งแสดงบนเพจ.

ในทางตรงกันข้ามรูปแบบ"เค้าโครงคงที่"(หรือที่เรียกว่า"หน้าคงที่")เช่นPDFและXPSประกอบด้วยข้อมูล รูปแบบเหล่านี้จะรักษาลักษณะเดิมของเอกสารหลังจากที่มันถูกวางลงในหน้าให้ความแม่นย.

## เครื่องยนต์เค้าโครงหน้า {#page-layout-engine}

Aspose.Wordsใช้โปรแกรมโครงร่างของหน้าของตัวเองที่จัดรูปแบบเอกสารโครงร่างโฟลวลงในหน้า Aspose.Wordsใช้จำนวนการแสดงผลที่สร้างเอกสารเค้าโครงแบบคงที่เช่นPDFหรือXPSหรือหน้าผลลัพธ์เป็นสื่ โปรดทราบว่าการส่งออกสามารถแบ่งหน้าสำหรับHTMLและXAML ซึ่งหมายความว่าเอกสารสามารถบันทึกเป็นปกติHTMLหรือXAML(รูปแบบเค้าโครงโฟลว)หรือเป็น"หน้า"HTMLและXAML.

ข้อได้เปรียบที่สำคัญที่สุดของการใช้เครื่องยนต์เค้าโครงหน้าAspose.Wordsคือการเลียนแบบวิธีการทำงานของเครื่องยนต์เค้าโครงหน้าMicrosoft Word ดังนั้นเมื่อคุณแปลงเอกสารMicrosoft Wordเป็นPDF,XPSหรือพิมพ์โดยใช้Aspose.Wordsผลลัพธ์จะปรากฏเกือบจะเหมือนกับว่าทำโดยMicrosoft Word โปรดทราบว่าAspose.Wordsไม่ได้ใช้Microsoft Word.
