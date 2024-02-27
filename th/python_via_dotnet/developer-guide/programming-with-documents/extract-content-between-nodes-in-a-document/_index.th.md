---
title: แยกเนื้อหาระหว่างโหนดเอกสาร
second_title: Aspose.Words สำหรับ Python
articleTitle: แยกเนื้อหาระหว่างโหนดในเอกสาร
linktitle: แยกเนื้อหาระหว่างโหนด
description: "วิธีแยกเนื้อหาเฉพาะจากช่วงภายในเอกสารอย่างง่ายดายโดยใช้ Python"
type: docs
weight: 140
url: /th/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
---

เมื่อทำงานกับเอกสาร สิ่งสำคัญคือต้องสามารถดึงเนื้อหาจากช่วงเฉพาะภายในเอกสารได้อย่างง่ายดาย อย่างไรก็ตาม เนื้อหาอาจประกอบด้วยองค์ประกอบที่ซับซ้อน เช่น ย่อหน้า ตาราง รูปภาพ ฯลฯ

ไม่ว่าเนื้อหาใดจะต้องถูกแยกออกมา วิธีการแยกเนื้อหานั้นจะถูกกำหนดโดยโหนดใดที่ถูกเลือกเพื่อแยกเนื้อหาระหว่างนั้นเสมอ สิ่งเหล่านี้อาจเป็นเนื้อหาข้อความทั้งหมดหรือการเรียกใช้ข้อความธรรมดา

มีสถานการณ์ที่เป็นไปได้มากมาย ดังนั้นโหนดประเภทต่างๆ มากมายที่ต้องพิจารณาเมื่อแยกเนื้อหา ตัวอย่างเช่น คุณอาจต้องการแยกเนื้อหาระหว่าง:

- สองย่อหน้าเฉพาะ
- การเรียกใช้ข้อความเฉพาะ
- ช่องประเภทต่างๆ เช่น ช่องรวม
- ช่วงเริ่มต้นและสิ้นสุดของบุ๊กมาร์กหรือความคิดเห็น
- เนื้อหาข้อความต่าง ๆ ที่อยู่ในส่วนแยกกัน

ในบางสถานการณ์ คุณอาจต้องรวมประเภทโหนดที่แตกต่างกัน เช่น แยกเนื้อหาระหว่างย่อหน้าและช่อง หรือระหว่างการเรียกใช้และบุ๊กมาร์ก

บทความนี้ให้ข้อมูลการใช้งานโค้ดสำหรับการแยกข้อความระหว่างโหนดต่างๆ รวมถึงตัวอย่างของสถานการณ์ทั่วไป

{{% alert color="primary" %}}

