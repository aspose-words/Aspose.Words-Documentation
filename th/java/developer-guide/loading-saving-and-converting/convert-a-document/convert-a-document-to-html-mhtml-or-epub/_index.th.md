---
title: แปลงเอกสารเป็นHTML,MHTMLหรือEPUB
second_title: Aspose.WordsสำหรับJava
articleTitle: แปลงเอกสารเป็นHTML,MHTMLหรือEPUB
linktitle: แปลงเอกสารเป็นHTML,MHTMLหรือEPUB
description: "ใช้Aspose.WordsสำหรับJavaเพื่อแปลงเอกสารจากคำหรือรูปแบบอื่นๆที่รองรับเป็นHTML,MHTMLหรือEPUB."
type: docs
weight: 20
url: /th/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

เอกสารในHTMLและMHTMLรูปแบบเค้าโครงไหลยังเป็นที่นิยมมากและสามารถนำมาใช้บนแพลตฟอร์ ด้วยเหตุนี้การแปลงเอกสารเป็นHTMLและMHTMLเป็นคุณลักษณะที่สำคัญของAspose.Words.

EPUB(สั้นๆสำหรับ"สิ่งพิมพ์อิเล็กทรอนิกส์")เป็นรูปแบบHTMLที่ใช้กันทั่วไปสำหรับการกระจายหนังสืออิเล็ก รูปแบบนี้ได้รับการสนับสนุนอย่างเต็มที่ในAspose.Wordsสำหรับการส่งออกหนังสืออิเล็กทรอนิกส์ที่เข้ากั.

## แปลงเอกสาร

สำหรับการแปลงแบบง่ายเป็นHTML,MHTMLหรือEPUBใช้หนึ่งในวิธีโอเวอร์โหลด[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) คุณสามารถบันทึกเอกสารไปยังแฟ้มหรือสตรีมและตั้งค่ารูปแบบการบันทึกเอกสารออกอย่า.

ตัวอย่างต่อไปนี้แสดงวิธีการแปลงDOCXเป็นHTMLด้วยการระบุรูปแบบการบันทึก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

เมื่อต้องการแปลงเอกสารเป็นMHTMLหรือEPUBให้ใช้`SaveFormat.MHTML`หรือ`SaveFormat.EPUB`ตามลำดับ.

## แปลงเอกสารที่มีข้อมูลการเดินทางไปกลับ

รูปแบบHTMLไม่รองรับฟีเจอร์มากมายMicrosoft Wordและหากเราต้องการคืนค่าโมเดลเอกสารให้ใกล้เคียงกับต้นฉบับมากที่สุดเท่าที่จะเป็นไปได้เราจำเป็นต้องบันทึกข้อมูลเพิ่มเติมบางอย่างภายในไฟล์HTML ข้อมูลดังกล่าวเรียกว่า"ข้อมูลการเดินทางไปกลับ" เพื่อจุดประสงค์นี้Aspose.Wordsให้ความสามารถในการส่งออกข้อมูลการเดินทางไปกลับเมื่อบันทึกเป็นHTML,MHTMLหรือEPUBโดยใช้คุณสมบัติ[ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) การบันทึกข้อมูลการเดินทางไปกลับช่วยให้การคืนค่าคุณสมบัติของเอกสารเช่นแท็บข้อคิดเห็นส่วนหัวและท้ายกระดาษระหว่างการโหลดเอกสารของรูปแบบที่ระบุไว้กลับไปยังออบเจกต์**Document**.

ค่าเริ่มต้นคือ**true**สำหรับHTMLและ**false**สำหรับMHTMLและEPUB:

- เมื่อ**true**ข้อมูลการเดินทางไปกลับจะถูกส่งออกเป็น-*CSSคุณสมบัติขององค์ประกอบHTMLที่เกี่ยวข้อง
- เมื่อ**false**ไม่มีข้อมูลการเดินทางไปกลับที่จะส่งออกเป็นไฟล์ที่ผลิต

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการส่งออกข้อมูลไปกลับเมื่อแปลงเอกสารจากDOCXเป็นHTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## ระบุตัวเลือกการบันทึกเมื่อแปลงเป็นHTML

Aspose.Wordsอนุญาตให้แปลงเอกสารคำเป็นHTMLโดยใช้ตัวเลือกการบันทึกค่าเริ่มต้นหรือแบบกำหนดเอง ตัวอย่างบางส่วนของตัวเลือกการบันทึกที่กำหนดเองจะอธิบายไว้ด้านล่าง.

### ระบุโฟลเดอร์สำหรับการบันทึกทรัพยากร

โดยใช้Aspose.Wordsเราสามารถระบุโฟลเดอร์ทางกายภาพที่ทรัพยากรทั้งหมด,เช่นรูปภาพ,แบบอักษร,และภายนอกCSS,จะถูกบันทึกไว้เมื่อเอกสารถูกแปลงเป็นHTML. โดยค่าเริ่มต้นนี้เป็นสตริงที่ว่างเปล่า.

