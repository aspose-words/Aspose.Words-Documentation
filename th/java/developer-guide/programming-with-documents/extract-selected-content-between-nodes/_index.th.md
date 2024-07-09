---
title: คลายเนื้อหาที่เลือกระหว่างโหนดใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: คลายเนื้อหาระหว่างโหนดในเอกสาร
linktitle: คลายเนื้อหาระหว่างโหนด
type: docs
description: "คลายเนื้อหาของเอกสารโดยใช้ต่างกัน Java."
weight: 140
url: /th/java/extract-selected-content-between-nodes/
---

เมื่อ ทํา งาน เกี่ยว กับ เอกสาร ต่าง ๆ นับ ว่า สําคัญ ที่ จะ สามารถ แยก เนื้อหา ออก มา ได้ อย่าง ง่าย ดาย จาก ขอบ เขต เฉพาะ ภาย ใน เอกสาร. อย่าง ไร ก็ ตาม เนื้อหา อาจ ประกอบ ด้วย ธาตุ ที่ ซับ ซ้อน เช่น วรรค, ตาราง, ภาพ, อื่น ๆ.

ไม่ ว่า จะ ต้อง สกัด เนื้อหา อะไร ก็ ตาม วิธี ที่ จะ ดึง เอา เนื้อหา นั้น ออก มา จะ ต้อง กําหนด อยู่ เสมอ ว่า จะ เลือก โหนด ชนิด ไหน เพื่อ สกัด เนื้อหา ที่ อยู่ ระหว่าง กัน. นี่เป็นทั้งตัวข้อความ หรือข้อความธรรมดา

มี สถานการณ์ หลาย อย่าง ที่ อาจ เป็น ไป ได้ และ ดัง นั้น จึง มี หลาย ชนิด ที่ จะ พิจารณา เมื่อ ค้น พบ ข้อมูล. ตัวอย่างเช่น คุณอาจต้องการที่จะแยกเนื้อหาระหว่าง

- สองย่อหน้าพิเศษ
- ข้อความที่เรียกใช้โดยเฉพาะ
- สาขาต่าง ๆ เช่น การรวมสนาม
- เริ่มและจบช่วงของคั่นหน้าหรือหมายเหตุ
- สําเนาหลายฉบับบรรจุอยู่ในส่วนต่าง ๆ

ใน บาง กรณี คุณ อาจ ถึง กับ ต้อง รวม โหนด ชนิด ต่าง ๆ เข้า ด้วย กัน เช่น การ สกัด เอา เนื้อ เรื่อง ระหว่าง วรรค หนึ่ง กับ สนาม หรือ ระหว่าง การ วิ่ง กับ การ ทํา ที่คั่นหน้า.

บทความ นี้ จัด ให้ มี การ ใช้ รหัส เพื่อ แยก ข้อ ความ ระหว่าง โหนด ต่าง ๆ และ เป็น ตัว อย่าง ของ สถานการณ์ ทั่ว ไป.

{{% alert color="primary" %}}

