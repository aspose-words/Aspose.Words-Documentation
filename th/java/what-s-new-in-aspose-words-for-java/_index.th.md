---
title: มีอะไรใหม่
second_title: Aspose.WordsสำหรับJava
articleTitle: มีอะไรใหม่ในAspose.WordsสำหรับJava
linktitle: มีอะไรใหม่ในAspose.WordsสำหรับJava
type: docs
description: "Aspose.WordsสำหรับJavaขยายและปรับปรุงทุกวัน ในหน้านี้คุณสามารถเรียนรู้เกี่ยวกับคุณสมบัติขนาดใหญ่และน่าสนใจที่สุดของผลิตภัณฑ์."
weight: 2
url: /th/java/what-s-new-in-aspose-words-for-java/
timestamp: 2024-10-14-12-53-06
---

หน้านี้อธิบายถึงคุณลักษณะใหม่ที่น่าสนใจที่สุดAspose.Wordsที่นำมาใช้ในรุ่นล่าสุด.

## Aspose.WordsสำหรับJava 24.9, 24.10

Aspose.Words24.9แนะนำการแทรกgroup shapeและการแทรกStructuredDocumentTagผ่านทางDocumentBuilderช่วยเพิ่มการแสดงผลแผนภูมิรัศมีด้วยการสำเร็จการศึกษาปรับปรุงลายเซ็นดิจิตอลด้วยการสนับสนุนXAdES-EPESเพิ่มการรับรู้ขีดเส้นใต้Markdownและให้การเข้าถึงเชิงอรรถ/ตัวคั่นปลายทาง.

Aspose.Words24.10นำเสนอการสนับสนุนการควบคุมที่เพิ่มขึ้นด้วยการสร้างCommandButtonการควบคุมการมองเห็นรูปร่างใหม่ความสามารถในการgroup shapesปรับปรุงMarkdownการส่งออกสำหรับตาราง,การจัดรูปแบบแผนภูมิสำหรับPieและDoughnutการจัดการการเข้ารหัสขนาดใหญ่ที่ดีขึ้นและการสนับสนุนสำหรับแบบอักษรที่ล้าสมัยของไต้หวัน.

### การแสดงผลและการพิมพ์

#### จบการศึกษาในแผนภูมิรัศมี <sup>24.9</sup>

การแสดงผลของการสำเร็จการศึกษาในแผนภูมิรัศมีได้รับการดำเนินการ.

#### CommandButtonการควบคุมแอคทีฟ <sup>24.10</sup>

มีการแนะนำความสามารถในการสร้างCommandButtonตัวควบคุมแอคทีฟเอ็กซ์โดยการเพิ่มวิธีสาธารณะใหม่[InsertForms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertForms2OleControl-com.aspose.words.Forms2OleControl)และคลาสสาธารณะใหม่[Forms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/forms2olecontrol/).

#### ควบคุมการมองเห็นรูปร่าง <sup>24.10</sup>

มีการเพิ่มคุณสมบัติสาธารณะใหม่[Hidden](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getHidden)เพื่อควบคุมการมองเห็นของรูปร่าง.

#### การเปลี่ยนแปลงในPieและDoughnutแผนภูมิ <sup>24.10</sup>

คุณสมบัติสาธารณะใหม่หลายแห่งถูกเพิ่มลงในรูปแบบPieและDoughnutแผนภูมิ.

### การแปลงโหลดและบันทึกเอกสาร

#### ขีดเส้นใต้การจัดรูปแบบเมื่อโหลดไฟล์Markdown <sup>24.9</sup>

ตัวเลือกในการจดจำการจัดรูปแบบขีดเส้นใต้เมื่อโหลดเอกสารMarkdownได้ถูกรวมไว้โดยการเพิ่มคุณสมบัติสาธารณะใหม่[ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting).

#### ส่งออกตารางเป็นHTMLเมื่อบันทึกเป็นMarkdown <sup>24.10</sup>

ตัวเลือกในการส่งออกตารางเป็นHTMLเมื่อมีการบันทึกเอกสารไปยังรูปแบบMarkdownโดยการเพิ่มคุณสมบัติสาธารณะใหม่[ExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportAsHtml)และการแจงนับ[MarkdownExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownexportashtml/).

### ลายเซ็นดิจิตอล

#### ลงนามในเอกสารด้วยXAdES-EPES <sup>24.9</sup>

ความสามารถในการลงนามในเอกสารด้วยXAdES-EPESระดับXML-DSigลายเซ็นได้รับการแนะนำโดยการเพิ่มทรัพย์สินสาธารณะใหม่[XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel)และการนับสาธารณะใหม่[XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/)

### อื่นๆ

* วิธีการสาธารณะใหม่[InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...)ถูกเพิ่มเข้าไปgroup shapes <sup>24.9</sup>
* มีการเพิ่มวิธีการสาธารณะใหม่[InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int)เพื่อแทรก**StructuredDocumentTags**ลงในเอกสาร <sup>24.9</sup>
* การเข้าถึงสาธารณะเพื่อแยกเชิงอรรถ/สิ้นสุดหมายเหตุได้รับการให้บริการโดยการเพิ่มชั้ <sup>24.9</sup>
* ความสามารถในการจัดกลุ่มรูปร่างของแต่ละบุคคลgroup shapesเข้าด้วยกันและจัดกลุ่มโดยตรงทั้งรูปร่างและgroup shapesได้รับการแนะนำโดยการเพิ่มวิธีการ[InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-double-double-double-double-com.aspose.words.ShapeBase...) <sup>24.10</sup>
* การจัดการการเข้ารหัสขนาดใหญ่ 5 สำหรับTrueTypeตารางซีแมปได้รับการปรับปรุง <sup>24.10</sup>
* การสนับสนุนสำหรับแบบอักษรไต้หวันล้าสมัยได้รับการปรับปรุง <sup>24.10</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava24.9บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava24.10บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-10-release-notes/).

