---
title: ทำงานกับลายเซ็นดิจิทัลใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: ทำงานกับลายเซ็นดิจิทัล
linktitle: ทำงานกับลายเซ็นดิจิทัล
description: "ลงนามในเอกสารแบบดิจิทัลและตรวจจับ นับ ตรวจสอบ และลบลายเซ็นดิจิทัลที่มีอยู่โดยใช้ C#"
type: docs
weight: 40
url: /th/net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

ลายเซ็นดิจิทัลคือการใช้เทคโนโลยีลายเซ็นอิเล็กทรอนิกส์ในการลงนามในเอกสารและรับรองความถูกต้องของผู้ลงนามเพื่อรับประกันว่าเอกสารจะไม่ได้รับการแก้ไขนับตั้งแต่ลงนาม ลายเซ็นดิจิทัลแต่ละรายการมีเอกลักษณ์เฉพาะสำหรับผู้ลงนามแต่ละคน เนื่องจากปฏิบัติตามโปรโตคอล PKI เพื่อสร้างทั้งคีย์สาธารณะและส่วนตัว การเซ็นเอกสารแบบดิจิทัลหมายถึงการสร้างลายเซ็นโดยใช้คีย์ส่วนตัวของผู้เซ็นชื่อ ซึ่งใช้อัลกอริธึมทางคณิตศาสตร์เพื่อเข้ารหัสแฮชที่สร้างขึ้น

Aspose.Words ช่วยให้คุณตรวจจับ นับ หรือตรวจสอบลายเซ็นดิจิทัลที่มีอยู่ และยังเพิ่มลายเซ็นใหม่ลงในเอกสารของคุณเพื่อค้นหาการปลอมแปลงใดๆ ในนั้น คุณยังสามารถลบลายเซ็นดิจิทัลทั้งหมดออกจากเอกสารได้ ใช้คลาส [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) เพื่อทำงานกับลายเซ็นดิจิทัล

บทความนี้จะอธิบายวิธีการดำเนินการทั้งหมดข้างต้นเพื่อตรวจสอบความถูกต้องและความสมบูรณ์ของเอกสารดิจิทัล

{{% alert color="primary" %}}

โปรดทราบว่าคุณเข้าถึงลายเซ็นดิจิทัลของเอกสารได้เฉพาะเมื่อใช้เวอร์ชัน .NET Framework 2.0 ขึ้นไปเท่านั้น

{{% /alert %}}

{{% alert color="primary" %}}

**ลองออนไลน์**

