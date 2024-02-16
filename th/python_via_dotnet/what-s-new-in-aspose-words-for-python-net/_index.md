---
title: มีอะไรใหม่
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: มีอะไรใหม่ใน Aspose.Words สำหรับ Python via .NET
linktitle: มีอะไรใหม่ใน Aspose.Words สำหรับ Python via .NET
type: docs
description: "Aspose.Words สำหรับ Python via .NET ขยายและปรับปรุงทุกวัน ในหน้านี้ คุณสามารถเรียนรู้เกี่ยวกับคุณสมบัติที่สำคัญและน่าสนใจที่สุดของผลิตภัณฑ์ได้"
weight: 10
url: /th/python-net/what-s-new-in-aspose-words-for-python-net/
---

หน้านี้อธิบายคุณสมบัติ Aspose.Words ใหม่ที่น่าสนใจที่สุดที่เปิดตัวในรุ่นล่าสุด

## Aspose.Words สำหรับ Python via .NET 24.1, 24.2

Aspose.Words 24.1 ปรับปรุงประสบการณ์ในการจัดการสีของเส้นขีด ปรับปรุงวัตถุ OLE รวมถึงแนะนำ API สาธารณะ Bibliography Sources ใหม่

Aspose.Words 24.2 ขยาย Charts API การจัดการสไตล์ และตัวเลือก LINQ Aspose.Words เวอร์ชันนี้ยังแนะนำความสามารถในการระบุ SvgSaveOptions ระหว่างการเรนเดอร์ การควบคุมการโหลดไฟล์ Markdown ที่ยืดหยุ่นมากขึ้น และการทำงานกับข้อความอ้างอิงสำหรับเชิงอรรถและอ้างอิงท้ายเรื่อง

### การเรนเดอร์และการพิมพ์

#### การควบคุมสีเส้นโครงร่าง <sup>24.1</sup>

คลาส [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) ได้รับการขยายด้วยชุดคุณสมบัติสาธารณะใหม่ที่เกี่ยวข้องกับการจัดการสีของเส้นขีด: **ForeThemeColor** และ **BackThemeColor**, **ForeTintAndShade** และ **BackTintAndShade**

#### ส่วนขยาย API ของ DrawingML Charts API <sup>24.2</sup>

**DrawingML Charts API** ยังคงได้รับการขยายต่อไป

### กำลังโหลดและบันทึกเอกสาร

#### ระบุ SvgSaveOptions ระหว่างการเรนเดอร์ <sup>24.2</sup>

เพิ่มความสามารถในการระบุ [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) ระหว่างการเรนเดอร์โดยใช้เมธอด [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) และ [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions)

#### รักษาบรรทัดว่างเมื่อโหลดไฟล์ Markdown <sup>24.2</sup>

เพิ่มความสามารถในการรักษาบรรทัดว่างเมื่อโหลดไฟล์ Markdown แล้ว

### อื่น

* ความสามารถในการปรับเปลี่ยนข้อความของตัวควบคุม `TextBox` OLE ได้รับการแนะนำโดยการเพิ่มคุณสมบัติ **Text** ใหม่ให้กับคลาส **TextBoxControl** ใหม่ <sup>24.1</sup>
* API สาธารณะของ Bibliography Sources ถูกนำมาใช้ผ่านการเพิ่ม [Aspose.Words.Bibliography](https://reference.aspose.com/words/python-net/aspose.words.bibliography/) เนมสเปซใหม่ด้วยคลาสและการแจงนับใหม่ และผ่านการเพิ่มคุณสมบัติ [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) ใหม่ให้กับคลาส  [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)  <sup>24.1</sup>
* เพิ่มคุณสมบัติสาธารณะใหม่ [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), และ [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) สำหรับการจัดการสไตล์ที่ได้รับการปรับปรุงในคลาส [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) แล้ว <sup>24.2</sup>
* ฟังก์ชันการทำงานในการดึงข้อความเครื่องหมายอ้างอิงจริงสำหรับเชิงอรรถและอ้างอิงท้ายเรื่องได้รับการปรับปรุงด้วยคุณสมบัติ [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) และเมธอด [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default)  <sup>24.2</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 24.1](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 24.2](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/)

{{% /alert %}}

## Aspose.Words สำหรับ Python via .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 ขยายตัวเลือกการเรนเดอร์ การจำลองการเรนเดอร์ metafile และตัวเลือกการบันทึก markdown

Aspose.Words 23.10 ปรับปรุงการเรนเดอร์ ขยายตัวเลือกสำหรับการโหลดและบันทึกเอกสาร และอนุญาตให้ผู้ใช้รวมเอกสารในรูปแบบใหม่

Aspose.Words 23.11 ปรับปรุงการทำงานด้วยการแก้ไข รูปแบบ XLSX และแบบอักษรบนคำอธิบายแผนภูมิพร้อมตัวเลือกเพิ่มเติม

Aspose.Words 23.12 นำเสนอคุณสมบัติและการแจงนับใหม่สำหรับการทำงานกับเอกสาร PDF และ OOXML รวมถึงการรองรับอิมเมจ WebP

### การเรนเดอร์และการพิมพ์

#### การปรับแต่งชื่อแกนใน DrawingML Charts <sup>23.9</sup>

ความสามารถในการกำหนดชื่อแกนในแผนภูมิ DrawingML ได้รับการแนะนำโดยการใช้คุณสมบัติ [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) และ [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/) คลาสสาธารณะใหม่