{{% /alert %}}

## Aspose.WordsสำหรับJava 24.5, 24.6, 24.7, 24.8

Aspose.Words24.5ขยายตัวเลือกสำหรับแอสเซมบลีปรับปรุงความสามารถในการแสดงผลและขยายตัวเลือกอื่นๆ.

Aspose.Words24.6ปรับปรุงตัวเลือกการแสดงผลเพิ่มการค้นหาและเปรียบเทียบฟังก์ชันการทำงานและขย.

Aspose.Words24.7เปลี่ยนวิธีการทำงานกับแอคทีฟเอ็กซ์ขยายความสามารถในการแสดงผลตลอดจนการส่งออกไปยังรูปแบบMarkdownและXLSX.

Aspose.Words24.8ช่วยเพิ่มการปรับแต่งแผนภูมิด้วยการควบคุมที่แม่นยำกว่าฉลากแกนขยายการจัดการแบบอักษรปรับปรุงการจัดการโครงสร้างเอกสารและเพิ่มความสามารถใหม่สำหรับHTML/XAMLการส่งออกPDFฟังก์ชันการแปลงเอกสารและลายเซ็นดิจิทัล.

### รูปแบบที่รองรับ

เริ่มต้นจากรุ่น24.7ส่งออกไปยังPDF/UA-2ได้รับการสนับสนุนเพื่อให้แน่ใจว่าการเข้าถึงสำหรับผู้ใช้ที่มีค.

### การแสดงผลและการพิมพ์

#### การเปลี่ยนแปลงในแผนภูมิรูปร่างและDrawingML <sup>24.5</sup>

