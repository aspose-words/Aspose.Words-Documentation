---
title: แทรกและผนวกเอกสาร
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: แทรกและผนวกเอกสาร
linktitle: แทรกและผนวกเอกสาร
description: "รวมเอกสารเป็นหนึ่งเดียว: แทรกหรือต่อท้ายเอกสารในเอกสารใหม่หรือที่มีอยู่โดยใช้การค้นหาและแทนที่ ผสานฟิลด์ บุ๊กมาร์ก หรือเพียงแค่ที่ส่วนท้ายของเอกสารใน Python"
type: docs
weight: 80
url: /th/python-net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

บางครั้งจำเป็นต้องรวมเอกสารหลายฉบับเป็นเอกสารเดียว คุณสามารถดำเนินการนี้ได้ด้วยตนเองหรือใช้คุณลักษณะการแทรกหรือต่อท้าย Aspose.Words

การแทรกช่วยให้คุณสามารถแทรกเนื้อหาของเอกสารที่สร้างไว้ก่อนหน้านี้ลงในเอกสารใหม่หรือที่มีอยู่ได้

ในทางกลับกัน คุณลักษณะการผนวกช่วยให้คุณสามารถเพิ่มเอกสารได้เฉพาะที่ส่วนท้ายของเอกสารอื่นเท่านั้น

บทความนี้จะอธิบายวิธีการแทรกหรือผนวกเอกสารเข้ากับเอกสารอื่นด้วยวิธีต่างๆ และอธิบายคุณสมบัติทั่วไปที่คุณสามารถใช้ได้ในขณะที่แทรกหรือผนวกเอกสาร

## แทรกเอกสาร

ตามที่กล่าวไว้ข้างต้น ใน Aspose.Words เอกสารจะแสดงเป็นแผนผังของโหนด และการดำเนินการแทรกเอกสารหนึ่งไปยังอีกเอกสารหนึ่งคือการคัดลอกโหนดจากแผนผังเอกสารแรกไปยังเอกสารที่สอง

คุณสามารถแทรกเอกสารในตำแหน่งต่างๆ ได้หลายวิธี ตัวอย่างเช่น คุณสามารถแทรกเอกสารผ่านการดำเนินการแทนที่ ฟิลด์ผสานระหว่างการดำเนินการผสาน หรือผ่านทางบุ๊กมาร์ก

คุณยังสามารถใช้วิธี [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) หรือ [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) ซึ่งคล้ายกับการแทรกเอกสารใน Microsoft Word เพื่อแทรกเอกสารทั้งหมดที่ตำแหน่งเคอร์เซอร์ปัจจุบันโดยไม่ต้องนำเข้าก่อนหน้านี้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกเอกสารโดยใช้วิธี **insert_document**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกเอกสารโดยใช้วิธี **insert_document_inline**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

ส่วนย่อยต่อไปนี้จะอธิบายตัวเลือกต่างๆ ที่คุณสามารถแทรกเอกสารหนึ่งลงในอีกเอกสารหนึ่งได้

### แทรกเอกสารที่บุ๊กมาร์ก

คุณสามารถนำเข้าไฟล์ข้อความลงในเอกสารและแทรกไว้หลังบุ๊กมาร์กที่คุณกำหนดไว้ในเอกสารได้ เมื่อต้องการทำเช่นนี้ ให้สร้างย่อหน้าบุ๊กมาร์กที่คุณต้องการแทรกเอกสาร

ตัวอย่างการเข้ารหัสต่อไปนี้แสดงวิธีการแทรกเนื้อหาของเอกสารหนึ่งไปยังบุ๊กมาร์กในเอกสารอื่น:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

โปรดทราบว่าบุ๊กมาร์กไม่ควรล้อมรอบหลายย่อหน้าหรือข้อความที่คุณต้องการให้ปรากฏในเอกสารผลลัพธ์สุดท้ายของคุณ

{{% /alert %}}

## ผนวกเอกสาร

คุณอาจมีกรณีการใช้งานที่คุณต้องรวมหน้าเพิ่มเติมจากเอกสารต่อท้ายเอกสารที่มีอยู่ ในการดำเนินการนี้คุณเพียงแค่ต้องเรียกใช้เมธอด [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) เพื่อเพิ่มเอกสารต่อท้ายเอกสารอื่น

{{% alert color="primary" %}}

