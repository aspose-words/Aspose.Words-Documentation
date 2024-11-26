---
title: สร้างBarCodeในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: สร้างภาพที่กำหนดเองBarCode
linktitle: สร้างภาพที่กำหนดเองBarCode
description: "ตัวอย่างของการสร้างรูปร่างบาร์โค้ดโดยใช้Java."
type: docs
weight: 350
url: /th/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

บาร์โค้ดคือการแสดงภาพของข้อมูลในรูปแบบของเส้นขนานหรือรูปแบบ บาร์โค้ดถูกนำมาใช้กันอย่างแพร่หลายในอุตสาหกรรมต่างๆเช่นค้าปลีกโลจิสติกส์การดูแลสุขภาพการธนาคารและอื่นๆอีกมากมาย.

Microsoft Wordช่วยให้ผู้ใช้สามารถฝังบาร์โค้ดลงในเอกสารโดยตรงโดยใช้ฟิลด์ ผู้ใช้สามารถแทรกชนิดของบาร์โค้ดเช่นรหัสQRหรือบาร์โค้ดเชิงเส้นโดยใช้ [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) สนาม.

ในบทความนี้เราจะดูว่าฟิลด์BARCODEถูกนำมาใช้อย่างไรในAspose.Wordsและวิธีที่Aspose.Wordsช่วยให้ผู้ใช้สามารถทำงานกับเอกสารคำที่บาร์โค้ดได้ถูกเพิ่มเข้าไป.

## ประเภทบาร์โค้ดที่รองรับโดยAspose.Words

Aspose.Wordsรองรับบาร์โค้ดประเภทต่างๆ ชนิดบาร์โค้ดจะถูกส่งผ่านเป็นค่าสตริงในคุณสมบัติ[BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

ตั้งแต่การทำงานกับบาร์โค้ดในการทำงานของAspose.Wordsจะถูกจำกัดผู้ใช้สามารถใช้ห้องสมุดใดๆรวมทั้บาร์โค้ดหรือเขียนการแสดงผลของตัวเองที่จะทำงานร่วมกับบาร์โค้ด คุณสามารถเรียนรู้เพิ่มเติมเกี่ยวกับชนิดของบาร์โค้ด [สนับสนุนโดยแอสโปสBarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

เมื่อบันทึกรูปแบบคำที่สนับสนุนบาร์โค้ดคุณสามารถใช้ชนิดของบาร์โค้ดใดๆที่เป็น [สนับสนุนโดยMicrosoftคำ](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). หากชนิดของบาร์โค้ดไม่ถูกต้องถูกส่งผ่านคำจะแสดงข้อผิดพลาด.

เมื่อบันทึกรูปแบบอื่นๆเช่นPDF,Aspose.Wordsผู้รับมอบหมายการแสดงผลบาร์โค้ดไปยังรหัสผู้ใช้เพื่อให้ผู้ใช้จ.

## แทรกบาร์โค้ดลงในเอกสารหรือโหลดเอกสารที่มีบาร์โค้ดเพิ่ม

Aspose.Wordsให้ความสามารถในการ:

1. โปรแกรมแทรกบาร์โค้ดลงในเอกสารโดยใช้ [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) และ [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) รหัสฟิลด์
2. หรือโหลดเอกสารคำที่มีบาร์โค้ดใส่ลงไปแล้วสำหรับการทำงานต่อไป

Aspose.Wordsมีอินเตอร์เฟซสำหรับการสร้างบาร์โค้ดที่กำหนดเองที่ทำให้ใช้งานง่าย [Aspose.Words](https://products.aspose.com/words/java/) และ [แอสโปสBarCode](https://products.aspose.com/barcode/java/) ร่วมกันเพื่อแสดงภาพบาร์โค้ดในเอกสารที่ส่งออก ตัวอย่างเช่นคุณสามารถสร้างเอกสารDOC,OOXMLหรือRTFและเพิ่มฟิลด์DISPLAYBARCODEลงในฟิลด์นั้นโดยใช้Aspose.Words หรือคุณสามารถโหลดDOC,OOXMLหรือRTFเอกสารที่มีDISPLAYBARCODEฟิลด์ที่มีอยู่แล้วในนั้นและให้การดำเนินงานของเครื่.

ฟิลด์DISPLAYBARCODEทั่วไปมีไวยากรณ์ต่อไปนี้:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

ด้านล่างนี้เป็นเครื่องกำเนิดไฟฟ้ารหัสตัวอย่างโดยใช้Aspose.WordsและแอสโพสBarCode APIs. ตัวอย่างนี้แสดงวิธีการแทรกรูปภาพบาร์โค้ดที่DISPLAYBARCODEตำแหน่งฟิลด์ในเอกสารคำ:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

นอกจากนี้คุณยังสามารถบันทึกเอกสารด้วยบาร์โค้ดที่โหลดหรือแทรกใหม่ในรูปแบบหน้าคงที่เช่นPDF,XPSฯลฯ ตัวอย่างรหัสต่อไปนี้แสดงวิธีการบันทึกเอกสารคำลงในรูปแบบPDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

สำหรับข้อมูลเพิ่มเติมเกี่ยวกับการแปลงเอกสารจากรูปแบบหนึ่งไปยังอีกให้ดูที่ [แปลงเอกสาร](/words/java/convert-a-document/) ส่วนเอกสาร.

{{% /alert %}}

{{% alert color="primary" %}}

นอกจากนี้คุณยังสามารถใช้อินเตอร์เฟซ[IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/)เพื่อแปลงบาร์โค้ดที่ฝังอยู่ในเอกสารคำเป็นภาพ ภาพที่เกิดขึ้นสามารถสกัดจากเอกสาร-ดูการทำงานกับบทความภาพสำหรับรายละเอียด.

{{% /alert %}}

## ระบุตัวเลือกบาร์โค้ด

เมื่อทำงานกับบาร์โค้ดคุณสามารถตั้งค่าคุณสมบัติเพิ่มเติมบางอย่าง Aspose.Wordsให้คุณ[BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/)ชั้นชั้นสำหรับพารามิเตอร์บาร์โค้ดที่จะผ่านไปBarcodeGenerator.

Aspose.Wordsรองรับความละเอียด 96 จุดอ่อนที่ฝังตัวสำหรับภาพที่สร้างขึ้นด้วย[IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/)ซึ่งจะจำกัดขนาดขั้นต่ำขอ Toแทรกภาพบาร์โค้ดที่มีความละเอียดเป้าหมายลงในเอกสารคำและบันทึกไว้ในรูปแบบที่ สำหรับรายละเอียดเพิ่มเติมและตัวอย่างในการทำงานกับบาร์โค้ดโปรดดูบทความ [อ่านบาร์โค้ดจากเอกสารคำ](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
