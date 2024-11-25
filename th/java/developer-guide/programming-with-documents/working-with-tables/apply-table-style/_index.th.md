---
title: การทำงานกับรูปแบบตารางในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: ใช้รูปแบบตาราง
linktitle: ใช้รูปแบบตาราง
description: "การจัดรูปแบบตารางขั้นสูงJava. สร้างสไตล์ตารางโดยใช้Java รู้เบื้องต้นเกี่ยวกับการจัดรูปแบบตารางขั้นสูงรูปแบบตารางโดยใช้Java."
type: docs
weight: 80
url: /th/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

ลักษณะตารางกำหนดชุดของการจัดรูปแบบที่สามารถนำไปใช้กับตาราง การจัดรูปแบบเช่นเส้นขอบแรเงาการจัดตำแหน่งและแบบอักษรสามารถตั้งค่าในลักษณะต.

Aspose.Wordsสนับสนุนการใช้รูปแบบตารางกับตารางและยังอ่านคุณสมบัติของรูปแบบตารางใดๆ รูปแบบตารางจะถูกเก็บรักษาไว้ในระหว่างการโหลดและการบันทึกในรูปแบบต่อไปนี้:

- รูปแบบตารางในDOCXและWordMLจะถูกเก็บรักษาไว้เมื่อโหลดและบันทึกรูปแบบเหล่านี้
- รูปแบบตารางจะถูกเก็บรักษาไว้เมื่อโหลดและบันทึกในรูปแบบDOC(แต่ไม่รวมรูปแบบอื่นๆ)
- เมื่อส่งออกไปยังรูปแบบอื่นๆการแสดงผลหรือการพิมพ์รูปแบบตารางจะขยายไปสู่การจัดรูป

## สร้างสไตล์ตาราง

ผู้ใช้สามารถสร้างสไตล์ใหม่และเพิ่มลงในคอลเล็กชันสไตล์ วิธีการ[Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/)ถูกใช้เพื่อสร้างสไตล์ตารางใหม่.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างลักษณะตารางที่ผู้ใช้กำหนดใหม่:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## คัดลอกสไตล์ตารางที่มีอยู่

หากจำเป็น คุณสามารถคัดลอกรูปแบบตารางที่มีอยู่แล้วในเอกสารบางฉบับลงในคอลเล็กชันรูปแบบของคุณโดยใช้เมธอด `AddCopy`.

สิ่งสำคัญคือต้องทราบว่าด้วยการคัดลอกนี้ลักษณะที่เชื่อมโยงจะถูกคัดลอกด้วย.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการนำเข้าสไตล์จากเอกสารหนึ่งไปยังเอกสารอื่น:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## ใช้รูปแบบตารางที่มีอยู่

Aspose.Wordsให้[TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/)สืบทอดมาจากชั้นเรียน[Style](https://reference.aspose.com/words/java/com.aspose.words/style/) **TableStyle**ช่วยให้ผู้ใช้สามารถใช้ตัวเลือกสไตล์ที่แตกต่างกันเช่นการแรเงา,ช่องว่าง,เยื้อง,[CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing)และ[Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont)ฯลฯ.

นอกจากนี้Aspose.Wordsให้[StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/)ชั้นและคุณสมบัติไม่กี่ของ`Table`ชั้นที่จะระบุรูปแบบตารางที่เราจะทำงานร่วมกับ: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), และ[StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words ยังให้คลาส [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) ที่แสดงการจัดรูปแบบพิเศษที่นำไปใช้กับพื้นที่บางส่วนของตารางที่มีรูปแบบตารางที่กำหนดไว้ และคลาส [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) ที่แสดงชุดของอ็อบเจ็กต์ **ConditionalStyle** คอลเลกชันนี้ประกอบด้วยชุดรายการถาวรที่แสดงรายการหนึ่งรายการสำหรับแต่ละค่าของประเภทการแจงนับ [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) การแจงนับ **ConditionalStyleType** กำหนดพื้นที่ตารางที่เป็นไปได้ทั้งหมดซึ่งอาจกำหนดการจัดรูปแบบตามเงื่อนไขในรูปแบบตาราง.

ในกรณีนี้ สามารถกำหนดการจัดรูปแบบตามเงื่อนไขสำหรับพื้นที่ตารางที่เป็นไปได้ทั้งหมดที่กำหนดไว้ภายใต้ชนิดการแจงนับ ConditionalStyleType ได้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการกำหนดรูปแบบตามเงื่อนไขสำหรับแถวส่วนหัวของตาราง:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

นอกจากนี้คุณยังสามารถเลือกส่วนตารางที่จะใช้ลักษณะเช่นคอลัมน์แรกคอลัมน์สุดท้ายแถว นการแจงนับ[TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/)และถูกนำไปใช้ผ่านคุณสมบัติ[StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) นับ**TableStyleOptions**อนุญาตให้รวมกันบิตของคุณลักษณะเหล่านี้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างตารางใหม่ที่มีลักษณะตารางที่ใช้:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

รูปภาพด้านล่างแสดงตัวแทนของ**Table Styles**ในMicrosoft Wordและคุณสมบัติที่สอดคล้องกันในAspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## ใช้การจัดรูปแบบจากรูปแบบตารางและใช้มันเป็นรูปแบบโดยตรง

Aspose.Wordsนอกจากนี้ยังมีวิธีการ[ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting)ในการจัดรูปแบบที่พบในสไตล์ตารางและขยายไปยังแถวและเซลล์ของตารางเป็นการจัดรูปแบบโดยตรง ลองรวมการจัดรูปแบบกับรูปแบบตารางและรูปแบบเซลล์.

{{% alert color="primary" %}}

วิธีนี้จะไม่แทนที่การจัดรูปแบบอื่นๆที่นำไปใช้กับตารางผ่านรูปแบบแถวหรือเซลล์.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการขยายการจัดรูปแบบจากลักษณะไปยังตารางแถวและเซล:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
