---
title: การทำงานกับความคิดเห็นในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับความคิดเห็น
linktitle: การทำงานกับความคิดเห็น
description: "การทำงานกับความคิดเห็นโดยใช้C++."
type: docs
weight: 260
url: /th/cpp/working-with-comments/
---

{{% alert color="primary" %}}

**ลองออนไลน์**

คุณสามารถลองฟังก์ชั่นนี้กับเรา [ฟรีออนไลน์เอาคำอธิบายประกอบ](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Wordsอนุญาตให้ผู้ใช้สามารถทำงานกับความคิดเห็น-ความคิดเห็นในเอกสารในAspose.Wordsจะแสดงโดย[Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)ชั้ ใช้ชั้นเรียน[CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/)และ[CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/)เพื่อระบุพื้นที่ของข้อความที่ควรจะเชื่อมโยงกับข้อคิดเห็น.

## เพิ่มความคิดเห็น

Aspose.Wordsช่วยให้คุณสามารถเพิ่มความคิดเห็นในหลายวิธี:

1. การใช้[Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)คลาส
2. การใช้ชั้นเรียน[CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/)และ[CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มความคิดเห็นในย่อหน้าโดยใช้คลาส**Comment**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AddComments-AddComments.cpp" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มความคิดเห็นในย่อหน้าโดยใช้พื้นที่ของข้อความและ**CommentRangeStart**และ**CommentRangeEnd**คลาส:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AnchorComment-AnchorComment.cpp" >}}

## แยกหรือลบความคิดเห็น

ใช้ความคิดเห็นในเอกสารคำ(นอกเหนือจากการติดตามการเปลี่ยนแปลง)เป็นวิธีปฏิบัติทั่วไ สามารถมีสถานการณ์ที่สิ่งเดียวที่คุณต้องการจากเอกสารเป็นความคิดเห็น. สมมติว่าคุณต้องการที่จะสร้างรายการของการค้นพบการตรวจสอบหรือบางทีคุณอาจจะได้ คุณอาจต้องการดูหรือลบความคิดเห็นของผู้ตรวจทานรายใดรายหนึ่ง.

ในตัวอย่างนี้,เราจะไปดูที่วิธีการบางอย่างง่ายสำหรับทั้งการรวบรวมข้อมูลจากความคิดเห็นภายในเอกสารและสำหรับการลบความคิดเห็นจากเอกสาร. โดยเฉพาะอย่างยิ่งเราจะครอบคลุมถึงวิธีการ:

- สารสกัดจากความคิดเห็นทั้งหมดจากเอกสารหรือเฉพาะคนที่ทำโดยผู้เขียนโดยเฉพาะอย่.
- ลบความคิดเห็นทั้งหมดจากเอกสารหรือจากผู้เขียนโดยเฉพาะอย่างยิ่ง.

### วิธีการแยกหรือลบความคิดเห็น

รหัสในตัวอย่างนี้เป็นจริงค่อนข้างง่ายและวิธีการทั้งหมดจะขึ้นอยู่กับวิธีการเดียวกัน ความคิดเห็นในเอกสารคำจะแสดงโดยวัตถุ[Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)ในรูปแบบวัตถุเอกสารAspose.Words ในการรวบรวมความคิดเห็นทั้งหมดในเอกสารให้ใช้วิธีการ[GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/)กับพารามิเตอร์แรกที่ตั้งไว้ที่[NodeType.Comment](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) ตรวจสอบให้แน่ใจว่าพารามิเตอร์ที่สองของวิธีการ**GetChildNodes**ถูกตั้งค่าเป็นจริง:สิ่งนี้บังคับให้**GetChildNodes**เลือกจา.

เพื่อแสดงให้เห็นถึงวิธีการแยกและลบความคิดเห็นจากเอกสาร,เราจะไปผ่านขั้นตอนต่อ:

1. เปิดเอกสารคำโดยใช้คลาส[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)
1. รับความคิดเห็นทั้งหมดจากเอกสารลงในคอลเลกชัน
1. การแยกความคิดเห็น:
   1. ไปผ่านคอลเลกชันโดยใช้ผู้ประกอบการฟอเรช
   1. สารสกัดจากและรายชื่อชื่อผู้เขียนวันที่และเวลาและข้อความของความคิดเห็นทั้งหมด
   1. สารสกัดจากและรายชื่อชื่อผู้เขียนวันที่และเวลาและข้อความแสดงความคิดเห็นที่เขียนโดย
1. วิธีลบความคิดเห็น:
   1. ไปข้างหลังผ่านคอลเลกชันโดยใช้สำหรับผู้ประกอบการ
   1. ลบความคิดเห็น
