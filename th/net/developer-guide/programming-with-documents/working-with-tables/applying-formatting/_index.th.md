---
title: การจัดรูปแบบตารางใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: ใช้การจัดรูปแบบตาราง
linktitle: ใช้การจัดรูปแบบตาราง
description: "การจัดรูปแบบตารางโดยละเอียดโดยใช้ C# ใช้ C# เพื่อจัดรูปแบบทุกส่วนของตาราง"
type: docs
weight: 70
url: /th/net/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

แต่ละองค์ประกอบของตารางสามารถใช้กับการจัดรูปแบบที่แตกต่างกันได้ ตัวอย่างเช่น การจัดรูปแบบตารางจะมีผลกับทั้งตาราง การจัดรูปแบบแถวเฉพาะบางแถว การจัดรูปแบบเซลล์เฉพาะบางเซลล์

Aspose.Words มี API ที่หลากหลายเพื่อดึงข้อมูลและใช้การจัดรูปแบบกับตาราง คุณสามารถใช้โหนด [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) และ [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) เพื่อตั้งค่าการจัดรูปแบบได้

ในบทความนี้ เราจะพูดถึงวิธีนำการจัดรูปแบบไปใช้กับโหนดตารางต่างๆ และการตั้งค่าการจัดรูปแบบตารางที่ Aspose.Words รองรับ

## ใช้การจัดรูปแบบกับโหนดต่างๆ

ในส่วนนี้ เราจะดูการนำการจัดรูปแบบไปใช้กับโหนดตารางต่างๆ

### การจัดรูปแบบระดับตาราง

หากต้องการใช้การจัดรูปแบบกับตาราง คุณสามารถใช้คุณสมบัติที่มีอยู่ในโหนด **Table** ที่เกี่ยวข้องได้โดยใช้คลาส [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/) และ [TableCollection](https://reference.aspose.com/words/net/aspose.words.tables/tablecollection/)

{{% alert color="primary" %}}

โปรดทราบว่าตารางต้องมีอย่างน้อยหนึ่งแถวก่อนจึงจะสามารถนำคุณสมบัติตารางไปใช้ได้ ซึ่งหมายความว่าเมื่อสร้างตารางด้วย [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) การจัดรูปแบบนี้จะต้องดำเนินการหลังจากการเรียก [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) ครั้งแรก หรือหลังจากเพิ่มแถวแรกลงในตาราง หรือเมื่อมีการแทรกโหนดลงใน DOM โดยตรง

{{% /alert %}}

รูปภาพด้านล่างแสดงคุณลักษณะการจัดรูปแบบ **Table** ใน Microsoft Word และคุณสมบัติที่เกี่ยวข้องใน Aspose.Words

![formattin-features-table-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-net](/words/net/applying-formatting/applying-formatting-2.png)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้เส้นขอบเค้าร่างกับตาราง:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-outline-border.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างตารางโดยเปิดใช้งานเส้นขอบทั้งหมด (กริด):

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "build-table-with-borders.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)

{{% /alert %}}

### การจัดรูปแบบระดับแถว

การจัดรูปแบบ **ระดับแถว** สามารถควบคุมได้โดยใช้คลาส [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) และ [RowCollection](https://reference.aspose.com/words/net/aspose.words.tables/rowcollection/)

{{% alert color="primary" %}}

โปรดทราบว่า **Row** สามารถเป็นโหนดย่อยของ **Table** เท่านั้น ในเวลาเดียวกัน จะต้องมี **Cell** อย่างน้อยหนึ่งรายการใน **Row** เพื่อให้สามารถใช้การจัดรูปแบบได้

{{% /alert %}}

รูปภาพด้านล่างแสดงคุณลักษณะการจัดรูปแบบ **Row** ใน Microsoft Word และคุณสมบัติที่เกี่ยวข้องใน Aspose.Words

![formatting-row-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-3.png)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแก้ไขการจัดรูปแบบแถวของตาราง:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-row-formatting.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)

{{% /alert %}}

### การจัดรูปแบบระดับเซลล์

การจัดรูปแบบระดับเซลล์ถูกควบคุมโดยคลาส [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) และ [CellCollection](https://reference.aspose.com/words/net/aspose.words.tables/cellcollection/)

{{% alert color="primary" %}}

โปรดทราบว่า **Cell** สามารถเป็นโหนดย่อยของ **Row** เท่านั้น ในเวลาเดียวกัน จะต้องมี [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) อย่างน้อยหนึ่งรายการใน **Cell** เพื่อให้สามารถใช้การจัดรูปแบบได้

นอกจาก **Paragraph** แล้ว คุณยังสามารถแทรก **Table** ลงใน **Cell** ได้อีกด้วย

{{% /alert %}}

รูปภาพด้านล่างแสดงคุณลักษณะการจัดรูปแบบ **Cell** ใน Microsoft Word และคุณสมบัติที่เกี่ยวข้องใน Aspose.Words

![formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-5.png)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการปรับเปลี่ยนการจัดรูปแบบของเซลล์ตาราง:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-cell-formatting.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าจำนวนช่องว่าง (เป็นจุด) เพื่อเพิ่มไปทางซ้าย/บน/ขวา/ล่างของเนื้อหาในเซลล์:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "cell-padding.cs" >}}

