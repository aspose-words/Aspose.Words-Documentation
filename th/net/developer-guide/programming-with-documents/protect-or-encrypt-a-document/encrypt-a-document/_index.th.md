---
title: เข้ารหัสเอกสารใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: เข้ารหัสเอกสาร
linktitle: เข้ารหัสเอกสาร
description: "เข้ารหัสเอกสารของคุณโดยใช้อัลกอริธึมการเข้ารหัสที่เหมาะสมสำหรับรูปแบบเอกสารเฉพาะใน C#"
type: docs
weight: 20
url: /th/net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

การเข้ารหัสเป็นกระบวนการที่แปลข้อความที่อ่านได้เป็นลำดับไบต์ที่ไม่มีความหมาย ดังนั้นผู้ที่มีคีย์ถอดรหัสหรือรหัสลับเท่านั้นที่สามารถอ่านได้ กระบวนการนี้มีบทบาทสำคัญในการรักษาความปลอดภัยเนื้อหาของคุณ ช่วยในการเข้ารหัสเนื้อหา ตรวจสอบที่มาของเอกสาร พิสูจน์ว่าเนื้อหาไม่ได้รับการแก้ไขหลังจากส่ง และตรวจสอบให้แน่ใจว่าข้อมูลจากเอกสารนั้นปลอดภัย

บทความนี้จะอธิบายวิธีที่ Aspose.Words อนุญาตให้คุณเข้ารหัสเอกสาร และวิธีตรวจสอบว่าเอกสารมีการเข้ารหัสหรือไม่

## เข้ารหัสด้วยรหัสผ่าน

หากต้องการเข้ารหัสเอกสาร ให้ใช้คุณสมบัติ **Password** เพื่อระบุรหัสผ่านที่ทำหน้าที่เป็นคีย์เข้ารหัส การดำเนินการนี้จะแก้ไขเนื้อหาในเอกสารของคุณและทำให้ไม่สามารถอ่านได้ เอกสารที่เข้ารหัสจะต้องป้อนรหัสผ่านนี้ก่อนจึงจะสามารถเปิดได้

{{% alert color="primary" %}}

คุณสามารถค้นหาคุณสมบัติ **Password** ที่เหมาะสมสำหรับรูปแบบที่ต้องการได้ แต่ละรูปแบบการบันทึกเอกสารใน [กำลังบันทึกเนมสเปซ](https://reference.aspose.com/words/net/aspose.words.saving/) มีคลาสที่สอดคล้องกันซึ่งมีตัวเลือกการบันทึกสำหรับรูปแบบนี้ ตัวอย่างเช่น คุณสมบัติ [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) ในคลาส [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) สำหรับ DOC หรือคุณสมบัติ [Password](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/password/) ในคลาส [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/) สำหรับ DOCX, DOCM, DOTX, DOTM และ FlatOpc

{{% /alert %}}

{{% alert color="primary" %}}

โปรดทราบว่าเฉพาะเอกสารบางรูปแบบเท่านั้นที่รองรับการเข้ารหัส ตัวอย่างเช่น RTF ไม่รองรับการเข้ารหัส

{{% /alert %}}

ตารางด้านล่างแสดงรายการรูปแบบและอัลกอริธึมการเข้ารหัสที่ Aspose.Words รองรับ:

| รูปแบบ |  รองรับการเข้ารหัสขณะโหลด |  รองรับการเข้ารหัสขณะบันทึก |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  หมอ, DOT |  การเข้ารหัส XOR การเข้ารหัส RC4 40 บิตการเข้ารหัสลับ API RC4 |  การเข้ารหัส RC4 (40 บิต) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  การเข้ารหัสแบบมาตรฐาน ECMA-376 การเข้ารหัสแบบ Agile ของ ECMA-376 |  การเข้ารหัสมาตรฐาน ECMA-376 (AES128 + SHA1) |
|  โอดีที โอทีที |  การเข้ารหัส ODF (ปักเป้า/AES) |  การเข้ารหัส ODF (AES256 + SHA256) |
|  ไฟล์ PDF |  -                                                            |  การเข้ารหัส RC4 (40/128 บิต) |

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเข้ารหัสเอกสารด้วยรหัสผ่าน:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## ตรวจสอบว่าเอกสารถูกเข้ารหัสหรือไม่

ในบางกรณี คุณอาจมีเอกสารที่ไม่สามารถอ่านได้ และต้องการให้แน่ใจว่าเอกสารนั้นได้รับการเข้ารหัส และไม่เสียหายหรือถูกบีบอัด

หากต้องการตรวจสอบว่าเอกสารถูกเข้ารหัสหรือไม่ และจำเป็นต้องใช้รหัสผ่านหรือไม่ คุณสามารถใช้คุณสมบัติ [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) ของคลาส [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/) ได้ คุณสมบัตินี้ยังช่วยให้คุณดำเนินการบางอย่างก่อนที่จะโหลดเอกสาร เช่น การแจ้งให้ผู้ใช้ระบุรหัสผ่าน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตรวจสอบการเข้ารหัสเอกสาร:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## เปิดเอกสารโดยมีหรือไม่มีรหัสผ่าน

เมื่อเราตรวจสอบให้แน่ใจว่ามีการเข้ารหัสเอกสารแล้ว เราสามารถลองเปิดเอกสารนี้โดยไม่ต้องใช้รหัสผ่าน ซึ่งน่าจะนำไปสู่ข้อยกเว้น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีลองเปิดเอกสารที่เข้ารหัสโดยไม่มีรหัสผ่าน:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

หลังจากที่เราเห็นว่าเอกสารที่เข้ารหัสไม่สามารถเปิดได้โดยไม่ต้องใช้รหัสผ่าน เราก็สามารถลองเปิดเอกสารนั้นได้โดยการป้อนรหัสผ่าน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีลองเปิดเอกสารที่เข้ารหัสด้วยรหัสผ่าน:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
