---
title: ติดตามการเปลี่ยนแปลงในเอกสาร
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ติดตามการเปลี่ยนแปลงในเอกสาร
linktitle: ติดตามการเปลี่ยนแปลงในเอกสาร
description: "ติดตามการเปลี่ยนแปลงเนื้อหาและการจัดรูปแบบที่คุณหรือผู้อื่นทำโดยใช้ Python เข้าถึงการแก้ไขแต่ละรายการในเอกสารและใช้คุณสมบัติต่างๆ กับการแก้ไขเหล่านั้น"
type: docs
weight: 270
url: /th/python-net/track-changes-in-a-document/
---

ฟังก์ชันการทำงานของการติดตามการเปลี่ยนแปลงหรือที่เรียกว่าการตรวจสอบ ช่วยให้คุณสามารถติดตามการเปลี่ยนแปลงในเนื้อหาและการจัดรูปแบบที่คุณหรือผู้ใช้รายอื่นทำ คุณลักษณะการเปลี่ยนแปลงแทร็กนี้ด้วย Aspose.Words รองรับการเปลี่ยนแปลงแทร็กใน Microsoft Word ด้วยฟังก์ชันนี้ คุณสามารถเข้าถึงการแก้ไขแต่ละรายการในเอกสารของคุณ และใช้คุณสมบัติที่แตกต่างกันกับการแก้ไขเหล่านั้นได้

เมื่อคุณเปิดใช้งานคุณสมบัติการติดตามการเปลี่ยนแปลง องค์ประกอบที่แทรก ลบ และแก้ไขทั้งหมดของเอกสารจะถูกเน้นด้วยสายตาพร้อมข้อมูลเกี่ยวกับใคร เมื่อใด และสิ่งที่เปลี่ยนแปลง ออบเจ็กต์ที่มีข้อมูลเกี่ยวกับสิ่งที่เปลี่ยนแปลงเรียกว่า "การติดตามการเปลี่ยนแปลง" ตัวอย่างเช่น สมมติว่าคุณต้องการตรวจทานเอกสารและทำการเปลี่ยนแปลงที่สำคัญ ซึ่งอาจหมายความว่าคุณต้องทำการแก้ไข นอกจากนี้ คุณอาจต้องแทรกความคิดเห็นเพื่อหารือเกี่ยวกับการเปลี่ยนแปลงบางอย่าง นั่นคือที่มาของการติดตามการเปลี่ยนแปลงในเอกสาร

บทความนี้จะอธิบายวิธีจัดการและติดตามการเปลี่ยนแปลงที่สร้างโดยผู้ตรวจสอบจำนวนมากในเอกสารเดียวกัน รวมถึงคุณสมบัติสำหรับการติดตามการเปลี่ยนแปลง

{{% alert color="primary" %}}

โปรดทราบว่าคุณลักษณะความคิดเห็นใน Aspose.Words และใน Microsoft Word สามารถเชื่อมโยงกับการติดตามการเปลี่ยนแปลงได้ อย่างไรก็ตาม โปรดจำไว้ว่าความคิดเห็นนั้นไม่ขึ้นอยู่กับการติดตามการเปลี่ยนแปลงโดยสิ้นเชิง

{{% /alert %}}

## การแก้ไขคืออะไร

