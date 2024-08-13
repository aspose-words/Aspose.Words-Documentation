---
title: มีอะไรใหม่
second_title: Aspose.Words สำหรับ .NET
articleTitle: มีอะไรใหม่ใน Aspose.Words สำหรับ .NET
linktitle: มีอะไรใหม่ใน Aspose.Words สำหรับ .NET
type: docs
description: "Aspose.Words สำหรับ .NET ขยายและปรับปรุงทุกวัน ในหน้านี้ คุณสามารถเรียนรู้เกี่ยวกับคุณสมบัติที่สำคัญและน่าสนใจที่สุดของผลิตภัณฑ์ได้"
weight: 10
url: /th/net/what-s-new-in-aspose-words-for-net/
---

หน้านี้อธิบายคุณสมบัติ Aspose.Words ใหม่ที่น่าสนใจที่สุดที่เปิดตัวในรุ่นล่าสุด

## Aspose.Words สำหรับ .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 ขยายตัวเลือกสำหรับแอสเซมบลี ปรับปรุงความสามารถในการเรนเดอร์ และขยายตัวเลือกอื่นๆ

Aspose.Words 24.6 ปรับปรุงตัวเลือกการเรนเดอร์ ปรับปรุงการค้นหาและเปรียบเทียบฟังก์ชันการทำงาน และขยายคุณสมบัติอื่นๆ หลายประการ

Aspose.Words 24.7 เปลี่ยนวิธีการทำงานกับ ActiveX ขยายความสามารถในการเรนเดอร์ รวมถึงส่งออกเป็นรูปแบบ Markdown และ XLSX

Aspose.Words 24.8 ปรับปรุงการปรับแต่งแผนภูมิด้วยการควบคุมที่แม่นยำเหนือป้ายแกน ขยายการจัดการแบบอักษร ปรับปรุงการจัดการโครงสร้างเอกสาร และเพิ่มความสามารถใหม่สำหรับการส่งออก HTML/XAML ฟังก์ชัน PDF การแปลงเอกสาร และลายเซ็นดิจิทัล

### รูปแบบที่รองรับ

ตั้งแต่เวอร์ชัน 24.7 เป็นต้นไป รองรับการส่งออกเป็น PDF/UA-2 เพื่อให้ผู้ใช้ที่มีความพิการสามารถเข้าถึงได้

### แพลตฟอร์ม <sup>24.5</sup>

แอสเซมบลี .NET 7.0/8.0 ถูกรวมอยู่ในแพ็คเกจ Aspose.Words NuGet

### การเรนเดอร์และการพิมพ์

#### การเปลี่ยนแปลงใน Charts Shapes และ DrawingML <sup>24.5</sup>

* มีการใช้เอฟเฟ็กต์ DrawingML สำหรับกราฟิก SVG ซึ่งขยายฟังก์ชันการทำงานก่อนหน้านี้ที่จำกัดเฉพาะรูปภาพแล้ว
* การสนับสนุนสำหรับการสร้างแผนภูมิผสมและการปรับคุณสมบัติ เช่น ความกว้างของช่องว่าง การทับซ้อนกัน และมาตราส่วนฟองภายในกลุ่มชุดข้อมูล ได้รับการแนะนำโดยการเพิ่มคลาส [ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/) และ [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/) และคุณสมบัติ [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/)
* มีการนำฟังก์ชันการทำงานเพื่อจัดการเอฟเฟกต์ SoftEdge ของรูปร่างมาใช้โดยการเพิ่มคลาส [SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/)
* ความสามารถในการแก้ไขการปรับค่าของรูปร่างได้ถูกนำมาใช้โดยการเพิ่ม [AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) และ [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) คลาสสาธารณะและ [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/) คุณสมบัติ.

#### การเปลี่ยนแปลงในแผนภูมิ รูปร่าง และรูปวาด <sup>24.6</sup>

* ความสามารถในการสร้างแผนภูมิได้รับการปรับปรุงแล้ว ตอนนี้คุณสามารถสร้างแผนภูมิได้หลากหลายมากขึ้น รวมถึงแผนภูมิ *ทรีแมป*, *ซันเบิร์สต์*, *ฮิสโตแกรม*, แผนภูมิ *พาเรโต*, แผนภูมิ *กล่องและหนวด*, *น้ำตก* และ *ช่องทาง* สิ่งนี้ช่วยให้คุณเห็นภาพข้อมูลของคุณในรูปแบบที่หลากหลายและให้ข้อมูลมากขึ้น
* ปรับปรุงการควบคุมสีสำหรับการจัดรูปแบบเงาแล้ว คุณสามารถควบคุมลักษณะที่ปรากฏของเอกสารของคุณได้แม่นยำยิ่งขึ้นโดยการเข้าถึงสีเงา
* การเพิ่มประสิทธิภาพสำหรับการเรนเดอร์พื้นหลังได้รับการปรับปรุงแล้ว คุณสามารถเพิ่มความเร็วในการเรนเดอร์พื้นหลังที่มีองค์ประกอบขนาดเล็กได้อย่างมาก ด้วยเทคโนโลยีการปูกระเบื้องแบบเนทิฟ
* เพิ่มการไล่ระดับสีที่สมจริงสำหรับรูปร่างแล้ว ตอนนี้คุณสามารถสร้างรูปร่าง DML ที่มีการไล่ระดับสีแบบไม่เชิงเส้นได้ โดยเลียนแบบสไตล์ภาพของ Microsoft Word เพื่อให้ดูสวยงามยิ่งขึ้น

#### การปรับแต่งป้ายกำกับข้อมูลแผนภูมิ <sup>24.7</sup>

เพิ่มความสามารถในการปรับแต่งป้ายกำกับข้อมูลแผนภูมิ เช่น **Orientation** และ **Rotation** แล้ว

#### การจัดรูปแบบตัวเลขแบบกำหนดเองสำหรับระดับรายการ <sup>24.7</sup>

