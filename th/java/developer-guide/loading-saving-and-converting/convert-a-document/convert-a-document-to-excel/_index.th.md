---
title: แปลงคำให้เก่งในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การประมวลผลข้อมูล,คีย์ข้อมูล
linktitle: การประมวลผลข้อมูล,คีย์ข้อมูล
description: "แปลงPDFเป็นเอกเซล,XMLเป็นเอกเซล,DOCXเป็นเอกเซลJava บันทึกเอกสารในรูปแบบต่างๆไปที่XLSXโดยใช้Java."
type: docs
weight: 15
url: /th/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

การแปลงเอกสารจากรูปแบบหนึ่งไปยังอีกรูปแบบหนึ่งคือคุณลักษณะเรือธงของAspose.Words คุณสามารถแปลงเอกสารในรูปแบบใดก็ได้ที่มีอยู่[รูปแบบการโหลด](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)ไปยังXLSX.

## แปลงเอกสารเป็นXLSX

การแปลงเอกสารเป็นXLSXเป็นกระบวนการที่ค่อนข้างซับซ้อน เมื่อต้องการบันทึกเอกสารของคุณลงในรูปแบบXLSXโดยใช้Aspose.Wordsใช้[XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/)คลาสและองค์ประกอบ`Xlsx`ใหม่ใน[SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)การแจงนับ ดังกล่าวข้างต้นคุณสามารถบันทึกเอกสารในรูปแบบโหลดใดๆที่ได้รับการสนับสนุนโดยAspose.WordsถึงXLSX.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการบันทึกPDFถึงXLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

บางครั้งจำเป็นต้องระบุตัวเลือกเพิ่มเติมซึ่งอาจส่งผลต่อผลลัพธ์ของการบันทึกเอกสารเป็นXLSX อ็อพชันนี้สามารถระบุได้โดยใช้คลาสของ[XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/)ซึ่งประกอบด้วยคุณสมบัติที่กำหนดวิธีแสดงผลลัพธ์XLSX.

{{% /alert %}}

## ค้นหาและแทนที่เมื่อบันทึกเป็นXLSX

นอกจากนี้ยังใช้Aspose.Wordsคุณสามารถค้นหาสตริงหรือนิพจน์ปกติในเอกสารของคุณและแทนที่ด้วยสตริงที่ตรงกันที่คุณต้องการ จากนั้นคุณยังสามารถบันทึกผลลัพธ์ไปยังรูปแบบXLSX.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดำเนินการค้นหาและแทนที่การดำเนินงานและบันทึกผลลัพธ์เป็นXLSX:

{{< highlight java >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.setMatchCase(true);

doc.getRange().replace("Ruby", "Jade", options);
doc.save(getArtifactsDir() + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## ระบุระดับการบีบอัดเมื่อบันทึกเป็นXLSX

คุณยังสามารถระบุระดับการบีบอัดเมื่อบันทึกโดยใช้คุณสมบัติ[CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการระบุระดับการบีบอัดเมื่อบันทึกลงในรูปแบบXLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## ดูเพิ่มเติม

- ส่วนเอกสาร [ปกป้องหรือเข้ารหัสเอกสาร](/words/java/protect-or-encrypt-a-document/) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับการปกป้องและการเข้ารหัสเอกสาร
- บทความ [ค้นหาและแทนที่](/words/java/find-and-replace/) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับการค้นหาและแทนที่เนื้อหาที่คุณต้องการ
