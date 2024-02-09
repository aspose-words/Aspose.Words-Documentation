---
title: การทำงานกับลายเซ็นดิจิทัล
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับลายเซ็นดิจิทัล
linktitle: การทำงานกับลายเซ็นดิจิทัล
description: "ลงนามในเอกสารแบบดิจิทัลและตรวจจับ นับ ตรวจสอบ และลบลายเซ็นดิจิทัลที่มีอยู่โดยใช้ Python"
type: docs
weight: 40
url: /th/python-net/working-with-digital-signatures/
---

ลายเซ็นดิจิทัลจะใช้ในการตรวจสอบความถูกต้องของเอกสารเพื่อยืนยันว่าผู้ส่งเอกสารคือบุคคลที่พวกเขากล่าวว่าเป็น และเนื้อหาของเอกสารไม่ถูกแก้ไข

Aspose.Words รองรับเอกสารที่มีลายเซ็นดิจิทัลและให้สิทธิ์ในการเข้าถึงเอกสารเหล่านั้น ช่วยให้คุณสามารถตรวจจับและตรวจสอบลายเซ็นดิจิทัลในเอกสารและลงนามในเอกสาร PDF ที่สร้างขึ้นด้วยใบรับรองที่ให้มา ปัจจุบันลายเซ็นดิจิทัลได้รับการสนับสนุนบนเอกสาร DOC, OOXML และ ODT รองรับการลงนามในเอกสารที่สร้างขึ้นในรูปแบบ PDF

{{% alert color="primary" %}}

**ลองออนไลน์**

