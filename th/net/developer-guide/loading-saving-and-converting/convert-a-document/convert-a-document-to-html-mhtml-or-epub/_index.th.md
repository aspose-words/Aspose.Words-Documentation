---
title: แปลงเอกสารเป็น HTML, MHTML หรือ EPUB ใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: แปลงเอกสารเป็น HTML, MHTML หรือ EPUB
linktitle: แปลงเอกสารเป็น HTML, MHTML หรือ EPUB
description: "แปลงเอกสารจากเกือบทุกรูปแบบเป็น HTML หรือ MHTML รวมถึงรูปแบบ EPUB โดยใช้ C# คุณยังสามารถระบุตัวเลือกการบันทึกสำหรับการจัดการเอกสารเอาต์พุตได้"
type: docs
weight: 20
url: /th/net/convert-a-document-to-html-mhtml-or-epub/
---

เอกสารในรูปแบบเค้าโครงโฟลว์ HTML และ MHTML ก็ได้รับความนิยมอย่างมากเช่นกัน และสามารถใช้กับแพลตฟอร์มเว็บใดก็ได้ ด้วยเหตุนี้ การแปลงเอกสารเป็น HTML และ MHTML จึงเป็นคุณสมบัติที่สำคัญของ Aspose.Words

EPUB (ย่อมาจาก "สิ่งพิมพ์อิเล็กทรอนิกส์") เป็นรูปแบบ HTML ที่ใช้กันทั่วไปในการจำหน่ายหนังสืออิเล็กทรอนิกส์ รูปแบบนี้ได้รับการรองรับอย่างสมบูรณ์ใน Aspose.Words สำหรับการส่งออกหนังสืออิเล็กทรอนิกส์ที่เข้ากันได้กับอุปกรณ์การอ่านส่วนใหญ่

## แปลงเอกสาร

สำหรับการแปลงเป็น HTML, MHTML หรือ EPUB อย่างง่าย จะมีการใช้วิธีการโอเวอร์โหลดวิธี [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) อย่างใดอย่างหนึ่ง คุณสามารถบันทึกเอกสารลงในไฟล์หรือสตรีมและตั้งค่ารูปแบบการบันทึกเอกสารเอาต์พุตได้อย่างชัดเจน หรือกำหนดจากนามสกุลไฟล์

ตัวอย่างต่อไปนี้แสดงวิธีแปลง DOCX เป็น HTML โดยระบุรูปแบบการบันทึก:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

หากต้องการแปลงเอกสารเป็น MHTML หรือ EPUB ให้ใช้ `SaveFormat.Mhtml` หรือ `SaveFormat.Epub` ตามลำดับ

## แปลงเอกสารด้วยข้อมูลไป-กลับ

รูปแบบ HTML ไม่รองรับฟีเจอร์ Microsoft Word มากมาย และหากเราจำเป็นต้องคืนค่าโมเดลเอกสารให้ใกล้เคียงกับต้นฉบับมากที่สุด เราจำเป็นต้องบันทึกข้อมูลเพิ่มเติมบางอย่างไว้ในไฟล์ HTML ข้อมูลดังกล่าวเรียกอีกอย่างว่า "ข้อมูลไป-กลับ" เพื่อจุดประสงค์นี้ Aspose.Words ให้ความสามารถในการส่งออกข้อมูลไปกลับเมื่อบันทึกเป็น HTML, MHTML หรือ EPUB โดยใช้คุณสมบัติ [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/) การบันทึกข้อมูลไปกลับทำให้สามารถกู้คืนคุณสมบัติของเอกสาร เช่น แท็บ ความคิดเห็น ส่วนหัว และส่วนท้ายระหว่างการโหลดเอกสารของรูปแบบที่แสดงกลับเข้าไปในออบเจ็กต์ **Document**

ค่าเริ่มต้นคือ **true** สำหรับ HTML และ **false** สำหรับ MHTML และ EPUB:

- เมื่อ **true** ข้อมูลไปกลับจะถูกส่งออกเป็น - aw - * คุณสมบัติ CSS ขององค์ประกอบ HTML ที่เกี่ยวข้อง
- เมื่อ **false** จะไม่มีข้อมูลไปกลับที่จะส่งออกไปยังไฟล์ที่สร้างขึ้น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการส่งออกข้อมูลไปกลับเมื่อแปลงเอกสารจาก DOCX เป็น HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)

{{% /alert %}}

## ระบุตัวเลือกการบันทึกเมื่อแปลงเป็น HTML

Aspose.Words อนุญาตให้แปลงเอกสาร Word เป็น HTML โดยใช้ตัวเลือกการบันทึกเริ่มต้นหรือแบบกำหนดเอง ตัวอย่างของตัวเลือกการบันทึกแบบกำหนดเองมีอธิบายไว้ด้านล่างนี้

### ระบุโฟลเดอร์สำหรับการบันทึกทรัพยากร

การใช้ Aspose.Words ทำให้เราสามารถระบุโฟลเดอร์ทางกายภาพที่ทรัพยากรทั้งหมด เช่น รูปภาพ แบบอักษร และ CSS ภายนอก จะถูกบันทึกเมื่อแปลงเอกสารเป็น HTML โดยค่าเริ่มต้น นี่คือสตริงว่าง

