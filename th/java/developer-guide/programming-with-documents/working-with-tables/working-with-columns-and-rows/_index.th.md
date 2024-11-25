---
title: ทำงานกับคอลัมน์และแถวในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: ทำงานกับคอลัมน์และแถว
linktitle: ทำงานกับคอลัมน์และแถว
description: "การทำงานกับส่วนของตาราง-แถวคอลัมน์และเซลล์โดยใช้Java ระบุแถวส่วนหัวJava."
type: docs
weight: 30
url: /th/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

สำหรับการควบคุมการทำงานของตารางให้เรียนรู้วิธีจัดการคอลัมน์และแถว.

## ค้นหาดัชนีองค์ประกอบของตาราง

คอลัมน์แถวและเซลล์จะถูกจัดการโดยการเข้าถึงโหนดเอกสารที่เลือกโดยดัชนี จากโหนดพาเรนต์แล้วใช้เมธอด[IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node)เพื่อค้นหาดัชนีของโหนดที่ต้องการในคอลเล็กชัน.

### ค้นหาดัชนีของตารางในเอกสาร

บางครั้งคุณอาจจำเป็นต้องทำการเปลี่ยนแปลงตารางเฉพาะในเอกสาร มารถดูตารางโดยดัชนีของตน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดึงดัชนีของตารางในเอกสาร:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### การค้นหาดัชนีของแถวในตาราง

ในทำนองเดียวกันคุณอาจต้องทำการเปลี่ยนแปลงในแถวที่เฉพาะเจาะจงในตารางที่เลือ รทำเช่นนี้คุณยังสามารถอ้างถึงแถวโดยดัชนีของมัน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดึงดัชนีของแถวในตาราง:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### การค้นหาดัชนีของเซลล์ในแถว

ในที่สุดคุณอาจจำเป็นต้องทำการเปลี่ยนแปลงไปยังเซลล์ที่เฉพาะเจาะจงและคุณสามารถทำเช่นนี้โดยดัชนีเซลล์เช่นกัน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดึงดัชนีของเซลล์ในแถว:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## ทำงานกับคอลัมน์