####  การกำหนดตำแหน่งแนวตั้งของแบบอักษรภายในย่อหน้า <sup>23.9</sup>

ขณะนี้สามารถกำหนดตำแหน่งแนวตั้งของแบบอักษรภายในย่อหน้าได้โดยใช้คุณสมบัติ [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) สาธารณะใหม่และการแจงนับ [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/) ใหม่

#### การควบคุมสีพื้นหน้า <sup>23.10</sup>

เพิ่มความสามารถในการดึงข้อมูลสีพื้นหน้าโดยไม่มีตัวปรับแต่งลงในคลาส [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) และ [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) ผ่านคุณสมบัติ **BaseForeColor**

#### การขยายฟังก์ชันการทำงานของแผนภูมิ <sup>23.10</sup>

ฟังก์ชันการทำงานของคลาส [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) และ [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) ได้รับการขยายด้วยวิธีและคุณสมบัติใหม่

#### ปรับและปรับรูปภาพให้พอดีกับรูปร่างโดยอัตโนมัติ <sup>23.10</sup>

วิธีง่ายๆ ในการปรับและปรับรูปภาพให้พอดีภายในรูปร่างเฉพาะโดยอัตโนมัติทำได้ผ่านวิธี [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default) ใหม่

#### การจัดรูปแบบแบบอักษรเริ่มต้นสำหรับรายการคำอธิบายแผนภูมิ DrawingML <sup>23.11</sup>

เพิ่มความสามารถในการระบุการจัดรูปแบบแบบอักษรเริ่มต้นสำหรับรายการคำอธิบายแผนภูมิของแผนภูมิ DrawingML ผ่านทางคุณสมบัติ [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/) คุณสมบัตินี้ช่วยให้องค์ประกอบแผนภูมิมีรูปลักษณ์ที่คล่องตัวและสม่ำเสมอยิ่งขึ้น ปรับปรุงความสวยงามโดยรวมของเอกสาร

#### ระบุเค้าโครงหน้าเมื่อเปิด PDF ใน Reader <sup>23.12</sup>

ความสามารถในการระบุเค้าโครงหน้าที่จะใช้เมื่อเปิดเอกสารในตัวอ่าน PDF ได้รับการเพิ่มผ่านการแนะนำคุณสมบัติ [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) ใหม่ให้กับคลาส [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) และการแนะนำการแจงนับ [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/) ใหม่

### กำลังโหลดและบันทึกเอกสาร

#### การระบุชื่อโฟลเดอร์เพื่อสร้าง URI รูปภาพใน Markdown <sup>23.9</sup>

คลาส [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) ได้รับการขยายโดยรวมคุณสมบัติ [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/) ซึ่งอนุญาตให้ระบุชื่อของโฟลเดอร์ที่ใช้ในการสร้าง URI ภาพที่เขียนลงในเอกสาร Markdown

#### ลดขนาดเอาต์พุต PDF <sup>23.10</sup>

มีการเพิ่มประสิทธิภาพการเรนเดอร์ PDF ต่างๆ เพื่อลดขนาดเอาต์พุตเมื่อใช้การตั้งค่า [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/)

#### จดจำไฮเปอร์ลิงก์เมื่อโหลดเอกสาร TXT <sup>23.10</sup>

คุณลักษณะในการจดจำไฮเปอร์ลิงก์เมื่อโหลดเอกสาร TXT ได้รับการปรับใช้โดยการเพิ่มคุณสมบัติ [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/) ใหม่

### อื่น

- มีการใช้การจำลองการเรนเดอร์ Metafile เพื่อกำหนดขนาดการแรสเตอร์ โดยเฉพาะสำหรับความกว้างของปากกา WMF และความกว้างของปากกาเครื่องสำอาง EMF เพื่อให้บรรลุเป้าหมายนี้ คุณสมบัติ **ScaleWmfFontsToMetafileSize** จึงถูกแทนที่ด้วยคุณสมบัติ [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) และเพิ่มคุณสมบัติ [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/) <sup>23.9</sup>
- มีการแนะนำวิธีการที่เรียบง่ายสำหรับการแทรกเอกสารหนึ่งไปยังเอกสารอื่นที่ตำแหน่งเคอร์เซอร์ปัจจุบันโดยใช้วิธี [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) <sup>23.10</sup>
- เพิ่มความสามารถในการเข้าถึงและแก้ไขคุณสมบัติสไตล์ผ่านการแนะนำคุณสมบัติ [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/) ใหม่ <sup>23.10</sup>
- มีการเพิ่มพารามิเตอร์ประเภททั่วไปให้กับวิธีการของคลาส [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) <sup>23.10</sup>
- ความสามารถในการเขียนทุกส่วนของเอกสารลงในแผ่นงาน XLSX เดียวกันนั้นได้มาจากประเภทการแจงนับ [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) ใหม่และคุณสมบัติ [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/) ใหม่ <sup>23.11</sup>
* วิธีการควบคุมวิธีการใช้ส่วนขยายรูปแบบ ZIP64 สำหรับเอกสาร OOXML ผ่านคุณสมบัติ Zip64Mode ใหม่ของคลาส `OoxmlSaveOptions` และการแจงนับ Zip64Mode ใหม่ <sup>23.12</sup>
* มีการรองรับอิมเมจ WebP แล้ว โปรดทราบว่าฟีเจอร์นี้ใช้ได้เฉพาะกับเวอร์ชัน .NetStandart และ .NET6+ เท่านั้น <sup>23.12</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 23.9](/words/python-net/aspose-words-for-python-via-dotnet-23-9-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 23.10](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.Words สำหรับบันทึกประจำรุ่น Python via .NET 23.11](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกประจำรุ่น Aspose.Words สำหรับ .NET 23.12](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/)

