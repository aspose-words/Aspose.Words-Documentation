---
title: เปลี่ยนสไตล์ตารางใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ใช้สไตล์ตาราง
linktitle: ใช้สไตล์ตาราง
description: "การจัดรูปแบบตารางขั้นสูง C# สร้างสไตล์ตารางโดยใช้ Python ใช้ Python สไตล์ตาราง"
type: docs
weight: 80
url: /th/python-net/working-with-tablestyle/
---

สไตล์ตารางจะกำหนดชุดการจัดรูปแบบที่สามารถนำไปใช้กับตารางได้อย่างง่ายดาย การจัดรูปแบบ เช่น เส้นขอบ การแรเงา การจัดแนว และแบบอักษรสามารถตั้งค่าในลักษณะตารางและนำไปใช้กับตารางจำนวนมากเพื่อให้มีลักษณะที่สอดคล้องกัน

Aspose.Words รองรับการใช้สไตล์ตารางกับตารางและยังอ่านคุณสมบัติของสไตล์ตารางใดก็ได้ สไตล์ตารางจะถูกรักษาไว้ในระหว่างการโหลดและบันทึกด้วยวิธีต่อไปนี้:

- สไตล์ตารางในรูปแบบ DOCX และ WordML จะถูกรักษาไว้เมื่อโหลดและบันทึกเป็นรูปแบบเหล่านี้
- สไตล์ตารางจะยังคงอยู่เมื่อโหลดและบันทึกในรูปแบบ DOC (แต่ไม่ใช่รูปแบบอื่น)
- เมื่อส่งออกเป็นรูปแบบอื่น การเรนเดอร์หรือการพิมพ์ รูปแบบตารางจะถูกขยายไปสู่การจัดรูปแบบโดยตรงในตาราง ดังนั้นการจัดรูปแบบทั้งหมดจึงยังคงอยู่

## สร้างสไตล์ตาราง

ผู้ใช้สามารถสร้างสไตล์ใหม่และเพิ่มลงในคอลเลกชันสไตล์ได้ วิธีการ [Add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) ใช้เพื่อสร้างสไตล์ตารางใหม่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างรูปแบบตารางที่ผู้ใช้กำหนดใหม่:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "create-table-style.py" >}}

## คัดลอกสไตล์ตารางที่มีอยู่

หากจำเป็น คุณสามารถคัดลอกลักษณะตารางที่มีอยู่แล้วในเอกสารบางฉบับลงในคอลเลกชั่นสไตล์ของคุณได้โดยใช้วิธี `AddCopy`

สิ่งสำคัญคือต้องรู้ว่าด้วยการคัดลอกนี้ สไตล์ที่เชื่อมโยงก็จะถูกคัดลอกด้วย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการนำเข้าสไตล์จากเอกสารหนึ่งไปยังเอกสารอื่น:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "copy-style-different-document.py" >}}

## ใช้สไตล์ตารางที่มีอยู่

Aspose.Words จัดเตรียม [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/) ที่สืบทอดมาจากคลาส [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) **TableStyle** อำนวยความสะดวกให้ผู้ใช้ใช้ตัวเลือกสไตล์ต่างๆ เช่น การแรเงา การเติม การเยื้อง [CellSpacing](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/cell_spacing/) และ [Font](https://reference.aspose.com/words/python-net/aspose.words/style/font/) เป็นต้น

นอกจากนี้ Aspose.Words ยังมีคลาส [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) และคุณสมบัติบางอย่างของคลาส `Table` เพื่อระบุรูปแบบตารางที่เราจะใช้งาน: [Style](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_identifier/), [StyleName](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_name/) และ [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/)

Aspose.Words ยังมีคลาส [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/) ที่แสดงการจัดรูปแบบพิเศษที่ใช้กับพื้นที่บางส่วนของตารางด้วยสไตล์ตารางที่กำหนด และ [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/) ที่แสดงคอลเลกชันของออบเจ็กต์ **ConditionalStyle** คอลเลกชันนี้ประกอบด้วยชุดรายการถาวรซึ่งแสดงถึงหนึ่งรายการสำหรับแต่ละค่าของประเภทการแจงนับ [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/) การแจงนับ **ConditionalStyleType** จะกำหนดพื้นที่ตารางที่เป็นไปได้ทั้งหมดซึ่งอาจกำหนดการจัดรูปแบบตามเงื่อนไขในลักษณะตารางได้

ในกรณีนี้ การจัดรูปแบบตามเงื่อนไขสามารถกำหนดได้สำหรับพื้นที่ตารางที่เป็นไปได้ทั้งหมดที่กำหนดไว้ภายใต้ประเภทการแจงนับ ConditionalStyleType

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีกำหนดการจัดรูปแบบตามเงื่อนไขสำหรับแถวส่วนหัวของตาราง:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "define-conditional-formatting.py" >}}