ตัวอย่างเหล่านี้เป็นเพียงตัวอย่างเล็กๆ น้อยๆ ของความเป็นไปได้ต่างๆ มากมาย เราวางแผนให้ฟังก์ชันการแยกข้อความเป็นส่วนหนึ่งของ API สาธารณะในอนาคต และไม่จำเป็นต้องใช้รหัสเพิ่มเติม ในระหว่างนี้ โปรดโพสต์คำขอของคุณเกี่ยวกับฟังก์ชันการทำงานนี้บน [ฟอรัม Aspose.Words](https://forum.aspose.com/c/words/8) ได้

{{% /alert %}}

## ทำไมต้องแยกเนื้อหา

บ่อยครั้งที่เป้าหมายในการแยกเนื้อหาคือการทำซ้ำหรือบันทึกแยกกันในเอกสารใหม่ ตัวอย่างเช่น คุณสามารถแยกเนื้อหาและ:

- คัดลอกลงในเอกสารแยกต่างหาก
- แปลงส่วนเฉพาะของเอกสารเป็น PDF หรือรูปภาพ
- ทำซ้ำเนื้อหาในเอกสารหลายครั้ง
- ทำงานกับเนื้อหาที่แยกออกจากส่วนที่เหลือของเอกสาร

ซึ่งสามารถทำได้ง่ายๆ โดยใช้ Aspose.Words และการติดตั้งโค้ดด้านล่าง

## การแยกอัลกอริทึมเนื้อหา

รหัสในส่วนนี้กล่าวถึงสถานการณ์ที่เป็นไปได้ทั้งหมดที่อธิบายไว้ข้างต้นด้วยวิธีทั่วไปและนำมาใช้ซ้ำได้วิธีเดียว โครงร่างทั่วไปของเทคนิคนี้เกี่ยวข้องกับ:

1. รวบรวมโหนดที่กำหนดพื้นที่ของเนื้อหาที่จะแยกออกจากเอกสารของคุณ ผู้ใช้จะจัดการการดึงโหนดเหล่านี้ในโค้ดของพวกเขา โดยขึ้นอยู่กับสิ่งที่พวกเขาต้องการแยกออก
1. การส่งโหนดเหล่านี้ไปยังวิธี **ExtractContent** ที่ระบุไว้ด้านล่าง คุณต้องส่งพารามิเตอร์บูลีนซึ่งระบุว่าโหนดเหล่านี้ซึ่งทำหน้าที่เป็นเครื่องหมาย ควรรวมอยู่ในการแยกข้อมูลหรือไม่
1. การดึงรายการเนื้อหาที่โคลน (โหนดที่คัดลอก) ที่ระบุให้แยกออก คุณสามารถใช้รายการโหนดนี้ในลักษณะที่เกี่ยวข้องได้ เช่น การสร้างเอกสารใหม่ที่มีเฉพาะเนื้อหาที่เลือก

## วิธีแยกเนื้อหา

หากต้องการแยกเนื้อหาออกจากเอกสารของคุณ คุณต้องเรียกใช้เมธอด **แยก_เนื้อหา** ด้านล่างและส่งพารามิเตอร์ที่เหมาะสม พื้นฐานพื้นฐานของวิธีนี้เกี่ยวข้องกับการค้นหาโหนดระดับบล็อก (ย่อหน้าและตาราง) และทำการโคลนเพื่อสร้างสำเนาที่เหมือนกัน หากโหนดเครื่องหมายที่ส่งผ่านเป็นระดับบล็อก วิธีการก็สามารถคัดลอกเนื้อหาในระดับนั้นและเพิ่มลงในอาร์เรย์ได้

อย่างไรก็ตาม หากโหนดมาร์กเกอร์เป็นแบบอินไลน์ (ลูกของย่อหน้า) สถานการณ์จะซับซ้อนมากขึ้น เนื่องจากจำเป็นต้องแยกย่อหน้าที่โหนดอินไลน์ ไม่ว่าจะเป็นการรัน ฟิลด์บุ๊กมาร์ก ฯลฯ เนื้อหาในโหนดพาเรนต์ที่ถูกโคลนไม่ ที่อยู่ระหว่างเครื่องหมายจะถูกลบออก กระบวนการนี้ใช้เพื่อให้แน่ใจว่าโหนดแบบอินไลน์จะยังคงรูปแบบของย่อหน้าหลักไว้ วิธีการนี้จะเรียกใช้การตรวจสอบโหนดที่ส่งผ่านเป็นพารามิเตอร์และส่งข้อยกเว้นหากโหนดใดโหนดหนึ่งไม่ถูกต้อง พารามิเตอร์ที่จะส่งไปยังวิธีนี้คือ:

1. **startNode** และ **endNode** พารามิเตอร์สองตัวแรกคือโหนดที่กำหนดว่าการแยกเนื้อหาจะเริ่มต้นและสิ้นสุดที่ใดตามลำดับ โหนดเหล่านี้สามารถเป็นได้ทั้งระดับบล็อก ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) หรือระดับอินไลน์ (เช่น [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) เป็นต้น):
   1. หากต้องการส่งผ่านฟิลด์ คุณควรส่งออบเจ็กต์ [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) ที่เกี่ยวข้อง
   1. หากต้องการส่งผ่านบุ๊กมาร์ก ควรส่งโหนด [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) และ [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/)
   1. ในการแสดงความคิดเห็น ควรใช้โหนด [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) และ [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)
