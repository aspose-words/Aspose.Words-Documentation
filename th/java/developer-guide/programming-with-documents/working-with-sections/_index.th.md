---
title: ทํางานกับส่วนใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับส่วนต่าง ๆ
linktitle: ทํางานกับส่วนต่าง ๆ
description: "การ เข้าใจ แนว คิด ส่วน ต่าง ๆ ของ เอกสาร และ การ ปรับ เปลี่ยน วิธี การ ใช้ Java. แทรกส่วนลงในเอกสาร Java. ลบหัวข้อ Java. คัดลอกส่วนต่าง ๆ ระหว่างเอกสาร"
type: docs
weight: 120
url: /th/java/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

บางครั้งคุณต้องการเอกสาร ที่ไม่มีการตกแต่งเหมือนกันในทุกหน้า ตัว อย่าง เช่น คุณ อาจ จําเป็น ต้อง ปรับ รูป แบบ หมาย เลข หน้า, มี ขนาด หน้า ต่าง กัน และ มี การ นํา เสนอ, หรือ มี หน้า แรก ของ เอกสาร เป็น หน้า ปก โดย ไม่ มี ตัวเลข. คุณสามารถทํามันสําเร็จด้วยส่วนต่างๆ

มาตรา คือ โหนด ระดับ ที่ ควบคุม หัว และ ท้าย เรือ, การ จัด ระเบียบ, เสา, ขอบ, หมาย เลข หน้า, และ อื่น ๆ.

Aspose.Words ให้คุณได้จัดการส่วนต่าง ๆ, แบ่งเอกสารออกเป็นส่วน ๆ, และทําการเปลี่ยนแปลงการฟอร์แมตที่ใช้ได้เฉพาะในส่วนเฉพาะเท่านั้น Aspose.Words เก็บ ข้อมูล เกี่ยว กับ ส่วน ต่าง ๆ ของ การ แต่ง ตั้ง เช่น headers และ ท้าย เรือ, การ วาง หน้า, และ การ วาง คอลัมน์ ใน ช่วง พัก.

บทความ นี้ อธิบาย วิธี ทํา งาน กับ ส่วน ต่าง ๆ และ ส่วน ต่าง ๆ.

## ส่วนไหนและส่วนไหน

ส่วนของเอกสารแสดงโดย [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) ถึง [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) ชั้นเรียน ส่วนวัตถุคือเด็กๆ [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) โหนดและสามารถเข้าถึงผ่าน [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) ทรัพย์สิน คุณสามารถจัดการกับโหนดเหล่านั้นได้ โดยใช้วิธีการบางอย่าง เช่น [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), และคนอื่นๆ

การแบ่งส่วนเป็นตัวเลือก ที่แบ่งหน้าเอกสารเป็นส่วนที่มีผังแป้นพิมพ์ที่ปรับแต่งเอง

## ชนิดของการแบ่งส่วน

Aspose.Words ให้คุณได้แยกและฟอร์แมตเอกสารโดยใช้ส่วนต่าง ๆ ของ [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) การเผาผลาญ:

- การแบ่งส่วน
- เซ็กชั่นใหม่
- หน้าใหม่
- เฉพาะแผนกย่อย
- หน้าตัดส่วน

คุณสามารถใช้ [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) การ คิด ค้น เพื่อ จะ เลือก ประเภท เบรก ที่ ใช้ เฉพาะ ตอน แรก เท่า นั้น เช่น นิว โคลัมน์, หน้า ใหม่, กระทั่ง หน้า, และ หน้า แปลก ๆ.

## จัดการส่วน

เนื่องจากส่วนเป็นโหนดทั่วไป การจัดการโหนดทั้ง API สามารถนําไปใช้ในการจัดการส่วนต่าง ๆ: เพิ่ม, ลบ, และดําเนินการอื่น ๆ บนส่วนต่าง ๆ คุณ สามารถ อ่าน ได้ มาก ขึ้น เกี่ยว กับ โหนด ใน บทความ นี้ [Aspose.Words Document Object Model (DOM)](/words/th/java/aspose-words-document-object-model/).

