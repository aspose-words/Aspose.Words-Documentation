---
title: ใช้`DocumentBuilder`เพื่อแก้ไขเอกสารได้อย่างง่ายดาย
second_title: Aspose.WordsสำหรับC++
articleTitle: ใช้`DocumentBuilder`เพื่อแก้ไขเอกสารได้อย่างง่ายดาย
linktitle: ใช้`DocumentBuilder`เพื่อแก้ไขเอกสารได้อย่างง่ายดาย
type: docs
description: "ใช้ตัวสร้างเอกสารเพื่อแก้ไขเอกสารได้อย่างง่ายดายในC++."
weight: 190
url: /th/cpp/using-documentbuilder-to-modify-a-document-easily/
---

## การระบุการจัดรูปแบบ

### การจัดรูปแบบแบบอักษร

การจัดรูปแบบแบบอักษรปัจจุบันจะแสดงโดยออบเจกต์`Font`ที่ส่งคืนโดยคุณสมบัติ`DocumentBuilder.Font` คลาส`Font`ประกอบด้วยคุณสมบัติแบบอักษรที่หลากหลายที่เป็นไปได้ในMicrosoft Word ตัวอย่างด้านล่างแสดงวิธีการตั้งค่าการจัดรูปแบบแบบอักษร.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### การจัดรูปแบบย่อหน้า

การจัดรูปแบบย่อหน้าปัจจุบันจะแสดงโดยออบเจกต์`ParagraphFormat`ที่ถูกส่งคืนโดยคุณสมบัติ`DocumentBuilder.ParagraphFormat` วัตถุนี้ประกอบด้วยคุณสมบัติการจัดรูปแบบย่อหน้าต่างๆที่มีอยู่ในMicrosoft Word คุณสามารถรีเซ็ตการจัดรูปแบบย่อหน้าเพื่อเริ่มต้นให้เป็นรูปแบบปกติชิดซ้ายเยื้องไม่มีระยะห่างไม่มีเส้นขอบและไม่มีการแรเงาโดยการโทร`ParagraphFormat.ClearFormatting` ตัวอย่างด้านล่างแสดงวิธีการตั้งค่าการจัดรูปแบบย่อหน้า.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### การทำงานกับตัวอักษรเอเชีย

#### ปรับช่องว่างโดยอัตโนมัติระหว่างข้อความเอเชียและภาษาละติน

ของแม่แบบฟอร์มโดยการควบคุมช่องว่างระหว่างข้อความทั้งสองชนิดคุณสามารถกำหนดค่ คุณสามารถใช้AddSpaceBetweenFarEastAndAlphaและAddSpaceBetweenFarEastAndDigitคุณสมบัติของParagraphFormatชั้นเรียนเพื่อให้บรรลุนี้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้`ParagraphFormat.AddSpaceBetweenFarEastAndAlpha`และ`ParagraphFormat.AddSpaceBetweenFarEastAndDigit`คุณสมบัติ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### เปลี่ยนระยะห่างย่อหน้าเอเชียและเยื้อง

ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นถึงวิธีการเปลี่ยนระยะห่างย่อหน้าเอเชียและเยื้อง.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### ตั้งค่าตัวเลือกแบ่งบรรทัด

แท็บการพิมพ์เอเชียของกล่องโต้ตอบคุณสมบัติ`Paragraph`ในMSคำมีกลุ่มแบ่งบรรทัด ตัวเลือกของกลุ่มนี้สามารถตั้งค่าได้โดยใช้FarEastLineBreakControl, WordWrap, HangingPunctuation คุณสมบัติของParagraphFormatชั้น เป็นlow codeตัวอย่างแสดงวิธีใช้คุณสมบัติเหล่านี้.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### การจัดรูปแบบเซลล์

การจัดรูปแบบเซลล์ถูกนำมาใช้ในระหว่างการสร้างตาราง ออบเจกต์`CellFormat`ที่ส่งคืนโดยคุณสมบัติ`DocumentBuilder.CellFormat` CellFormatห่อหุ้มคุณสมบัติของเซลล์ตารางต่างๆเช่นความกว้างหรือแนวตั้ง ตัวอย่างด้านล่างแสดงวิธีการสร้างตารางที่ประกอบด้วยเซลล์ที่จัดรูปแบบเดียว.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### การจัดรูปแบบแถว

การจัดรูปแบบแถวปัจจุบันจะถูกกำหนดโดย`RowFormat`วัตถุที่ถูกส่งคืนโดยคุณสมบัติ`DocumentBuilder.RowFormat` วัตถุห่อหุ้มข้อมูลเกี่ยวกับการจัดรูปแบบแถวตารางทั้งหมด ตัวอย่างด้านล่างแสดงวิธีการสร้างตารางที่มีเซลล์เดียวและใช้การจัดรูปแบบแถว.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### การจัดรูปแบบรายการ