- เอฟเฟกต์DrawingMLแสดงผลสำหรับSVGกราฟิกซึ่งขยายฟังก์ชันการทำงานก่อนหน้านี้จำกัดเฉพาะภาพ.
- การสนับสนุนสำหรับการสร้างแผนภูมิคำสั่งผสมและการปรับคุณสมบัติเช่นความกว้างช่องว่างทับซ้อนและสเกลฟองภายในกลุ่มซีรีส์ได้รับการแนะนำโดยการเพิ่มชั้นเรียน[ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/)และ[ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/)และคุณสมบัติ[SeriesGroups](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeriesGroups).
- ฟังก์ชันการทำงานในการจัดการผลSoftEdgeของรูปร่างได้รับการดำเนินการโดยการเพิ่ม[SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/)คลาส.
- ความสามารถในการปรับเปลี่ยนค่าของรูปร่างได้รับการดำเนินการโดยการเพิ่ม[AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/)และ[Adjustment](https://reference.aspose.com/words/java/com.aspose.words/adjustment/)ชั้นเรียนสาธารณะและ[Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAdjustments)คุณสมบัติ.

#### การเปลี่ยนแปลงในแผนภูมิรูปร่างและรูปวาด <sup>24.6</sup>

- ความสามารถในการสร้างแผนภูมิได้รับการปรับปรุง ตอนนี้คุณสามารถสร้างความหลากหลายของแผนภูมิที่กว้างขึ้นรวมถึง*Treemaps*, *Sunbursts*, *Histograms*, *Pareto* แผนภูมิ*Box & Whisker*แผนภูมิ*Waterfalls*และ*Funnels* ยให้คุณเห็นภาพข้อมูลของคุณในทางที่หลากหลายมากขึ้นและให้ข้อมูล.
- การควบคุมสีสำหรับการจัดรูปแบบเงาได้รับการปรับปรุง คุณสามารถควบคุมรูปลักษณ์ของเอกสารของคุณได้อย่างแม่นยำยิ่งขึ้นโดยการเข้าถึงสีเงา.
- เพิ่มประสิทธิภาพการทำงานสำหรับการแสดงผลพื้นหลังได้รับการปรับปรุง คุณอย่างมีนัยสำคัญสามารถเพิ่มความเร็วในการแสดงผลของภูมิหลังที่มีองค์ประกอบขนาด.
- การไล่ระดับสีที่สมจริงสำหรับรูปร่างได้รับการเพิ่ม ตอนนี้คุณสามารถสร้างDMLรูปทรงที่มีการไล่ระดับสีที่ไม่ใช่เชิงเส้น,เลียนแบบสไตล์ภาพของMicrosoft Wordเพื่อ.

#### การปรับแต่งฉลากข้อมูลแผนภูมิ <sup>24.7</sup>

ความสามารถในการปรับแต่งป้ายข้อมูลแผนภูมิเช่น**Orientation**และ**Rotation**ได้ถูกเพิ่ม.

#### จัดแต่งทรงผมจำนวนที่กำหนดเองสำหรับระดับรายการ <sup>24.7</sup>

มีการเพิ่มตัวตั้งค่าสำหรับคุณสมบัติสาธารณะ[CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat) ตอนนี้คุณสามารถกำหนดจัดแต่งทรงผมจำนวนที่กำหนดเองสำหรับระดับรายการ.

#### การเปลี่ยนแปลงในการทำงาน <sup>24.7</sup>

* สามารถปรับเปลี่ยนคุณสมบัติของอ็อบเจ็กต์ของแอคทีฟแอคทีฟได้ในขณะนี้ทำให้คุณสามารถค.
* มีการเพิ่มความสามารถในการปรับเปลี่ยนค่าของปุ่มตัวควบคุมเพื่อเปิดใช้งานการโต้ตอบ.
* มีการเพิ่มความสามารถในการสลับกิจกรรมเป็นcheckboxเป็น"ถูกเลือก"หรือ"ไม่ถูกเลือก".

#### ควบคุมแกนแผนภูมิป้ายติ๊กป้ายการวางแนวทางและการหมุน <sup>24.8</sup>

การควบคุมการวางแนวและการหมุนของฉลากติ๊กแกนแผนภูมิที่แม่นยำสำหรับการปรับแต่งแผนภูมิที่สะดวกยิ่งขึ้น-ชั้น[AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/)ได้รับการขยายด้วยคุณสมบัติใหม่**Orientation**และ**Rotation**.

#### การเปลี่ยนเครื่องหมายทับด้วยป้ายเงินเยน <sup>24.8</sup>

ย้อนกลับเข้ากันได้HTMLและXAMLการส่งออกสำหรับการแทนที่อักขระเครื่องหมายเงินเยนได้รับการ เพื่อให้บรรลุนี้คุณสมบัติ**ReplaceBackslashWithYenSign**ได้ถูกเพิ่มเข้าไปในชั้นเรียน[HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/)และ[XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/).

#### การใช้แท็กSDTเป็นชื่อฟิลด์ฟอร์มเมื่อส่งออกไปยังPDF <sup>24.8</sup>

PDFส่งออกด้วยการสนับสนุนสำหรับการใช้SDTแท็กเป็นชื่อฟิลด์ฟอร์มได้รับการปรับปรุงโดยการเพิ่มคุณสมบัติใหม่**UseSdtTagAsFormFieldName**ลงในชั้นเรียน[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/).

### การแปลงโหลดและบันทึกเอกสาร

#### กำลังส่งออกลิงก์ไปยังรูปแบบMarkdown <sup>24.7</sup>

ความสามารถในการควบคุมการส่งออกลิงก์ในรูปแบบMarkdownได้ถูกเพิ่มผ่านการนำคุณสมบัติ[LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode)ไปใช้.

#### LowCode 24.8 <sup>24.8</sup>

คลาสใหม่**LowCode.Converter**ออกแบบมาเพื่อให้ชุดของวิธีการสำหรับการแปลงชนิดเอกสารต่างๆที่มีบรรทัดเดี.

### ค้นหาและเปรียบเทียบ

#### ตัวเลือกการเปรียบเทียบขั้นสูง <sup>24.6</sup>

ความสามารถในการปรับปรุงเวิร์กโฟลว์การวิเคราะห์ข้อมูลที่มีฟังก์ชั่นการเปรียบเทียบที่ อ็อพชัน[IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId)ใหม่และอินเทอร์เฟซที่ออกแบบใหม่สำหรับการเปรียบเทียบขั้นสูง.

### อื่นๆ

* ฟังก์ชันในการกำจัดหน้าว่างออกจากเอกสารได้ถูกนำมาใช้โดยการเพิ่มวิธีการ[RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages) <sup>24.5</sup>
* ความสามารถในการตรวจสอบสถานะของแมโครVBAโดยไม่ต้องโหลดเอกสารได้โดยการเพิ่มคุณสมบัติ[HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros) <sup>24.5</sup>
* การเก็บหมายเลขแหล่งที่มาในขณะที่แทรกเอกสารโดยใช้เครื่องมือการรายงานLINQได้รับการสนับสนุนในขณะนี้ <sup>24.5</sup>
* มีการเพิ่มคุณสมบัติใหม่[DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc)ซึ่งจะช่วยให้การประทับเวลาที่แม่นยำยิ่งขึ้นสำหรับความคิดเห็นปรับปรุงองค์กรและการตรวจสอบย้อนกลับ <sup>24.6</sup>
* เครื่องมือการรายงานLINQได้รับการปรับปรุงแล้ว งข้อความที่กำหนดเองสำหรับสมาชิกวัตถุที่ขาดหายไปได้รับการทำที่นำไปสู่การทำความส <sup>24.6</sup>
* รูปแบบวันที่จะถูกตรวจพบโดยอัตโนมัติสำหรับการส่งออกที่ไร้รอยต่อไปยังรูปแบบXLSX <sup>24.7</sup>
* คุณสมบัติสาธารณะ[IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected)ซึ่งช่วยให้คุณสามารถตรวจสอบว่าโครงการVBAได้รับการป้องกัน,มีการเ <sup>24.7</sup>
* ข้อมูลแบบอักษรถูกขยายด้วยคุณสมบัติของ**EmbeddingLicensingRights**ที่เพิ่มเข้าไปในชั้นเรียน[FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/)และ[PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) <sup>24.8</sup>
* วิธีการล้างส่วนหัวและท้ายกระดาษได้อย่างมีประสิทธิภาพในขณะที่เก็บรักษาลายน้ำได้ถูก เมื่อต้องการล้างส่วนหัวและท้ายกระดาษให้ใช้วิธีการสาธารณะใหม่**ClearHeadersFooters** <sup>24.8</sup>
* การลงลายเซ็นดิจิทัลของXPSเอกสารที่ใช้[XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/)ได้ถูกเปิดใช้งานแล้ว-มีการเพิ่มคุณสมบัติใหม่**DigitalSignatureDetails**เพื่อจุดประสงค์นี้ <sup>24.8</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava24.5บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava24.6บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava24.7บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava24.8บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.WordsสำหรับJava 24.1, 24.2, 24.3, 24.4

Aspose.Words24.1ช่วยเพิ่มประสบการณ์ในการจัดการสีจังหวะช่วยเพิ่มOLEวัตถุและLINQการรายงานเช่นเดียวกับการแนะนำแหล่งบรรณานุกรมใหม่สาธารณะAPI.

Aspose.Words24.2แผนภูมิขยายAPIการจัดการสไตล์และLINQตัวเลือก รุ่นของAspose.Wordsนี้ยังแนะนำความสามารถในการระบุSvgSaveOptionsในระหว่างการแสดงผล,การควบคุมที่ยืดหยุ่นมากขึ้นในการโหลดMarkdownไฟล์,และการทำงานกับข้อความอ้างอิงสำหรับเชิงอรรถและหมายเหตุสิ้นสุด.

Aspose.Words24.3แนะนำใหม่TIFFผู้อ่าน/นักเขียนและการจำลองการดำเนินงานแรสเตอร์ไบนารีสำหรับWMFเมต Aspose.Words24.3ยังคงขยายแผนภูมิAPI.

Aspose.Words24.4ปรับปรุงรูปแบบการบันทึก,ตัวเลือกการแสดงผลบางอย่าง,เช่นเดียวกับการปรับปรุงการท.

### รูปแบบที่รองรับ <sup>24.4</sup>

รูปแบบรูปภาพสมัยใหม่**WebP**ได้รับการสนับสนุนในAspose.Words ตอนนี้คุณสามารถอ่านและแทรกภาพWebPลงในเอกสารรวมทั้งบันทึกภาพในรูปแบบWebP.

### การแสดงผลและการพิมพ์

#### การควบคุมสีจังหวะ <sup>24.1</sup>

ชั้น[Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/)ได้รับการขยายด้วยชุดของคุณสมบัติสาธารณะใหม่ที่เกี่ยวข้องกับการจัดการสีจังหวะ:[ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor)และ[BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor),[ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade)และ[BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### DrawingMLแผนภูมิAPIส่วนขยาย <sup>24.2 / 24.3 / 24.4</sup>

ขยาย**DrawingML Charts API**ต่อไป.

#### ฝังแบบอักษรที่ประกาศในกฎ@font-face <sup>24.4</sup>

เพิ่มความสามารถในการฝังแบบอักษรที่ประกาศในกฎ@font-faceลงในคำจำกัดความแบบอักษรของเอกสารที่ได้ถูกนำมาใช้โดยการเพิ่มคุณสมบัติใหม่[SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules).

#### ทำงานร่วมกับเรืองแสงและการสะท้อนรูปแบบ <sup>24.4</sup>

ความสามารถในการทำงานร่วมกับการเรืองแสงและการสะท้อนการจัดรูปแบบสำหรับวั.

### การโหลดและบันทึกเอกสาร

#### ระบุSvgSaveOptionsระหว่างการแสดงผล <sup>24.2</sup>

ความสามารถในการระบุ[SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/)ระหว่างการแสดงผลถูกเพิ่มโดยใช้[ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions)และ[OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/)[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions)วิธีการ.

#### เก็บบรรทัดว่างไว้เมื่อโหลดไฟล์Markdown <sup>24.2</sup>

ความสามารถในการรักษาบรรทัดว่างเมื่อโหลดMarkdownไฟล์ถูกเพิ่ม.

#### ใหม่TIFFผู้อ่าน/นักเขียน <sup>24.3</sup>

ผู้อ่าน/นักเขียนใหม่TIFFสำหรับAspose.Wordsสำหรับ.NET Standard,.NET6 และต่อมาได้รับการพัฒนา Aspose.Wordsสำหรับ.NET 24.3เพิ่มการสนับสนุนสำหรับการอ่านTIFFภาพที่มีJPEGและเก่าJPEGชนิดการบีบอัดและยังปรับปรุงคุณภาพของการอ่านและเขียนอย่างมีนัยสำคัญ.

### อื่นๆ

* ความสามารถในการปรับเปลี่ยนข้อความของ`TextBox`OLEตัวควบคุมได้รับการแนะนำโดยการเพิ่มคุณสมบัติ[Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText)ใหม่ไปยังคลาสใหม่[TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) 24.1 <sup>24.1</sup>
* แหล่งบรรณานุกรมสาธารณะAPIถูกนำมาใช้โดยการเพิ่มใหม่ไม่กี่[Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) และ[Person](https://reference.aspose.com/words/java/com.aspose.words/person/)ชั้นเรียนและ[SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/)การแจงนับ,เช่นเดียวกับการเพิ่มใหม่[Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography)คุณสมบัติในชั้นเรียน[Document](https://reference.aspose.com/words/java/com.aspose.words/document/). <sup>24.1</sup>
* มีAPIเพื่อจำกัดการเข้าถึงสมาชิกประเภทโดยใช้ไวยากรณ์เทมเพลตสำหรับเครื่องมือการรายงานLINQ <sup>24.1</sup>
* คุณสมบัติสาธารณะใหม่[Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/),[UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/)และ[SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/)สำหรับการจัดการสไตล์ที่เพิ่มขึ้นได้รับการเพิ่มในชั้นเรียน[Style](https://reference.aspose.com/words/net/aspose.words/style/) <sup>24.2</sup>
* งหมายอ้างอิงจริงสำหรับเชิงอรรถและหมายเหตุสิ้นสุดได้รับการปรับปรุงด้วยคุณสมบัติ[ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/)และ[UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) <sup>24.2</sup>
* ความเข้ากันได้กับ`Word 2016`แผนภูมิสำหรับ`LINQ Reporting Engine`ได้ถูกเปิดใช้งานแล้ว <sup>24.2</sup>
* มีการดำเนินการจำลองการดำเนินงานแรสเตอร์ไบนารีสำหรับWMFเมตาไฟล์ <sup>24.3</sup>
* ความสามารถในการกำหนดตัวเลือกลายเซ็นสำหรับเอกสารภายใน**SaveOptions**ถูกเปิดใช้งานโดยการเพิ่มคลาสใหม่[DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/)กับสมาชิกสาธารณะใหม่รวมทั้งการเพิ่มคุณสมบัติใหม่ในคลาส[OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/),[DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/)และ[OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) <sup>24.4</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava24.1บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava24.2บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava24.3บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava24.4บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/).

{{% /alert %}}

## Aspose.WordsสำหรับJava 23.9, 23.10, 23.11, 23.12

Aspose.Words23.9ขยายตัวเลือกการแสดงผล,การจำลองการแสดงผลเมตาไฟล์,และmarkdownบันทึกตัวเลือก.

Aspose.Words23.10ปรับปรุงการแสดงผล,ขยายตัวเลือกสำหรับการโหลดและบันทึกเอกสาร,และช่วยให้ผู้ใช้สามารถผสานเอกสารในรูปแบบใหม่.

Aspose.Words23.11ช่วยเพิ่มการทำงานที่มีการแก้ไขXLSXรูปแบบและแบบอักษรในตำนานแผนภูมิที่มีตัวเลือกเพิ่ม.

Aspose.Words23.12แนะนำคุณสมบัติใหม่และการแจงนับสำหรับการทำงานกับPDFเอกสาร,การสนับสนุนสำหรับWebPภาพ,และปรับปรุงห้องสมุดปราสาทเด้ง.

### การแสดงผลและการพิมพ์

#### การปรับแต่งชื่อแกนในDrawingMLแผนภูมิ <sup>23.9</sup>

ความสามารถในการปรับแต่งชื่อแกนในDrawingMLแผนภูมิได้ถูกนำมาใช้โดยการใช้คุณสมบัติสาธารณะใหม่[ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/)และ[Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle).

#### การกำหนดตำแหน่งแนวตั้งของแบบอักษรภายในย่อหน้า <sup>23.9</sup>

ขณะนี้สามารถกำหนดตำแหน่งแนวตั้งของแบบอักษรภายในย่อหน้าโดยใช้คุณสมบัติสาธารณะ[BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment)ใหม่และการแจงนับใหม่[BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/).

#### การควบคุมสีพื้นหน้า <sup>23.10</sup>

ความสามารถในการดึงสีพื้นหน้าโดยไม่มีการปรับเปลี่ยนได้ถูกเพิ่มเข้าไปในชั้นเรียน[Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/)และ[Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/)ผ่านคุณสมบัติของ**BaseForeColor**.

#### ขยายฟังก์ชันการทำงานของแผนภูมิ <sup>23.10</sup>

ฟังก์ชันการทำงานของ[ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/),[ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/)และ[ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/)คลาสได้รับการขยายด้วยวิธีการและคุณสมบัติใหม่.

#### ปรับและพอดีกับภาพเป็นรูปร่างโดยอัตโนมัติ <sup>23.10</sup>

วิธีง่ายๆในการปรับและปรับให้พอดีกับรูปภาพภายในรูปร่างเฉพาะได้ผ่านทางวิธีใหม่[FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape).

#### การจัดรูปแบบแบบอักษรปริยายสำหรับรายการตำนานแผนภูมิDrawingML <sup>23.11</sup>

ความสามารถในการระบุการจัดรูปแบบฟอนต์ดีฟอลต์สำหรับรายการตำนานของแผนภูมิDrawingMLถูกเพิ่มผ่านคุณสมบัติของ**Font** นและสอดคล้องกันมากขึ้นสำหรับองค์ประกอบแผนภูมิ,การปรับปรุงความสวยงามของเอกสา.

#### ระบุเค้าโครงหน้าเมื่อเปิดPDFในตัวอ่าน <sup>23.12</sup>

ความสามารถในการระบุเค้าโครงหน้าเว็บที่จะใช้เมื่อเปิดเอกสารในเครื่องอ่านPDFได้ถูกเพิ่มผ่านการแนะนำคุณสมบัติใหม่[PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout)ให้กับคลาสของ[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)และการแนะนำการแจงนับใหม่[PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/).

### การโหลดและบันทึกเอกสาร

#### การระบุชื่อโฟลเดอร์ที่จะสร้างภาพURIsในMarkdown <sup>23.9</sup>

คลาส[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)ถูกขยายโดยรวมคุณสมบัติ[ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias)ซึ่งอนุญาตให้ระบุชื่อของโฟลเดอร์ที่ใช้สร้างภาพURIsเขียนลงในเอกสารMarkdown.

#### ลดขนาดเอาท์พุทPDF <sup>23.10</sup>

การเพิ่มประสิทธิภาพการแสดงผลต่างๆPDFเพื่อลดขนาดเอาต์พุตเมื่อใช้การตั้งค่า[OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput)ถูกนำมาใช้.

#### รู้จักการเชื่อมโยงหลายมิติเมื่อโหลดเอกสารTXT <sup>23.10</sup>

คุณลักษณะในการจดจำการเชื่อมโยงหลายมิติเมื่อโหลดเอกสารTXTถูกนำมาใช้โดยการเพิ่มคุณสมบัติ[DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks)ใหม่.

### อื่นๆ

- รับWMFความกว้างของปากกาและความกว้างของปากกาเครื่องสำอางEMF เพื่อให้บรรลุนี้ทรัพย์สิน**ScaleWmfFontsToMetafileSize**ถูกแทนที่ด้วยทรัพย์สิน[EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage)และทรัพย์สิน[EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution)ถูกเพิ่มเข้ามา <sup>23.9</sup>
- วิธีที่ง่ายสำหรับการแทรกเอกสารหนึ่งลงในเอกสารอื่นที่ตำแหน่งเคอร์เซอร์ปัจจุบันได้ถูกนำมาใช้วิธีการ[InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) <sup>23.10</sup>
- มีการเพิ่มความสามารถในการเข้าถึงและแก้ไขคุณสมบัติลักษณะผ่านการแนะนำคุณสมบัติใหม่[Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) <sup>23.10</sup>
- พารามิเตอร์ชนิดทั่วไปถูกเพิ่มเข้าไปในวิธีการของคลาสของ[CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) <sup>23.10</sup>
- วิธีการควบคุมเมื่อการแก้ไขบางอย่างควรยอมรับ/ปฏิเสธหรือไม่ถูกนำมาใช้โดยใช้วิธีการ[Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria)และ[Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) การเพิ่มประสิทธิภาพนี้ช่วยให้ผู้ใช้สามารถควบคุมกระบวนการแก้ไขได้ละเอียดขึ้น <sup>23.11</sup>
- ความสามารถในการเขียนทุกส่วนของเอกสารลงในเวิร์กชีทXLSXเดียวกันได้รับการจัดให้ผ่านประเภทการแจงนับใหม่[XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/)และคุณสมบัติใหม่[SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) <sup>23.11</sup>
- การสนับสนุนสำหรับWebPภาพที่ได้รับการแนะนำ โปรดทราบว่าคุณลักษณะนี้ใช้ได้เฉพาะสำหรับNetStandartและ.NET6+เวอร์ชัน <sup>23.12</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava23.9บันทึกย่อ](/words/java/aspose-words-for-java-23-9-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava23.10บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava23.11บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava23.12บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.WordsสำหรับJava 23.5, 23.6, 23.7, 23.8

Aspose.Words23.5ช่วยเพิ่มความสามารถในการทำงานกับข้อมูลชุดแผนภูมิและความสามารถในการทำงานกับODTเอกสารเช่นเดียวกับการปรับปรุงส่วนหัว/ท้ายกระดาษและการตัดข้อความของพวกเขา.

Aspose.Words23.6ขยายตัวเลือกการแสดงผลเพิ่มรูปแบบการส่งออกใหม่ปรับปรุงการรายงานLINQและเครื่องมือLowCode.

Aspose.Words23.7ช่วยเพิ่มความสามารถในการรายงานเพิ่มรูปแบบการส่งออกใหม่และแนะนำการเปลี่ยน.

Aspose.Words23.8ขยายความสามารถของรูปแบบต่างๆปรับปรุงการแสดงผลและเพิ่มตัวเลือกใหม่สำหรับกา

### รูปแบบที่รองรับ

* เริ่มต้นด้วยเวอร์ชัน23.6คุณสามารถบันทึกเอกสารในรูปแบบXLSX ตอนนี้คุณสามารถแปลงเอกสารของคุณให้เป็นรูปแบบเก่ง <sup>23.6</sup>

* เริ่มต้นด้วยเวอร์ชัน23.7คุณสามารถบันทึกหน้าเอกสารหรือรูปร่างในรูปแบบEPS <sup>23.7</sup>

* ###คุณสมบัติรูปแบบใหม่

  - ฟังก์ชันการทำงานที่สร้างสารบัญโดยอัตโนมัติ(TOC)สำหรับMOBIเอกสารได้รับการแนะนำ <sup>23.8</sup>
  - ตัวสร้าง[PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String)ถูกขยายด้วย[PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/) <sup>23.8</sup>
  - มีการสร้างข้อความแนวตั้งสำหรับEMFเมตาไฟล์แล้ว <sup>23.8</sup>

### การแสดงผล

#### รับและปรับเปลี่ยนข้อมูลชุดแผนภูมิ <sup>23.5</sup>

คุณลักษณะที่จะได้รับและปรับเปลี่ยนข้อมูลชุดแผนภูมิที่มีให้โดยการเพิ่ม:

- คลาสใหม่: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- ชนิดอนัมใหม่:[ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/),[ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### การสนับสนุนสำหรับการพิมพ์ขั้นสูง <sup>23.6</sup>

การสนับสนุนสำหรับการพิมพ์ขั้นสูงในWMF,EMFและEMF+การแสดงผลได้รับการเพิ่ม.

#### เนื้อหาสีบนหน้าเว็บ <sup>23.6</sup>

คุณสมบัติสาธารณะ[PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored)ซึ่งบ่งชี้ว่าเพจเป็นสีหรือไม่มีการเพิ่มเพจ.

#### การจัดรูปแบบสำหรับป้ายกำกับข้อมูลแผนภูมิ <sup>23.6</sup>

ความสามารถในการตั้งค่าการเติม,จังหวะ,และการจัดรูปแบบคำบรรยายภาพสำหรับฉลากข้.

### Mail Mergeและการรายงาน

#### แทรกแบบไดนามิกHTMLสำหรับLINQเครื่องมือการรายงาน <sup>23.6</sup>

มีการเพิ่มวิธีการใหม่ของการแทรกแบบไดนามิกHTMLสำหรับLINQเครื่องมือการรายงาน.

#### Mustacheแท็กสนับสนุน <sup>23.7</sup>

ขณะนี้รองรับแท็กMustacheในวิธีการ[MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy)และ[MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String).

#### LINQการรายงานการปรับปรุงไวยากรณ์แม่แบบเครื่องยนต์ <sup>23.7</sup>

ไวยากรณ์แม่แบบเครื่องมือการรายงานLINQขณะนี้สนับสนุนวิธีการขยาย`ElementAt`และElementAtOrDefault.

#### การระบุขนาดของภาพที่แสดงผล <sup>23.8</sup>

มีการแนะนำคุณสมบัติสาธารณะใหม่**ImageSize**สำหรับการระบุขนาดของภาพที่แสดงผลเป็นพิกเซล.

#### รักษาช่องว่างสำหรับค่าสตริงJSON–LINQ <sup>23.8</sup>

มีการเพิ่มตัวเลือกลงในโปรแกรมการรายงานLINQเพื่อรักษาช่องว่างสำหรับค่าสตริงJSON.

### LowCode <sup>23.6</sup>

มีการเพิ่มวิธีการใหม่LowCodeเพื่อผสานเอกสารประเภทต่างๆลงในเอกสารที่ส่งออกเดียว.

### อื่นๆ

- การสนับสนุนสำหรับการตัดข้อความในส่วนหัว/ส่วนท้ายได้รับการดำเนินการ <sup>23.5</sup>
- ความสามารถในการลบลายเซ็นดิจิทัลออกจากเอกสารODTได้ถูกเพิ่มผ่านวิธีการ[RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) <sup>23.5</sup>
- ทรัพย์สินสาธารณะ[PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide)ที่จะได้รับข้อความฐานและทับทิมของคู่มือการออกเสียง[Run](https://reference.aspose.com/words/java/com.aspose.words/run/)ได้รับการเพิ่ม <sup>23.5</sup>
- ความสามารถในการดึงค่าลายเซ็นดิจิทัลจากเอกสารที่ลงนามแบบดิจิทัลเป็นอาร์เรย์ไบต์ถูกเพิ่มโดยการแนะนำคุณสมบัติใหม่[SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) <sup>23.7</sup>
- ชั้นเรียน[Row](https://reference.aspose.com/words/java/com.aspose.words/row/)และ[Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)ได้รับการขยายไปพร้อมกับสมาชิกสาธารณะใหม่– [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), และ[Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell) <sup>23.7</sup>
- เพิ่มการสนับสนุนสำหรับฟิลด์CITATIONและBIBLIOGRAPHY <sup>23.8</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava23.5บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-5-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava23.6บันทึกย่อ](/words/java/aspose-words-for-java-23-6-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava23.7บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-7-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava23.8บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.WordsสำหรับJava 23.1, 23.2, 23.3, 23.4

Aspose.Words23.1ปรับปรุงประสิทธิภาพการทำงานของการจำลองการทำงานของแรสเตอร์เช่นเดียวกับ.

Aspose.Words23.2นำเสนอการบันทึกเอกสารในรูปแบบMOBIปรับปรุงการแสดงผลแผนภูมิและทำให้การเปลี่ยนแปลงที่โดดเด่นในรายละเอียดลักษณะที่ปรากฏของเอกสาร.

Aspose.Words23.3ช่วยเพิ่มการนำเข้าและประหยัดเอกสารด้วยคุณสมบัติใหม่และยังช่วยปรับปรุงคุณภาพของงานที่มีพื้นหลังและสีเบื้องหน้าและการไล่ระดับสีแบบรัศมี.

Aspose.Words23.4ปรับปรุงการคำนวณพารามิเตอร์บางอย่างและการวางตำแหน่งของตารางและข้อความ.

### การปรับปรุงประสิทธิภาพ

#### การจำลองการดำเนินงานแรสเตอร์ <sup>23.1</sup>

ประสิทธิภาพการทำงานและคุณภาพของการจำลองของการดำเนินงานแรสเตอร์กับเมต.

### รูปแบบที่รองรับ

#### ส่งออกไปยังMOBI <sup>23.2</sup>

เริ่มต้นด้วยรุ่น23.2,มันเป็นไปได้ที่จะบันทึกเอกสารในMOBIรูปแบบ(เรียกอีกอย่างว่าPRC, AZW – Amazon บไฟล์หนังสืออิเล็กทรอนิกส์) ตอนนี้คุณไม่เพียงแต่สามารถโหลดเอกสารMOBIแต่ยังส่งออกไฟล์ของคุณไปยังรูปแบบMOBI.

### การแสดงผล

#### ทำงานร่วมกับสีธีมแรเงา <sup>23.1</sup>

ความสามารถในการทำงานร่วมกับสีธีมแรเงาได้รับการดำเนินการ.

#### สนับสนุนสัมประสิทธิ์อาร์กำลังสองในDMLแผนภูมิ <sup>23.1</sup>

สนับสนุนค่าสัมประสิทธิ์อาร์กำลังสองในDMLป้ายเส้นแนวโน้มแผนภูมิเมื่อมีการเพิ่มการแสดงผล.

#### การปรับปรุงการแสดงผลแผนภูมิ <sup>23.2</sup>

ตั้งแต่23.2การแสดงผลแผนภูมิได้รับการปรับปรุงอย่างมีนัยสำคัญ.

#### พื้นหลังและการควบคุมสีเบื้องหน้า <sup>23.3</sup>

ชั้น[Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/)ได้ขยายออกไปพร้อมกับชุดของคุณสมบัติสาธารณะใหม่ที่เกี่ยวข้องกับพื้นหลังและสีพื้นหน้า:**ForeThemeColor**และ**BackThemeColor**,**ForeTintAndShade**และ**BackTintAndShade**.

#### การไล่ระดับสีแบบรัศมีด้วยแรเงาพื้นเมือง`SkiaSharp` <sup>23.3</sup>

มีการแสดงผลของการไล่ระดับสีแบบรัศมีด้วย`SkiaSharp`ตัวแรเงาแบบพื้นเมืองสำหรับ.NET Standard.

#### ระยะห่างระหว่างตารางและข้อความโดยรอบ <sup>23.4</sup>

ความสามารถในการกำหนดระยะห่างระหว่างตารางและข้อความโดยรอบได้รับการเพิ่มโดยการแนะนำคุณสมบัติใหม่ในชั้นเรียน[Table](https://reference.aspose.com/words/java/com.aspose.words/table/): [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), และ[DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### การโหลดและบันทึกเอกสาร

#### สร้าง`TOC`สำหรับAZW3เอกสาร <sup>23.1</sup>

ความสามารถในการสร้าง`TOC`(สารบัญ)สำหรับAZW3เอกสารได้รับการเพิ่มผ่านการใช้ทรัพย์สิน[EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel).

#### ส่งออกรายการไปยังMarkdown <sup>23.1</sup>

วิธีการควบคุมการส่งออกของรายการไปยังรูปแบบMarkdownได้โดยการเพิ่มคุณสมบัติ[ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode)ลงในคลาสของ[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/).

#### การแจ้งเตือนความคืบหน้าการบันทึกเอกสาร <sup>23.3</sup>

มีการบันทึกการแจ้งเตือนความคืบหน้าสำหรับMOBIและAZW3รูปแบบ.

#### การปรับระยะห่างของประโยคและคำ <sup>23.3</sup>

ความสามารถในการระบุว่าจะปรับประโยคและระยะห่างของคำโดยอัตโนมัติเมื่อมีการนำเข้าเอกสารโดยการแนะนำคุณสมบัติ**AdjustSentenceAndWordSpacing**.

### อื่นๆ

- ความสามารถในการระบุการปรับระยะห่างอักขระของเอกสารได้ถูกเพิ่มผ่านการใช้งานคุณสมบัติ[JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) <sup>23.2</sup>
- วิธีการสั่งการAspose.Wordsว่าจะรวมกล่องข้อความเชิงอรรถและหมายเหตุสิ้นสุดลงในสถิติการนับคำได้โดยการเพิ่มคุณสมบัติ[IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) <sup>23.2</sup>
- ตัวเลือกใหม่สำหรับสไตล์เอกสารซึ่งอนุญาตให้ระบุว่าสไตล์ถูกนิยามใหม่โดยอัตโนมัติตามค่าที่เหมาะสมถูกนำมาใช้ผ่านคุณสมบัติของ[AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) <sup>23.2</sup>
- ความสามารถในการตรวจสอบว่า[Run](https://reference.aspose.com/words/java/com.aspose.words/run/)เป็นคู่มือการออกเสียงเรียกใช้ได้รับการเพิ่มโดยใช้คุณสมบัติ**IsPhoneticGuide** <sup>23.4</sup>
- วิธีง่ายๆในการทำงานกับชุดและแกนของแผนภูมิคำสั่งผสมได้ถูกนำมาใช้โดยการแนะนำชั้นเรียน**ChartAxisCollection**และเพิ่มคุณสมบัติ**Chart.Axes** <sup>23.4</sup>
- คุณสมบัติสาธารณะใหม่ที่เชื่อมต่อกับรูปร่างการวางตำแหน่งสัมพัทธ์และการปรับขนาดได้ถูกเพิ่มเข้าไปในชั้น[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) <sup>23.4</sup>
- ความถูกต้องและประสิทธิภาพของการคำนวณความสว่างของสีสำหรับความละเอียดของสีข้อความอัตโนมัติได้รับการปรับปรุงให้สอดคล้องกับรุ่นล่าสุดของMicrosoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava23.1บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-1-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava23.2บันทึกย่อ](/words/java/aspose-words-for-java-23-2-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava23.3บันทึกย่อ](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-3-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [แอสโปสWordsสำหรับJava23.4บันทึกย่อ](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## ดูเพิ่มเติม

{{% alert color="primary" %}}

หน้านี้ประกอบด้วยข่าวล่าสุดสำหรับที่ผ่านมา 2 ปี สำหรับรายละเอียดเกี่ยวกับรุ่นก่อนหน้านี้ให้ดูที่ [บันทึกย่อ'](https://releases.aspose.com/words/java/release-notes/) หน้าในส่วนที่เกี่ยวข้อง.

{{% /alert %}}