## ระบุความสูงของแถว

วิธีที่ง่ายที่สุดในการตั้งค่าความสูงของแถวคือการใช้ **DocumentBuilder** เมื่อใช้คุณสมบัติ **RowFormat** ที่เหมาะสม คุณสามารถตั้งค่าความสูงเริ่มต้นหรือใช้ความสูงที่แตกต่างกันสำหรับแต่ละแถวในตารางได้

ใน Aspose.Words ความสูงของแถวตารางจะถูกควบคุมโดย:

- คุณสมบัติความสูงของแถว - [Height](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/height/)
- คุณสมบัติกฎความสูงสำหรับแถวที่กำหนด – [HeightRule](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/heightrule/)

ในเวลาเดียวกัน คุณสามารถตั้งค่าความสูงที่แตกต่างกันสำหรับแต่ละแถวได้ ซึ่งช่วยให้คุณควบคุมการตั้งค่าตารางได้อย่างกว้างขวาง

{{% alert color="primary" %}}

ตัวเลือกกฎสำหรับการระบุความสูงของวัตถุสามารถตั้งค่าได้โดยใช้การแจงนับ [HeightRule](https://reference.aspose.com/words/net/aspose.words/heightrule/)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีสร้างตารางที่มีเซลล์เดียวและใช้การจัดรูปแบบแถว:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-row-formatting.cs" >}}

## ระบุความกว้างของตารางและเซลล์

ตารางในเอกสาร Microsoft Word มีวิธีปรับขนาดตารางและเซลล์แต่ละเซลล์หลายวิธี คุณสมบัติเหล่านี้ช่วยให้สามารถควบคุมลักษณะที่ปรากฏและการทำงานของตารางได้อย่างมาก ดังนั้น Aspose.Words จึงสนับสนุนลักษณะการทำงานของตาราง เช่นเดียวกับใน Microsoft Word

สิ่งสำคัญคือต้องทราบว่าองค์ประกอบของตารางมีคุณสมบัติที่แตกต่างกันหลายประการ ซึ่งอาจส่งผลต่อวิธีคำนวณความกว้างของตารางโดยรวม รวมถึงแต่ละเซลล์:

- ความกว้างที่ต้องการบนโต๊ะ
- ความกว้างที่ต้องการในแต่ละเซลล์
- อนุญาตให้ปรับอัตโนมัติบนโต๊ะ

บทความนี้ให้รายละเอียดเกี่ยวกับวิธีการทำงานของคุณสมบัติการคำนวณความกว้างของตารางต่างๆ และวิธีการควบคุมการคำนวณความกว้างของตารางอย่างสมบูรณ์ นี่คือ
มีประโยชน์อย่างยิ่งที่จะทราบในกรณีที่เค้าโครงตารางไม่ปรากฏตามที่คาดไว้

{{% alert color="primary" %}}

ในกรณีส่วนใหญ่ เซลล์ที่ต้องการจะแนะนำมากกว่าความกว้างของตาราง ความกว้างของเซลล์ที่ต้องการจะสอดคล้องกับข้อกำหนดรูปแบบ DOCX และรุ่น Aspose.Words มากกว่า

จริงๆ แล้วความกว้างของเซลล์เป็นค่าที่คำนวณได้สำหรับรูปแบบ DOCX ความกว้างของเซลล์จริงอาจขึ้นอยู่กับหลายสิ่งหลายอย่าง ตัวอย่างเช่น การเปลี่ยนแปลงระยะขอบหน้าหรือความกว้างของตารางที่ต้องการอาจส่งผลต่อความกว้างของเซลล์จริง

ความกว้างของเซลล์ที่ต้องการคือคุณสมบัติของเซลล์ที่จัดเก็บไว้ในเอกสาร มันไม่ได้ขึ้นอยู่กับสิ่งใดๆ และไม่เปลี่ยนแปลงเมื่อคุณเปลี่ยนตารางหรือคุณสมบัติอื่นๆ ของเซลล์

{{% /alert %}}

{{% alert color="primary" %}}

คุณสมบัติและวิธีการทั้งหมดที่อธิบายไว้ในบทความนี้เกี่ยวข้องกับวิธีการทำงานของตารางใน Microsoft Word ดังนั้น ในกรณีส่วนใหญ่ หากคุณกำลังสร้างตารางโดยใช้โปรแกรมแต่พบว่าการสร้างตารางที่ต้องการเป็นเรื่องยาก คุณสามารถลองสร้างตารางด้วยภาพใน Microsoft Word ก่อน จากนั้นจึงคัดลอกค่าการจัดรูปแบบลงในแอปพลิเคชันของคุณ

{{% /alert %}}

### วิธีใช้ความกว้างที่ต้องการ

ความกว้างที่ต้องการของตารางหรือแต่ละเซลล์ถูกกำหนดผ่านคุณสมบัติความกว้างที่ต้องการ ซึ่งเป็นขนาดที่องค์ประกอบพยายามทำให้พอดี นั่นคือสามารถระบุความกว้างที่ต้องการสำหรับทั้งตารางหรือแต่ละเซลล์ได้ ในบางสถานการณ์ อาจไม่สามารถปรับให้พอดีกับความกว้างนี้ได้ แต่ความกว้างจริงจะใกล้เคียงกับค่านี้ในกรณีส่วนใหญ่

ประเภทความกว้างที่ต้องการและค่าที่เหมาะสมได้รับการตั้งค่าโดยใช้วิธีการของคลาส [PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/):

* วิธี [Auto](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/auto/) เพื่อระบุอัตโนมัติหรือ "ไม่มีความกว้างที่ต้องการ"
* วิธี [FromPercent](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/frompercent/) เพื่อระบุความกว้างเป็นเปอร์เซ็นต์
* วิธี [FromPoints](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/frompoints/) เพื่อระบุความกว้างเป็นจุด

รูปภาพด้านล่างแสดง *คุณลักษณะการตั้งค่าความกว้างที่ต้องการ* ใน Microsoft Word และคุณสมบัติที่เกี่ยวข้องใน Aspose.Words

![formatting-table-properties-aspose-words-net](/words/net/applying-formatting/applying-formatting-8.png)

ตัวอย่างการใช้ตัวเลือกเหล่านี้กับตารางจริงในเอกสารสามารถดูได้จากภาพด้านล่าง

![todo:image_alt_text](/words/net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

ก่อนที่คุณจะสามารถใช้ความกว้างที่ต้องการในตารางได้ คุณต้องตรวจสอบให้แน่ใจว่าตารางมีอย่างน้อยหนึ่งแถว เนื่องจากการจัดรูปแบบตารางดังกล่าวในเอกสาร Microsoft Word หรือในเอกสารที่สร้างใน Aspose.Words จะถูกจัดเก็บไว้ในแถวของตาราง

{{% /alert %}}

#### ระบุตารางที่ต้องการหรือความกว้างของเซลล์

ใน Aspose.Words ความกว้างของตารางและเซลล์จะถูกตั้งค่าโดยใช้คุณสมบัติ [Table.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/table/preferredwidth/) และคุณสมบัติ [CellFormat.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/preferredwidth/) โดยมีตัวเลือกในการแจงนับ [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/):

- **Auto** ซึ่งเทียบเท่ากับชุดความกว้างที่ต้องการ
- **Percent** ซึ่งปรับองค์ประกอบให้สัมพันธ์กับพื้นที่ว่างในหน้าต่างหรือขนาดคอนเทนเนอร์ และคำนวณค่าใหม่เมื่อความกว้างที่มีอยู่เปลี่ยนไป
- **Points** ซึ่งสอดคล้องกับองค์ประกอบของความกว้างที่ระบุเป็นจุด

{{% alert color="primary" %}}

ตามค่าเริ่มต้น ตารางสามารถอธิบายได้ว่าพอดีกับพื้นที่ว่างบนเพจ 100% ในกรณีนี้ หมายความว่าตารางจะพยายามใช้ช่องว่างระหว่างระยะขอบของหน้าด้านซ้ายและด้านขวา

{{% /alert %}}

การใช้คุณสมบัติ [Table.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/table/preferredwidth/) จะปรับความกว้างที่ต้องการโดยสัมพันธ์กับคอนเทนเนอร์: หน้า คอลัมน์ข้อความ หรือเซลล์ตารางด้านนอก หากเป็นตารางที่ซ้อนกัน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าตารางให้พอดีอัตโนมัติถึง 50% ของความกว้างของหน้า:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-page-width.cs" >}}

การใช้คุณสมบัติ [CellFormat.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/preferredwidth/) บนเซลล์ที่กำหนดจะปรับความกว้างที่ต้องการ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าความกว้างที่ต้องการ:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "preferred-width-settings.cs" >}}

