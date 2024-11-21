---
title: แปลงเอกสารเป็น HTML
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: แปลงเอกสารเป็น HTML, MHTML หรือ EPUB
linktitle: แปลงเอกสารเป็น HTML, MHTML หรือ EPUB
description: "แปลงเอกสารจากเกือบทุกรูปแบบเป็น HTML หรือ MHTML รวมถึงรูปแบบ EPUB โดยใช้ Python คุณยังสามารถระบุตัวเลือกการบันทึกสำหรับการจัดการเอกสารเอาต์พุตได้"
type: docs
weight: 20
url: /th/python-net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-01-27-14-07-04
---

เอกสารในรูปแบบเค้าโครงโฟลว์ HTML และ MHTML ก็ได้รับความนิยมอย่างมากเช่นกัน และสามารถใช้กับแพลตฟอร์มเว็บใดก็ได้ ด้วยเหตุนี้ การแปลงเอกสารเป็น HTML และ MHTML จึงเป็นคุณสมบัติที่สำคัญของ Aspose.Words

EPUB (ย่อมาจาก "สิ่งพิมพ์อิเล็กทรอนิกส์") เป็นรูปแบบ HTML ที่ใช้กันทั่วไปในการจำหน่ายหนังสืออิเล็กทรอนิกส์ รูปแบบนี้ได้รับการรองรับอย่างสมบูรณ์ใน Aspose.Words สำหรับการส่งออกหนังสืออิเล็กทรอนิกส์ที่เข้ากันได้กับอุปกรณ์การอ่านส่วนใหญ่

## แปลงเอกสาร

สำหรับการแปลงเป็น HTML, MHTML หรือ EPUB อย่างง่าย จะมีการใช้วิธีการโอเวอร์โหลดวิธี [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) อย่างใดอย่างหนึ่ง คุณสามารถบันทึกเอกสารลงในไฟล์หรือสตรีมและตั้งค่ารูปแบบการบันทึกเอกสารเอาต์พุตได้อย่างชัดเจน หรือกำหนดจากนามสกุลไฟล์

ตัวอย่างต่อไปนี้แสดงวิธีแปลง DOCX เป็น HTML โดยระบุรูปแบบการบันทึก:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

หากต้องการแปลงเอกสารเป็น MHTML หรือ EPUB ให้ใช้ [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) หรือ [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub) ตามลำดับ

## แปลงเอกสารด้วยข้อมูลไป-กลับ

รูปแบบ HTML ไม่รองรับฟีเจอร์ Microsoft Word มากมาย และหากเราจำเป็นต้องคืนค่าโมเดลเอกสารให้ใกล้เคียงกับต้นฉบับมากที่สุด เราจำเป็นต้องบันทึกข้อมูลเพิ่มเติมบางอย่างไว้ในไฟล์ HTML ข้อมูลดังกล่าวเรียกอีกอย่างว่า "ข้อมูลไป-กลับ" เพื่อจุดประสงค์นี้ Aspose.Words ให้ความสามารถในการส่งออกข้อมูลไปกลับเมื่อบันทึกเป็น HTML, MHTML หรือ EPUB โดยใช้คุณสมบัติ **ส่งออก_ไป-กลับ_ข้อมูล** การบันทึกข้อมูลไปกลับทำให้สามารถกู้คืนคุณสมบัติของเอกสาร เช่น แท็บ ความคิดเห็น ส่วนหัว และส่วนท้ายระหว่างการโหลดเอกสารของรูปแบบที่แสดงกลับเข้าไปในออบเจ็กต์ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)

ค่าเริ่มต้นคือ *True* สำหรับ HTML และ *False* สำหรับ MHTML และ EPUB:

- เมื่อ *True* ข้อมูลไปกลับจะถูกส่งออกเป็น - aw - * คุณสมบัติ CSS ขององค์ประกอบ HTML ที่เกี่ยวข้อง
- เมื่อ *False* จะไม่มีข้อมูลไปกลับที่จะส่งออกไปยังไฟล์ที่สร้างขึ้น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการส่งออกข้อมูลไปกลับเมื่อแปลงเอกสารจาก DOCX เป็น HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)

{{% /alert %}}

## ระบุตัวเลือกการบันทึกเมื่อแปลงเป็น HTML

Aspose.Words อนุญาตให้แปลงเอกสาร Word เป็น HTML โดยใช้ตัวเลือกการบันทึกเริ่มต้นหรือแบบกำหนดเอง ตัวอย่างของตัวเลือกการบันทึกแบบกำหนดเองมีอธิบายไว้ด้านล่างนี้

### ระบุโฟลเดอร์สำหรับการบันทึกทรัพยากร

