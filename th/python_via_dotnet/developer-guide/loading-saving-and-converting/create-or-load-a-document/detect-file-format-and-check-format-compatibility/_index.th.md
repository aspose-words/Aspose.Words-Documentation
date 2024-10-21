---
title: ตรวจจับรูปแบบไฟล์เมื่อโหลด
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ตรวจจับรูปแบบไฟล์และตรวจสอบความเข้ากันได้ของรูปแบบ
linktitle: ตรวจจับรูปแบบไฟล์และตรวจสอบความเข้ากันได้ของรูปแบบ
description: "กำหนดรูปแบบไฟล์ใน Python หากคุณไม่แน่ใจว่าเนื้อหาที่แท้จริงของไฟล์คืออะไร หรือเพื่อตรวจสอบความเข้ากันได้ของรูปแบบ"
type: docs
weight: 20
url: /th/python-net/detect-file-format-and-check-format-compatibility/
---

บางครั้งจำเป็นต้องกำหนดรูปแบบของเอกสารก่อนเปิด เนื่องจากนามสกุลไฟล์ไม่ได้รับประกันว่าเนื้อหาของไฟล์จะมีความเหมาะสม ตัวอย่างเช่น เป็นที่ทราบกันว่า Crystal Reports มักจะส่งออกเอกสารในรูปแบบ RTF แต่ให้นามสกุล .doc แก่พวกเขา

Aspose.Words ให้ความสามารถในการรับข้อมูลเกี่ยวกับประเภทไฟล์เพื่อหลีกเลี่ยงข้อยกเว้น หากคุณไม่แน่ใจว่าเนื้อหาที่แท้จริงของไฟล์นั้นคืออะไร

## ตรวจจับรูปแบบไฟล์โดยไม่มีข้อยกเว้น

เมื่อคุณจัดการกับเอกสารหลายฉบับในรูปแบบไฟล์ต่างๆ คุณอาจต้องแยกไฟล์ที่ Aspose.Words ประมวลผลได้ออกจากไฟล์ที่ไม่สามารถทำได้ คุณอาจต้องการทราบว่าเหตุใดเอกสารบางรายการจึงไม่สามารถประมวลผลได้

หากคุณพยายามโหลดไฟล์ลงในออบเจ็กต์ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) และ Aspose.Words ไม่รู้จักรูปแบบไฟล์หรือไม่รองรับรูปแบบนั้น Aspose.Words จะส่งข้อยกเว้น คุณสามารถตรวจจับข้อยกเว้นเหล่านั้นและวิเคราะห์ได้ แต่ Aspose.Words ยังมีวิธี [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) ที่ช่วยให้เราสามารถระบุรูปแบบไฟล์ได้อย่างรวดเร็วโดยไม่ต้องโหลดเอกสารที่มีข้อยกเว้นที่เป็นไปได้ เมธอดนี้ส่งคืนออบเจ็กต์ [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) ที่มีข้อมูลที่ตรวจพบเกี่ยวกับประเภทไฟล์

{{% alert color="primary" %}}

[detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) ตรวจสอบเฉพาะรูปแบบไฟล์ แต่ไม่ตรวจสอบรูปแบบไฟล์ ไม่มีการรับประกันว่าไฟล์จะเปิดได้สำเร็จ แม้ว่า [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) จะส่งคืนว่าเป็นหนึ่งในรูปแบบที่รองรับก็ตาม เนื่องจากวิธีการ [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) อ่านข้อมูลรูปแบบไฟล์เพียงบางส่วน ซึ่งเพียงพอสำหรับการตรวจสอบรูปแบบไฟล์ แต่ไม่เพียงพอสำหรับการตรวจสอบความถูกต้องโดยสมบูรณ์

{{% /alert %}}

## ตรวจสอบความเข้ากันได้ของรูปแบบไฟล์

เราสามารถตรวจสอบความเข้ากันได้ของรูปแบบไฟล์ทั้งหมดในโฟลเดอร์ที่เลือกและจัดเรียงตามรูปแบบในโฟลเดอร์ย่อยที่เกี่ยวข้อง

