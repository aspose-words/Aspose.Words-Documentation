---
title: ตรวจสอบรูปแบบไฟล์และตรวจสอบความเข้ากันได้ของรูปแบบ
second_title: Aspose.WordsสำหรับC++
articleTitle: ตรวจสอบรูปแบบไฟล์และตรวจสอบความเข้ากันได้ของรูปแบบ
linktitle: ตรวจสอบรูปแบบไฟล์และตรวจสอบความเข้ากันได้ของรูปแบบ
description: "กำหนดรูปแบบไฟล์ในC++หากคุณไม่แน่ใจว่าเนื้อหาจริงของไฟล์คืออะไรหรือตรวจสอบความ."
type: docs
weight: 20
url: /th/cpp/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

บางครั้งก็เป็นสิ่งจำเป็นในการกำหนดรูปแบบของเอกสารก่อนที่จะเปิดเพราะนามสกุลขอ ตัวอย่างเช่นเป็นที่รู้จักกันว่ารายงานคริสตัลมักจะแสดงผลเอกสารในรูปแบบRTFแต่ให้พวกเขนามสกุล.

Aspose.Wordsให้ความสามารถในการรับข้อมูลเกี่ยวกับชนิดแฟ้มเพื่อหลีกเลี่ยงข้อยกเว้นถ้าคุณไม่แน่ใจ.

## ตรวจหารูปแบบไฟล์โดยไม่มีข้อยกเว้น

เมื่อคุณจัดการกับเอกสารหลายฉบับในรูปแบบไฟล์ต่างๆ คุณอาจต้องแยกไฟล์ที่สามารถประมวลผลโดย Aspose.Words ออกจากไฟล์ที่ไม่สามารถประมวลผลได้ นอกจากนี้ คุณอาจต้องการทราบว่าเหตุใดจึงไม่สามารถประมวลผลเอกสารบางฉบับได้.

หากคุณพยายามโหลดแฟ้มลงในวัตถุ[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)และAspose.Wordsไม่สามารถรับรู้รูปแบบแฟ้มได้หรือไม่รองรับรูปแบบAspose.Wordsจะโยนข้อยกเว้น คุณสามารถจับข้อยกเว้นเหล่านั้นและวิเคราะห์ได้แต่Aspose.Wordsมีวิธีการ[DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/)ที่ช่วยให้เราสามารถกำหนดรูปแบบไฟล์ได้อย่างรวดเร็วโดยไม่ต้องโหลดเอกสารที่มีข้อยกเว้นที่เป็นไปได้ วิธีนี้ส่งกลับวัตถุ[FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/)ที่มีข้อมูลที่ตรวจพบเกี่ยวกับชนิดแฟ้ม.

{{% alert color="primary" %}}

DetectFileFormatจะตรวจสอบรูปแบบแฟ้มเท่านั้นแต่ไม่สามารถตรวจสอบรูปแบบแฟ้มได้ ไม่มีการรับประกันว่าไฟล์จะถูกเปิดเรียบร้อยแล้วแม้ว่า**DetectFileFormat**จะส่งกลับมาว่าเป็นหนึ่งในรูปแบบที่รองรับ เนื่องจากวิธีการ**DetectFileFormat**อ่านข้อมูลรูปแบบแฟ้มบางส่วนเท่านั้นเพียงพอสำหรับการตรวจสอบรูปแ.

{{% /alert %}}

## ตรวจสอบความเข้ากันได้ของรูปแบบไฟล์

เราสามารถตรวจสอบความเข้ากันได้ของรูปแบบของไฟล์ทั้งหมดในโฟลเดอร์ที่เลือกและ.

เนื่องจากเรากำลังจัดการกับเนื้อหาในโฟลเดอร์,สิ่งแรกที่เราต้องทำคือการได้รับคอลเลกชันของไฟล์ทั้งหมดในโฟลเดอร์นี้โดยใช้วิธีการ**GetFiles**ของ`Directory`ชั้น(จาก`System.IO`เนมสเปซ).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรับรายการของแฟ้มทั้งหมดในโฟลเดอร์:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

เมื่อไฟล์ทั้งหมดถูกรวบรวมแล้วส่วนที่เหลือของงานจะดำเนินการโดยวิธีการ**DetectFileFormat**ซึ่งจะตรวจ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำซ้ำรายการเก็บรวบรวมของแฟ้มตรวจสอบรูปแบบของแ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

แฟ้มจะถูกย้ายไปยังโฟลเดอร์ย่อยที่เหมาะสมโดยใช้วิธีการ`Move`ของคลาสของ`File`จากเนมสเปซ`System.IO`เดียวกัน.

ไฟล์ต่อไปนี้จะใช้ในตัวอย่างข้างต้น ชื่อไฟล์อยู่ทางด้านซ้ายและคำอธิบายของมันอยู่ทางด้านขวา:

| กลุ่มของไฟล์ | ป้อนเอกสาร | ชนิด |
| :- | :- | :- |
| รูปแบบไฟล์ที่รองรับ | Test File (DOC).doc | Microsoft Word95/6.0หรือMicrosoft Word97–2003 เอกสาร. |
|  | Test File (DOT).dot | Microsoft Word95/6.0หรือMicrosoft Word97–2003 เทมเพลต. |
|  | Test File (DOCX).docx | เปิดสำนักงานXMLเอกสารการประมวลผลเวิร์ดมล.โดยไม่มีแมโคร. |
|  | Test File (DOCM).docm | เปิดสำนักงานXMLเอกสารการประมวลผลคำด้วยมาโคร. |
|  | Test File (DOTX).dotx | เปิดสำนักงานXML. |
|  | Test File (DOTM).dotm | เปิดสำนักงานXML. |
|  | Test File (XML).xml | เอกสารOOXML. |
|  | Test File (RTF).rtf | เอกสารรูปแบบข้อความที่อุดมไปด้วย. |
|  | Test File (WordML).xml | Microsoft Word2003 เอกสารการประมวลผลคำ. |
|  | Test File (HTML).html | HTMLเอกสาร. |
|  | Test File (MHTML).mhtml | MHTML(เก็บเว็บ)เอกสาร. |
|  | Test File (ODT).odt | OpenDocumentข้อความ(OpenOfficeผู้เขียน). |
|  | Test File (OTT).ott | เทมเพลตเอกสารOpenDocument. |
|  | ไฟล์ทดสอบ(DocPreWord60).หมอ | Microsoft Word2.0เอกสาร. |
| เอกสารที่เข้ารหัส | Test File (Enc).doc | เข้ารหัสMicrosoft Word95/6.0หรือMicrosoft Word97–2003 เอกสาร. |
|  | Test File (Enc).docx | เปิดสำนักงานเข้ารหัสXMLเอกสารการประมวลผลเวิร์ดมล. |
| รูปแบบไฟล์ที่ไม่สนับสนุน | Test File (JPG).jpg | แฟ้มรูปภาพJPEG. |

