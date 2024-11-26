---
title: ทำงานกับลายเซ็นดิจิทัลในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: ทำงานกับลายเซ็นดิจิทัล
linktitle: ทำงานกับลายเซ็นดิจิทัล
description: "เซ็นชื่อเอกสารแบบดิจิทัลและตรวจจับนับตรวจสอบและลบลายเซ็นดิจิทัลที่มีอยู่ด้วยJava."
type: docs
weight: 30
url: /th/java/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

ลายเซ็นดิจิทัลคือการดำเนินการทางเทคโนโลยีของลายเซ็นอิเล็กทรอนิกส์ที่จะลงนามในเอกสารและรับรองความถูกต้องของผู้ลงนามเพื่อรับประกันว่าเอกสารที่ยังไม่ได้รับการแก้ไขเนื่องจากมีการลงนาม ลายเซ็นดิจิทัลแต่ละตัวมีเอกลักษณ์เฉพาะสำหรับผู้ลงนามแต่ละรายเนื่องจากการทำตามโพรโทคอลPKIเพื่อสร้างกุญแจสาธารณะและกุญแจส่วนตัว การลงนามในเอกสารแบบดิจิทัลหมายถึงการสร้างลายเซ็นโดยใช้คีย์ส่วนตัวของผู้ลงนามที่.

Aspose.Wordsช่วยให้คุณสามารถตรวจจับนับหรือตรวจสอบลายเซ็นดิจิทัลที่มีอยู่และยังเพิ่มลายเซ็นใหม่ลงในเอกสารของคุณเพื่อค้นหาการปลอมแปลงใดๆในนั้น คุณยังสามารถลบลายเซ็นดิจิทัลทั้งหมดออกจากเอกสาร ใช้คลาส[DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/)เพื่อทำงานกับลายเซ็นดิจิทัล.

บทความนี้อธิบายวิธีการทำทั้งหมดข้างต้นเพื่อตรวจสอบความถูกต้องและความสมบูรณ์ของ.

{{% alert color="primary" %}}

โปรดทราบว่าคุณสามารถเข้าถึงลายเซ็นดิจิทัลของเอกสารได้ก็ต่อเมื่อเรียกใช้เวอร์ชันJava6 ขึ้นไปเท่านั้น.

{{% /alert %}}

{{% alert color="primary" %}}

**ลองออนไลน์**