คุณยังสามารถเลือกส่วนของตารางที่จะปรับใช้ลักษณะได้ เช่น คอลัมน์แรก คอลัมน์สุดท้าย แถวที่มีแถบสี มีการระบุไว้ในการแจงนับ [TableStyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/tablestyleoptions/) และนำไปใช้ผ่านคุณสมบัติ [StyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_options/) การแจงนับ **TableStyleOptions** อนุญาตให้รวมคุณลักษณะเหล่านี้ในระดับบิต

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างตารางใหม่โดยใช้สไตล์ตาราง:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "build-table-with-style.py" >}}

รูปภาพด้านล่างแสดงการนำเสนอ **Table Styles** ใน Microsoft Word และคุณสมบัติที่เกี่ยวข้องใน Aspose.Words

![formatting-table-style-aspose-words-python](/words/python-net/working-with-tablestyle/applying-formatting-10.png)



## การทำงานกับสไตล์ตาราง

สไตล์ตารางจะกำหนดชุดการจัดรูปแบบที่สามารถนำไปใช้กับตารางได้อย่างง่ายดาย การจัดรูปแบบ เช่น เส้นขอบ การแรเงา การจัดตำแหน่ง และแบบอักษร สามารถตั้งค่าในลักษณะตารางและนำไปใช้กับตารางจำนวนมากเพื่อให้มีลักษณะที่สอดคล้องกัน

Aspose.Words รองรับการใช้สไตล์ตารางกับตารางและยังอ่านคุณสมบัติของสไตล์ตารางใดก็ได้ สไตล์ตารางจะถูกรักษาไว้ในระหว่างการโหลดและบันทึกด้วยวิธีต่อไปนี้:

- สไตล์ตารางในรูปแบบ DOCX และ WordML จะถูกรักษาไว้เมื่อโหลดและบันทึกเป็นรูปแบบเหล่านี้
- สไตล์ตารางจะยังคงอยู่เมื่อโหลดและบันทึกในรูปแบบ DOC (แต่ไม่ใช่รูปแบบอื่น)
- เมื่อส่งออกเป็นรูปแบบอื่น การเรนเดอร์หรือการพิมพ์ รูปแบบตารางจะถูกขยายไปสู่การจัดรูปแบบโดยตรงบนโต๊ะ ดังนั้นการจัดรูปแบบทั้งหมดจึงยังคงอยู่

ขณะนี้คุณไม่สามารถสร้างสไตล์ตารางใหม่ได้ คุณสามารถใช้ได้เฉพาะสไตล์ตารางในตัวหรือสไตล์ตารางแบบกำหนดเองซึ่งมีอยู่แล้วในเอกสารกับตารางเท่านั้น

## ใช้การจัดรูปแบบจากลักษณะตารางและนำไปใช้เป็นการจัดรูปแบบโดยตรง

Aspose.Words ยังมีวิธี [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/python-net/aspose.words/document/expand_table_styles_to_direct_formatting/#default) เพื่อใช้การจัดรูปแบบที่พบในลักษณะตาราง และขยายไปยังแถวและเซลล์ของตารางเป็นการจัดรูปแบบโดยตรง ลองรวมการจัดรูปแบบเข้ากับสไตล์ตารางและสไตล์เซลล์

{{% alert color="primary" %}}

วิธีนี้จะไม่แทนที่การจัดรูปแบบอื่นๆ ที่ใช้กับตารางแล้วผ่านรูปแบบแถวหรือเซลล์

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการขยายการจัดรูปแบบจากสไตล์ไปยังแถวและเซลล์ของตารางเป็นการจัดรูปแบบโดยตรง:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "expand-formatting-on-cells-and-row-from-style.py" >}}