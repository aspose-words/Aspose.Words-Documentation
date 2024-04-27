---
title: ใช้ `DocumentBuilder` แก้ไขเอกสาร
second_title: Aspose.Words สําหรับ Java
articleTitle: ใช้ `DocumentBuilder` แก้ไขเอกสาร
linktitle: ใช้ `DocumentBuilder` แก้ไขเอกสาร
type: docs
description: "ใช้ตัวสร้างเอกสารเพื่อแก้ไขเอกสารอย่างง่าย Java."
weight: 20
url: /th/java/using-documentbuilder-to-modify-a-document/
---

## กําลังระบุรูปแบบ

### การฟอร์แมตแบบอักษร

การฟอร์แมตแบบอักษรปัจจุบัน แสดงโดย `Font` วัตถุกลับมาโดย `DocumentBuilder.Font` ทรัพย์สิน เดอะ `Font` คลาสมีคุณสมบัติแบบอักษรหลากหลายแบบที่เป็นไปได้ Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีตั้งค่ารูปแบบตัวอักษร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### การฟอร์แมตเซลล์

การฟอร์แมตเซลล์ใช้ระหว่างการสร้างโต๊ะ มันแทนได้ด้วย `CellFormat` วัตถุกลับมาโดย `DocumentBuilder.CellFormat` ทรัพย์สิน เซลล์Format ครอบคลุมคุณสมบัติต่าง ๆ ของเซลล์ตาราง เช่น ความกว้าง หรือจัดตําแหน่งแนวตั้ง

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี สร้าง ตาราง ที่ มี เซลล์ เซลล์ เดียว.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### การฟอร์แมตแถว

การฟอร์แมตแถวปัจจุบันถูกกําหนดโดย `RowFormat` วัตถุที่กลับมาโดย `DocumentBuilder.RowFormat` ทรัพย์สิน วัตถุนี้บอกข้อมูลการฟอร์แมตแถวของตารางทั้งหมด

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
คือlow code ตัว อย่าง เช่น จะ สร้าง ตาราง ที่ มี เซลล์ เซลล์ เดียว และ ทํา แบบ แถว อย่าง ไร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### การฟอร์แมตรายการ

Aspose.Words อนุญาตให้สร้างรายการได้ง่ายขึ้น โดยการปรับใช้รูปแบบรายการ ตัวสร้างเอกสาร `DocumentBuilder.ListFormat` คุณสมบัติที่คืนค่า `ListFormat` วัตถุ วัตถุนี้มีวิธีการหลายวิธีในการเริ่มต้นและจบรายการ และเพื่อเพิ่ม/ decrease the Indent

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
มีรายการทั่วไป 2 ประเภท Microsoft Wordกระสุนและหมายเลข

