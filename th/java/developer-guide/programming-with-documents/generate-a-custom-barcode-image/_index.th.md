---
title: วิธีการสร้างบาร์โค้ด Java
second_title: Aspose.Words สำหรับ Java
articleTitle: สร้างภาพบาร์โค้ดที่กำหนดเอง
linktitle: สร้างภาพบาร์โค้ดที่กำหนดเอง
description: "ตัวอย่างการสร้างรูปร่างบาร์โค้ดโดยใช้ Java."
type: docs
weight: 350
url: /th/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

บาร์โค้ดคือการแสดงข้อมูลในรูปแบบเส้นขนานหรือรูปแบบต่างๆ บาร์โค้ดใช้กันอย่างแพร่หลายในอุตสาหกรรมต่างๆ เช่น การค้าปลีก โลจิสติกส์ การดูแลสุขภาพ ธนาคาร และอื่นๆ อีกมากมาย

Microsoft Word ช่วยให้ผู้ใช้ฝังบาร์โค้ดลงในเอกสารได้โดยตรงโดยใช้ฟิลด์ ผู้ใช้สามารถแทรกบาร์โค้ดประเภทเฉพาะ เช่น รหัส QR หรือบาร์โค้ดเชิงเส้น โดยใช้ฟิลด์ [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19)

ในบทความนี้ เราจะมาดูว่าฟิลด์ BARCODE ถูกนำไปใช้งานใน Aspose.Words อย่างไร และ Aspose.Words ช่วยให้ผู้ใช้ทำงานกับเอกสาร Word ที่มีการเพิ่มบาร์โค้ดลงไปแล้วได้อย่างไร

## ประเภทบาร์โค้ดที่รองรับโดย Aspose.Words

Aspose.Words รองรับบาร์โค้ดหลายประเภท ประเภทบาร์โค้ดจะถูกส่งเป็นค่าสตริงในคุณสมบัติ [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType)

{{% alert color="primary" %}}

เนื่องจากการทำงานกับบาร์โค้ดภายในฟังก์ชันการทำงานของ Aspose.Words นั้นมีข้อจำกัด ผู้ใช้จึงสามารถใช้ไลบรารีใดก็ได้ รวมถึง Aspose.Barcode หรือเขียนการแสดงผลของตนเองเพื่อทำงานกับบาร์โค้ด คุณสามารถเรียนรู้เพิ่มเติมเกี่ยวกับประเภทของบาร์โค้ด [ที่รองรับโดย Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/) ได้

{{% /alert %}}

เมื่อบันทึกเป็นรูปแบบ Word ที่รองรับบาร์โค้ด คุณสามารถใช้บาร์โค้ดประเภทใดก็ได้ที่ [รองรับโดย Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) หากระบุประเภทบาร์โค้ดไม่ถูกต้อง Word จะแสดงข้อผิดพลาด

เมื่อบันทึกเป็นรูปแบบอื่น เช่น PDF Aspose.Words จะมอบหมายการเรนเดอร์บาร์โค้ดให้กับโค้ดของผู้ใช้ ดังนั้นผู้ใช้จึงถูกจำกัดให้ใช้เฉพาะประเภทบาร์โค้ดของการใช้งานหรือไลบรารีที่ใช้เท่านั้น

## แทรกบาร์โค้ดลงในเอกสารหรือโหลดเอกสารที่มีบาร์โค้ดเพิ่มเติม

Aspose.Words มอบความสามารถในการ:

1. แทรกบาร์โค้ดลงในเอกสารโดยใช้โปรแกรมโดยใช้โค้ดฟิลด์ [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) และ [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)
2. หรือโหลดเอกสาร Word ที่มีบาร์โค้ดที่แทรกไว้แล้วเพื่อทำงานต่อไป

Aspose.Words มีอินเทอร์เฟซสำหรับสร้างบาร์โค้ดแบบกำหนดเองซึ่งทำให้ใช้งานง่าย [Aspose.Words](https://products.aspose.com/words/java/) และ [Aspose.BarCode](https://products.aspose.com/barcode/java/) ร่วมกันเพื่อเรนเดอร์ภาพบาร์โค้ดในเอกสารผลลัพธ์ ตัวอย่างเช่น คุณสามารถสร้างเอกสาร DOC, OOXML หรือ RTF และเพิ่มฟิลด์ DISPLAYBARCODE ลงไปโดยใช้ Aspose.Words หรือคุณสามารถโหลดเอกสาร DOC, OOXML หรือ RTF ที่มีฟิลด์ DISPLAYBARCODE อยู่แล้ว และจัดเตรียมการใช้งานเครื่องสร้างบาร์โค้ดแบบกำหนดเองของคุณเอง

ฟิลด์ DISPLAYBARCODE ทั่วไปมีรูปแบบต่อไปนี้:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

ด้านล่างนี้คือตัวอย่างเครื่องสร้างโค้ดที่ใช้ Aspose.Words และ Aspose.BarCode API ตัวอย่างนี้แสดงวิธีการแทรกภาพบาร์โค้ดที่ตำแหน่งฟิลด์ DISPLAYBARCODE ในเอกสาร Word:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

นอกจากนี้ คุณยังสามารถบันทึกเอกสารด้วยบาร์โค้ดที่โหลดหรือแทรกใหม่ในรูปแบบหน้าคงที่ เช่น PDF, XPS เป็นต้น ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการบันทึกเอกสาร Word เป็นรูปแบบ PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

สำหรับข้อมูลเพิ่มเติมเกี่ยวกับการแปลงเอกสารจากรูปแบบหนึ่งเป็นอีกรูปแบบหนึ่ง โปรดดูส่วนเอกสารประกอบ [แปลงเอกสาร](/words/java/convert-a-document/)

{{% /alert %}}

{{% alert color="primary" %}}

คุณยังสามารถใช้อินเทอร์เฟซ [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) เพื่อแปลงบาร์โค้ดที่ฝังอยู่ในเอกสาร Word เป็นรูปภาพได้ โดยสามารถดึงรูปภาพที่ได้มาจากเอกสารได้ โปรดดูรายละเอียดในบทความการทำงานกับรูปภาพ

{{% /alert %}}

## ระบุตัวเลือกบาร์โค้ด

เมื่อทำงานกับบาร์โค้ด คุณสามารถตั้งค่าคุณสมบัติเพิ่มเติมบางอย่างได้ Aspose.Words มอบคลาส [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) ให้กับคุณ ซึ่งเป็นคลาสสำหรับพารามิเตอร์บาร์โค้ดเพื่อส่งผ่านไปยัง BarcodeGenerator

Aspose.Words รองรับความละเอียด 96 ppi ที่ฝังไว้สำหรับรูปภาพที่สร้างด้วย [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) ซึ่งจำกัดขนาดขั้นต่ำของรูปภาพบาร์โค้ด เพื่อแก้ไขปัญหานี้ นักพัฒนาสามารถแทรกรูปภาพบาร์โค้ดที่มีความละเอียดเป้าหมายลงในเอกสาร Word ด้วยตนเองและบันทึกในรูปแบบที่ต้องการ
