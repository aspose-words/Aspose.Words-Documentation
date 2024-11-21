---
title: ทํางานกับภาพใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับภาพต่าง ๆ
linktitle: ทํางานกับภาพต่าง ๆ
type: docs
description: "รูปทรงภาพในรายละเอียดและคุณสมบัติขั้นสูงที่จัดให้ Aspose.Words สําหรับ Java."
weight: 300
url: /th/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ทําให้ผู้ใช้สามารถทํางานกับภาพได้อย่างยืดหยุ่น ใน บทความ นี้ คุณ สามารถ สํารวจ ได้ เพียง บาง ส่วน เท่า นั้น จาก การ ทํา งาน ร่วม กับ รูป ปั้น.

## วิธี แยก รูป ภาพ ออก จาก เอกสาร {#how-to-extract-images-from-a-document}

ภาพทั้งหมดถูกเก็บไว้ภายใน **Shape** โหนดในเอกสาร เพื่อดึงภาพหรือภาพทั้งหมดที่มีชนิดเฉพาะจากเอกสาร โปรดตามขั้นตอนเหล่านี้:

- ใช้ [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) วิธีการเลือกโหนดทรงทั้งหมด
- ประมวลผลผ่านการสะสมโหนด
- ตรวจสอบ [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) ทรัพย์สินของบูเลอัน
- คลายข้อมูลภาพโดยใช้ [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) ทรัพย์สิน
- บันทึกภาพเป็นแฟ้ม

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## จะใส่บาร์โค้ดบนเอกสารแต่ละหน้าอย่างไร {#how-to-insert-barcode-on-each-documen-page}

ตัวอย่างนี้ ให้คุณเพิ่มบาร์โค้ดเดียวกันหรืออื่น ๆ ในทุก ๆ หน้า หรือหน้าเฉพาะของเอกสารคํา ไม่มีวิธีโดยตรงในการเพิ่มบาร์โค้ดในหน้าทั้งหมด แต่คุณสามารถใช้ได้ [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) ถึง [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])* วิธีการในการย้ายไปยังส่วนใด ๆ หรือหัวจดหมายหรือฟุตเกอร์ และแทรกภาพบาร์โค้ด ตามที่คุณเห็นในโค้ดต่อไปนี้

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการใส่ภาพ barcode ในแต่ละหน้าของเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## ล็อคสัดส่วนของภาพ {#lock-aspect-ratio-of-image}

สัดส่วนของรูปทรงเรขาคณิต คืออัตราส่วนของขนาดของมัน ในมิติที่แตกต่างกัน คุณสามารถล็อคสัดส่วนของภาพได้ โดยใช้ [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). ค่าปริยายของสัดส่วนภาพ ขึ้นอยู่กับ [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). ใช่ true สําหรับ `ShapeType.Image` ถึง false สําหรับรูปร่างอื่น ๆ

ตัวอย่างรหัสต่อไปนี้ แสดงวิธีทํางานกับสัดส่วนสัดส่วน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## วิธี ทํา ให้ รูป ร่าง หน้า ตา ดี {#how-to-get-actual-bounds-of-shape-in-points}

ถ้าคุณต้องการให้กล่องผูกรูปจริง ที่ถูกแก้ไขในหน้านี้ คุณสามารถทําได้โดยการใช้ [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) ทรัพย์สิน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัตินี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## ภาพสะสม

การ เก็บ ภาพ ตาม ปกติ จะ หมาย ถึง การ ขจัด ส่วน นอก ที่ ไม่ พึง ประสงค์ ของ รูป ปั้น เพื่อ ช่วย ปรับ ปรุง รูป ปั้น. นอก จาก นี้ ยัง ใช้ เพื่อ ขจัด บาง ส่วน ของ ภาพ ออก ไป เพื่อ เพิ่ม ความ สนใจ ใน พื้น ที่ บาง แห่ง.

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี บรรลุ ผล สําเร็จ ใน การ ใช้ Aspose.Words API

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## บันทึกภาพเป็น WMF

Aspose.Words ให้คุณสมบัติในการบันทึกภาพทั้งหมดที่มีอยู่ในเอกสาร [สืบค้นเมื่อ 20 พฤษภาคม 2555. สืบค้นเมื่อ 28 พฤษภาคม 2560](https://docs.fileformat.com/image/wmf/)ฟอร์แมตขณะแปลง DOCX เป็น RTF

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีการบันทึกภาพเป็น WMF ด้วยตัวเลือก RTF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