คุณสามารถลองใช้ฟังก์ชันนี้กับ [ลายเซ็นออนไลน์ฟรี](https://products.aspose.app/words/signature) ของเราได้

{{% /alert %}}

## ลายเซ็นดิจิทัลจะไม่ถูกเก็บรักษาไว้เมื่อเปิดและบันทึก

จุดสำคัญที่ควรทราบก็คือ เอกสารที่โหลดและบันทึกโดยใช้ Aspose.Words จะสูญเสียลายเซ็นดิจิทัลที่ลงนามในเอกสาร นี่คือการออกแบบโดยเป็นลายเซ็นดิจิทัลเพื่อให้แน่ใจว่าเนื้อหาไม่ได้รับการแก้ไข และยังตรวจสอบตัวตนของผู้ที่ลงนามในเอกสารอีกด้วย หลักการเหล่านี้จะถือเป็นโมฆะหากลายเซ็นต้นฉบับถูกส่งต่อไปยังเอกสารผลลัพธ์

ด้วยเหตุนี้ หากคุณประมวลผลเอกสารที่อัปโหลดไปยังเซิร์ฟเวอร์ อาจหมายความว่าคุณอาจสร้างความเสียหายให้กับเอกสารที่อัปโหลดไปยังเซิร์ฟเวอร์ของคุณในลักษณะนี้โดยไม่รู้ตัว ดังนั้นจึงเป็นการดีที่สุดที่จะตรวจสอบลายเซ็นดิจิทัลในเอกสารและดำเนินการตามความเหมาะสมหากพบ เช่น สามารถส่งการแจ้งเตือนไปยังลูกค้าเพื่อแจ้งให้ทราบว่าเอกสารที่พวกเขาส่งนั้นมีลายเซ็นดิจิทัลซึ่งจะหายไปหากเป็น ประมวลผล คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [ที่นี่](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx)

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

โค้ดด้านบนใช้วิธีการ [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) เพื่อตรวจสอบว่าเอกสารมีลายเซ็นดิจิทัลหรือไม่โดยไม่ได้โหลดเอกสารก่อน นี่เป็นวิธีที่มีประสิทธิภาพและปลอดภัยในการตรวจสอบลายเซ็นของเอกสารก่อนประมวลผล เมื่อดำเนินการ วิธีการจะส่งกลับวัตถุ [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) ที่ให้คุณสมบัติ [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/) คุณสมบัตินี้จะส่งคืน true หากเอกสารมีลายเซ็นดิจิทัลอย่างน้อย 1 รายการ สิ่งสำคัญคือต้องทราบว่าวิธีนี้ไม่ได้ตรวจสอบลายเซ็น แต่จะกำหนดว่ามีลายเซ็นอยู่หรือไม่เท่านั้น การตรวจสอบความถูกต้องของลายเซ็นดิจิทัลจะกล่าวถึงในส่วนถัดไป

{{% alert color="primary" %}}

คุณยังสามารถตรวจสอบว่าเอกสารมีลายเซ็นดิจิทัลหลังจากโหลดหรือไม่โดยการตรวจสอบคุณสมบัติ `Count` ของคอลเลกชัน [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/)

{{% /alert %}}

## ลายเซ็นดิจิทัลบนมาโคร (โครงการ VBA)

ลายเซ็นดิจิทัลบนมาโครไม่สามารถเข้าถึงหรือเซ็นชื่อได้ เนื่องจาก Aspose.Words ไม่ได้จัดการกับมาโครในเอกสารโดยตรง อย่างไรก็ตาม ลายเซ็นดิจิทัลบนมาโครจะยังคงอยู่เมื่อส่งออกเอกสารกลับไปเป็นรูปแบบคำใดๆ ลายเซ็นเหล่านี้สามารถรักษาไว้ในโค้ด VBA ได้เนื่องจากเนื้อหาไบนารีของมาโครจะไม่เปลี่ยนแปลง แม้ว่าตัวเอกสารจะถูกแก้ไขก็ตาม

### เข้าถึงและตรวจสอบลายเซ็นดิจิทัล

เอกสารสามารถมีลายเซ็นดิจิทัลได้หลายลายเซ็น ลายเซ็นเหล่านี้ทั้งหมดสามารถเข้าถึงได้ผ่านคอลเลกชัน [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) แต่ละออบเจ็กต์ที่ส่งคืนคือ [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) ซึ่งแสดงถึงลายเซ็นดิจิทัลรายการเดียวที่เป็นของเอกสาร ซึ่งจะทำให้สมาชิกสามารถตรวจสอบความถูกต้องของลายเซ็นได้

คุณสมบัติที่สำคัญที่สุดในการตรวจสอบด้วยลายเซ็นดิจิทัลคือความถูกต้องของลายเซ็นแต่ละรายการในเอกสาร ลายเซ็นทั้งหมดในเอกสารสามารถตรวจสอบได้ในครั้งเดียวโดยการเรียกคุณสมบัติ [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/) ซึ่งจะส่งกลับ true หากลายเซ็นทั้งหมดในเอกสารถูกต้อง หรือหากเอกสารไม่มีลายเซ็น และ false หากลายเซ็นดิจิทัลอย่างน้อยหนึ่งลายเซ็นไม่ถูกต้อง

ลายเซ็นแต่ละรายการสามารถตรวจสอบแยกกันได้โดยการโทรไปที่ [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/) ลายเซ็นอาจส่งคืนไม่ถูกต้องได้จากหลายสาเหตุ เช่น เอกสารมีการเปลี่ยนแปลงตั้งแต่การลงนามหรือใบรับรองหมดอายุ นอกจากนี้ยังสามารถเข้าถึงรายละเอียดเพิ่มเติมของลายเซ็นได้อีกด้วย ตัวอย่างโค้ดด้านล่างแสดงวิธีการตรวจสอบลายเซ็นแต่ละรายการในเอกสารและแสดงข้อมูลพื้นฐานเกี่ยวกับลายเซ็น คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [ที่นี่](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx)

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## การลงนามในเอกสาร Word

คลาส [DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) จัดเตรียมวิธีการลงนามในเอกสาร วิธี [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) ลงนามเอกสารต้นฉบับโดยใช้ [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) ที่กำหนดพร้อมลายเซ็นดิจิทัลและเขียนเอกสารที่ลงนามไปยังสตรีมปลายทาง

ตัวอย่างด้านล่างนี้แสดงวิธีการลงนามในเอกสารอย่างง่าย

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

ตัวอย่างด้านล่างแสดงวิธีการลงนามในเอกสารที่เข้ารหัส

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### การลงนามในเอกสาร Word ด้วย Signature Line

คุณสามารถลงนามในเอกสารต้นทางโดยใช้ [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) และ [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) ที่กำหนดพร้อมลายเซ็นดิจิทัล และเขียนเอกสารที่ลงนามไปยังไฟล์ปลายทาง การใช้คลาส [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) คุณสามารถระบุตัวเลือกสำหรับการลงนามเอกสาร ตัวอย่างด้านล่างแสดงวิธีการสร้างบรรทัดลายเซ็นใหม่และลงนามในเอกสาร

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

ตัวอย่างด้านล่างแสดงวิธีการแก้ไขบรรทัดลายเซ็นที่มีอยู่และลงนามในเอกสาร

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### การลงนามเอกสาร Word โดยใช้ตัวระบุผู้ให้บริการลายเซ็น

ตัวอย่างด้านล่างแสดงวิธีการลงนามในเอกสาร Word โดยใช้ตัวระบุผู้ให้บริการลายเซ็น ผู้ให้บริการการเข้ารหัสลับ (CSP) เป็นโมดูลซอฟต์แวร์อิสระที่ดำเนินการอัลกอริธึมการเข้ารหัสสำหรับการรับรองความถูกต้อง การเข้ารหัส และการเข้ารหัส MS Office ขอสงวนค่า {00000000-0000-0000-0000-000000000000} สำหรับผู้ให้บริการลายเซ็นเริ่มต้น

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### สร้างเอกสาร Word ลงนามบรรทัดลายเซ็นใหม่โดยใช้ตัวระบุผู้ให้บริการ

ตัวอย่างด้านล่างแสดงวิธีการสร้างบรรทัดลายเซ็นและลงนามในเอกสาร Word โดยใช้ตัวระบุผู้ให้บริการลายเซ็น

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## ดึงค่าลายเซ็นดิจิทัล

Aspose.Words ยังให้ความสามารถในการดึงค่าลายเซ็นดิจิทัลจากเอกสารที่เซ็นชื่อแบบดิจิทัลเป็นอาร์เรย์ไบต์โดยใช้คุณสมบัติ [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการรับค่าลายเซ็นดิจิทัลเป็นอาร์เรย์ไบต์จากเอกสาร:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}