Aspose.Wordsช่วยให้การสร้างง่ายของรายการโดยการใช้การจัดรูปแบบรายการ DocumentBuilderให้คุณ`DocumentBuilder.ListFormat`ที่ส่งกลับวัตถุ`ListFormat` วัตถุนี้มีหลายวิธีในการเริ่มต้นและสิ้นสุดรายการและการเพิ่ม/ลดการเยื้อง มีสองประเภททั่วไปของรายการในMicrosoft Word:สัญลักษณ์แสดงหัวข้อย่อยและหมายเลข.

- ในการเริ่มต้นรายการที่มีสัญลักษณ์แสดงหัวข้อย่อยให้โทร`ListFormat.ApplyBulletDefault`.
- ในการเริ่มรายการหมายเลขให้โทร`ListFormat.ApplyNumberDefault`.

นย่อหน้าปัจจุบันและย่อหน้าต่อไปทั้งหมดที่สร้างขึ้นโดยใช้**DocumentBuilder**จนกระทั่ง`ListFormat.RemoveNumbers`ถูกเรียกว่าเพื่อหยุดกา ในคำเอกสารรายการอาจประกอบด้วยถึงเก้าระดับ การจัดรูปแบบรายการสำหรับแต่ละระดับระบุสิ่งที่กระสุนหรือหมายเลขที่ใช้เยื้องซ้ายช่องว่.

- หากต้องการเพิ่มระดับรายการของย่อหน้าปัจจุบันโดยหนึ่งระดับให้โทร`ListFormat.ListIndent`.
- เมื่อต้องการลดระดับรายการของย่อหน้าปัจจุบันโดยหนึ่งระดับให้โทร`ListFormat.ListOutdent`.

เมธอดเปลี่ยนระดับรายการและใช้คุณสมบัติการจัดรูปแบบของระดับใหม่.

{{% alert color="primary" %}}

นอกจากนี้คุณยังสามารถใช้คุณสมบัติ`ListFormat.ListLevelNumber`เพื่อรับหรือตั้งค่าระดับรายการสำหรับย่อหน้า ระดับรายการมีหมายเลข0ถึง8.

{{% /alert %}}

ตัวอย่างด้านล่างแสดงให้เห็นถึงวิธีการสร้างรายการหลายระดับ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### การตั้งค่าหน้าเว็บและการจัดรูปแบบส่วน