การระบุคุณสมบัติ[ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder)เป็นวิธีที่ง่ายที่สุดในการตั้งค่าโฟลเดอร์ที่ควรเขียนรีซอร์สทั้งหมด เราสามารถใช้คุณสมบัติของแต่ละบุคคลเช่น[FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder)ซึ่งจะบันทึกแบบอักษรไปยังโฟลเดอร์ที่ระบุและ[ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder)ซึ่งจะบันทึกรูปภาพไปยังโฟลเดอร์ที่ระบุ เมื่อระบุพาธสัมพัทธ์**FontsFolder**และ**ImagesFolder**อ้างถึงโฟลเดอร์ที่แอสเซมบลีโค้ดตั้งอยู่**ResourceFolder**และ[CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName)อ้างถึงโฟลเดอร์ผลลัพธ์ที่HTMLตั้งอยู่.

ในตัวอย่างนี้**ResourceFolder**ระบุพาธสัมพัทธ์ เส้นทางนี้หมายถึงโฟลเดอร์ผลลัพธ์ที่บันทึกเอกสารHTML ค่าของคุณสมบัติ**ResourceFolderAlias**ถูกใช้เพื่อสร้างURLsสำหรับรีซอร์สทั้งหมด.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติเหล่านี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

การใช้คุณสมบัติ[ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias)เราสามารถระบุชื่อของโฟลเดอร์ที่ใช้สร้างURIsของทรัพยากรทั้งหมดที่เขียนลงในเอกสารHTML นี่เป็นวิธีที่ง่ายที่สุดในการระบุว่าควรสร้างURIsสำหรับไฟล์รีซอร์สทั้งหมดอย่างไร ข้อมูลเดียวกันสามารถระบุได้สำหรับรูปภาพและแบบอักษรแยกกันผ่านคุณสมบัติ[ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias)และ[FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias)ตามลำ.

HoweverCSS พฤติกรรมของ**FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** และ**CssStyleSheetFileName**คุณสมบัติจะไม่เปลี่ยนแปลง โปรดทราบว่าคุณสมบัติของ**CssStyleSheetFileName**ถูกใช้ทั้งสำหรับการระบุชื่อโฟลเดอร์และชื่อไฟล์.

- **ResourceFolder**มีลำดับความสำคัญต่ำกว่าโฟลเดอร์ที่ระบุผ่าน**FontsFolder**,**ImagesFolder**และ**CssStyleSheetFileName** หากไม่มีโฟลเดอร์ที่ระบุไว้ใน**ResourceFolder**จะถูกสร้างขึ้นโดยอัตโนมัติ.
- **ResourceFolderAlias**มีลำดับความสำคัญต่ำกว่า**FontsFolderAlias**และ**ImagesFolderAlias** ถ้า**ResourceFolderAlias**ว่างเปล่าค่าของคุณสมบัติ**ResourceFolder**จะถูกใช้เพื่อสร้างทรัพยากรURIs ถ้า**ResourceFolderAlias**ถูกตั้งค่าเป็น"."(จุด)ทรัพยากรURIsจะมีชื่อไฟล์โดยไม่มีการระบุพาธเท่านั้น.

### ส่งออกแหล่งข้อมูลฟอนต์เข้ารหัส Base64

Aspose.Words ให้ความสามารถในการระบุว่าควรฝังทรัพยากรแบบอักษรลงใน HTML ในการเข้ารหัส Base64 หรือไม่ หากต้องการดำเนินการนี้ ให้ใช้คุณสมบัติ [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) ซึ่งเป็นส่วนขยายของคุณสมบัติ [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) โดยค่าเริ่มต้น ค่าของคุณสมบัตินี้คือ **false** และแบบอักษรจะถูกเขียนลงในไฟล์แยกต่างหาก แต่ถ้าตัวเลือกนี้ถูกตั้งค่าเป็น **true** แบบอักษรจะถูกฝังลงใน CSS ของเอกสารในการเข้ารหัส Base64 คุณสมบัติ **ExportFontsAsBase64** จะมีผลกับรูปแบบ HTML เท่านั้น และไม่มีผลต่อ EPUB และ MHTML.

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการส่งออกแบบอักษรที่เข้ารหัส Base64 ไปยัง HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## ระบุตัวเลือกการบันทึกเมื่อแปลงเป็นEPUB

Aspose.Wordsอนุญาตให้แปลงเอกสารคำเป็นรูปแบบEPUBโดยใช้ตัวเลือกการบันทึกค่าเริ่มต้นหรือแบบกำหนดเอง คุณสามารถระบุจำนวนตัวเลือกได้โดยส่งผ่านอินสแตนซ์ของ[HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/)ไปยังวิธีการ[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions).

ตัวอย่างรหัสต่อไปนี้จะแสดงวิธีการแปลงเอกสารคำเป็นEPUBโดยระบุตัวเลือกการบันทึกแบบก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## ดูเพิ่มเติม

- [วิธีการส่งออกข้อมูลการเดินทางไปกลับเมื่อบันทึกลงในHTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
