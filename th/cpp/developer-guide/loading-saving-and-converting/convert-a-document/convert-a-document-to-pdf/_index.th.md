---
title: แปลงเอกสารเป็นPDFในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: แปลงเอกสารเป็นPDF
linktitle: แปลงเอกสารเป็นPDF
description: "แปลงเอกสารเป็นPDFโดยใช้C++ รูปแบบการป้อนข้อมูลต่างๆได้รับการสนับสนุนรวมทั้งคำOpenOfficeรูปภาพและรูปแบบeBook."
type: docs
weight: 10
url: /th/cpp/convert-a-document-to-pdf/
timestamp: 2024-10-21-08-52-03
---

ความสามารถในการแปลงเอกสารจากรูปแบบหนึ่งไปยังอีกรูปแบบหนึ่งได้อย่างง่ายดายและเชื่อถือได้คือคุณลักษณะสำคัญของAspose.Words หนึ่งในรูปแบบที่นิยมมากที่สุดสำหรับการแปลงคือPDF–รูปแบบคงที่เค้าโครงซึ่งจะรักษาลักษณะเดิมของเอกสารในระหว่างการแสดงผลบนแพลตฟอร์มต่างๆ คำว่า"การแสดงผล"ถูกใช้ในAspose.Wordsเพื่ออธิบายกระบวนการของการแปลงเอกสารเป็นรูปแบบแฟ้.

## แปลงเอกสารคำเป็นPDF{#convert-a-word-document-to-pdf}

แปลงจากคำเป็นPDFเป็นกระบวนการที่ค่อนข้างซับซ้อนที่ต้องใช้หลายขั้นตอนของการคำนวณ Aspose.Wordsเครื่องยนต์เค้าโครงเลียนแบบวิธีการทำงานของเครื่องยนต์เค้าโครงหน้าMicrosoft Wordทำให้เอกสารที่ส่งออกPDFดูใกล้เคียงที่สุดกับสิ่งที่คุณเห็นในMicrosoft Word.

ด้วยAspose.WordsคุณสามารถแปลงเอกสารจากDOCหรือDOCXรูปแบบเป็นPDFโดยไม่ต้องใช้สำนักงานMicrosoft บทความนี้อธิบายวิธีการดำเนินการแปลงนี้.

{{% alert color="primary" %}}

โปรดทราบว่าจำนวนหน้าในเอกสารมีผลต่อเวลาการแปลง.

{{% /alert %}}

### กำลังแปลงDOCXหรือDOCเป็นPDF{#converting-doc-or-docx-to-pdf}

การแปลงจากDOCหรือDOCXรูปแบบเอกสารลงในรูปแบบPDFในAspose.Wordsเป็นเรื่องง่ายมากและสามารถทำได้ด้วยรหัสสองบรรทัดที่:

1. ป้อนเอกสารของคุณลงในวัตถุ[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)โดยใช้หนึ่งในตัวสร้างโดยการระบุชื่อเอกสารที่มีนามสกุล.
1. เรียกหนึ่งในวิธีการ[Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)บนวัตถุ**Document**และระบุรูปแบบผลลัพธ์ที่ต้องการเป็นPDFโดยการป้อนชื่อไฟล์ด้วย"PDF"ส่วนขยาย.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแปลงเอกสารจากDOCXเป็นPDFโดยใช้วิธีการ`Save`:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

บางครั้งจำเป็นต้องระบุตัวเลือกเพิ่มเติมซึ่งอาจส่งผลต่อผลลัพธ์ของการบันทึกเอกสารเป็นPDF อ็อพชันนี้สามารถระบุได้โดยใช้คลาสของ[PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/)ซึ่งประกอบด้วยคุณสมบัติที่กำหนดวิธีแสดงผลลัพธ์PDF.

โปรดทราบว่าด้วยเทคนิคเดียวกันคุณสามารถแปลงเอกสารรูปแบบโฟลวเค้าโครงเป็นPDFรูปแ.

{{% /alert %}}

### แปลงเป็นมาตรฐานPDFที่แตกต่างกัน{#converting-to-various-pdf-standards}

Aspose.Wordsให้การแจงนับ[PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/)เพื่อสนับสนุนการแปลงDOCหรือDOCXเป็นมาตรฐานรูปแบบต่างๆPDF(เช่นPDF 1.7, PDF 1.5, ฯลฯ).

ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นถึงวิธีการแปลงเอกสารเป็นPDF1.7โดยใช้[PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/)โดยปฏิบัติตามPDF17:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## แปลงภาพเป็นPDF{#convert-an-image-to-pdf}

การแปลงเป็นPDFไม่ได้ถูกจำกัดด้วยรูปแบบเอกสารMicrosoft Word รูปแบบใดก็ได้ที่รองรับโดยAspose.Wordsรวมทั้งสร้างตามโปรแกรมสามารถแปลงเป็นPDF ตัวอย่างเช่นเราสามารถแปลงภาพหน้าเดียวเช่นJPEG, PNG, BMP, EMF, หรือWMFรวมทั้งภาพหลายหน้าเช่นTIFFและGIFถึงPDF.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแปลงJPEGและTIFFรูปภาพเป็นPDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

เมื่อต้องการทำให้โค้ดนี้ทำงานคุณต้องเพิ่มการอ้างอิงไปยังAspose.Wordsและ`System.Drawing`กับโครงการของคุณ.

## ดูเพิ่มเติม

- บทความ [การแสดงผล](/words/cpp/rendering/) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับหน้าคงที่และรูปแบบเค้าโครงโฟลว์
- บทความ [แปลงเป็นรูปแบบหน้าถาวร](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับเค้าโครงหน้า
- บทความ [ระบุตัวเลือกการแสดงผลเมื่อแปลงเป็นPDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับการใช้`PdfSaveOptions`คลาส