{{% /alert %}}

## Aspose.Words สำหรับ Python via .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 ปรับปรุงความสามารถในการทำงานกับข้อมูลชุดแผนภูมิ และความสามารถในการทำงานกับเอกสาร ODT รวมถึงปรับปรุงส่วนหัว/ส่วนท้าย และการตัดข้อความ

Aspose.Words 23.6 ขยายตัวเลือกการเรนเดอร์ เพิ่มรูปแบบการส่งออกใหม่ ปรับปรุงการรายงาน LINQ และเครื่องมือ LowCode

Aspose.Words 23.7 ปรับปรุงความสามารถในการรายงาน เพิ่มรูปแบบการส่งออกใหม่ และแนะนำการเปลี่ยนแปลงในการทำงานกับตารางและลายเซ็นดิจิทัล

Aspose.Words 23.8 ขยายความสามารถของรูปแบบต่างๆ ปรับปรุงการเรนเดอร์ และเพิ่มตัวเลือกใหม่สำหรับการทำงานกับฟิลด์

### รูปแบบที่รองรับ

* ตั้งแต่เวอร์ชัน 23.6 เป็นต้นไป คุณสามารถบันทึกเอกสารในรูปแบบ XLSX ได้ ตอนนี้คุณสามารถแปลงเอกสารของคุณเป็นรูปแบบ Excel ได้แล้ว <sup>23.6</sup>

* ตั้งแต่เวอร์ชัน 23.7 เป็นต้นไป คุณสามารถบันทึกหน้าเอกสารหรือรูปร่างในรูปแบบ EPS ได้ <sup>23.7</sup>

### คุณสมบัติรูปแบบใหม่

- มีการแนะนำฟังก์ชันการสร้างสารบัญ (TOC) โดยอัตโนมัติสำหรับเอกสาร MOBI <sup>23.8</sup>
- ตัวสร้าง [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) ได้รับการขยายด้วย [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) <sup>23.8</sup>
- ปรับรูปร่างข้อความแนวตั้งสำหรับเมตาไฟล์ EMF แล้ว <sup>23.8</sup>

### กำลังแสดงผล

#### รับและแก้ไขข้อมูลชุดแผนภูมิ <sup>23.5</sup>

คุณลักษณะในการรับและแก้ไขข้อมูลชุดแผนภูมิมีให้โดยการเพิ่ม:

- คลาสใหม่: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- ประเภท enum ใหม่: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### รองรับการพิมพ์ขั้นสูง <sup>23.6</sup>

เพิ่มการสนับสนุนการพิมพ์ขั้นสูงในการเรนเดอร์ WMF, EMF และ EMF+ แล้ว

#### เนื้อหาสีในหน้า <sup>23.6</sup>

เพิ่มทรัพย์สินสาธารณะ [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/) ซึ่งระบุว่าหน้านั้นเป็นสีหรือไม่ ได้ถูกเพิ่มแล้ว

#### การจัดรูปแบบสำหรับป้ายข้อมูลแผนภูมิ <sup>23.6</sup>

ความสามารถในการตั้งค่าการเติม เส้นขีด และการจัดรูปแบบคำบรรยายสำหรับป้ายกำกับข้อมูลแผนภูมิได้ถูกนำมาใช้แล้ว

### Mail Merge และการรายงาน

#### การแทรก HTML แบบไดนามิกสำหรับ LINQ Reporting Engine <sup>23.6</sup>

เพิ่มวิธีใหม่ในการแทรก HTML แบบไดนามิกสำหรับ LINQ Reporting Engine แล้ว

#### รองรับแท็ก Mustache <sup>23.7</sup>

ขณะนี้แท็ก Mustache ได้รับการสนับสนุนในวิธี [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) และ [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/)

#### การระบุขนาดของภาพที่แสดงผล <sup>23.8</sup>

มีการแนะนำ [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) ทรัพย์สินสาธารณะใหม่สำหรับการระบุขนาดของภาพที่แสดงผลในหน่วยพิกเซล

#### รักษาช่องว่างสำหรับค่าสตริง JSON – LINQ <sup>23.8</sup>

เพิ่มตัวเลือกใน LINQ Reporting Engine เพื่อรักษาช่องว่างสำหรับค่าสตริง JSON

### LowCode <sup>23.6</sup>

มีการเพิ่มวิธีการ LowCode ใหม่ที่มีวัตถุประสงค์เพื่อรวมเอกสารประเภทต่างๆ ให้เป็นเอกสารเอาต์พุตเดียว

### อื่น

- มีการรองรับการตัดข้อความในส่วนหัว/ส่วนท้ายแล้ว <sup>23.5</sup>
- เพิ่มความสามารถในการลบลายเซ็นดิจิทัลออกจากเอกสาร ODT ด้วยวิธี [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str) <sup>23.5</sup>
- เพิ่ม [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) ทรัพย์สินสาธารณะเพื่อรับฐานและข้อความทับทิมของ [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) คู่มือการออกเสียงแล้ว <sup>23.5</sup>
- ความสามารถในการดึงค่าลายเซ็นดิจิทัลจากเอกสารที่เซ็นชื่อแบบดิจิทัลเป็นอาร์เรย์ไบต์ได้รับการเพิ่มโดยการแนะนำคุณสมบัติ [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) ใหม่ <sup>23.7</sup>
- คลาส [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) และ [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) ได้รับการขยายด้วยสมาชิกสาธารณะใหม่ - [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/) และ [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/) <sup>23.7</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกประจำรุ่น Aspose.Words สำหรับ Python via .NET 23.5](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 23.6](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 23.7](/words/python-net/aspose-words-for-python-via-dotnet-23-7-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกประจำรุ่น Aspose.Words สำหรับ Python via .NET 23.8](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/)