ในทางกลับกัน คุณสามารถใช้ `DocumentBuilder` API ไปทํางานกับส่วนต่างๆ ใน บทความ นี้ เรา จะ พิจารณา วิธี ที่ เรา จะ ทํา งาน ส่วน ต่าง ๆ ได้ โดย เฉพาะ.

## แทรกหรือลบส่วน

Aspose.Words ให้คุณได้แทรกส่วนแตกเป็นข้อความโดยใช้ [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) วิธี

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีแทรกส่วนแตกเป็นเอกสาร:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

ใช้ [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) วิธีการลบส่วนพัก หากคุณไม่จําเป็นต้องลบส่วนเฉพาะออก และลบเนื้อหาในส่วนนั้นออก คุณสามารถใช้ [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) วิธี

ตัวอย่างรหัสต่อไปนี้แสดงวิธีเอาส่วนออก:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

สังเกต ว่า การ แบ่ง ส่วน มี ข้อมูล เกี่ยว กับ ส่วน ที่ ก่อน หน้า นั้น ไม่ ใช่ ส่วน ที่ ตาม มา. ดังนั้นถ้าคุณลบช่วงพักข้อความก่อนที่จะแตก จะได้รับคุณสมบัติของส่วนแบ่งต่อไปนี้ นี่ อาจ ทํา ให้ เอกสาร ทั้ง หมด กลาย เป็น ภูมิ ประเทศ, หรือ เป็น หัว บ้าน และ เป็น ที่ รอง เท้า ที่ เปลี่ยน แปลง หรือ สาบสูญ ไป อย่าง สิ้น เชิง.

{{% /alert %}}

## ย้ายหัวข้อ

หากคุณต้องการย้ายส่วนจากตําแหน่งหนึ่งไปยังอีกตําแหน่งหนึ่งในเอกสารของคุณ คุณจะต้องได้รับดัชนีของส่วนดังกล่าว Aspose.Words ให้คุณได้ตําแหน่งส่วนจาก [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). คุณสามารถใช้ [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) ทรัพย์สินที่ได้รับทุกส่วนในเอกสารของคุณ แต่ถ้าคุณอยากได้แค่ส่วนแรก, คุณสามารถใช้ [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) ทรัพย์สิน

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ เข้า ถึง ส่วน แรก และ ระบาย ผ่าน ทาง ลูก ๆ ของ โหนด ประกอบ ดัง ต่อ ไป นี้:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## ระบุการจัดวางส่วน

บางครั้งคุณอยากให้เอกสารของคุณ ดูดีกว่า โดยทําแผนผังสร้างสรรค์ สําหรับเอกสารที่แตกต่างกัน หากคุณต้องการกําหนดประเภทของเส้นตารางส่วนปัจจุบัน คุณสามารถเลือกรูปแบบการจัดวางส่วนได้ โดยใช้ [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) การเผาผลาญ:

- ค่าปริยาย
-กริด
- ไลน์กริด
- ติดอ่าง

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ถึง วิธี จํากัด จํานวน บรรทัด ที่ แต่ ละ หน้า อาจ มี:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## แก้ไขหัวข้อ

เมื่อคุณเพิ่มส่วนใหม่ไปยังเอกสารของคุณ จะไม่มีตัวใดหรือย่อหน้าที่คุณสามารถแก้ไขได้ Aspose.Words ให้คุณได้รับประกันว่าในส่วนที่มีร่างกายอย่างน้อยหนึ่งย่อหน้าโดยใช้ [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) วิธีการต่าง ๆ - มันจะทําการเพิ่มข้อมูลตัว (หรือหัวกระดาษ) บนเอกสารโดยอัตโนมัติ แล้วเพิ่มย่อหน้าเข้าไป

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการเตรียมโหนดส่วนใหม่โดยใช้ **EnsureMinimum**

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### เพิ่มเนื้อหาใหม่

