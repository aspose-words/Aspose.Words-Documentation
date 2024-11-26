---
title: แยกเนื้อหาที่เลือกระหว่างโหนดในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: แยกเนื้อหาระหว่างโหนดในเอกสาร
linktitle: แยกเนื้อหาระหว่างโหนด
type: docs
description: "การแยกเนื้อหาของเอกสารที่แตกต่างกันโดยใช้Java."
weight: 140
url: /th/java/extract-selected-content-between-nodes/
timestamp: 2024-01-27-14-07-04
---

เมื่อทำงานกับเอกสารมันเป็นสิ่งสำคัญที่จะสามารถแยกเนื้อหาจากช่วงเฉพาะภายในเอก อย่างไรก็ตามเนื้อหาอาจประกอบด้วยองค์ประกอบที่ซับซ้อนเช่นย่อหน้าตารางรูปภาพฯลฯ.

โดยไม่คำนึงถึงสิ่งที่เนื้อหาจะต้องถูกแยกเมธอดในการแยกเนื้อหานั้นจะถูกกำหนดโดยที่โห เหล่านี้สามารถเป็นเนื้อหาข้อความทั้งหมดหรือข้อความที่เรียบง่ายทำงาน.

มีหลายสถานการณ์ที่เป็นไปได้และดังนั้นจึงมีหลายชนิดโหนดที่แตกต่างกันที่จะต้องพิจารณา ตัวอย่างเช่นคุณอาจต้องการแยกเนื้อหาระหว่าง:

- สองย่อหน้าที่
- รันข้อความที่เฉพาะเจาะจง
- ฟิลด์ประเภทต่างๆเช่นฟิลด์ผสาน
- ช่วงเริ่มต้นและสิ้นสุดของบุ๊กมาร์กหรือแสดงความคิดเห็น
- เนื้อหาต่างๆของข้อความที่มีอยู่ในส่วนที่แยกต่างหาก

ในบางสถานการณ์คุณอาจจำเป็นต้องรวมชนิดโหนดต่างๆเช่นการแยกเนื้อหาระหว่างย่อหน้า.

บทความนี้จัดเตรียมการติดตั้งโค้ดสำหรับการแยกข้อความระหว่างโหนดต่างๆรวมทั้งตัวอย่.

{{% alert color="primary" %}}

