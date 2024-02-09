---
title: ทำงานกับคอลัมน์และแถวใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: ทำงานกับคอลัมน์และแถว
linktitle: ทำงานกับคอลัมน์และแถว
description: "การทำงานกับส่วนต่างๆ ของตาราง เช่น แถว คอลัมน์ และเซลล์โดยใช้ C# ระบุแถวส่วนหัว C#"
type: docs
weight: 30
url: /th/net/working-with-columns-and-rows/
---

หากต้องการควบคุมวิธีการทำงานของตารางได้มากขึ้น โปรดเรียนรู้วิธีจัดการคอลัมน์และแถว

## ค้นหาดัชนีองค์ประกอบตาราง {#find-the-index-of-table-elements}

คอลัมน์ แถว และเซลล์ได้รับการจัดการโดยการเข้าถึงโหนดเอกสารที่เลือกตามดัชนี การค้นหาดัชนีของโหนดใดๆ เกี่ยวข้องกับการรวบรวมโหนดย่อยทั้งหมดของประเภทองค์ประกอบจากโหนดหลัก จากนั้นใช้วิธี [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) เพื่อค้นหาดัชนีของโหนดที่ต้องการในคอลเลกชัน

### ค้นหาดัชนีของตารางในเอกสาร {#find-the-index-of-table-in-a-document}

บางครั้งคุณอาจต้องทำการเปลี่ยนแปลงตารางใดตารางหนึ่งในเอกสาร เมื่อต้องการทำเช่นนี้ คุณสามารถอ้างอิงถึงตารางตามดัชนีได้

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดึงดัชนีของตารางในเอกสาร:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-table-index.cs" >}}

### ค้นหาดัชนีของแถวในตาราง {#find-the-index-of-a-row-in-a-table}

ในทำนองเดียวกัน คุณอาจต้องเปลี่ยนแปลงแถวใดแถวหนึ่งในตารางที่เลือก เมื่อต้องการทำเช่นนี้ คุณสามารถอ้างอิงถึงแถวตามดัชนีได้

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดึงดัชนีของแถวในตาราง:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-row-index.cs" >}}

### ค้นหาดัชนีของเซลล์ในแถว {#find-the-index-of-a-cell-in-a-row}

สุดท้ายนี้ คุณอาจต้องเปลี่ยนแปลงเซลล์ใดเซลล์หนึ่ง และคุณสามารถทำได้โดยใช้ดัชนีเซลล์เช่นกัน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการดึงดัชนีของเซลล์ในแถว:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-cell-index.cs" >}}

## ทำงานกับคอลัมน์ {#work-with-columns}

ใน Aspose.Words Document Object Model (DOM) โหนด [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) ประกอบด้วยโหนด [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) และโหนด [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) ดังนั้นใน `Document` Object Model ของ Aspose.Words เช่นเดียวกับในเอกสาร Word จึงไม่มีแนวคิดเกี่ยวกับคอลัมน์

ตามการออกแบบ แถวของตารางใน Microsoft Word และ Aspose.Words มีความเป็นอิสระอย่างสมบูรณ์ และคุณสมบัติพื้นฐานและการดำเนินการจะอยู่ในแถวและเซลล์ของตารางเท่านั้น สิ่งนี้ทำให้ตารางมีคุณลักษณะที่น่าสนใจบางอย่างได้:

- แต่ละแถวของตารางสามารถมีจำนวนเซลล์ที่แตกต่างกันโดยสิ้นเชิง
- ในแนวตั้ง เซลล์ของแต่ละแถวสามารถมีความกว้างต่างกันได้
- สามารถรวมตารางที่มีรูปแบบแถวและจำนวนเซลล์ต่างกันได้

การดำเนินการใดๆ ที่ทำกับคอลัมน์จริงๆ แล้วถือเป็น "ทางลัด" ที่ทำการดำเนินการโดยการเปลี่ยนเซลล์แถวร่วมกันในลักษณะที่ดูเหมือนว่ากำลังนำไปใช้กับคอลัมน์ นั่นคือ คุณสามารถดำเนินการกับคอลัมน์ได้โดยเพียงแค่วนซ้ำดัชนีเซลล์แถวตารางเดียวกัน

ตัวอย่างโค้ดต่อไปนี้ช่วยลดความยุ่งยากในการดำเนินการดังกล่าวโดยการพิสูจน์คลาสส่วนหน้าที่รวบรวมเซลล์ที่ประกอบเป็น "คอลัมน์" ของตาราง:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "column-class.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกคอลัมน์ว่างลงในตาราง:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "insert-blank-column.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบคอลัมน์ออกจากตารางในเอกสาร:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "remove-column.cs" >}}