{{% /alert %}}

## Aspose.Words สำหรับ Python via .NET 23.1, 23.2, 23.3, 23.4

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

#### ทำงานกับสีธีมแรเงา <sup>23.1.1</sup>

มีการใช้ความสามารถในการทำงานกับสีของธีมแรเงาแล้ว

#### การสนับสนุนค่าสัมประสิทธิ์ R-squared ในแผนภูมิ DML <sup>23.1</sup>

รองรับค่าสัมประสิทธิ์ R-squared ในป้ายกำกับเส้นแนวโน้มแผนภูมิ DML เมื่อเพิ่มการเรนเดอร์แล้ว

#### การปรับปรุงการเรนเดอร์แผนภูมิ <sup>23.2</sup>

ตั้งแต่ 23.2 การแสดงกราฟได้รับการปรับปรุงอย่างมาก

#### การควบคุมสีพื้นหลังและพื้นหน้า <sup>23.3</sup>

คลาส [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) ได้รับการขยายด้วยชุดคุณสมบัติสาธารณะใหม่ที่เกี่ยวข้องกับสีพื้นหลังและพื้นหน้า: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) และ [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) และ [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/)

#### การไล่ระดับสีแบบเรเดียลด้วย `SkiaSharp` Native Shader <sup>23.3</sup>

มีการใช้การเรนเดอร์การไล่ระดับสีแบบรัศมีด้วยเชเดอร์ดั้งเดิมของ `SkiaSharp` สำหรับ .NET Standard แล้ว

#### ระยะห่างระหว่างตารางและข้อความล้อมรอบ <sup>23.4</sup>

เพิ่มความสามารถในการกำหนดระยะห่างระหว่างตารางและข้อความโดยรอบโดยการแนะนำคุณสมบัติใหม่ให้กับคลาส [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/): [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) และ [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/)

### กำลังโหลดและบันทึกเอกสาร

#### สร้าง `TOC` สำหรับเอกสาร AZW3 <sup>23.1.1</sup>

เพิ่มความสามารถในการสร้าง `TOC` (สารบัญ) สำหรับเอกสาร AZW3 ผ่านการใช้คุณสมบัติ [epub_navigation_map_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/epub_navigation_map_level/)

#### การส่งออกรายการไปยัง Markdown <sup>23.1</sup>

มีการจัดเตรียมวิธีการควบคุมการส่งออกรายการเป็นรูปแบบ Markdown โดยการเพิ่มคุณสมบัติ [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) ลงในคลาส [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/)

#### แจ้งความคืบหน้าการบันทึกเอกสาร <sup>23.3</sup>

การบันทึกการแจ้งเตือนความคืบหน้าสำหรับรูปแบบ MOBI และ AZW3 ได้ถูกนำมาใช้แล้ว

#### การปรับระยะห่างระหว่างประโยคและคำ <sup>23.3</sup>

เพิ่มความสามารถในการระบุว่าจะปรับประโยคและระยะห่างระหว่างคำโดยอัตโนมัติเมื่อนำเข้าเอกสารหรือไม่ โดยการแนะนำคุณสมบัติ [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/)

### อื่น

- เพิ่มความสามารถในการระบุการปรับระยะห่างอักขระของเอกสารผ่านการใช้คุณสมบัติ [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) <sup>23.2</sup>
- วิธีการสั่ง Aspose.Words ว่าจะรวมกล่องข้อความ เชิงอรรถ และอ้างอิงท้ายเรื่องในสถิติการนับคำนั้นได้จัดเตรียมไว้หรือไม่ โดยการเพิ่มคุณสมบัติ [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) <sup>23.2</sup>
- ตัวเลือกใหม่สำหรับสไตล์เอกสาร ซึ่งอนุญาตให้ระบุว่าสไตล์นั้นถูกกำหนดใหม่โดยอัตโนมัติตามค่าที่เหมาะสมหรือไม่ ได้รับการแนะนำผ่านคุณสมบัติ [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) <sup>23.2</sup>
- เพิ่มความสามารถในการตรวจสอบว่า [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) เป็นการเรียกใช้คู่มือการออกเสียงหรือไม่โดยใช้คุณสมบัติ [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) <sup>23.4</sup>
- วิธีง่ายๆ ในการทำงานกับอนุกรมและแกนของแผนภูมิผสมได้ถูกนำมาใช้โดยการแนะนำคลาส [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) และเพิ่มคุณสมบัติ [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
- มีการเพิ่มคุณสมบัติสาธารณะใหม่ที่เชื่อมต่อกับตำแหน่งและขนาดที่สัมพันธ์กับรูปร่างในคลาส [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) <sup>23.4</sup>
- ความแม่นยำและประสิทธิภาพของการคำนวณความสว่างสีสำหรับความละเอียดสีข้อความอัตโนมัติได้รับการปรับปรุงให้สอดคล้องกับ Microsoft Word <sup>23.4</sup> เวอร์ชันล่าสุด

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 23.1](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกประจำรุ่น Aspose.Words สำหรับ Python via .NET 23.2](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 23.3](/words/python-net/aspose-words-for-python-via-dotnet-23-3-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 23.4](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/)

