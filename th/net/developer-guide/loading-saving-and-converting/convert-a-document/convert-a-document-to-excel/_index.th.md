---
title: แปลง Word เป็น Excel ใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: แปลงเอกสารเป็น Excel
linktitle: แปลงเอกสารเป็น Excel
description: "แปลง PDF เป็น Excel, XML เป็น Excel, DOCX เป็น Excel C# บันทึกเอกสารในรูปแบบต่าง ๆ เป็น XLSX โดยใช้ C#"
type: docs
weight: 15
url: /th/net/convert-a-document-to-excel/
timestamp: 2024-07-09-19-00-42
---

การแปลงเอกสารจากรูปแบบหนึ่งไปเป็นอีกรูปแบบหนึ่งคือคุณสมบัติเด่นของ Aspose.Words คุณสามารถแปลงเอกสารในรูปแบบ [รูปแบบการโหลด](https://reference.aspose.com/words/net/aspose.words/loadformat/) ที่มีอยู่ให้เป็นรูปแบบ XLSX ได้

## แปลงเอกสารเป็น XLSX

การแปลงเอกสารเป็น XLSX เป็นกระบวนการที่ค่อนข้างซับซ้อน หากต้องการบันทึกเอกสารของคุณเป็นรูปแบบ XLSX โดยใช้ Aspose.Words ให้ใช้คลาส [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) และองค์ประกอบ `Xlsx` ใหม่ในการแจงนับ [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) ดังที่ได้กล่าวไว้ข้างต้น คุณสามารถบันทึกเอกสารในรูปแบบโหลดใดก็ได้ที่ Aspose.Words ถึง XLSX รองรับ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการบันทึก PDF เป็น XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

บางครั้งจำเป็นต้องระบุตัวเลือกเพิ่มเติม ซึ่งอาจส่งผลต่อผลลัพธ์ของการบันทึกเอกสารเป็น XLSX ตัวเลือกเหล่านี้สามารถระบุได้โดยใช้คลาส [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) ซึ่งมีคุณสมบัติที่กำหนดวิธีแสดงเอาต์พุต XLSX

{{% /alert %}}

## ค้นหาและแทนที่เมื่อบันทึกเป็น XLSX

นอกจากนี้ เมื่อใช้ Aspose.Words คุณสามารถค้นหาสตริงหรือนิพจน์ทั่วไปเฉพาะในเอกสารของคุณและแทนที่ด้วยสตริงที่ตรงกันที่คุณต้องการ จากนั้นคุณยังสามารถบันทึกผลลัพธ์เป็นรูปแบบ XLSX ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการค้นหาและแทนที่การดำเนินการและบันทึกผลลัพธ์ลงใน XLSX:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.Writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.MatchCase = true;

doc.Range.Replace("Ruby", "Jade", options);
doc.Save(ArtifactsDir + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## ระบุระดับการบีบอัดเมื่อบันทึกเป็น XLSX

คุณยังสามารถระบุระดับการบีบอัดเมื่อบันทึกโดยใช้คุณสมบัติ [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการระบุระดับการบีบอัดเมื่อบันทึกเป็นรูปแบบ XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## ดูสิ่งนี้ด้วย

- ส่วนเอกสารประกอบ [ป้องกันหรือเข้ารหัสเอกสาร](/words/th/net/protect-or-encrypt-a-document/) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับการป้องกันและการเข้ารหัสเอกสาร
- บทความ [ค้นหาและแทนที่](/words/th/net/find-and-replace/) สำหรับข้อมูลเพิ่มเติมเกี่ยวกับการค้นหาและการแทนที่เนื้อหาที่คุณต้องการ