เพิ่มตัวตั้งค่าสำหรับทรัพย์สินสาธารณะ [CustomNumberStyleFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/customnumberstyleformat/) แล้ว ตอนนี้คุณสามารถกำหนดรูปแบบตัวเลขที่กำหนดเองสำหรับระดับรายการได้แล้ว

#### การเปลี่ยนแปลงในการทำงานกับ ActiveX <sup>24.7</sup>

* คุณสมบัติของวัตถุ ActiveX สามารถแก้ไขได้แล้ว ทำให้คุณควบคุมพฤติกรรมของมันได้มากขึ้น
* เพิ่มความสามารถในการแก้ไขค่าของปุ่มตัวเลือกตัวควบคุม ActiveX เพื่อเปิดใช้งานการโต้ตอบแบบไดนามิกแล้ว
* เพิ่มความสามารถในการสลับช่องทำเครื่องหมาย ActiveX เป็น "เลือก" หรือ "ไม่เลือก" แล้ว

#### การควบคุมทิศทางและการหมุนของป้ายกำกับแกนของแผนภูมิ <sup>24.8</sup>

มีการเพิ่มการควบคุมทิศทางและการหมุนของป้ายกำกับแกนของแผนภูมิอย่างแม่นยำเพื่อการปรับแต่งแผนภูมิที่สะดวกยิ่งขึ้น – คลาส [AxisTickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/) ได้รับการขยายด้วยคุณสมบัติ [Orientation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/orientation/) และ [Rotation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/rotation/) ใหม่

#### การแทนที่แบ็กสแลชด้วยสัญลักษณ์เยน <sup>24.8</sup>

การส่งออก HTML และ XAML ที่เข้ากันได้ย้อนหลังสำหรับการแทนที่อักขระแบ็กสแลชด้วยสัญลักษณ์เยนได้รับการปรับปรุงแล้ว เพื่อให้บรรลุเป้าหมายนี้ จึงได้เพิ่มคุณสมบัติ **ReplaceBackslashWithYenSign** ลงในคลาส [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) และ [XamlFlowSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xamlflowsaveoptions/)

#### การใช้แท็ก SDT เป็นชื่อฟิลด์ฟอร์มเมื่อส่งออกไปยัง PDF <sup>24.8</sup>

การส่งออก PDF พร้อมการรองรับการใช้แท็ก SDT เป็นชื่อฟิลด์ฟอร์มได้รับการปรับปรุงโดยการเพิ่มคุณสมบัติ [UseSdtTagAsFormFieldName](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usesdttagasformfieldname/) ใหม่ลงในคลาส [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/)

### การแปลง การโหลด และการบันทึกเอกสาร

#### การส่งออกลิงก์เป็นรูปแบบ Markdown <sup>24.7</sup>

เพิ่มความสามารถในการควบคุมการส่งออกลิงก์ในรูปแบบ Markdown ผ่านการใช้งานคุณสมบัติ [LinkExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/linkexportmode/)

#### LowCode <sup>24.8</sup>

มีการแนะนำคลาส [LowCode.Converter](https://reference.aspose.com/words/net/aspose.words.lowcode/converter/) ใหม่ ซึ่งออกแบบมาเพื่อจัดเตรียมชุดวิธีการสำหรับการแปลงเอกสารประเภทต่างๆ ด้วยโค้ดเพียงบรรทัดเดียว

### ค้นหาและเปรียบเทียบ

#### ตัวเลือกการเปรียบเทียบขั้นสูง <sup>24.6</sup>
เพิ่มความสามารถในการปรับปรุงเวิร์กโฟลว์การวิเคราะห์ข้อมูลด้วยฟังก์ชันการเปรียบเทียบที่ได้รับการปรับปรุงแล้ว ซึ่งรวมถึงตัวเลือก [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) ใหม่ และอินเทอร์เฟซที่ออกแบบใหม่สำหรับการเปรียบเทียบขั้นสูง

### อื่น

* ฟังก์ชั่นกำจัดหน้าว่างออกจากเอกสารได้ถูกนำมาใช้โดยการเพิ่มเมธอด [RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/) <sup>24.5</sup>
* ความสามารถในการตรวจสอบการมีอยู่ของมาโคร VBA โดยไม่ต้องโหลดเอกสารนั้นมีให้โดยการเพิ่มคุณสมบัติ [HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/) <sup>24.5</sup>
* ขณะนี้รองรับการรักษาหมายเลขแหล่งที่มาในขณะที่แทรกเอกสารโดยใช้ LINQ Reporting Engine แล้ว <sup>24.5</sup>
* มีการเพิ่มคุณสมบัติ [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/) ใหม่ ซึ่งให้การประทับเวลาที่แม่นยำยิ่งขึ้นสำหรับความคิดเห็น ปรับปรุงการจัดระเบียบและการตรวจสอบย้อนกลับ <sup>24.6</sup>
* เครื่องมือการรายงาน LINQ ได้รับการปรับปรุงแล้ว มีการลบย่อหน้าว่างและคำจำกัดความของข้อความแบบกำหนดเองสำหรับสมาชิกของออบเจ็กต์ที่ขาดหายไป ซึ่งนำไปสู่รายงานที่สะอาดตาและให้ข้อมูลมากขึ้น <sup>24.6</sup>
* ขณะนี้ระบบตรวจพบรูปแบบวันที่และเวลาโดยอัตโนมัติเพื่อการส่งออกเป็นรูปแบบ XLSX ได้อย่างราบรื่น <sup>24.7</sup>
* เพิ่มทรัพย์สินสาธารณะ [IsProtected](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/) ซึ่งช่วยให้คุณตรวจสอบว่าโปรเจ็กต์ VBA ได้รับการปกป้องหรือไม่ <sup>24.7</sup>
* มีการขยายข้อมูลแบบอักษรด้วยคุณสมบัติ **EmbeddingLicensingRights** ที่เพิ่มเข้าไปในคลาส [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) และ [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) <sup>24.8</sup>
* เพิ่มวิธีการล้างส่วนหัวและส่วนท้ายของส่วนต่างๆ อย่างมีประสิทธิภาพพร้อมทั้งรักษาลายน้ำไว้ เพื่อให้ทำงานกับโครงสร้างเอกสารได้แม่นยำยิ่งขึ้น หากต้องการล้างส่วนหัวและส่วนท้ายของส่วนต่างๆ ให้ใช้วิธีสาธารณะใหม่ [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/) <sup>24.8</sup>
* เปิดใช้งานการลงนามแบบดิจิทัลของเอกสาร XPS โดยใช้ [XpsSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/) แล้ว – เพิ่มคุณสมบัติใหม่ [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/digitalsignaturedetails/) ไว้สำหรับจุดประสงค์นี้ <sup>24.8</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.Words สำหรับบันทึกประจำรุ่น .NET 24.5](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.Words สำหรับบันทึกประจำรุ่น .NET 24.6](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-6-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.Words สำหรับบันทึกประจำรุ่น .NET 24.7](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-7-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.Words สำหรับบันทึกประจำรุ่น .NET 24.8](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-8-release-notes/)