การระบุคุณสมบัติ [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) เป็นวิธีที่ง่ายที่สุดในการตั้งค่าโฟลเดอร์ที่ควรเขียนทรัพยากรทั้งหมด เราสามารถใช้คุณสมบัติแต่ละรายการได้ เช่น [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) ซึ่งจะบันทึกแบบอักษรลงในโฟลเดอร์ที่ระบุ และ [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) ซึ่งบันทึกรูปภาพลงในโฟลเดอร์ที่ระบุ เมื่อมีการระบุเส้นทางสัมพัทธ์ **FontsFolder** และ **ImagesFolder** จะอ้างอิงถึงโฟลเดอร์ที่มีชุดโค้ดอยู่ ส่วน **ResourceFolder** และ [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) จะอ้างอิงถึงโฟลเดอร์เอาต์พุตซึ่งมีเอกสาร HTML อยู่

ในตัวอย่างนี้ **ResourceFolder** ระบุเส้นทางสัมพัทธ์ เส้นทางนี้อ้างอิงถึงโฟลเดอร์เอาต์พุตที่บันทึกเอกสาร HTML ค่าของคุณสมบัติ **ResourceFolderAlias** ใช้เพื่อสร้าง URL สำหรับทรัพยากรทั้งหมด

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติเหล่านี้:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

การใช้คุณสมบัติ [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/) เรายังสามารถระบุชื่อของโฟลเดอร์ที่ใช้ในการสร้าง URI ของทรัพยากรทั้งหมดที่เขียนลงในเอกสาร HTML นี่เป็นวิธีที่ง่ายที่สุดในการระบุวิธีสร้าง URI สำหรับไฟล์ทรัพยากรทั้งหมด ข้อมูลเดียวกันสามารถระบุสำหรับรูปภาพและแบบอักษรแยกกันผ่านคุณสมบัติ [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) และ [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/) ตามลำดับ

อย่างไรก็ตาม ไม่มีคุณสมบัติเฉพาะสำหรับ CSS ลักษณะการทำงานของคุณสมบัติ **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** และ **CssStyleSheetFileName** จะไม่เปลี่ยนแปลง โปรดทราบว่าคุณสมบัติ **CssStyleSheetFileName** ใช้สำหรับการระบุชื่อโฟลเดอร์และชื่อไฟล์

- **ResourceFolder** มีลำดับความสำคัญต่ำกว่าโฟลเดอร์ที่ระบุผ่าน **FontsFolder**, **ImagesFolder** และ **CssStyleSheetFileName** หากไม่มีโฟลเดอร์ที่ระบุใน **ResourceFolder** โฟลเดอร์นั้นจะถูกสร้างขึ้นโดยอัตโนมัติ
- **ResourceFolderAlias** มีลำดับความสำคัญต่ำกว่า **FontsFolderAlias** และ **ImagesFolderAlias** หาก **ResourceFolderAlias** ว่างเปล่า ระบบจะใช้ค่าของคุณสมบัติ **ResourceFolder** เพื่อสร้าง URI ทรัพยากร หากตั้งค่า **ResourceFolderAlias** เป็น "" (จุด) URI ทรัพยากรจะมีเฉพาะชื่อไฟล์โดยไม่ระบุเส้นทาง

### ส่งออกทรัพยากรแบบอักษรการเข้ารหัส Base64

Aspose.Words ให้ความสามารถในการระบุว่าควรฝังทรัพยากรแบบอักษรลงใน HTML ในการเข้ารหัส Base64 หรือไม่ ในการดำเนินการนี้ ให้ใช้คุณสมบัติ [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) ซึ่งเป็นส่วนขยายของคุณสมบัติ [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/) ตามค่าเริ่มต้น ค่าของมันคือ **false** และแบบอักษรจะถูกเขียนลงในไฟล์แยกกัน แต่หากตั้งค่าตัวเลือกนี้เป็น **true** แบบอักษรจะถูกฝังลงใน CSS ของเอกสารในการเข้ารหัส Base64 คุณสมบัติ **ส่งออกแบบอักษร AsBase64** มีผลกับรูปแบบ HTML เท่านั้น และไม่ส่งผลต่อ EPUB และ MHTML

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการส่งออกแบบอักษรที่เข้ารหัส Base64 เป็น HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## ระบุตัวเลือกการบันทึกเมื่อแปลงเป็น EPUB

Aspose.Words อนุญาตให้แปลงเอกสาร Word เป็นรูปแบบ EPUB โดยใช้ตัวเลือกการบันทึกเริ่มต้นหรือแบบกำหนดเอง คุณสามารถระบุตัวเลือกจำนวนหนึ่งได้โดยส่งอินสแตนซ์ของ [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) ไปยังวิธี [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีแปลงเอกสาร Word เป็น EPUB โดยระบุตัวเลือกการบันทึกแบบกำหนดเอง:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)

{{% /alert %}}

## ดูสิ่งนี้ด้วย

- [วิธีส่งออกข้อมูลไป-กลับเมื่อบันทึกเป็น HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
