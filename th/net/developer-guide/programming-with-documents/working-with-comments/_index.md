---
title: การทำงานกับความคิดเห็นใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับความคิดเห็น
linktitle: การทำงานกับความคิดเห็น
description: "การทำงานกับความคิดเห็นโดยใช้ C#"
type: docs
weight: 260
url: /th/net/working-with-comments/
---

{{% alert color="primary" %}}

**ลองออนไลน์**

คุณสามารถลองใช้ฟังก์ชันนี้กับ [คำอธิบายประกอบการลบออนไลน์ฟรี](https://products.aspose.app/words/annotation) ของเราได้

{{% /alert %}}

Aspose.Words อนุญาตให้ผู้ใช้ทำงานกับความคิดเห็น - ความคิดเห็นในเอกสารใน Aspose.Words จะแสดงโดยคลาส [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) ใช้คลาส [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) และ [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) เพื่อระบุขอบเขตของข้อความที่ควรเชื่อมโยงกับความคิดเห็น

## เพิ่มความคิดเห็น

Aspose.Words ช่วยให้คุณสามารถเพิ่มความคิดเห็นได้หลายวิธี:

1. การใช้คลาส [Comment](https://reference.aspose.com/words/net/aspose.words/comment/)
2. การใช้คลาส [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) และ [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีเพิ่มความคิดเห็นในย่อหน้าโดยใช้คลาส **Comment**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีเพิ่มความคิดเห็นในย่อหน้าโดยใช้ขอบเขตข้อความและคลาส **CommentRangeStart** และ **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## แยกหรือลบความคิดเห็น

การใช้ความคิดเห็นในเอกสาร Word (นอกเหนือจากการติดตามการเปลี่ยนแปลง) เป็นวิธีปฏิบัติทั่วไปเมื่อตรวจสอบเอกสาร โดยเฉพาะอย่างยิ่งเมื่อมีผู้ตรวจสอบหลายคน อาจมีสถานการณ์ที่สิ่งเดียวที่คุณต้องการจากเอกสารคือความคิดเห็น สมมติว่าคุณต้องการสร้างรายการผลการตรวจสอบ หรือบางทีคุณอาจรวบรวมข้อมูลที่เป็นประโยชน์ทั้งหมดจากเอกสาร และคุณเพียงต้องการลบความคิดเห็นที่ไม่จำเป็นออก คุณอาจต้องการดูหรือลบความคิดเห็นของผู้วิจารณ์รายใดรายหนึ่ง

ในตัวอย่างนี้ เราจะดูวิธีการง่ายๆ สำหรับทั้งการรวบรวมข้อมูลจากความคิดเห็นภายในเอกสารและการลบความคิดเห็นออกจากเอกสาร โดยเฉพาะเราจะกล่าวถึงวิธีการ:

- แยกความคิดเห็นทั้งหมดออกจากเอกสารหรือเฉพาะความคิดเห็นของผู้เขียนคนใดคนหนึ่งเท่านั้น
- ลบความคิดเห็นทั้งหมดออกจากเอกสารหรือเฉพาะจากผู้เขียนคนใดคนหนึ่งเท่านั้น

### วิธีแยกหรือลบความคิดเห็น

จริงๆ แล้วโค้ดในตัวอย่างนี้ค่อนข้างเรียบง่าย และวิธีการทั้งหมดก็ใช้แนวทางเดียวกัน ความคิดเห็นในเอกสาร Word จะแสดงด้วยวัตถุ [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) ในรูปแบบวัตถุเอกสาร Aspose.Words หากต้องการรวบรวมความคิดเห็นทั้งหมดในเอกสาร ให้ใช้วิธี [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) โดยตั้งค่าพารามิเตอร์แรกเป็น [NodeType.Comment](https://reference.aspose.com/words/net/aspose.words/nodetype/) ตรวจสอบให้แน่ใจว่าพารามิเตอร์ตัวที่สองของวิธี **GetChildNodes** ถูกตั้งค่าเป็น true ซึ่งจะบังคับให้ **GetChildNodes** เลือกจากโหนดย่อยทั้งหมดแบบวนซ้ำ แทนที่จะรวบรวมเฉพาะโหนดย่อยที่อยู่ติดกัน

เพื่ออธิบายวิธีการแยกและลบความคิดเห็นออกจากเอกสาร เราจะทำตามขั้นตอนต่อไปนี้:

1. เปิดเอกสาร Word โดยใช้คลาส [Document](https://reference.aspose.com/words/net/aspose.words/document/)
2. รับความคิดเห็นทั้งหมดจากเอกสารลงในคอลเลกชัน
3. หากต้องการแยกความคิดเห็น:
   1. ดำเนินการคอลเลกชันโดยใช้ตัวดำเนินการ foreach
   2. แยกและระบุชื่อผู้เขียน วันที่และเวลา และข้อความของความคิดเห็นทั้งหมด
   3. แยกและระบุชื่อผู้เขียน วันที่ &amp; เวลา และข้อความความคิดเห็นที่เขียนโดยผู้เขียนเฉพาะเจาะจง ในกรณีนี้คือผู้เขียน 'ks'
4. หากต้องการลบความคิดเห็น:
   1. ย้อนกลับผ่านคอลเลกชันโดยใช้ตัวดำเนินการ for
   2. ลบความคิดเห็น
5. บันทึกการเปลี่ยนแปลง

### วิธีแยกความคิดเห็นทั้งหมด

วิธีการ **GetChildNodes** มีประโยชน์มากและคุณสามารถใช้ทุกครั้งที่คุณต้องการรับรายการโหนดเอกสารประเภทใดก็ได้ คอลเลกชันผลลัพธ์ไม่ได้สร้างค่าใช้จ่ายทันที เนื่องจากโหนดจะถูกเลือกในคอลเลกชันนี้เฉพาะเมื่อคุณระบุหรือเข้าถึงรายการในนั้นเท่านั้น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกชื่อผู้เขียน วันที่และเวลา และข้อความของความคิดเห็นทั้งหมดในเอกสาร:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### วิธีแยกความคิดเห็นของผู้เขียนที่ระบุ

หลังจากที่คุณเลือกโหนด **Comment** ลงในคอลเลกชันแล้ว สิ่งที่คุณต้องทำคือดึงข้อมูลที่คุณต้องการ ในตัวอย่างนี้ ชื่อย่อของผู้เขียน วันที่ เวลา และข้อความธรรมดาของความคิดเห็นจะรวมกันเป็นสตริงเดียว คุณสามารถเลือกจัดเก็บด้วยวิธีอื่นแทนได้

วิธีการโอเวอร์โหลดที่แยกความคิดเห็นจากผู้เขียนคนใดคนหนึ่งนั้นแทบจะเหมือนกัน เพียงตรวจสอบชื่อผู้เขียนก่อนที่จะเพิ่มข้อมูลลงในอาร์เรย์

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกชื่อผู้เขียน วันที่และเวลา และข้อความความคิดเห็นโดยผู้เขียนที่ระบุ:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### วิธีลบความคิดเห็น

หากคุณกำลังลบความคิดเห็นทั้งหมด ไม่จำเป็นต้องเลื่อนดูคอลเลกชันเพื่อลบความคิดเห็นทีละรายการ คุณสามารถลบออกได้โดยการเรียกวิธี [Clear](https://reference.aspose.com/words/net/aspose.words/nodecollection/clear/) ในคอลเลกชันความคิดเห็น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบความคิดเห็นทั้งหมดในเอกสาร:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

เมื่อคุณต้องการเลือกลบความคิดเห็น กระบวนการจะคล้ายกับโค้ดที่เราใช้ในการแยกความคิดเห็นมากขึ้น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบความคิดเห็นโดยผู้เขียนที่ระบุ:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

ประเด็นหลักที่ต้องเน้นที่นี่คือการใช้ตัวดำเนินการ for ต่างจากการแยกข้อมูลแบบธรรมดาตรงที่คุณต้องการลบความคิดเห็นที่นี่ เคล็ดลับที่เหมาะสมคือการวนซ้ำคอลเลกชันย้อนหลังจากความคิดเห็นล่าสุดไปยังความคิดเห็นแรก สาเหตุนี้หากคุณเริ่มต้นจากจุดสิ้นสุดและย้อนกลับ ดัชนีของรายการก่อนหน้ายังคงไม่เปลี่ยนแปลง และคุณสามารถย้อนกลับไปที่รายการแรกในคอลเลกชันได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกและลบความคิดเห็น:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx)

{{% /alert %}}

### วิธีลบความคิดเห็นระหว่าง CommentRangeStart และ CommentRangeEnd

การใช้ Aspose.Words ช่วยให้คุณสามารถลบความคิดเห็นระหว่างโหนด **CommentRangeStart** และ **CommentRangeEnd** ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบข้อความระหว่าง **CommentRangeStart** และ **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## เพิ่มหรือลบการตอบกลับของความคิดเห็น

วิธีการ [AddReply](https://reference.aspose.com/words/net/aspose.words/comment/addreply/) เพิ่มการตอบกลับความคิดเห็นนี้ โปรดทราบว่าเนื่องจากข้อจำกัดของ Microsoft Office ที่มีอยู่ อนุญาตให้ตอบกลับได้เพียง 1 ระดับในเอกสารเท่านั้น ข้อยกเว้นประเภท *InvalidOperationException* จะถูกยกขึ้นหากมีการเรียกใช้เมธอดนี้ในความคิดเห็น Reply ที่มีอยู่

คุณสามารถใช้วิธี [RemoveReply](https://reference.aspose.com/words/net/aspose.words/comment/removereply/) เพื่อลบการตอบกลับที่ระบุสำหรับความคิดเห็นนี้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเพิ่มการตอบกลับไปยังความคิดเห็นและลบการตอบกลับของความคิดเห็น:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## อ่านคำตอบของความคิดเห็น

คุณสมบัติ [Replies](https://reference.aspose.com/words/net/aspose.words/comment/replies/) ส่งคืนคอลเลกชันของวัตถุ [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) ที่เป็นลูกของความคิดเห็นที่ระบุ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการวนซ้ำผ่านการตอบกลับของความคิดเห็นและแก้ไข:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