{{% /alert %}}

## Aspose.Words สำหรับ .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 ปรับปรุงประสบการณ์ในการจัดการสีเส้นโครงร่าง ปรับปรุงวัตถุ OLE และการรายงาน LINQ ตลอดจนแนะนำ API สาธารณะ Bibliography Sources ใหม่

Aspose.Words 24.2 ขยาย Charts API การจัดการสไตล์ และตัวเลือก LINQ Aspose.Words เวอร์ชันนี้ยังแนะนำความสามารถในการระบุ SvgSaveOptions ระหว่างการเรนเดอร์ การควบคุมการโหลดไฟล์ Markdown ที่ยืดหยุ่นมากขึ้น และการทำงานกับข้อความอ้างอิงสำหรับเชิงอรรถและอ้างอิงท้ายเรื่อง

Aspose.Words 24.3 นำเสนอตัวอ่าน/เขียน TIFF ใหม่และการจำลองการดำเนินการราสเตอร์ทวิไลสำหรับไฟล์ meta WMF อีกด้วย Aspose.Words 24.3 ยังคงขยาย API ของแผนภูมิ

Aspose.Words 24.4 ปรับปรุงการบันทึกรูปแบบ การตั้งค่าการแสดงผลบางอย่าง และปรับปรุงการทำงานกับลายเซ็นดิจิตอล

### รูปแบบที่รองรับ <sup>24.4</sup>

รูปแบบภาพ **WebP** ที่ทันสมัยนี้สนับสนุนใน Aspose.Words for .NET Framework 4.6.2 และสูงกว่า ตอนนี้คุณสามารถอ่านและแทรกรูปภาพ WebP เข้าสู่เอกสารได้และบันทึกภาพในรูปแบบ WebP โปรดทราบว่า WebP ใช้ได้ในขณะนี้เฉพาะใน .NET Standard และ .NET Framework v4.6.2 และสูงกว่าเท่านั้น

### การเรนเดอร์และการพิมพ์

#### การควบคุมสีเส้นโครงร่าง <sup>24.1</sup>

คลาส [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) ได้รับการขยายด้วยชุดคุณสมบัติสาธารณะใหม่ที่เกี่ยวข้องกับการจัดการสีของเส้นขีด: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) และ [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) และ [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/)

#### ส่วนขยาย API ของ DrawingML Charts API <sup>24.2 / 24.3 / 24.3</sup>

**DrawingML Charts API** ยังคงได้รับการขยายต่อไป

#### ฟอนต์ที่ประกาศในกฎ @font-face <sup>24.4</sup>

เพิ่มความสามารถในการฝังฟอนต์ที่ประกาศในกฎ @font-face เข้าในการกำหนดแบบอักษรของเอกสารผลลัพธ์โดยเพิ่มคุณสมบัติใหม่ที่ชื่อว่า [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/) 

#### การทำงานกับการจัดรูปแบบการเรียกแสงและการสะท้อน <sup>24.4</sup>

ได้ทำการนำฟีเจอร์การจัดรูปแบบการเรียกแสงและการสะท้อนสำหรับวัตถุการวาดในการทำงาน

### กำลังโหลดและบันทึกเอกสาร

#### ระบุ SvgSaveOptions ระหว่างการเรนเดอร์ <sup>24.2</sup>

เพิ่มความสามารถในการระบุ [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/) ระหว่างการเรนเดอร์โดยใช้เมธอด [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) และ [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/)

#### รักษาบรรทัดว่างเมื่อโหลดไฟล์ Markdown <sup>24.2</sup>

เพิ่มความสามารถในการรักษาบรรทัดว่างเมื่อโหลดไฟล์ Markdown แล้ว

#### ตัวอ่าน/เขียน TIFF ใหม่ <sup>24.3</sup>

ได้พัฒนาตัวอ่าน/เขียน TIFF ใหม่สำหรับ Aspose.Words for .NET Standard, .NET 6 และเวอร์ชันใหม่ ๆ อื่น ๆ Aspose.Words for .NET 24.3 เพิ่มการสนับสนุนในการอ่านภาพ TIFF ด้วยรูปแบบการบีบอัด JPEG และ Old JPEG และปรับปรุงคุณภาพของการอ่านและเขียนอย่างมีนัยสำคัญ

### อื่น