1. **เป็นแบบรวม**. กำหนดว่าเครื่องหมายถูกรวมไว้ในการแตกข้อมูลหรือไม่ หากตัวเลือกนี้ถูกตั้งค่าเป็น false และส่งโหนดเดียวกันหรือโหนดต่อเนื่องกัน รายการว่างจะถูกส่งกลับ:
   1. หากโหนด [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) ถูกส่งผ่าน ตัวเลือกนี้จะกำหนดว่าจะต้องรวมหรือยกเว้นฟิลด์ทั้งหมดหรือไม่
   1. หากส่งผ่านโหนด [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) หรือ [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) ตัวเลือกนี้จะกำหนดว่ารวมบุ๊กมาร์กไว้หรือเพียงเนื้อหาระหว่างช่วงบุ๊กมาร์ก
   1. หากส่งโหนด [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) หรือ [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) ตัวเลือกนี้จะกำหนดว่าจะต้องรวมความคิดเห็นนั้นไว้หรือเพียงเนื้อหาในช่วงความคิดเห็น

การดำเนินการตามวิธี **แยก_เนื้อหา** คุณสามารถค้นหา [ที่นี่](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py) วิธีการนี้จะอ้างอิงถึงในสถานการณ์สมมติในบทความนี้

นอกจากนี้เรายังจะกำหนดวิธีการแบบกำหนดเองเพื่อสร้างเอกสารจากโหนดที่แยกออกมาได้อย่างง่ายดาย วิธีการนี้ใช้ในหลายสถานการณ์ด้านล่าง และเพียงสร้างเอกสารใหม่และนำเข้าเนื้อหาที่แยกออกมาลงไป

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีนำรายการโหนดและแทรกลงในเอกสารใหม่:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## แยกเนื้อหาระหว่างย่อหน้า

สิ่งนี้สาธิตวิธีการใช้วิธีการด้านบนเพื่อแยกเนื้อหาระหว่างย่อหน้าเฉพาะ ในกรณีนี้ เราต้องการแยกเนื้อหาของตัวอักษรที่พบในครึ่งแรกของเอกสาร เราบอกได้เลยว่าอยู่ระหว่างย่อหน้าที่ 7 ถึงย่อหน้าที่ 11

รหัสด้านล่างทำให้งานนี้สำเร็จ ย่อหน้าที่เหมาะสมจะถูกแยกออกมาโดยใช้วิธี [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) ในเอกสารและส่งผ่านดัชนีที่ระบุ จากนั้นเราจะส่งโหนดเหล่านี้ไปยังวิธี **แยก_เนื้อหา** และระบุว่าจะต้องรวมสิ่งเหล่านี้ไว้ในการแตกข้อมูล วิธีนี้จะส่งคืนเนื้อหาที่คัดลอกระหว่างโหนดเหล่านี้ซึ่งจะถูกแทรกลงในเอกสารใหม่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกเนื้อหาระหว่างย่อหน้าเฉพาะโดยใช้วิธี **แยก_เนื้อหา** ด้านบน:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)

{{% /alert %}}

## แยกเนื้อหาระหว่างโหนดประเภทต่างๆ

เราสามารถแยกเนื้อหาระหว่างการรวมกันของระดับบล็อกหรือโหนดแบบอินไลน์ ในสถานการณ์ด้านล่างนี้ เราจะแยกเนื้อหาระหว่างย่อหน้าแรกและตารางในส่วนที่สองให้ครบถ้วน เราได้รับโหนดเครื่องหมายโดยการเรียกวิธี [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) และ [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) ในส่วนที่สองของเอกสารเพื่อดึงข้อมูลโหนด [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) และ [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ที่เหมาะสม หากต้องการรูปแบบเล็กน้อย ให้ทำซ้ำเนื้อหาและแทรกไว้ด้านล่างของต้นฉบับแทน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกเนื้อหาระหว่างย่อหน้าและตารางโดยใช้วิธี **แยก_เนื้อหา**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)

{{% /alert %}}

## แยกเนื้อหาระหว่างย่อหน้าตามสไตล์

