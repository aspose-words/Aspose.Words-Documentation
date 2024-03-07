---
title: การทำงานกับเอกสารข้อความ
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับเอกสารข้อความ
linktitle: การทำงานกับเอกสารข้อความ
description: "ทำงานกับเอกสารข้อความและแก้ไขออบเจ็กต์โดยใช้ Python"
type: docs
weight: 430
url: /th/python-net/working-with-text-document/
---

ในบทความนี้ เราจะเรียนรู้ว่าตัวเลือกใดบ้างที่มีประโยชน์สำหรับการทำงานกับเอกสารข้อความผ่าน Aspose.Words โปรดทราบว่านี่ไม่ใช่รายการตัวเลือกทั้งหมดที่มีอยู่ แต่เป็นเพียงตัวอย่างการทำงานกับตัวเลือกบางส่วนเท่านั้น

## เพิ่มเครื่องหมายสองทิศทาง

คุณสามารถใช้คุณสมบัติ [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) เพื่อระบุว่าจะเพิ่มเครื่องหมายสองทิศทางก่อนที่ BiDi แต่ละตัวจะทำงานหรือไม่เมื่อส่งออกในรูปแบบข้อความธรรมดา Aspose.Words แทรกอักขระ Unicode 'เครื่องหมายจากขวาไปซ้าย' (U+200F) ก่อนแต่ละ [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) แบบสองทิศทางในข้อความ ตัวเลือกนี้สอดคล้องกับตัวเลือก "เพิ่มเครื่องหมายสองทิศทาง" ในกล่องโต้ตอบการแปลงไฟล์ MS Word เมื่อคุณส่งออกเป็นรูปแบบข้อความธรรมดา โปรดทราบว่าจะปรากฏในกล่องโต้ตอบเฉพาะเมื่อมีการเพิ่มภาษาสำหรับแก้ไขภาษาอาหรับหรือฮีบรูใน MS Word เท่านั้น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้คุณสมบัติ [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) ค่าเริ่มต้นของคุณสมบัตินี้คือ `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## รับรู้รายการระหว่างการโหลด TXT

Aspose.Words สามารถนำเข้ารายการของไฟล์ข้อความเป็นหมายเลขรายการหรือข้อความธรรมดาในรูปแบบออบเจ็กต์เอกสาร คุณสมบัติ [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) ช่วยให้ระบุวิธีการรับรู้รายการลำดับเลขเมื่อนำเข้าเอกสารจากรูปแบบข้อความธรรมดา:

* หากตั้งค่าตัวเลือกนี้เป็น `True` ช่องว่างจะถูกใช้เป็นตัวคั่นหมายเลขรายการด้วย: อัลกอริธึมการรู้จำรายการสำหรับการกำหนดหมายเลขสไตล์อารบิก (1., 1.1.2.) จะใช้ทั้งสัญลักษณ์ช่องว่างและจุด ("")
* หากตั้งค่าตัวเลือกนี้เป็น `False` อัลกอริธึมการรู้จำรายการจะตรวจจับย่อหน้าของรายการ เมื่อหมายเลขรายการลงท้ายด้วยจุด วงเล็บเหลี่ยมขวา หรือสัญลักษณ์สัญลักษณ์หัวข้อย่อย (เช่น "•", "*", "-" หรือ "o")

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัตินี้:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## จัดการช่องว่างนำหน้าและต่อท้ายระหว่างการโหลด TXT

คุณสามารถควบคุมวิธีการจัดการช่องว่างนำหน้าและต่อท้ายระหว่างการโหลดไฟล์ TXT ช่องว่างนำหน้าสามารถตัดแต่ง เก็บรักษา หรือแปลงเป็นการเยื้อง และช่องว่างต่อท้ายสามารถตัดแต่งหรือเก็บรักษาไว้ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีตัดช่องว่างนำหน้าและต่อท้ายขณะนำเข้าไฟล์ TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## ตรวจจับทิศทางข้อความของเอกสาร

Aspose.Words จัดเตรียมคุณสมบัติ [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) ในคลาส [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) เพื่อตรวจจับทิศทางของข้อความ (RTL / LTR) ในเอกสาร คุณสมบัตินี้ตั้งค่าหรือรับทิศทางข้อความเอกสารที่ระบุในการแจงนับ [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/) ค่าเริ่มต้นจะซ้ายไปขวา

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตรวจสอบทิศทางข้อความของเอกสารขณะนำเข้าไฟล์ TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## ส่งออกส่วนหัวและส่วนท้ายในเอาต์พุต TXT

หากคุณต้องการส่งออกส่วนหัวและส่วนท้ายในเอกสาร TXT เอาต์พุต คุณสามารถใช้คุณสมบัติ [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/) ได้ คุณสมบัตินี้ระบุวิธีการส่งออกส่วนหัวและส่วนท้ายเป็นรูปแบบข้อความธรรมดา

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการส่งออกส่วนหัวและส่วนท้ายเป็นรูปแบบข้อความธรรมดา:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## ส่งออกการเยื้องรายการในเอาต์พุต TXT

Aspose.Words เปิดตัวคลาส [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) ที่ช่วยให้ระบุวิธีการเยื้องระดับรายการขณะส่งออกเป็นรูปแบบข้อความธรรมดา ในขณะที่ทำงานกับ [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/) คุณสมบัติ [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) มีไว้เพื่อระบุอักขระที่จะใช้สำหรับการเยื้องระดับรายการและการนับโดยระบุจำนวนอักขระที่จะใช้เป็นการเยื้องต่อหนึ่งระดับรายการ ค่าเริ่มต้นสำหรับคุณสมบัติอักขระคือ '\0' ซึ่งบ่งชี้ว่าไม่มีการเยื้อง สำหรับคุณสมบัติการนับ ค่าเริ่มต้นคือ 0 ซึ่งหมายถึงไม่มีการเยื้อง

### การใช้อักขระแท็บ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการส่งออกระดับรายการโดยใช้อักขระแท็บ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### การใช้อักขระอวกาศ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการส่งออกระดับรายการโดยใช้อักขระเว้นวรรค:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

