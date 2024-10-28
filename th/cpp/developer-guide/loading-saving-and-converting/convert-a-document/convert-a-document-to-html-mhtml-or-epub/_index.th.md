---
title: แปลงเอกสารเป็นHTML,MHTMLหรือEPUB
second_title: Aspose.WordsสำหรับC++
articleTitle: แปลงเอกสารเป็นHTML,MHTMLหรือEPUB
linktitle: แปลงเอกสารเป็นHTML,MHTMLหรือEPUB
description: "แปลงเอกสารจากเกือบทุกรูปแบบเป็นHTMLหรือMHTMLรวมทั้งจัดรูปแบบEPUBโดยใช้C++ นอกจากนี้คุณยังสามารถระบุตัวเลือกบันทึกสำหรับการจัดการเอกสารที่ส่งออก."
type: docs
weight: 20
url: /th/cpp/convert-a-document-to-html-mhtml-or-epub/
---

เอกสารในHTMLและMHTMLรูปแบบเค้าโครงไหลยังเป็นที่นิยมมากและสามารถนำมาใช้บนแพลตฟอร์ ด้วยเหตุนี้การแปลงเอกสารเป็นHTMLและMHTMLเป็นคุณลักษณะที่สำคัญของAspose.Words.

EPUB(สั้นๆสำหรับ"สิ่งพิมพ์อิเล็กทรอนิกส์")เป็นรูปแบบHTMLที่ใช้กันทั่วไปสำหรับการกระจายหนังสืออิเล็ก รูปแบบนี้ได้รับการสนับสนุนอย่างเต็มที่ในAspose.Wordsสำหรับการส่งออกหนังสืออิเล็กทรอนิกส์ที่เข้ากั.

## แปลงเอกสาร

สำหรับการแปลงแบบง่ายเป็นHTML,MHTMLหรือEPUBใช้หนึ่งในวิธีโอเวอร์โหลด[Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) คุณสามารถบันทึกเอกสารไปยังแฟ้มหรือสตรีมและตั้งค่ารูปแบบการบันทึกเอกสารออกอย่า.

ตัวอย่างต่อไปนี้แสดงวิธีการแปลงDOCXเป็นHTMLด้วยการระบุรูปแบบการบันทึก:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

เมื่อต้องการแปลงเอกสารเป็นMHTMLหรือEPUBให้ใช้`SaveFormat.Mhtml`หรือ`SaveFormat.Epub`ตามลำดับ.

## แปลงเอกสารที่มีข้อมูลการเดินทางไปกลับ

รูปแบบHTMLไม่รองรับฟีเจอร์มากมายMicrosoft Wordและหากเราต้องการคืนค่าโมเดลเอกสารให้ใกล้เคียงกับต้นฉบับมากที่สุดเท่าที่จะเป็นไปได้เราจำเป็นต้องบันทึกข้อมูลเพิ่มเติมบางอย่างภายในไฟล์HTML ข้อมูลดังกล่าวเรียกว่า"ข้อมูลการเดินทางไปกลับ" เพื่อจุดประสงค์นี้Aspose.Wordsให้ความสามารถในการส่งออกข้อมูลการเดินทางไปกลับเมื่อบันทึกเป็นHTML,MHTMLหรือEPUBโดยใช้คุณสมบัติ[ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/) การบันทึกข้อมูลการเดินทางไปกลับช่วยให้การคืนค่าคุณสมบัติของเอกสารเช่นแท็บข้อคิดเห็นส่วนหัวและท้ายกระดาษระหว่างการโหลดเอกสารของรูปแบบที่ระบุไว้กลับไปยังออบเจกต์**Document**.

ค่าเริ่มต้นคือ**true**สำหรับHTMLและ**false**สำหรับMHTMLและEPUB:

- เมื่อ**true**ข้อมูลการเดินทางไปกลับจะถูกส่งออกเป็น-*CSSคุณสมบัติขององค์ประกอบHTMLที่เกี่ยวข้อง
- เมื่อ**false**ไม่มีข้อมูลการเดินทางไปกลับที่จะส่งออกเป็นไฟล์ที่ผลิต

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการส่งออกข้อมูลไปกลับเมื่อแปลงเอกสารจากDOCXเป็นHTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## ระบุตัวเลือกการบันทึกเมื่อแปลงเป็นHTML

Aspose.Wordsอนุญาตให้แปลงเอกสารคำเป็นHTMLโดยใช้ตัวเลือกการบันทึกค่าเริ่มต้นหรือแบบกำหนดเอง ตัวอย่างบางส่วนของตัวเลือกการบันทึกที่กำหนดเองจะอธิบายไว้ด้านล่าง.

### ระบุโฟลเดอร์สำหรับการบันทึกทรัพยากร

โดยใช้Aspose.Wordsเราสามารถระบุโฟลเดอร์ทางกายภาพที่ทรัพยากรทั้งหมด,เช่นรูปภาพ,แบบอักษร,และภายนอกCSS,จะถูกบันทึกไว้เมื่อเอกสารถูกแปลงเป็นHTML. โดยค่าเริ่มต้นนี้เป็นสตริงที่ว่างเปล่า.

