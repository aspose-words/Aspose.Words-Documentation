---
title: ทํางานกับคอลัมน์และแถวใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํา งาน กับ คอลัมน์ และ แถว
linktitle: ทํา งาน กับ คอลัมน์ และ แถว
description: "การ ทํา งาน ร่วม กับ ส่วน ต่าง ๆ ของ ตาราง - แถว, คอลัมน์, และ เซลล์ ที่ ใช้ Java. ระบุแถวส่วนหัว Java."
type: docs
weight: 30
url: /th/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

เพื่อควบคุมวิธีการทํางานของตารางมากขึ้น จงเรียนรู้วิธีการจัดการคอลัมน์และแถว

## ค้นหาดัชนีของตาราง

คอลัมน์, แถว และ เซลล์ ต่าง ๆ ถูก จัด การ โดย การ เข้า หา โหนด เอกสาร ที่ เลือก ไว้ โดย ดัชนี ของ เอกสาร. การ หา ดัชนี ของ โหนด ใด ๆ เกี่ยว ข้อง กับ การ รวบ รวม โหนด ของ เด็ก ทั้ง หมด ของ ชนิด ธาตุ จาก โหนด ของ บิดา มารดา และ จาก นั้น ก็ ใช้ [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) วิธีการหาดัชนีของโหนดที่ต้องการในคลังสื่อ

### ค้นหาดัชนีของตารางในเอกสาร

บาง ครั้ง คุณ อาจ จําเป็น ต้อง เปลี่ยน ตาราง ใน เอกสาร. เพื่อ จะ ทํา เช่น นี้ คุณ อาจ อ้าง ถึง โต๊ะ โดย อาศัย ดัชนี.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดึงข้อมูลดัชนีของตารางในเอกสาร:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### พบ ดัชนี ของ แถว ใน ตาราง

ใน ทํานอง เดียว กัน คุณ อาจ จําเป็น ต้อง เปลี่ยน เป็น แถว เฉพาะ ใน โต๊ะ ที่ เลือก ไว้. ในการทําอย่างนี้, คุณสามารถอ้างถึงแถวโดยดัชนีของมัน

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการดึงดัชนีของแถวในตาราง:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### พบ ดัชนี ของ เซลล์ ใน แถว

ประการ สุด ท้าย คุณ อาจ จําเป็น ต้อง เปลี่ยน แปลง เป็น เซลล์ หนึ่ง โดย เฉพาะ และ คุณ สามารถ ทํา ได้ โดย อาศัย ดัชนี เซลล์ ด้วย.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดึงดัชนีของเซลล์ในแถว:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## ทํางานกับคอลัมน์

ใน Aspose.Words Document Object Model (DOM), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) โหนดประกอบด้วย [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) โหนดแล้ว [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) โหนด ดังนั้นใน `Document` โมเดลวัตถุ Aspose.Wordsเช่นในเอกสารคํา ไม่มีแนวคิดของคอลัมน์

โดยการออกแบบ, แถวตารางใน Microsoft Word ถึง Aspose.Words เป็นอิสระอย่างสมบูรณ์ และคุณสมบัติพื้นฐานและการดําเนินงาน มีอยู่ในแถวและเซลล์ของตารางเท่านั้น นี่ทําให้ตารางสามารถมีคุณสมบัติที่น่าสนใจได้:

- แต่ละแถวของตารางสามารถมีจํานวนเซลล์ที่แตกต่างกันอย่างสิ้นเชิง
- ในแนวตั้ง เซลล์แต่ละแถวมีความกว้างต่างกัน
- มันเป็นไปได้ที่จะจับคู่ตารางด้วยรูปแบบแถวที่แตกต่างกันและจํานวนของเซลล์

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

การดําเนินการใดๆ บนคอลัมน์ คือ "shortcuts" ที่ดําเนินการโดยการเปลี่ยนกลุ่มเซลล์แถว นั่นคือ, คุณสามารถดําเนินการกับคอลัมน์ได้โดย การเขียนดัชนีแถวเดียวกันในตาราง

ตัวอย่างรหัสต่อไปนี้จะลดรูปการดําเนินงานดังกล่าวได้ โดยการพิสูจน์การจัดชั้นแบบฉากหน้าที่รวบรวมเซลล์ที่ประกอบกันเป็นตาราง:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

