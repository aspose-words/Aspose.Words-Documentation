---
title: บันทึกเอกสารในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การบันทึกเอกสาร
linktitle: การบันทึกเอกสาร
type: docs
description: "บันทึกเอกสารในรูปแบบใดก็ได้ที่สนับสนุนโดยใช้Java."
weight: 20
url: /th/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

งานส่วนใหญ่ที่คุณจำเป็นต้องดำเนินการด้วยAspose.Wordsเกี่ยวข้องกับการบันทึกเอกสาร เมื่อต้องการบันทึกเอกสารAspose.Wordsให้[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String))วิธีการของ[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)ชั้น เอกสารสามารถบันทึกในรูปแบบบันทึกใดๆที่สนับสนุนโดยAspose.Words สำหรับรายการของรูปแบบการบันทึกที่สนับสนุนทั้งหมดโปรดดูที่[SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)การแจงนับ.

## บันทึกไปยังแฟ้ม {#save-a-document-to-a-file}

เพียงใช้วิธีการ[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String)ด้วยชื่อแฟ้ม Aspose.Wordsจะกำหนดรูปแบบการบันทึกจากนามสกุลไฟล์ที่คุณระบุ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโหลดและบันทึกเอกสารไปยังแฟ้ม:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## บันทึกลงในสตรีม {#save-a-document-to-a-stream}

ส่งผ่านวัตถุสตรีมไปยังวิธีการ[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) จำเป็นต้องระบุรูปแบบการบันทึกอย่างชัดเจนเมื่อบันทึกลงในสตรีม.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโหลดและบันทึกเอกสารไปยังสตรีม:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## ประหยัดถึงPCL {#save-a-document-to-pcl}

Aspose.Wordsรองรับการบันทึกเอกสารเป็นPCL(ภาษาคำสั่งเครื่องพิมพ์) Aspose.WordsสามารถบันทึกเอกสารลงในรูปแบบPCL6(PCL6 ปรับปรุงหรือPCLXL) คลาส`PclSaveOptions`สามารถใช้เพื่อระบุตัวเลือกเพิ่มเติมเมื่อบันทึกเอกสารลงในรูปแบบPCL.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการบันทึกเอกสารเป็นPCLโดยใช้ตัวเลือกการบันทึก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
