---
title: การจัดรูปแบบตารางในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: ใช้การจัดรูปแบบ
linktitle: ใช้การจัดรูปแบบ
description: "การจัดรูปแบบตารางในรายละเอียดโดยใช้C++ ใช้C++เพื่อจัดรูปแบบทุกส่วนของตาราง."
type: docs
weight: 70
url: /th/cpp/applying-formatting/
---

องค์ประกอบของตารางแต่ละคนสามารถนำไปใช้กับการจัดรูปแบบที่แตกต่างกัน ตัวอย่างเช่นการจัดรูปแบบตารางจะถูกนำไปใช้กับตารางทั้งหมดการจัดรูปแบบแถวกับแถ.

Aspose.Wordsให้รวยAPIเพื่อดึงและนำไปใช้การจัดรูปแบบกับตาราง คุณสามารถใช้โหนด[Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/),[RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/)และ[CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/)เพื่อตั้งค่าการจัดรูปแบบ.

ในบทความนี้เราจะพูดถึงวิธีใช้การจัดรูปแบบกับโหนดตารางที่แตกต่างกันและการตั้งค่าการจัดรูปแบบตารางAspose.Wordsสนับสนุน.

## ใช้การจัดรูปแบบกับโหนดที่แตกต่างกัน

ในส่วนนี้เราจะดูที่การใช้การจัดรูปแบบไปยังโหนดตารางต่างๆ.

### การจัดรูปแบบระดับตาราง