คุณอาจต้องแยกเนื้อหาระหว่างย่อหน้าที่มีสไตล์เดียวกันหรือต่างกัน เช่น ระหว่างย่อหน้าที่ทำเครื่องหมายด้วยสไตล์หัวเรื่อง

รหัสด้านล่างแสดงวิธีการบรรลุเป้าหมายนี้ เป็นตัวอย่างง่ายๆ ซึ่งจะแยกเนื้อหาระหว่างอินสแตนซ์แรกของสไตล์ "ส่วนหัว 1" และ "ส่วนหัว 3" โดยไม่ต้องแยกส่วนหัวด้วย ในการดำเนินการนี้ เราตั้งค่าพารามิเตอร์สุดท้ายเป็น false ซึ่งระบุว่าไม่ควรรวมโหนดเครื่องหมายไว้ด้วย

ในการใช้งานที่เหมาะสม ควรรันแบบวนซ้ำเพื่อแยกเนื้อหาระหว่างย่อหน้าทั้งหมดของสไตล์เหล่านี้ออกจากเอกสาร เนื้อหาที่แยกออกมาจะถูกคัดลอกไปยังเอกสารใหม่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกเนื้อหาระหว่างย่อหน้าด้วยสไตล์เฉพาะโดยใช้วิธี **แยก_เนื้อหา**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)

{{% /alert %}}

## แยกเนื้อหาระหว่างการรันเฉพาะ

คุณสามารถแยกเนื้อหาระหว่างโหนดอินไลน์ เช่น [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) ได้เช่นกัน การเรียกใช้จากย่อหน้าต่างๆ สามารถส่งผ่านเป็นเครื่องหมายได้ รหัสด้านล่างแสดงวิธีการแยกข้อความเฉพาะระหว่างโหนด [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) เดียวกัน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกเนื้อหาระหว่างการรันเฉพาะของย่อหน้าเดียวกันโดยใช้วิธี **แยก_เนื้อหา**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)

{{% /alert %}}

## แยกเนื้อหาโดยใช้ฟิลด์

หากต้องการใช้ช่องเป็นเครื่องหมาย ควรส่งโหนด [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) พารามิเตอร์สุดท้ายของเมธอด **แยก_เนื้อหา** จะกำหนดว่าจะรวมฟิลด์ทั้งหมดหรือไม่ มาแยกเนื้อหาระหว่างช่องผสาน "FullName" และย่อหน้าในเอกสารกัน เราใช้วิธี [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) ของคลาส [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) สิ่งนี้จะส่งคืนโหนด [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) จากชื่อของฟิลด์ผสานที่ส่งผ่านไป

ในกรณีของเรา ให้ตั้งค่าพารามิเตอร์สุดท้ายที่ส่งไปยังวิธี **แยก_เนื้อหา** เป็น `False` เพื่อแยกฟิลด์ออกจากการแยกข้อมูล เราจะแสดงเนื้อหาที่แยกออกมาเป็น PDF

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกเนื้อหาระหว่างเขตข้อมูลเฉพาะและย่อหน้าในเอกสารโดยใช้วิธี **แยก_เนื้อหา**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)

{{% /alert %}}

## แยกเนื้อหาออกจากบุ๊กมาร์ก

ในเอกสาร เนื้อหาที่กำหนดไว้ภายในบุ๊กมาร์กจะถูกห่อหุ้มด้วยโหนด [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) และ [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) เนื้อหาที่พบระหว่างสองโหนดนี้ประกอบขึ้นเป็นบุ๊กมาร์ก คุณสามารถส่งโหนดใดโหนดหนึ่งเหล่านี้เป็นเครื่องหมายใดก็ได้ แม้แต่โหนดจากบุ๊กมาร์กต่างๆ ก็ตาม ตราบใดที่เครื่องหมายเริ่มต้นปรากฏก่อนเครื่องหมายสิ้นสุดในเอกสาร เราจะแยกเนื้อหานี้ออกเป็นเอกสารใหม่โดยใช้โค้ดด้านล่าง ตัวเลือกพารามิเตอร์ **เป็นแบบรวม** แสดงวิธีเก็บหรือละทิ้งบุ๊กมาร์ก

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีแยกเนื้อหาที่อ้างอิงบุ๊กมาร์กโดยใช้วิธี **แยก_เนื้อหา**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)