ก่อนที่จะเจาะลึกการแก้ไข เรามาอธิบายความหมายของการแก้ไขกันก่อน [Revision](https://reference.aspose.com/words/python-net/aspose.words/revision/) คือการเปลี่ยนแปลงที่เกิดขึ้นในโหนดหนึ่งของเอกสาร ในขณะที่กลุ่มการแก้ไขซึ่งแสดงโดยคลาส [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/) คือกลุ่มของการแก้ไขตามลำดับที่เกิดขึ้นในหลายโหนดของเอกสาร โดยพื้นฐานแล้ว การแก้ไขเป็นเครื่องมือสำหรับการติดตามการเปลี่ยนแปลง

การแก้ไขจะใช้ในคุณลักษณะการติดตามการเปลี่ยนแปลงและภายในคุณลักษณะการเปรียบเทียบเอกสาร ซึ่งการแก้ไขจะปรากฏเป็นผลจากการเปรียบเทียบ ดังนั้น การแก้ไขภายในคุณลักษณะการติดตามการเปลี่ยนแปลงจะแสดงโดยใครและสิ่งที่เปลี่ยนแปลง

{{% alert color="primary" %}}

โปรดทราบว่า Microsoft Word ไม่อนุญาตให้คุณดูการแก้ไขแต่ละรายการ แต่อนุญาตให้คุณดูการแก้ไขตามลำดับเป็นรายการเดียวเท่านั้น แต่ Aspose.Words แก้ข้อจำกัดนี้ด้วยคลาส [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/)

{{% /alert %}}

Aspose.Words รองรับการแก้ไขประเภทต่างๆ รวมถึงใน Microsoft Word เช่น การแทรก การลบ การเปลี่ยนรูปแบบ StyleDefinitionChange และการย้าย ประเภทการแก้ไขทั้งหมดจะแสดงด้วยการแจงนับ [RevisionType](https://reference.aspose.com/words/python-net/aspose.words/revisiontype/)

{{% alert color="primary" %}}

โปรดทราบว่าการแก้ไขจะมีผลลัพธ์คล้ายกับ Microsoft Word แต่ Aspose.Words ตรวจไม่พบการจัดรูปแบบในระหว่างการติดตามการเปลี่ยนแปลง

{{% /alert %}}

## เริ่มต้นและหยุดการติดตามการเปลี่ยนแปลง

การแก้ไขเอกสารมักจะไม่นับเป็นการแก้ไขจนกว่าคุณจะเริ่มติดตาม Aspose.Words ช่วยให้คุณติดตามการเปลี่ยนแปลงทั้งหมดในเอกสารของคุณโดยอัตโนมัติด้วยขั้นตอนง่ายๆ คุณสามารถเริ่มกระบวนการติดตามการเปลี่ยนแปลงได้อย่างง่ายดายโดยใช้วิธี [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) หากคุณต้องการหยุดกระบวนการติดตามการเปลี่ยนแปลง เพื่อไม่ให้การแก้ไขใดๆ ในอนาคตถือเป็นการแก้ไข คุณจะต้องใช้วิธี [stop_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/stop_track_revisions/)

{{% alert color="primary" %}}

โปรดทราบว่าวิธี [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) จะไม่เปลี่ยนสถานะของคุณสมบัติ [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) และจะไม่ใช้ค่าเพื่อจุดประสงค์ในการติดตามการแก้ไข นอกจากนี้ หากโหนดถูกย้ายจากตำแหน่งหนึ่งไปยังอีกตำแหน่งหนึ่งภายในเอกสารที่ติดตาม การแก้ไขการย้ายจะถูกสร้างขึ้น รวมถึงการย้ายจากและช่วงการย้ายไปยัง

{{% /alert %}}

เมื่อสิ้นสุดกระบวนการติดตามการเปลี่ยนแปลงในเอกสารของคุณ คุณจะสามารถยอมรับการแก้ไขทั้งหมดหรือปฏิเสธการแก้ไขเพื่อเปลี่ยนเอกสารกลับเป็นรูปแบบเดิมได้ ซึ่งสามารถทำได้โดยใช้วิธี [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) หรือ [reject_all](https://reference.aspose.com/words/python-net/aspose.words/revisioncollection/reject_all/) นอกจากนี้ คุณสามารถยอมรับหรือปฏิเสธการแก้ไขแต่ละรายการแยกกันได้โดยใช้วิธี [accept](https://reference.aspose.com/words/python-net/aspose.words/revision/accept/) หรือ [reject](https://reference.aspose.com/words/python-net/aspose.words/revision/reject/)

การเปลี่ยนแปลงทั้งหมดจะถูกติดตามสำหรับการวนซ้ำหนึ่งครั้งตั้งแต่วินาทีที่คุณเริ่มกระบวนการจนถึงช่วงเวลาที่คุณหยุด การเชื่อมต่อระหว่างการวนซ้ำต่างๆ จะแสดงเป็นสถานการณ์ต่อไปนี้: คุณดำเนินการตามกระบวนการติดตามให้เสร็จสิ้น จากนั้นทำการเปลี่ยนแปลงบางอย่าง และเริ่มติดตามการเปลี่ยนแปลงอีกครั้ง ด้วยสถานการณ์นี้ การเปลี่ยนแปลงทั้งหมดที่คุณไม่ยอมรับหรือปฏิเสธจะถูกแสดงอีกครั้ง

{{% alert color="primary" %}}

โปรดทราบว่าวิธี [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) จะคล้ายกับ "ยอมรับการเปลี่ยนแปลงทั้งหมด" ใน Microsoft Word

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับการติดตามการเปลี่ยนแปลง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-AcceptAllRevisions.py" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างการแก้ไขเมื่อมีการย้ายโหนดภายในเอกสารที่ถูกติดตาม:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-MoveNodeInTrackedDocument.py" >}}

## จัดการและจัดเก็บการเปลี่ยนแปลงเป็นการแก้ไข

ด้วยคุณลักษณะการติดตามการเปลี่ยนแปลงก่อนหน้านี้ คุณสามารถเข้าใจได้ว่ามีการเปลี่ยนแปลงใดบ้างในเอกสารของคุณและใครเป็นผู้ทำการเปลี่ยนแปลงเหล่านั้น เมื่อใช้ฟีเจอร์ [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) คุณจะบังคับให้การเปลี่ยนแปลงใดๆ ภายในเอกสารถูกจัดเก็บเป็นการแก้ไข

Aspose.Words ช่วยให้คุณตรวจสอบว่าเอกสารมีการแก้ไขหรือไม่โดยใช้คุณสมบัติ [has_revision](https://reference.aspose.com/words/python-net/aspose.words/document/has_revisions/) หากคุณไม่ต้องการติดตามการเปลี่ยนแปลงในเอกสารของคุณโดยอัตโนมัติผ่านเมธอด start_track_revisions และ stop_track_revisions คุณสามารถใช้คุณสมบัติ [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) เพื่อตรวจสอบว่าการเปลี่ยนแปลงได้รับการติดตามในขณะที่แก้ไขเอกสารใน Microsoft Word และจัดเก็บเป็นการแก้ไขหรือไม่

คุณลักษณะ [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) ทำการแก้ไขแทนการเปลี่ยนแปลง DOM จริง แต่การแก้ไขนั้นแยกจากกัน ตัวอย่างเช่น หากคุณลบย่อหน้าใดๆ Aspose.Words จะทำให้เป็นการแก้ไข โดยทำเครื่องหมายว่าเป็นการลบ แทนที่จะลบออก

นอกจากนี้ Aspose.Words ยังช่วยให้คุณตรวจสอบว่าวัตถุถูกแทรก ลบ หรือเปลี่ยนการจัดรูปแบบโดยใช้คุณสมบัติ [is_delete_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_delete_revision/), [is_format_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_format_revision/), [is_insert_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_insert_revision/), [is_move_from_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_from_revision/) และ [is_move_to_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_to_revision/) หรือไม่

{{% alert color="primary" %}}

โปรดทราบว่าไม่มีการเชื่อมโยงระหว่างการแก้ไขกับพร็อพเพอร์ตี้ [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) นอกจากนี้ คุณสามารถยอมรับ/ปฏิเสธการแก้ไขได้โดยไม่คำนึงถึงคุณสมบัติการติดตามการเปลี่ยนแปลง

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้คุณสมบัติที่แตกต่างกับการแก้ไข:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShapeRevision.py" >}}