หากต้องการจัดรูปแบบตาราง คุณสามารถใช้คุณสมบัติที่มีอยู่บนโหนด **Table** ที่สอดคล้องกันโดยใช้คลาส [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) และ [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

โปรดทราบว่าตารางต้องมีอย่างน้อยหนึ่งแถวก่อนที่จะสามารถใช้คุณสมบัติของตาราง ซึ่งหมายความว่าเมื่อสร้างตารางที่มี[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)การจัดรูปแบบนี้จะต้องทำหลังจากการเรียกครั้งแรกที่[InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/)หรือหลังจากที่แถวแรกถูกเพิ่มลงในตารางหรือเมื่อโหนดถูกแทรกลงในDOMโดยตรง.

{{% /alert %}}

รูปภาพด้านล่างแสดงคุณลักษณะการจัดรูปแบบ**Table**ในMicrosoft Wordและคุณสมบัติที่สอดคล้องกันในAspose.Words.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้เส้นขอบเค้าร่างกับตาราง:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างตารางที่มีเส้นขอบทั้งหมดที่เปิดใช้งาน(ตาราง):

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### การจัดรูปแบบระดับแถว

**ระดับแถว**

{{% alert color="primary" %}}

โปรดทราบว่า**Row**สามารถเป็นโหนดลูกของ**Table**เท่านั้น ในเวลาเดียวกันต้องมีอย่างน้อยหนึ่ง**Cell**ใน**Row**เพื่อให้สามารถใช้การจัดรูปแบบได้.

{{% /alert %}}

รูปภาพด้านล่างแสดงคุณลักษณะการจัดรูปแบบ**Row**ในMicrosoft Wordและคุณสมบัติที่สอดคล้องกันในAspose.Words.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปรับเปลี่ยนการจัดรูปแบบแถวตาราง:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### การจัดรูปแบบระดับเซลล์

การจัดรูปแบบระดับเซลล์จะถูกควบคุมโดย[Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/),[CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/)และ[CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/)คลาส.

{{% alert color="primary" %}}

โปรดทราบว่า**Cell**สามารถเป็นโหนดลูกของ**Row**เท่านั้น ในเวลาเดียวกันต้องมีอย่างน้อยหนึ่ง[Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/)ใน**Cell**เพื่อให้สามารถใช้การจัดรูปแบบได้.

นอกเหนือจาก**Paragraph**คุณยังสามารถแทรก**Table**ลงใน**Cell**.

{{% /alert %}}

รูปภาพด้านล่างแสดงคุณลักษณะการจัดรูปแบบ**Cell**ในMicrosoft Wordและคุณสมบัติที่สอดคล้องกันในAspose.Words.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปรับเปลี่ยนการจัดรูปแบบของเซลล์ตาราง:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าจำนวนของพื้นที่(ในจุด)เพื่อเพิ่มไปทางซ้าย/บน/ขวา/ล่างข:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## ระบุความสูงแถว

วิธีที่ง่ายที่สุดในการตั้งค่าความสูงของแถวคือใช้**DocumentBuilder** การใช้คุณสมบัติที่เหมาะสม**RowFormat**คุณสามารถตั้งค่าความสูงเริ่มต้นหรือใช้ความสูงที่แตกต่างกัน.

ในAspose.Wordsความสูงของแถวตารางจะถูกควบคุมโดย:

- คุณสมบัติความสูงของแถว-[Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- คุณสมบัติกฎความสูงของแถวที่กำหนด-[HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

ในเวลาเดียวกันความสูงที่แตกต่างกันสามารถตั้งค่าสำหรับแต่ละแถว-นี้ช่วยให้คุณสามารถ.

{{% alert color="primary" %}}

ตัวเลือกกฎสำหรับการระบุความสูงของวัตถุสามารถตั้งค่าโดยใช้การแจงนับ[HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/).

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างตารางที่ประกอบด้วยเซลล์เดียวและใช้การจัดรูปแ:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## การระบุตารางและความกว้างของเซลล์

ตารางในเอกสารMicrosoft Wordมีหลายวิธีในการปรับขนาดตารางและแต่ละเซลล์ คุณสมบัติเหล่านี้อนุญาตให้ควบคุมลักษณะและพฤติกรรมของตารางดังนั้นAspose.Wordsสนับสนุนพฤติกรรมของตารางเช่นเดียวกับในMicrosoft Word.

มันเป็นสิ่งสำคัญที่จะรู้ว่าองค์ประกอบของตารางมีคุณสมบัติที่แตกต่างกันหลายอย่างที่มีผลต่อวิธีการคำนวณความกว้างของตารางโดยรวมเช่นเดียวกับแต่ละเซลล์มีการคำนวณ:

- ความกว้างที่ต้องการบนโต๊ะ
- ความกว้างที่ต้องการในแต่ละเซลล์
- การอนุญาตให้พอดีอัตโนมัติบนโต๊ะ

บทความนี้อธิบายวิธีการทำงานของคุณสมบัติการคำนวณความกว้างของตารางต่างๆและวิธี นี่มัน
ประโยชน์อย่างยิ่งที่จะรู้ว่าในกรณีดังกล่าวที่รูปแบบตารางไม่ปรากฏตามที่คาดไว้.

{{% alert color="primary" %}}

ในกรณีส่วนใหญ่แนะนำให้ใช้เซลล์ที่ต้องการมากกว่าความกว้างของตาราง ความกว้างของเซลล์ที่ต้องการจะสอดคล้องกับข้อกำหนดรูปแบบDOCXรวมทั้งรุ่นAspose.Wordsมากขึ้น.

ความกว้างของเซลล์เป็นค่าที่คำนวณได้สำหรับรูปแบบDOCX ความกว้างของเซลล์จริงอาจขึ้นอยู่กับหลายสิ่ง ตัวอย่างเช่นการเปลี่ยนระยะขอบหน้าหรือความกว้างตารางที่ต้องการจะมีผลต่อความกว้.

ความกว้างของเซลล์ที่ต้องการคือคุณสมบัติของเซลล์ที่เก็บไว้ในเอกสาร มันไม่ได้ขึ้นอยู่กับอะไรและไม่เปลี่ยนแปลงเมื่อคุณเปลี่ยนตารางหรือคุณสมบัติอื่นๆของเซลล์.

{{% /alert %}}

{{% alert color="primary" %}}

คุณสมบัติและวิธีการทั้งหมดที่อธิบายไว้ในบทความนี้เกี่ยวข้องกับวิธีการทำงานของตารางMicrosoft Word ดังนั้นในกรณีส่วนใหญ่,ถ้าคุณกำลังสร้างตารางของคุณเป็นโปรแกรมแต่กำลังพบว่ามันยากที่จะสร้างตารางที่ต้องการ,คุณสามารถลองมองเห็นการสร้างมันในMicrosoft Wordก่อนแล้วก็คัดลอกค่าการจัดรูปแบบลงในโปรแกรมประยุกต์ของคุณ.

{{% /alert %}}

### วิธีการใช้ความกว้างที่ต้องการ

ความกว้างที่ต้องการของตารางหรือแต่ละเซลล์ถูกกำหนดผ่านคุณสมบัติความกว้างที่ต้อง ความกว้างที่ต้องการสามารถระบุได้สำหรับตารางทั้งหมดหรือสำหรับแต่ละเซลล์ ในบางสถานการณ์มันอาจจะไม่สามารถที่จะพอดีกับความกว้างนี้ตรงแต่ความกว้างที่แท้จริ.

ชนิดความกว้างและค่าที่ต้องการที่เหมาะสมจะถูกตั้งค่าโดยใช้วิธีการของคลาสของ[PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/):

- วิธีการ[Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/)เพื่อระบุอัตโนมัติหรือ"ไม่มีความกว้างที่ต้องการ"
- วิธีการ[FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/)เพื่อระบุเปอร์เซ็นต์ความกว้าง
- วิธีการ[FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/)เพื่อระบุความกว้างของจุด

รูปภาพด้านล่างแสดงตัวแทนของ*preferred width setting features*ในMicrosoft Wordและคุณสมบัติที่สอดคล้องกันในAspose.Words.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

ตัวอย่างของวิธีใช้ตัวเลือกเหล่านี้กับตารางจริงในเอกสารสามารถเห็นได้ในภาพด้านล่า.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

ก่อนที่คุณจะสามารถใช้ความกว้างที่ต้องการในตารางคุณต้องแน่ใจว่าตารางมีอย่างน้อยห การฟอร์แมตตารางในเอกสารMicrosoft Wordหรือในเอกสารที่สร้างในAspose.Wordsจะถูกเก็บไว้ในแถวของตาราง.

{{% /alert %}}

#### ระบุตารางที่ต้องการหรือความกว้างของเซลล์

ในAspose.Wordsจะมีการตั้งค่าความกว้างของตารางและเซลล์โดยใช้คุณสมบัติ[Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/)และคุณสมบัติ[CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/)พร้อมด้วยตัวเลือกในการแจงนับ[PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/):

- **Auto**ซึ่งเทียบเท่ากับชุดความกว้างที่ต้องการ
- **Percent**ซึ่งเหมาะกับองค์ประกอบเมื่อเทียบกับพื้นที่ว่างในหน้าต่างหรือขนาดคอนเทนเนอร์และคำนวณค่าใหม่เมื่อความกว้างที่มีอยู่มีการเปลี่ยนแปลง
- **Points**ซึ่งสอดคล้องกับองค์ประกอบของความกว้างที่ระบุในจุด

{{% alert color="primary" %}}

โดยค่าเริ่มต้นตารางสามารถอธิบายว่ามีการติดตั้ง 100%ของพื้นที่ว่างบนเพจ ในกรณีนี้หมายความว่าตารางจะพยายามใช้ช่องว่างระหว่างขอบด้านซ้ายและขวา.

{{% /alert %}}

การใช้คุณสมบัติ[Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/)จะปรับความกว้างที่ต้องการเมื่อเทียบกับคอนเทนเนอร์ได้แก่เพจคอลัมน์ข้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าตารางให้พอดีกับอัตโนมัติ 50%ของความกว้างของหน้า:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

การใช้คุณสมบัติ[CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/)บนเซลล์ที่กำหนดจะปรับความกว้างที่ต้องการ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าการตั้งค่าความกว้างที่ต้องการที่แตกต่างกัน:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### ค้นหาประเภทความกว้างและค่าที่ต้องการ

คุณสามารถใช้คุณสมบัติ[Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/)และ[Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/)เพื่อค้นหารายละเอียดความกว้างที่ต้องการของตารางหรือเซลล์ที่ต้องการ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดึงชนิดความกว้างที่ต้องการของเซลล์ตาราง:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### วิธีการตั้งค่าพอดีอัตโนมัติ

คุณสมบัติ[AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/)ช่วยให้เซลล์ในตารางเติบโตและหดตัวตามเกณฑ์ที่เลือก ตัวอย่างเช่นคุณสามารถใช้ตัวเลือก**AutoFit to Window**เพื่อให้พอดีกับตารางความกว้างของหน้าและตัวเลือก**AutoFit to Content**เพื่ออนุญาตให้แต่ละเซลล์เติบโตหรือหดตัวตามเนื้อหา.

{{% alert color="primary" %}}

นอกจากนี้คุณสมบัติ**AllowAutoFit**สามารถใช้ร่วมกับความกว้างของเซลล์ที่ต้องการเพื่อจัดรูปแบบเซลล์ที่ ถ้าจำเป็นความกว้างของเซลล์สามารถเติบโตผ่านความกว้างนี้ได้.

{{% /alert %}}

โดยค่าเริ่มต้นAspose.Wordsแทรกตารางใหม่โดยใช้**AutoFit to Window** ตารางจะมีขนาดตามความกว้างของหน้าเว็บที่มีอยู่ เมื่อต้องการปรับขนาดตารางคุณสามารถเรียกวิธีการ[AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/) วิธีนี้ยอมรับการแจงนับ[AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/)ที่ระบุประเภทของการปรับพอดีอัตโนมัติถูกนำไปใช้กับตาราง.

มันเป็นสิ่งสำคัญที่จะรู้ว่าวิธีการพอดีอัตโนมัติเป็นจริงทางลัดที่ใช้คุณสมบัติที่แตกต่างกับตาร เหล่านี้เป็นคุณสมบัติที่จริงให้ตารางลักษณะการทำงานที่สังเกต เราจะหารือเกี่ยวกับคุณสมบัติเหล่านี้สำหรับแต่ละตัวเลือกพอดีอัตโนมัติ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าตารางให้หดตัวหรือเติบโตแต่ละเซลล์ตามเนื้อหา:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFitตารางไปยังหน้าต่าง

เมื่อปรับอัตโนมัติไปยังหน้าต่างถูกนำไปใช้กับตาราง,การดำเนินการต่อไปนี้จะดำเนินการจริงอยู่เบื้องหลัง:

1. คุณสมบัติ**Table.AllowAutoFit**ถูกเปิดใช้งานเพื่อปรับขนาดคอลัมน์โดยอัตโนมัติเพื่อให้พอดีกับเนื้อหาที่มีอยู่โดยใช้ค่า**Table.PreferredWidth**100%
2. **CellFormat.PreferredWidth**จะถูกลบออกจากเซลล์ทั้งหมดของตาราง
   {{% alert color="primary" %}}
   โปรดทราบว่าสิ่งนี้แตกต่างจากพฤติกรรมMicrosoft Wordเล็กน้อยซึ่งความกว้างที่ต้องการของแต่ละเซลล์ถูกตั้งค่าเป็นค่าที่เหมาะสมตามขนาดและเนื้อหาปัจจุบัน Aspose.Wordsไม่ได้ปรับปรุงความกว้างที่ต้องการเพื่อให้พวกเขาเพียงแค่ได้รับการล้างแทน.
   {{% /alert %}}
3. ความกว้างของคอลัมน์จะถูกคำนวณใหม่สำหรับเนื้อหาของตารางปัจจุบัน–ผลลัพธ์ที่ได้คือตาร
4. ความกว้างของคอลัมน์ในตารางจะเปลี่ยนแปลงโดยอัตโนมัติเมื่อผู้ใช้แก้ไขข้อความ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการปรับตารางให้เข้ากับความกว้างของเพจโดยอัตโนมัติ:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFitตารางเนื้อหา

เมื่อตารางถูกติดตั้งโดยอัตโนมัติเนื้อหา,ขั้นตอนต่อไปนี้จะดำเนินการจริงเบื้องหลัง:

1. คุณสมบัติ**Table.AllowAutoFit**ถูกเปิดใช้งานเพื่อปรับขนาดแต่ละเซลล์ตามเนื้อหาโดยอัตโนมัติ

2. ความกว้างตารางที่ต้องการจะถูกลบออกจาก**Table.PreferredWidth**,**CellFormat.PreferredWidth**จะถูกลบออกสำหรับแต่ละเซลล์ตาราง
   {{% alert color="primary" %}}

   โปรดทราบว่าตัวเลือกการติดตั้งอัตโนมัตินี้จะลบความกว้างที่ต้องการออกจากเซลล์เช่นเดียวกับในMicrosoft Word หากคุณต้องการเก็บขนาดคอลัมน์ไว้และเพิ่มหรือลดขนาดคอลัมน์ให้พอดีกับเนื้อหาคุณควรตั้งคุณสมบัติ**Table.AllowAutoFit**เป็น**True**ด้วยตัวเองแทนที่จะใช้ทางลัดที่พอดีอัตโนมัติ{{% /alert %}}

3. ความกว้างของคอลัมน์จะถูกคำนวณใหม่สำหรับเนื้อหาของตารางปัจจุบัน–ผลลัพธ์สุดท้ายคือต

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการปรับตารางโดยอัตโนมัติกับเนื้อหา:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### ปิดการใช้งานAutoFitในตารางและใช้ความกว้างของคอลัมน์คงที่

ถ้าตารางมีการปิดใช้งานการติดตั้งอัตโนมัติและความกว้างคอลัมน์คงที่ถูกใช้แทนขั้นตอนต่:

1. **Table.AllowAutoFit**คุณสมบัติถูกปิดใช้งานดังนั้นคอลัมน์จะไม่เติบโตหรือหดตัวลงในเนื้อหา
2. ความกว้างที่ต้องการของตารางทั้งหมดจะถูกลบออกจาก**Table.PreferredWidth**,**CellFormat.PreferredWidth**จะถูกลบออกจากเซลล์ตารางทั้งหมด
3. ผลลัพธ์สุดท้ายคือตารางที่มีความกว้างของคอลัมน์จะถูกกำหนดโดยคุณสมบัติ[CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/)และคอลัมน์ที่ไ

{{% alert color="primary" %}}

โปรดทราบว่าหากไม่มีการระบุความกว้างสำหรับ**CellFormat.Width**ค่าเริ่มต้นของหนึ่งนิ้ว(72 จุด)จะถูกใช้.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปิดใช้งานการติดตั้งอัตโนมัติและเปิดใช้งานความกว้างคงที่สำหรับตารางที่ระบุ:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### ลำดับความสำคัญเมื่อคำนวณความกว้างของเซลล์

Aspose.Wordsอนุญาตให้ผู้ใช้กำหนดความกว้างของตารางหรือเซลล์ผ่านหลายออบเจกต์รวมถึง[CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/)–คุณสมบัติ[Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/)ส่วนใหญ่จะเหลือจากเวอร์ชันก่อนหน้าแต่ก็ยังมีประโยชน์สำหรับการลดความกว้างของเซลล์.

สิ่งสำคัญคือต้องรู้ว่าคุณสมบัติ**CellFormat.Width**ทำงานแตกต่างกันขึ้นอยู่กับคุณสมบัติความกว้างอื่นที่มีอยู่ในต.

Aspose.Wordsใช้ลำดับต่อไปนี้สำหรับการคำนวณความกว้างของเซลล์:

| สั่งซื้อ | ทรัพย์สิน | การบรรจุ |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/)ถูกกำหนด | ถ้า**AutoFit**ถูกเปิดใช้งาน:<br />-ตารางอาจเติบโตที่ผ่านมาความกว้างที่ต้องการเพื่อรองรับเนื้อหา-มันมักจะไม่หดตัวต่ำกว่<br />-การเปลี่ยนแปลงค่า**CellFormat.Width**จะถูกละเว้นและเซลล์จะพอดีกับเนื้อหาแทน |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/)มีค่า**Points**หรือ**Percent** | **CellFormat.Width**ถูกละเว้น |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/)มีค่า**Auto** | ค่าจาก**CellFormat.Width**ถูกคัดลอกและกลายเป็นความกว้างที่ต้องการของเซลล์(ในจุด) |

