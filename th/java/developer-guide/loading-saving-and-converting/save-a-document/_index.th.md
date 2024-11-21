---
title: บันทึกเอกสารเป็น Java
second_title: Aspose.Words สําหรับ Java
articleTitle: บันทึกเอกสาร
linktitle: บันทึกเอกสาร
type: docs
description: "บันทึกเอกสารในรูปแบบใด ๆ ที่รองรับ Java."
weight: 20
url: /th/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

งานส่วนใหญ่ที่คุณต้องใช้ Aspose.Words เกี่ยวกับการบันทึกเอกสาร เพื่อบันทึกเอกสาร Aspose.Words ให้ [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)วิธีของ [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ชั้นเรียน. เอกสารสามารถบันทึกในรูปแบบใด ๆ ก็ได้ที่รองรับการบันทึก Aspose.Words. สําหรับรายการของรูปแบบการบันทึกทั้งหมดที่รองรับ ดูที่ [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) การเผาศพ

## บันทึกเป็นแฟ้ม {#save-a-document-to-a-file}

ใช้ง่าย ๆ [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) วิธีการที่มีชื่อแฟ้ม Aspose.Words จะพิจารณารูปแบบการบันทึกจากนามสกุลแฟ้มที่คุณกําหนด

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการโหลดและบันทึกเอกสารไปยังเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## บันทึกไปยังสายข้อมูล {#save-a-document-to-a-stream}

ส่งวัตถุกระแสไปยัง [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) วิธี มันจําเป็นต้องกําหนดรูปแบบการบันทึกโดยตรง เมื่อมีการบันทึกไปยังสายข้อมูล

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการโหลดและบันทึกเอกสารไปยังกระแส:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## บันทึกไปยัง PCL {#save-a-document-to-pcl}

Aspose.Words รองรับการบันทึกเอกสารเป็นเอกสารไปยังภาษา PCL (ภาษาของคําสั่งเครื่องพิมพ์) Aspose.Words สามารถบันทึกเอกสารลงในรูปแบบ PCL 6 (PCL 6 เสริมหรือ PCL XL) เดอะ `PclSaveOptions` ใช้คลาสเพื่อกําหนดตัวเลือกเพิ่มเติม เมื่อมีการจัดเก็บเอกสารในรูปแบบ PCL

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการบันทึกเอกสารไปยัง PCL โดยใช้ตัวเลือกการบันทึก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