#### ค้นหาประเภทและค่าความกว้างที่ต้องการ

คุณสามารถใช้คุณสมบัติ [Type](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/type/) และ [Value](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/value/) เพื่อค้นหารายละเอียดความกว้างที่ต้องการของตารางหรือเซลล์ที่ต้องการ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการดึงข้อมูลประเภทความกว้างที่ต้องการของเซลล์ตาราง:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "retrieve-preferred-width-type.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)

{{% /alert %}}

### วิธีการตั้งค่าการปรับพอดีอัตโนมัติ

คุณสมบัติ [AllowAutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/allowautofit/) ช่วยให้เซลล์ในตารางขยายและลดขนาดตามเกณฑ์ที่เลือก ตัวอย่างเช่น คุณสามารถใช้ตัวเลือก **ปรับให้พอดีอัตโนมัติกับหน้าต่าง** เพื่อปรับตารางให้พอดีกับความกว้างของหน้า และใช้ตัวเลือก **ปรับให้พอดีอัตโนมัติกับเนื้อหา** เพื่อให้แต่ละเซลล์ขยายหรือย่อตามเนื้อหาได้

{{% alert color="primary" %}}

นอกจากนี้ คุณสมบัติ **AllowAutoFit** สามารถใช้ร่วมกับความกว้างของเซลล์ที่ต้องการเพื่อจัดรูปแบบเซลล์ให้พอดีกับเนื้อหาโดยอัตโนมัติ แต่จะมีความกว้างเริ่มต้นด้วย หากจำเป็น ความกว้างของเซลล์สามารถขยายเกินความกว้างนี้ได้