คุณสามารถลองฟังก์ชั่นนี้กับเรา [ฟรีลายเซ็นออนไลน์](https://products.aspose.app/words/signature).

{{% /alert %}}

## รูปแบบที่รองรับ

Aspose.Wordsช่วยให้คุณสามารถทำงานกับลายเซ็นดิจิทัลบนDOC,OOXMLและODTเอกสารและลงนามในเอกสารที่สร้างขึ้นในรูปแบบPDFหรือXPS.

## ข้อจำกัดของลายเซ็นดิจิทัล

ตารางด้านล่างอธิบายถึงข้อจำกัดบางประการที่คุณอาจเผชิญขณะทำงานกับลายเซ็นดิจิทัลผ่านAspose.Wordsและตัวเลือกอื่น.

| ข้อจำกัด | ตัวเลือกทางเลือก |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| การสูญเสียลายเซ็นดิจิทัลบนเอกสารหลังจากโหลดและบันทึก นั้นการประมวลผลเอกสารไปยังเซิร์ฟเวอร์อาจทำให้เกิดการสูญเสียของลายเซ็นดิจิทัลทั้. | ตรวจสอบว่าเอกสารมีลายเซ็นดิจิทัลและดำเนินการที่เหมาะสมหากพบว่ามี ตัวอย่างเช่นส่งการแจ้งเตือนไปยังไคลเอนต์แจ้งให้ทราบว่าเอกสารที่พวกเขาจะอัปโหลดมีลายเซ็นดิจิทัลที่จะสูญหายหากมีการประมวลผล. |
| Aspose.Wordsรองรับการทำงานกับแมโครในเอกสาร แต่Aspose.Wordsยังไม่รองรับลายเซ็นดิจิทัลบนแมโคร. | ส่งออกเอกสารกลับไปยังรูปแบบคำใดๆและใช้Microsoft Wordเพื่อเพิ่มลายเซ็นดิจิทัลไปยังแมโคร. |

## ตรวจจับนับและตรวจสอบลายเซ็นดิจิทัล

Aspose.Wordsช่วยให้คุณสามารถตรวจจับลายเซ็นดิจิทัลในเอกสารโดยใช้วิธีการ[DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream)และคุณสมบัติ[HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) มันเป็นที่น่าสังเกตว่าการตรวจสอบดังกล่าวจะตรวจสอบความเป็นจริงของลายเซ็นแต่ไม่.

เอกสารสามารถลงนามได้มากกว่าหนึ่งครั้งและสามารถทำได้โดยผู้ใช้ที่แตกต่างกัน เมื่อต้องการตรวจสอบความถูกต้องของลายเซ็นดิจิทัลคุณต้องโหลดจากเอกสารโดยใช้วิธีการ[LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream)และใช้คุณสมบัติ[IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) นอกจากนี้Aspose.Wordsช่วยให้คุณสามารถนับชุดของลายเซ็นดิจิทัลทั้งหมดภายในเอกสารโดยใช้คุณสมบัติ[Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount).

ทั้งหมดนี้มีวิธีที่มีประสิทธิภาพและปลอดภัยในการตรวจสอบเอกสารสำหรับลายเซ็นก่อนที่จ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตรวจสอบสถานะของลายเซ็นดิจิทัลและตรวจสอบ:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## สร้างลายเซ็นดิจิทัล {#create-a-digital-signature}

ในการสร้างลายเซ็นดิจิทัลคุณจะต้องโหลดใบรับรองการเซ็นชื่อที่ยืนยันตัวตน เมื่อคุณส่งเอกสารที่เซ็นชื่อแบบดิจิทัลคุณยังส่งใบรับรองและคีย์สาธารณะของคุณ.

Aspose.Wordsอนุญาตให้คุณสร้างใบรับรองเอ็กซ์ 509 ใบรับรองดิจิทัลที่ใช้มาตรฐาน 509PKIที่ยอมรับในระดับสากลเพื่ เมื่อต้องการทำเช่นนี้ให้ใช้วิธีการ[Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String)ภายในชั้นเรียน[CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/).

ส่วนถัดไปอธิบายวิธีการเพิ่มลายเซ็นดิจิทัลบรรทัดลายเซ็นและวิธีการลงชื่อเอกสารที่สร้างPDF.

### ลงชื่อเข้าใช้เอกสาร

Aspose.Wordsอนุญาตให้คุณลงนามในDOC,DOCXหรือODTเอกสารแบบดิจิทัลโดยใช้วิธีการ[Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder)และคุณสมบัติ[SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลงนามในเอกสารโดยใช้ผู้ถือใบรับรองและเครื่องหมาย:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### เพิ่มบรรทัดลายเซ็น

บรรทัดลายเซ็นคือการแสดงภาพของลายเซ็นดิจิทัลในเอกสาร Aspose.Wordsช่วยให้คุณสามารถแทรกบรรทัดลายเซ็นโดยใช้วิธีการ[DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) คุณยังสามารถตั้งค่าพารามิเตอร์สำหรับการแสดงนี้โดยใช้คลาส[SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/).

ตัวอย่างเช่นรูปภาพด้านล่างแสดงวิธีการแสดงลายเซ็นที่ถูกต้องและไม่ถูกต้อง.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

กสารประกอบด้วยบรรทัดลายเซ็นและไม่มีลายเซ็นดิจิทัลมีคุณลักษณะการขอให้ผู้ใช้เพิ่มลาย.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลงชื่อเอกสารที่มีใบรับรองส่วนบุคคลและบรรทัดลายเซ็น:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### ลงชื่อในเอกสารที่สร้างขึ้นPDF {#sign-a-generated-pdf-document}

Aspose.Wordsช่วยให้คุณสามารถลงนามและรับรายละเอียดทั้งหมดของเอกสารPDFโดยใช้คุณสมบัติ[PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเซ็นชื่อที่สร้างขึ้นPDF:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

ภาพด้านล่างแสดงให้เห็นว่าเอกสารที่สร้างขึ้นPDFถูกเปิดในAdobe Acrobatและลายเซ็นดิจิทัลได้รับการยืนยั.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## ดึงค่าลายเซ็นดิจิทัล

Aspose.Wordsนอกจากนี้ยังมีความสามารถในการดึงค่าลายเซ็นดิจิทัลจากเอกสารที่ลงนามแบบดิจิทัลเป็นอาร์เรย์ไบต์โดยใช้คุณสมบัติ[SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการขอรับค่าลายเซ็นดิจิทัลเป็นอาร์เรย์ไบต์จากเอกสาร:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## ลบลายเซ็นดิจิทัล

Aspose.Wordsช่วยให้คุณลบลายเซ็นดิจิทัลทั้งหมดออกจากเอกสารที่ลงนามโดยใช้วิธีการ[RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโหลดและเอาลายเซ็นดิจิทัลออกจากเอกสาร:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

โปรดทราบว่าคุณไม่สามารถลบลายเซ็นดิจิทัลเพียงตัวเดียวภายในเอกสารของคุณ.

{{% /alert %}}