* ความสามารถในการปรับเปลี่ยนข้อความของตัวควบคุม `TextBox` OLE ได้รับการแนะนำโดยการเพิ่มคุณสมบัติ [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) ใหม่ให้กับคลาส [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/) ใหม่ <sup>24.1</sup>
* API สาธารณะของ Bibliography Sources ถูกนำมาใช้ผ่านการเพิ่ม [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) เนมสเปซใหม่ด้วยคลาสและการแจงนับใหม่ และผ่านการเพิ่มคุณสมบัติ [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) ใหม่ให้กับคลาส [Document](https://reference.aspose.com/words/net/aspose.words/document/) <sup>24.1</sup>
* มีการจัดเตรียม API เพื่อจำกัดการเข้าถึงสมาชิกประเภทโดยใช้ไวยากรณ์เทมเพลตสำหรับ `LINQ Reporting Engine` <sup>24.1</sup>
* เพิ่มคุณสมบัติสาธารณะใหม่ [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), และ [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) สำหรับการจัดการสไตล์ที่ได้รับการปรับปรุงในคลาส [Style](https://reference.aspose.com/words/net/aspose.words/style/) แล้ว <sup>24.2</sup>
* ฟังก์ชันการทำงานในการดึงข้อความเครื่องหมายอ้างอิงจริงสำหรับเชิงอรรถและอ้างอิงท้ายเรื่องได้รับการปรับปรุงด้วยคุณสมบัติ [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) และเมธอด [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) <sup>24.2</sup>
* เปิดใช้งานความเข้ากันได้กับแผนภูมิ `Word 2016` สำหรับ `LINQ Reporting Engine` แล้ว <sup>24.2</sup>
* ได้ดำเนินการจำลองการดำเนินการราสเตอร์ทวิไลสองจำพวกสำหรับไฟล์ meta WMF <sup>24.3</sup>
* ได้เปิดใช้งานความสามารถในการกำหนดตัวเลือกการลงลายเซ็นสำหรับเอกสารภายใน **SaveOptions** โดยเพิ่มคลาสใหม่ที่ชื่อว่า [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) พร้อมกับสมาชิกที่เป็นสาธารณะใหม่ และเพิ่มคุณสมบัติใหม่ในคลาส [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) และ [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) <sup>24.4</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ .NET 24.1](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ .NET 24.2](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ .NET 24.3](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ .NET 24.4](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/)

{{% /alert %}}

## Aspose.Words สำหรับ .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 ขยายตัวเลือกการเรนเดอร์ การจำลองการเรนเดอร์ metafile และตัวเลือกการบันทึก markdown

Aspose.Words 23.10 ปรับปรุงการเรนเดอร์ ขยายตัวเลือกสำหรับการโหลดและบันทึกเอกสาร และอนุญาตให้ผู้ใช้รวมเอกสารในรูปแบบใหม่

Aspose.Words 23.11 ปรับปรุงการทำงานด้วยการแก้ไข รูปแบบ XLSX และแบบอักษรบนคำอธิบายแผนภูมิพร้อมตัวเลือกเพิ่มเติม

Aspose.Words 23.12 นำเสนอคุณสมบัติและการแจงนับใหม่สำหรับการทำงานกับเอกสาร PDF และ OOXML รวมถึงการรองรับอิมเมจ WebP

### การเรนเดอร์และการพิมพ์

#### การปรับแต่งชื่อแกนใน DrawingML Charts <sup>23.9</sup>

ความสามารถในการกำหนดชื่อแกนในแผนภูมิ DrawingML ได้รับการแนะนำโดยการใช้คุณสมบัติ [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) และ [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/) คลาสสาธารณะใหม่

#### การกำหนดตำแหน่งแนวตั้งของแบบอักษรภายในย่อหน้า <sup>23.9</sup>

ขณะนี้สามารถกำหนดตำแหน่งแนวตั้งของแบบอักษรภายในย่อหน้าได้โดยใช้คุณสมบัติ [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) สาธารณะใหม่และการแจงนับ [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/) ใหม่

#### การควบคุมสีพื้นหน้า <sup>23.10</sup>

เพิ่มความสามารถในการดึงข้อมูลสีพื้นหน้าโดยไม่มีตัวปรับแต่งลงในคลาส [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) และ [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) ผ่านคุณสมบัติ **BaseForeColor**

#### การขยายฟังก์ชันการทำงานของแผนภูมิ <sup>23.10</sup>

ฟังก์ชันการทำงานของคลาส [ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) และ [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) ได้รับการขยายด้วยวิธีและคุณสมบัติใหม่

#### ปรับและปรับรูปภาพให้พอดีกับรูปร่างโดยอัตโนมัติ <sup>23.10</sup>

วิธีง่ายๆ ในการปรับและปรับรูปภาพให้พอดีภายในรูปร่างเฉพาะโดยอัตโนมัติทำได้ผ่านวิธี [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/) ใหม่

#### การจัดรูปแบบแบบอักษรเริ่มต้นสำหรับรายการคำอธิบายแผนภูมิ DrawingML <sup>23.11</sup>

เพิ่มความสามารถในการระบุการจัดรูปแบบแบบอักษรเริ่มต้นสำหรับรายการคำอธิบายแผนภูมิของแผนภูมิ DrawingML ผ่านทางคุณสมบัติ [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/) คุณสมบัตินี้ช่วยให้องค์ประกอบแผนภูมิมีรูปลักษณ์ที่คล่องตัวและสม่ำเสมอยิ่งขึ้น ปรับปรุงความสวยงามโดยรวมของเอกสาร

#### ระบุเค้าโครงหน้าเมื่อเปิด PDF ใน Reader <sup>23.12</sup>

ความสามารถในการระบุเค้าโครงหน้าที่จะใช้เมื่อเปิดเอกสารในตัวอ่าน PDF ได้รับการเพิ่มผ่านการแนะนำคุณสมบัติ [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) ใหม่ให้กับคลาส [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) และการแนะนำการแจงนับ [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/) ใหม่

### กำลังโหลดและบันทึกเอกสาร

#### การระบุชื่อโฟลเดอร์เพื่อสร้าง URI รูปภาพใน Markdown <sup>23.9</sup>

คลาส [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) ได้รับการขยายโดยรวมคุณสมบัติ [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/) ซึ่งอนุญาตให้ระบุชื่อของโฟลเดอร์ที่ใช้ในการสร้าง URI ภาพที่เขียนลงในเอกสาร Markdown

#### ลดขนาดเอาต์พุต PDF <sup>23.10</sup>

มีการเพิ่มประสิทธิภาพการเรนเดอร์ PDF ต่างๆ เพื่อลดขนาดเอาต์พุตเมื่อใช้การตั้งค่า [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/)

#### จดจำไฮเปอร์ลิงก์เมื่อโหลดเอกสาร TXT <sup>23.10</sup>

คุณลักษณะในการจดจำไฮเปอร์ลิงก์เมื่อโหลดเอกสาร TXT ได้รับการปรับใช้โดยการเพิ่มคุณสมบัติ [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/) ใหม่

### อื่น

* มีการใช้การจำลองการเรนเดอร์ Metafile เพื่อกำหนดขนาดการแรสเตอร์ โดยเฉพาะสำหรับความกว้างของปากกา WMF และความกว้างของปากกาเสริมความงาม EMF เพื่อให้บรรลุเป้าหมายนี้ คุณสมบัติ **ScaleWmfFontsToMetafileSize** จึงถูกแทนที่ด้วยคุณสมบัติ [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) และเพิ่มคุณสมบัติ [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) <sup>23.9</sup>
* วิธีการแทรกเอกสารหนึ่งไปยังอีกเอกสารหนึ่งที่ตำแหน่งเคอร์เซอร์ปัจจุบันแบบง่ายได้ถูกนำมาใช้โดยใช้วิธี [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) <sup>23.10</sup>
* เพิ่มความสามารถในการเข้าถึงและแก้ไขคุณสมบัติสไตล์ผ่านการแนะนำคุณสมบัติ [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/) ใหม่ <sup>23.10</sup>
* มีการเพิ่มพารามิเตอร์ประเภททั่วไปให้กับวิธีการของคลาส [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) <sup>23.10</sup>
* วิธีการควบคุมว่าเมื่อใดควรยอมรับ/ปฏิเสธการแก้ไขบางอย่างหรือไม่ควรนำมาใช้โดยใช้วิธี [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) และ [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/) การปรับปรุงนี้ช่วยให้ผู้ใช้สามารถควบคุมกระบวนการแก้ไขได้ดีขึ้น <sup>23.11</sup>
* ความสามารถในการเขียนทุกส่วนของเอกสารลงในแผ่นงาน XLSX เดียวกันนั้นได้มาจากประเภทการแจงนับ [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) ใหม่และคุณสมบัติ [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/) ใหม่ <sup>23.11</sup>
* วิธีการควบคุมวิธีการใช้ส่วนขยายรูปแบบ ZIP64 สำหรับเอกสาร OOXML ผ่านคุณสมบัติ Zip64Mode ใหม่ของคลาส `OoxmlSaveOptions` และการแจงนับ Zip64Mode ใหม่ <sup>23.12</sup>
* มีการรองรับอิมเมจ WebP แล้ว โปรดทราบว่าฟีเจอร์นี้ใช้ได้เฉพาะกับเวอร์ชัน .NetStandart และ .NET6+ เท่านั้น <sup>23.12</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ .NET 23.9](/words/net/aspose-words-for-net-23-9-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ .NET 23.10](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.Words สำหรับบันทึกประจำรุ่น .NET 23.11](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกประจำรุ่น Aspose.Words สำหรับ .NET 23.12](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/)

