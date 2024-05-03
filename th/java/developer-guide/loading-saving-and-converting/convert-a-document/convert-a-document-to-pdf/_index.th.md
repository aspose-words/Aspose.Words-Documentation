---
title: แปลงเอกสารเป็น PDF ใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: แปลงเอกสารเป็น PDF
linktitle: แปลงเอกสารเป็น PDF
description: "แปลงเอกสารในรูปแบบคําหรือรูปแบบอื่น ๆ ที่รองรับเป็น PDF ซึ่งรักษาการปรากฏเดิมของเอกสารระหว่างการแปลงเอกสารบนแพลตฟอร์มต่าง ๆ โดยใช้ Java."
type: docs
weight: 10
url: /th/java/convert-a-document-to-pdf/
---

ความสามารถที่จะแปลงเอกสารจากรูปแบบหนึ่งเป็นอีกรูปแบบได้อย่างง่ายดาย และเปลี่ยนได้ง่าย ๆ เป็นคุณสมบัติสําคัญของ Aspose.Words. หนึ่งในรูปแบบที่นิยมมากที่สุดสําหรับการแปลงคือ PDF – แบบติดไฟแบบคงที่ ซึ่งรักษาการปรากฏเดิมของเอกสาร ระหว่างการแปลงรูปแบบบนแพลตฟอร์มต่างๆ มี การ ใช้ คํา "การ กลับ ใจ " ใน ภาษา เดิม Aspose.Words เพื่ออธิบายกระบวนการการแปลงเอกสารเป็นรูปแบบแฟ้มที่ถูกวางหรือมีแนวคิดของหน้าต่าง ๆ

## แปลงเอกสารคําเป็น PDF {#convert-a-word-document-to-pdf}

การ เปลี่ยน จาก พระ คํา มา เป็น PDF เป็น กระบวนการ ที่ ค่อน ข้าง ซับ ซ้อน ซึ่ง เรียก ร้อง การ คํานวณ หลาย ขั้น ตอน. Aspose.Words เครื่องยนต์ผังจําลองทาง Microsoft Wordเครื่องยนต์ผังหน้ากระดาษทํางาน ทําให้เอกสารผลลัพธ์ PDF ดูใกล้เคียงกับสิ่งที่คุณสามารถเห็นได้ใน Microsoft Word.

ด้วย Aspose.Words คุณสามารถแปลงเอกสารจากรูปแบบ DOC หรือรูปแบบ DCX ไปเป็น PDF ได้โดยไม่ต้องใช้ Microsoft ออฟฟิศ บทความ นี้ อธิบาย วิธี ทํา การ เปลี่ยน แปลง นี้.

{{% alert color="primary" %}}

โปรด สังเกต ว่า จํานวน หน้า ใน เอกสาร มี ผล ต่อ เวลา ที่ เปลี่ยน.

{{% /alert %}}

### แปลง DOCX หรือ DOC ไปเป็น PDF {#converting-doc-or-docx-to-pdf}

แปลงจากเอกสาร DOC หรือรูปแบบ DOCX เป็นรูปแบบ PDF Aspose.Words ง่ายมากและประสบความสําเร็จได้ ด้วยรหัสเพียงสองบรรทัด

