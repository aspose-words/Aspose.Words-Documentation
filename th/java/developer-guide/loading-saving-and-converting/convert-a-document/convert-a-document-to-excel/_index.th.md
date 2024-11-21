---
title: แปลงคําเป็นเอกเซล Java
second_title: Aspose.Words สําหรับ Java
articleTitle: แปลงเอกสารเป็นเอกเซล
linktitle: แปลงเอกสารเป็นเอกเซล
description: "แปลง PDF เป็น Excel, XML เป็น Excel, DOCX ไปยัง Excel Java. บันทึกเอกสารในรูปแบบต่าง ๆ ไปยัง XLSX โดยใช้ Java."
type: docs
weight: 15
url: /th/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

การแปลงเอกสารจากรูปแบบหนึ่งไปเป็นอีกรูปแบบหนึ่ง คือคุณสมบัติของเรือธง Aspose.Words. คุณสามารถแปลงเอกสารใด ๆ ได้ [ฟอร์แมตการโหลด](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) ไปยังรูปแบบ XLSX

## แปลงเอกสารเป็น XLSX

การแปลงเอกสารเป็น XLSX เป็นกระบวนการที่ซับซ้อน เพื่อบันทึกเอกสารของคุณไปเป็นรูปแบบ XLSX โดยใช้ <span notrans="<span notrans=" Aspose.Words"=""></span>'"> ใช้ [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) ชั้นเรียนและใหม่ `Xlsx` องค์ประกอบใน [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) ปลดปล่อย ดังที่กล่าวไปด้านบน คุณสามารถบันทึกเอกสารในรูปแบบที่โหลดได้ที่รองรับ Aspose.Words ถึง XLSX

ตัวอย่างโค้ดต่อไปนี้ แสดงวิธีบันทึก PDF ถึง XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

บางครั้งมันจําเป็นต้องกําหนดตัวเลือกเพิ่มเติม ซึ่งอาจมีผลกระทบต่อการบันทึกเอกสารเป็น XLSX ตัวเลือกเหล่านี้สามารถกําหนดได้โดยการใช้ [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) คลาสนี้ จะบรรจุคุณสมบัติที่จะใช้กําหนดว่าจะให้การแสดงผล XLSX อย่างไร

{{% /alert %}}

## ค้นหาและแทนที่เมื่อมีการบันทึกไปยัง XLSX

ใช้ด้วย Aspose.Words, คุณสามารถค้นหาข้อความหรือเงื่อนไขการค้นหาได้ในเอกสารของคุณ และแทนที่ด้วยข้อความที่ตรงกับที่คุณต้องการ แล้วคุณก็สามารถบันทึกผลสําหรับรูปแบบ XLSX ได้ด้วย

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีการค้นหาและแทนที่ปฏิบัติการ และบันทึกผลลัพธ์ไปยัง XLSX:

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

## กําหนดระดับการบีบอัดเมื่อบันทึกไปยัง XLSX

คุณสามารถกําหนดระดับการบีบข้อมูลได้เมื่อทําการบันทึกโดยใช้ [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) ทรัพย์สิน

ตัวอย่างรหัสต่อไปนี้ แสดงให้เห็นว่าจะกําหนดระดับการบีบข้อมูลอย่างไร เมื่อมีการบันทึกในรูปแบบ XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## ดูด้วย

- ส่วนเอกสาร [ป้องกันหรือเข้ารหัสเอกสาร](/words/th/java/protect-or-encrypt-a-document/) สําหรับข้อมูลเกี่ยวกับการป้องกันและการเข้ารหัสเอกสาร
- บทความ [ค้นหาและแทนที่](/words/th/java/find-and-replace/) สําหรับข้อมูลเพิ่มเติมเกี่ยวกับการค้นหาและแทนที่เนื้อหาที่คุณต้องการ