{{% /alert %}}

## Aspose.Words สำหรับ .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 ปรับปรุงความสามารถในการทำงานกับข้อมูลชุดแผนภูมิ และความสามารถในการทำงานกับเอกสาร ODT รวมถึงปรับปรุงส่วนหัว/ส่วนท้าย และการตัดข้อความ

Aspose.Words 23.6 ขยายตัวเลือกการเรนเดอร์ เพิ่มรูปแบบการส่งออกใหม่ ปรับปรุงการรายงาน LINQ และเครื่องมือ LowCode

Aspose.Words 23.7 ปรับปรุงความสามารถในการรายงาน เพิ่มรูปแบบการส่งออกใหม่ และแนะนำการเปลี่ยนแปลงในการทำงานกับตารางและลายเซ็นดิจิทัล

Aspose.Words 23.8 ขยายความสามารถของรูปแบบต่างๆ ปรับปรุงการเรนเดอร์ และเพิ่มตัวเลือกใหม่สำหรับการทำงานกับฟิลด์

### รูปแบบที่รองรับ

* ตั้งแต่เวอร์ชัน 23.6 เป็นต้นไป คุณสามารถบันทึกเอกสารในรูปแบบ XLSX ได้ ตอนนี้คุณสามารถแปลงเอกสารของคุณเป็นรูปแบบ Excel ได้แล้ว <sup>23.6</sup>
* ตั้งแต่เวอร์ชัน 23.7 เป็นต้นไป คุณสามารถบันทึกหน้าเอกสารหรือรูปร่างในรูปแบบ EPS ได้ <sup>23.7</sup>

### คุณสมบัติรูปแบบใหม่

* มีการแนะนำฟังก์ชันการสร้างสารบัญ (TOC) โดยอัตโนมัติสำหรับเอกสาร MOBI แล้ว <sup>23.8</sup>
* ตัวสร้าง [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) ได้รับการขยายด้วย [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/) <sup>23.8</sup>
* การจัดรูปร่างข้อความแนวตั้งสำหรับเมตาไฟล์ EMF ได้ถูกนำมาใช้แล้ว <sup>23.8</sup>

### การเรนเดอร์และการพิมพ์

#### รับและแก้ไขข้อมูลชุดแผนภูมิ <sup>23.5</sup>

คุณลักษณะในการรับและแก้ไขข้อมูลชุดแผนภูมิมีให้โดยการเพิ่ม:

* คลาสใหม่: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* ประเภท enum ใหม่: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### รองรับการพิมพ์ขั้นสูง <sup>23.6</sup>

เพิ่มการสนับสนุนการพิมพ์ขั้นสูงในการเรนเดอร์ WMF, EMF และ EMF+ แล้ว

#### เนื้อหาสีในหน้า <sup>23.6</sup>

