---
title: สร้างหรือโหลดเอกสารในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การสร้างหรือโหลดเอกสาร
linktitle: การสร้างหรือโหลดเอกสาร
type: docs
weight: 10
url: /th/java/create-or-load-a-document/
description: "Aspose.Wordsช่วยให้คุณสามารถสร้างเอกสารว่างหรือโหลดจากแฟ้มหรือสตรีมโดยใช้Java."
timestamp: 2024-01-27-14-07-04
---

เกือบทุกงานที่คุณต้องการดำเนินการด้วยAspose.Wordsเกี่ยวข้องกับการโหลดเอกสาร คลาส`Document`แทนเอกสารที่โหลดลงในหน่วยความจำ เอกสารมีหลายตัวสร้างมากเกินไปช่วยให้คุณสามารถสร้างเอกสารที่ว่างเปล่าหรือการโ เอกสารสามารถโหลดในรูปแบบโหลดใดๆที่สนับสนุนโดยAspose.Words สำหรับรายการของรูปแบบการโหลดที่รองรับทั้งหมดโปรดดูที่การแจงนับ[LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/).

## สร้างเอกสารใหม่ {#create-a-new-document}

เราจะเรียกตัวสร้าง[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)โดยไม่มีพารามิเตอร์ในการสร้างเอกสารที่ว่างเปล่าใหม่. ถ้าคุณต้องการสร้างเอกสารแบบโปรแกรมวิธีที่ง่ายที่สุดคือใช้คลาส[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder)เพื่อเพิ่มเนื้อหาของเ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างเอกสารโดยใช้ตัวสร้างเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

หมายเหตุค่าดีฟอลต์:

- เอกสารที่ว่างเปล่าประกอบด้วยส่วนหนึ่งกับพารามิเตอร์ดีฟอลต์วรรคหนึ่งว่างลักษณะเอกส ที่จริงเอกสารนี้เป็นเช่นเดียวกับผลของการสร้าง"เอกสารใหม่"ในMicrosoft Word.
- ขนาดกระดาษเอกสารคือ[PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/)**Letter**.

{{% /alert %}}

## ป้อนเอกสาร

เมื่อต้องการโหลดเอกสารที่มีอยู่ในรูปแบบใดๆของ[LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)ให้ส่งชื่อไฟล์หรือสตรีมไปยังตัวสร้างเอ รูปแบบของเอกสารที่โหลดจะถูกกำหนดโดยอัตโนมัติโดยส่วนขยาย.

### โหลดจากแฟ้ม {#load-from-a-file}

ผ่านชื่อแฟ้มเป็นสตริงไปยังตัวสร้างเอกสารเพื่อเปิดเอกสารที่มีอยู่จากแฟ้ม.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเปิดเอกสารจากแฟ้ม:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### โหลดจากสตรีม {#load-from-a-stream}

เมื่อต้องการเปิดเอกสารจากสตรีมเพียงผ่านวัตถุสตรีมที่ประกอบด้วยเอกสารลงในตัวสร้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเปิดเอกสารจากสตรีม:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
