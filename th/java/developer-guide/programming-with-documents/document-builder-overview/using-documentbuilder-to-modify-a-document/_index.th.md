---
title: ใช้`DocumentBuilder`เพื่อแก้ไขเอกสาร
second_title: Aspose.WordsสำหรับJava
articleTitle: ใช้`DocumentBuilder`เพื่อแก้ไขเอกสาร
linktitle: ใช้`DocumentBuilder`เพื่อแก้ไขเอกสาร
type: docs
description: "ใช้ตัวสร้างเอกสารเพื่อแก้ไขเอกสารได้อย่างง่ายดายในJava."
weight: 20
url: /th/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## การระบุการจัดรูปแบบ

### การจัดรูปแบบแบบอักษร

การจัดรูปแบบแบบอักษรปัจจุบันจะแสดงโดยออบเจกต์`Font`ที่ส่งคืนโดยคุณสมบัติ`DocumentBuilder.Font` คลาส`Font`ประกอบด้วยคุณสมบัติแบบอักษรที่หลากหลายที่เป็นไปได้ในMicrosoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
| :- |
ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าการจัดรูปแบบแบบอักษร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### การจัดรูปแบบเซลล์

การจัดรูปแบบเซลล์ถูกนำมาใช้ในระหว่างการสร้างตาราง ออบเจกต์`CellFormat`ที่ส่งคืนโดยคุณสมบัติ`DocumentBuilder.CellFormat` CellFormatห่อหุ้มคุณสมบัติของเซลล์ตารางต่างๆเช่นความกว้างหรือแนวตั้ง.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
| :- |
ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างตารางที่ประกอบด้วยเซลล์รูปแบบเดียว.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### การจัดรูปแบบแถว

การจัดรูปแบบแถวปัจจุบันจะถูกกำหนดโดย`RowFormat`วัตถุที่ถูกส่งคืนโดยคุณสมบัติ`DocumentBuilder.RowFormat` วัตถุห่อหุ้มข้อมูลเกี่ยวกับการจัดรูปแบบแถวตารางทั้งหมด.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
| :- |
ตัวอย่างเป็นlow codeแสดงวิธีการสร้างตารางที่มีเซลล์เดียวและใช้การจัดรูปแบบแถว.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### การจัดรูปแบบรายการ

Aspose.Wordsช่วยให้การสร้างง่ายของรายการโดยการใช้การจัดรูปแบบรายการ DocumentBuilderให้คุณ`DocumentBuilder.ListFormat`ที่ส่งกลับวัตถุ`ListFormat` วัตถุนี้มีหลายวิธีในการเริ่มต้นและสิ้นสุดรายการและการเพิ่ม/ลดการเยื้อง.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
| :- |
มีสองประเภททั่วไปของรายการในMicrosoft Word:สัญลักษณ์แสดงหัวข้อย่อยและหมายเลข.