เพิ่มทรัพย์สินสาธารณะ [PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/) ซึ่งระบุว่าหน้านั้นเป็นสีหรือไม่ ได้ถูกเพิ่มแล้ว

#### การจัดรูปแบบสำหรับป้ายข้อมูลแผนภูมิ <sup>23.6</sup>

ความสามารถในการตั้งค่าการเติม เส้นขีด และการจัดรูปแบบคำบรรยายสำหรับป้ายกำกับข้อมูลแผนภูมิได้ถูกนำมาใช้แล้ว

### Mail Merge และการรายงาน

#### การแทรก HTML แบบไดนามิกสำหรับ LINQ Reporting Engine <sup>23.6</sup>

เพิ่มวิธีใหม่ในการแทรก HTML แบบไดนามิกสำหรับ LINQ Reporting Engine แล้ว

#### รองรับแท็ก Mustache <sup>23.7</sup>

ขณะนี้แท็ก Mustache ได้รับการสนับสนุนในวิธี [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) และ [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion)

#### อัปเดตไวยากรณ์เทมเพลตกลไกการรายงาน LINQ <sup>23.7.1</sup>

ขณะนี้ไวยากรณ์เทมเพลต LINQ Reporting Engine รองรับวิธีการขยาย `ElementAt` และ ElementAtOrDefault

#### การระบุขนาดของภาพที่แสดงผล <sup>23.8</sup>

มีการแนะนำ [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/) ทรัพย์สินสาธารณะใหม่สำหรับการระบุขนาดของภาพที่แสดงผลในหน่วยพิกเซล

#### รักษาช่องว่างสำหรับค่าสตริง JSON – LINQ <sup>23.8</sup>

เพิ่มตัวเลือกใน LINQ Reporting Engine เพื่อรักษาช่องว่างสำหรับค่าสตริง JSON

### LowCode <sup>23.6</sup>

มีการเพิ่มวิธีการ LowCode ใหม่ที่มีวัตถุประสงค์เพื่อรวมเอกสารประเภทต่างๆ ให้เป็นเอกสารเอาต์พุตเดียว

### อื่น

* รองรับการตัดข้อความในส่วนหัว/ส่วนท้ายแล้ว <sup>23.5</sup>
* เพิ่มความสามารถในการลบลายเซ็นดิจิทัลออกจากเอกสาร ODT ด้วยวิธี [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) <sup>23.5</sup>
* เพิ่ม [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/) ทรัพย์สินสาธารณะเพื่อรับฐานและข้อความทับทิมของ [Run](https://reference.aspose.com/words/net/aspose.words/run/) คู่มือการออกเสียงแล้ว <sup>23.5</sup>
* ความสามารถในการดึงค่าลายเซ็นดิจิทัลจากเอกสารที่เซ็นชื่อแบบดิจิทัลเป็นอาร์เรย์ไบต์ได้รับการเพิ่มโดยการแนะนำคุณสมบัติ [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) ใหม่ <sup>23.7</sup>
* คลาส [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) และ [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) ได้รับการขยายด้วยสมาชิกสาธารณะใหม่ - [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/) และ [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/) <sup>23.7</sup>
* เพิ่มการสนับสนุนสำหรับฟิลด์ CITATION และ BIBLIOGRAPHY แล้ว <sup>23.8</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกประจำรุ่น Aspose.Words สำหรับ .NET 23.5](/words/net/aspose-words-for-net-23-5-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ .NET 23.6](/words/net/aspose-words-for-net-23-6-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ .NET 23.7](/words/net/aspose-words-for-net-23-7-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ .NET 23.8](/words/net/aspose-words-for-net-23-8-release-notes/)

{{% /alert %}}

## Aspose.Words สำหรับ .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 ปรับปรุงประสิทธิภาพของการจำลองการดำเนินการแรสเตอร์ รวมถึงปรับปรุงคุณภาพการส่งออกและการเรนเดอร์เอกสาร

Aspose.Words 23.2 แนะนำการบันทึกเอกสารในรูปแบบ MOBI ปรับปรุงการแสดงแผนภูมิ และทำการเปลี่ยนแปลงรายละเอียดลักษณะที่ปรากฏของเอกสารที่โดดเด่น

Aspose.Words 23.3 ปรับปรุงการนำเข้าและบันทึกเอกสารด้วยคุณสมบัติใหม่ และยังปรับปรุงคุณภาพงานด้วยสีพื้นหลังและพื้นหน้า และการไล่ระดับสีแบบรัศมี

Aspose.Words 23.4 ปรับปรุงการคำนวณพารามิเตอร์บางตัวและการวางตำแหน่งของตารางและข้อความโดยรอบ

### การปรับปรุงประสิทธิภาพ

#### การจำลองการดำเนินงานแรสเตอร์ <sup>23.1</sup>

ประสิทธิภาพและคุณภาพของการจำลองการดำเนินการแรสเตอร์ด้วยเมตาไฟล์ได้รับการปรับปรุงอย่างมีนัยสำคัญ

### รูปแบบที่รองรับ

#### ส่งออกเป็น MOBI <sup>23.2</sup>

ตั้งแต่เวอร์ชัน 23.2 เป็นต้นไป คุณสามารถบันทึกเอกสารในรูปแบบ MOBI ได้ (หรือที่เรียกว่า PRC, AZW – รูปแบบไฟล์ e-book ของ Amazon Kindle) ตอนนี้คุณไม่เพียงแต่สามารถโหลดเอกสาร MOBI เท่านั้น แต่ยังส่งออกไฟล์ของคุณเป็นรูปแบบ MOBI ได้อีกด้วย

### กำลังแสดงผล

#### ทำงานกับสีธีมแรเงา <sup>23.1</sup>

มีการใช้ความสามารถในการทำงานกับสีของธีมแรเงาแล้ว

#### การสนับสนุนค่าสัมประสิทธิ์ R-squared ในแผนภูมิ DML <sup>23.1</sup>