หากคุณต้องการวาดรูปร่างหรือเพิ่มข้อความหรือภาพในตอนต้น/ ปลายส่วน คุณสามารถใช้ [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) ถึง [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) วิธีการของ [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) ชั้นเรียน.

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีเพิ่มเนื้อหาในส่วนที่มี:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### แต่งส่วน

Aspose.Words ให้คุณได้คัดลอกส่วนโดยสร้างสําเนาเต็มของมันโดยใช้ [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) วิธี

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโคลนส่วนแรกในเอกสารของคุณ:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### คัดลอกส่วนต่าง ๆ ระหว่างเอกสาร

ใน บาง กรณี คุณ อาจ มี เอกสาร ขนาด ใหญ่ ที่ มี หลาย ตอน และ คุณ ต้องการ คัด ลอก เนื้อ ความ จาก เอกสาร หนึ่ง ไป อีก ส่วน หนึ่ง.

Aspose.Words ให้คุณได้คัดลอกส่วนต่าง ๆ ระหว่างเอกสารโดยใช้ [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) วิธี

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการคัดลอกส่วนต่าง ๆ ระหว่างเอกสาร:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### ทํางานกับส่วนส่วนหัวและท้ายกระดาษ

กฎ พื้น ฐาน สําหรับ การ แสดง หัว หรือ ท้าย เท้า สําหรับ แต่ ละ ส่วน ค่อน ข้าง ง่าย:

1 ถ้าส่วนดังกล่าวไม่มีหัวและท้ายของมันเอง โดยเอามาจากส่วนก่อนหน้า
2 ชนิดของหัวกระดาษ/ ฟุตเกอร์ที่แสดงบนหน้าเว็บ จะถูกควบคุมด้วย "หน้าแรกที่โดดเด่น" และ "หน้าต่างที่โดดเด่น & ไม่ตรงกับหน้าหนังสือ" หากปิดการใช้งาน จะมีการไม่สนใจชื่อส่วนต่าง ๆ ของส่วนด้วย

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีสร้าง 2 ส่วนด้วยส่วนหัวที่แตกต่างกัน:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

หากคุณต้องการลบข้อความของส่วนหัวและท้ายกระดาษ โดยไม่ลบ [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) วัตถุในเอกสารของคุณ คุณสามารถใช้ [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) วิธี นอกจากนี้ คุณยังสามารถใช้ [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) วิธีการในการลบรูปทรงทั้งหมดออกจากส่วนหัวและท้ายกระดาษ

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการล้างเนื้อหาของส่วนหัวและท้ายทั้งหมดในส่วน:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

ตัวอย่างรหัสต่อไปนี้วิธีการเอารูปทรงทั้งหมดออกจากท้ายกระดาษทั้งหมดในส่วน:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## ปรับแต่งคุณสมบัติของเพจในหัวข้อ

ก่อน จะ พิมพ์ หน้า หนึ่ง หรือ เอกสาร คุณ อาจ ต้องการ ปรับ และ ปรับ ขนาด และ ผัง ของ หน้า เดียว หรือ เอกสาร ทั้ง หมด. ด้วยการตั้งค่าหน้ากระดาษ คุณสามารถเปลี่ยนการตั้งค่าของหน้าเอกสารได้ เช่น ช่องขอบ, แนววางจอภาพ, และขนาดสําหรับการพิมพ์หน้าแรก หรือหน้าคี่

Aspose.Words ให้คุณได้ปรับแต่งคุณสมบัติของหน้ากระดาษและส่วนต่าง ๆ โดยใช้ [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) ชั้นเรียน.

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีตั้งค่าคุณสมบัติต่าง ๆ เช่น ขนาดหน้ากระดาษ และทิศทางของส่วนปัจจุบัน:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีแก้ไขคุณสมบัติของหน้าในทุกตอน:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## ดูด้วย

- [ระดับตรรกะของโหนดในเอกสาร](/words/th/java/logical-levels-of-nodes-in-a-document/)
- [แทรกและเพิ่มเอกสาร](/words/th/java/insert-and-append-documents/)