เนื่องจากเรากำลังจัดการกับเนื้อหาในโฟลเดอร์ สิ่งแรกที่เราต้องทำคือรวบรวมไฟล์ทั้งหมดในโฟลเดอร์นี้โดยใช้วิธี **รายการเดอร์** ของโมดูล **ระบบปฏิบัติการ**

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีรับรายการไฟล์ทั้งหมดในโฟลเดอร์:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-GetListOfFilesInFolder.py" >}}

เมื่อรวบรวมไฟล์ทั้งหมดแล้ว งานส่วนที่เหลือจะเสร็จสิ้นโดยวิธี [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) ซึ่งจะตรวจสอบรูปแบบไฟล์

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีวนซ้ำรายการไฟล์ที่รวบรวม ตรวจสอบรูปแบบของแต่ละไฟล์ และย้ายแต่ละไฟล์ไปยังโฟลเดอร์ที่เหมาะสม:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-CheckFormatCompatibility.py" >}}

ไฟล์จะถูกย้ายไปยังโฟลเดอร์ย่อยที่เหมาะสมโดยใช้วิธี **คัดลอกไฟล์** ของโมดูล **ชูทิล**

ไฟล์ต่อไปนี้ใช้ในตัวอย่างด้านบน ชื่อไฟล์อยู่ทางซ้าย และคำอธิบายอยู่ทางขวา:

| Group ของไฟล์ | เอกสารเข้า | พิมพ์ |
|  :-  |  :-  |  :-  |
| รูปแบบไฟล์ที่รองรับ | ไฟล์ทดสอบ (Doc).doc | เอกสาร Microsoft Word 95/6.0 หรือ Microsoft Word 97 – 2003 |
|  | ไฟล์ทดสอบ (`Dot`).dot | เทมเพลต Microsoft Word 95/6.0 หรือ Microsoft Word 97 – 2003 |
|  | ไฟล์ทดสอบ (Docx).docx | เอกสาร Office Open XML WordprocessingML ที่ไม่มีมาโคร |
|  | ไฟล์ทดสอบ (Docm).docm | เอกสาร Office Open XML WordprocessingML พร้อมมาโคร |
|  | ไฟล์ทดสอบ (Dotx).dotx | เทมเพลต Office Open XML WordprocessingML |
|  | ไฟล์ทดสอบ (Dotm).dotm | เทมเพลต Office Open XML WordprocessingML พร้อมมาโคร |
|  | ไฟล์ทดสอบ (XML).xml | เอกสาร FlatOPC OOXML |
|  | ไฟล์ทดสอบ (RTF).rtf | เอกสารรูปแบบ Rich Text |
|  | ไฟล์ทดสอบ (WordML).xml | เอกสาร Microsoft Word 2003 WordprocessingML |
|  | ไฟล์ทดสอบ (HTML).html | เอกสาร HTML |
|  | ไฟล์ทดสอบ (MHTML).mhtml | เอกสาร MHTML (เว็บเก็บถาวร) |
|  | ไฟล์ทดสอบ (Odt).odt | ข้อความ OpenDocument (นักเขียน OpenOffice) |
|  | ไฟล์ทดสอบ (Ott).ott | เทมเพลตเอกสาร OpenDocument |
|  | ไฟล์ทดสอบ (DocPreWord60).doc | เอกสาร Microsoft Word 2.0 |
| เอกสารที่เข้ารหัส | ไฟล์ทดสอบ (Enc).doc | เอกสาร Microsoft Word 95/6.0 หรือ Microsoft Word 97 – 2003 ที่เข้ารหัส |
|  | ไฟล์ทดสอบ (Enc).docx | เอกสาร Office Open XML WordprocessingML ที่เข้ารหัส |
| รูปแบบไฟล์ที่ไม่รองรับ | ไฟล์ทดสอบ (JPG).jpg | ไฟล์ภาพ JPEG |

