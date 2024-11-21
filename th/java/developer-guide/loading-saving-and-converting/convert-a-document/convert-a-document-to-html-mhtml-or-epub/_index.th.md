---
title: แปลงเอกสารเป็น HTML, MHTM หรือ EPUB
second_title: Aspose.Words สําหรับ Java
articleTitle: แปลงเอกสารเป็น HTML, MHTM หรือ EPUB
linktitle: แปลงเอกสารเป็น HTML, MHTM หรือ EPUB
description: "ใช้ Aspose.Words สําหรับ Java แปลงเอกสารจากคําหรือรูปแบบอื่น ๆ ที่รองรับเป็น HTML, MHTML หรือ EPUB"
type: docs
weight: 20
url: /th/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

เอกสารในรูปแบบ HTML และ MHTML แบบเลย์ออกยังเป็นที่นิยมมาก และสามารถใช้ได้บนเว็บแพลตฟอร์มใด ๆ ด้วยเหตุผลนั้น การแปลงเอกสารเป็น HTML และ MHTML เป็นคุณสมบัติสําคัญของ Aspose.Words.

EPUB (short for "Electic Publication") เป็นรูปแบบพื้นฐานแบบ HTML ที่ใช้สําหรับจําหน่ายหนังสืออิเล็กทรอนิกส์ รองรับรูปแบบนี้อย่างเต็มที่ Aspose.Words สําหรับส่งออกหนังสืออิเล็กทรอนิกส์ที่เข้ากันได้กับอุปกรณ์อ่านมากที่สุด

## แปลงเอกสาร

สําหรับการแปลงเป็น HTML, MHTM, หรือ EPUB, หนึ่งใน [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) วิธีที่ใช้เกินขนาด คุณสามารถบันทึกเอกสารไปยังแฟ้มหรือสายข้อมูล และกําหนดรูปแบบแฟ้มที่จะส่งออก หรือกําหนดมันจากนามสกุลชื่อแฟ้มก็ได้

ตัวอย่างต่อไปนี้ แสดงวิธีการแปลง DOCX เป็น HTML โดยระบุรูปแบบการบันทึก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

ในการแปลงเอกสารเป็นเอกสาร MHTM หรือ EPUB, ใช้ `SaveFormat.MHTML` หรือ `SaveFormat.EPUB` ตามนั้น

## แปลงเอกสารโดยใช้ข้อมูลการวนรอบ

รูปแบบ HTML ไม่สนับสนุนจํานวนมาก Microsoft Word คุณสมบัติ และถ้าเราจะเรียกคืนเอกสารต้นแบบ ให้ใกล้เคียงกับต้นฉบับให้มากที่สุดเท่าที่จะทําได้ เราต้องบันทึกข้อมูลเพิ่มเติมในแฟ้ม HTML ข้อมูลดังกล่าวยังเรียกว่า "ข้อมูลการเดินทาง" เพื่อจุดประสงค์นี้ Aspose.Words ให้ความสามารถในการส่งออกข้อมูลการเวียนรอบเมื่อบันทึกไปยัง HTML, MHTM, หรือ EPUB โดยใช้ [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) ทรัพย์สิน การบันทึกข้อมูลการเวียนรอบ สามารถเรียกคืนคุณสมบัติของเอกสาร เช่น แท็บ, หมายเหตุ, headers, และท้ายกระดาษ ระหว่างการโหลดเอกสารรูปแบบรายการกลับไปที่ **Document** วัตถุ

ค่าปริยายคือ **true** สําหรับ HTML และ **false** สําหรับ MHTM และ EPUB:

- เมื่อไหร่ **true**, ข้อมูลการเวียนรอบถูกส่งออกเป็น - aw - * คุณสมบัติ CSS ขององค์ประกอบ HTML ที่ตรงกับ
- เมื่อไหร่ **false**, ไม่มีข้อมูลการเวียนรอบที่จะส่งออกไปยังแฟ้มที่ถูกสร้าง

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีส่งออกข้อมูลการเวียนรอบเมื่อแปลงเอกสารจาก DoCX เป็น HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertDocumentToHtmlWithRoundtrip/Test%20File%20\(doc\).Doc).

{{% /alert %}}

## ระบุตัวเลือกบันทึกเมื่อแปลงเป็น HTML

Aspose.Words อนุญาตให้แปลงเอกสารคําเป็น HTML ได้ โดยใช้ตัวเลือกปริยายหรือตัวเลือกการบันทึกด้วยตนเอง ตัว อย่าง การ บันทึก เอง ไม่ กี่ ตัว อย่าง มี การ พรรณนา ไว้ ข้าง ล่าง นี้.

### ระบุโฟลเดอร์สําหรับบันทึกทรัพยากร

ใช้ Aspose.Words เราสามารถระบุโฟลเดอร์ทางกายภาพได้ โดยทรัพยากรทั้งหมด เช่น ภาพ, แบบอักษร, และ ภายนอก CSS จะถูกบันทึกเมื่อเอกสารถูกเปลี่ยนเป็น HTML โดยปริยายแล้ว นี่เป็นข้อความว่าง

