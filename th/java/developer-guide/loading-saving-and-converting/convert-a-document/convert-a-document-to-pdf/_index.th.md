---
title: แปลงเอกสารเป็นPDFในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: แปลงเอกสารเป็นPDF
linktitle: แปลงเอกสารเป็นPDF
description: "แปลงเอกสารเป็นคำหรือรูปแบบอื่นที่รองรับเป็นPDFซึ่งจะเก็บรักษาลักษณะเดิมของเอกสารไว้ระหว่างการแสดงผลบนแพลตฟอร์มต่างๆโดยใช้Java."
type: docs
weight: 10
url: /th/java/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

ความสามารถในการแปลงเอกสารจากรูปแบบหนึ่งไปยังอีกรูปแบบหนึ่งได้อย่างง่ายดายและเชื่อถือได้คือคุณลักษณะสำคัญของAspose.Words หนึ่งในรูปแบบที่นิยมมากที่สุดสำหรับการแปลงคือPDF–รูปแบบคงที่เค้าโครงซึ่งจะรักษาลักษณะเดิมของเอกสารในระหว่างการแสดงผลบนแพลตฟอร์มต่างๆ คำว่า"การแสดงผล"ถูกใช้ในAspose.Wordsเพื่ออธิบายกระบวนการของการแปลงเอกสารเป็นรูปแบบแฟ้.

## แปลงเอกสารคำเป็นPDF {#convert-a-word-document-to-pdf}

แปลงจากคำเป็นPDFเป็นกระบวนการที่ค่อนข้างซับซ้อนที่ต้องใช้หลายขั้นตอนของการคำนวณ Aspose.Wordsเครื่องยนต์เค้าโครงเลียนแบบวิธีการทำงานของเครื่องยนต์เค้าโครงหน้าMicrosoft Wordทำให้เอกสารที่ส่งออกPDFดูใกล้เคียงที่สุดกับสิ่งที่คุณเห็นในMicrosoft Word.

ด้วยAspose.WordsคุณสามารถแปลงเอกสารจากDOCหรือDOCXรูปแบบเป็นPDFโดยไม่ต้องใช้สำนักงานMicrosoft บทความนี้อธิบายวิธีการดำเนินการแปลงนี้.

{{% alert color="primary" %}}

โปรดทราบว่าจำนวนหน้าในเอกสารมีผลต่อเวลาการแปลง.

{{% /alert %}}

### กำลังแปลงDOCXหรือDOCเป็นPDF {#converting-doc-or-docx-to-pdf}

การแปลงจากDOCหรือDOCXรูปแบบเอกสารลงในรูปแบบPDFในAspose.Wordsเป็นเรื่องง่ายมากและสามารถทำได้ด้วยรหัสสองบรรทัดที่:

1. ป้อนเอกสารของคุณลงในวัตถุ[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)โดยใช้หนึ่งในตัวสร้างโดยการระบุชื่อเอกสารที่มีนามสกุล.
1. เรียกหนึ่งในวิธีการ[Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int)บนวัตถุ**Document**และระบุรูปแบบผลลัพธ์ที่ต้องการเป็นPDFโดยการป้อนชื่อไฟล์ด้วย"PDF"ส่วนขยาย.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแปลงเอกสารจากDOCXเป็นPDFโดยใช้วิธีการ`Save`:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

บางครั้งจำเป็นต้องระบุตัวเลือกเพิ่มเติมซึ่งอาจส่งผลต่อผลลัพธ์ของการบันทึกเอกสารเป็นPDF อ็อพชันนี้สามารถระบุได้โดยใช้คลาสของ[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)ซึ่งประกอบด้วยคุณสมบัติที่กำหนดวิธีแสดงผลลัพธ์PDF.

โปรดทราบว่าด้วยเทคนิคเดียวกันคุณสามารถแปลงเอกสารรูปแบบโฟลวเค้าโครงเป็นPDFรูปแ.

{{% /alert %}}

### แปลงเป็นมาตรฐานPDFที่แตกต่างกัน {#converting-to-various-pdf-standards}

Aspose.Wordsให้การแจงนับ[PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)เพื่อสนับสนุนการแปลงDOCหรือDOCXเป็นมาตรฐานรูปแบบต่างๆPDF(เช่นPDF 1.7, PDF 1.5, ฯลฯ).

ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นถึงวิธีการแปลงเอกสารเป็นPDF1.7โดยใช้[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)กับการปฏิบัติตามPDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## แปลงภาพเป็นPDF

การแปลงเป็นPDFไม่ได้ถูกจำกัดด้วยรูปแบบเอกสารMicrosoft Word รูปแบบใดก็ได้ที่รองรับโดยAspose.Wordsรวมทั้งสร้างตามโปรแกรมสามารถแปลงเป็นPDF ตัวอย่างเช่นเราสามารถแปลงภาพหน้าเดียวเช่นJPEG, PNG, BMP, EMF, หรือWMFรวมทั้งภาพหลายหน้าเช่นTIFFและGIFถึงPDF.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแปลงJPEGและTIFFรูปภาพเป็นPDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

เมื่อต้องการให้รหัสนี้ทำงานคุณต้องเพิ่มการอ้างอิงไปยังAspose.Words,Javaโอ้วภาพและจาวาแพคเกจระดับภาพไปยังโครงการของคุณ.

## ลดขนาดเอาท์พุทPDF

เมื่อบันทึกเป็นPDFคุณสามารถระบุว่าคุณต้องการเพิ่มประสิทธิภาพผลลัพธ์ เมื่อต้องการทำเช่นนี้คุณจะต้องตั้งค่าธง[OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput)เป็นจริงแล้วผืนผ้าใบที่ซ้อนกันซ้ำซ้อนและผืนผ้าใบที่ว่างเปล่าจะถูกลบออกสัญลักษณ์เพื่อนบ้านที่มีการจัดรูปแบบเดียวกันจะถูกเชื่อมต่อ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มประสิทธิภาพผลลัพธ์:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

การใช้คุณสมบัติ**OptimizeOutput**อาจส่งผลต่อความถูกต้องของการแสดงเนื้อหา.

{{% /alert %}}

## ดูเพิ่มเติม

- บทความ [การแสดงผล](/words/java/rendering/) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับหน้าคงที่และรูปแบบเค้าโครงโฟลว์
- บทความ [แปลงเป็นรูปแบบหน้าถาวร](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับเค้าโครงหน้า
- บทความ [ระบุตัวเลือกการแสดงผลเมื่อแปลงเป็นPDF](/words/java/specify-rendering-options-when-converting-to-pdf/) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับการใช้`PdfSaveOptions`คลาส