โปรดทราบว่า [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) เป็นวิธีการระดับโหนดภายในเอกสาร ตัวอย่างเช่น คุณสามารถสร้างย่อหน้า ตั้งค่าคุณสมบัติการจัดรูปแบบ แล้วผนวกเป็นย่อหน้าเข้ากับเนื้อหาโดยใช้วิธี [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการผนวกเอกสารต่อท้ายเอกสารอื่น:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## นำเข้าและแทรกโหนดด้วยตนเอง

Aspose.Words ช่วยให้คุณสามารถแทรกและต่อท้ายเอกสารโดยอัตโนมัติ โดยไม่ต้องมีข้อกำหนดการนำเข้าใดๆ ก่อนหน้านี้ อย่างไรก็ตาม หากคุณต้องการแทรกหรือต่อท้ายโหนดเฉพาะของเอกสารของคุณ เช่น ส่วนหรือย่อหน้า คุณต้องนำเข้าโหนดนี้ด้วยตนเองก่อน

เมื่อคุณต้องการแทรกหรือต่อท้ายส่วนหรือย่อหน้าหนึ่งเข้ากับอีกส่วนหนึ่ง คุณจะต้องนำเข้าโหนดของโครงสร้างโหนดเอกสารแรกไปยังส่วนที่สองโดยใช้วิธี [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/) หลังจากนำเข้าโหนดของคุณแล้ว คุณต้องใช้วิธี [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) / [insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) เพื่อแทรกโหนดใหม่หลัง/ก่อนโหนดอ้างอิง สิ่งนี้ช่วยให้คุณปรับแต่งกระบวนการแทรกได้โดยการนำเข้าโหนดจากเอกสารและแทรกในตำแหน่งที่กำหนด

คุณยังสามารถใช้วิธี [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) เพื่อเพิ่มโหนดที่ระบุใหม่ไปที่ส่วนท้ายของรายการโหนดย่อยได้ เช่น หากคุณต้องการต่อท้ายเนื้อหาในระดับย่อหน้า แทนที่จะเป็นระดับส่วน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการนำเข้าโหนดด้วยตนเองและแทรกไว้หลังโหนดเฉพาะโดยใช้วิธี [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/):

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

การนำเข้าจะสร้างโหนดใหม่ที่เป็นสำเนาของโหนดเดิมและเหมาะสำหรับการแทรกลงในเอกสารปลายทาง

{{% /alert %}}

เนื้อหาจะถูกนำเข้าไปยังส่วนเอกสารปลายทางทีละส่วน ซึ่งหมายความว่าการตั้งค่า เช่น การตั้งค่าหน้าและส่วนหัวหรือส่วนท้าย จะถูกรักษาไว้ในระหว่างการนำเข้า นอกจากนี้ โปรดทราบว่าคุณสามารถกำหนดการตั้งค่าการจัดรูปแบบได้เมื่อคุณแทรกหรือต่อท้ายเอกสารเพื่อระบุวิธีการรวมเอกสารทั้งสองเข้าด้วยกัน

## คุณสมบัติทั่วไปสำหรับการแทรกและผนวกเอกสาร

ทั้งวิธี [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) และ [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) ยอมรับ [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) และ [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) เป็นพารามิเตอร์อินพุต [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) ช่วยให้คุณควบคุมวิธีการผสานการจัดรูปแบบเอกสารเมื่อคุณนำเข้าเนื้อหาจากเอกสารหนึ่งไปยังอีกเอกสารหนึ่งโดยการเลือกโหมดรูปแบบที่แตกต่างกัน เช่น [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting) และ [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles) [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) ช่วยให้คุณเลือกตัวเลือกการนำเข้าต่างๆ เช่น [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/) และ [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/)

Aspose.Words ช่วยให้คุณปรับการแสดงภาพของเอกสารผลลัพธ์เมื่อมีการเพิ่มเอกสารสองฉบับเข้าด้วยกันในการแทรกหรือผนวกโดยใช้ [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) และ [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) คุณสมบัติ [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) มีแอตทริบิวต์ทั้งหมดของส่วน เช่น [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/) และอื่นๆ กรณีการใช้งานที่พบบ่อยที่สุดคือการตั้งค่าคุณสมบัติ [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) เพื่อกำหนดว่าเนื้อหาที่เพิ่มจะปรากฏในหน้าเดียวกันหรือแยกเป็นเนื้อหาใหม่

{{% alert color="primary" %}}

โปรดทราบว่า [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) และ [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) ไม่ได้ควบคุมวิธีการแทรก/ผนวกเอกสารสองฉบับเข้าด้วยกัน อนุญาตให้คุณเปลี่ยนรูปลักษณ์ของเอกสารผลลัพธ์เท่านั้น

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการผนวกเอกสารหนึ่งไปยังอีกเอกสารหนึ่งโดยป้องกันไม่ให้เนื้อหาแยกออกเป็นสองหน้า:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
