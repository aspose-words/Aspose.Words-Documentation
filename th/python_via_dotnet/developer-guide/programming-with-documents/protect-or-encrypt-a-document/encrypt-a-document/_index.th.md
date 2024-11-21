---
title: เข้ารหัสเอกสารใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: เข้ารหัสเอกสาร
linktitle: เข้ารหัสเอกสาร
description: "เข้ารหัสเอกสารของคุณโดยใช้อัลกอริธึมการเข้ารหัสที่เหมาะสมสำหรับรูปแบบเอกสารเฉพาะใน Python"
type: docs
weight: 20
url: /th/python-net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

การเข้ารหัสเป็นกระบวนการที่แปลข้อความที่อ่านได้เป็นลำดับไบต์ที่ไม่มีความหมาย ดังนั้นผู้ที่มีคีย์ถอดรหัสหรือรหัสลับเท่านั้นที่สามารถอ่านได้ กระบวนการนี้มีบทบาทสำคัญในการรักษาความปลอดภัยเนื้อหาของคุณ ช่วยในการเข้ารหัสเนื้อหา ตรวจสอบที่มาของเอกสาร พิสูจน์ว่าเนื้อหาไม่ได้รับการแก้ไขหลังจากส่ง และตรวจสอบให้แน่ใจว่าข้อมูลจากเอกสารนั้นปลอดภัย

บทความนี้จะอธิบายวิธีที่ Aspose.Words อนุญาตให้คุณเข้ารหัสเอกสาร และวิธีตรวจสอบว่าเอกสารมีการเข้ารหัสหรือไม่

## เข้ารหัสด้วยรหัสผ่าน

หากต้องการเข้ารหัสเอกสาร ให้ใช้คุณสมบัติ **รหัสผ่าน** เพื่อระบุรหัสผ่านที่ทำหน้าที่เป็นคีย์เข้ารหัส การดำเนินการนี้จะแก้ไขเนื้อหาในเอกสารของคุณและทำให้ไม่สามารถอ่านได้ เอกสารที่เข้ารหัสจะต้องป้อนรหัสผ่านนี้ก่อนจึงจะสามารถเปิดได้

{{% alert color="primary" %}}

คุณสามารถค้นหาคุณสมบัติ **รหัสผ่าน** ที่เหมาะสมสำหรับรูปแบบที่ต้องการได้ แต่ละรูปแบบการบันทึกเอกสารในโมดูล [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) มีคลาสที่สอดคล้องกันซึ่งมีตัวเลือกการบันทึกสำหรับรูปแบบนี้ ตัวอย่างเช่น คุณสมบัติ [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) ในคลาส [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) สำหรับ DOC หรือคุณสมบัติ [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) ในคลาส [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) สำหรับ DOCX, DOCM, DOTX, DOTM และ FlatOpc

{{% /alert %}}

{{% alert color="primary" %}}

โปรดทราบว่าเฉพาะเอกสารบางรูปแบบเท่านั้นที่รองรับการเข้ารหัส ตัวอย่างเช่น RTF ไม่รองรับการเข้ารหัส

{{% /alert %}}

ตารางด้านล่างแสดงรายการรูปแบบและอัลกอริธึมการเข้ารหัสที่ Aspose.Words รองรับ:

| รูปแบบ |  รองรับการเข้ารหัสขณะโหลด |  รองรับการเข้ารหัสขณะบันทึก |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  หมอ DOT |  การเข้ารหัส XOR การเข้ารหัส RC4 40 บิตCryptoAPI การเข้ารหัส RC4 |  การเข้ารหัส RC4 (40 บิต) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  การเข้ารหัสแบบมาตรฐาน ECMA-376 การเข้ารหัสแบบ Agile ของ ECMA-376 |  การเข้ารหัสมาตรฐาน ECMA-376 (AES128 + SHA1) |
|  โอดีที โอทีที |  การเข้ารหัส ODF (ปักเป้า/AES) |  การเข้ารหัส ODF (AES256 + SHA256) |
|  ไฟล์ PDF |                                                          |  การเข้ารหัส RC4 (40/128 บิต) |

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเข้ารหัสเอกสารด้วยรหัสผ่าน:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# DocSaveOptions only applies to Doc and Dot save formats.
options = aw.saving.DocSaveOptions(aw.SaveFormat.DOC);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.save(artifacts_dir + "DocSaveOptions.SaveAsDoc.doc", options)
{{< /highlight >}}

## ตรวจสอบว่าเอกสารถูกเข้ารหัสหรือไม่

ในบางกรณี คุณอาจมีเอกสารที่ไม่สามารถอ่านได้ และต้องการให้แน่ใจว่าเอกสารนั้นได้รับการเข้ารหัส และไม่เสียหายหรือถูกบีบอัด

หากต้องการตรวจสอบว่าเอกสารถูกเข้ารหัสหรือไม่ และจำเป็นต้องใช้รหัสผ่านหรือไม่ คุณสามารถใช้คุณสมบัติ [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) ของคลาส [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) ได้ คุณสมบัตินี้ยังช่วยให้คุณดำเนินการบางอย่างก่อนที่จะโหลดเอกสาร เช่น การแจ้งให้ผู้ใช้ระบุรหัสผ่าน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตรวจสอบการเข้ารหัสเอกสาร:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
saveOptions = aw.saving.OdtSaveOptions(aw.SaveFormat.ODT)
saveOptions.password = "MyPassword"

doc.Save(artifacts_dir + "File.DetectDocumentEncryption.odt", saveOptions)
            
# Create a `FileFormatInfo` object for this document.
info = aw.FileFormatUtil.detect_file_format(artifacts_dir + "File.DetectDocumentEncryption.odt")

# Verify the encryption status of our document.
self.assertTrue(info.is_encrypted)
{{< /highlight >}}

## เปิดเอกสารโดยมีหรือไม่มีรหัสผ่าน

เมื่อเราตรวจสอบให้แน่ใจว่ามีการเข้ารหัสเอกสารแล้ว เราสามารถลองเปิดเอกสารนี้โดยไม่ต้องใช้รหัสผ่าน ซึ่งน่าจะนำไปสู่ข้อยกเว้น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีลองเปิดเอกสารที่เข้ารหัสโดยไม่มีรหัสผ่าน:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# We will not be able to open this document with Microsoft Word or
# Aspose.Words without providing the correct password.
# The following line will throw an exception.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx"))
{{< /highlight >}}

หลังจากที่เราเห็นว่าเอกสารที่เข้ารหัสไม่สามารถเปิดได้โดยไม่ต้องใช้รหัสผ่าน เราก็สามารถลองเปิดเอกสารนั้นได้โดยการป้อนรหัสผ่าน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีลองเปิดเอกสารที่เข้ารหัสด้วยรหัสผ่าน:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx", aw.loading.LoadOptions("MyPassword"))

self.assertEqual("Hello world!", doc.get_text().strip())
{{< /highlight >}}