คุณสามารถลองใช้ฟังก์ชันนี้กับ [ลายเซ็นออนไลน์ฟรี](https://products.aspose.app/words/signature) ของเราได้

{{% /alert %}}

## รูปแบบที่รองรับ

Aspose.Words ช่วยให้คุณทำงานกับลายเซ็นดิจิทัลในเอกสาร DOC, OOXML และ ODT และลงนามในเอกสารที่สร้างขึ้นในรูปแบบ PDF หรือ XPS

## ข้อจำกัดของลายเซ็นดิจิทัล

ตารางด้านล่างอธิบายข้อจำกัดบางประการที่คุณอาจต้องเผชิญขณะใช้งานลายเซ็นดิจิทัลผ่าน Aspose.Words รวมถึงตัวเลือกอื่นๆ บางอย่าง

|  ข้อจำกัด |  ทางเลือกอื่น |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  การสูญเสียลายเซ็นดิจิทัลในเอกสารหลังจากโหลดและบันทึก ดังนั้น การประมวลผลเอกสารไปยังเซิร์ฟเวอร์อาจทำให้ลายเซ็นดิจิทัลทั้งหมดสูญหายโดยไม่ต้องแจ้งให้ทราบ |  ตรวจสอบว่าเอกสารมีลายเซ็นดิจิทัลหรือไม่ และดำเนินการตามความเหมาะสมหากพบ ตัวอย่างเช่น ส่งการแจ้งเตือนไปยังลูกค้าเพื่อแจ้งให้ทราบว่าเอกสารที่พวกเขากำลังอัปโหลดมีลายเซ็นดิจิทัลที่จะหายไปหากมีการประมวลผล |
|  Aspose.Words รองรับการทำงานกับมาโครในเอกสาร แต่ Aspose.Words ยังไม่รองรับลายเซ็นดิจิทัลในมาโคร |  ส่งออกเอกสารกลับไปเป็นรูปแบบ Word ใดก็ได้ และใช้ Microsoft Word เพื่อเพิ่มลายเซ็นดิจิทัลลงในมาโคร |

## ตรวจจับ นับ และตรวจสอบลายเซ็นดิจิทัล

Aspose.Words ช่วยให้คุณตรวจจับลายเซ็นดิจิทัลในเอกสารโดยใช้วิธี [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) และคุณสมบัติ [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/) เป็นที่น่าสังเกตว่าการตรวจสอบดังกล่าวจะตรวจจับข้อเท็จจริงของลายเซ็นเท่านั้น แต่ไม่ใช่ความถูกต้อง

เอกสารสามารถลงนามได้มากกว่าหนึ่งครั้ง และผู้ใช้หลายรายสามารถทำได้ หากต้องการตรวจสอบความถูกต้องของลายเซ็นดิจิทัล คุณต้องโหลดลายเซ็นดิจิทัลจากเอกสารโดยใช้วิธี [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) และใช้คุณสมบัติ [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/) นอกจากนี้ Aspose.Words ยังให้คุณนับชุดลายเซ็นดิจิทัลทั้งหมดภายในเอกสารโดยใช้คุณสมบัติ [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/)

ทั้งหมดนี้เป็นวิธีที่มีประสิทธิภาพและปลอดภัยในการตรวจสอบลายเซ็นในเอกสารก่อนดำเนินการ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตรวจหาการมีอยู่ของลายเซ็นดิจิทัลและตรวจสอบ:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## สร้าง {#create-a-digital-signature} ลายเซ็นดิจิทัล

หากต้องการสร้างลายเซ็นดิจิทัล คุณจะต้องโหลดใบรับรองการลงนามที่ยืนยันตัวตน เมื่อคุณส่งเอกสารที่เซ็นชื่อแบบดิจิทัล คุณจะส่งใบรับรองและคีย์สาธารณะของคุณด้วย

Aspose.Words ช่วยให้คุณสร้างใบรับรอง X.509 ซึ่งเป็นใบรับรองดิจิทัลที่ใช้มาตรฐาน X.509 PKI ที่เป็นที่ยอมรับในระดับสากลเพื่อตรวจสอบว่าคีย์สาธารณะเป็นของผู้ลงนามที่รวมอยู่ในใบรับรอง เมื่อต้องการทำเช่นนี้ ให้ใช้วิธีการ [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) ภายในคลาส [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/)

ส่วนถัดไปจะอธิบายวิธีการเพิ่มลายเซ็นดิจิทัล บรรทัดลายเซ็น และวิธีการลงนามในเอกสาร PDF ที่สร้างขึ้น

### ลงนามในเอกสาร

Aspose.Words ช่วยให้คุณสามารถลงนามในเอกสาร DOC, DOCX, XPS หรือ ODT ในรูปแบบดิจิทัลโดยใช้วิธี [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) และคุณสมบัติ [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลงนามในเอกสารโดยใช้ผู้ถือใบรับรองและตัวเลือกการลงนาม:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### เพิ่มบรรทัดลายเซ็น

บรรทัดลายเซ็นคือการแสดงลายเซ็นดิจิทัลในเอกสารด้วยภาพ Aspose.Words ช่วยให้คุณสามารถแทรกบรรทัดลายเซ็นโดยใช้วิธี [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/) คุณยังสามารถตั้งค่าพารามิเตอร์สำหรับการเป็นตัวแทนนี้โดยใช้คลาส [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/)

ตัวอย่างเช่น รูปภาพด้านล่างแสดงให้เห็นว่าลายเซ็นที่ถูกต้องและไม่ถูกต้องสามารถแสดงได้อย่างไร

<img src="/words/net/working-with-digital-signatures/valid.png" alt="การวาดภาพ" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="การวาดภาพ" style="width:300px"/>

นอกจากนี้ หากเอกสารมีบรรทัดลายเซ็นและไม่มีลายเซ็นดิจิทัล ก็มีคุณสมบัติที่จะขอให้ผู้ใช้เพิ่มลายเซ็น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลงนามในเอกสารด้วยใบรับรองส่วนบุคคลและบรรทัดลายเซ็นเฉพาะ:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### ลงนามในเอกสาร PDF ที่สร้างขึ้น {#sign-a-generated-pdf-document}

Aspose.Words อนุญาตให้คุณลงนามและรับรายละเอียดทั้งหมดของเอกสาร PDF โดยใช้คุณสมบัติ [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลงนามใน PDF ที่สร้างขึ้น:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## ดึงค่าลายเซ็นดิจิทัล

Aspose.Words ยังให้ความสามารถในการดึงค่าลายเซ็นดิจิทัลจากเอกสารที่เซ็นชื่อแบบดิจิทัลเป็นอาร์เรย์ไบต์โดยใช้คุณสมบัติ [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการรับค่าลายเซ็นดิจิทัลเป็นอาร์เรย์ไบต์จากเอกสาร:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## ลบลายเซ็นดิจิทัล

Aspose.Words ช่วยให้คุณสามารถลบลายเซ็นดิจิทัลทั้งหมดออกจากเอกสารที่ลงนามโดยใช้วิธี [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโหลดและลบลายเซ็นดิจิทัลออกจากเอกสาร:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

โปรดทราบว่าคุณไม่สามารถลบลายเซ็นดิจิทัลเพียงลายเซ็นเดียวภายในเอกสารของคุณได้

{{% /alert %}}
