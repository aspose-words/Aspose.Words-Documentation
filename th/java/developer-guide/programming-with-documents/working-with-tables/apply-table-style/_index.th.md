---
title: ทํางานร่วมกับรูปแบบตารางใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ปรับใช้รูปแบบตาราง
linktitle: ปรับใช้รูปแบบตาราง
description: "การฟอร์แมตตารางขั้นสูง Java. สร้างรูปแบบตารางโดยใช้ Java. แนะนําการฟอร์แมตตารางขั้นสูง, รูปแบบตารางที่ใช้ Java."
type: docs
weight: 80
url: /th/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

สไตล์ตารางนิยามชุดของการฟอร์แมต ที่สามารถนําไปใช้กับตารางได้อย่างง่ายดาย รูป แบบ ต่าง ๆ เช่น พรม, การ ประดับ, การ จัด ระเบียบ, และ การ เรียง ตัว อักษร สามารถ วาง ไว้ ใน แบบ ตาราง และ นํา มา ใช้ กับ ตาราง มาก มาย เพื่อ ให้ ดู เหมือน เสมอ ต้น เสมอ ปลาย.

Aspose.Words รองรับการใช้รูปแบบตารางและคุณสมบัติในการอ่านของรูปแบบตาราง รูปแบบตารางถูกเก็บรักษาระหว่างการโหลดและการบันทึกในรูปแบบต่อไปนี้:

- ใช้รูปแบบตารางในรูปแบบ DCX และ WordML เมื่อมีการโหลดและบันทึกในรูปแบบเหล่านี้
- ใช้รูปแบบตารางไว้เมื่อมีการโหลดและบันทึกในรูปแบบ DOC (แต่ไม่ใช่รูปแบบอื่น)
- เมื่อมีการส่งออกไปยังรูปแบบอื่น ๆ, การแปลหรือการพิมพ์ รูปแบบตารางจะถูกขยายออกไปเป็นการฟอร์แมตโดยตรงในตาราง ดังนั้นการฟอร์แมตทั้งหมดจะถูกเก็บรักษาไว้

## สร้างรูปแบบตาราง

ผู้ใช้สามารถสร้างรูปแบบใหม่ และเพิ่มเข้าไปในชุดสะสมสไตล์ได้ เดอะ [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) วิธีการต่าง ๆ ถูกใช้ในการสร้างรูปแบบตารางแบบใหม่

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีสร้างผู้ใช้คนใหม่ที่นิยามรูปแบบตาราง:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## คัดลอกรูปแบบตารางที่มีอยู่

หากจําเป็น คุณสามารถคัดลอกรูปแบบตารางที่มีอยู่ในเอกสารบางอย่าง ไปเป็นรูปแบบสะสมของคุณโดยใช้ `AddCopy` วิธี

เป็น สิ่ง สําคัญ ที่ จะ ทราบ ว่า เมื่อ ลอก แบบ แบบ นี้ ก็ มี การ เลียน แบบ แบบ แบบ ที่ เกี่ยว ข้อง กัน ด้วย.

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการนําเข้ารูปแบบจากเอกสารหนึ่งไปยังเอกสารอื่น ๆ:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## ปรับใช้รูปแบบตารางที่มีอยู่

Aspose.Words ให้ [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) สืบทอดมาจาก [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) ชั้นเรียน. **TableStyle** อนุญาตให้ผู้ใช้ใช้ตัวเลือกต่าง ๆ เช่น การแรเงา, การปะแผ่น, ระยะเยื้อง [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) ถึง [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), ฯลฯ

นอกจากนั้น Aspose.Words ให้ [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) ชั้นและคุณสมบัติไม่กี่ของ `Table` คลาสที่จะกําหนดรูปแบบตารางที่เราจะใช้: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), ถึง [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words ยังให้ [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) ชั้นที่เป็นตัวแทนของรูปแบบพิเศษประยุกต์พื้นที่บางส่วนของตารางที่มีการจัดรูปแบบตารางและ [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) นั่นแสดงถึงการสะสม **ConditionalStyle** วัตถุ คลังภาพนี้บรรจุชุดของรายการที่จะใช้แทนแต่ละรายการ [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) ชนิดของการดูดซึม เดอะ **ConditionalStyleType** การบวกกําหนดพื้นที่ตารางที่เป็นไปได้ทั้งหมด ว่าการฟอร์แมตตามเงื่อนไขใด อาจนิยามในรูปแบบตารางได้

ในกรณีนี้ การฟอร์แมตตามเงื่อนไขสามารถนิยามได้ สําหรับพื้นที่ตารางทั้งหมดที่เป็นไปได้ ที่ถูกนิยามไว้ภายใต้ประเภทอุปทานแบบเงื่อนไข

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีนิยามรูปแบบเงื่อนไขสําหรับแถวหัวของตาราง:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

คุณยังสามารถเลือกส่วนของตารางที่จะใช้รูปแบบได้ เช่น คอลัมน์แรก คอลัมน์สุดท้าย แถวที่เรียงแถว มันอยู่ในรายการ [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) และถูกนํามาใช้ผ่านทาง [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) ทรัพย์สิน เดอะ **TableStyleOptions** การ หอม จัด ทํา ให้ มี การ ผสม ผสาน คุณลักษณะ เหล่า นี้ กัน อย่าง แยบยล.

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีสร้างตารางใหม่ ด้วยรูปแบบตารางที่ใช้:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

ภาพ ข้าง ล่าง แสดง ให้ เห็น ภาพ ของ **Table Styles** ใน Microsoft Word และคุณสมบัติที่ตรงกันใน Aspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## เลือกรูปแบบจากรูปแบบตาราง แล้วปรับใช้เป็นรูปแบบโดยตรง

Aspose.Words ยังให้ [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) วิธี การ ประกอบ แบบ ที่ พบ บน แบบ ตาราง และ ขยาย ไป ตาม แถว และ เซลล์ ต่าง ๆ ของ ตาราง ใน การ ฟอร์แมต โดย ตรง. ลองทําการรวมรูปแบบตารางและรูปแบบเซลล์

{{% alert color="primary" %}}

วิธีการนี้จะไม่ใช้แทนรูปแบบอื่น ๆ ที่ได้ปรับใช้มายังตารางแล้วผ่านทางแถวหรือรูปแบบของเซลล์

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการขยายรูปแบบจากรูปแบบไปยังแถวตารางและเซลล์เป็นรูปแบบโดยตรง:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