{{% /alert %}}

ตามค่าเริ่มต้น Aspose.Words จะแทรกตารางใหม่โดยใช้ **ปรับให้พอดีอัตโนมัติกับหน้าต่าง** ตารางจะมีขนาดตามความกว้างของหน้าที่มีอยู่ หากต้องการปรับขนาดตาราง คุณสามารถเรียกใช้เมธอด [AutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/autofit/) ได้ เมธอดนี้ยอมรับการแจงนับ [AutoFitBehavior](https://reference.aspose.com/words/net/aspose.words.tables/autofitbehavior/) ที่ระบุประเภทของการปรับพอดีอัตโนมัติที่จะใช้กับตาราง

สิ่งสำคัญคือต้องรู้ว่าจริงๆ แล้ววิธีการปรับให้พอดีอัตโนมัตินั้นเป็นทางลัดที่ใช้คุณสมบัติที่แตกต่างกันกับตารางในเวลาเดียวกัน สิ่งเหล่านี้เป็นคุณสมบัติที่ทำให้ตารางมีพฤติกรรมที่สังเกตได้จริง เราจะพูดถึงคุณสมบัติเหล่านี้สำหรับตัวเลือกการปรับอัตโนมัติแต่ละรายการ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าตารางให้ย่อหรือขยายแต่ละเซลล์ตามเนื้อหา:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-auto-fit.cs" >}}

#### ปรับตารางให้พอดีอัตโนมัติกับหน้าต่าง

เมื่อปรับใช้การปรับหน้าต่างอัตโนมัติกับตาราง การดำเนินการต่อไปนี้จะดำเนินการเบื้องหลังจริง:

1. คุณสมบัติ **Table.AllowAutoFit** ถูกเปิดใช้งานเพื่อปรับขนาดคอลัมน์โดยอัตโนมัติเพื่อให้พอดีกับเนื้อหาที่มีอยู่ โดยใช้ค่า **Table.PreferredWidth** 100%
2. **CellFormat.PreferredWidth** จะถูกลบออกจากเซลล์ตารางทั้งหมด
      {{% alert color="primary" %}}
   โปรดทราบว่าสิ่งนี้แตกต่างจากลักษณะการทำงานของ Microsoft Word เล็กน้อย โดยที่ความกว้างที่ต้องการของแต่ละเซลล์จะถูกตั้งค่าให้เหมาะสมตามขนาดและเนื้อหาปัจจุบัน Aspose.Words ไม่อัปเดตความกว้างที่ต้องการ ดังนั้นจึงเพิ่งถูกล้างข้อมูลแทน
      {{% /alert %}}
3. ความกว้างของคอลัมน์จะถูกคำนวณใหม่สำหรับเนื้อหาตารางปัจจุบัน – ผลลัพธ์สุดท้ายคือตารางที่ใช้ความกว้างที่มีอยู่ทั้งหมด
4. ความกว้างของคอลัมน์ในตารางจะเปลี่ยนโดยอัตโนมัติเมื่อผู้ใช้แก้ไขข้อความ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการปรับตารางให้พอดีกับความกว้างของหน้าโดยอัตโนมัติ:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-page-width.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)

