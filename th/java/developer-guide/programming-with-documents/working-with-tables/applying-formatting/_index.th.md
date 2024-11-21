---
title: การฟอร์แมตตารางใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ปรับใช้รูปแบบตาราง
linktitle: ปรับใช้รูปแบบตาราง
description: "รูปแบบตารางในรายละเอียด ใช้ Java เพื่อฟอร์แมตทุกส่วนของตาราง"
type: docs
weight: 70
url: /th/java/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

แต่ละองค์ประกอบของตารางสามารถใช้ได้ ด้วยรูปแบบที่แตกต่างกัน ตัวอย่างเช่น การฟอร์แมตตารางจะถูกนําไปใช้กับทั้งตาราง การฟอร์แมตแถวเฉพาะแถว การฟอร์แมตเซลล์เท่านั้น

Aspose.Words ให้ที่อุดมไปด้วย API เพื่อรับและปรับใช้รูปแบบตาราง คุณสามารถใช้ [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), ถึง [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) โหนดที่จะตั้งค่ารูปแบบ

ใน บทความ นี้ เรา จะ พิจารณา วิธี การ ปรับ ปรุง ให้ เหมาะ กับ ปม ต่าง ๆ ใน โต๊ะ และ การ ตกแต่ง ตาราง Aspose.Words สนับสนุน

## ปรับใช้รูปแบบกับโหนดต่าง ๆ

ในส่วนนี้ เราจะพิจารณาเรื่องการตกแต่งแบบตารางต่างๆ

### การฟอร์แมตระดับของตาราง

ในการปรับใช้รูปแบบกับตาราง คุณสามารถใช้คุณสมบัติต่าง ๆ ที่ใช้ได้บนรูปแบบที่สัมพันธ์กัน **Table** โหนดโดยใช้ [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), ถึง [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) ชั้นเรียน

{{% alert color="primary" %}}