## ระบุแถวเป็นแถวส่วนหัว

คุณสามารถเลือกที่จะทำซ้ำแถวแรกในตารางเป็นแถวส่วนหัวเฉพาะในหน้าแรกหรือในแต่ละหน้าได้หากตารางถูกแบ่งออกเป็นหลายรายการ ใน Aspose.Words คุณสามารถทำซ้ำแถวส่วนหัวในทุกหน้าโดยใช้คุณสมบัติ [HeadingFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/headingformat/)

คุณยังสามารถทำเครื่องหมายแถวส่วนหัวได้หลายแถวหากแถวดังกล่าวอยู่ติดกันที่จุดเริ่มต้นของตาราง ในการดำเนินการนี้ คุณจะต้องใช้คุณสมบัติ **HeadingFormat** กับแถวเหล่านี้

{{% alert color="primary" %}}

โปรดทราบว่าแถวส่วนหัวจะไม่ทำงานในตารางที่ซ้อนกัน นั่นคือ หากคุณมีตารางอยู่ในตารางอื่น การตั้งค่านี้จะไม่มีผลใดๆ เป็นข้อจำกัดของ Microsoft Word ที่ไม่อนุญาต ไม่ใช่ Aspose.Words

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างตารางซึ่งรวมถึงแถวส่วนหัวที่ทำซ้ำในหน้าถัดไป:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "repeat-rows-on-subsequent-pages.cs" >}}

## ป้องกันไม่ให้ตารางและแถวแตกข้ามหน้า {#keep-tables-and-rows-from-breaking-across-pages}

มีหลายครั้งที่เนื้อหาของตารางไม่ควรถูกแยกออกเป็นหน้าๆ ตัวอย่างเช่น หากชื่ออยู่เหนือตาราง ควรเก็บชื่อและตารางไว้ด้วยกันในหน้าเดียวกันเสมอเพื่อรักษารูปลักษณ์ที่เหมาะสม

มีสองเทคนิคที่แยกจากกันซึ่งมีประโยชน์ในการบรรลุฟังก์ชันการทำงานนี้:

- `Allow row break across pages` ซึ่งใช้กับแถวของตาราง
- `Keep with next` ซึ่งใช้กับย่อหน้าในเซลล์ตาราง

ตามค่าเริ่มต้น คุณสมบัติข้างต้นจะถูกปิดใช้งาน

### เก็บแถวไว้ไม่ให้แตกข้ามหน้า {#keep-a-row-from-breaking-across-pages}

สิ่งนี้เกี่ยวข้องกับการจำกัดเนื้อหาภายในเซลล์ของแถวไม่ให้ถูกแยกข้ามหน้า ใน Microsoft Word คุณจะพบสิ่งนี้ในส่วนคุณสมบัติตารางซึ่งเป็นตัวเลือก "อนุญาตให้แยกแถวข้ามหน้า" ใน Aspose.Words จะพบสิ่งนี้ภายใต้วัตถุ [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) ของ [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) เป็นคุณสมบัติ [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/net/aspose.words.tables/row/format/properties/allowbreakacrosspages)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการปิดการใช้งานการแบ่งแถวข้ามหน้าสำหรับแต่ละแถวในตาราง:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "row-format-disable-break-across-pages.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx)

{{% /alert %}}

### ป้องกันไม่ให้โต๊ะแตกข้ามหน้า {#keep-a-table-from-breaking-across-pages}

หากต้องการหยุดตารางไม่ให้แยกข้ามหน้า เราต้องระบุว่าเราต้องการให้เนื้อหาที่อยู่ในตารางอยู่ด้วยกัน

ในการดำเนินการนี้ Aspose.Words จะใช้วิธีการซึ่งอนุญาตให้ผู้ใช้เลือกตารางและเปิดใช้งานพารามิเตอร์ [KeepWithNext](https://reference.aspose.com/words/net/aspose.words/paragraphformat/keepwithnext/) เป็น true สำหรับแต่ละย่อหน้าภายในเซลล์ตาราง ข้อยกเว้นคือย่อหน้าสุดท้ายในตาราง ซึ่งควรตั้งค่าเป็น false

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าตารางให้อยู่ด้วยกันในหน้าเดียวกัน:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "keep-table-together.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx)

{{% /alert %}}