{{% alert color="primary" %}}

การเปลี่ยนแปลงใดๆของคุณสมบัติความกว้างจะไม่ได้รับการปรับปรุงในความกว้างที่ต้อง.

{{% /alert %}}

{{% alert color="primary" %}}

ขณะสร้างเค้าโครงตารางแบบคงที่ให้ระบุความกว้างของเซลล์ ไม่สามารถบันทึกเซลล์ที่ไม่มีความกว้างไว้ในรูปแบบDOC รูปแบบเอกสารอื่นที่ไม่ใช่DOCเช่นDOCXอนุญาตโดยหลักการแล้วการบันทึกเซลล์โดยไม่มีความกว้างในเค้าโครงตารางคงที่.

{{% /alert %}}

## อนุญาตให้ระยะห่างระหว่างเซลล์

คุณสามารถรับหรือตั้งค่าช่องว่างเพิ่มเติมระหว่างเซลล์ตารางที่คล้ายกับตัวเลือก"ระยะห่างของเซลล์"ในMicrosoft Word นี้สามารถทำได้โดยใช้คุณสมบัติ[AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/).

ตัวอย่างของวิธีใช้ตัวเลือกเหล่านี้กับตารางจริงในเอกสารสามารถเห็นได้ในภาพด้านล่า.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งระยะห่างระหว่างเซลล์:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## ใช้เส้นขอบและการแรเงา

เส้นขอบและการแรเงาสามารถนำไปใช้กับตารางทั้งหมดโดยใช้[Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/),[Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/)และ[Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/)หรือเฉพาะกับเซลล์ที่เฉพาะเจาะจงโดยใช้[CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/)และ[CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/) นอกจากนี้เส้นขอบแถวสามารถตั้งค่าได้โดยใช้[RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/)แต่ไม่สามารถใช้การแรเงาด้วยวิธีนี้ได้.

รูปภาพด้านล่างแสดงการตั้งค่าเส้นขอบและเงาในMicrosoft Wordและคุณสมบัติที่สอดคล้องกันในAspose.Words.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการจัดรูปแบบตารางและเซลล์ที่มีเส้นขอบที่แตกต่างกันและ:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}