ระบุ [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) คุณสมบัติ เป็น วิธี ง่าย ที่ สุด ใน การ ตั้ง โฟลเดอร์ ที่ ควร เขียน ทรัพยากร ทุก อย่าง. เราสามารถใช้คุณสมบัติส่วนบุคคล เช่น [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) ซึ่งบันทึกแบบอักษรไปยังโฟลเดอร์ที่ระบุและ [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) ซึ่งบันทึกรูปภาพเป็นโฟลเดอร์ที่ระบุ เมื่อระบุพาธที่สัมพันธ์กัน **FontsFolder** ถึง **ImagesFolder** อ้างถึงโฟลเดอร์ที่ตั้งรหัส **ResourceFolder** ถึง [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) อ้างถึงโฟลเดอร์ผลลัพธ์ที่ค้นพบเอกสาร HTML

ในตัวอย่างนี้ **ResourceFolder** กําหนดพาธสัมพัทธ์ พาธนี้หมายถึงโฟลเดอร์ผลลัพธ์ที่จัดเก็บเอกสาร HTML ค่าของ **ResourceFolderAlias** มีการสร้างที่อยู่ URL สําหรับทรัพยากรทั้งหมด

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทํางานกับคุณสมบัติเหล่านี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

ใช้ [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) คุณสมบัติ, เรายังสามารถระบุชื่อของโฟลเดอร์ที่ใช้สร้าง URI ของทรัพยากรทั้งหมด ที่เขียนลงในเอกสาร HTML ได้ นี่เป็นวิธีที่ง่ายที่สุดที่จะระบุวิธีสร้าง URI สําหรับแฟ้มทรัพยากรทั้งหมด คุณสามารถกําหนดข้อมูลเดียวกันสําหรับภาพและแบบอักษรแยกกันได้ [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) ถึง [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) ทรัพย์สิน ตามลําดับ

อย่าง ไร ก็ ตาม ไม่ มี คุณสมบัติ เฉพาะ ตัว สําหรับ CSS. พฤติกรรมของ **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** ถึง **CssStyleSheetFileName** คุณสมบัติไม่ถูกเปลี่ยนแปลง สังเกตว่า **CssStyleSheetFileName** คุณสมบัติที่จะใช้กําหนดทั้งชื่อแฟ้มและชื่อแฟ้ม

- **ResourceFolder** มีระดับความสําคัญน้อยกว่าที่ระบุไว้ผ่านทาง **FontsFolder**, **ImagesFolder**, ถึง **CssStyleSheetFileName**. หากโฟลเดอร์ที่ระบุไว้ใน **ResourceFolder** ไม่มีอยู่ จะถูกสร้างโดยอัตโนมัติ
- **ResourceFolderAlias** มีลําดับความสําคัญน้อยกว่า **FontsFolderAlias** ถึง **ImagesFolderAlias**. ถ้า **ResourceFolderAlias** ว่าง, ค่าของ **ResourceFolder** จะถูกใช้ในการสร้าง URI ของทรัพยากร ถ้า **ResourceFolderAlias** ได้ตั้งค่าเป็น "" (dot) URI ของทรัพยากรจะมีชื่อแฟ้มเท่านั้น โดยไม่ต้องระบุพาธ

### ส่งออกเป็นชุดรหัสอักขระแบบเบส64

Aspose.Words ให้ความสามารถที่จะระบุว่า ควรจะให้ทรัพยากรแบบอักษรฝังอยู่ใน HTML ในรหัสภาษาฐาน64 หรือไม่ เพื่อทําสิ่งนี้ ใช้ [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) (สวนสวรรค์สองแห่งนั้น) แผ่กิ่งก้านเขียวชอุ่ม และผลไม้หลายชนิด [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) ทรัพย์สิน โดยปริยายแล้ว ค่าของมันก็คือ **false**, และแบบอักษรที่ถูกเขียนเป็นแฟ้มแยก แต่หากตั้งค่าตัวเลือกนี้เป็น **true**, แบบอักษรจะถูกฝังไว้ในเอกสาร CSS ในการเข้ารหัสเบส64 เดอะ **ส่งออกเป็นรูปแบบ FontsAsBase64** คุณสมบัติจะมีผลกับรูปแบบ HTML เท่านั้น และไม่มีผลกับ EPUB และ MHTM

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีการส่งออกแบบอักษรฐาน64-encoded ไปยัง HTML อย่างไร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## ชื่อตัวเลือก:

Aspose.Words อนุญาตให้แปลงเอกสารคําเป็นรูปแบบ EPUB ได้ โดยใช้ค่าปริยายหรือตัวเลือกการบันทึกด้วยตนเอง คุณสามารถกําหนดตัวเลือกต่าง ๆ ได้ โดยการผ่านอินสแตนซ์ [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) ถึง [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) วิธี

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการแปลงเอกสารคําเป็น APUB โดยระบุตัวเลือกการบันทึกด้วยตนเอง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## ดูด้วย

- [2561. สืบค้นเมื่อ 2561. สืบค้นเมื่อ 2561. สืบค้นเมื่อ 2561. สืบค้นเมื่อ 2561. สืบค้นเมื่อ 2561. สืบค้นเมื่อ 5 สิงหาคม พ.ศ](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
