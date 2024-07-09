---
title: กําลังพิมพ์เอกสาร
second_title: Aspose.Words สําหรับ Java
articleTitle: กําลังพิมพ์เอกสาร แบบ โปรแกรม หรือ การ ใช้ กล่อง
linktitle: กําลังพิมพ์เอกสาร แบบ โปรแกรม หรือ การ ใช้ กล่อง
description: "พิมพ์เอกสารโดยใช้ Java ผ่านการตั้งค่า, แสดงตัวอย่างการพิมพ์, และกล่องความคืบหน้าการพิมพ์"
type: docs
weight: 55
url: /th/java/print-a-document-programmatically-or-using-dialogs/
---

บทความ นี้ อธิบาย วิธี พิมพ์ เอกสาร การประมวลผล คํา โดย ใช้ Aspose.Words API. บทความ อื่น ๆ ใน ฉบับ นี้:

## พิมพ์เอกสารที่มีการตั้งค่าและพิมพ์กล่องแสดงตัวอย่าง

เมื่อ ทํา งาน กับ เอกสาร มัก จะ ต้อง พิมพ์ เอกสาร เหล่า นั้น ไป ยัง โรง พิมพ์ ที่ เลือก ไว้. การ ตรวจ สอบ ภาพ

เดอะ Aspose.Words ไม่มีกล่องโต้ตอบหรือแบบฟอร์มที่สร้างขึ้นมา แต่มีการปรับใช้ [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) ชั้นเรียนใช้แทนทั้งจาวา พิมพ์ได้และจาวา หาหน้าได้

ตัว อย่าง ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ ใช้ ชั้น เรียน เหล่า นี้ พิมพ์ เอกสาร Aspose.Words ผ่านกล่องแสดงตัวอย่างและการตั้งค่าการพิมพ์:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## พิมพ์หลายหน้าบนแผ่นเดียว

Aspose.Words ใช้ **MultipagePrintDocument** คลาส เพื่อปรับส่วนดําเนินการการพิมพ์ให้ละเอียด เพื่อปรับใช้ตรรกะที่กําหนดเองของคุณ โดยการนิยามวิธีการที่เอกสารจะปรากฏบนหน้าพิมพ์ เดอะ **MultipagePrintDocument** ชั้น เรียน มี ความ สามารถ ที่ จะ พิมพ์ หลาย หน้า บน กระดาษ แผ่น เดียว.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

คุณสามารถดาวน์โหลดตัวอย่างโดยใช้ **MultipagePrintDocument** เรียนจาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)

ผล ของ ตัว อย่าง รหัส นี้ ปรากฏ ข้าง ล่าง:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