1 โหลดเอกสารของคุณไปยัง [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ออบเจกต์โดยใช้ตัวสร้างตัวใดตัวหนึ่งของมัน โดยระบุชื่อเอกสารด้วยนามสกุลของเอกสาร
1 จีบหนึ่งใน [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) วิธีการของ **Document** ออบเจกต์และกําหนดรูปแบบการแสดงผลแบบ PDF ที่ต้องการ โดยป้อนชื่อแฟ้มด้วยส่วนขยาย ". PDF"

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการแปลงเอกสารจาก DoCX เป็น PDF โดยใช้ `Save` วิธีการ:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

บาง ครั้ง จําเป็น ต้อง ระบุ ตัวเลือก เพิ่ม เติม ซึ่ง อาจ มี ผล กระทบ ต่อ ผล ของ การ บันทึก เอกสาร เป็น PDF. ตัวเลือกเหล่านี้สามารถกําหนดได้โดยการใช้ [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) คลาสนี้ จะบรรจุคุณสมบัติที่จะใช้กําหนดว่าจะให้การแสดงผลการแสดงผล PDF อย่างไร

โปรดสังเกตว่า ด้วยเทคนิคเดียวกันนี้ คุณสามารถแปลงเอกสารแบบ flow-Layout เป็นรูปแบบ PDF ได้

{{% /alert %}}

### แปลงเป็น PDF ที่แตกต่างกัน มาตรฐาน {#converting-to-various-pdf-standards}

Aspose.Words ให้ [2013.. .. .. .. .. สืบค้นเมื่อ 20 พฤษภาคม พ.ศ. แฟ้มภาพประเภท PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)การรวมเพื่อสนับสนุนการแปลง DOC หรือ DoCX เป็นมาตรฐานต่าง ๆ แบบ PDF (เช่น PDF 1. 7, PDF 1.5 เป็นต้น).

ตัวอย่างโค้ดต่อไปนี้แสดงถึงวิธีการแปลงเอกสารเป็น PDF 1. 7 โดยใช้ [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) ด้วยความยินยอมไปยัง PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## แปลงภาพเป็น PDF

การแปลงเป็น PDF ไม่ได้ถูกห้ามไว้ Microsoft Word รูปแบบเอกสาร ฟอร์แมตใด ๆ ที่รองรับโดย Aspose.Words, รวมถึงการสร้างโปรแกรมแล้ว นอกจากนี้ยังสามารถแปลงเป็น PDF ได้ด้วย ยกตัวอย่างเช่น เราสามารถแปลงภาพแบบเดียวได้ เช่น JPEG PNG BMP, EMF หรือ WMF รวมถึงภาพหลายหน้า เช่น TIFF และ GIF, PDF

ตัวอย่างรหัสต่อไปนี้ แสดงวิธีการแปลงภาพ JPEG และภาพประเภท TIFF ไปเป็น PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

เพื่อให้โค้ดนี้ใช้ได้ คุณต้องเพิ่มส่วนที่อ้างถึง Aspose.Words, Javaรูปถ่าย และจาแว็กซ์ แพกเกจคลาส Photoo สําหรับโครงการของคุณ

## ลดเอกสาร PDF ขนาดพิมพ์ออก

เมื่อมีการบันทึกไปยัง PDF คุณสามารถกําหนดได้ว่าต้องการตั้งค่าการแสดงผลสูงสุดหรือไม่ เพื่อทําสิ่งนี้ คุณต้องตั้ง [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) แฟล็ก true, แล้วผ้าปูที่นอนและผ้าใบว่างเปล่าจะถูกลบ เพื่อนบ้าน glyphการตกแต่งแบบเดียวกัน จะถูกทําให้สมบูรณ์

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีปรับแต่งการแสดงผลของคุณ:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

ใช้ **OptimizeOutput** ทรัพย์ สิน อาจ มี ผล ต่อ ความ ถูก ต้อง แม่นยํา ของ การ แสดง เนื้อหา.

{{% /alert %}}

## ดูด้วย

- บทความ [การแสดงผล](/words/th/java/rendering/) สําหรับข้อมูลเพิ่มเติมเกี่ยวกับรูปแบบหน้าคงที่และแนวสายไหล
- บทความ [แปลงเป็นรูปแบบหน้าหลัก](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) สําหรับข้อมูลเพิ่มเติมในการจัดวางหน้ากระดาษ
- บทความ [2553. 2013iiicregias lotmejigigeg พ. ศ PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF PDF (พ.ศ](/words/th/java/specify-rendering-options-when-converting-to-pdf/) สําหรับข้อมูลเพิ่มเติมในการใช้ `PdfSaveOptions` ชั้น
