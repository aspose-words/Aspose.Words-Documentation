---
title: มีอะไรใหม่
second_title: Aspose.WordsสำหรับC++
articleTitle: มีอะไรใหม่ใน Aspose.WordsสำหรับC++
linktitle: มีอะไรใหม่ใน Aspose.WordsสำหรับC++
type: docs
description: "Aspose.WordsสำหรับC++ ขยายและปรับปรุงทุกวัน ในหน้านี้คุณสามารถเรียนรู้เกี่ยวกับคุณสมบัติขนาดใหญ่และน่าสนใจที่สุดของผลิตภัณฑ์."
weight: 2
url: /th/cpp/what-s-new-in-aspose-words-for-cpp/
---

หน้านี้อธิบายถึงคุณลักษณะใหม่ที่น่าสนใจที่สุดAspose.Wordsที่นำมาใช้ในรุ่นล่าสุด.

## Aspose.WordsสำหรับC++ 24.9

Aspose.Words24.9แนะนำการแทรกgroup shapeและการแทรกStructuredDocumentTagผ่านทางDocumentBuilderช่วยเพิ่มการแสดงผลแผนภูมิรัศมีด้วยการสำเร็จการศึกษาช่วยเพิ่มลายเซ็นดิจิตอลด้วยXAdES-EPES สนับสนุนเพิ่มการรับรู้Markdownขีดเส้นใต้และให้การเข้าถึงเชิงอรรถ/ตัวคั่นหมายเหตุ.

### การแสดงผลและการพิมพ์

#### จบการศึกษาในแผนภูมิรัศมี

การแสดงผลของการสำเร็จการศึกษาในแผนภูมิรัศมีได้รับการดำเนินการ.

### การแปลงโหลดและบันทึกเอกสาร

#### ขีดเส้นใต้การจัดรูปแบบเมื่อโหลดไฟล์Markdown

ตัวเลือกในการจดจำการจัดรูปแบบขีดเส้นใต้เมื่อโหลดเอกสารMarkdownได้ถูกรวมไว้โดยการเพิ่มคุณสมบัติสาธารณะใหม่[ImportUnderlineFormatting]().

### ลายเซ็นดิจิตอล

#### ลงนามในเอกสารด้วยXAdES-EPES

ความสามารถในการลงนามในเอกสารด้วยXAdES-EPES ระดับXML-DSigลายเซ็นได้รับการแนะนำโดยการเพิ่มสถานที่ให้บริการสาธารณะใหม่[XmlDsigLevel]()และการแจงนับสาธารณะใหม่[XmlDsigLevel]().

### อื่นๆ