{{% /alert %}}

#### ปรับตารางให้พอดีอัตโนมัติกับเนื้อหา

เมื่อตารางถูกปรับเนื้อหาให้เหมาะสมโดยอัตโนมัติ ขั้นตอนต่อไปนี้จะดำเนินการเบื้องหลังจริง:

1. คุณสมบัติ **Table.AllowAutoFit** ถูกเปิดใช้งานเพื่อปรับขนาดแต่ละเซลล์โดยอัตโนมัติตามเนื้อหา

2. ความกว้างของตารางที่ต้องการจะถูกลบออกจาก **Table.PreferredWidth**, **CellFormat.PreferredWidth** จะถูกลบสำหรับแต่ละเซลล์ของตาราง
      {{% alert color="primary" %}}

   โปรดทราบว่าตัวเลือกการปรับพอดีอัตโนมัตินี้จะลบความกว้างที่ต้องการออกจากเซลล์ เช่นเดียวกับใน Microsoft Word หากคุณต้องการคงขนาดคอลัมน์และเพิ่มหรือลดคอลัมน์เพื่อให้พอดีกับเนื้อหา คุณควรตั้งค่าคุณสมบัติ **Table.AllowAutoFit** เป็น **True** เพียงอย่างเดียว แทนที่จะใช้ทางลัดให้พอดีอัตโนมัติ {{% /alert %}}