ตัวอย่างเหล่านี้เป็นเพียงการสาธิตไม่กี่ ของความเป็นไปได้มากมาย เราวางแผนการดึงข้อความออกมา เพื่อเป็นส่วนหนึ่งของสาธารณชน API ในอนาคต และไม่มีรหัสเพิ่มเติมที่ต้องการ ใน ระหว่าง นี้ ขอ ให้ เขียน คํา ขอ ของ คุณ เกี่ยว กับ การ ทํา งาน นี้ ด้วย ความ สมัคร ใจ [Aspose.Words Forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## เหตุ ใด จึง ช่วย คลาย เนื้อหา

บ่อย ครั้ง เป้า หมาย ใน การ คัด เอา เนื้อหา ออก มา คือ เพื่อ ลอก หรือ เก็บ ไว้ ต่าง หาก ใน เอกสาร ใหม่. ยกตัวอย่างเช่น คุณสามารถแยกเนื้อหาและ

- คัดลอกเป็นเอกสารแยก
- แปลงส่วนเฉพาะของเอกสารไปยัง PDF หรือภาพ
- ทําซ้ําเนื้อหาในเอกสารหลายครั้ง
- ทํางานโดยแยกเนื้อหาจากเอกสารที่เหลือ

สามารถทําได้อย่างง่ายดายโดยใช้ Aspose.Words และใช้รหัสข้างล่าง

## คลายเนื้อหา:

รหัสในส่วนนี้ จะบอกถึงสถานการณ์ทั้งหมดที่เป็นไปได้ ดังที่บรรยายไว้ ข้างต้น ด้วยวิธีการทั่วไป และสามารถแก้ไขได้ โครง สร้าง โดย ทั่ว ไป ของ เทคนิค นี้ เกี่ยว ข้อง กับ:

1 การรวบรวมโหนดซึ่งกําหนดพื้นที่ของเนื้อหาที่จะสกัดออกมาจากเอกสารของคุณ การรับโหนดเหล่านี้ จะควบคุมโดยผู้ใช้ในรหัสของพวกเขา ตามสิ่งที่พวกเขาต้องการ
1 ส่งโหนดเหล่านี้ไปที่ **ExtractContent** วิธี ที่ มี อยู่ ข้าง ล่าง นี้. คุณต้องผ่านพารามิเตอร์บูเลอันด้วย ซึ่งระบุว่าโหนดพวกนี้ ที่ทําหน้าที่เป็นเครื่องหมาย ควรถูกรวมอยู่ในการสกัดหรือไม่
1 กําลังรับรายการของเนื้อหาที่โคลนไว้ (โหนดที่คัดลอกอยู่) ที่ระบุไว้ให้ดึงออกมา คุณสามารถใช้รายการของโหนดนี้ ในวิธีใด ๆ ก็ได้ ตัวอย่างเช่น สร้างเอกสารใหม่ที่มีเฉพาะเนื้อหาที่เลือกไว้

## วิธี ขจัด เนื้อหา

เรา จะ ทํา งาน กับ เอกสาร ข้าง ล่าง นี้. อย่างที่คุณเห็น มันมีเนื้อหาหลากหลาย โปรด สังเกต ด้วย ว่า เอกสาร นี้ มี ส่วน ที่ สอง ซึ่ง เริ่ม ตั้ง แต่ กลาง หน้า แรก. คั่นหน้าและหมายเหตุมีอยู่ในเอกสารด้วย แต่ไม่สามารถมองเห็นได้ในภาพที่จับได้ด้านล่าง

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

เพื่อดึงเนื้อหาจากเอกสารของคุณ คุณต้องเรียก `ExtractContent` วิธีการด้านล่างและผ่านพารามิเตอร์ที่เหมาะสม

พื้น ฐาน พื้น ฐาน ของ วิธี นี้ เกี่ยว ข้อง กับ การ ค้น หา โหนด ระดับ บล็อก (หลัก เกณฑ์ และ ตาราง) และ ทํา สําเนา แบบ เดียว กัน. ถ้าโหนดเครื่องหมายผ่านเป็นบล็อกระดับ แล้ววิธีการสามารถเพียงแค่คัดลอกเนื้อหาในระดับที่ และเพิ่มเข้าไปในอาร์เรย์

อย่าง ไร ก็ ตาม หาก โหนด เครื่องหมาย อยู่ ใน บรรทัด (ลูก ของ วรรค หนึ่ง) สภาพ การณ์ ก็ จะ ยุ่ง ยาก ยิ่ง ขึ้น เนื่อง จาก จําเป็น ต้อง แยก วรรค ที่ โหนด ใน บรรทัด ก็ จะ เป็น แบบ วิ่ง และ ทํา งาน ใน ขอบ เขต ของ กรอบ และ อื่น ๆ. เนื้อหาในโหนดแม่แบบโคลน ไม่ปรากฏระหว่างตัวระบุจะถูกลบออกไป กระบวนการนี้จะใช้ในการตรวจสอบว่า โหนดในบรรทัดนี้ยังคงคงการฟอร์แมตของย่อหน้าแม่อยู่

วิธีการนี้จะเรียกใช้การตรวจสอบโหนด ที่ผ่านรูปแบบพารามิเตอร์และแสดงข้อยกเว้นหากโหนดใด ๆ ใช้งานไม่ได้ พารามิเตอร์ที่จะส่งต่อไปยังวิธีการนี้ คือ:

1 **StartNode** ถึง **EndNode**. สองตัวแปรแรกคือโหนด ซึ่งกําหนดที่ดึงเนื้อหาออกมา คือการเริ่มต้นและสิ้นสุดตามขั้นตอน โหนดเหล่านี้สามารถเป็นทั้งระดับบล็อก (ค.ศ.[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/). [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) หรือระดับในบรรทัด (E.g. [Run](https://reference.aspose.com/words/java/com.aspose.words/run/). [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/). [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) เป็นต้น
   1. เพื่อผ่านสนาม คุณควรจะผ่าน **FieldStart** วัตถุ
   1. เพื่อผ่านที่คั่นหน้า, **BookmarkStart** ถึง [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) โหนดควรจะผ่าน
   1. เพื่อส่งความคิดเห็น, [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) ถึง [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) ควรใช้โหนด
1 **IsInclusive**. กําหนดว่าเครื่องหมายจะรวมอยู่ในการสกัดหรือไม่ หากตั้งค่าตัวเลือกนี้เป็น false และโหนดหรือโหนดติดต่อกันจะผ่าน จากนั้นรายการว่างจะถูกคืน:

      1. ถ้า **FieldStart** ผ่านโหนดแล้วตัวเลือกนี้กําหนดว่าสนามทั้งหมดจะถูกรวมหรือตัดออก
      1. ถ้า **BookmarkStart** หรือ **BookmarkEnd** ผ่านโหนดแล้ว ตัวเลือกนี้จะกําหนดว่าคั่นหน้าถูกรวมไว้หรือไม่ หรือเป็นเพียงเนื้อหาระหว่างช่วงของคั่นหน้า
      1. ถ้า **CommentRangeStart** หรือ **CommentRangeEnd** ผ่านโหนดแล้ว ตัวเลือกนี้จะกําหนดว่าหมายเหตุนั้น จะรวมเข้าไปด้วยหรือไม่ หรือแค่เนื้อหาในส่วนหมายเหตุ

การปฏิบัติของ **ExtractContent** วิธีการต่าง ๆ ที่คุณสามารถหา [ที่นี่](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). จะ มี การ กล่าว ถึง วิธี การ นี้ ใน บทความ นี้.

เราจะนิยามวิธีการตั้งเอง เพื่อสร้างเอกสารได้อย่างง่ายดาย จากโหนดที่สกัดออกมา วิธี นี้ ใช้ ใน หลาย ฉาก เหตุ การณ์ ข้าง ล่าง นี้ และ เพียง แต่ สร้าง เอกสาร ใหม่ และ นํา ข้อ ความ ที่ สกัด ออก มา เข้า ไป.

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการนํารายการของโหนด และแทรกมันเข้าไปในเอกสารใหม่:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## คลายเนื้อหาระหว่างย่อหน้า

นี่ แสดง ให้ เห็น วิธี ใช้ วิธี การ ต่าง ๆ ที่ กล่าว ข้าง บน เพื่อ สกัด เอา เนื้อหา ระหว่าง วรรค เฉพาะ. ใน กรณี นี้ เรา ต้องการ ดึง เอา ตัว อักษร ที่ พบ ใน ครึ่ง แรก ของ เอกสาร นั้น ออก มา. เราบอกได้ว่ามันอยู่ระหว่าง 7 กับ 11 ข้อ.

รหัสข้างล่างทําให้งานนี้สําเร็จ มี การ สกัด วรรค ที่ เหมาะ สม โดย ใช้ [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) วิธีการบนเอกสารและผ่านการระบุ จากนั้นเราส่งโหนดเหล่านี้ไปยัง **ExtractContent** วิธีการและสถานะเหล่านี้ จะรวมอยู่ในการสกัด วิธีการนี้จะคืนค่าเนื้อหาที่คัดลอกมาระหว่างโหนดเหล่านี้ ซึ่งจะแทรกเข้าไปในเอกสารใหม่

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกเนื้อหาระหว่างย่อหน้าเฉพาะโดยใช้ `ExtractContent` วิธีการด้านบน:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

เอกสาร ที่ ส่ง ออก มี สอง วรรค ที่ สกัด ได้.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## คลายเนื้อหาระหว่างประเภทต่างๆ ของโหนด

เราสามารถแยกเนื้อหา ระหว่างการผสมใด ๆ ของระดับบล็อกหรือในบรรทัดโหนด ในสถานการณ์ด้านล่างนี้ เราจะแยกเนื้อหาระหว่างย่อหน้าแรกกับส่วนที่สองอย่างไม่รวม เราได้โหนดเครื่องหมายด้วยการโทร [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) ถึง [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) วิธีการในส่วนที่สองของเอกสารเพื่อเรียกค่าที่เหมาะสม **Paragraph** ถึง **Table** โหนด สําหรับ ความ แตก ต่าง เล็ก น้อย ให้ เรา เลียน แบบ เนื้อหา แล้ว สอด ไว้ ใต้ ต้น ฉบับ.

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกเนื้อหาระหว่างย่อหน้าและตารางโดยใช้ **ExtractContent** วิธีการ:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

ผล ก็ คือ เนื้อ ความ ระหว่าง วรรค และ ตาราง ได้ รับ การ เลียน แบบ.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## คลายเนื้อหาระหว่างย่อหน้า มาจากรูปแบบ

คุณ อาจ จําเป็น ต้อง ดึง เอา เนื้อ ความ ระหว่าง วรรค ต่าง ๆ ที่ มี ลักษณะ อย่าง เดียว กัน หรือ ต่าง ๆ กัน ออก มา เช่น ระหว่าง วรรค ที่ มี เครื่องหมาย หัว เรื่อง.

รหัสข้างล่างแสดงให้เห็นว่าจะทําสําเร็จได้อย่างไร เป็นตัวอย่างง่ายๆ ที่จะสกัดเอาเนื้อหาจากตัวอย่างแรกของ "Hading 1" และ "hader 3" แบบโดยไม่ต้องดึงหัวกระดาษออกมาเช่นกัน ในการทําอย่างนี้ เราตั้งพารามิเตอร์สุดท้าย false, ซึ่งกําหนดว่า ห้ามรวมโหนดที่ทําเครื่องหมายไว้

ในการจัดรูปแบบที่เหมาะสม ตัวเลือกนี้ควรจะทํางานเป็นวนรอบเพื่อแยกเนื้อหาระหว่างแต่ละย่อหน้าของรูปแบบเหล่านี้ออกจากเอกสาร เนื้อหาที่สกัดออกมาจะถูกคัดลอกเป็นเอกสารใหม่

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกเนื้อหาระหว่างย่อหน้าที่มีรูปแบบเฉพาะโดยใช้ **ExtractContent** วิธีการ:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

ข้าง ล่าง นี้ เป็น ผล จาก การ ผ่าตัด ครั้ง ก่อน.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## คลายเนื้อหาระหว่างการทํางานเฉพาะ

คุณสามารถแยกเนื้อหาระหว่างโหนดในบรรทัด เช่น **Run** เช่นกัน **Runs** จาก วรรค ต่าง ๆ สามารถ ผ่าน ออก มา เป็น เครื่องหมาย. รหัสด้านล่างนี้แสดงวิธีแยกข้อความเฉพาะระหว่างตัวเดียวกัน **Paragraph** โหนด

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกเนื้อหาระหว่างแต่ละการทํางานเฉพาะของย่อหน้าเดียวกันโดยใช้ **ExtractContent** วิธีการ:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

ข้อความที่ถูกสกัดออกมาจะถูกแสดงบนคอนโซล

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## คลายเนื้อหาโดยใช้ช่องข้อมูล

ใช้สนามเป็นเครื่องหมาย `FieldStart` โหนดควรจะผ่าน พารามิเตอร์สุดท้าย `ExtractContent` วิธีการจะกําหนดว่าสนามทั้งหมดจะรวมหรือไม่ ให้ เรา ดึง เอา เนื้อ ความ ระหว่าง "ชื่อ เสียง " มา รวม ทั้ง วรรค ใน เอกสาร. เราใช้ [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)วิธีของ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ชั้นเรียน. นี่จะคืน **FieldStart** โหนดจากชื่อของสนามรวมที่ส่งต่อไป

ในกรณีของเรา ให้ตั้งพารามิเตอร์สุดท้ายผ่าน **ExtractContent** วิธีการ false เพื่อป้องกันการสกัดกั้น เราจะส่งเนื้อหาที่สกัดมาจาก PDF

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกเนื้อหาระหว่างสนามและย่อหน้าเฉพาะในเอกสาร **ExtractContent** วิธีการ:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

เนื้อหาที่สกัดได้ระหว่างสนามและย่อหน้า โดยไม่ต้องมีโหนดของช่องและย่อหน้าที่ถูกแปลเป็น PDF

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## คลายเนื้อหาออกจากที่คั่นหน้า

ในเอกสาร เนื้อหาที่ถูกนิยามภายในที่คั่นหน้า ถูกบรรจุโดย `BookmarkStart` และโหนดของที่คั่นหน้า เนื้อหาที่พบระหว่างโหนดทั้งสองนี้ ประกอบกันเป็นที่คั่นหน้า คุณสามารถผ่านโหนดใด ๆ เหล่านี้เป็นเครื่องหมายใด ๆ แม้แต่จากที่คั่นหน้าที่แตกต่างกัน ตราบใดที่เครื่องหมายเริ่มต้นปรากฏก่อนที่เครื่องหมายสิ้นสุดในเอกสาร

ในเอกสารตัวอย่างของเรา เรามีที่คั่นหน้า 1 เล่ม ชื่อ "Bookmarks1". เนื้อหาของที่คั่นหน้านี้ ถูกเน้นเนื้อหาในเอกสารของเรา:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

เราจะแยกเนื้อหาออกเป็นเอกสารใหม่ โดยใช้รหัสด้านล่างนี้ เดอะ **IsInclusive** ตัวเลือกของพารามิเตอร์ จะแสดงวิธีการรักษาหรือละทิ้งคั่นหน้า

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการแยกเนื้อหาที่อ้างถึงที่คั่นหน้าโดยใช้ **ExtractContent** วิธีการ:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

การแสดงผลที่สกัดมาจาก `IsInclusive` พารามิเตอร์ต่าง ๆ ที่ตั้งไว้ true. สําเนานี้จะเก็บที่คั่นหน้าไว้ด้วย

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

การแสดงผลที่สกัดมาจาก **IsInclusive** พารามิเตอร์ต่าง ๆ ที่ตั้งไว้ false. สําเนานี้มีเนื้อหา แต่ไม่มีคั่นหน้า

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## คลายเนื้อหาออกจากหมายเหตุ

ความคิดเห็นประกอบด้วย หมายเหตุ Rangge Staret, หมายเหตุ Rangeend and complex โหนด. โหนดทั้งหมดอยู่ในสาย สอง โหนด แรก จะ รวม เนื้อหา ไว้ ใน เอกสาร ซึ่ง มี การ อ้าง ถึง โดย คํา อธิบาย ดัง ที่ เห็น ใน ภาพ ช็อต ภาพ ข้าง ล่าง.

เดอะ **Comment** โหนดเองก็คือ [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) ซึ่งสามารถบรรจุ paragraph และทํางาน คํา นี้ แสดง ถึง ข่าวสาร ของ ความ คิด เห็น ดัง ที่ เห็น เป็น ฟอง เสียง ที่ อยู่ ใน ช่อง ทบทวน. และลูกหลานของร่างกาย คุณสามารถดึงเนื้อหาจากภายในข้อความนี้ได้เช่นกัน

ในเอกสารของเราเรามีหนึ่งความคิดเห็น ให้ เรา แสดง ความ รัก โดย แสดง เครื่องหมาย ใน แท็บ ทบทวน:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

คํา อธิบาย นี้ รวม จุด หัว เรื่อง ข้อ แรก และ ตาราง ใน ตอน ที่ สอง. ให้ เรา ดึง ความ เห็น นี้ ออก มา เป็น เอกสาร ใหม่. เดอะ **IsInclusive** ตัวเลือกต่าง ๆ จะกําหนดว่า ส่วนหมายเหตุนั้นจะถูกคงไว้หรือไม่

ตัวอย่างรหัสต่อไปนี้ แสดงให้เห็นว่าจะทําอย่างไร

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

ผลที่สกัดมาจาก `IsInclusive` พารามิเตอร์ต่าง ๆ ที่ตั้งไว้ true. สําเนา นี้ จะ บรรจุ คํา อธิบาย ไว้ ด้วย.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

ผล งาน ที่ สกัด ออก มา เป็น ประการ ที่ สอง **ไม่รวม** ตั้งเป็น false. สําเนา นี้ บรรจุ เนื้อหา แต่ ไม่ มี คํา อธิบาย.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## คลายเนื้อหาโดยใช้ตัวจัดการเอกสาร

Aspose.Words ไม่เพียงสามารถใช้ในการสร้าง Microsoft Word เอกสาร โดย การ สร้าง สําเนา ต้น แบบ แบบ ที่ มี ความ สลับ ซับ ซ้อน หรือ รวม เข้า ด้วย กัน ด้วย ข้อมูล แต่ ก็ เป็น เอกสาร ต่าง ๆ เพื่อ แยก ชิ้น ส่วน ต่าง ๆ ของ เอกสาร เช่น headers, footers, para, ตาราง, ภาพ, และ อื่น ๆ. ภารกิจอื่นที่เป็นไปได้ คือค้นหาข้อความทั้งหมดของการฟอร์แมตหรือรูปแบบเฉพาะ

ใช้ [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) คลาสที่จะใช้สถานการณ์การใช้งานนี้ คลาสนี้ตรงกับรูปแบบการออกแบบผู้เข้าชมที่มีชื่อเสียง ด้วย [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)คุณสามารถกําหนดและดําเนินการดําเนินการตามธรรมเนียมได้ ซึ่งต้องการการเผาผลาญเหนือต้นไม้

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) ให้ชุดของ **VisitXXX** วิธีการที่จะเรียกดู เมื่อมีการพบธาตุของเอกสารเฉพาะ (node) ยกตัวอย่างเช่น [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) จะเรียกเมื่อเริ่มต้นของย่อหน้าข้อความและ [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) จะ เรียก ได้ เมื่อ พบ ตอน ท้าย ของ ข้อ ความ. แต่ละ **DocumentVisitor.VisitXXX** วิธีการยอมรับวัตถุที่ตรงกับความเป็นจริง ที่มันพบเพื่อให้คุณสามารถใช้มันได้ตามต้องการ (เช่น เรียกรูปแบบ), เช่น ทั้งคู่ [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) ถึง [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) ยอมรับ [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) วัตถุ

แต่ละ **DocumentVisitor.VisitXXX** วิธีการคืนค่ากลับมาเป็น a **VisitorAction** ค่าที่ควบคุมการเผาผลาญของโหนด คุณสามารถร้องขอต่อได้ทั้งการดูดซึม, ข้ามโหนดปัจจุบัน (แต่ยังคงเติมเชื้อเพลิงอยู่) หรือหยุดการเผาผลาญของโหนด

ขั้น ตอน เหล่า นี้ เป็น สิ่ง ที่ คุณ ควร ทํา เพื่อ ทํา การ ตัดสิน อย่าง เป็น ระบบ และ สกัด ส่วน ต่าง ๆ ของ เอกสาร:

- สร้างคลาสที่ได้มาจาก [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- โอเวอร์ไรด์และจัดหาอุปกรณ์สําหรับบางคนหรือทั้งหมด **DocumentVisitor.VisitXXX** วิธีการในการดําเนินการที่กําหนดเอง
- เรียก [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) บนโหนดจากที่ที่คุณต้องการ เริ่มการเผาผลาญ ตัวอย่างเช่น ถ้าคุณอยากนับเอกสารทั้งหมด ใช้ [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) แสดงผลปริยายสําหรับทั้งหมด **DocumentVisitor.VisitXXX** วิธี การ ทํา เช่น นี้ ทํา ให้ ง่าย ขึ้น ที่ จะ สร้าง เอกสาร ฉบับ ใหม่ ซึ่ง เป็น วิธี เฉพาะ สําหรับ ผู้ มา เยือน ที่ จําเป็น ต้อง ทํา มาก เกิน ไป. ไม่ จําเป็น ต้อง เปลี่ยน วิธี การ เข้า ชม ทุก อย่าง.

ตัวอย่างต่อไปนี้แสดงวิธีการใช้รูปแบบการเข้าชมเพื่อเพิ่มการดําเนินการใหม่ Aspose.Words โมเดลวัตถุ ในกรณีนี้ เราสร้างตัวแปลงเอกสารแบบง่ายๆ ให้เป็นรูปแบบข้อความ

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## คลายข้อความ เท่านั้น

วิธีการรับข้อความจากเอกสารคือ:

- ใช้ [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) ด้วย [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) เพื่อบันทึกข้อความธรรมดาลงในแฟ้มหรือสายข้อมูล
- ใช้ [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) และผ่าน `SaveFormat.Text` พารามิเตอร์ ภายในนั้น จะทําการเรียกข้อความให้บันทึกเป็นข้อความไปยังสายหน่วยความจํา และตอบกลับข้อความผลลัพธ์
- ใช้ [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) เพื่อรับข้อความที่มีทั้งหมด Microsoft Word อักขระควบคุม รวมถึงรหัสช่องข้อมูลด้วย
- ทําทานตามธรรมเนียม [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) เพื่อทําการคลายแฟ้มเอง

### ใช้ `Node.GetText` ถึง `Node.ToString`

A เอกสารคําสามารถบรรจุอักขระที่ใช้ระบุองค์ประกอบพิเศษ เช่น สนาม, ปลายเซลล์, ปลายส่วน เป็นต้น รายการอักขระที่จะใช้ควบคุมคําเต็ม **ControlChar** ชั้นเรียน. เดอะ [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) ฟังก์ชัน CHAR () จะคืนค่าเป็นอักขระที่มีรหัสตัวเลขตรงกับที่กําหนด

การเรียกกลับค่าข้อความธรรมดาของเอกสารโดยไม่มีการควบคุม สําหรับข้อมูลเพิ่มเติมเกี่ยวกับการส่งออกเป็นข้อความธรรมดา **Using SaveFormat.Text**.

ตัวอย่างรหัสต่อไปนี้แสดงความแตกต่างระหว่างการเรียก **GetText** ถึง [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) วิธีการบนโหนด:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### ใช้ `SaveFormat.Text`

ตัวอย่างนี้ จะบันทึกเอกสารดังต่อไปนี้:

- กรองอักขระและรหัสช่องข้อมูล, รูปแบบ, หมายเหตุ, จุดสิ้นสุดและหมายเหตุต่าง ๆ ที่อ้างถึง
- แทนที่ท้ายย่อหน้า [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) ตัวอักษรที่มี [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) รูปแบบ
- ใช้การเข้ารหัสแบบ UTF8

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีการบันทึกเอกสารในรูปแบบ TXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## คลายภาพจากรูปทรง

คุณอาจจะจําเป็นต้องแยกเอกสารภาพต่าง ๆ เพื่อใช้ในการทําบางงาน Aspose.Words ให้คุณได้ทํามันเช่นกัน

ตัวอย่างรหัสต่อไปนี้ แสดงวิธีดึงภาพออกมาจากเอกสาร:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}