* วิธีการสาธารณะใหม่[InsertGroupShape]()ถูกเพิ่มเข้าไปgroup shapes.
* มีการเพิ่มวิธีการสาธารณะใหม่[InsertStructuredDocumentTag]()เพื่อแทรก**StructuredDocumentTags**ลงในเอกสาร.
* การเข้าถึงสาธารณะเพื่อแยกเชิงอรรถ/สิ้นสุดหมายเหตุได้รับการให้บริการโดยการเพิ่มชั้.

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.WordsสำหรับC++ 24.9บันทึกย่อ](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

{{% /alert %}}

## Aspose.WordsสำหรับC++ 24.5, 24.6, 24.7

Aspose.Words24.5ขยายตัวเลือกสำหรับแอสเซมบลี,ปรับปรุงความสามารถในการแสดงผล,และขยายตัวเลือกอื่นๆ.

Aspose.Words24.6ปรับปรุงตัวเลือกการแสดงผลเพิ่มการค้นหาและเปรียบเทียบฟังก์ชันการทำงานและขย.

Aspose.Words24.7เปลี่ยนวิธีการทำงานกับแอคทีฟเอ็กซ์ขยายความสามารถในการแสดงผลตลอดจนการส่งออกไปยังรูปแบบMarkdownและXLSX.

### รูปแบบที่รองรับ

เริ่มต้นจากรุ่น24.7ส่งออกไปยังPDF/UA-2ได้รับการสนับสนุนเพื่อให้แน่ใจว่าการเข้าถึงสำหรับผู้ใช้ที่มีค.

### การแสดงผลและการพิมพ์

#### การเปลี่ยนแปลงในแผนภูมิ,รูปร่างและภาพวาด <sup>24.5</sup>

- รับSVGกราฟิกซึ่งขยายฟังก์ชันการทำงานก่อนหน้านี้จำกัดเฉพาะภาพได้ถูกนำมาใช้.
- การสนับสนุนสำหรับการสร้างแผนภูมิคำสั่งผสมและการปรับคุณสมบัติเช่นความกว้างช่องว่างทับซ้อนและสเกลฟองภายในกลุ่มซีรีส์ได้รับการแนะนำโดยการเพิ่มชั้นเรียน**ChartSeriesGroup**และ**ChartSeriesGroupCollection**และคุณสมบัติ**SeriesGroups**.
- ฟังก์ชันการทำงานในการจัดการผลSoftEdgeของรูปร่างได้รับการดำเนินการโดยการเพิ่ม**SoftEdgeFormat**คลาส.
- ความสามารถในการปรับเปลี่ยนค่าของรูปร่างได้รับการดำเนินการโดยการเพิ่ม**AdjustmentCollection**และ**Adjustment**ชั้นเรียนสาธารณะและ**Adjustments**คุณสมบัติ.

#### การเปลี่ยนแปลงในแผนภูมิรูปร่างและรูปวาด <sup>24.6</sup>

- ความสามารถในการสร้างแผนภูมิได้รับการปรับปรุง ตอนนี้คุณสามารถสร้างความหลากหลายของแผนภูมิที่กว้างขึ้นรวมถึง*Treemaps*, *Sunbursts*, *Histograms*, *Pareto* แผนภูมิ*Box & Whisker*แผนภูมิ*Waterfalls*และ*Funnels* ยให้คุณเห็นภาพข้อมูลของคุณในทางที่หลากหลายมากขึ้นและให้ข้อมูล.
- การควบคุมสีสำหรับการจัดรูปแบบเงาได้รับการปรับปรุง คุณสามารถควบคุมรูปลักษณ์ของเอกสารของคุณได้อย่างแม่นยำยิ่งขึ้นโดยการเข้าถึงสีเงา.
- เพิ่มประสิทธิภาพการทำงานสำหรับการแสดงผลพื้นหลังได้รับการปรับปรุง คุณอย่างมีนัยสำคัญสามารถเพิ่มความเร็วในการแสดงผลของภูมิหลังที่มีองค์ประกอบขนาด.
- การไล่ระดับสีที่สมจริงสำหรับรูปร่างได้รับการเพิ่ม ตอนนี้คุณสามารถสร้างDMLรูปทรงที่มีการไล่ระดับสีที่ไม่ใช่เชิงเส้น,เลียนแบบสไตล์ภาพของMicrosoft Wordเพื่อ.

#### การปรับแต่งฉลากข้อมูลแผนภูมิ <sup>24.7</sup>

ความสามารถในการปรับแต่งป้ายข้อมูลแผนภูมิเช่น**Orientation**และ**Rotation**ได้ถูกเพิ่ม.

#### จัดแต่งทรงผมจำนวนที่กำหนดเองสำหรับระดับรายการ <sup>24.7</sup>

มีการเพิ่มตัวตั้งค่าสำหรับคุณสมบัติสาธารณะ[CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/) ตอนนี้คุณสามารถกำหนดจัดแต่งทรงผมจำนวนที่กำหนดเองสำหรับระดับรายการ.

#### การเปลี่ยนแปลงในการทำงาน <sup>24.7</sup>

- สามารถปรับเปลี่ยนคุณสมบัติของอ็อบเจ็กต์ของแอคทีฟแอคทีฟได้ในขณะนี้ทำให้คุณสามารถค.
- มีการเพิ่มความสามารถในการปรับเปลี่ยนค่าของปุ่มตัวควบคุมเพื่อเปิดใช้งานการโต้ตอบ.
- มีการเพิ่มความสามารถในการสลับช่องทำเครื่องหมาย"ทำเครื่องหมาย"หรือ"ไม่ทำเครื่องหม.

### การโหลดและบันทึกเอกสาร

#### ส่งออกลิงก์ไปยังรูปแบบMarkdown <sup>24.7</sup>

ความสามารถในการควบคุมการส่งออกลิงก์ในรูปแบบMarkdownได้ถูกเพิ่มผ่านการนำคุณสมบัติ[LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/)ไปใช้.

### ค้นหาและเปรียบเทียบ

#### ตัวเลือกการเปรียบเทียบขั้นสูง <sup>24.6</sup>

ความสามารถในการปรับปรุงเวิร์กโฟลว์การวิเคราะห์ข้อมูลที่มีฟังก์ชั่นการเปรียบเทียบที่ อ็อพชัน**IgnoreStoreItemId**ใหม่และอินเทอร์เฟซที่ออกแบบใหม่สำหรับการเปรียบเทียบขั้นสูง.

### อื่นๆ

- ฟังก์ชันในการกำจัดหน้าว่างออกจากเอกสารได้ถูกนำมาใช้โดยการเพิ่มวิธีการ[RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/) <sup>24.5</sup>
- ความสามารถในการตรวจสอบสถานะของแมโครVBAโดยไม่ต้องโหลดเอกสารได้โดยการเพิ่มคุณสมบัติ**HasMacros** <sup>24.5</sup>
- มีการเพิ่มคุณสมบัติใหม่**DateTimeUtc**ซึ่งจะช่วยให้การประทับเวลาที่แม่นยำยิ่งขึ้นสำหรับความคิดเห็นปรับปรุงองค์กรและการตรวจสอบย้อนกลับ <sup>24.6</sup>
- รูปแบบวันที่จะถูกตรวจพบโดยอัตโนมัติสำหรับการส่งออกที่ไร้รอยต่อไปยังรูปแบบXLSX <sup>24.7</sup>
- คุณสมบัติสาธารณะ[IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/)ซึ่งช่วยให้คุณสามารถตรวจสอบว่าโครงการVBAได้รับการป้องกัน,มีการเ <sup>24.7</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.WordsสำหรับC++ 24.5บันทึกย่อ](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.WordsสำหรับC++ 24.6บันทึกย่อ](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.WordsสำหรับC++ 24.7บันทึกย่อ](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.WordsสำหรับC++ 24.1, 24.2, 24.3, 24.4

Aspose.Words24.1ช่วยเพิ่มประสบการณ์ในการจัดการสีจังหวะช่วยเพิ่มOLEวัตถุเช่นเดียวกับการแนะนำแหล่งบรรณานุกรมใหม่สาธารณะAPI.

Aspose.Words24.2แผนภูมิขยายAPIและการจัดการสไตล์. รุ่นของAspose.Wordsนี้ยังแนะนำความสามารถในการระบุSvgSaveOptionsในระหว่างการแสดงผล,การควบคุมที่ยืดหยุ่นมากขึ้นโหลดMarkdownไฟล์,และการทำงานกับข้อความอ้างอิงสำหรับเชิงอรรถและหมายเหตุปลาย.

Aspose.Words24.3แนะนำการจำลองการดำเนินงานแรสเตอร์ไบนารีสำหรับWMFเมตาไฟล์และยังคงขยายแผนภูมิAPI.

Aspose.Words24.4ช่วยเพิ่มตัวเลือกการแสดงผลบางอย่างรวมทั้งปรับปรุงการทำงานกับลายเซ็นดิจิทัล.

### การแสดงผลและการพิมพ์

#### การควบคุมสีจังหวะ <sup>24.1</sup>

ชั้น[Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/)ได้รับการขยายด้วยชุดของคุณสมบัติสาธารณะใหม่ที่เกี่ยวข้องกับการจัดการสีจังหวะ:[ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/)และ[BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/),[ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/)และ[BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### วาดแผนภูมิมล.APIส่วนขยาย <sup>24.2 / 24.3 / 24.4</sup>

ขยาย**DrawingML Charts API**ต่อไป.

#### ฝังแบบอักษรที่ประกาศในกฎ@font-face <sup>24.4</sup>

เพิ่มความสามารถในการฝังแบบอักษรที่ประกาศในกฎ@font-faceลงในคำจำกัดความแบบอักษรของเอกสารที่ได้ถูกนำมาใช้โดยการเพิ่มคุณสมบัติใหม่[SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/).

#### ทำงานร่วมกับเรืองแสงและการสะท้อนรูปแบบ <sup>24.4</sup>

ความสามารถในการทำงานร่วมกับการเรืองแสงและการสะท้อนการจัดรูปแบบสำหรับวั.

### การโหลดและบันทึกเอกสาร

#### ระบุSvgSaveOptionsระหว่างการแสดงผล <sup>24.2</sup>

ความสามารถในการระบุ[SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/)ระหว่างการแสดงผลถูกเพิ่มโดยใช้[ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/)[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)และ[OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/)[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)วิธีการ.

#### เก็บบรรทัดว่างไว้เมื่อโหลดไฟล์Markdown <sup>24.2</sup>

ความสามารถในการรักษาบรรทัดว่างเมื่อโหลดMarkdownไฟล์ถูกเพิ่ม.

### อื่นๆ

- ความสามารถในการปรับเปลี่ยนข้อความของ`TextBox`OLEตัวควบคุมได้รับการแนะนำโดยการเพิ่มคุณสมบัติ**Text**ใหม่ไปยังคลาสใหม่**TextBoxControl** <sup>24.1</sup>
- แหล่งบรรณานุกรมสาธารณะAPIถูกนำมาใช้ผ่านการเพิ่มเนมสเปซใหม่[Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/)กับชั้นเรียนใหม่และการแจงนับและผ่านการเพิ่มคุณสมบัติใหม่[Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/)ลงในชั้นเรียน[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) <sup>24.1</sup>
- คุณสมบัติสาธารณะใหม่[Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/),[UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/)และ[SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/)สำหรับการจัดการสไตล์ที่เพิ่มขึ้นได้รับการเพิ่มในชั้นเรียน[Style](https://reference.aspose.com/words/cpp/aspose.words/style/) <sup>24.2</sup>
- งหมายอ้างอิงจริงสำหรับเชิงอรรถและหมายเหตุสิ้นสุดได้รับการปรับปรุงด้วยคุณสมบัติ[ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/)และ[UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/) <sup>24.2</sup>
- มีการดำเนินการจำลองการดำเนินงานแรสเตอร์ไบนารีสำหรับWMFเมตาไฟล์ <sup>24.3</sup>
- ความสามารถในการกำหนดตัวเลือกลายเซ็นสำหรับเอกสารภายใน**SaveOptions**ถูกเปิดใช้งานโดยการเพิ่มคลาสใหม่**DigitalSignatureDetails**กับสมาชิกสาธารณะใหม่รวมทั้งการเพิ่มคุณสมบัติใหม่ในคลาส[OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/),[DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/)และ[OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/) <sup>24.4</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.WordsสำหรับC++ 24.1บันทึกย่อ](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.WordsสำหรับC++ 24.2บันทึกย่อ](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.WordsสำหรับC++ 24.3บันทึกย่อ](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.WordsสำหรับC++ 24.4บันทึกย่อ](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.WordsสำหรับC++ 23.9, 23.10, 23.11, 23.12

Aspose.Words23.9ขยายตัวเลือกการแสดงผล,การจำลองการแสดงผลเมตาไฟล์,และmarkdownบันทึกตัวเลือก.

Aspose.Words23.10ปรับปรุงการแสดงผล,ขยายตัวเลือกสำหรับการโหลดและบันทึกเอกสาร,และช่วยให้ผู้ใช้สามารถผสานเอกสารในรูปแบบใหม่.

Aspose.Words23.11ช่วยเพิ่มการทำงานที่มีการแก้ไขXLSXรูปแบบและแบบอักษรในตำนานแผนภูมิที่มีตัวเลือกเพิ่ม.

Aspose.Words23.12แนะนำคุณสมบัติใหม่และการแจงนับสำหรับการทำงานกับPDFและOOXMLเอกสารเช่นเดียวกับการสนับสนุนสำหรับWebPภาพ.

### การแสดงผลและการพิมพ์

#### การปรับแต่งชื่อแกนในภาพวาดแผนภูมิมิลลิวินาที <sup>23.9</sup>

รนำเสนอโดยการดำเนินงานของชั้นสาธารณะใหม่**ChartAxisTitle**และ[Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/)คุณสมบัติ.

#### การกำหนดตำแหน่งแนวตั้งของแบบอักษรภายในย่อหน้า <sup>23.9</sup>

ขณะนี้สามารถกำหนดตำแหน่งแนวตั้งของแบบอักษรภายในย่อหน้าโดยใช้คุณสมบัติสาธารณะ[BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/)ใหม่และการแจงนับใหม่[BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/).

#### การควบคุมสีพื้นหน้า <sup>23.10</sup>

ความสามารถในการดึงสีพื้นหน้าโดยไม่มีการปรับเปลี่ยนได้ถูกเพิ่มเข้าไปในชั้นเรียน[Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/)และ[Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/)ผ่านคุณสมบัติของ**BaseForeColor**.

#### ขยายฟังก์ชันการทำงานของแผนภูมิ <sup>23.10</sup>

ฟังก์ชันการทำงานของ[ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/),[ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/)และ[ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/)คลาสได้รับการขยายด้วยวิธีการและคุณสมบัติใหม่.

#### ปรับและพอดีกับภาพเป็นรูปร่างโดยอัตโนมัติ <sup>23.10</sup>

วิธีง่ายๆในการปรับและปรับให้พอดีกับรูปภาพภายในรูปร่างเฉพาะได้ผ่านทางวิธีใหม่[FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/).

#### การจัดรูปแบบแบบอักษรเริ่มต้นสำหรับภาพวาด <sup>23.11</sup>

ความสามารถในการระบุการจัดรูปแบบตัวอักษรเริ่มต้นสำหรับรายการตำนานของแผนภูมิการวาดภาพได้ถูกเพิ่มผ่านทางคุณสมบัติ[Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/) นและสอดคล้องกันมากขึ้นสำหรับองค์ประกอบแผนภูมิ,การปรับปรุงความสวยงามของเอกสา.

#### ระบุเค้าโครงหน้าเมื่อเปิดPDFในตัวอ่าน <sup>23.12</sup>

ความสามารถในการระบุเค้าโครงหน้าเว็บที่จะใช้เมื่อเปิดเอกสารในเครื่องอ่านPDFได้ถูกเพิ่มผ่านการแนะนำคุณสมบัติใหม่**PageLayout**ให้กับคลาสของ[PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/)และการแนะนำการแจงนับใหม่**PdfPageLayout**.

### การโหลดและบันทึกเอกสาร

#### การระบุชื่อโฟลเดอร์ที่จะสร้างภาพURIsในMarkdown <sup>23.9</sup>

คลาส[MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/)ถูกขยายโดยรวมคุณสมบัติ[ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/)ซึ่งอนุญาตให้ระบุชื่อของโฟลเดอร์ที่ใช้สร้างภาพURIsเขียนลงในเอกสารMarkdown.

#### ลดขนาดเอาท์พุทPDF <sup>23.10</sup>

การเพิ่มประสิทธิภาพการแสดงผลต่างๆPDFเพื่อลดขนาดเอาต์พุตเมื่อใช้การตั้งค่า[OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)ถูกนำมาใช้.

#### รู้จักการเชื่อมโยงหลายมิติเมื่อโหลดเอกสารTXT <sup>23.10</sup>

คุณลักษณะในการจดจำการเชื่อมโยงหลายมิติเมื่อโหลดเอกสารTXTถูกนำมาใช้โดยการเพิ่มคุณสมบัติ[DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/)ใหม่.

### อื่นๆ

- รับWMFความกว้างของปากกาและความกว้างของปากกาเครื่องสำอางEMF เพื่อให้บรรลุนี้ทรัพย์สิน**ScaleWmfFontsToMetafileSize**ถูกแทนที่ด้วยทรัพย์สิน[EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/)และทรัพย์สิน[EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/)ถูกเพิ่มเข้ามา <sup>23.9</sup>
* วิธีที่ง่ายสำหรับการแทรกเอกสารหนึ่งลงในเอกสารอื่นที่ตำแหน่งเคอร์เซอร์ปัจจุบันได้ถูกนำมาใช้วิธีการ[InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/) <sup>23.10</sup>
* มีการเพิ่มความสามารถในการเข้าถึงและแก้ไขคุณสมบัติลักษณะผ่านการแนะนำคุณสมบัติใหม่[Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/) <sup>23.10</sup>
* พารามิเตอร์ชนิดทั่วไปถูกเพิ่มเข้าไปในวิธีการของคลาสของ[CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) <sup>23.10</sup>
* วิธีการควบคุมเมื่อการแก้ไขบางอย่างควรยอมรับ/ปฏิเสธหรือไม่ถูกนำมาใช้โดยใช้วิธีการ[Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/)และ[Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/) การเพิ่มประสิทธิภาพนี้ช่วยให้ผู้ใช้สามารถควบคุมกระบวนการแก้ไขได้ละเอียดขึ้น <sup>23.11</sup>
* ความสามารถในการเขียนทุกส่วนของเอกสารลงในเวิร์กชีทXLSXเดียวกันได้รับการจัดให้ผ่านประเภทการแจงนับใหม่[XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/)และคุณสมบัติใหม่[SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/) <sup>23.11</sup>
* วิธีการควบคุมวิธีใช้ส่วนขยายรูปแบบZIP64สำหรับเอกสารOOXMLผ่านคุณสมบัติโหมดไปรษณีย์64ใหม่ของคลาสของ`OoxmlSaveOptions`และการแจงนับโหมดไปรษณีย์64ใหม่ <sup>23.12</sup>
* การสนับสนุนสำหรับWebPภาพที่ได้รับการแนะนำ โปรดทราบว่าคุณลักษณะนี้ใช้ได้เฉพาะสำหรับNetStandartและ.NET6+รุ่น. <sup>23.12</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.WordsสำหรับC++ 23.9บันทึกย่อ](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.WordsสำหรับC++ 23.10บันทึกย่อ](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.WordsสำหรับC++ 23.11บันทึกย่อ](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.WordsสำหรับC++ 23.12บันทึกย่อ](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## ดูเพิ่มเติม

{{% alert color="primary" %}}

หน้านี้ประกอบด้วยข่าวล่าสุดสำหรับที่ผ่านมา2ปี สำหรับรายละเอียดเกี่ยวกับรุ่นก่อนหน้านี้ให้ดูที่ [บันทึกย่อ'](/words/cpp/release-notes/) หน้าในส่วนที่เกี่ยวข้อง.

{{% /alert %}}