---
title: การทำงานกับความคิดเห็นใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับความคิดเห็น
linktitle: การทำงานกับความคิดเห็น
description: "วิธีเพิ่ม ลบ หรือจัดการความคิดเห็นในเอกสารโดยใช้ Python"
type: docs
weight: 260
url: /th/python-net/working-with-comments/
---

{{% alert color="primary" %}}

**ลองออนไลน์**

คุณสามารถลองใช้ฟังก์ชันนี้กับ [คำอธิบายประกอบการลบออนไลน์ฟรี](https://products.aspose.app/words/annotation) ของเราได้

{{% /alert %}}

Aspose.Words อนุญาตให้ผู้ใช้ทำงานกับความคิดเห็น - ความคิดเห็นในเอกสารใน Aspose.Words จะแสดงโดยคลาส [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) ใช้คลาส [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) และ [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) เพื่อระบุขอบเขตของข้อความที่ควรเชื่อมโยงกับความคิดเห็น

## เพิ่มความคิดเห็น

Aspose.Words ช่วยให้คุณสามารถเพิ่มความคิดเห็นได้หลายวิธี:

1. การใช้คลาส [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
2. การใช้คลาส [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) และ [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีเพิ่มความคิดเห็นในย่อหน้าโดยใช้คลาส **Comment**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีเพิ่มความคิดเห็นในย่อหน้าโดยใช้ขอบเขตข้อความและคลาส **CommentRangeStart** และ **CommentRangeEnd**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## แยกหรือลบความคิดเห็น

การใช้ความคิดเห็นในเอกสาร Word (นอกเหนือจากการติดตามการเปลี่ยนแปลง) เป็นวิธีปฏิบัติทั่วไปเมื่อตรวจสอบเอกสาร โดยเฉพาะอย่างยิ่งเมื่อมีผู้ตรวจสอบหลายคน อาจมีสถานการณ์ที่สิ่งเดียวที่คุณต้องการจากเอกสารคือความคิดเห็น สมมติว่าคุณต้องการสร้างรายการผลการตรวจสอบ หรือบางทีคุณอาจรวบรวมข้อมูลที่เป็นประโยชน์ทั้งหมดจากเอกสาร และคุณเพียงต้องการลบความคิดเห็นที่ไม่จำเป็นออก คุณอาจต้องการดูหรือลบความคิดเห็นของผู้วิจารณ์รายใดรายหนึ่ง

ในตัวอย่างนี้ เราจะดูวิธีการง่ายๆ สำหรับทั้งการรวบรวมข้อมูลจากความคิดเห็นภายในเอกสารและการลบความคิดเห็นออกจากเอกสาร โดยเฉพาะเราจะกล่าวถึงวิธีการ:

- แยกความคิดเห็นทั้งหมดออกจากเอกสารหรือเฉพาะความคิดเห็นของผู้เขียนคนใดคนหนึ่งเท่านั้น
- ลบความคิดเห็นทั้งหมดออกจากเอกสารหรือเฉพาะจากผู้เขียนคนใดคนหนึ่งเท่านั้น

### วิธีแยกหรือลบความคิดเห็น

จริงๆ แล้วโค้ดในตัวอย่างนี้ค่อนข้างเรียบง่าย และวิธีการทั้งหมดก็ใช้แนวทางเดียวกัน ความคิดเห็นในเอกสาร Word จะแสดงด้วยวัตถุ [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) ในรูปแบบวัตถุเอกสาร Aspose.Words หากต้องการรวบรวมความคิดเห็นทั้งหมดในเอกสาร ให้ใช้วิธี [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) โดยตั้งค่าพารามิเตอร์แรกเป็น [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment) ตรวจสอบให้แน่ใจว่าพารามิเตอร์ตัวที่สองของวิธี **get_child_nodes** ถูกตั้งค่าเป็น true ซึ่งจะบังคับให้ **get_child_nodes** เลือกจากโหนดย่อยทั้งหมดแบบวนซ้ำ แทนที่จะรวบรวมเฉพาะโหนดย่อยที่อยู่ติดกัน

เพื่ออธิบายวิธีการแยกและลบความคิดเห็นออกจากเอกสาร เราจะทำตามขั้นตอนต่อไปนี้:

1. เปิดเอกสาร Word โดยใช้คลาส [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)
1. รับความคิดเห็นทั้งหมดจากเอกสารลงในคอลเลกชัน
1. หากต้องการแยกความคิดเห็น:
   1. ดำเนินการคอลเลกชันโดยใช้ตัวดำเนินการ foreach
   1. แยกและระบุชื่อผู้เขียน วันที่และเวลา และข้อความของความคิดเห็นทั้งหมด
   1. แยกและระบุชื่อผู้เขียน วันที่ &amp; เวลา และข้อความความคิดเห็นที่เขียนโดยผู้เขียนเฉพาะเจาะจง ในกรณีนี้คือผู้เขียน 'ks'
1. หากต้องการลบความคิดเห็น:
   1. ย้อนกลับผ่านคอลเลกชันโดยใช้ตัวดำเนินการ for
   1. ลบความคิดเห็น
1. บันทึกการเปลี่ยนแปลง

### วิธีแยกความคิดเห็นทั้งหมด

วิธีการ [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) มีประโยชน์มากและคุณสามารถใช้ทุกครั้งที่คุณต้องการรับรายการโหนดเอกสารประเภทใดก็ได้ คอลเลกชันผลลัพธ์ไม่ได้สร้างค่าใช้จ่ายทันที เนื่องจากโหนดจะถูกเลือกในคอลเลกชันนี้เฉพาะเมื่อคุณระบุหรือเข้าถึงรายการในนั้นเท่านั้น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกชื่อผู้เขียน วันที่และเวลา และข้อความของความคิดเห็นทั้งหมดในเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### วิธีแยกความคิดเห็นของผู้เขียนที่ระบุ

หลังจากที่คุณเลือกโหนด [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) ลงในคอลเลกชันแล้ว สิ่งที่คุณต้องทำคือดึงข้อมูลที่คุณต้องการ ในตัวอย่างนี้ ชื่อย่อของผู้เขียน วันที่ เวลา และข้อความธรรมดาของความคิดเห็นจะรวมกันเป็นสตริงเดียว คุณสามารถเลือกจัดเก็บด้วยวิธีอื่นแทนได้

วิธีการโอเวอร์โหลดที่แยกความคิดเห็นจากผู้เขียนคนใดคนหนึ่งนั้นแทบจะเหมือนกัน เพียงตรวจสอบชื่อผู้เขียนก่อนที่จะเพิ่มข้อมูลลงในอาร์เรย์

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกชื่อผู้เขียน วันที่และเวลา และข้อความความคิดเห็นโดยผู้เขียนที่ระบุ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### วิธีลบความคิดเห็น

หากคุณกำลังลบความคิดเห็นทั้งหมด ไม่จำเป็นต้องเลื่อนผ่านคอลเลกชันเพื่อลบความคิดเห็นทีละรายการ คุณสามารถลบออกได้โดยโทร [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) ในคอลเล็กชันความคิดเห็น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบความคิดเห็นทั้งหมดในเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

เมื่อคุณต้องการเลือกลบความคิดเห็น กระบวนการจะคล้ายกับโค้ดที่เราใช้ในการแยกความคิดเห็นมากขึ้น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบความคิดเห็นโดยผู้เขียนที่ระบุ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

ประเด็นหลักที่ต้องเน้นที่นี่คือการใช้ตัวดำเนินการ for ต่างจากการแยกข้อมูลแบบธรรมดาตรงที่คุณต้องการลบความคิดเห็นที่นี่ เคล็ดลับที่เหมาะสมคือการวนซ้ำคอลเลกชันย้อนหลังจาก [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) สุดท้ายไปยังอันแรก สาเหตุนี้หากคุณเริ่มต้นจากจุดสิ้นสุดและย้อนกลับ ดัชนีของรายการก่อนหน้ายังคงไม่เปลี่ยนแปลง และคุณสามารถย้อนกลับไปที่รายการแรกในคอลเลกชันได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกและลบความคิดเห็น:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx)

{{% /alert %}}

### วิธีลบความคิดเห็นระหว่าง CommentRangeStart และ CommentRangeEnd

การใช้ Aspose.Words ช่วยให้คุณสามารถลบความคิดเห็นระหว่างโหนด **CommentRangeStart** และ **CommentRangeEnd** ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบข้อความระหว่าง **CommentRangeStart** และ **CommentRangeEnd**:

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## เพิ่มหรือลบการตอบกลับของความคิดเห็น

วิธีการ [add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) เพิ่มการตอบกลับความคิดเห็นนี้ โปรดทราบว่าเนื่องจากข้อจำกัดของ Microsoft Office ที่มีอยู่ อนุญาตให้ตอบกลับได้เพียง 1 ระดับในเอกสารเท่านั้น ข้อยกเว้นประเภท **InvalidOperationException** จะถูกยกขึ้นหากมีการเรียกใช้เมธอดนี้ในความคิดเห็น Reply ที่มีอยู่

คุณสามารถใช้วิธี [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) เพื่อลบการตอบกลับที่ระบุสำหรับความคิดเห็นนี้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเพิ่มการตอบกลับไปยังความคิดเห็นและลบการตอบกลับของความคิดเห็น:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## อ่านคำตอบของความคิดเห็น

คุณสมบัติ [replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) ส่งคืนคอลเลกชันของวัตถุ [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) ที่เป็นลูกของความคิดเห็นที่ระบุ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการวนซ้ำผ่านการตอบกลับของความคิดเห็นและแก้ไข:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}