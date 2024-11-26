---
title: แปลงเอกสารเป็น PDF ใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: แปลงเอกสารเป็น PDF
linktitle: แปลงเอกสารเป็น PDF
description: "แปลงเอกสารเป็น PDF โดยใช้ Python รองรับรูปแบบการป้อนข้อมูลที่หลากหลาย รวมถึงรูปแบบ Word, OpenOffice, รูปภาพ และ eBook"
type: docs
weight: 10
url: /th/python-net/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

ความสามารถในการแปลงเอกสารจากรูปแบบหนึ่งไปเป็นอีกรูปแบบหนึ่งได้อย่างง่ายดายและเชื่อถือได้คือคุณสมบัติหลักของ Aspose.Words รูปแบบการแปลงที่ได้รับความนิยมมากที่สุดรูปแบบหนึ่งคือ PDF ซึ่งเป็นรูปแบบเค้าโครงคงที่ ซึ่งคงรูปลักษณ์ดั้งเดิมของเอกสารในระหว่างการเรนเดอร์บนแพลตฟอร์มต่างๆ คำว่า "การแสดงผล" ใช้ใน Aspose.Words เพื่ออธิบายกระบวนการแปลงเอกสารเป็นรูปแบบไฟล์ที่มีการแบ่งหน้าหรือมีแนวคิดเรื่องหน้า

## แปลงเอกสาร Word เป็น PDF {#convert-a-word-document-to-pdf}

การแปลงจาก Word เป็น PDF เป็นกระบวนการที่ค่อนข้างซับซ้อนซึ่งต้องใช้การคำนวณหลายขั้นตอน โปรแกรมเค้าโครง Aspose.Words เลียนแบบวิธีการทำงานของกลไกเค้าโครงหน้าของ Microsoft Word ทำให้เอกสารเอาต์พุต PDF ดูใกล้เคียงกับสิ่งที่คุณเห็นใน Microsoft Word มากที่สุด

ด้วย Aspose.Words คุณสามารถแปลงเอกสารจากรูปแบบ Word เช่น DOC หรือ DOCX เป็น PDF โดยทางโปรแกรมโดยไม่ต้องใช้ Microsoft Office บทความนี้จะอธิบายวิธีการแปลงนี้

{{% alert color="primary" %}}

โปรดทราบว่าจำนวนหน้าในเอกสารส่งผลต่อเวลาในการแปลง

{{% /alert %}}

### แปลง DOC หรือ DOCX เป็น PDF {#convert-doc-or-docx-to-pdf}

การแปลงจากรูปแบบเอกสาร DOC หรือ DOCX เป็นรูปแบบ PDF ใน Aspose.Words นั้นง่ายมาก และสามารถทำได้โดยใช้โค้ดเพียงสองบรรทัดที่:

1. โหลดเอกสารของคุณลงในออบเจ็กต์ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) โดยใช้ตัวสร้างตัวใดตัวหนึ่งโดยระบุชื่อเอกสารพร้อมนามสกุลของรูปแบบ
1. เรียกใช้หนึ่งในวิธี [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) บนออบเจ็กต์ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) และระบุรูปแบบเอาต์พุตที่ต้องการเป็น PDF โดยการป้อนชื่อไฟล์ที่มีนามสกุล ".PDF"

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีแปลงเอกสารจาก DOCX เป็น PDF โดยใช้วิธี [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)

{{% alert color="primary" %}}

บางครั้งจำเป็นต้องระบุตัวเลือกเพิ่มเติมซึ่งอาจส่งผลต่อผลลัพธ์ของการบันทึกเอกสารเป็น PDF ตัวเลือกเหล่านี้สามารถระบุได้โดยใช้คลาส [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) ซึ่งมีคุณสมบัติที่กำหนดวิธีการแสดงเอาต์พุต PDF

โปรดทราบว่าด้วยเทคนิคเดียวกัน คุณสามารถแปลงเอกสารรูปแบบโฟลว์เลย์เอาต์เป็นรูปแบบ PDF ได้

{{% /alert %}}

### แปลงเป็น PDF มาตรฐาน {#convert-to-various-pdf-standards} ต่างๆ

Aspose.Words จัดเตรียมการแจงนับ [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) เพื่อรองรับการแปลง DOC หรือ DOCX ไปเป็นมาตรฐานรูปแบบ PDF ต่างๆ (เช่น PDF 1.7, PDF 1.5 เป็นต้น)

ตัวอย่างโค้ดต่อไปนี้สาธิตวิธีการแปลงเอกสารเป็น PDF 1.7 โดยใช้ [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) โดยสอดคล้องกับ [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## แปลงรูปภาพเป็น PDF

การแปลงเป็น PDF ไม่ได้ถูกจำกัดด้วยรูปแบบเอกสาร Microsoft Word รูปแบบใดๆ ที่สนับสนุนโดย Aspose.Words รวมถึงที่สร้างขึ้นโดยทางโปรแกรมก็สามารถแปลงเป็น PDF ได้เช่นกัน ตัวอย่างเช่น เราสามารถแปลงรูปภาพหน้าเดียว เช่น JPEG, PNG, BMP, EMF หรือ WMF รวมถึงรูปภาพหลายหน้า เช่น TIFF และ GIF เป็น PDF

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแปลงรูปภาพ JPEG และ TIFF เป็น PDF:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

เพื่อให้โค้ดนี้ใช้งานได้ คุณต้องเพิ่มการอ้างอิงถึง Aspose.Words และ `aspose.pydrawing` ให้กับโปรเจ็กต์ของคุณ

## ลดขนาดเอาต์พุต PDF

เมื่อบันทึกเป็น PDF คุณสามารถระบุว่าคุณต้องการปรับผลลัพธ์ให้เหมาะสมหรือไม่ ในการดำเนินการนี้ คุณต้องตั้งค่าสถานะ [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) เป็น true จากนั้นระบบจะลบแคนวาสที่ซ้อนกันและแคนวาสเปล่าที่ซ้ำซ้อนออก ส่วน glyph เพื่อนบ้านที่มีการจัดรูปแบบเดียวกันจะถูกต่อเข้าด้วยกัน

{{% alert color="primary" %}}

การใช้คุณสมบัติ **OptimizeOutput** อาจส่งผลต่อความถูกต้องของการแสดงเนื้อหา

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## ลดขนาดเอาต์พุต PDF

เมื่อบันทึกเป็น PDF คุณสามารถระบุว่าคุณต้องการปรับผลลัพธ์ให้เหมาะสมหรือไม่ ในการดำเนินการนี้ คุณต้องตั้งค่าสถานะ [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) เป็น true จากนั้นระบบจะลบแคนวาสที่ซ้อนกันและแคนวาสเปล่าที่ซ้ำซ้อนออก ส่วน glyph เพื่อนบ้านที่มีการจัดรูปแบบเดียวกันจะถูกต่อเข้าด้วยกัน

{{% alert color="primary" %}}

การใช้คุณสมบัติ **OptimizeOutput** อาจส่งผลต่อความถูกต้องของการแสดงเนื้อหา

{{% /alert %}}

## ดูสิ่งนี้ด้วย

- บทความ [กำลังแสดงผล](/words/th/python-net/rendering/) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับรูปแบบหน้าคงที่และรูปแบบโฟลว์เลย์เอาต์
- บทความ [การแปลงเป็นรูปแบบหน้าตายตัว](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับเค้าโครงหน้า
- บทความ [ระบุตัวเลือกการเรนเดอร์เมื่อแปลงเป็น PDF](/words/th/python-net/specify-rendering-options-when-converting-to-pdf/) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับการใช้คลาส [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/)