ตั้งค่าหน้าเว็บและส่วนคุณสมบัติถูกห่อหุ้มใน`PageSetup`วัตถุที่ถูกส่งคืนโดยคุณสมบัติ`DocumentBuilder.PageSetup` วัตถุประกอบด้วยแอตทริบิวต์การตั้งค่าหน้าเว็บทั้งหมดของส่วน(ขอบซ้ายขอบล่างขนาดกระด ตัวอย่างด้านล่างแสดงวิธีการตั้งค่าคุณสมบัติเช่นขนาดหน้าและการวางแนวสำหรับส่วนปัจ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### การใช้สไตล์

บางรูปแบบวัตถุเช่นแบบอักษรหรือParagraphFormatรูปแบบการสนับสนุน สไตล์ที่ผู้ใช้กำหนดในตัวเดียวจะแสดงโดยออบเจกต์`Style`ที่มีคุณสมบัติลักษณะที่สอดคล้องกันเช่น.

นอกจากนี้ออบเจกต์**Style**มีคุณสมบัติ`Style.StyleIdentifier`ที่ส่งคืนตัวระบุสไตล์อิสระโลแคลที่แสดงโดยค่าการแจงนับ**Style.StyleIdentifier** ประเด็นคือชื่อของลักษณะในตัวในMicrosoft Wordเป็นภาษาท้องถิ่นสำหรับภาษาที่แตกต่างกัน ใช้ตัวระบุลักษณะคุณสามารถค้นหาลักษณะที่ถูกต้องโดยไม่คำนึงถึงภาษาของเอกสาร ค่าการแจงนับสอดคล้องกับMicrosoft Wordรูปแบบในตัวเช่นปกติหัวข้อ1หัวข้อ2ฯลฯ รูปแบบที่ผู้ใช้กำหนดทั้งหมดจะถูกกำหนด**StyleIdentifier.User value** ตัวอย่างด้านล่างแสดงวิธีใช้สไตล์ย่อหน้า.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### เส้นขอบและการแรเงา

เส้นขอบจะแสดงด้วยBorderCollection นี่คือคอลเลกชันของวัตถุเส้นขอบที่เข้าถึงโดยดัชนีหรือตามชนิดของเส้นขอบ ประเภทเส้นขอบจะแสดงโดยการแจงนับ`BorderType` ค่าบางอย่างของการนับมีผลบังคับใช้กับหลายหรือเพียงองค์ประกอบเอกสารหนึ่ง ตัวอย่างเช่น`BorderType.Bottom`ใช้ได้กับย่อหน้าหรือเซลล์ตารางในขณะที่`BorderType.DiagonalDown`ระบุขอบเส้นทแยงมุมในเซลล์ตาราง.

ทั้งคอลเลกชันชายแดนและแต่ละชายแดนแยกต่างหากมีคุณลักษณะที่คล้ายกันเช่นสีรูปแบบเส้ คุณสมบัติของชื่อเดียวกัน คุณสามารถบรรลุประเภทเส้นขอบที่แตกต่างกันโดยการรวมค่าคุณสมบัติ นอกจากนี้วัตถุทั้ง**BorderCollection**และ**Border**ช่วยให้คุณสามารถรีเซ็ตค่าเหล่านี้เป็นค่าเริ่มต้นโดยการเรียกวิธีการ`Border.ClearFormatting` โปรดทราบว่าเมื่อรีเซ็ตคุณสมบัติเส้นขอบเป็นค่าเริ่มต้นเส้นขอบจะมองไม่เห็น คลาส`Shading`ประกอบด้วยแอตทริบิวต์การแรเงาสำหรับอิลิเมนต์เอกสาร คุณสามารถตั้งค่าพื้นผิวการแรเงาที่ต้องการและสีที่ใช้กับพื้นหลังและเบื้องหน้าขององค์ป.

พื้นผิวการแรเงาถูกตั้งค่าด้วยค่าการแจงนับ`TextureIndex`ที่ช่วยให้การประยุกต์ใช้รูปแบบต่างๆไปยังวัตถุ**Shading** ตัวอย่างเช่นในการตั้งค่าสีพื้นหลังสำหรับองค์ประกอบเอกสารให้ใช้ค่า`TextureIndex.TextureSolid`และตั้งค่าสีแรเงา ตัวอย่างด้านล่างแสดงวิธีการใช้เส้นขอบและการแรเงากับย่อหน้า.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### สแนปไปยังตาราง

Aspose.Wordsมีสองคุณสมบัติ`ParagraphFormat.SnapToGrid`และ`Font.SnapToGrid`ที่จะได้รับและการตั้งค่าคุณสมบัติย่อหน้าสแน็ปในตาราง.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## การย้ายเคอร์เซอร์

### การตรวจหาตำแหน่งเคอร์เซอร์ปัจจุบัน

คุณสามารถขอรับตำแหน่งเคอร์เซอร์ของผู้สร้างในปัจจุบันได้ตลอดเวลา คุณสมบัติ`DocumentBuilder.CurrentNode`จะส่งคืนโหนดที่เลือกอยู่ในตัวสร้างนี้ในปัจจุบัน โหนดเป็นลูกโดยตรงของย่อหน้า การแทรกการดำเนินการใดๆที่คุณดำเนินการโดยใช้`DocumentBuilder`จะแทรกก่อน`DocumentBuilder.CurrentNode` เมื่อย่อหน้าปัจจุบันว่างเปล่าหรือวางเคอร์เซอร์ไว้ก่อนสิ้นย่อหน้า`DocumentBuilder.CurrentNode`จะเป็นโมฆะ.

นอกจากนี้คุณสามารถใช้คุณสมบัติ`DocumentBuilder.CurrentParagraph`ซึ่งได้รับย่อหน้าที่ถูกเลือกใน**DocumentBuilder**นี้ ตัวอย่างด้านล่างแสดงวิธีเข้าถึงโหนดปัจจุบันในตัวสร้างเอกสาร คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จากที่นี่.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### ย้ายไปยังโหนดใดๆ(ย่อหน้าและบุตรหลานของพวกเขา)

ถ้าคุณมีโหนดวัตถุเอกสารซึ่งเป็นย่อหน้าหรือลูกโดยตรงของย่อหน้าคุณสามารถชี้เคอร์เซอร์ ใช้วิธีการ`DocumentBuilder.MoveTo`เพื่อดำเนินการนี้ ตัวอย่างด้านล่างแสดงวิธีย้ายตำแหน่งเคอร์เซอร์ไปยังโหนดที่ระบุ คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จากที่นี่.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### การย้ายไปยังเอกสารเริ่มต้น/สิ้นสุด

หากคุณต้องการย้ายไปยังจุดเริ่มต้นของเอกสารโทร`DocumentBuilder.MoveToDocumentStart` ถ้าคุณต้องการที่จะย้ายไปยังส่วนท้ายของเอกสาร,โทร`DocumentBuilder.MoveToDocumentEnd`. ตัวอย่างด้านล่างแสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปที่จุดเริ่มต้นหรือจุดสิ้นสุดของเอกส คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จากที่นี่.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### การย้ายไปยังส่วน

หากคุณกำลังทำงานกับเอกสารที่มีหลายส่วนคุณสามารถย้ายไปยังส่วนที่ต้องการโดยใช้`DocumentBuilder.MoveToSection` เมธอดนี้จะเลื่อนเคอร์เซอร์ไปที่จุดเริ่มต้นของส่วนที่ระบุและยอมรับดัชนีของส่วนที่ต้องการ เมื่อดัชนีส่วนมากกว่าหรือเท่ากับ0จะระบุดัชนีจากจุดเริ่มต้นของเอกสารด้วย0เป็นส่วนแรก เมื่อดัชนีส่วนน้อยกว่า0จะระบุดัชนีจากส่วนท้ายของเอกสารด้วย -1 เป็นส่วนสุดท้าย ตัวอย่างด้านล่างแสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปยังส่วนที่ระบุ คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จากที่นี่.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### การย้ายไปยังส่วนหัว/ส่วนท้าย

เมื่อคุณต้องการวางข้อมูลบางอย่างลงในส่วนหัวหรือส่วนท้าย,คุณควรย้ายไปที่นั่นก่อนโดยใช้`DocumentBuilder.MoveToHeaderFooter`. เมธอดยอมรับค่าการแจงนับHeaderFooterTypeที่ระบุชนิดของส่วนหัวหรือส่วนท้ายที่ควรย้ายเคอร์เซอร์ หากคุณต้องการสร้างส่วนหัวและท้ายกระดาษที่แตกต่างกันสำหรับหน้าแรกคุณต้องตั้งค่าคุณสมบัติ`PageSetup.DifferentFirstPageHeaderFooter`เป็น**true** หากคุณต้องการสร้างส่วนหัวและท้ายกระดาษที่แตกต่างกันสำหรับหน้าคู่และหน้าคี่คุณต้องตั้ง`PageSetup.OddAndEvenPagesHeaderFooter`ถึง**true**.

หากคุณต้องการกลับไปที่เรื่องราวหลักให้ใช้**DocumentBuilder.MoveToSection**เพื่อย้ายออกจากส่วนหัวหรือส่วนท้าย ตัวอย่างด้านล่างจะสร้างส่วนหัวและท้ายกระดาษในเอกสารโดยใช้DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### การย้ายไปยังย่อหน้า

ใช้`DocumentBuilder.MoveToParagraph`เพื่อย้ายเคอร์เซอร์ไปยังย่อหน้าที่ต้องการในส่วนปัจจุบัน คุณควรส่งพารามิเตอร์สองตัวไปยังวิธีนี้:paragraphIndex(ดัชนีของย่อหน้าที่จะย้ายไป)และcharacterIndex(ดัชนีของอักขระภาย.

การนำทางจะดำเนินการภายในเรื่องปัจจุบันของส่วนปัจจุบัน อร์เซอร์ไปยังส่วนหัวหลักของส่วนแรกแล้วparagraphIndexจะระบุดัชนีของย่อหน้าภายในส่วนหัวของส่วนนั้น.

เมื่อparagraphIndexมากกว่าหรือเท่ากับ0จะระบุดัชนีจากจุดเริ่มต้นของส่วนที่มี0เป็นย่อหน้าแรก เมื่อparagraphIndexน้อยกว่า0จะระบุดัชนีจากส่วนท้ายของส่วนที่มี -1 เป็นย่อหน้าสุดท้าย.

ขณะนี้ดัชนีอักขระสามารถระบุเป็น0เพื่อย้ายไปยังจุดเริ่มต้นของย่อหน้าหรือ -1 เพื่อย้ายไปยังจุดสิ้นสุดของย่อหน้า ตัวอย่างด้านล่างแสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปยังย่อหน้าที่ คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จากที่นี่.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### การย้ายไปยังเซลล์ตาราง

ใช้`DocumentBuilder.MoveToCell`หากคุณต้องการเลื่อนเคอร์เซอร์ไปยังเซลล์ตารางในส่วนปัจจุบัน วิธีนี้ยอมรับสี่พารามิเตอร์:

- tableIndex-ดัชนีของตารางที่จะย้ายไป.
- rowIndex-ดัชนีของแถวในตาราง.
- columnIndex-ดัชนีของคอลัมน์ในตาราง.
- characterIndex-ดัชนีของอักขระภายในเซลล์.

การนำทางจะดำเนินการภายในเรื่องปัจจุบันของส่วนปัจจุบัน สำหรับพารามิเตอร์ดัชนีเมื่อดัชนีมากกว่าหรือเท่ากับ0จะระบุดัชนีตั้งแต่ต้นด้วย0เป็นองค์ประก เมื่อดัชนีน้อยกว่า0จะระบุดัชนีจากจุดสิ้นสุดด้วย -1 เป็นองค์ประกอบสุดท้าย.

นอกจากนี้โปรดทราบว่าcharacterIndexขณะนี้สามารถระบุ0เพื่อย้ายไปยังจุดเริ่มต้นของเซลล์หรือ -1 เพื่อย้ายไปยังจุดสิ้นสุดของเซลล์ ตัวอย่างด้านล่างแสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปยังเซลล์ตารางที่ระบุ คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จากที่นี่.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### การย้ายไปยังบุ๊กมาร์ก

ที่คั่นหน้าจะใช้บ่อยเพื่อทำเครื่องหมายสถานที่เฉพาะในเอกสารที่จะแทรกองค์ประกอบใหม่ เมื่อต้องการย้ายไปยังบุ๊กมาร์กใช้`DocumentBuilder.MoveToBookmark` วิธีการนี้มีสองเกินพิกัด ที่ง่ายที่สุดยอมรับอะไรแต่ชื่อของบุ๊คมาร์คที่เคอร์เซอร์จะถูกย้าย ตัวอย่างด้านล่างแสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปยังบุ๊กมาร์ก คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จากที่นี่.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

การโอเวอร์โหลดนี้จะเลื่อนเคอร์เซอร์ไปยังตำแหน่งหลังจากที่เริ่มต้นของบุ๊กมาร์กที่มีชื่อ เกินพิกัดอีก`DocumentBuilder.MoveToBookmark`เลื่อนเคอร์เซอร์ไปยังบุ๊กมาร์กที่มีความแม่นยำมากขึ้น มันยอมรับสองพารามิเตอร์บูลีน:

- isStartกำหนดว่าจะย้ายเคอร์เซอร์ไปยังจุดเริ่มต้นหรือจุดสิ้นสุดของบุ๊กมาร์ก.
- isAfterกำหนดว่าจะย้ายเคอร์เซอร์ไปหลังตำแหน่งเริ่มต้นหรือจุดสิ้นสุดของบุ๊กมาร์กหรือเลื่อนเคอร์เซอร์ไปก่อนตำแหน่งเริ่มต้นหรือจุดสิ้นสุดของบุ๊กมาร์ก.

ตัวอย่างด้านล่างแสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปหลังจากจบบุ๊กมาร์กแล้ว.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

การเปรียบเทียบสำหรับทั้งสองวิธีไม่ใช่ตัวพิมพ์เล็ก.

การแทรกข้อความใหม่ในลักษณะนี้ไม่ได้แทนที่ข้อความที่มีอยู่ของบุ๊กมาร์ก โปรดทราบว่าบุ๊กมาร์กบางอย่างในเอกสารถูกกำหนดให้กับเขตข้อมูลแบบฟอร์ม ย้ายไปยังบุ๊คมาร์คดังกล่าวและการแทรกข้อความที่มีแทรกข้อความลงในรหัสฟิลด์แบบฟอร์ม แม้ว่านี้จะไม่ทำให้ฟิลด์ฟอร์มเป็นโมฆะข้อความที่แทรกจะไม่สามารถมองเห็นได้เนื่องจาก.

## วิธีการแปลงระหว่างหน่วยวัด

คุณสมบัติของวัตถุส่วนใหญ่ที่ให้ไว้ในAspose.WordsAPIที่แสดงถึงการวัด(ความกว้าง/ความสูงขอบและระยะทางต่างๆ)acceptค่าในจุด(1 นิ้วเท่ากับ 72 จุด) บางครั้งนี้ไม่สะดวกจึงมีชั้นเรียน`ConvertUtil`ที่ให้ฟังก์ชั่นผู้ช่วยในการแปลงระหว่างหน่วยวัดต่างๆ จะช่วยให้การแปลงนิ้วเป็นจุด,จุดนิ้วพิกเซลไปยังจุดและจุดที่จะพิกเซล เมื่อพิกเซลถูกแปลงเป็นจุดและในทางกลับกันก็สามารถทำได้ที่ความละเอียด 96 จุดต่อนิ้ว(จุด.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