3. ความกว้างของคอลัมน์จะถูกคำนวณใหม่สำหรับเนื้อหาตารางปัจจุบัน ผลลัพธ์สุดท้ายคือตารางที่ความกว้างของคอลัมน์และความกว้างของทั้งตารางจะถูกปรับขนาดโดยอัตโนมัติเพื่อให้พอดีกับเนื้อหามากที่สุดเมื่อผู้ใช้แก้ไขข้อความ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการปรับตารางให้พอดีกับเนื้อหาโดยอัตโนมัติ:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-contents.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)

{{% /alert %}}

#### ปิดใช้งานการปรับพอดีอัตโนมัติในตารางและใช้ความกว้างของคอลัมน์คงที่

หากตารางปิดใช้งานการปรับพอดีอัตโนมัติและใช้ความกว้างของคอลัมน์คงที่แทน ให้ดำเนินการตามขั้นตอนต่อไปนี้:

1. คุณสมบัติ **Table.AllowAutoFit** ถูกปิดใช้งาน ดังนั้นคอลัมน์จะไม่ขยายหรือย่อขนาดเนื้อหา

2. ความกว้างที่ต้องการของทั้งตารางจะถูกลบออกจาก **Table.PreferredWidth**, **CellFormat.PreferredWidth** จะถูกลบออกจากเซลล์ตารางทั้งหมด
3. ผลลัพธ์สุดท้ายคือตารางที่มีความกว้างของคอลัมน์ถูกกำหนดโดยคุณสมบัติ [CellFormat.Width](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/width/) และคอลัมน์จะไม่ถูกปรับขนาดโดยอัตโนมัติเมื่อผู้ใช้ป้อนข้อความหรือเมื่อปรับขนาดหน้า

{{% alert color="primary" %}}

โปรดทราบว่าหากไม่มีการระบุความกว้างสำหรับ **CellFormat.Width** ระบบจะใช้ค่าเริ่มต้นที่หนึ่งนิ้ว (72 พอยต์)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการปิดใช้งานการปรับพอดีอัตโนมัติและเปิดใช้งานความกว้างคงที่สำหรับตารางที่ระบุ:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-fixed-column-widths.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)

{{% /alert %}}

### ลำดับความสำคัญเมื่อคำนวณความกว้างของเซลล์

Aspose.Words ช่วยให้ผู้ใช้สามารถกำหนดความกว้างของตารางหรือเซลล์ผ่านวัตถุหลายชิ้น รวมถึง [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) ด้วย คุณสมบัติ [Width](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/width/) ส่วนใหญ่จะเหลือจากเวอร์ชันก่อนหน้า อย่างไรก็ตาม ยังคงมีประโยชน์ในการตั้งค่าความกว้างของเซลล์ให้ง่ายขึ้น

สิ่งสำคัญคือต้องทราบว่าคุณสมบัติ **CellFormat.Width** ทำงานแตกต่างกัน ขึ้นอยู่กับคุณสมบัติความกว้างอื่นๆ ที่มีอยู่แล้วในตาราง

Aspose.Words ใช้ลำดับต่อไปนี้ในการคำนวณความกว้างของเซลล์:

