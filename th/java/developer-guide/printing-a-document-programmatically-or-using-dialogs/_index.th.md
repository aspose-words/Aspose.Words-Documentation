---
title: การพิมพ์เอกสาร
second_title: Aspose.WordsสำหรับJava
articleTitle: การพิมพ์เอกสารโดยโปรแกรมหรือใช้กล่องโต้ตอบ
linktitle: การพิมพ์เอกสารโดยโปรแกรมหรือใช้กล่องโต้ตอบ
description: "พิมพ์เอกสารโดยใช้Javaผ่านการตั้งค่าดูตัวอย่างการพิมพ์และไดอะล็อกความคืบหน้าการพิมพ์."
type: docs
weight: 55
url: /th/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

บทความนี้อธิบายวิธีการพิมพ์เอกสารการประมวลผลคำโดยใช้Aspose.WordsAPI ารพิมพ์เอกสารที่มีการตั้งค่าตัวอย่างการพิมพ์และไดอะล็อกความคืบหน้าการพิมพ์.

## การพิมพ์เอกสารด้วยไดอะล็อกแสดงตัวอย่างการตั้งค่าและพิมพ์

เมื่อทำงานกับเอกสารมักจะต้องพิมพ์เอกสารไปยังเครื่องพิมพ์ที่เลือก ใช้กล่องโต้ตอบแสดงตัวอย่างการพิมพ์เพื่อตรวจสอบว่าเอกสารที่พิมพ์จะปรากฏขึ้นอย่างไรและเลือกตัวเลือกการพิมพ์ที่เกี่ยวข้อง.

Aspose.Wordsไม่มีไดอะล็อกหรือฟอร์มในตัวแต่ใช้คลาสของ[AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/)แทนที่ทั้งจาวาโอ้วพิมพ์พิมพ์และจาวาโอ้วพิมพ์หน้าได้.

ตัวอย่างต่อไปนี้แสดงวิธีการใช้คลาสเหล่านี้เพื่อพิมพ์เอกสารจากAspose.Wordsผ่านไดอะล็อกแสดงตัวอ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## พิมพ์หลายหน้าบนแผ่นเดียว

Aspose.Wordsใช้ชั้นเรียน**MultipagePrintDocument**เพื่อปรับแต่งการดำเนินการพิมพ์เพื่อใช้ตรรกะที่กำหนดเองของคุณโดยการกำ คลาส**MultipagePrintDocument**ให้ความสามารถในการพิมพ์หลายหน้าบนกระดาษแผ่นเดียว.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

คุณสามารถดาวน์โหลดตัวอย่างของการใช้**MultipagePrintDocument**ชั้นจาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46).

ผลลัพธ์ของตัวอย่างรหัสนี้แสดงด้านล่าง:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
