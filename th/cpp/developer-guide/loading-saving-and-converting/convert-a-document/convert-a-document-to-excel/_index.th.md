---
title: แปลงคำให้เก่งในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การประมวลผลข้อมูล,คีย์ข้อมูล
linktitle: การประมวลผลข้อมูล,คีย์ข้อมูล
description: "แปลงPDFเป็นเอกเซล,XMLเป็นเอกเซล,DOCXเป็นเอกเซลC++ บันทึกเอกสารในรูปแบบต่างๆไปที่XLSXโดยใช้C++."
type: docs
weight: 15
url: /th/cpp/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

การแปลงเอกสารจากรูปแบบหนึ่งไปยังอีกรูปแบบหนึ่งคือคุณลักษณะเรือธงของAspose.Words คุณสามารถแปลงเอกสารในรูปแบบใดก็ได้ที่มีอยู่[load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/)ไปยังXLSX.

## แปลงเอกสารเป็นXLSX

การแปลงเอกสารเป็นXLSXเป็นกระบวนการที่ค่อนข้างซับซ้อน เมื่อต้องการบันทึกเอกสารของคุณลงในรูปแบบXLSXโดยใช้Aspose.Wordsใช้**XlsxSaveOptions**คลาสและองค์ประกอบ`Xlsx`ใหม่ใน[SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)การแจงนับ ดังกล่าวข้างต้นคุณสามารถบันทึกเอกสารในรูปแบบโหลดใดๆที่ได้รับการสนับสนุนโดยAspose.WordsถึงXLSX.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการบันทึกPDFถึงXLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## ค้นหาและแทนที่เมื่อบันทึกเป็นXLSX

นอกจากนี้ยังใช้Aspose.Wordsคุณสามารถค้นหาสตริงหรือนิพจน์ปกติในเอกสารของคุณและแทนที่ด้วยสตริงที่ตรงกันที่คุณต้องการ จากนั้นคุณยังสามารถบันทึกผลลัพธ์ไปยังรูปแบบXLSX.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดำเนินการค้นหาและแทนที่การดำเนินงานและบันทึกผลลัพธ์เป็นXLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>();
auto builder = MakeObject<DocumentBuilder>(doc);

builder->Writeln(u"Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
auto options = MakeObject<FindReplaceOptions>();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options->set_MatchCase(true);

doc->get_Range()->Replace(u"Ruby", u"Jade", options);
doc->Save(ArtifactsDir + u"BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## ระบุระดับการบีบอัดเมื่อบันทึกเป็นXLSX

คุณยังสามารถระบุระดับการบีบอัดเมื่อบันทึกโดยใช้คุณสมบัติ**CompressionLevel**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการระบุระดับการบีบอัดเมื่อบันทึกลงในรูปแบบXLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## ดูเพิ่มเติม

- ส่วนเอกสาร [ปกป้องหรือเข้ารหัสเอกสาร](/words/cpp/protect-or-encrypt-a-document/) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับการปกป้องและการเข้ารหัสเอกสาร
- บทความ [ค้นหาและแทนที่](/words/cpp/find-and-replace/) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับการค้นหาและแทนที่เนื้อหาที่คุณต้องการ
