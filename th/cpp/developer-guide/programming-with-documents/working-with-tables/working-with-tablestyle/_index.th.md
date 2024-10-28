---
title: เปลี่ยนรูปแบบตารางในเอกสารคำ
second_title: Aspose.WordsสำหรับC++
articleTitle: ใช้รูปแบบตาราง
linktitle: ใช้รูปแบบตาราง
description: "การจัดรูปแบบตารางขั้นสูงC++. สร้างสไตล์ตารางโดยใช้C++ ใช้รูปแบบตารางC++."
type: docs
weight: 80
url: /th/cpp/working-with-tablestyle/
---

ลักษณะตารางกำหนดชุดของการจัดรูปแบบที่สามารถนำไปใช้กับตาราง การจัดรูปแบบเช่นเส้นขอบแรเงาการจัดตำแหน่งและแบบอักษรสามารถตั้งค่าในลักษณะต.

Aspose.Wordsสนับสนุนการใช้รูปแบบตารางกับตารางและยังอ่านคุณสมบัติของรูปแบบตารางใดๆ รูปแบบตารางจะถูกเก็บรักษาไว้ในระหว่างการโหลดและการบันทึกในรูปแบบต่อไปนี้:

- รูปแบบตารางในDOCXและรูปแบบเวิร์ดมิลล์จะถูกเก็บรักษาไว้เมื่อโหลดและบันทึกในรูปแบบเหล่
- รูปแบบตารางจะถูกเก็บรักษาไว้เมื่อโหลดและบันทึกในรูปแบบDOC(แต่ไม่รวมรูปแบบอื่นๆ)
- เมื่อส่งออกไปยังรูปแบบอื่นๆการแสดงผลหรือการพิมพ์รูปแบบตารางจะขยายไปสู่การจัดรูป

## สร้างสไตล์ตาราง

ผู้ใช้สามารถสร้างสไตล์ใหม่และเพิ่มลงในคอลเล็กชันสไตล์ วิธีการ[Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/)ถูกใช้เพื่อสร้างสไตล์ตารางใหม่.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างลักษณะตารางที่ผู้ใช้กำหนดใหม่:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## คัดลอกสไตล์ตารางที่มีอยู่

หากจำเป็น คุณสามารถคัดลอกรูปแบบตารางที่มีอยู่แล้วในเอกสารบางฉบับลงในคอลเล็กชันรูปแบบของคุณโดยใช้เมธอด `AddCopy`.

สิ่งสำคัญคือต้องทราบว่าด้วยการคัดลอกนี้ลักษณะที่เชื่อมโยงจะถูกคัดลอกด้วย.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการนำเข้าสไตล์จากเอกสารหนึ่งไปยังเอกสารอื่น:

EXAMPLE

## ใช้รูปแบบตารางที่มีอยู่

Aspose.Wordsให้[TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/)สืบทอดมาจากชั้นเรียน[Style](https://reference.aspose.com/words/cpp/aspose.words/style/) **TableStyle**อำนวยความสะดวกให้ผู้ใช้สามารถใช้ตัวเลือกสไตล์ที่แตกต่างกันเช่นการแรเงา,ช่องว่าง,เยื้อง,[CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/)และ[Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/)ฯลฯ.

นอกจากนี้Aspose.Wordsให้[StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/)ชั้นและคุณสมบัติไม่กี่ของชั้นเรียน`Table`เพื่อระบุรูปแบบตารางที่เราจะทำงานกับ: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), และ[StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words ยังให้คลาส [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/) ที่แสดงการจัดรูปแบบพิเศษที่นำไปใช้กับพื้นที่บางส่วนของตารางที่มีรูปแบบตารางที่กำหนดไว้ และคลาส [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/) ที่แสดงชุดของอ็อบเจ็กต์ **ConditionalStyle** คอลเลกชันนี้ประกอบด้วยชุดรายการถาวรที่แสดงรายการหนึ่งรายการสำหรับแต่ละค่าของประเภทการแจงนับ [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/) การแจงนับ **ConditionalStyleType** กำหนดพื้นที่ตารางที่เป็นไปได้ทั้งหมดซึ่งอาจกำหนดการจัดรูปแบบตามเงื่อนไขในรูปแบบตาราง.

ในกรณีนี้ สามารถกำหนดการจัดรูปแบบตามเงื่อนไขสำหรับพื้นที่ตารางที่เป็นไปได้ทั้งหมดที่กำหนดไว้ภายใต้ชนิดการแจงนับ ConditionalStyleType ได้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการกำหนดรูปแบบตามเงื่อนไขสำหรับแถวส่วนหัวของตาราง:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

นอกจากนี้คุณยังสามารถเลือกส่วนตารางที่จะใช้ลักษณะเช่นคอลัมน์แรกคอลัมน์สุดท้ายแถว นการแจงนับ[TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/)และถูกนำไปใช้ผ่านคุณสมบัติ[StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/) นับ**TableStyleOptions**อนุญาตให้รวมกันบิตของคุณลักษณะเหล่านี้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างตารางใหม่ที่มีลักษณะตารางที่ใช้:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

รูปภาพด้านล่างแสดงตัวแทนของ**Table Styles**ในMicrosoft Wordและคุณสมบัติที่สอดคล้องกันในAspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## ใช้การจัดรูปแบบจากรูปแบบตารางและใช้มันเป็นรูปแบบโดยตรง

Aspose.Wordsนอกจากนี้ยังมีวิธีการ[ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/)ในการจัดรูปแบบที่พบในสไตล์ตารางและขยายไปยังแถวและเซลล์ของตารางเป็นการจัดรูปแบบโดยตรง ลองรวมการจัดรูปแบบกับรูปแบบตารางและรูปแบบเซลล์.

{{% alert color="primary" %}}

วิธีนี้จะไม่แทนที่การจัดรูปแบบอื่นๆที่นำไปใช้กับตารางผ่านรูปแบบแถวหรือเซลล์.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการขยายการจัดรูปแบบจากลักษณะไปยังตารางแถวและเซล:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}