การใช้ Aspose.Words ทำให้เราสามารถระบุโฟลเดอร์ทางกายภาพที่ทรัพยากรทั้งหมด เช่น รูปภาพ แบบอักษร และ CSS ภายนอก จะถูกบันทึกเมื่อแปลงเอกสารเป็น HTML โดยค่าเริ่มต้น นี่คือสตริงว่าง

การระบุคุณสมบัติ [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) เป็นวิธีที่ง่ายที่สุดในการตั้งค่าโฟลเดอร์ที่ควรเขียนทรัพยากรทั้งหมด เราสามารถใช้คุณสมบัติแต่ละรายการได้ เช่น [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) ซึ่งจะบันทึกแบบอักษรลงในโฟลเดอร์ที่ระบุ และ [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) ซึ่งบันทึกรูปภาพลงในโฟลเดอร์ที่ระบุ เมื่อมีการระบุเส้นทางสัมพัทธ์ [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) และ [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) อ้างถึงโฟลเดอร์ที่มีการประกอบโค้ดอยู่ [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) และ [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) อ้างอิงถึงโฟลเดอร์เอาต์พุตซึ่งมีเอกสาร HTML อยู่

ในตัวอย่างนี้ [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) ระบุเส้นทางสัมพัทธ์ เส้นทางนี้อ้างอิงถึงโฟลเดอร์เอาต์พุตที่บันทึกเอกสาร HTML ค่าของคุณสมบัติ [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) ใช้เพื่อสร้าง URL สำหรับทรัพยากรทั้งหมด

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติเหล่านี้:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

การใช้คุณสมบัติ [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) เรายังสามารถระบุชื่อของโฟลเดอร์ที่ใช้ในการสร้าง URI ของทรัพยากรทั้งหมดที่เขียนลงในเอกสาร HTML นี่เป็นวิธีที่ง่ายที่สุดในการระบุวิธีสร้าง URI สำหรับไฟล์ทรัพยากรทั้งหมด ข้อมูลเดียวกันสามารถระบุสำหรับรูปภาพและแบบอักษรแยกกันผ่านคุณสมบัติ [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) และ [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) ตามลำดับ

อย่างไรก็ตาม ไม่มีคุณสมบัติเฉพาะสำหรับ CSS ลักษณะการทำงานของคุณสมบัติ [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) และ [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) จะไม่เปลี่ยนแปลง โปรดทราบว่าคุณสมบัติ [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) ใช้สำหรับการระบุชื่อโฟลเดอร์และชื่อไฟล์

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) มีลำดับความสำคัญต่ำกว่าโฟลเดอร์ที่ระบุผ่าน [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) และ [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) หากไม่มีโฟลเดอร์ที่ระบุใน [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) โฟลเดอร์นั้นจะถูกสร้างขึ้นโดยอัตโนมัติ
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) มีลำดับความสำคัญต่ำกว่า [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) และ [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) หาก [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) ว่างเปล่า ระบบจะใช้ค่าของคุณสมบัติ [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) เพื่อสร้าง URI ทรัพยากร หากตั้งค่า [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) เป็น "" (จุด) URI ทรัพยากรจะมีเฉพาะชื่อไฟล์โดยไม่ระบุเส้นทาง

### ส่งออกทรัพยากรแบบอักษรการเข้ารหัส Base64

Aspose.Words ให้ความสามารถในการระบุว่าควรฝังทรัพยากรแบบอักษรลงใน HTML ในการเข้ารหัส Base64 หรือไม่ ในการดำเนินการนี้ ให้ใช้คุณสมบัติ [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) ซึ่งเป็นส่วนขยายของคุณสมบัติ [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/) ตามค่าเริ่มต้น ค่าของมันคือ *False* และแบบอักษรจะถูกเขียนลงในไฟล์แยกกัน แต่หากตั้งค่าตัวเลือกนี้เป็น *True* แบบอักษรจะถูกฝังลงใน CSS ของเอกสารในการเข้ารหัส Base64 คุณสมบัติ [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) มีผลกับรูปแบบ HTML เท่านั้น และไม่ส่งผลต่อ EPUB และ MHTML

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการส่งออกแบบอักษรที่เข้ารหัส Base64 เป็น HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## ระบุตัวเลือกการบันทึกเมื่อแปลงเป็น EPUB

Aspose.Words อนุญาตให้แปลงเอกสาร Word เป็นรูปแบบ EPUB โดยใช้ตัวเลือกการบันทึกเริ่มต้นหรือแบบกำหนดเอง คุณสามารถระบุตัวเลือกจำนวนหนึ่งได้โดยส่งอินสแตนซ์ของ [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) ไปยังวิธี [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีแปลงเอกสาร Word เป็น EPUB โดยระบุตัวเลือกการบันทึกแบบกำหนดเอง:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)

{{% /alert %}}