|  คำสั่ง |  คุณสมบัติ |  คำอธิบาย |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/allowautofit/) ถูกกำหนดแล้ว |  หากเปิดใช้งาน **AutoFit**:<br>- ตารางอาจขยายเกินความกว้างที่ต้องการเพื่อรองรับเนื้อหา โดยปกติแล้วจะไม่หดตัวต่ำกว่าความกว้างที่ต้องการ<br>- การเปลี่ยนแปลงใดๆ ที่เกิดขึ้นกับค่า **CellFormat.Width** จะถูกละเว้น และเซลล์จะพอดีกับเนื้อหาแทน |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) ที่มีค่า **Points** หรือ **Percent** |  **CellFormat.Width** จะถูกละเว้น |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) ที่มีค่าเป็น **Auto** |  คัดลอกค่าจาก **CellFormat.Width** และกลายเป็นความกว้างที่ต้องการของเซลล์ (เป็นพอยต์) |

{{% alert color="primary" %}}

การเปลี่ยนแปลงคุณสมบัติความกว้างจะไม่ได้รับการอัปเดตในความกว้างที่ต้องการ และจะต้องนำไปใช้กับความกว้างที่ต้องการแทน

{{% /alert %}}

{{% alert color="primary" %}}

ขณะสร้างเค้าโครงตารางคงที่ ให้ระบุความกว้างของเซลล์ เซลล์ที่ไม่มีความกว้างไม่สามารถบันทึกเป็นรูปแบบ DOC ได้ โดยหลักการแล้ว รูปแบบเอกสารอื่นที่ไม่ใช่ DOC เช่น DOCX อนุญาตให้บันทึกเซลล์ที่ไม่มีความกว้างในรูปแบบตารางคงที่ได้

{{% /alert %}}

## อนุญาตให้มีระยะห่างระหว่างเซลล์

คุณสามารถรับหรือตั้งค่าช่องว่างเพิ่มเติมระหว่างเซลล์ตารางได้คล้ายกับตัวเลือก "ระยะห่างเซลล์" ใน Microsoft Word ซึ่งสามารถทำได้โดยใช้คุณสมบัติ [AllowCellSpacing](https://reference.aspose.com/words/net/aspose.words.tables/table/allowcellspacing/)

ตัวอย่างการใช้ตัวเลือกเหล่านี้กับตารางจริงในเอกสารสามารถดูได้จากภาพด้านล่าง

<img src="/words/net/applying-formatting/applying-formatting-10.png" alt="เกี่ยวกับรูปแบบระยะห่างระหว่างเซลล์ aspose-words-net" style="width:500px"/>

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าระยะห่างระหว่างเซลล์:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-cell-spacing.cs" >}}

## ใช้เส้นขอบและการแรเงา

เส้นขอบและการแรเงาสามารถนำไปใช้กับทั้งตารางโดยใช้ [Table.SetBorder](https://reference.aspose.com/words/net/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/net/aspose.words.tables/table/setborders/) และ [Table.SetShading](https://reference.aspose.com/words/net/aspose.words.tables/table/setshading/) หรือเฉพาะกับเซลล์ที่ระบุโดยใช้ [CellFormat.Borders](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/borders/) และ [CellFormat.Shading](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/shading/) นอกจากนี้ คุณสามารถตั้งค่าเส้นขอบแถวได้โดยใช้ [RowFormat.Borders](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/borders/) แต่ไม่สามารถใช้การแรเงาในลักษณะนี้ได้

รูปภาพด้านล่างแสดงการตั้งค่าเส้นขอบและเงาใน Microsoft Word และคุณสมบัติที่เกี่ยวข้องใน Aspose.Words

![formatting-border-line-aspose-words-net](/words/net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-net](/words/net/applying-formatting/applying-formatting-7.png)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีจัดรูปแบบตารางและเซลล์ที่มีเส้นขอบและแรเงาต่างกัน:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "format-table-and-cell-with-different-borders.cs" >}}