ในAspose.Wordsรูปแบบวัตถุเอกสาร(DOM)โหนด[Table](https://reference.aspose.com/words/java/com.aspose.words/table/)ประกอบด้วยโหนด[Row](https://reference.aspose.com/words/java/com.aspose.words/row/)และจากนั้น[Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)โหนด ดังนั้นใน`Document`รูปแบบวัตถุของAspose.Wordsเช่นเดียวกับในเอกสารคำมีแนวคิดของคอลัมน์ไม่มี.

โดยการออกแบบแถวตารางในMicrosoft WordและAspose.Wordsเป็นอิสระอย่างสมบูรณ์และคุณสมบัติพื้นฐานและการดำ นี้จะช่วยให้ตารางความสามารถในการมีคุณลักษณะที่น่าสนใจบางอย่าง:

- แต่ละแถวของตารางสามารถมีจำนวนที่แตกต่างกันอย่างสิ้นเชิงของเซลล์
- ในแนวตั้งเซลล์ของแต่ละแถวสามารถมีความกว้างที่แตกต่างกัน
- มันเป็นไปได้ที่จะเข้าร่วมตารางที่มีรูปแบบแถวที่แตกต่างกันและจำนวนของเซลล์

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

การดำเนินการใดๆที่ดำเนินการบนคอลัมน์เป็นจริง"ทางลัด"ที่ดำเนินการโดยรวมเปลี่ยนเซลล์แถวในลักษณะที่ดูเหมือนว่าพวกเขาจะถูกนำไปใช้กับคอลัมน์ นั่นคือคุณสามารถดำเนินการบนคอลัมน์โดยเพียงแค่ซ้ำกว่าดัชนีเซลล์แถวตารางเดียวกัน.

ตัวอย่างรหัสต่อไปนี้ช่วยลดความยุ่งยากในการดำเนินงานดังกล่าวโดยการพิสูจน์ชั้นอาคารที่รวบรวมเซลล์ที่สร้างขึ้น"คอลัมน์"ของตาราง:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกคอลัมน์ว่างลงในตาราง:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเอาคอลัมน์ออกจากตารางในเอกสาร:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## ระบุแถวเป็นแถวส่วนหัว

คุณสามารถเลือกที่จะทำซ้ำแถวแรกในตารางเป็นแถวส่วนหัวเฉพาะในหน้าแรกหรือในแต่ ในAspose.Wordsคุณสามารถทำซ้ำแถวส่วนหัวในทุกหน้าโดยใช้คุณสมบัติ[HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat).

นอกจากนี้คุณยังสามารถทำเครื่องหมายแถวส่วนหัวหลายแถวหากแถวดังกล่าวอยู่หนึ่งหลัง เมื่อต้องการทำเช่นนี้คุณต้องใช้คุณสมบัติ**HeadingFormat**กับแถวเหล่านี้.

{{% alert color="primary" %}}

โปรดทราบว่าแถวส่วนหัวไม่ทำงานในตารางที่ซ้อนกัน ณมีตารางภายในตารางอื่นการตั้งค่านี้จะไม่มีผล มันเป็นข้อจำกัดของMicrosoft Wordที่ไม่อนุญาตให้สิ่งนี้ไม่ใช่Aspose.Words.

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างตารางซึ่งรวมถึงแถวส่วนหัวที่ซ้ำในหน้าถัดไป:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## เก็บตารางและแถวไม่ให้แบ่งหน้า {#keep-tables-and-rows-from-breaking-across-pages}

มีบางครั้งที่ไม่ควรแบ่งเนื้อหาของตารางในหน้าเว็บ ชื่อเรื่องอยู่เหนือตารางชื่อเรื่องและตารางควรจะเก็บไว้ร่วมกันในหน้าเดียวกันเพื่อรักษา.

มีสองเทคนิคที่แยกต่างหากที่มีประโยชน์เพื่อให้บรรลุการทำงานนี้:

- `Allow row break across pages`ซึ่งถูกนำไปใช้กับแถวตาราง
- `Keep with next`ซึ่งถูกนำไปใช้กับย่อหน้าในเซลล์ตาราง

โดยค่าเริ่มต้นคุณสมบัติข้างต้นถูกปิดใช้งาน.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### เก็บแถวไม่ให้แบ่งหน้า {#keep-a-row-from-breaking-across-pages}

การจำกัดเนื้อหาภายในเซลล์ของแถวไม่ให้ถูกแยกข้ามหน้าเว็บ ในMicrosoft Wordนี้สามารถพบได้ภายใต้คุณสมบัติของตารางเป็นตัวเลือก"อนุญาตให้แถวแบ่งหน้า" ในAspose.Wordsนี้พบภายใต้วัตถุ[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/)ของ[Row](https://reference.aspose.com/words/java/com.aspose.words/row/)เป็นคุณสมบัติ[RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีปิดใช้งานการแบ่งแถวในหน้าสำหรับแต่ละแถวในตาราง:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### เก็บตารางจากการแบ่งหน้า {#keep-a-table-from-breaking-across-pages}

เมื่อต้องการหยุดตารางไม่ให้แยกหน้าเราจำเป็นต้องระบุว่าเราต้องการให้เนื้อหาที่อยู่.

เมื่อต้องการทำเช่นนี้Aspose.Wordsใช้วิธีการซึ่งอนุญาตให้ผู้ใช้เลือกตารางและเปิดใช้พารามิเตอร์[KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext)เป็นจริงสำหรับแต่ละย่อหน้าภายในเซลล์ของตาราง ข้อยกเว้นเป็นย่อหน้าสุดท้ายในตารางซึ่งควรจะตั้งเป็นเท็จ.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าตารางให้อยู่ร่วมกันในหน้าเดียวกัน:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