โปรด สังเกต ว่า ตาราง ต้อง มี อย่าง น้อย หนึ่ง แถว ก่อน จะ ใช้ คุณสมบัติ ของ โต๊ะ ได้. นี่หมายความว่าเมื่อสร้างโต๊ะกับ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), การฟอร์แมตนี้ต้องทําภายหลังการเรียกครั้งแรก [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()หรือหลังจากแถวแรกถูกเพิ่มเข้าไปในโต๊ะ หรือตอนที่โหนกถูกแทรกเข้าไป DOM.

{{% /alert %}}

ภาพ ข้าง ล่าง แสดง ให้ เห็น ภาพ ของ **Table** คุณสมบัติการฟอร์แมตใน Microsoft Word และคุณสมบัติที่ตรงกันใน Aspose.Words.

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ใช้ ขอบ รอบ โต๊ะ:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีการสร้างตารางที่มีกรอบทั้งหมดเปิดใช้ (กราฟ):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### การฟอร์แมตระดับแถว

รูปแบบแถว- * สามารถควบคุมได้โดยใช้ [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), ถึง [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) ชั้นเรียน

{{% alert color="primary" %}}

สังเกตว่า **Row** สามารถเป็นเพียงปมเด็กของ **Table**. ในเวลาเดียวกัน ต้องมีอย่างน้อยหนึ่งคน **Cell** ใน **Row** เพื่อให้การฟอร์แมตนี้ใช้ได้

{{% /alert %}}

ภาพ ข้าง ล่าง แสดง ให้ เห็น ภาพ ของ **Row** คุณสมบัติการฟอร์แมตใน Microsoft Word และคุณสมบัติที่ตรงกันใน Aspose.Words.

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

ตัวอย่างโค้ดต่อไปนี้แสดงถึงวิธีแก้ไขแถวของตาราง:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### การฟอร์แมตระดับเซลล์

การฟอร์แมตระดับเซลล์ถูกควบคุมโดย [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), ถึง [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) ชั้นเรียน

{{% alert color="primary" %}}

สังเกตว่า **Cell** สามารถเป็นเพียงปมเด็กของ **Row**. ในเวลาเดียวกัน ต้องมีอย่างน้อยหนึ่งคน [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) ใน **Cell** เพื่อให้การฟอร์แมตนี้ใช้ได้

นอกจาก **Paragraph**, คุณใส่ **Table** เป็น **Cell**.

{{% /alert %}}

ภาพ ข้าง ล่าง แสดง ให้ เห็น ภาพ ของ **Cell** คุณสมบัติการฟอร์แมตใน Microsoft Word และคุณสมบัติที่ตรงกันใน Aspose.Words.

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ปรับ ปรุง รูป แบบ ของ เซลล์ ตาราง:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีตั้งค่าจํานวนของช่องว่าง (ในจุด) เพื่อเพิ่มค่าบน/ขวา/ล่างของเนื้อหาเซลล์:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## กําหนดค่าตําแหน่งตําแหน่ง

วิธีที่ง่ายที่สุดในการตั้งค่าความสูงแถวคือการใช้ **DocumentBuilder**. ใช้ สิ่ง ที่ เหมาะ สม **RowFormat** คุณสมบัติ, คุณสามารถตั้งค่าความสูงปริยาย หรือใช้ความสูงอื่นของแต่ละแถวในตารางได้

ใน Aspose.Words, ความสูงแถวของตารางถูกควบคุมโดย:

- สมบัติความสูงแถว - [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- สมบัติกฎความสูงสําหรับแถวที่กําหนด - [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

ใน ขณะ เดียว กัน ความ สูง ของ แต่ ละ แถว ก็ อาจ ต่าง กัน ซึ่ง ทํา ให้ คุณ ควบคุม ตาราง ได้ อย่าง กว้าง ขวาง.

{{% alert color="primary" %}}

ตัวเลือกสําหรับระบุความสูงของออบเจกต์ สามารถตั้งค่าได้โดยใช้ [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) สนาม

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีสร้างตารางที่มีเซลล์เดียวและรูปแบบแถว:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## กําหนดตารางและความกว้างเซลล์

โต๊ะใน Microsoft Word เอกสาร ต่าง ๆ มี หลาย วิธี ที่ จะ ทํา การ ปรับ ปรุง ตาราง และ เซลล์ แต่ ละ เซลล์. คุณสมบัติเหล่านี้ทําให้ควบคุมรูปร่างและพฤติกรรมของโต๊ะได้มาก ดังนั้น Aspose.Words รองรับพฤติกรรมของตารางเช่น Microsoft Word.

เป็น สิ่ง สําคัญ ที่ จะ รู้ ว่า ธาตุ ต่าง ๆ ใน ตาราง มี คุณสมบัติ ต่าง ๆ กัน ซึ่ง อาจ มี ผล กระทบ ต่อ ความ กว้าง ของ ตาราง โดย รวม รวม รวม รวม ทั้ง เซลล์ แต่ ละ เซลล์ นั้น มี การ คํานวณ ว่า:

- ความกว้างที่ต้องการบนโต๊ะ
- ความกว้างที่ต้องการกับเซลล์แต่ละเซลล์
- อนุญาตให้ออโตไฟต์อยู่บนโต๊ะ

บทความ นี้ ให้ ราย ละเอียด เกี่ยว กับ วิธี คํานวณ ความ กว้าง ของ ตาราง และ วิธี ควบคุม ความ กว้าง ของ ตาราง. นี่คือ
เป็น ประโยชน์ เป็น พิเศษ ที่ จะ ทราบ ใน กรณี ดัง กล่าว ว่า การ วาง ผัง โต๊ะ ไม่ ได้ ปรากฏ ขึ้น อย่าง ที่ คาด หมาย ไว้.

{{% alert color="primary" %}}

ใน กรณี ส่วน ใหญ่ เซลล์ ที่ ชอบ มาก กว่า ความ กว้าง ของ ตาราง. ความกว้างของเซลล์ที่ชื่นชอบมีมากกว่าในเรียงตามการตั้งค่ารูปแบบ DOCX เช่นเดียวกับ Aspose.Words นางแบบ

ค่าความกว้างเซลล์เป็นค่าที่คํานวณสําหรับรูปแบบ DCX ความกว้างของเซลล์จริง สามารถขึ้นอยู่กับหลายอย่าง ตัว อย่าง เช่น การ เปลี่ยน ขอบ หน้า หรือ ความ กว้าง ของ ตาราง ที่ ชอบ มาก อาจ ส่ง ผล ต่อ ความ กว้าง ของ เซลล์.

ความกว้างเซลล์ที่ชอบเป็นสมบัติเซลล์ที่เก็บไว้ในเอกสาร มันไม่ได้ขึ้นอยู่กับอะไร และไม่เปลี่ยนแปลงเมื่อคุณเปลี่ยนตารางหรือคุณสมบัติอื่น ๆ ของเซลล์

{{% /alert %}}

{{% alert color="primary" %}}

คุณสมบัติ และ วิธี การ ทุก อย่าง ที่ พรรณนา ใน บทความ นี้ เกี่ยว ข้อง กับ วิธี ที่ โต๊ะ ทํา งาน Microsoft Word. ดังนั้นในกรณีส่วนใหญ่ ถ้าคุณกําลังสร้างตารางของคุณ โปรแกรม แต่กําลังพบว่ามันยากที่จะสร้างตารางที่ต้องการ Microsoft Word ก่อน แล้ว ค่อย เลียน แบบ ค่า การ ฟอร์แมต ใน โปรแกรม ของ คุณ.

{{% /alert %}}

### วิธี ใช้ เครื่อง มือ ที่ เหมาะ สม

ความกว้างที่ต้องการของตารางหรือแต่ละเซลล์ ถูกนิยามผ่านทางคุณสมบัติความกว้างที่ชื่นชอบ ซึ่งเป็นขนาดที่ธาตุพยายามที่จะพอดี นั่นคือ ความกว้างที่ควรใช้แทนทั้งตาราง หรือกับแต่ละเซลล์ ในบางกรณีอาจไม่สามารถใส่ความกว้าง ได้พอดี, แต่ความกว้างจริงจะใกล้กับค่านี้ส่วนใหญ่

ชนิดของความกว้างที่ควรใช้ ถูกตั้งค่าโดยใช้วิธีการต่าง ๆ [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) คลาส:

- [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) ช่องข้อมูลสําหรับระบุค่าอัตโนมัติหรือ "ไม่มีส่วนความกว้างที่ควรใช้มากกว่า"
- [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) วิธีระบุความกว้างเปอร์เซ็นต์
- [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) ใช้กําหนดความกว้างของจุด

ภาพด้านล่างนี้แสดงสัญลักษณ์ของค่าความกว้าง * โดยมีหน่วยเป็นที่ตั้ง* ใน Microsoft Word และคุณสมบัติที่ตรงกันใน Aspose.Words.

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

ตัว อย่าง ของ วิธี ใช้ ทาง เลือก เหล่า นี้ กับ ตาราง จริง ใน เอกสาร สามารถ เห็น ได้ ใน ภาพ ข้าง ล่าง.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

ก่อนที่คุณจะใช้ความกว้างที่มากกว่าในตาราง คุณต้องแน่ใจว่าตารางมีอย่างน้อยหนึ่งแถว. นี่เพราะตารางการตกแต่งใน Microsoft Word เอกสารหรือเอกสารที่สร้างใน Aspose.Words จะ เก็บ ไว้ ใน แถว ของ โต๊ะ.

{{% /alert %}}

#### กําหนดตารางที่ควรใช้หรือความกว้างเซลล์

ใน Aspose.Words, ตารางและความกว้างเซลล์ถูกตั้งค่าโดยใช้ [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) ทรัพย์สินและ [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) คุณสมบัติ พร้อมตัวเลือกใน [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) การเผาผลาญ:

- **Auto**, ซึ่งเทียบเท่ากับไม่มีชุดความกว้างมากกว่า
- **Percent**, ซึ่งพอดีกับธาตุที่สัมพันธ์กับพื้นที่ที่มีอยู่ในหน้าต่างหรือขนาดกล่องหน้าต่าง และทําการคํานวณค่าอีกครั้งเมื่อมีการเปลี่ยนแปลงความกว้างที่มีอยู่
- **Points**, ซึ่งตรงกับองค์ประกอบของความกว้างที่ระบุในจุด

{{% alert color="primary" %}}

โดยปริยายแล้ว ตารางสามารถอธิบายได้ว่า จับคู่กับ 100% ของพื้นที่ที่มีในหน้านี้ ในกรณีนี้ ตารางจะพยายามที่จะใช้พื้นที่ระหว่างขอบหน้าซ้ายและขวา

{{% /alert %}}

ใช้ [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) คุณสมบัติ จะ ปรับ ความ กว้าง ตาม ที่ ชอบ เมื่อ เทียบ กับ ภาชนะ: หน้า, คอลัมน์ ข้อ, หรือ ช่อง ตาราง ข้าง นอก หาก เป็น ตาราง ที่ วาง ไว้.

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีตั้งค่าตารางอัตโนมัติเป็น 50% ของความกว้างหน้า:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

ใช้ [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) คุณสมบัติบนเซลล์ที่กําหนดจะปรับความกว้างที่ชื่นชอบ

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีตั้งค่าความกว้างต่าง ๆ ที่ต้องการ:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### ค้นหาชนิดและค่าชนิดที่ควรใช้

คุณสามารถใช้ [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) ถึง [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) คุณสมบัติที่จะใช้ค้นหารายละเอียดของตารางหรือเซลล์ที่ต้องการ

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีดึงข้อมูลชนิดของเซลล์ตาราง:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### วิธี ตั้ง อัตโนมัติ

เดอะ [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) ทรัพย์สินทําให้เซลล์ในตารางเติบโตและหดตัวตามหลักเกณฑ์ที่เลือก ยกตัวอย่างเช่น คุณสามารถใช้ **ปรับอัตโนมัติไปยังหน้าต่าง** ตัวเลือกการจับคู่ตารางกับความกว้างของหน้าและ **ปรับอัตโนมัติไปยังเนื้อหา** ตัวเลือกที่ทําให้แต่ละเซลล์เติบโต หรือหดตัวตามเนื้อหา

{{% alert color="primary" %}}

นอกจากนี้, **AllowAutoFit** คุณสมบัติสามารถใช้ร่วมกับความกว้างเซลล์ที่ต้องการได้ เพื่อสร้างเซลล์ที่พอดีกับเนื้อหาโดยอัตโนมัติ แต่ยังมีความกว้างเริ่มต้นอีกด้วย ถ้าจําเป็น ความกว้างเซลล์ก็สามารถเติบโตได้

{{% /alert %}}

โดยปริยายแล้ว Aspose.Words แทรกตารางใหม่โดยใช้ **ปรับอัตโนมัติไปยังหน้าต่าง**. ตารางจะถูกปรับขนาดตามความกว้างของหน้ากระดาษที่มี ในการปรับขนาดตาราง คุณสามารถเรียกว่า [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) วิธี วิธีการนี้ยอมรับ [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) การเพิ่มข้อมูล ระบุชนิดของออโตไฟท์ ที่นําไปใช้กับตาราง

มันสําคัญที่ต้องรู้ว่าวิธีการออโตไฟต์ จริงๆ แล้วเป็นทางลัดที่ใช้คุณสมบัติที่แตกต่างกัน ไปที่โต๊ะในเวลาเดียวกัน นี่คือคุณสมบัติที่ให้ตาราง พฤติกรรมที่สังเกตได้ เราจะหารือเกี่ยวกับคุณสมบัติเหล่านี้ สําหรับแต่ละตัวเลือกอัตโนมัติ

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ตั้ง ตาราง ที่ จะ หด ตัว หรือ ขยาย เซลล์ แต่ ละ เซลล์ ตาม เนื้อหา:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

เราจะใช้ตารางต่อไปนี้ในการใช้การตั้งค่าต่าง ๆ ที่พอดีอัตโนมัติเป็นการสาธิต

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### ปรับหน้าต่างอัตโนมัติ

เมื่อมีการปรับใช้อัตโนมัติกับหน้าต่างกับตาราง การปฏิบัติการต่อไปนี้จะถูกดําเนินการอยู่เบื้องหลังภาพ:

1 เดอะ **Table.AllowAutoFit** มีการปรับปรุงให้ปรับขนาดคอลัมน์โดยอัตโนมัติ เพื่อให้พอดีกับเนื้อหาที่มีอยู่ โดยใช้ **Table.PreferredWidth** ค่าของ 100%
2 **CellFormat.PreferredWidth** จะถูกลบออกจากเซลล์ตารางทั้งหมด
      {{% alert color="primary" %}}
   สังเกตว่านี่ต่างจาก Microsoft Word พฤติกรรม เมื่อแต่ละเซลล์ตั้งค่าความกว้างที่ต้องการ ให้เหมาะสมตามขนาดและเนื้อหาในปัจจุบัน Aspose.Words ไม่ได้ปรับความกว้างที่โปรดเพื่อให้มันได้รับการล้าง
      {{% /alert %}}
3 ความกว้างคอลัมน์จะถูกคํานวณสําหรับเนื้อหาของตารางปัจจุบัน - ผลที่ได้คือตารางที่ครอบคลุมความกว้างทั้งหมดที่มีอยู่
4 ความกว้างของคอลัมน์ในตารางจะถูกเปลี่ยนแปลงโดยอัตโนมัติ เมื่อผู้ใช้ทําการแก้ไขข้อความ

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีปรับตารางไปยังความกว้างหน้า:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

ตัว อย่าง ของ วิธี ใช้ ทาง เลือก เหล่า นี้ กับ ตาราง ข้าง บน จะ เห็น ได้ ใน ภาพ ข้าง ล่าง.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### ตารางการพิมพ์อัตโนมัติไปยังเนื้อหา

เมื่อ ตาราง ถูก ปรับ ให้ เข้า กับ เนื้อหา โดย ตรง จริง ๆ แล้ว ขั้น ตอน ต่อ ไป นี้ จะ ทํา หลัง ฉาก

1 เดอะ **Table.AllowAutoFit** เปิดให้ปรับขนาดเซลล์แต่ละตัวโดยอัตโนมัติ

2 ลบความกว้างของตารางที่ควรใช้ออกจาก **Table.PreferredWidth**, **CellFormat.PreferredWidth** ลบสําหรับแต่ละเซลล์ของตาราง
      {{% alert color="primary" %}}

   หมายเหตุว่า ตัวเลือกอัตโนมัตินี้ จะทําการลบความกว้างที่ควรใช้จากเซลล์ เช่นเดียวกับใน Microsoft Word. หากคุณต้องการคงขนาดคอลัมน์และเพิ่มหรือลดคอลัมน์ให้พอดีกับเนื้อหา คุณควรตั้งค่าขนาด **Table.AllowAutoFit** คุณสมบัติไปยัง **True** แทนที่จะใช้ปุ่มพิมพ์ลัดอัตโนมัติ{{% /alert %}}

3 ความกว้างคอลัมน์จะถูกคํานวณใหม่สําหรับเนื้อหาของตารางปัจจุบัน - ผลที่ออกมาคือตารางที่ความกว้างคอลัมน์ และความกว้างของตารางทั้งหมด ถูกปรับขนาดให้พอดีกับเนื้อหาที่ผู้ใช้ทําการแก้ไขข้อความโดยอัตโนมัติ

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีปรับโต๊ะให้เข้ากับเนื้อหาของตาราง:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

ตัว อย่าง ของ วิธี ใช้ ทาง เลือก เหล่า นี้ กับ ตาราง ข้าง บน จะ เห็น ได้ ใน ภาพ ข้าง ล่าง.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### ปิดการใช้แฟลชอัตโนมัติในตาราง และใช้ความกว้างของคอลัมน์ความกว้างคงที่

หากโต๊ะไม่มีความกว้างอัตโนมัติ และใช้ความกว้างของคอลัมน์คงที่แทน จะมีการดําเนินการตามขั้นตอนต่อไปนี้:

1 **Table.AllowAutoFit** คุณสมบัติถูกปิดการใช้งาน ดังนั้น คอลัมน์จะไม่ขยายหรือหดเก็บเข้ากับเนื้อหา
2 ความกว้างของทั้งตารางจะถูกลบออกจาก **Table.PreferredWidth**, **CellFormat.PreferredWidth** จะถูกลบออกจากเซลล์ตารางทั้งหมด
3 ผลสุดท้ายคือตารางที่ความกว้างคอลัมน์กําหนดโดย [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) คุณสมบัติ และไม่มีการปรับขนาดคอลัมน์โดยอัตโนมัติเมื่อ ผู้ใช้ป้อนข้อความ หรือเมื่อมีการปรับขนาดหน้า

{{% alert color="primary" %}}

หมายเหตุว่า หากไม่มีการระบุความกว้างสําหรับ **CellFormat.Width**, ใช้ค่าปริยายของหนึ่งนิ้ว (72 จุด)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีปิดการใช้งานอัตโนมัติ และเปิดใช้ความกว้างคงที่สําหรับตารางที่ระบุ:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

ตัว อย่าง ของ วิธี ใช้ ทาง เลือก เหล่า นี้ กับ ตาราง ข้าง บน จะ เห็น ได้ ใน ภาพ ข้าง ล่าง.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### ลําดับของการประมวลผลก่อน

Aspose.Words อนุญาตให้ผู้ใช้กําหนดความกว้างของตารางหรือเซลล์ผ่านวัตถุหลาย ๆ อัน รวมถึง [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) - มัน [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) อย่าง ไร ก็ ตาม ทรัพย์ สิน ส่วน ใหญ่ ยัง คง ถูก ทิ้ง ไว้ จาก รุ่น ก่อน ๆ แต่ ก็ ยัง เป็น ประโยชน์ สําหรับ การ กําหนด ความ กว้าง ของ เซลล์.

มันสําคัญที่ต้องรู้ว่า **CellFormat.Width** ทรัพย์สินทํางานแตกต่างกัน ขึ้นอยู่กับคุณสมบัติความกว้างอื่น ๆ ที่มีอยู่แล้วในตาราง

Aspose.Words ใช้ลําดับการคํานวณความกว้างเซลล์ต่อไปนี้:

|  ลําดับ |  คุณสมบัติ |  คําอธิบาย |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) กําหนดไว้แล้ว |  ถ้า **AutoFit** เปิดใช้:<br/>- ตารางอาจจะเติบโตผ่านความกว้างที่ชื่นชอบเพื่อรองรับเนื้อหา - มักจะไม่หดภายใต้ความกว้างที่โปรด<br/>- การเปลี่ยนแปลงใด ๆ **CellFormat.Width** ค่าจะถูกละทิ้ง และเซลล์จะเข้ากับเนื้อหาของมันแทน |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) ด้วยคุณค่าของ **Points** หรือ **Percent** |  **CellFormat.Width** ถูกละทิ้ง |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) ด้วยคุณค่าของ **Auto** |  ค่าจาก **CellFormat.Width** จะคัดลอกและกลายเป็นความกว้างที่ชอบของเซลล์ (ในจุด) |

