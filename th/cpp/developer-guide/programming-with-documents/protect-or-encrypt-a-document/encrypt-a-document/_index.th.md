---
title: เข้ารหัสเอกสารในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การเข้ารหัสเอกสาร
linktitle: การเข้ารหัสเอกสาร
description: "เข้ารหัสเอกสารของคุณโดยใช้อัลกอริทึมการเข้ารหัสที่เหมาะสมสำหรับรูปแบบเอกสารที่เฉพาะเจาะจง."
type: docs
weight: 20
url: /th/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

การเข้ารหัสลับเป็นกระบวนการที่แปลข้อความที่อ่านได้เป็นลำดับความหมายของไบต์ดังนั้ นการรักษาความปลอดภัยเนื้อหาของคุณ. ช่วยในการเข้ารหัสเนื้อหา,ตรวจสอบที่มาของเอกสาร,พิสูจน์ว่าเนื้อหายังไม่ได้รับการแก้ไขหลังจากที่มันถูกส่ง,และให้แน่ใจว่าข้อมูลจากเอกสารมีความปลอดภัย.

บทความนี้อธิบายวิธีที่Aspose.Wordsช่วยให้คุณสามารถเข้ารหัสเอกสารและวิธีการตรวจสอบว่าเอกสารมี.

## เข้ารหัสด้วยรหัสผ่าน

เมื่อต้องการเข้ารหัสเอกสารใช้คุณสมบัติ**Password**เพื่อระบุรหัสผ่านที่ทำหน้าที่เป็นคีย์การเข้ารหัส นี้จะปรับเปลี่ยนเนื้อหาของเอกสารของคุณและทำให้ไม่สามารถอ่านได้ เอกสารที่เข้ารหัสจะต้องมีการป้อนรหัสผ่านนี้ก่อนที่จะสามารถเปิดได้.

{{% alert color="primary" %}}

คุณสามารถค้นหาคุณสมบัติที่เหมาะสม**Password**สำหรับรูปแบบที่ต้องการ แต่ละรูปแบบการบันทึกเอกสารใน[Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving)มีคลาสที่สอดคล้องกันที่มีตัวเลือกการบันทึกสำหรับรูปแบบนี้ ตัวอย่างเช่นคุณสมบัติ[Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/)ในชั้นเรียน[DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/)สำหรับDOCหรือทรัพย์สิน[Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/)ในชั้นเรียน[OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/)สำหรับDOCX, DOCM, DOTX, DOTM, และFlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

โปรดทราบว่ารูปแบบเอกสารบางรูปแบบเท่านั้นที่สนับสนุนการเข้ารหัส ตัวอย่างเช่นRTFไม่สนับสนุนการเข้ารหัส.

{{% /alert %}}

ตารางด้านล่างแสดงรูปแบบและอัลกอริทึมการเข้ารหัสที่สนับสนุนโดยAspose.Words:

| รูปแบบ | การเข้ารหัสที่รองรับขณะกำลังโหลด | การเข้ารหัสที่รองรับขณะบันทึก |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XORการเข้ารหัส40 บิตRC4 EncryptionCryptoAPI RC4 การเข้ารหัส | RC4การเข้ารหัส(40 บิต) |
| DOCX, DOTX, DOCM, DOTM, แฟลตทอป, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 การเข้ารหัสมาตรฐานECMA-376 การเข้ารหัสแบบคล่องตัว | ECMA-376 การเข้ารหัสมาตรฐาน(AES128+SHA1) |
| ODT, OTT | ODFการเข้ารหัส(ปลาปักเป้า/AES) | ODFการเข้ารหัส(AES256+SHA256) |
| PDF | RC4การเข้ารหัส(40/128 บิต) |

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเข้ารหัสลับเอกสารด้วยรหัสผ่าน:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## ตรวจสอบว่าเอกสารถูกเข้ารหัสหรือไม่

ในบางกรณีคุณอาจมีเอกสารที่ไม่สามารถอ่านได้และต้องการให้แน่ใจว่าเอกสารถูกเข้ารหั.

หากต้องการตรวจจับว่าเอกสารได้รับการเข้ารหัสหรือไม่และจำเป็นต้องใส่รหัสผ่านหรือไม่ คุณสามารถใช้คุณสมบัติ [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) ของคลาส [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo) คุณสมบัตินี้ยังช่วยให้คุณดำเนินการบางอย่างก่อนโหลดเอกสาร เช่น แจ้งผู้ใช้ให้ใส่รหัสผ่าน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตรวจหาการเข้ารหัสเอกสาร:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## เปิดเอกสารที่มีหรือไม่มีรหัสผ่าน

เมื่อเราได้ทำให้แน่ใจว่าเอกสารที่มีการเข้ารหัส,เราสามารถพยายามที่จะเปิดเอกสารนี้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลองเปิดเอกสารที่เข้ารหัสโดยไม่มีรหัสผ่าน:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

หลังจากที่เราได้เห็นว่าเอกสารที่เข้ารหัสไม่สามารถเปิดได้โดยไม่ต้องใช้รหัสผ่าน,เราส.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลองเปิดเอกสารที่เข้ารหัสด้วยรหัสผ่าน:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
