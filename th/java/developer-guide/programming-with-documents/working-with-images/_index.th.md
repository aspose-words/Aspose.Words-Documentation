---
title: การทำงานกับภาพในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับภาพ
linktitle: การทำงานกับภาพ
type: docs
description: "รูปร่างรูปภาพในรายละเอียดและคุณลักษณะขั้นสูงที่มีให้โดยAspose.WordsสำหรับJava."
weight: 300
url: /th/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsช่วยให้ผู้ใช้สามารถทำงานกับภาพในทางที่ยืดหยุ่นมาก ในบทความนี้คุณสามารถสำรวจเพียงบางส่วนของความเป็นไปได้ของการทำงานกับภาพ.

## วิธีการแยกภาพจากเอกสาร {#how-to-extract-images-from-a-document}

รูปภาพทั้งหมดจะถูกเก็บไว้ภายใน**Shape**โหนดในเอกสาร เมื่อต้องการแยกภาพหรือรูปภาพทั้งหมดที่มีชนิดเฉพาะจากเอกสารให้ทำตามขั้นตอนเหล่านี้:

- ใช้วิธีการ[getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes)เพื่อเลือกโหนดรูปร่างทั้งหมด.
- ย้ำผ่านคอลเลกชันโหนดที่เกิด.
- ตรวจสอบคุณสมบัติบูลีน[hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage).
- แยกข้อมูลภาพโดยใช้คุณสมบัติ[ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData).
- บันทึกข้อมูลภาพไปยังแฟ้ม.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## วิธีการแทรกบาร์โค้ดในแต่ละหน้าเอกสาร {#how-to-insert-barcode-on-each-documen-page}

ตัวอย่างนี้ช่วยให้คุณสามารถเพิ่มบาร์โค้ดเดียวกันหรือต่างกันในหน้าทั้งหมดหรือเฉพาะขอ ไม่มีวิธีโดยตรงในการเพิ่มบาร์โค้ดในทุกหน้าของเอกสารแต่คุณสามารถใช้วิธีการ[moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int),[moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int)และ[insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[]))เพื่

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกรูปภาพบาร์โค้ดในแต่ละหน้าของเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## ล็อคอัตราส่วนภาพของภาพ {#lock-aspect-ratio-of-image}

อัตราส่วนของรูปทรงเรขาคณิตเป็นอัตราส่วนของขนาดของมันในมิติที่แตกต่างกัน ท่านสามารถล็อกอัตราส่วนของภาพได้ด้วย[AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked) ค่าดีฟอลต์ของอัตราส่วนของรูปร่างจะขึ้นอยู่กับ[ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/) มันเป็นความจริงสำหรับ`ShapeType.Image`และเท็จสำหรับประเภทรูปร่างอื่นๆ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำงานกับอัตราส่วน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## วิธีการได้รับขอบเขตที่แท้จริงของรูปร่างในจุด {#how-to-get-actual-bounds-of-shape-in-points}

หากคุณต้องการให้กล่องขอบที่แท้จริงของรูปร่างที่แสดงผลบนหน้าเว็บคุณสามารถบรรลุสิ่งนี้ได้โดยใช้คุณสมบัติ[BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้คุณสมบัตินี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## ภาพพืช

การครอบตัดของรูปภาพมักจะหมายถึงการเอาออกของส่วนภายนอกที่ไม่พึงประสงค์ของรูป นอกจากนี้ยังใช้สำหรับการลบบางส่วนของภาพเพื่อเพิ่มโฟกัสในพื้นที่เฉพาะ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการบรรลุนี้โดยใช้Aspose.WordsAPI:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## บันทึกภาพเป็นWMF

Aspose.Wordsให้ฟังก์ชั่นเพื่อบันทึกรูปภาพทั้งหมดที่มีอยู่ในเอกสารไปที่ [WMF](https://docs.fileformat.com/image/wmf/)รูปแบบขณะแปลงDOCXเป็นRTF.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการบันทึกภาพเป็นWMFด้วยRTFตัวเลือกการบันทึก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