{{% /alert %}}

## Aspose.Words สำหรับ Python via .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 ขยายตัวเลือกสำหรับการโหลดและบันทึกเอกสาร และปรับปรุงการโต้ตอบกับตัวเลือกอื่นๆ

Aspose.Words 22.10 ปรับปรุงตัวเลือกการค้นหาและแทนที่ ปรับปรุงวัตถุ OLE และขยายฟังก์ชันการทำงานของรายการ

Aspose.Words 22.11 ขยายฟังก์ชันการทำงานด้วยตัวเลือกใหม่เพื่อการทำงานที่สะดวกยิ่งขึ้นกับออบเจ็กต์ที่คุ้นเคยอยู่แล้ว: OLE และแท็กเอกสารที่มีโครงสร้าง

Aspose.Words 22.12 ปรับปรุงความสามารถในการเรนเดอร์และแนะนำตัวเลือกสำหรับการทำงานกับระยะขอบเมื่อโหลด/บันทึกเอกสาร

### การปรับปรุงประสิทธิภาพ <sup>22.12</sup>

การเพิ่มประสิทธิภาพที่ช่วยลดความลึกของสถานะกราฟิกที่ซ้อนอยู่อย่างมากเมื่อเรนเดอร์เป็น PDF เพื่อรักษาการปฏิบัติตามข้อกำหนด ได้รับการแนะนำ

### การเรนเดอร์และการพิมพ์

#### คุณสมบัติการเรนเดอร์เส้นขอบใหม่ <sup>22.12</sup>

