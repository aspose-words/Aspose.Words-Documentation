---
title: ทํางานกับลายเซ็นดิจิทัลใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับลายเซ็นดิจิทัล
linktitle: ทํางานกับลายเซ็นดิจิทัล
description: "ลายเซ็นดิจิทัลและตรวจสอบ, จํานวน, ตรวจสอบ และเอาลายเซ็นดิจิทัลที่มีอยู่ออกไปโดยใช้ Java."
type: docs
weight: 30
url: /th/java/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

ลายเซ็นดิจิตัลเป็นเครื่องมือทางเทคโนโลยีของลายเซ็นอิเล็กทรอนิก เพื่อเซ็นเอกสารและยืนยันผู้เซ็นเพื่อรับประกันว่าเอกสารไม่ได้ถูกแก้ไข ตั้งแต่มีการลงนาม ลายเซ็นดิจิตัลแต่ละตัว ไม่ซ้ํากันสําหรับตัวเซ็นแต่ละตัว เนื่องจากทําตามโพรโทคอล PKI เพื่อสร้างทั้งกุญแจสาธารณะและกุญแจส่วนตัว การเซ็นเอกสารแบบดิจิตอล หมายถึงการสร้างลายเซ็นโดยใช้กุญแจส่วนตัวของผู้เซ็น ซึ่งอัลกอริทึมทางคณิตศาสตร์ถูกใช้ในการเข้ารหัส แฮช

Aspose.Words ให้คุณได้ตรวจสอบ, นับจํานวน หรือตรวจสอบลายเซ็นดิจิทัลที่มีอยู่ และยังได้เพิ่มลายเซ็นใหม่เข้าไปในเอกสารของคุณ เพื่อค้นหาการปรับเปลี่ยนระบบ คุณสามารถลบลายเซ็นดิจิตัลทั้งหมด ออกจากเอกสารได้ ใช้ [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) คลาสการทํางานด้วยลายเซ็นดิจิตอล

บทความ นี้ อธิบาย วิธี ทํา ทุก อย่าง ที่ กล่าว ข้าง ต้น เพื่อ ยืน ยัน ความ น่า เชื่อ ถือ และ ความ ซื่อ สัตย์ มั่นคง ของ เอกสาร ดิจิตอล.

{{% alert color="primary" %}}

ควรจําไว้ว่า คุณสามารถเข้าถึงลายเซ็นดิจิตัลของเอกสารของคุณได้ เมื่อมีการประมวลผล Java 6 รุ่น และข้างบน

{{% /alert %}}

{{% alert color="primary" %}}

**ลองออนไลน์ดูสิ**