1. บันทึกการเปลี่ยนแปลง

### วิธีการแยกความคิดเห็นทั้งหมด

วิธี**GetChildNodes**มีประโยชน์มากและคุณสามารถใช้มันทุกครั้งที่คุณต้องการที่จะได้รับรายชื่อของโหนดเ คอลเล็กชันผลลัพธ์ไม่ได้สร้างค่าใช้จ่ายในทันทีเนื่องจากโหนดถูกเลือกไว้ในคอลเล็กชันนี้เ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกชื่อผู้เขียนวันที่และเวลาและข้อความของความคิดเห็นทั้งหมดในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractComments.cpp" >}}

### วิธีการแยกความคิดเห็นของผู้เขียนที่ระบุ

หลังจากที่คุณได้เลือกโหนดความคิดเห็นลงในคอลเลกชันทั้งหมดที่คุณต้องทำคือการแยกข้ ในตัวอย่างนี้ผู้เขียนชื่อย่อวันที่เวลาและข้อความธรรมดาของข้อคิดเห็นจะรวมเป็นสตริงหนึ่.

วิธีการมากเกินไปที่แยกความคิดเห็นจากผู้เขียนโดยเฉพาะอย่างยิ่งเกือบจะเหมือนกันก็เ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกชื่อผู้เขียนวันที่และเวลาและข้อความของความคิดเห็นโดยผู้เขียนที่ระบุ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cpp" >}}

### วิธีการลบความคิดเห็น

หากคุณกำลังลบความคิดเห็นทั้งหมดไม่จำเป็นต้องย้ายผ่านคอลเล็กชันการลบความคิดเห็นทีละรายการคุณสามารถลบความคิดเห็นได้โดยโทร`NodeCollection.Clear`บนคอลเล็กชันความคิดเห็น.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลบความคิดเห็นทั้งหมดในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveComments.cpp" >}}

เมื่อคุณจำเป็นต้องเลือกลบความคิดเห็น,กระบวนการจะกลายเป็นคล้ายกับรหัสที่เราใช้ส.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลบความคิดเห็นโดยผู้เขียนที่ระบุ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cpp" >}}

จุดหลักที่จะเน้นที่นี่คือการใช้สำหรับผู้ประกอบการ ซึ่งแตกต่างจากการสกัดง่ายที่นี่คุณต้องการที่จะลบความคิดเห็น เคล็ดลับที่เหมาะสมคือการย้ำคอลเลกชันย้อนหลังจากความคิดเห็นล่าสุดไปยังคนแรก. ย้ายไปข้างหลังดัชนีของรายการก่อนหน้านี้ยังคงไม่เปลี่ยนแปลงและคุณสามารถทำงานใน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสำหรับการแยกความคิดเห็นและการเอาออก:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ProcessComments.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### วิธีลบความคิดเห็นระหว่างCommentRangeStartและCommentRangeEnd

ใช้Aspose.Wordsคุณยังสามารถลบความคิดเห็นระหว่าง**CommentRangeStart**และ**CommentRangeEnd**โหนด.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลบข้อความระหว่าง**CommentRangeStart**และ**CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cpp" >}}

## เพิ่มและลบคำตอบของความคิดเห็น

วิธีการ[AddReply](https://reference.aspose.com/words/cpp/aspose.words/comment/addreply/)เพิ่มการตอบกลับความคิดเห็นนี้ โปรดทราบว่าเนื่องจากข้อจำกัดของสำนักงานMicrosoftที่มีอยู่เท่านั้น1ระดับของการตอบกลับที่ได้รับอนุญาตในเอกสาร ข้อยกเว้นของชนิด*InvalidOperationException*จะถูกยกขึ้นถ้าวิธีนี้ถูกเรียกใช้ในการตอบกลับความคิดเห็นที่มีอยู่.

คุณสามารถใช้วิธีการ[RemoveReply](https://reference.aspose.com/words/cpp/aspose.words/comment/removereply/)เพื่อลบการตอบกลับที่ระบุในความคิดเห็นนี้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มการตอบกลับความคิดเห็นและลบการตอบกลับของค:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cpp" >}}

## อ่านความคิดเห็นตอบ

คุณสมบัติ[Replies](https://reference.aspose.com/words/cpp/aspose.words/comment/get_replies/)จะส่งคืนคอลเล็กชันของออบเจกต์**Comment**ที่เป็นเด็กทันทีของข้อคิดเห็นที่ระบุ.

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำซ้ำผ่านการตอบกลับของความคิดเห็นและแก้ไขโค้ดเหล่:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cpp" >}}