การระบุคุณสมบัติ[ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/)เป็นวิธีที่ง่ายที่สุดในการตั้งค่าโฟลเดอร์ที่ควรเขียนรีซอร์สทั้งหมด เราสามารถใช้คุณสมบัติของแต่ละบุคคลเช่น[FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/)ซึ่งจะบันทึกแบบอักษรไปยังโฟลเดอร์ที่ระบุและ[ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/)ซึ่งจะบันทึกรูปภาพไปยังโฟลเดอร์ที่ระบุ เมื่อระบุพาธสัมพัทธ์**FontsFolder**และ**ImagesFolder**อ้างถึงโฟลเดอร์ที่แอสเซมบลีโค้ดตั้งอยู่**ResourceFolder**และ[CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/)อ้างถึงโฟลเดอร์ผลลัพธ์ที่HTMLตั้งอยู่.

ในตัวอย่างนี้**ResourceFolder**ระบุพาธสัมพัทธ์ เส้นทางนี้หมายถึงโฟลเดอร์ผลลัพธ์ที่บันทึกเอกสารHTML ค่าของคุณสมบัติ**ResourceFolderAlias**ถูกใช้เพื่อสร้างURLsสำหรับรีซอร์สทั้งหมด.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติเหล่านี้:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

การใช้คุณสมบัติ[ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/)เราสามารถระบุชื่อของโฟลเดอร์ที่ใช้สร้างURIsของทรัพยากรทั้งหมดที่เขียนลงในเอกสารHTML นี่คือวิธีที่ง่ายที่สุดในการระบุวิธีที่URIsควรสร้างสำหรับไฟล์รีซอร์สทั้งหมด ข้อมูลเดียวกันสามารถระบุได้สำหรับรูปภาพและแบบอักษรแยกกันผ่านคุณสมบัติ[ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/)และ[FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/)ตามลำ.

HoweverCSS พฤติกรรมของ**FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** และ**CssStyleSheetFileName**คุณสมบัติจะไม่เปลี่ยนแปลง โปรดทราบว่าคุณสมบัติของ**CssStyleSheetFileName**ถูกใช้ทั้งสำหรับการระบุชื่อโฟลเดอร์และชื่อไฟล์.

- **ResourceFolder**มีลำดับความสำคัญต่ำกว่าโฟลเดอร์ที่ระบุผ่าน**FontsFolder**,**ImagesFolder**และ**CssStyleSheetFileName** หากไม่มีโฟลเดอร์ที่ระบุไว้ใน**ResourceFolder**จะถูกสร้างขึ้นโดยอัตโนมัติ.
- **ResourceFolderAlias**มีลำดับความสำคัญต่ำกว่า**FontsFolderAlias**และ**ImagesFolderAlias** ถ้า**ResourceFolderAlias**ว่างเปล่าค่าของคุณสมบัติ**ResourceFolder**จะถูกใช้เพื่อสร้างทรัพยากรURIs ถ้า**ResourceFolderAlias**ถูกตั้งค่าเป็น"."(จุด)ทรัพยากรURIsจะมีชื่อไฟล์โดยไม่มีการระบุพาธเท่านั้น.

### ส่งออกฐาน64 การเข้ารหัสทรัพยากรแบบอักษร

Aspose.Wordsให้ความสามารถในการระบุว่าควรฝังทรัพยากรแบบอักษรลงในการHTMLในฐาน64 การเข้ารหัส เมื่อต้องการดำเนินการนี้ให้ใช้คุณสมบัติ[ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/)นี่เป็นส่วนขยายของคุณสมบัติ[ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/) โดยค่าเริ่มต้นค่าของมันคือ**false**และแบบอักษรจะถูกเขียนลงในแฟ้มแยกต่างหาก แต่ถ้าตัวเลือกนี้ถูกตั้งค่าเป็น**true**แบบอักษรจะถูกฝังลงในเอกสารCSSในการเข้ารหัสฐาน64 คุณสมบัติ**ExportFontsAsBase64**มีผลต่อรูปแบบHTMLเท่านั้นและไม่มีผลต่อEPUBและMHTML.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการส่งออกแบบอักษรที่เข้ารหัสฐาน64 ไปยังHTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## ระบุตัวเลือกการบันทึกเมื่อแปลงเป็นEPUB

Aspose.Wordsอนุญาตให้แปลงเอกสารคำเป็นรูปแบบEPUBโดยใช้ตัวเลือกการบันทึกค่าเริ่มต้นหรือแบบกำหนดเอง คุณสามารถระบุจำนวนตัวเลือกได้โดยส่งผ่านอินสแตนซ์ของ[HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/)ไปยังวิธีการ`Save`.

ตัวอย่างรหัสต่อไปนี้จะแสดงวิธีการแปลงเอกสารคำเป็นEPUBโดยระบุตัวเลือกการบันทึกแบบก:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