รองรับค่าสัมประสิทธิ์ R-squared ในป้ายกำกับเส้นแนวโน้มแผนภูมิ DML เมื่อเพิ่มการเรนเดอร์แล้ว

#### การปรับปรุงการเรนเดอร์แผนภูมิ <sup>23.2</sup>

ตั้งแต่ 23.2 การแสดงกราฟได้รับการปรับปรุงอย่างมาก

#### การควบคุมสีพื้นหลังและพื้นหน้า <sup>23.3</sup>

คลาส [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) ได้รับการขยายด้วยชุดคุณสมบัติสาธารณะใหม่ที่เกี่ยวข้องกับสีพื้นหลังและพื้นหน้า: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/) และ [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/) และ [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/)

#### การไล่ระดับสีแบบเรเดียลด้วย `SkiaSharp` Native Shader <sup>23.3</sup>

มีการใช้การเรนเดอร์การไล่ระดับสีแบบรัศมีด้วยเชเดอร์ดั้งเดิมของ `SkiaSharp` สำหรับ .NET Standard แล้ว

#### ระยะห่างระหว่างตารางและข้อความล้อมรอบ <sup>23.4</sup>

เพิ่มความสามารถในการกำหนดระยะห่างระหว่างตารางและข้อความโดยรอบโดยการแนะนำคุณสมบัติใหม่ให้กับคลาส [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/): [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) และ [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/)

### กำลังโหลดและบันทึกเอกสาร

#### สร้าง `TOC` สำหรับเอกสาร AZW3 <sup>23.1</sup>

เพิ่มความสามารถในการสร้าง `TOC` (สารบัญ) สำหรับเอกสาร AZW3 ผ่านการใช้คุณสมบัติ [NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/)

#### การส่งออกรายการไปยัง Markdown <sup>23.1</sup>

มีการจัดเตรียมวิธีการควบคุมการส่งออกรายการเป็นรูปแบบ Markdown โดยการเพิ่มคุณสมบัติ [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) ลงในคลาส [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/)

#### แจ้งความคืบหน้าการบันทึกเอกสาร <sup>23.3</sup>

การบันทึกการแจ้งเตือนความคืบหน้าสำหรับรูปแบบ MOBI และ AZW3 ได้ถูกนำมาใช้แล้ว

#### การปรับระยะห่างระหว่างประโยคและคำ <sup>23.3</sup>

เพิ่มความสามารถในการระบุว่าจะปรับประโยคและระยะห่างระหว่างคำโดยอัตโนมัติเมื่อนำเข้าเอกสารหรือไม่ โดยการแนะนำคุณสมบัติ [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/)

### อื่น

