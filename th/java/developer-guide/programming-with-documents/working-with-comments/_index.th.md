---
title: การทำงานกับความคิดเห็นในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับความคิดเห็น
linktitle: การทำงานกับความคิดเห็น
description: "การทำงานกับความคิดเห็นโดยใช้Java."
type: docs
weight: 260
url: /th/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**ลองออนไลน์**

คุณสามารถลองฟังก์ชั่นนี้กับเรา [ฟรีออนไลน์เอาคำอธิบายประกอบ](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Wordsอนุญาตให้ผู้ใช้สามารถทำงานกับความคิดเห็น-ความคิดเห็นในเอกสารในAspose.Wordsจะแสดงโดย[Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)ชั้ ใช้ชั้นเรียน[CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/)และ[CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)เพื่อระบุพื้นที่ของข้อความที่ควรจะเชื่อมโยงกับข้อคิดเห็น.

## เพิ่มความคิดเห็น

Aspose.Wordsช่วยให้คุณสามารถเพิ่มความคิดเห็นในหลายวิธี:

1. การใช้[Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)คลาส
2. การใช้ชั้นเรียน[CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/)และ[CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มความคิดเห็นในย่อหน้าโดยใช้คลาส**Comment**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มความคิดเห็นในย่อหน้าโดยใช้พื้นที่ของข้อความและ**CommentRangeStart**และ**CommentRangeEnd**คลาส:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## แยกหรือลบความคิดเห็น

ใช้ความคิดเห็นในเอกสารคำ(นอกเหนือจากการติดตามการเปลี่ยนแปลง)เป็นวิธีปฏิบัติทั่วไ สามารถมีสถานการณ์ที่สิ่งเดียวที่คุณต้องการจากเอกสารเป็นความคิดเห็น. สมมติว่าคุณต้องการที่จะสร้างรายการของการค้นพบการตรวจสอบหรือบางทีคุณอาจจะได้ คุณอาจต้องการดูหรือลบความคิดเห็นของผู้ตรวจทานรายใดรายหนึ่ง.

ในตัวอย่างนี้,เราจะไปดูที่วิธีการบางอย่างง่ายสำหรับทั้งการรวบรวมข้อมูลจากความคิดเห็นภายในเอกสารและสำหรับการลบความคิดเห็นจากเอกสาร. โดยเฉพาะอย่างยิ่งเราจะครอบคลุมถึงวิธีการ:

- สารสกัดจากความคิดเห็นทั้งหมดจากเอกสารหรือเฉพาะคนที่ทำโดยผู้เขียนโดยเฉพาะอย่.
- ลบความคิดเห็นทั้งหมดจากเอกสารหรือจากผู้เขียนโดยเฉพาะอย่างยิ่ง.

### วิธีการแยกหรือลบความคิดเห็น

รหัสในตัวอย่างนี้ค่อนข้างง่ายและวิธีการทั้งหมดจะขึ้นอยู่กับวิธีการเดียวกัน ข้อคิดเห็นในเอกสารคำจะแสดงโดยวัตถุ`Comment`ในรูปแบบวัตถุเอกสารAspose.Words ในการรวบรวมความคิดเห็นทั้งหมดในเอกสารให้ใช้วิธีการ[getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes)กับพารามิเตอร์แรกที่ตั้งไว้ที่`NodeType.Comment` ตรวจสอบให้แน่ใจว่าพารามิเตอร์ที่สองของวิธีการ**getChildNodes**ถูกตั้งค่าเป็นจริง:สิ่งนี้บังคับให้**getChildNodes**เลือกจา.

เพื่อแสดงให้เห็นถึงวิธีการแยกและลบความคิดเห็นจากเอกสาร,เราจะไปผ่านขั้นตอนต่อ:

1. เปิดเอกสารคำโดยใช้คลาส[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)
1. รับความคิดเห็นทั้งหมดจากเอกสารลงในคอลเลกชัน
1. การแยกความคิดเห็น:
   1. ผ่านการเก็บรวบรวมโดยใช้สำหรับผู้ประกอบการ
   1. สารสกัดจากและรายชื่อชื่อผู้เขียนวันที่และเวลาและข้อความของความคิดเห็นทั้งหมด
   1. สารสกัดจากและรายชื่อชื่อผู้เขียนวันที่และเวลาและข้อความแสดงความคิดเห็นที่เขียนโดย
1. วิธีลบความคิดเห็น:
   1. ไปข้างหลังผ่านคอลเลกชันโดยใช้สำหรับผู้ประกอบการ
   1. ลบความคิดเห็น
1. บันทึกการเปลี่ยนแปลง.

เราจะใช้เอกสารคำต่อไปนี้สำหรับการออกกำลังกายนี้:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

ที่คุณสามารถดูมันมีหลายความคิดเห็นจากสองผู้เขียนที่มีชื่อย่อ"น."และ"แคนซัส".

### วิธีการแยกความคิดเห็นทั้งหมด

วิธี[getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes)มีประโยชน์มากและคุณสามารถใช้มันทุกครั้งที่คุณต้องการที่จะได้รับรายชื่อของโหนดเ คอลเล็กชันผลลัพธ์ไม่ได้สร้างค่าใช้จ่ายในทันทีเนื่องจากโหนดถูกเลือกไว้ในคอลเล็กชันนี้เ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกชื่อผู้เขียนวันที่และเวลาและข้อความของความคิดเห็นทั้งหมดในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### วิธีการแยกความคิดเห็นของผู้เขียนที่ระบุ

หลังจากที่คุณได้เลือกโหนดความคิดเห็นลงในคอลเลกชันทั้งหมดที่คุณต้องทำคือการแยกข้ ในตัวอย่างนี้ชื่อย่อวันที่เวลาและข้อความธรรมดาของความคิดเห็นจะรวมกันเป็นสตริงหนึ่ง;คุณสามารถเลือกที่จะเก็บไว้ในบางวิธีอื่นๆแทน.

วิธีการมากเกินไปที่แยกความคิดเห็นจากผู้เขียนโดยเฉพาะอย่างยิ่งเกือบจะเหมือนกันก็เ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกชื่อผู้เขียนวันที่และเวลาและข้อความของความคิดเห็นโดยผู้เขียนที่ระบุ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### วิธีการลบความคิดเห็น

หากคุณกำลังลบความคิดเห็นทั้งหมดไม่จำเป็นต้องย้ายผ่านคอลเล็กชันการลบความคิดเห็นทีละรายการคุณสามารถลบความคิดเห็นได้โดยโทร[clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear)บนคอลเล็กชันความคิดเห็น.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลบความคิดเห็นทั้งหมดในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

เมื่อคุณจำเป็นต้องเลือกลบความคิดเห็น,กระบวนการจะกลายเป็นคล้ายกับรหัสที่เราใช้ส.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลบความคิดเห็นโดยผู้เขียนที่ระบุ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

จุดหลักที่จะเน้นที่นี่คือการใช้สำหรับผู้ประกอบการ ซึ่งแตกต่างจากการสกัดง่ายที่นี่คุณต้องการที่จะลบความคิดเห็น เคล็ดลับที่เหมาะสมคือการย้ำคอลเลกชันย้อนหลังจากความคิดเห็นล่าสุดไปยังคนแรก. ย้ายไปข้างหลังดัชนีของรายการก่อนหน้านี้ยังคงไม่เปลี่ยนแปลงและคุณสามารถทำงานใน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสำหรับการแยกความคิดเห็นและการเอาออก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

เมื่อเปิดตัวตัวอย่างจะแสดงผลลัพธ์ต่อไปนี้ ครั้งแรกที่แสดงความคิดเห็นทั้งหมดโดยผู้เขียนทั้งหมดแล้วจะแสดงความคิดเห็นโดยผู้เขียนที่เลือกเท่านั้น สุดท้ายรหัสลบความคิดเห็นทั้งหมด.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

เอกสารคำที่ส่งออกได้ในขณะนี้ความคิดเห็นออกจากมัน:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### วิธีการลบข้อความระหว่างCommentRangeStartและCommentRangeEnd

ใช้Aspose.Wordsคุณยังสามารถลบความคิดเห็นระหว่างCommentRangeStartและCommentRangeEndโหนด.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลบข้อความระหว่างCommentRangeStartและCommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## เพิ่มหรือลบคำตอบของความคิดเห็น

วิธีการ[addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String)เพิ่มการตอบกลับความคิดเห็นนี้ โปรดทราบว่าเนื่องจากข้อจำกัดของสำนักงานMSที่มีอยู่เพียงหนึ่ง(1)ระดับของการตอบกลับที่ไ ข้อยกเว้นของชนิดInvalidOperationExceptionจะถูกยกขึ้นถ้าวิธีนี้ถูกเรียกใช้ในการตอบกลับความคิดเห็นที่มีอยู่.

คุณสามารถใช้วิธีการ[removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment)เพื่อลบการตอบกลับที่ระบุในความคิดเห็นนี้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มการตอบกลับความคิดเห็นและลบการตอบกลับของค:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## อ่านความคิดเห็นตอบ

Aspose.Wordsสนับสนุนการอ่านการตอบกลับของความคิดเห็น คุณสมบัติ[Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies)จะส่งคืนคอลเล็กชันของออบเจกต์[Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)ที่เป็นเด็กทันทีของข้อคิดเห็นที่ระบุ.

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำซ้ำผ่านการตอบกลับของความคิดเห็นและแก้ไขโค้ดเหล่:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