{{% /alert %}}

## แยกเนื้อหาออกจากความคิดเห็น

ความคิดเห็นประกอบด้วยโหนด [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) และ [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) โหนดทั้งหมดเหล่านี้เป็นแบบอินไลน์ สองโหนดแรกสรุปเนื้อหาในเอกสารซึ่งมีการอ้างอิงโดยความคิดเห็น ดังที่เห็นในภาพหน้าจอด้านล่าง โหนด [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) นั้นเป็น [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) ที่สามารถประกอบด้วยย่อหน้าและเรียกใช้ได้ โดยจะแสดงข้อความของความคิดเห็นตามที่เห็นเป็นกรอบความคิดเห็นในบานหน้าต่างบทวิจารณ์ เนื่องจากโหนดนี้เป็นแบบอินไลน์และสืบทอดจากเนื้อหา คุณจึงสามารถแยกเนื้อหาจากภายในข้อความนี้ได้เช่นกัน

ความคิดเห็นจะสรุปส่วนหัว ย่อหน้าแรก และตารางในส่วนที่สอง มาแยกความคิดเห็นนี้ออกเป็นเอกสารใหม่ ตัวเลือก **เป็นแบบรวม** กำหนดว่าความคิดเห็นนั้นจะถูกเก็บไว้หรือละทิ้ง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำเช่นนี้:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)

{{% /alert %}}

## วิธีการแยกข้อความเท่านั้น

วิธีดึงข้อความจากเอกสารคือ:

- ใช้ [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) เพื่อบันทึกเป็นข้อความธรรมดาลงในไฟล์หรือสตรีม
- ใช้ [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) และส่งพารามิเตอร์ [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text) ภายใน สิ่งนี้จะเรียกใช้การบันทึกเป็นข้อความลงในสตรีมหน่วยความจำและส่งกลับสตริงผลลัพธ์
- ใช้ [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) เพื่อดึงข้อความที่มีอักขระควบคุม Microsoft Word ทั้งหมดรวมถึงโค้ดฟิลด์

### การใช้ Node.get_text และ Node.to_string

เอกสาร Word สามารถประกอบด้วยอักขระควบคุมที่กำหนดองค์ประกอบพิเศษ เช่น ฟิลด์ ส่วนท้ายของเซลล์ ส่วนท้ายของส่วน เป็นต้น รายการอักขระควบคุม Word ที่เป็นไปได้ทั้งหมดถูกกำหนดไว้ในคลาส [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) วิธีการ [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) ส่งคืนข้อความที่มีอักขระควบคุมทั้งหมดอยู่ในโหนด

การเรียก [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) จะส่งกลับการแสดงข้อความธรรมดาของเอกสารโดยไม่มีอักขระควบคุมเท่านั้น สำหรับข้อมูลเพิ่มเติมเกี่ยวกับการส่งออกเป็นข้อความธรรมดา โปรดดูการใช้ [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)

ตัวอย่างโค้ดต่อไปนี้แสดงความแตกต่างระหว่างการเรียกเมธอด [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) และ [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) บนโหนด:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### การใช้ `SaveFormat.Text`

ตัวอย่างนี้จะบันทึกเอกสารดังต่อไปนี้:

- กรองอักขระฟิลด์และรหัสฟิลด์ รูปร่าง เชิงอรรถ อ้างอิงท้ายเรื่อง และการอ้างอิงความคิดเห็น
- แทนที่อักขระ **ControlChar.Cr** ที่ส่วนท้ายของย่อหน้าด้วยชุดค่าผสม **ControlChar.CrLf**
- ใช้การเข้ารหัส UTF8

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการบันทึกเอกสารในรูปแบบ TXT:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## แยกรูปภาพออกจากรูปร่าง

คุณอาจต้องแยกรูปภาพเอกสารเพื่อทำงานบางอย่าง Aspose.Words ให้คุณทำเช่นนี้ได้เช่นกัน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกรูปภาพจากเอกสาร:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