* เพิ่มความสามารถในการระบุการปรับระยะห่างอักขระของเอกสารผ่านการใช้คุณสมบัติ [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) <sup>23.2</sup>
* วิธีการสั่ง Aspose.Words ว่าจะรวมกล่องข้อความ เชิงอรรถ และอ้างอิงท้ายเรื่องในสถิติการนับคำนั้นมีให้โดยการเพิ่มคุณสมบัติ [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) <sup>23.2</sup>
* ตัวเลือกใหม่สำหรับสไตล์เอกสาร ซึ่งอนุญาตให้ระบุว่าสไตล์นั้นถูกกำหนดใหม่โดยอัตโนมัติตามค่าที่เหมาะสมหรือไม่ ได้รับการแนะนำผ่านคุณสมบัติ [AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/) <sup>23.2</sup>
* เพิ่มความสามารถในการพิจารณาว่า [Run](https://reference.aspose.com/words/net/aspose.words/run/) เป็นการเรียกใช้คู่มือการออกเสียงหรือไม่โดยใช้คุณสมบัติ [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) <sup>23.4</sup>
* วิธีง่ายๆ ในการทำงานกับชุดข้อมูลและแกนของแผนภูมิผสมได้ถูกนำมาใช้โดยการแนะนำคลาส [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) และเพิ่มคุณสมบัติ [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
* มีการเพิ่มคุณสมบัติสาธารณะใหม่ที่เชื่อมต่อกับตำแหน่งและขนาดสัมพันธ์ของรูปร่างในคลาส [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) <sup>23.4</sup>
* ความแม่นยำและประสิทธิภาพของการคำนวณความสว่างสีสำหรับความละเอียดสีข้อความอัตโนมัติได้รับการปรับปรุงให้สอดคล้องกับ Microsoft Word <sup>23.4</sup> เวอร์ชันล่าสุด

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ .NET 23.1](/words/net/aspose-words-for-net-23-1-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกประจำรุ่น Aspose.Words สำหรับ .NET 23.2](/words/net/aspose-words-for-net-23-2-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ .NET 23.3](/words/net/aspose-words-for-net-23-3-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ .NET 23.4](/words/net/aspose-words-for-net-23-4-release-notes/)

{{% /alert %}}

## Aspose.Words สำหรับ .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 ขยายตัวเลือกสำหรับการโหลดและบันทึกเอกสาร และปรับปรุงการโต้ตอบกับตัวเลือกอื่นๆ

Aspose.Words 22.10 ปรับปรุงตัวเลือกการค้นหาและแทนที่ ปรับปรุงวัตถุ OLE และขยายฟังก์ชันการทำงานของรายการ

Aspose.Words 22.11 ขยายฟังก์ชันการทำงานด้วยตัวเลือกใหม่เพื่อการทำงานที่สะดวกยิ่งขึ้นกับออบเจ็กต์ที่คุ้นเคยอยู่แล้ว: ช่อง การพิมพ์ OLE และแท็กเอกสารที่มีโครงสร้าง

Aspose.Words 22.12 ปรับปรุงความสามารถในการเรนเดอร์และแนะนำตัวเลือกสำหรับการทำงานกับระยะขอบเมื่อโหลด/บันทึกเอกสาร

### การปรับปรุงประสิทธิภาพ <sup>22.12</sup>

การเพิ่มประสิทธิภาพที่ช่วยลดความลึกของสถานะกราฟิกที่ซ้อนอยู่อย่างมากเมื่อเรนเดอร์เป็น PDF เพื่อรักษาการปฏิบัติตามข้อกำหนด ได้รับการแนะนำ

### การเรนเดอร์และการพิมพ์

#### การพิมพ์หน้าที่ไม่ใช่สีบนเครื่องพิมพ์สี <sup>22.11</sup>

โหมดการพิมพ์สี/ระดับสีเทาแบบกำหนดเองได้ถูกนำมาใช้โดยการเพิ่มค่า **GrayscaleAuto** ใหม่ลงในการแจงนับ [ColorPrintMode](https://reference.aspose.com/words/net/aspose.words.rendering/colorprintmode/)

คุณสมบัติการพิมพ์ใหม่ช่วยให้ผู้ใช้สามารถควบคุมวิธีการพิมพ์หน้าที่ไม่ใช่สีได้ หากอุปกรณ์รองรับการพิมพ์สี คุณสมบัตินี้จะมีประโยชน์หากผู้ใช้ต้องการพิมพ์หน้าที่ไม่ใช่สีโดยอัตโนมัติโดยใช้โหมดการพิมพ์ระดับสีเทาเท่านั้น

#### คุณสมบัติการเรนเดอร์เส้นขอบใหม่ <sup>22.12</sup>

มีการแนะนำคุณสมบัติสาธารณะใหม่ [ThemeColor](https://reference.aspose.com/words/net/aspose.words/border/themecolor/) และ [TintAndShade](https://reference.aspose.com/words/net/aspose.words/border/tintandshade/)

#### สูตรเส้นแนวโน้มเชิงเส้นสำหรับ DrawingML Rendering <sup>22.12</sup>

มีการใช้การเรนเดอร์สูตรเส้นแนวโน้มเชิงเส้นสำหรับแผนภูมิ DrawingML

#### การตั้งค่าทางเลือกแบบอักษรสำหรับแบบอักษร Google Noto <sup>22.12</sup>

การตั้งค่าทางเลือกแบบอักษรที่กำหนดไว้ล่วงหน้าสำหรับแบบอักษร Google Noto ได้รับการอัปเดตแล้ว

### กำลังโหลดและบันทึกเอกสาร

#### รูปร่างส่วนหัวหรือส่วนท้ายของแคชเพื่อลดขนาด PDF <sup>22.9</sup>

ความสามารถในการแคชรูปร่างส่วนหัว/ส่วนท้ายเพื่อลดขนาดของไฟล์ PDF เอาต์พุตได้ถูกนำมาใช้โดยการเพิ่มคุณสมบัติ **CacheHeaderFooterShapes** ใหม่

#### การตรวจจับการกำหนดหมายเลขอัตโนมัติเมื่อโหลดเอกสาร <sup>22.9</sup>

ความสามารถในการระบุคุณสมบัติ [AutoNumberingDetection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) เมื่อโหลดข้อความได้ถูกนำมาใช้ผ่านส่วนขยายของคลาส [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/)

#### การระบุประเภทมาร์จิ้นเฉพาะ <sup>22.12</sup>

ความสามารถในการระบุประเภท [Margin](https://reference.aspose.com/words/net/aspose.words/pagesetup/margins/) เฉพาะสำหรับส่วนที่กำหนดได้ถูกนำมาใช้แล้ว

### ค้นหาและเปรียบเทียบ <sup>22.10</sup>

ความสามารถในการละเว้น [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/) เมื่อค้นหาและแทนที่ตัวเลือกได้ถูกนำมาใช้โดยการเพิ่มคุณสมบัติ [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) ใหม่ให้กับคลาส [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/)

### อื่น

* เพิ่มคุณสมบัติใหม่เพื่อรับ FieldEQ เป็น OfficeMath แล้ว <sup>22.9</sup>
* อนุญาตให้สร้างแท็กเอกสารที่มีโครงสร้างประเภท Group ในระดับแถวได้ <sup>22.9</sup>
* ขณะนี้วัตถุและตัวควบคุม OLE ถือเป็นรูปภาพ metafile เมื่อแปลงเอกสารเป็น HTML <sup>22.10</sup>
* คุณลักษณะใหม่ในการตรวจสอบว่ารายการเฉพาะถูกสร้างขึ้นจากเทมเพลตเดียวกันกับรายการเปรียบเทียบที่ได้รับการเพิ่มโดยการแนะนำวิธี [HasSameTemplate](https://reference.aspose.com/words/net/aspose.words.lists/list/hassametemplate/) ใหม่ลงในคลาส [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) <sup>22.10</sup>
* เพิ่มความสามารถในการสร้างแท็กเอกสารที่มีโครงสร้างใหม่ประเภท [Citation](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) แล้ว <sup>22.11</sup>
* มีความสามารถในการติดตามความคืบหน้าในการอัปเดตฟิลด์ <sup>22.11</sup>
* คุณสมบัติ **EmbedAttachments** ใหม่ที่ช่วยให้ผู้ใช้สามารถฝังไฟล์แนบ OLE จากเอกสารต้นฉบับลงในเอกสาร PDF เอาท์พุตได้ถูกนำมาใช้แล้ว <sup>22.11</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ .NET 22.9](/words/net/aspose-words-for-net-22-9-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ .NET 22.10](/words/net/aspose-words-for-net-22-10-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.Words สำหรับบันทึกประจำรุ่น .NET 22.11](/words/net/aspose-words-for-net-22-11-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ .NET 22.12](/words/net/aspose-words-for-net-22-12-release-notes/)

{{% /alert %}}

## ดูสิ่งนี้ด้วย

{{% alert color="primary" %}}

หน้านี้มีข่าวประชาสัมพันธ์ล่าสุดในช่วง 2 ปีที่ผ่านมา สำหรับรายละเอียดเกี่ยวกับรุ่นก่อนหน้านี้ โปรดดูหน้า [บันทึกประจำรุ่น'](/words/net/release-notes/) ในส่วนที่เกี่ยวข้อง

{{% /alert %}}