ตัวอย่างเหล่านี้เป็นเพียงการสาธิตไม่กี่ของความเป็นไปได้มากมาย เราวางแผนสำหรับการทำงานการสกัดข้อความที่จะเป็นส่วนหนึ่งของประชาชนAPIในอนาค ในขณะเดียวกันอย่าลังเลที่จะโพสต์คำขอของคุณเกี่ยวกับฟังก์ชันการทำงานนี้ใน [Aspose.Wordsฟอรั่ม](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## ทำไมสารสกัดจากเนื้อหา

บ่อยครั้งที่เป้าหมายของการแยกเนื้อหาคือการทำซ้ำหรือบันทึกแยกต่างหากในเอกสารให ตัวอย่างเช่นคุณสามารถแยกเนื้อหาและ:

- คัดลอกลงในเอกสารแยกต่างหาก
- แปลงส่วนเฉพาะของเอกสารเป็นPDFหรือรูปภาพ
- ทำซ้ำเนื้อหาในเอกสารหลายครั้ง
- ทำงานกับเนื้อหาที่แยกออกจากส่วนที่เหลือของเอกสาร

นี้สามารถทำได้ง่ายโดยใช้Aspose.Wordsและการดำเนินการรหัสด้านล่าง.

## การแยกอัลกอริทึมเนื้อหา

รหัสในส่วนนี้อยู่ทั้งหมดของสถานการณ์ที่เป็นไปได้ที่อธิบายไว้ข้างต้นด้วยวิธีการทั่วไปและ โครงร่างทั่วไปของเทคนิคนี้เกี่ยวข้องกับ:

1. รวบรวมโหนดซึ่งกำหนดพื้นที่ของเนื้อหาที่จะสกัดจากเอกสารของคุณ การดึงโหนดเหล่านี้ถูกจัดการโดยผู้ใช้ในโค้ดตามสิ่งที่พวกเขาต้องการถูกดึงออก.
1. การส่งผ่านโหนดเหล่านี้ไปยังวิธีการ**ExtractContent**ที่ให้ไว้ด้านล่าง นอกจากนี้คุณยังต้องผ่านพารามิเตอร์บูลีนซึ่งระบุว่าโหนดเหล่านี้ทำหน้าที่เป็นเครื่องหมาย.
1. การเรียกดูรายการของเนื้อหาที่โคลน(โหนดที่คัดลอก)ที่ระบุให้แยก คุณสามารถใช้รายการโหนดนี้ในลักษณะใดๆที่เกี่ยวข้องตัวอย่างเช่นการสร้างเอกสารใหม่.

## วิธีการแยกเนื้อหา

เราจะทำงานกับเอกสารด้านล่างในบทความนี้ ที่คุณสามารถเห็นมันมีความหลากหลายของเนื้อหา นอกจากนี้หมายเหตุเอกสารประกอบด้วยส่วนที่สองเริ่มต้นตรงกลางของหน้าแรก บุ๊กมาร์กและข้อคิดเห็นมีอยู่ในเอกสารด้วยแต่ไม่สามารถมองเห็นได้ในภาพหน้าจอด้านล่าง.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

ในการดึงเนื้อหาจากเอกสารของคุณคุณต้องเรียกวิธีการ`ExtractContent`ด้านล่างและส่งผ่านพารามิเตอร์ที่เหมาะสม.

พื้นฐานพื้นฐานของวิธีนี้เกี่ยวข้องกับการค้นหาโหนดระดับบล็อก(ย่อหน้าและตาราง)และโคลน ถ้าโหนดเครื่องหมายผ่านเป็นระดับบล็อกแล้ววิธีการที่จะสามารถที่จะเพียงแค่คัดลอกเนื้อ.

แต่ถ้าโหนดเครื่องหมายเป็นแบบอินไลน์(ลูกของย่อหน้า)แล้วสถานการณ์จะซับซ้อนมากขึ้นเนื่ เนื้อหาในโหนดพาเรนต์ที่โคลนไม่อยู่ระหว่างเครื่องหมายจะถูกลบออก โพรเซสนี้ถูกใช้เพื่อให้แน่ใจว่าโหนดอินไลน์จะยังคงเก็บการจัดรูปแบบของย่อหน้าพาเรนต์.

เมธอดจะรันการตรวจสอบบนโหนดที่ผ่านเป็นพารามิเตอร์และโยนข้อยกเว้นถ้าโหนดใดไม่ พารามิเตอร์ที่จะส่งผ่านไปยังวิธีนี้คือ:

1. **StartNode**และ**EndNode** สองพารามิเตอร์แรกคือโหนดที่กำหนดที่การสกัดของเนื้อหาคือการเริ่มต้นและสิ้นสุดตามลำ โหนดเหล่านี้สามารถเป็นได้ทั้งระดับบล็อก([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/),[Table](https://reference.aspose.com/words/java/com.aspose.words/table/))หรือระดับอินไลน์(เช่น[Run](https://reference.aspose.com/words/java/com.aspose.words/run/), [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) ฯลฯ):
   1. ที่จะผ่านเขตข้อมูลที่คุณควรผ่านวัตถุ**FieldStart**ที่สอดคล้องกัน.
   1. เมื่อต้องการส่งบุ๊กมาร์กโหนด**BookmarkStart**และ[BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/)ควรส่งผ่าน.
   1. เมื่อต้องการส่งข้อคิดเห็นควรใช้โหนด[CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/)และ[CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/).
1. **IsInclusive**. กำหนดว่าเครื่องหมายจะรวมอยู่ในการสกัดหรือไม่ นูป๊อปอัปที่จะให้เลือกความช่วยเหลือหากต้องการทดสอบให้คลิกเมาส์ปุ่มขวาบนที่ใดๆของข้:

      1. ถ้าโหนด**FieldStart**ถูกส่งผ่านแล้วตัวเลือกนี้จะกำหนดว่าฟิลด์ทั้งหมดจะถูกรวมหรือยกเว้น.
      1. ถ้าโหนด**BookmarkStart**หรือ**BookmarkEnd**ถูกส่งผ่านตัวเลือกนี้จะกำหนดว่าบุ๊กมาร์กถูกรวมหรือเพียงเนื้อหาระหว่างช่.
      1. ถ้าโหนด**CommentRangeStart**หรือ**CommentRangeEnd**ถูกส่งผ่านอ็อพชันนี้จะกำหนดว่าต้องการรวมความคิดเห็นหรือเฉพาะเนื้อหาใ.

การดำเนินการของ**ExtractContent**วิธีที่คุณสามารถหา [ที่นี่](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). วิธีการนี้จะถูกอ้างถึงในสถานการณ์ในบทความนี้.

นอกจากนี้เรายังจะกำหนดวิธีการที่กำหนดเองเพื่อให้ง่ายต่อการสร้างเอกสารจากโหนด วิธีนี้ถูกใช้ในหลายสถานการณ์ด้านล่างและเพียงแค่สร้างเอกสารใหม่และนำเข้าเนื้อหาที่.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้รายการของโหนดและแทรกลงในเอกสารใหม่:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## แยกเนื้อหาระหว่างย่อหน้า

นี้แสดงให้เห็นถึงวิธีการใช้วิธีการข้างต้นเพื่อดึงเนื้อหาระหว่างย่อหน้าที่ ในกรณีนี้เราต้องการที่จะดึงร่างกายของตัวอักษรที่พบในช่วงครึ่งแรกของเอกสาร เราสามารถบอกได้ว่านี่คือระหว่าง 7 และ 11 ย่อหน้า.

รหัสด้านล่างทำงานนี้สำเร็จ ย่อหน้าที่เหมาะสมจะถูกแยกออกโดยใช้วิธีการ[getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean)บนเอกสารและส่งผ่านดัชนีที่ระบุ จากนั้นเราจะส่งผ่านโหนดเหล่านี้ไปยัง**ExtractContent**วิธีการและรัฐที่เหล่านี้จะรวมอยู่ในการสกัด. เมธอดนี้จะส่งคืนเนื้อหาที่คัดลอกระหว่างโหนดเหล่านี้ซึ่งถูกแทรกลงในเอกสารใหม่.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกเนื้อหาระหว่างย่อหน้าที่โดยใช้วิธีการ`ExtractContent`ด้านบน:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

เอกสารผลลัพธ์ประกอบด้วยสองย่อหน้าที่ถูกแยกออก.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## แยกเนื้อหาระหว่างโหนดประเภทต่างๆ

เราสามารถแยกเนื้อหาระหว่างชุดใดๆของโหนดระดับบล็อกหรือแบบอินไลน์ ในสถานการณ์สมมตินี้ด้านล่างเราจะแยกเนื้อหาระหว่างย่อหน้าแรกและตารางในส่วนที่ส เราได้รับโหนดเครื่องหมายโดยการเรียก[getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph)และ[getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean)วิธีการในส่วนที่สองของเอกสารที่จะดึงที่เหมาะสม**Paragraph**และ**Table**โหนด สำหรับรูปแบบเล็กน้อยให้แทนซ้ำเนื้อหาและแทรกไว้ด้านล่างเดิม.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกเนื้อหาระหว่างย่อหน้าและตารางโดยใช้วิธีการ**ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

เนื้อหาระหว่างย่อหน้าและตารางได้รับการทำซ้ำด้านล่างเป็นผล.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## สารสกัดจากเนื้อหาระหว่างย่อหน้าขึ้นอยู่กับรูปแบบ

คุณอาจต้องแยกเนื้อหาระหว่างย่อหน้าของสไตล์เดียวกันหรือแตกต่างกันเช่นระหว่างย่อห.

นล่างแสดงให้เห็นถึงวิธีการเพื่อให้บรรลุนี้. มันเป็นตัวอย่างง่ายๆที่จะดึงเนื้อหาระหว่างตัวอย่างแรกของ"Heading 1"และ"ส่วนหัว 3"รูปแบบโดยไม่ต้องแยกส่วนหัวเช่นกัน การทำเช่นนี้เราตั้งค่าพารามิเตอร์ที่ผ่านมาเป็นเท็จซึ่งระบุว่าโหนดเครื่องหมายไม่ควรรว.

ในการใช้งานที่เหมาะสมนี้ควรจะรันในวงเพื่อแยกเนื้อหาระหว่างย่อหน้าทั้งหมดของลักษณ เนื้อหาที่แยกจะถูกคัดลอกลงในเอกสารใหม่.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกเนื้อหาระหว่างย่อหน้าที่มีลักษณะเฉพาะโดยใช้วิธีการ**ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

ด้านล่างเป็นผลมาจากการดำเนินการก่อนหน้านี้.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## แยกเนื้อหาระหว่างการทำงานที่เฉพาะเจาะจง

คุณสามารถแยกเนื้อหาระหว่างโหนดอินไลน์เช่น**Run**ได้เป็นอย่างดี **Runs**จากย่อหน้าต่างๆสามารถส่งผ่านเป็นเครื่องหมาย รหัสด้านล่างแสดงวิธีการแยกข้อความเฉพาะในระหว่างโหนด**Paragraph**เดียวกัน.

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีแยกเนื้อหาระหว่างการทำงานเฉพาะของย่อหน้าเดียวกันโดยใช้เมธอด **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

ข้อความที่แยกจะแสดงบนคอนโซล

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## แยกเนื้อหาโดยใช้ฟิลด์

เมื่อต้องการใช้ฟิลด์เป็นเครื่องหมายโหนด`FieldStart`ควรส่งผ่าน พารามิเตอร์สุดท้ายของวิธีการ`ExtractContent`จะกำหนดว่าฟิลด์ทั้งหมดจะรวมหรือไม่ ลองดึงเนื้อหาระหว่างฟิลด์"FullName"ผสานและย่อหน้าในเอกสาร เราใช้วิธีการ[moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String))ของ[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)ชั้น นี้จะส่งคืนโหนด**FieldStart**จากชื่อของฟิลด์ผสานที่ส่งผ่านไปยังโหนดนั้น.

ในกรณีของเราให้ตั้งค่าพารามิเตอร์ที่ผ่านมาผ่านไป**ExtractContent**วิธีการที่จะเป็นเท็จที่จะไม่รวมสนาม เราจะแสดงเนื้อหาที่สกัดเป็นPDF.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกเนื้อหาระหว่างฟิลด์ที่เฉพาะเจาะจงและย่อหน้าในเอกสารโดยใช้วิธีการ**ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

เนื้อหาที่แยกระหว่างฟิลด์และย่อหน้าโดยไม่มีโหนดเครื่องหมายฟิลด์และย่อหน้าแสดงผลเป็นPDF.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## แยกเนื้อหาจากบุ๊กมาร์ก

ในเอกสารเนื้อหาที่กำหนดภายในบุ๊กมาร์กถูกห่อหุ้มโดยโหนด`BookmarkStart`และBookmarkEnd เนื้อหาที่พบระหว่างทั้งสองโหนดทำขึ้นที่คั่นหน้าเว็บ คุณสามารถส่งผ่านโหนดใดๆเหล่านี้เป็นเครื่องหมายใดๆแม้แต่คนจากบุ๊กมาร์กที่แตกต่างกันต.

ในเอกสารตัวอย่างของเราเรามีบุ๊คมาร์คหนึ่งชื่อ"บุ๊คมาร์ค 1" เนื้อหาของบุ๊กมาร์กนี้จะถูกเน้นเนื้อหาในเอกสารของเรา:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

เราจะดึงเนื้อหานี้ลงในเอกสารใหม่โดยใช้รหัสด้านล่าง ตัวเลือกพารามิเตอร์**IsInclusive**จะแสดงวิธีเก็บรักษาหรือยกเลิกบุ๊กมาร์ก.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกเนื้อหาที่อ้างอิงบุ๊กมาร์กโดยใช้วิธีการ**ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

เอาต์พุตที่แยกกับพารามิเตอร์`IsInclusive`ตั้งค่าเป็นจริง สำเนาจะเก็บบุ๊กมาร์กไว้เช่นกัน.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

เอาต์พุตที่แยกกับพารามิเตอร์**IsInclusive**ตั้งค่าเป็นเท็จ สำเนาประกอบด้วยเนื้อหาแต่ไม่มีบุ๊กมาร์ก.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## แยกเนื้อหาจากความคิดเห็น

ความคิดเห็นถูกสร้างขึ้นจากCommentRangeStart,CommentRangeEndและโหนดความคิดเห็น ทั้งหมดของโหนดเหล่านี้เป็นแบบอินไลน์ สองโหนดแรกแคปซูลเนื้อหาในเอกสารที่มีการอ้างอิงโดยความคิดเห็น,เท่าที่เห็นในภาพหน้าจอด้านล่าง.

โหนด**Comment**ตัวเองเป็น[InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/)ที่สามารถประกอบด้วยย่อหน้าและรัน มันหมายถึงข้อความของความคิดเห็นที่เห็นเป็นฟองความคิดเห็นในบานหน้าต่างการตรวจ เป็นโหนดนี้เป็นแบบอินไลน์และลูกหลานของร่างกายคุณยังสามารถดึงเนื้อหาจากภายในข้.

ในเอกสารของเราเรามีหนึ่งความคิดเห็น ลองแสดงโดยการแสดงมาร์กอัปในแท็บรีวิว:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

ความคิดเห็นที่ห่อหุ้มหัวข้อ,ย่อหน้าแรกและตารางในส่วนที่สอง. ลองดึงความคิดเห็นนี้ลงในเอกสารใหม่ อ็อพชัน**IsInclusive**จะบอกถ้าความคิดเห็นถูกเก็บไว้หรือถูกยกเลิก.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำเช่นนี้อยู่ด้านล่าง:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

ประการแรกผลลัพธ์ที่สกัดด้วยพารามิเตอร์`IsInclusive`ตั้งเป็นจริง สำเนาจะมีความคิดเห็นเช่นกัน.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

ประการที่สองเอาต์พุตสกัดด้วย**isInclusive**ตั้งเป็นเท็จ สำเนาประกอบด้วยเนื้อหาแต่ไม่มีความคิดเห็น.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## แยกเนื้อหาโดยใช้DocumentVisitor

Aspose.Wordsสามารถใช้ได้ไม่เพียงแต่สำหรับการสร้างเอกสารMicrosoft Wordโดยการสร้างเอกสารแบบไดนามิกหรื อีกงานที่เป็นไปได้คือการหาข้อความทั้งหมดของการจัดรูปแบบที่เฉพาะเจาะจงหรือรูปแบ.

ใช้คลาส[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)เพื่อใช้สถานการณ์การใช้งานนี้ ชั้นนี้สอดคล้องกับรูปแบบการออกแบบของผู้เข้าชมที่รู้จักกันดี ด้วย[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)คุณสามารถกำหนดและดำเนินการการดำเนินงานแบบกำหนดเองที่ต้องการการแจง.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)ให้ชุดของ**VisitXXX**เมธอดที่ถูกเรียกใช้เมื่อพบองค์ประกอบของเอกสาร(โหนด)โดยเฉพาะอย่างยิ่ง ตัวอย่างเช่น[VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph)ถูกเรียกเมื่อพบจุดเริ่มต้นของย่อหน้าข้อความและ[VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph)ถูกเรียกเมื่อพบจุดสิ้นสุดของย่อหน้าข้อความ แต่ละวิธี**DocumentVisitor.VisitXXX**จะยอมรับวัตถุที่สอดคล้องกันซึ่งพบเพื่อให้คุณสามารถใช้ได้ตามต้องการ(พูดเรียกการจัดรูปแบบ)เช่นทั้ง[VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph)และ[VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph)acceptวัตถุ[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/).

แต่ละเมธอด**DocumentVisitor.VisitXXX**จะส่งคืนค่า**VisitorAction**ที่ควบคุมการแจงนับของโหนด คุณสามารถร้องขออย่างใดอย่างหนึ่งเพื่อดำเนินการต่อการนับข้ามโหนดปัจจุบัน(แต่ยังคง.

เหล่านี้เป็นขั้นตอนที่คุณควรปฏิบัติตามเพื่อตรวจสอบและแยกส่วนต่างๆของเอกสาร:

- สร้างคลาสที่ได้มาจาก[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- แทนที่และจัดเตรียมการนำไปใช้สำหรับวิธีการ**DocumentVisitor.VisitXXX**บางอย่างหรือทั้งหมดเพื่อดำเนินการดำเนิ.
- โทร[Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor)บนโหนดจากตำแหน่งที่คุณต้องการเริ่มต้นการแจงนับ ตัวอย่างเช่นถ้าคุณต้องการระบุเอกสารทั้งหมดให้ใช้[accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)จัดเตรียมการติดตั้งดีฟอลต์สำหรับเมธอด**DocumentVisitor.VisitXXX**ทั้งหมด นี้ทำให้ง่ายต่อการสร้างผู้เข้าชมเอกสารใหม่เป็นเพียงวิธีการที่จำเป็นสำหรับผู้เข้าชมเฉ ไม่จำเป็นต้องแทนที่ทั้งหมดของวิธีการเข้าชม.

ตัวอย่างต่อไปนี้แสดงวิธีการใช้รูปแบบผู้เยี่ยมชมเพื่อเพิ่มการดำเนินงานใหม่กับรุ่นออบเจกต์Aspose.Words ในกรณีนี้เราสร้างแปลงเอกสารที่เรียบง่ายในรูปแบบข้อความ:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## แยกข้อความเท่านั้น

วิธีการดึงข้อความจากเอกสารมีดังนี้:

- ใช้[Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions)ด้วย[SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)เพื่อบันทึกเป็นข้อความธรรมดาลงในแฟ้มหรือสตรีม
- ใช้[Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions)และส่งพารามิเตอร์`SaveFormat.Text` ภายในนี้เรียกบันทึกเป็นข้อความลงในกระแสหน่วยความจำและส่งกลับสตริงผลลัพธ์
- ใช้[Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText)เพื่อดึงข้อความที่มีอักขระควบคุมทั้งหมดMicrosoft Wordรวมทั้งรหัสฟิลด์
- ใช้แบบกำหนดเอง[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)เพื่อทำการสกัดแบบกำหนดเอง

### ใช้`Node.GetText`และ`Node.ToString`

เอกสารคำสามารถประกอบด้วยอักขระควบคุมที่กำหนดองค์ประกอบพิเศษเช่นฟิลด์สิ้นสุดข รายการอักขระตัวควบคุมคำที่เป็นไปได้ทั้งหมดจะถูกกำหนดในคลาสของ**ControlChar** เมธอด[GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText)จะส่งคืนข้อความที่มีอักขระตัวควบคุมทั้งหมดที่อยู่ในโหนด.

การโทรToStringจะส่งคืนการแสดงข้อความธรรมดาของเอกสารโดยไม่มีอักขระควบคุมเท่านั้น สำหรับข้อมูลเพิ่มเติมเกี่ยวกับการส่งออกเป็นข้อความธรรมดาโปรดดูที่**Using SaveFormat.Text**.

ตัวอย่างรหัสต่อไปนี้แสดงความแตกต่างระหว่างการโทร**GetText**และ[ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString)เมธอดบนโหนด:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### ใช้`SaveFormat.Text`

ตัวอย่างนี้บันทึกเอกสารดังนี้:

- กรองอักขระฟิลด์และรหัสฟิลด์,รูปร่าง,เชิงอรรถ,จุดสิ้นสุดและการอ้างอิงแสดงความคิดเห็น
- แทนที่จุดสิ้นสุดของย่อหน้า[ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/)อักขระด้วยชุดค่าผสม[ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/)
- ใช้UTF8การเข้ารหัส

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการบันทึกเอกสารในรูปแบบTXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## แยกภาพจากรูปร่าง

คุณอาจต้องดึงรูปภาพเอกสารเพื่อดำเนินการบางอย่าง Aspose.Wordsช่วยให้คุณสามารถทำเช่นนี้ได้เช่นกัน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกภาพจากเอกสาร:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}