ตัวอย่างรหัสต่อไปนี้ แสดงวิธีแทรกคอลัมน์ว่างเข้าไปในตาราง:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีเอาคอลัมน์ออกจากตารางในเอกสาร:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## ระบุแถวเป็นส่วนหัว

คุณสามารถเลือกการทําซ้ําของแถวแรกในตาราง ในฐานะส่วนหัวแถวเฉพาะในหน้าแรก หรือในแต่ละหน้าถ้าตารางแบ่งออกเป็นหลาย ๆ. ใน Aspose.Words, คุณสามารถทําซ้ําส่วนหัวแถวในทุกหน้าโดยใช้ [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) ทรัพย์สิน

คุณ อาจ ทํา เครื่องหมาย แถว หลาย แถว ได้ ด้วย ถ้า แถว ดัง กล่าว ตั้ง อยู่ ถัด จาก แถว ตอน ต้น ของ โต๊ะ. การจะทําสิ่งนี้ได้ คุณต้องนําไปใช้ **HeadingFormat** คุณสมบัติของแถวเหล่านี้

{{% alert color="primary" %}}

โปรด สังเกต ว่า ส่วนหัว แถว ไม่ ได้ ทํา งาน ใน โต๊ะ ทํา รัง. นั่นคือ ถ้าคุณมีโต๊ะภายในโต๊ะอื่น การตั้งค่านี้จะไม่มีผล มันเป็นข้อจํากัดของ Microsoft Word ไม่อนุญาตให้ทําแบบนี้ Aspose.Words.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างตาราง ซึ่งรวมถึงส่วนหัวแถวที่ซ้ําในหน้าหลัง:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## รักษา ตาราง และ แถว ไว้ จาก การ หัก หน้า ข้าม {#keep-tables-and-rows-from-breaking-across-pages}

มี บาง โอกาส ที่ ไม่ ควร แยก เนื้อหา ของ โต๊ะ. ตัว อย่าง เช่น ถ้า ชื่อ เรื่อง อยู่ เหนือ โต๊ะ ควร เก็บ ชื่อ และ ตาราง ไว้ ใน หน้า เดียว กัน เสมอ เพื่อ รักษา การ ปรากฏ ตัว ที่ เหมาะ สม.

มีเทคนิคที่แตกต่างกันสองวิธี ที่มีประโยชน์ในการบรรลุความสามารถนี้

- `Allow row break across pages`, ซึ่งนําไปใช้กับแถวตาราง
- `Keep with next`, ซึ่งนําไปใช้กับ paragraph ในตารางเซลล์

โดยปริยายแล้ว คุณสมบัติด้านบนจะถูกปิดการใช้งาน

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### รักษาแถวไม่ให้ข้ามหน้า {#keep-a-row-from-breaking-across-pages}

ทั้ง นี้ เกี่ยว ข้อง กับ การ จํากัด เนื้อหา ภาย ใน เซลล์ ของ แถว ไม่ ให้ แบ่ง หน้า หนึ่ง. ใน Microsoft Word, ตัวเลือกนี้สามารถพบภายใต้คุณสมบัติของตารางเป็นตัวเลือก "แถวที่จะแยกข้ามหน้า" ใน Aspose.Words มันถูกพบใต้ [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) วัตถุ [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) เป็นทรัพย์สิน [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีปิดการแบ่งแถวระหว่างหน้าแต่ละแถวในตาราง:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### เก็บตารางไว้ไม่ให้ข้ามหน้า {#keep-a-table-from-breaking-across-pages}

เพื่อหยุดตารางจากการแยกหน้าข้าม เราต้องระบุ ว่าเราต้องการเนื้อหาที่อยู่ภายในโต๊ะ

เพื่อทําสิ่งนี้ Aspose.Words ใช้วิธีการที่จะช่วยให้ผู้ใช้สามารถเลือกตารางและเปิดใช้งาน [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) พารามิเตอร์ของ true แต่ละย่อหน้าภายในเซลล์ตาราง ข้อยกเว้นคือย่อหน้าสุดท้ายในตาราง ซึ่งควรจะตั้งค่าให้ false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ตั้ง ตาราง ที่ จะ อยู่ ร่วม กัน ใน หน้า เดียว กัน:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