- ในการเริ่มต้นรายการที่มีสัญลักษณ์แสดงหัวข้อย่อยให้โทร[ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- ในการเริ่มรายการหมายเลขให้โทร[ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

นย่อหน้าปัจจุบันและย่อหน้าต่อไปทั้งหมดที่สร้างขึ้นโดยใช้**DocumentBuilder**จนกระทั่ง[ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers)ถูกเรียกว่าเพื่อหยุดกา.

ในคำเอกสารรายการอาจประกอบด้วยถึงเก้าระดับ การจัดรูปแบบรายการสำหรับแต่ละระดับระบุสิ่งที่กระสุนหรือหมายเลขที่ใช้เยื้องซ้ายช่องว่.

- หากต้องการเพิ่มระดับรายการของย่อหน้าปัจจุบันโดยหนึ่งระดับให้โทร[ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- เมื่อต้องการลดระดับรายการของย่อหน้าปัจจุบันโดยหนึ่งระดับให้โทร[ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

เมธอดเปลี่ยนระดับรายการและใช้คุณสมบัติการจัดรูปแบบของระดับใหม่.

{{% alert color="primary" %}}

นอกจากนี้คุณยังสามารถใช้คุณสมบัติ[ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int)เพื่อรับหรือตั้งค่าระดับรายการสำหรับย่อหน้า ระดับรายการมีหมายเลข 0 ถึง 8.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างรายการหลายระดับ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### การตั้งค่าหน้าเว็บและการจัดรูปแบบส่วน

ตั้งค่าหน้าเว็บและส่วนคุณสมบัติถูกห่อหุ้มใน`PageSetup`วัตถุที่ถูกส่งคืนโดยคุณสมบัติ`DocumentBuilder.PageSetup` วัตถุประกอบด้วยแอตทริบิวต์การตั้งค่าหน้าเว็บทั้งหมดของส่วน(ขอบซ้ายขอบล่างขนาดกระด.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
| :- |
ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัติเช่นขนาดหน้าและการวางแนวสำหรับส่วน.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### การใช้สไตล์

ออบเจกต์การจัดรูปแบบบางอย่างเช่นแบบอักษรหรือParagraphFormatรูปแบบการสนับสนุน สไตล์ที่ผู้ใช้กำหนดในตัวเดียวจะแสดงโดยออบเจกต์`Style`ที่มีคุณสมบัติลักษณะที่สอดคล้องกันเช่น.

นอกจากนี้ออบเจกต์**Style**มีคุณสมบัติ[Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier)ที่ส่งคืนตัวระบุสไตล์อิสระโลแคลที่แสดงโดยค่าการแจงนับ**Style.StyleIdentifier** ประเด็นคือชื่อของลักษณะในตัวในMicrosoft Wordเป็นภาษาท้องถิ่นสำหรับภาษาที่แตกต่างกัน ใช้ตัวระบุลักษณะคุณสามารถค้นหาลักษณะที่ถูกต้องโดยไม่คำนึงถึงภาษาของเอกสาร ค่าการแจงนับสอดคล้องกับรูปแบบในตัวMicrosoft Wordเช่นปกติ,Heading 1,Heading 2เป็นต้น รูปแบบที่ผู้ใช้กำหนดทั้งหมดจะถูกกำหนด**StyleIdentifier.User value**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
| :- |
ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้ลักษณะย่อหน้า.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### เส้นขอบและการแรเงา

เส้นขอบจะแสดงด้วยBorderCollection นี่คือคอลเลกชันของวัตถุเส้นขอบที่เข้าถึงโดยดัชนีหรือตามชนิดของเส้นขอบ ประเภทเส้นขอบจะแสดงโดยการแจงนับ`BorderType` ค่าบางอย่างของการนับมีผลบังคับใช้กับหลายหรือเพียงองค์ประกอบเอกสารหนึ่ง ตัวอย่างเช่น`BorderType.Bottom`ใช้ได้กับย่อหน้าหรือเซลล์ตารางในขณะที่`BorderType.DiagonalDown`ระบุขอบเส้นทแยงมุมในเซลล์ตาราง.

ทั้งคอลเลกชันชายแดนและแต่ละชายแดนแยกต่างหากมีคุณลักษณะที่คล้ายกันเช่นสีลักษณะเส้ คุณสมบัติของชื่อเดียวกัน คุณสามารถบรรลุประเภทเส้นขอบที่แตกต่างกันโดยการรวมค่าคุณสมบัติ นอกจากนี้วัตถุทั้ง**BorderCollection**และ**Border**ช่วยให้คุณสามารถรีเซ็ตค่าเหล่านี้เป็นค่าเริ่มต้นโดยการเรียกวิธีการ[Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) โปรดทราบว่าเมื่อรีเซ็ตคุณสมบัติเส้นขอบเป็นค่าเริ่มต้นเส้นขอบจะมองไม่เห็น.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
| :- |
คลาส[Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/)ประกอบด้วยแอตทริบิวต์การแรเงาสำหรับอิลิเมนต์เอกสาร คุณสามารถตั้งค่าพื้นผิวการแรเงาที่ต้องการและสีที่ใช้กับพื้นหลังและเบื้องหน้าขององค์ป.

รงแรเงาถูกตั้งค่าด้วย [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) ค่าการนับที่ช่วยให้การประยุกต์ใช้รูปแบบต่างๆไปยังวัตถุ**Shading** ตัวอย่างเช่นเมื่อต้องการตั้งค่าสีพื้นหลังสำหรับองค์ประกอบเอกสารให้ใช้ [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) ค่าและตั้งค่าสีแรเงาเบื้องหน้าตามความเหมาะสม.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
| :- |
ตัวอย่างด้านล่างแสดงวิธีการใช้เส้นขอบและการแรเงากับย่อหน้า.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### สแนปไปยังตาราง

Aspose.Wordsมีสองคุณสมบัติ`ParagraphFormat.SnapToGrid`และ`Font.SnapToGrid`ที่จะได้รับและการตั้งค่าคุณสมบัติย่อหน้าสแน็ปในตาราง

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### การย้ายเคอร์เซอร์

### การตรวจหาตำแหน่งเคอร์เซอร์ปัจจุบัน

คุณสามารถขอรับตำแหน่งเคอร์เซอร์ของผู้สร้างในปัจจุบันได้ตลอดเวลา คุณสมบัติ[DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode)จะส่งคืนโหนดที่เลือกอยู่ในตัวสร้างนี้ในปัจจุบัน โหนดเป็นลูกโดยตรงของย่อหน้า การแทรกการดำเนินการใดๆที่คุณดำเนินการโดยใช้`DocumentBuilder`จะแทรกก่อน`DocumentBuilder.CurrentNode` เมื่อย่อหน้าปัจจุบันว่างเปล่าหรือวางเคอร์เซอร์ไว้ก่อนสิ้นย่อหน้า`DocumentBuilder.CurrentNode`จะเป็นโมฆะ.

นอกจากนี้คุณสามารถใช้คุณสมบัติ[DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph)ซึ่งได้รับย่อหน้าที่ถูกเลือกใน**DocumentBuilder**นี้ ตัวอย่างเป็นlow codeแสดงวิธีเข้าถึงโหนดปัจจุบันในตัวสร้างเอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### ย้ายไปยังโหนดใดๆ(ย่อหน้าและบุตรหลานของพวกเขา)

ถ้าคุณมีโหนดวัตถุเอกสารซึ่งเป็นย่อหน้าหรือลูกโดยตรงของย่อหน้าคุณสามารถชี้เคอร์เซอร์ ใช้วิธีการ[DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node)เพื่อดำเนินการนี้.
ตัวอย่างรหัสต่อไปนี้แสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปยังโหนดที่ระบุ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### การย้ายไปยังเอกสารเริ่มต้น/สิ้นสุด

หากคุณต้องการย้ายไปยังจุดเริ่มต้นของเอกสารโทร[DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) ถ้าคุณต้องการที่จะย้ายไปยังส่วนท้ายของเอกสาร,โทร[DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### การย้ายไปยังส่วน

หากคุณกำลังทำงานกับเอกสารที่มีหลายส่วนคุณสามารถย้ายไปยังส่วนที่ต้องการโดยใช้[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) เมธอดนี้จะเลื่อนเคอร์เซอร์ไปที่จุดเริ่มต้นของส่วนที่ระบุและยอมรับดัชนีของส่วนที่ต้องการ เมื่อดัชนีส่วนมากกว่าหรือเท่ากับ 0 จะระบุดัชนีจากจุดเริ่มต้นของเอกสารด้วย 0 เป็นส่วนแรก เมื่อดัชนีส่วนน้อยกว่า 0 จะระบุดัชนีจากส่วนท้ายของเอกสารด้วย -1 เป็นส่วนสุดท้าย ตัวอย่างเป็นlow codeแสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปยังส่วนที่ระบุ คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [ที่นี่](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### การย้ายไปยังส่วนหัว/ส่วนท้าย

เมื่อคุณต้องการวางข้อมูลบางอย่างลงในส่วนหัวหรือส่วนท้าย,คุณควรย้ายไปที่นั่นก่อนโดยใช้[DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int).เมธอดยอมรับค่าการแจงนับHeaderFooterTypeที่ระบุชนิดของส่วนหัวหรือส่วนท้ายที่ควรย้ายเคอร์เซอร์.

หากคุณต้องการสร้างส่วนหัวและท้ายกระดาษที่แตกต่างกันสำหรับหน้าแรกคุณต้องตั้งค่าคุณสมบัติ[PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter)เป็น**true** หากคุณต้องการสร้างส่วนหัวและท้ายกระดาษที่แตกต่างกันสำหรับหน้าคู่และหน้าคี่คุณต้องตั้ง[PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter)ถึง**true**.

หากคุณต้องการกลับไปที่เรื่องราวหลักให้ใช้[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)เพื่อย้ายออกจากส่วนหัวหรือส่วนท้าย ตัวอย่างด้านล่างจะสร้างส่วนหัวและท้ายกระดาษในเอกสารโดยใช้DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### การย้ายไปยังย่อหน้า

ใช้[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int)เพื่อย้ายเคอร์เซอร์ไปยังย่อหน้าที่ต้องการในส่วนปัจจุบัน คุณควรส่งพารามิเตอร์สองตัวไปยังวิธีนี้:paragraphIndex(ดัชนีของย่อหน้าที่จะย้ายไป)และcharacterIndex(ดัชนีของอักขระภาย.

การนำทางจะดำเนินการภายในเรื่องปัจจุบันของส่วนปัจจุบัน อร์เซอร์ไปยังส่วนหัวหลักของส่วนแรกแล้วparagraphIndexจะระบุดัชนีของย่อหน้าภายในส่วนหัวของส่วนนั้น.

เมื่อparagraphIndexมากกว่าหรือเท่ากับ 0 จะระบุดัชนีจากจุดเริ่มต้นของส่วนที่มี 0 เป็นย่อหน้าแรก เมื่อparagraphIndexน้อยกว่า 0 จะระบุดัชนีจากส่วนท้ายของส่วนที่มี -1 เป็นย่อหน้าสุดท้าย ขณะนี้ดัชนีอักขระสามารถระบุเป็น 0 เพื่อย้ายไปยังจุดเริ่มต้นของย่อหน้าหรือ -1 เพื่อย้ายไปยัง ตัวอย่างรหัสต่อไปนี้แสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปยังย่อหน้าที่ คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [ที่นี่](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### การย้ายไปยังเซลล์ตาราง

ใช้[DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int)หากคุณต้องการเลื่อนเคอร์เซอร์ไปยังเซลล์ตารางในส่วนปัจจุบัน วิธีนี้ยอมรับสี่พารามิเตอร์:

- tableIndex-ดัชนีของตารางที่จะย้ายไป.
- rowIndex-ดัชนีของแถวในตาราง.
- columnIndex-ดัชนีของคอลัมน์ในตาราง.
- characterIndex-ดัชนีของอักขระภายในเซลล์.

การนำทางจะดำเนินการภายในเรื่องปัจจุบันของส่วนปัจจุบัน.

สำหรับพารามิเตอร์ดัชนีเมื่อดัชนีมากกว่าหรือเท่ากับ 0 จะระบุดัชนีตั้งแต่ต้นด้วย 0 เป็นองค์ป เมื่อดัชนีน้อยกว่า 0 จะระบุดัชนีจากจุดสิ้นสุดด้วย -1 เป็นองค์ประกอบสุดท้าย.

นอกจากนี้โปรดทราบว่าcharacterIndexขณะนี้สามารถระบุได้เพียง 0 เพื่อย้ายไปยังจุดเริ่มต้นของเซลล์หรือ -1 เพื่อย้ายไปยังจุดสิ้นสุดของเซลล์ ตัวอย่างรหัสต่อไปนี้แสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปยังเซลล์ตารางที่ระบุ คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [ที่นี่](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### การย้ายไปยังบุ๊กมาร์ก

ที่คั่นหน้าจะใช้บ่อยเพื่อทำเครื่องหมายสถานที่เฉพาะในเอกสารที่จะแทรกองค์ประกอบใหม่ เมื่อต้องการย้ายไปยังบุ๊กมาร์กใช้[DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) วิธีการนี้มีสองเกินพิกัด ที่ง่ายที่สุดยอมรับอะไรแต่ชื่อของบุ๊คมาร์คที่เคอร์เซอร์จะถูกย้าย ตัวอย่างรหัสต่อไปนี้แสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปยังบุ๊กมาร์ก.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

การโอเวอร์โหลดนี้จะเลื่อนเคอร์เซอร์ไปยังตำแหน่งหลังจากที่เริ่มต้นของบุ๊กมาร์กที่มีชื่อ เกินพิกัดอีก[DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean)เลื่อนเคอร์เซอร์ไปยังบุ๊กมาร์กที่มีความแม่นยำมากขึ้น มันยอมรับสองพารามิเตอร์บูลีน:

- isStartกำหนดว่าจะย้ายเคอร์เซอร์ไปยังจุดเริ่มต้นหรือจุดสิ้นสุดของบุ๊กมาร์ก.
- isAfterกำหนดว่าจะย้ายเคอร์เซอร์ไปหลังตำแหน่งเริ่มต้นหรือจุดสิ้นสุดของบุ๊กมาร์กหรือเลื่อนเคอร์เซอร์ไปก่อนตำแหน่งเริ่มต้นหรือจุดสิ้นสุดของบุ๊กมาร์ก.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปหลังจากจบบุ๊กมาร์ก.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

การแทรกข้อความใหม่ในลักษณะนี้ไม่ได้แทนที่ข้อความที่มีอยู่ของบุ๊กมาร์ก โปรดทราบว่าบุ๊กมาร์กบางอย่างในเอกสารถูกกำหนดให้กับเขตข้อมูลแบบฟอร์ม ย้ายไปยังบุ๊คมาร์คดังกล่าวและการแทรกข้อความที่มีแทรกข้อความลงในรหัสฟิลด์แบบฟอร์ม แม้ว่านี้จะไม่ทำให้ฟิลด์ฟอร์มเป็นโมฆะข้อความที่แทรกจะไม่สามารถมองเห็นได้เนื่องจาก.

### ย้ายไปยังช่อง`Merge`

บางครั้งคุณอาจต้องดำเนินการ"คู่มือ"Mail Mergeโดยใช้`DocumentBuilder`หรือกรอกข้อมูลผสานในลักษณะพิเศษภายในMail Mergeตัวจัดการเหตุการณ์ นั่นคือเมื่อ[DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String)อาจมีประโยชน์ เมธอดยอมรับชื่อของฟิลด์ผสาน ย้ายเคอร์เซอร์ไปยังตำแหน่งที่เกินกว่าเขตข้อมูลผสานที่ระบุและเอาเขตข้อมูลผสาน ตัวอย่างรหัสต่อไปนี้แสดงวิธีการย้ายเคอร์เซอร์ไปยังตำแหน่งที่เกินกว่าเขตข้อมูลผสานที่.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## วิธีการแปลงระหว่างหน่วยวัด

คุณสมบัติของวัตถุส่วนใหญ่ที่ให้ไว้ในAspose.WordsAPIที่แสดงถึงการวัด(ความกว้าง/ความสูงขอบและระยะทางต่างๆ)acceptค่าในจุด(1 นิ้วเท่ากับ 72 จุด) บางครั้งนี้ไม่สะดวกจึงมีชั้นเรียน`ConvertUtil`ที่ให้ฟังก์ชั่นผู้ช่วยในการแปลงระหว่างหน่วยวัดต่างๆ จะช่วยให้การแปลงนิ้วเป็นจุด,จุดนิ้วพิกเซลไปยังจุดและจุดที่จะพิกเซล เมื่อพิกเซลถูกแปลงเป็นจุดและในทางกลับกันก็สามารถทำได้ที่ความละเอียด 96 จุดต่อนิ้ว(จุด.

**ConvertUtil**

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการระบุคุณสมบัติของหน้าเป็นนิ้ว.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
