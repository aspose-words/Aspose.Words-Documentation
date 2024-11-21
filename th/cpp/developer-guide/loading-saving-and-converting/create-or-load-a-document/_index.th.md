---
title: สร้างหรือโหลดเอกสารในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การสร้างหรือโหลดเอกสาร
linktitle: การสร้างหรือโหลดเอกสาร
type: docs
description: "สร้างเอกสารเปล่าหรือโหลดจากแฟ้มหรือสตรีมโดยใช้C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /th/cpp/create-or-load-a-document/
timestamp: 2024-01-27-14-07-04
---

เกือบทุกงานที่คุณต้องการดำเนินการด้วยAspose.Wordsเกี่ยวข้องกับการโหลดเอกสาร คลาส`Document`แทนเอกสารที่โหลดลงในหน่วยความจำ เอกสารมีหลายตัวสร้างมากเกินไปช่วยให้คุณสามารถสร้างเอกสารที่ว่างเปล่าหรือการโ เอกสารสามารถโหลดในรูปแบบโหลดใดๆที่สนับสนุนโดยAspose.Words สำหรับรายการของรูปแบบการโหลดที่รองรับทั้งหมดโปรดดูที่การแจงนับ[LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/).

## สร้างเอกสารใหม่{#create-a-new-document}

เราจะเรียกตัวสร้าง[Document](https://reference.aspose.com/words/cpp/class/aspose.words.document)โดยไม่มีพารามิเตอร์ในการสร้างเอกสารที่ว่างเปล่าใหม่. ถ้าคุณต้องการสร้างเอกสารแบบโปรแกรมวิธีที่ง่ายที่สุดคือใช้คลาส[DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder)เพื่อเพิ่มเนื้อหาของเ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างเอกสารโดยใช้ตัวสร้างเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

หมายเหตุค่าดีฟอลต์:

- เอกสารที่ว่างเปล่าประกอบด้วยส่วนหนึ่งกับพารามิเตอร์ดีฟอลต์วรรคหนึ่งว่างลักษณะเอกส ที่จริงเอกสารนี้เป็นเช่นเดียวกับผลของการสร้าง"เอกสารใหม่"ในMicrosoft Word.
- ขนาดกระดาษเอกสารคือ[PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/)**Letter**.

{{% /alert %}}

## ป้อนเอกสาร

เมื่อต้องการโหลดเอกสารที่มีอยู่ในรูปแบบใดๆของ`LoadFormat`ให้ส่งชื่อไฟล์หรือสตรีมไปยังตัวสร้างเอ รูปแบบของเอกสารที่โหลดจะถูกกำหนดโดยอัตโนมัติโดยส่วนขยาย.

### โหลดจากแฟ้ม{#load-from-a-file}

ผ่านชื่อแฟ้มเป็นสตริงไปยังตัวสร้างเอกสารเพื่อเปิดเอกสารที่มีอยู่จากแฟ้ม.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเปิดเอกสารจากแฟ้ม:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### โหลดจากสตรีม{#load-from-a-stream}

เมื่อต้องการเปิดเอกสารจากสตรีมเพียงผ่านวัตถุสตรีมที่ประกอบด้วยเอกสารลงในตัวสร้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเปิดเอกสารจากสตรีม:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