- การเริ่มต้นรายการกระสุนโทร [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- เริ่มรายการหมายเลข [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

กระสุนหรือตัวเลขและรูปแบบจะถูกเพิ่มไปยังย่อหน้าปัจจุบันและทุก paragraphy ที่สร้างขึ้นโดยใช้ **DocumentBuilder** ถึง [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) ถูกเรียกให้หยุดออกแบบรายการ

ใน เอกสาร คํา ศัพท์ รายการ อาจ ประกอบ ด้วย เก้า ระดับ. รายการการฟอร์แมตสําหรับแต่ละระดับ ระบุว่าใช้กระสุนหรือตัวเลขอะไร ด้านซ้าย, ช่องว่างระหว่างกระสุนและข้อความ เป็นต้น

- เพื่อเพิ่มระดับรายการของย่อหน้าปัจจุบันทีละระดับ ให้เรียก [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- เพื่อลดระดับรายการของย่อหน้าปัจจุบันด้วยระดับหนึ่ง ให้เรียก [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

วิธีการเปลี่ยนระดับรายการ และปรับใช้คุณสมบัติการฟอร์แมตระดับใหม่

{{% alert color="primary" %}}

คุณสามารถใช้ [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) คุณสมบัติที่จะใช้รับหรือตั้งค่าระดับรายการของย่อหน้า ระดับรายชื่ออยู่ที่ 0 ถึง 8

{{% /alert %}}

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง วิธี สร้าง รายการ หลาย ระดับ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### ตั้งค่าหน้ากระดาษและรูปแบบหัวข้อ

ตั้งค่าหน้ากระดาษและคุณสมบัติส่วนต่าง ๆ จะถูกบรรจุไว้ใน `PageSetup` วัตถุที่กลับมาโดย `DocumentBuilder.PageSetup` ทรัพย์สิน วัตถุนี้บรรจุคุณสมบัติต่าง ๆ ของหน้าที่ตั้งค่าไว้ทั้งหมด (ขอบซ้าย, ขอบล่าง, ขนาดกระดาษ และอื่น ๆ) เป็นคุณสมบัติ

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ กําหนด คุณสมบัติ ต่าง ๆ เช่น ขนาด หน้า และ การ จัด แนว สําหรับ ส่วน ที่ อยู่ ใน ปัจจุบัน.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### กําลังปรับใช้รูปแบบ

การฟอร์แมตวัตถุบางแบบ เช่น แบบอักษร หรือ paraseFormat รูปแบบที่ใช้ร่วมหรือผู้ใช้แบบเดียว `Style` วัตถุที่บรรจุคุณสมบัติรูปแบบที่สอดคล้องกัน เช่น ชื่อ, รูปแบบพื้นฐาน, แบบอักษร และ ย่อหน้าของการฟอร์แมต และอื่น ๆ

ยิ่งกว่านั้น **Style** วัตถุที่ให้ [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) คุณสมบัติที่ส่งค่ากลับมาเป็นรูปแบบที่ต้องการค่าในท้องถิ่น **Style.StyleIdentifier** ราคาที่เพิ่มขึ้น ประเด็นคือชื่อของสไตล์ที่สร้างขึ้น Microsoft Word เป็นภาษาท้องถิ่นสําหรับภาษาที่แตกต่างกัน คุณ จะ พบ รูป แบบ ที่ ถูก ต้อง ได้ ไม่ ว่า จะ เป็น ภาษา ของ เอกสาร หรือ ไม่. ค่ามวลที่ตรงกับ Microsoft Word รูปแบบที่สร้างขึ้นเช่น ปกติ มุ่งหน้า 1 มุ่งหน้าไป 2 เป็นต้น รูปแบบที่ผู้ใช้กําหนดทั้งหมดถูกกําหนดให้ใช้ **สไตล์นิเตอร์ ค่าของผู้ใช้**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ใช้ แบบ ย่อ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### กรอบ และ การ ตัด ไม้

ชายแดนแสดงโดย การตัดขอบ นี่เป็นชุดวัตถุกรอบที่เข้าถึงได้โดยดัชนีหรือชนิดกรอบ ขอบเขตนี้แสดงโดย `BorderType` ปลดปล่อย ค่า บาง อย่าง ของ การ เผา ผลาญ ถูก นํา ไป ใช้ กับ ส่วน ประกอบ หลาย อย่าง หรือ เพียง ส่วน เดียว ของ เอกสาร. ยกตัวอย่างเช่น `BorderType.Bottom` ใช้กับทั้งย่อหน้าหรือเซลล์ตารางในขณะที่ `BorderType.DiagonalDown` กําหนดเส้นทแยงมุมในเซลล์ตารางเท่านั้น

ทั้งการสะสมกรอบและแต่ละขอบมีคุณลักษณะคล้ายสี, รูปแบบเส้น, ความกว้างเส้น, ระยะห่างจากข้อความ, และเงาทางเลือก มันแสดงด้วยคุณสมบัติของชื่อเดียวกัน คุณสามารถสร้างเขตแดนที่แตกต่างได้ โดยการรวมค่าทรัพย์สินเข้าด้วยกัน นอกจากนี้ ทั้งสอง **BorderCollection** ถึง **Border** วัตถุอนุญาตให้คุณปรับค่าเหล่านี้กลับไปใช้ค่าปริยายได้ โดยการเรียก [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) วิธี หมายเหตุว่า เมื่อคุณสมบัติกรอบถูกปรับค่ากลับไปใช้ค่าปริยายแล้ว ขอบเขตจะมองไม่เห็น

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
เดอะ [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) คลาสมีคุณลักษณะการแรเงา สําหรับองค์ประกอบของเอกสาร คุณสามารถตั้งค่าพื้นผิวเงาที่ต้องการ และสีที่ใช้กับพื้นหลังและส่วนประกอบของธาตุ

พื้นผิวเงาเป็นการตั้งค่าด้วย [พื้นผิว](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) ค่าสิ้นสุดที่อนุญาตให้ปรับใช้รูปแบบต่าง ๆ กับ **Shading** วัตถุ ตัวอย่างเช่น เพื่อตั้งค่าสีพื้นหลังสําหรับองค์ประกอบของเอกสาร ให้ใช้ [พื้นผิว](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) ตั้งค่าสีพื้นหน้าให้เหมาะสม

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
ตัว อย่าง ข้าง ล่าง นี้ แสดง ให้ เห็น วิธี ใช้ พรม แดน และ การ หลบ หลีก วรรค หนึ่ง.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### ปรับให้พอดีเส้นกริด

Aspose.Words ให้คุณสมบัติสองอย่าง `ParagraphFormat.SnapToGrid` ถึง `Font.SnapToGrid` เพื่อไปและตั้งค่า paragraph access patching กับตาราง

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### การย้ายเคอร์เซอร์

### ตรวจสอบตําแหน่งเคอร์เซอร์ปัจจุบัน

คุณสามารถหาตําแหน่งเคอร์เซอร์ของผู้สร้างได้ตลอดเวลา เดอะ [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) ฟังก์ชัน CHAR () จะคืนค่าเป็นอักขระที่มีรหัสตัวเลขตรงกับที่กําหนด โหนดเป็นลูกโดยตรงของวรรค การแทรกใด ๆ ที่คุณทําโดยใช้ `DocumentBuilder` จะแทรกก่อน `DocumentBuilder.CurrentNode`. เมื่อย่อหน้าปัจจุบันว่าง หรือตําแหน่งเคอร์เซอร์ ก่อนที่จะจบย่อหน้า `DocumentBuilder.CurrentNode` กลับมาเป็นโมฆะ

นอกจากนี้คุณสามารถใช้ [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) คุณสมบัติ, ซึ่งใช้ค้นหาย่อหน้าที่กําลังเลือกอยู่ **DocumentBuilder**. คือlow code ตัวอย่างแสดงถึงวิธีการเข้าถึงโหนดปัจจุบันในผู้สร้างเอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### ย้าย ไป ยัง เมือง โนด (ภาพ ถ่าย และ ลูก ๆ ของ เขา)

หากคุณมีโหนดวัตถุเอกสาร ซึ่งเป็น paragraph หรือลูกโดยตรงของย่อหน้า คุณสามารถชี้เคอร์เซอร์ของผู้สร้างไปที่โหนดนี้ ใช้ [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) วิธีทํานี้
ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการย้ายตําแหน่งเคอร์เซอร์ไปยังโหนดที่ระบุ

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### ย้ายไปยังเอกสารเริ่มต้น/ รุ่น

หากคุณต้องการย้ายไปยังตอนต้นของเอกสาร โปรดติดต่อ [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). หากคุณต้องการย้ายไปยังท้ายเอกสาร โปรดติดต่อ [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### กําลังย้ายไปยังหัวข้อ

หากคุณทํางานกับเอกสารที่มีหลายตอน คุณสามารถย้ายไปยังส่วนที่ต้องการได้ [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). วิธีการนี้จะทําการย้ายเคอร์เซอร์ไปยังส่วนเริ่มต้นของส่วนที่ระบุ และยอมรับดัชนีในส่วนที่ต้องการ เมื่อส่วนดัชนีมากกว่าหรือเท่ากับ 0 มันระบุดัชนีจากตอนต้นของเอกสาร โดยมี 0 เป็นส่วนแรก เมื่อส่วนดัชนีน้อยกว่า 0 มันระบุดัชนีจากท้ายเอกสารด้วย -1 คือส่วนสุดท้าย คือlow code ตัวอย่างการแสดงวิธีย้ายตําแหน่งเคอร์เซอร์ไปยังส่วนที่ระบุ คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [ที่นี่](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### ย้ายไปเป็นส่วนหัว/ ตัวชี้

เมื่อคุณต้องการที่จะวางข้อมูลบางอย่างลงในส่วนหัวหรือท้าย, คุณควรจะย้ายไปที่นั่นก่อน [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int). วิธีการยอมรับค่าหัวจดหมาย

หากคุณต้องการสร้างส่วนหัวและท้ายที่แตกต่างกันสําหรับหน้าแรก คุณต้องตั้งค่า [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) คุณสมบัติไปยัง **true**. หากคุณต้องการสร้างส่วนหัวและท้ายกระดาษที่แตกต่างไปทั้งหน้าคี่และหน้าคู่ คุณต้องตั้งค่า [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) ถึง **true**.

ถ้าคุณต้องการที่จะได้รับกลับไปที่เรื่องหลักใช้[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) ย้ายออกจากส่วนหัวหรือท้ายกระดาษ ด้านล่างตัวอย่าง สร้างส่วนหัวและท้ายกระดาษ โดยใช้ตัวสร้างเอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### ย้ายไปยังย่อหน้า

ใช้[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) ย้ายเคอร์เซอร์ไปยังย่อหน้าที่ต้องการในส่วนปัจจุบัน คุณควรส่งพารามิเตอร์สองค่าไปยังวิธีการนี้: paragraphindex (ดัชนีของย่อหน้าที่จะย้ายไป) และอักขระ Index (ดัชนีของอักขระภายในย่อหน้า).

การนําทางกระทําภายในเนื้อเรื่องปัจจุบันในส่วนปัจจุบัน นั่นคือ หากคุณย้ายเคอร์เซอร์ไปยังส่วนหัวหลักของส่วนแรก จากนั้น paragraph Index จะระบุดัชนีของย่อหน้าภายในหัวเรื่องในส่วนนั้น

เมื่อ paragraph Index มากกว่าหรือเท่ากับ 0 มันระบุดัชนีจากตอนต้นส่วนด้วย 0 เป็นย่อหน้าแรก เมื่อ วรรค Index น้อยกว่า 0 มันระบุดัชนีจากท้ายภาคด้วย -1 คือ วรรคสุดท้าย ดัชนีของอักขระนี้จะสามารถกําหนดเป็น 0 ได้ก็ต่อเมื่อมีการย้ายไปยังตอนต้นของย่อหน้า หรือ -1 เพื่อย้ายไปอยู่ที่ท้ายย่อหน้าเท่านั้น ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการย้ายตําแหน่งเคอร์เซอร์ไปยังย่อหน้าที่ระบุ คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [ที่นี่](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### ย้ายไปยังตารางเซลล์

ใช้ [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) หากคุณต้องการย้ายเคอร์เซอร์ไปยังเซลล์ของตารางในส่วนปัจจุบัน วิธีการยอมรับค่าพารามิเตอร์สี่ค่า:

- ตาราง Index - ดัชนีของตารางที่จะย้ายไป
- แถว Index - ดัชนีแถวในตาราง
- คอลัมน์ Index - ดัชนีของคอลัมน์ในตาราง
- ตัวละคร Index - ดัชนีของตัวละครภายในเซลล์

การนําร่องกระทําภายในเนื้อเรื่องปัจจุบันในส่วนปัจจุบัน

สําหรับพารามิเตอร์ดัชนี, เมื่อดัชนีมากกว่าหรือเท่ากับ 0, มันระบุดัชนีตั้งแต่แรกด้วย 0 ว่าเป็นองค์ประกอบแรก เมื่อดัชนีน้อยกว่า 0, มันระบุดัชนีจากตอนจบด้วย -1 เป็นองค์ประกอบสุดท้าย

โปรดสังเกตว่า อักขระ Index นี้ สามารถทําได้เพียง 0 ตัว เพื่อย้ายไปยังจุดเริ่มต้นของเซลล์ หรือ 1 ตัว เพื่อย้ายไปยังส่วนท้ายของเซลล์ ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการย้ายตําแหน่งเคอร์เซอร์ไปยังเซลล์ตารางที่ระบุ คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [ที่นี่](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### ย้ายไปยังที่คั่นหน้า

มี การ ใช้ ที่คั่นหน้า บ่อย ๆ เพื่อ ระบุ สถาน ที่ เฉพาะ ใน เอกสาร ซึ่ง จะ มี การ ใส่ สมาชิก ใหม่ เข้า ไป. ย้ายไปยังที่คั่นหน้า, ใช้ [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). วิธี นี้ มี สอง วิธี ที่ เกิน ความ สามารถ. ตัวที่ง่ายที่สุด รับอะไรไม่ได้นอกจากชื่อของคั่นหน้า ที่ที่เคอร์เซอร์จะถูกย้าย ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีย้ายตําแหน่งเคอร์เซอร์ไปยังที่คั่นหน้า

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

การโหลดจดหมายนี้ จะย้ายเคอร์เซอร์ไปยังตําแหน่ง หลังจากเริ่มคั่นหน้าโดยใช้ชื่อที่กําหนดเท่านั้น เกินพิกัดอีก [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) ย้ายเคอร์เซอร์ไปยังที่คั่นหน้าด้วยความแม่นยํามากขึ้น มันยอมรับตัวแปรที่เพิ่มเข้าไปอีกสอง

- กําลังเริ่มการใช้งาน ต้องการกําหนดการย้ายเคอร์เซอร์ไปยังตอนต้น หรือเพื่อจบคั่นหน้า
- หลังการกําหนดให้ย้ายเคอร์เซอร์ หลังจากตําแหน่ง เริ่มหรือจบคั่นหน้าแล้ว ให้ย้ายเคอร์เซอร์ก่อนการเริ่มคั่นหน้าหรือสิ้นสุด

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีย้ายตําแหน่งเคอร์เซอร์ ไปยังตําแหน่งเดิมหลังจากสิ้นสุดคั่นหน้าแล้ว

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

การแทรกข้อความใหม่ในลักษณะนี้ ไม่ได้แทนที่ข้อความที่คั่นหน้าที่มีอยู่ โปรดสังเกตว่า ที่คั่นหน้าบางตัวในเอกสารได้ถูกมอบหมายให้สร้างช่องข้อมูล ย้ายไปยังที่คั่นหน้าดังกล่าวและแทรกข้อความมีแทรกข้อความลงในรหัสฟอร์ม แม้ ว่า การ ทํา เช่น นี้ จะ ไม่ ทํา ให้ ช่อง รูป แบบ เป็น โมฆะ แต่ จะ ไม่ สามารถ เห็น ข้อ ความ ที่ แทรก เข้า มา ได้ เพราะ เป็น ส่วน หนึ่ง ของ รหัส สนาม.

### ย้ายไปยัง `Merge` ช่องข้อมูล

บางครั้งคุณอาจต้องแสดง "งานประจํา" mail merge ใช้ `DocumentBuilder` หรือเติมสนามในวิธีพิเศษ mail merge คนดูแลงาน นั่นคือตอนที่ [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) อาจจะมีประโยชน์ วิธีการยอมรับชื่อของสนามรวม มันย้ายเคอร์เซอร์ไปยังตําแหน่งที่อยู่เหนือสนามรวมที่ระบุไว้ และทําการรวมสนามออก ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีย้ายเคอร์เซอร์ไปยังตําแหน่ง ที่อยู่นอกเหนือสนามรวมที่ระบุ

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## วิธี แปลง หน่วย วัด

คุณสมบัติของออบเจกต์ส่วนใหญ่ที่ให้มา Aspose.Words API ที่แสดงถึงการวัดบางส่วน (ความกว้าง/ความสูง, ระยะขอบและระยะทางต่าง ๆ) ยอมรับค่าในจุด (1 นิ้วเท่ากับ 72 จุด) บางครั้งมันไม่สะดวก ดังนั้น `ConvertUtil` คลาสที่มีฟังก์ชันผู้ช่วยในการแปลงหน่วยวัดต่าง ๆ มันช่วยแปลงนิ้วเป็นจุด, ชี้นิ้ว, พิกเซลเป็นจุด และชี้เป็นพิกเซล เมื่อหน่วยเป็นจุด และในทางกลับกัน มันสามารถดําเนินการได้ที่ 96 จุดต่อนิ้ว (dots ต่อนิ้ว) มติ หรือที่มติที่ระบุไว้

**ConvertUtil** มีประโยชน์มากเมื่อตั้งค่าคุณสมบัติของหน้าที่แตกต่างกัน ตัวอย่างเช่น นิ้วเป็นหน่วยวัดปกติมากกว่าจุด ตัว อย่าง ต่อ ไป นี้ แสดง ให้ เห็น วิธี วาง คุณสมบัติ ของ หน้า เป็น นิ้ว.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีระบุคุณสมบัติของหน้ากระดาษในหน่วยนิ้ว

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