มีการแนะนำคุณสมบัติสาธารณะใหม่ [theme_color](https://reference.aspose.com/words/python-net/aspose.words/border/theme_color/) และ [tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words/border/tint_and_shade/)

#### สูตรเส้นแนวโน้มเชิงเส้นสำหรับ DrawingML Rendering <sup>22.12</sup>

มีการใช้การเรนเดอร์สูตรเส้นแนวโน้มเชิงเส้นสำหรับแผนภูมิ DrawingML

#### การตั้งค่าทางเลือกแบบอักษรสำหรับแบบอักษร Google Noto <sup>22.12</sup>

การตั้งค่าทางเลือกแบบอักษรที่กำหนดไว้ล่วงหน้าสำหรับแบบอักษร Google Noto ได้รับการอัปเดตแล้ว

### กำลังโหลดและบันทึกเอกสาร

#### รูปร่างส่วนหัวหรือส่วนท้ายของแคชเพื่อลดขนาด PDF <sup>22.9</sup>

ความสามารถในการแคชรูปร่างส่วนหัว/ส่วนท้ายเพื่อลดขนาดของไฟล์ PDF เอาต์พุตได้ถูกนำมาใช้โดยการเพิ่มคุณสมบัติ **CacheHeaderFooterShapes** ใหม่

#### การตรวจจับการกำหนดหมายเลขอัตโนมัติเมื่อโหลดเอกสาร <sup>22.9</sup>

ความสามารถในการระบุคุณสมบัติ [auto_numbering_detection](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/auto_numbering_detection/) เมื่อโหลดข้อความได้ถูกนำมาใช้ผ่านส่วนขยายของคลาส [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/)

#### การระบุประเภทมาร์จิ้นเฉพาะ <sup>22.12</sup>

ความสามารถในการระบุประเภท **Margin** เฉพาะสำหรับส่วนที่กำหนดได้ถูกนำมาใช้แล้ว

### ค้นหาและเปรียบเทียบ <sup>22.10</sup>

ความสามารถในการละเว้น [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) เมื่อค้นหาและแทนที่ตัวเลือกได้ถูกนำมาใช้โดยการเพิ่มคุณสมบัติ [ignore_structured_document_tags](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_structured_document_tags/) ใหม่ให้กับคลาส [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/)

### อื่น

- เพิ่มฟีเจอร์ใหม่เพื่อรับ FieldEQ เป็น OfficeMath แล้ว <sup>22.9</sup>
- อนุญาตให้สร้างแท็กเอกสารที่มีโครงสร้างประเภท Group ในระดับแถวได้ <sup>22.9</sup>
- ขณะนี้วัตถุและตัวควบคุม OLE ถือเป็นรูปภาพ metafile เมื่อแปลงเอกสารเป็น HTML <sup>22.10</sup>
- คุณลักษณะใหม่ในการตรวจสอบว่ารายการเฉพาะถูกสร้างขึ้นจากเทมเพลตเดียวกันกับรายการเปรียบเทียบที่ได้รับการเพิ่มโดยการแนะนำวิธี **HasSameTemplate** ใหม่ลงในคลาส [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) <sup>22.10</sup>
- เพิ่มความสามารถในการสร้างแท็กเอกสารที่มีโครงสร้างใหม่ของประเภท [Citation](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) แล้ว <sup>22.11</sup>
- คุณสมบัติ **EmbedAttachments** ใหม่ที่ช่วยให้ผู้ใช้สามารถฝังไฟล์แนบ OLE จากเอกสารต้นฉบับลงในเอกสาร PDF เอาท์พุตได้ถูกนำมาใช้แล้ว <sup>22.11</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 22.9](/words/python-net/aspose-words-for-python-via-dotnet-22-9-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 22.10](/words/python-net/aspose-words-for-python-via-dotnet-22-10-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [Aspose.Words สำหรับบันทึกประจำรุ่น Python via .NET 22.11](/words/python-net/aspose-words-for-python-via-dotnet-22-11-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 22.12](/words/python-net/aspose-words-for-python-via-dotnet-22-12-release-notes/)

{{% /alert %}}

## Aspose.Words สำหรับ Python via .NET 22.5, 22.6, 22.7, 22.8

Aspose.Words 22.5 แนะนำการรองรับรูปแบบการโหลดใหม่และขนาดหน้าการพิมพ์ใหม่ รวมถึงปรับปรุงตัวเลือกการเรนเดอร์บางอย่าง

Aspose.Words 22.6 ขยายความเป็นไปได้ในการแปลง PDF เป็นรูปแบบอื่น รวมถึงปรับปรุงการทำงานกับ DrawingML และเอฟเฟกต์การเติมข้อความแบบทึบ

Aspose.Words 22.7 ปรับปรุงความเป็นไปได้ในการทำงานกับคุณสมบัติการเรนเดอร์ และยังเพิ่มคุณสมบัติใหม่สำหรับการทำงานกับการนำเข้าและส่งออก HTML เป็น PDF

Aspose.Words 22.8 แนะนำรูปแบบการส่งออกใหม่และปรับปรุงอัลกอริธึมการเรนเดอร์ต่างๆ

API ได้รับการปรับปรุงเพื่อการพัฒนาที่ยืดหยุ่นและสะดวกสบายยิ่งขึ้น

### รูปแบบที่รองรับ

* รองรับการโหลดเอกสาร EPUB และ XML โดยการเพิ่มค่าใหม่ลงในการแจงนับ **LoadFormat** ตั้งแต่เวอร์ชัน 22.5 เป็นต้นไป คุณสามารถโหลดเอกสาร EPUB และ XML ลงในโมเดลเอกสาร Aspose.Words และแปลงเป็น [รูปแบบเอกสารที่รองรับ](/words/th/python-net/supported-document-formats/) ใดก็ได้ <sup>22.5</sup>
* ตั้งแต่เวอร์ชัน 22.8 เป็นต้นไป คุณสามารถบันทึกเอกสารในรูปแบบ AZW3 ได้ ซึ่งเป็นรูปแบบไฟล์ e-book ที่เป็นกรรมสิทธิ์ของ Amazon Kindle (KF8 เป็นอีกชื่อหนึ่งของรูปแบบ) ตอนนี้คุณไม่เพียงแต่สามารถโหลดเอกสาร AZW3 ได้ แต่ยังส่งออกไฟล์ของคุณเป็นรูปแบบ AZW3 ซึ่งโดยพื้นฐานแล้วจะเป็น EPUB ที่คอมไพล์แล้ว <sup>22.8</sup>

### การเรนเดอร์และการพิมพ์

#### ขนาดการพิมพ์ใหม่ <sup>22.5</sup>

เพิ่มการรองรับขนาดหน้าการพิมพ์ "ซองจดหมายหมายเลข 10" แล้วโดยการแนะนำค่าใหม่ให้กับการแจงนับ [PaperSize](https://reference.aspose.com/words/python-net/aspose.words/papersize/)

#### การเรนเดอร์สูตร MathML <sup>22.5</sup>

ปรับปรุงการแสดงกรอบเส้นขอบรอบสูตร MathML และการตรวจจับแบบอักษรเมื่อแสดงอักขระสำหรับสูตรดังกล่าวแล้ว

#### การปรับปรุงแผนภูมิ DML <sup>22.6</sup>

API สาธารณะของแผนภูมิ DrawingML ได้รับการขยายเพื่อรองรับการไล่ระดับสี พื้นผิว และการเติมลวดลาย

#### Glyph สรุปการแยกวิเคราะห์สำหรับ OpenType <sup>22.7</sup>

มีการใช้การแยกวิเคราะห์โครงร่าง glyph ของ Aspose.Words สำหรับแบบอักษร OpenType (CFF) แล้ว

ก่อนหน้านี้ การแยกวิเคราะห์ glyph สำหรับแบบอักษร OpenType (CFF) ดำเนินการผ่าน GDI+ ตอนนี้จึงใช้งานได้ในกรณีที่ GDI+ ไม่พร้อมใช้งาน เช่น Java, แพลตฟอร์ม .NET Standard, Linux, macOS ฯลฯ จำเป็นต้องมีการแยกวิเคราะห์โครงร่าง Glyph ในบางกรณี เช่น อักษรศิลป์ เอฟเฟกต์ข้อความ ฟีเจอร์ Office Math บางอย่าง และอื่นๆ

#### ตั้งค่าการจัดรูปแบบเงาของรูปร่าง <sup>22.7</sup>

ความสามารถในการตั้งค่าการจัดรูปแบบเงาของวัตถุรูปร่างได้มาจากการเพิ่มคุณสมบัติ [shadow_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shadow_format/) ใหม่

#### รองรับการเว้นระยะห่างระหว่างเซลล์ในตาราง <sup>22.8</sup>

ขณะนี้โครงร่างเอ็นจิ้นได้รับการปรับปรุงอย่างมีนัยสำคัญ: มีการใช้กลไกการเว้นวรรคเซลล์ที่ซับซ้อนมากในตาราง

#### การทดแทนแบบอักษรสำหรับสัญลักษณ์ <sup>22.8</sup>

ปรับปรุงการทดแทนแบบอักษรสำหรับสัญลักษณ์แล้ว

#### อัลกอริธึมการหมุนฉลากแกนแผนภูมิ <sup>22.8</sup>

อัลกอริธึมการหมุนของป้ายกำกับแกนแผนภูมิได้รับการปรับปรุงแล้ว

### กำลังโหลดและบันทึกเอกสาร

#### โหลดและแปลง PDF เป็นรูปแบบหน้าคงที่โดยไม่มีเค้าโครงรุ่น <sup>22.6</sup>

มีการใช้ความสามารถในการโหลดและแปลงเอกสาร PDF เป็นรูปแบบหน้าคงที่ที่มีความเที่ยงตรงและประสิทธิภาพสูง

#### โหมดการนำเข้า HTML ใหม่ <sup>22.7</sup>

โหมดการนำเข้า HTML ใหม่สำหรับองค์ประกอบระดับบล็อกได้รับการแนะนำโดยการเพิ่มค่าใหม่ลงในการแจงนับ [HtmlInsertOptions](https://reference.aspose.com/words/python-net/aspose.words/htmlinsertoptions/)

#### แปลงเป็น PDF/UA-1 ตามมาตรฐาน WCAG 2.0 <sup>22.7</sup>

เพิ่มการรองรับการแปลงเอกสารเป็นรูปแบบ PDF/UA-1 ซึ่งสอดคล้องกับ WCAG 2.0 แล้ว

ดังนั้น หากลูกค้ามีเอกสาร Word ที่สามารถเข้าถึงได้และแปลงเป็น PDF/UA-1 ผ่าน Aspose.Words โดยระบุถึงข้อมูลจำเพาะของการแปลง ผลลัพธ์จะเข้ากันได้กับ WCAG 2.0

WCAG หรือแนวทางการเข้าถึงเนื้อหาเว็บเป็นชุดแนวทางที่พัฒนาโดย W3C ด้วยความร่วมมือกับบุคคลและองค์กรทั่วโลก ขณะนี้ด้วย Aspose.Words คุณสามารถแปลงเอกสารของคุณเป็นรูปแบบเอาต์พุต PDF/UA-1 ซึ่งเหมาะสำหรับสร้างเอกสาร PDF ที่รองรับ WCAG 2.0

เป็นที่น่าสังเกตว่า WCAG 2.0 มีข้อกำหนดเพิ่มเติมสองประการที่ไม่ได้ระบุไว้ในข้อกำหนด PDF/UA-1:

- ข้อกำหนดด้านความคมชัด
- ข้อกำหนดสำหรับการแท็กเนื้อหามัลติมีเดีย

แต่ข้อกำหนดทั้งสองไม่เกี่ยวข้องกับกรณีของเราในการแปลงจาก Word เป็น PDF

### อื่น

มีการใช้ข้อยกเว้นของการสืบทอดลักษณะพิเศษการเติมข้อความทึบที่เลียนแบบลักษณะการทำงานของ MS Word <sup>22.6</sup>

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 22.5](/words/python-net/aspose-words-for-python-via-dotnet-22-5-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 22.6](/words/python-net/aspose-words-for-python-via-dotnet-22-6-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 22.7](/words/python-net/aspose-words-for-python-via-dotnet-22-7-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 22.8](/words/python-net/aspose-words-for-python-via-dotnet-22-8-release-notes/)

{{% /alert %}}

## Aspose.Words สำหรับ Python via .NET 22.3, 22.4

Aspose.Words 22.3 ขยายความเป็นไปได้ในการทำงานกับรูปแบบ PDF และ TXT และปรับปรุงการทำงานของอัลกอริธึมและกลไกที่มีอยู่บางส่วน

Aspose.Words 22.4 ปรับปรุงความสามารถของ PDF - ตอนนี้คุณสามารถบันทึกไฟล์ในรูปแบบ PDF/A-4 และรับการปรับปรุงอื่นๆ อีกมากมายในเอาต์พุต PDF ในเวลาเดียวกัน Aspose.Words 22.4 มอบความสามารถเพิ่มเติมในการทำงานกับแผนภูมิ DML อ่านข้อมูลเมตาของ Photoshop และนำเข้าองค์ประกอบระดับบล็อก HTML

API ได้รับการปรับปรุงเพื่อการพัฒนาที่ยืดหยุ่นและสะดวกสบายยิ่งขึ้น

### คุณสมบัติที่รองรับ

ตั้งแต่ Aspose.Words 22.4 เป็นต้นไป มีการเพิ่มการรองรับ Python 3.10 แล้ว

### การปรับปรุงประสิทธิภาพ

กำลังโหลดแคชการค้นหาแบบอักษรที่บันทึกไว้ก่อนหน้านี้เพื่อเร่งกระบวนการเริ่มต้นแคชแบบอักษรเมื่อทำการเรนเดอร์ได้ถูกนำมาใช้ ตอนนี้โซลูชันของคุณจะทำงานเร็วยิ่งขึ้น

### รูปแบบที่รองรับ

เพิ่มการโหลดเอกสารในรูปแบบ AZW3 (KF8 เป็นอีกชื่อหนึ่งของรูปแบบ) แล้ว ตอนนี้คุณสามารถโหลดเอกสาร AZW3 และแปลงเป็นรูปแบบอื่นๆ ที่รองรับได้แล้ว

### กำลังแสดงผล

#### การแสดงผลสูตร MathML

ปรับปรุงการแสดงตัวดำเนินการในสูตร MathML แล้ว

#### การปรับปรุงแผนภูมิ DML

มีการปรับปรุงต่อไปนี้ในแผนภูมิ DML:

* อัลกอริธึมการปรับขนาดแกนแผนภูมิ DML ได้รับการปรับปรุงให้เหมือนกับใน MS Word

* ความสามารถในการจัดการกับรายการคำอธิบายแผนภูมิ DrawingML ได้รับการจัดเตรียมไว้เพื่อทำให้แผนภูมิ API ของเรามีความครอบคลุมมากขึ้น
* ความสามารถในการระบุชื่อของไฟล์ xls/xlsx ที่เชื่อมโยงกับแผนภูมิ DrawingML ได้ถูกนำมาใช้แล้ว

#### แสดงผลเป็น PDF ด้วยมาตรฐาน PDF/A-4

เพิ่มการเรนเดอร์เป็น PDF ด้วยการปฏิบัติตาม PDF/A-4 โดยการเพิ่มค่าใหม่ลงในการแจงนับ [PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) – [PDF_A4](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a4) ตัวเลือกนี้จะถือว่าระดับความสอดคล้องที่ได้รับการแก้ไข: ความสอดคล้องของ PDF/A-4 ปกติจะเทียบเท่ากับระดับความสอดคล้อง U ของเวอร์ชันก่อนหน้า และความสอดคล้องระดับ A จะถูกลบออก

#### การอ่านความละเอียดเมตาดาต้าของ Photoshop ในรูปแบบ JPEG

การอ่านความละเอียดเมตาดาต้าของ Photoshop ในภาพ JPEG ถูกนำมาใช้เพื่อแก้ไขปัญหาที่น่าสนใจเกี่ยวกับการปรับขนาดภาพที่ไม่ถูกต้องเมื่อเรนเดอร์

#### อนุญาตให้ข้อความละตินตัดตรงกลางคำ

การสนับสนุนสำหรับคุณลักษณะ "อนุญาตให้ข้อความภาษาละตินตัดตรงกลางคำ" ได้ถูกนำมาใช้เพื่อให้การสนับสนุนภาษาละตินของเราดียิ่งขึ้นเมื่อแสดงผล

### กำลังโหลดและบันทึกเอกสาร

#### การควบคุมพฤติกรรมของสไตล์เมื่อโหลดเอกสาร

มีตัวเลือกใหม่ [force_copy_styles](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/force_copy_styles/) เพื่อควบคุมพฤติกรรมของสไตล์ที่ขัดแย้งกันเมื่อนำเข้าเอกสาร

#### แปลงรูปร่างเป็น SVG เมื่อส่งออก

ความสามารถในการแปลงรูปร่างเป็นรูปภาพ SVG เมื่อส่งออกเป็น HTML, MHTML หรือ EPUB นั้นได้มาจากการเพิ่มคุณสมบัติ [export_shapes_as_svg](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_shapes_as_svg/)

#### บันทึกเป็น PDF 2.0 และการปรับปรุงเอาต์พุต PDF

ความสามารถในการบันทึกเอกสารเป็น PDF 2.0 โดยการเพิ่มค่าใหม่ให้กับการแจงนับ [PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) รวมถึงการปรับปรุงอื่นๆ ที่ร้องขอในเอาต์พุต PDF ได้รับการแนะนำแล้ว

#### โหมดการนำเข้า HTML ใหม่

โหมดนำเข้าใหม่สำหรับองค์ประกอบระดับบล็อก HTML ได้รับการปรับใช้เพื่อเลียนแบบพฤติกรรม Microsoft Word

### อื่น

* ความสามารถในการรับ OOXML ของตัวควบคุมเนื้อหาและบันทึกลงในสตริงได้ถูกนำมาใช้แล้ว
* เพิ่มการรับรู้เชิงอรรถที่ไม่ได้มาตรฐานในเอกสาร PDF ขณะนำเข้าแล้ว
* เพิ่มความสามารถในการรับข้อมูลฟิลด์ที่กำหนดเองซึ่งเชื่อมโยงกับฟิลด์แล้ว
* ตารางการเปรียบเทียบอัลกอริธึมอาศัยการวิเคราะห์เชิงลึกของกลไกการเปรียบเทียบ Microsoft Word ได้รับการปรับปรุงแล้ว
* มีการจัดเตรียมไวยากรณ์ความคิดเห็นในกลไกการรายงาน LINQ

{{% alert color="primary" %}}

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 22.3](/words/python-net/aspose-words-for-python-via-dotnet-22-3-release-notes/)

เรียนรู้เพิ่มเติมเกี่ยวกับ [บันทึกย่อประจำรุ่น Aspose.Words สำหรับ Python via .NET 22.4](/words/python-net/aspose-words-for-python-via-dotnet-22-4-release-notes/)

{{% /alert %}}

## ดูสิ่งนี้ด้วย

{{% alert color="primary" %}}

หน้านี้มีข่าวประชาสัมพันธ์ล่าสุดในช่วง 2 ปีที่ผ่านมา สำหรับรายละเอียดเกี่ยวกับรุ่นก่อนหน้านี้ โปรดดูหน้า [บันทึกประจำรุ่น'](/words/python-net/release-notes/) ในส่วนที่เกี่ยวข้อง

{{% /alert %}}