{{% alert color="primary" %}}

การเปลี่ยนแปลงใด ๆ ในคุณสมบัติความกว้าง ไม่ได้ปรับปรุงในความกว้างที่ควรใช้ และต้องปรับใช้กับความกว้างที่ควรใช้แทน

{{% /alert %}}

{{% alert color="primary" %}}

ขณะที่กําลังสร้างการจัดวางตารางคงที่ ให้ระบุความกว้างของเซลล์ ไม่สามารถบันทึกเซลล์แบบ DOC ได้ รูปแบบเอกสารอื่น ๆ นอกเหนือจาก DOC เช่น DOCX อนุญาตให้บันทึกเซลล์ได้โดยไม่ต้องปรับความกว้างในผังตารางคงที่

{{% /alert %}}

## อนุญาตให้เว้นช่องว่างระหว่างเซลล์

คุณสามารถหาหรือตั้งค่าช่องว่างเพิ่มเติมใด ๆ ระหว่างเซลล์ตารางที่คล้ายกับตัวเลือก "ช่องว่าง' ใน Microsoft Word. นี้สามารถทําโดยใช้ [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) ทรัพย์สิน

ตัว อย่าง ของ วิธี ใช้ ทาง เลือก เหล่า นี้ กับ ตาราง จริง ใน เอกสาร สามารถ เห็น ได้ ใน ภาพ ข้าง ล่าง.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ตั้ง ช่องว่าง ระหว่าง เซลล์:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## ปรับใช้กรอบและสี

กรอบและเงาสามารถใช้กับทั้งตารางโดยใช้ [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) ถึง [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), หรือเฉพาะเซลล์เฉพาะที่ใช้ [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) ถึง [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading). นอกจากนี้ ชายแดนแถวยังสามารถตั้งได้โดยใช้ [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), ไม่ อาจ นํา มา ใช้ ได้ ใน วิธี นี้.

ภาพด้านล่างนี้แสดงกรอบและเงาใน Microsoft Word และคุณสมบัติที่ตรงกันใน Aspose.Words.

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


ตัวอย่างรหัสต่อไปนี้แสดงวิธีการฟอร์แมตตารางและเซลล์ที่มีกรอบที่แตกต่างกันและเงา

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}