คุณสามารถลองใช้ฟังก์ชันนี้กับ [ลายเซ็นออนไลน์ว่าง](https://products.aspose.app/words/signature).

{{% /alert %}}

## รูปแบบที่รองรับ

Aspose.Words ให้คุณได้ทํางานกับลายเซ็นดิจิทัลบน DOC, OOXML และเอกสาร ODT และเซ็นเอกสารที่สร้างใน PDF หรือ XPS รูปแบบ

## จํากัดลายเซ็นดิจิทัล

ตาราง ข้าง ล่าง นี้ พรรณนา ข้อ จํากัด บาง อย่าง ที่ คุณ อาจ เผชิญ ขณะ ทํา งาน ด้วย ลายเซ็น ดิจิตอล ผ่าน มา Aspose.Words, รวมทั้งทางเลือกอื่นด้วย

|  จํากัด |  ตัวเลือกต่าง ๆ |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  สูญเสียลายเซ็นดิจิทัลบนเอกสาร หลังจากโหลดและบันทึกลงแฟ้มแล้ว ดังนั้น การประมวลผลเอกสารไปยังเครื่องแม่ข่าย อาจจะก่อให้เกิดการสูญเสียลายเซ็นดิจิตัลทั้งหมด โดยไม่แจ้งให้ทราบล่วงหน้า |  ตรวจสอบว่าเอกสารมีลายเซ็นดิจิทัลหรือไม่ และทําการกระทําที่เหมาะสมหากพบเอกสารใด ๆ ตัว อย่าง เช่น ให้ ส่ง ข้อ เตือน ใจ ไป ยัง ลูก ค้า โดย แจ้ง ว่า เอกสาร ที่ พวก เขา กําลัง อัปโหลด นั้น มี ลายเซ็น ดิจิตอล ซึ่ง จะ สูญ หาย หาก มี การ ดําเนิน การ |
|  Aspose.Words รองรับการทํางานของแมโครในเอกสาร แต่ Aspose.Words ยังไม่รองรับลายเซ็นดิจิทัลบนแมโคร |  ส่งออกเอกสารกลับไปยังรูปแบบคําใด ๆ และใช้ Microsoft Word เพื่อเพิ่มลายเซ็นดิจิทัลไปยังแมโคร |

## ตรวจสอบ, เคานต์, และตรวจสอบลายเซ็นดิจิทัล

Aspose.Words ให้คุณได้ตรวจสอบลายเซ็นดิจิทัลในเอกสารโดยใช้ [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) วิธีการและ [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) ทรัพย์สิน ควร จะ สังเกต ว่า เช็ค ดัง กล่าว จะ ตรวจ สอบ เฉพาะ ข้อ เท็จ จริง ของ ลายเซ็น เท่า นั้น แต่ ไม่ ถูก ต้อง แม่นยํา.

เอกสารสามารถลงนามได้มากกว่าหนึ่งครั้ง ซึ่งทําได้โดยผู้ใช้ที่แตกต่างกัน เพื่อตรวจสอบความถูกต้องของลายเซ็นดิจิทัล คุณต้องโหลดมันจากเอกสารโดยใช้ [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) วิธีการและการใช้ [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) ทรัพย์สิน นอกจากนี้ Aspose.Words ให้คุณได้นับจํานวนลายเซ็นดิจิตัลทั้งหมดในเอกสารโดยใช้ [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) ทรัพย์สิน

ทั้ง หมด นี้ ทํา ให้ มี วิธี ที่ มี ประสิทธิภาพ และ ปลอด ภัย ใน การ ตรวจ สอบ เอกสาร สําหรับ ลายเซ็น ก่อน จะ นํา มา ใช้.

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการตรวจจับลายเซ็นดิจิทัลและตรวจสอบ

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## สร้างลายเซ็นดิจิทัล {#create-a-digital-signature}

เพื่อสร้างลายเซ็นดิจิทัล คุณจะต้องโหลดใบรับรองที่ใช้ยืนยันลายเซ็น เมื่อคุณส่งเอกสารที่ลงนามด้วยดิจิตอล คุณยังส่งใบรับรองและกุญแจสาธารณะของคุณด้วย

Aspose.Words ให้คุณได้สร้างใบรับรอง X.509 ซึ่งเป็นใบรับรองดิจิทัลที่ใช้มาตรฐาน X.509 PKI ที่ยอมรับได้ระหว่างประเทศ เพื่อตรวจสอบว่ากุญแจสาธารณะเป็นของตัวเซ็นที่รวมอยู่ในใบรับรอง เพื่อทําสิ่งนี้ ใช้ [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) วิธีการภายใน [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) ชั้นเรียน.

ส่วนถัดไปอธิบายวิธีการเพิ่มลายเซ็นดิจิทัล เส้นลายเซ็น และวิธีการเซ็นเอกสาร PDF

### เซ็นกํากับเอกสาร

Aspose.Words ให้คุณได้เซ็นเอกสารแบบ DOC, DOCX หรือ ODT ด้วยระบบดิจิทัล [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) วิธีการและ [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) คุณสมบัติ

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีเซ็นเอกสารโดยใช้ผู้ถือใบรับรอง และตัวเลือกการเซ็น:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### เพิ่มบรรทัดลายเซ็น

บรรทัดลายเซ็นคือการแสดงลายเซ็นภาพ ในเอกสาร Aspose.Words ให้คุณได้แทรกบรรทัดลายเซ็นโดยใช้ [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) วิธี คุณสามารถตั้งพารามิเตอร์สําหรับตัวแทนนี้โดยใช้ [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) ชั้นเรียน.

ตัว อย่าง เช่น ภาพ ข้าง ล่าง แสดง ว่า สามารถ แสดง ลายเซ็น ที่ ใช้ ได้ ผล และ ไม่ ได้.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

นอกจากนี้ หากเอกสารมีบรรทัดลายเซ็น และไม่มีลายเซ็นดิจิทัล มีคุณสมบัติที่จะขอให้ผู้ใช้ทําการเพิ่มลายเซ็น

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีเซ็นเอกสารโดยใช้ใบรับรองส่วนบุคคล และบรรทัดลายเซ็นเฉพาะ:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### ลายเซ็นเอกสาร PDF ที่ถูกสร้าง {#sign-a-generated-pdf-document}

Aspose.Words ให้คุณได้เซ็นและรับรายละเอียดทั้งหมดของเอกสาร PDF โดยใช้ [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) คุณสมบัติ

ตัวอย่างรหัสต่อไปนี้แสดงวิธีเซ็น PDF ที่สร้างขึ้น:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

ภาพด้านล่างนี้แสดงให้เห็นว่าเอกสาร PDF ที่ถูกสร้างถูกเปิดใช้ Adobe Acrobat และลายเซ็นดิจิทัลได้ถูกตรวจสอบแล้วว่าใช้ได้ในปัจจุบัน

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## รับค่าลายเซ็นดิจิทัล

Aspose.Words ยังให้ความสามารถในการดึงข้อมูลลายเซ็นดิจิตัลจากเอกสารที่มีลายเซ็นดิจิตัลเป็นลําดับโดยการใช้ [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) ทรัพย์สิน

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการรับค่าลายเซ็นดิจิทัล เป็นแฟ้มแบบไบต์จากเอกสาร:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## ลบลายเซ็นดิจิทัล

Aspose.Words ให้คุณได้เอาลายเซ็นดิจิตัลทั้งหมด ออกจากเอกสารที่มีลายเซ็นใช้ [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) วิธี

ตัวอย่างรหัสต่อไปนี้ แสดงวิธีโหลดและลบลายเซ็นดิจิทัลออกจากเอกสาร:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

โปรดสังเกตว่า คุณไม่สามารถเอาลายเซ็นดิจิทัลออกเพียงตัวเดียวภายในเอกสารของคุณได้

{{% /alert %}}
