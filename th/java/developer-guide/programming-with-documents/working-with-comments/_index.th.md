---
title: ทํางานกับหมายเหตุใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับหมายเหตุ
linktitle: ทํางานกับหมายเหตุ
description: "ทํางานกับความคิดเห็นโดยใช้ Java."
type: docs
weight: 260
url: /th/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**ลองออนไลน์ดูสิ**

คุณสามารถลองใช้ฟังก์ชันนี้กับ [ลบหมายเหตุประกอบของออนไลน์ที่ฟรี](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words อนุญาตให้ผู้ใช้ทํางานกับหมายเหตุ - หมายเหตุในเอกสาร Aspose.Words แสดงโดย [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) ชั้นเรียน. ใช้ [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) ถึง [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) คลาสที่จะกําหนดขอบเขตของข้อความที่ควรใช้กับหมายเหตุ

## เพิ่มหมายเหตุ

Aspose.Words ให้ คุณ เพิ่ม ความ เห็น ได้ ใน หลาย ๆ ทาง:

1 ใช้ [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) ชั้น
2 ใช้ [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) ถึง [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) คลาส

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี เพิ่ม ความ เห็น ให้ กับ วรรค หนึ่ง โดย ใช้ **Comment** คลาส:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี เพิ่ม ความ เห็น เข้า กับ วรรค หนึ่ง โดย ใช้ ขอบ เขต ของ ข้อ ความ และ **CommentRangeStart** ถึง **CommentRangeEnd** คลาส:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## คลายหรือลบหมายเหตุ

การ ใช้ คํา อธิบาย ใน เอกสาร คํา หนึ่ง (เพิ่มเติม การ เปลี่ยน แปลง ของ แทร็ก) เป็น กิจ ปฏิบัติ ทั่ว ไป เมื่อ ทบทวน เอกสาร โดย เฉพาะ เมื่อ มี การ ทบทวน หลาย ครั้ง. อาจ มี สถานการณ์ ซึ่ง สิ่ง เดียว ที่ คุณ ต้องการ จาก เอกสาร นั้น คือ ความ เห็น. สมมติว่าคุณต้องการสร้างรายการของการค้นพบการทบทวน หรือคุณอาจจะได้เก็บข้อมูลที่มีประโยชน์ทั้งหมดจากเอกสาร และคุณต้องการลบคําอธิบายที่ไม่จําเป็นออกไป คุณ อาจ ต้องการ ดู หรือ ลบ ข้อ คิด เห็น ของ ผู้ วิจารณ์ คน หนึ่ง.

ในตัวอย่างนี้ เราจะดูที่วิธีการง่ายๆ สําหรับทั้งการรวบรวมข้อมูล จากความคิดเห็นภายในเอกสาร และเอาความคิดเห็นออกจากเอกสาร โดยเฉพาะอย่างยิ่ง เราจะครอบคลุมวิธีการ

- แยกความคิดเห็นทั้งหมดออกจากเอกสาร หรือเฉพาะคนที่เขียนโดยเฉพาะอย่างยิ่ง
- ลบความคิดเห็นทั้งหมดออกจากเอกสาร หรือเฉพาะจากผู้เขียน

### วิธี คลาย หรือ ลบ ความ เห็น

รหัสในตัวอย่างนี้ค่อนข้างง่าย และทุกวิธีการ อยู่บนวิธีการเดียวกัน คํา อธิบาย ใน เอกสาร คํา มี ตัว แทน `Comment` วัตถุใน Aspose.Words เอกสารต้นแบบ เพื่อรวบรวมความคิดเห็นทั้งหมดในเอกสารที่ใช้ [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) วิธีการโดยมีพารามิเตอร์ตัวแรกที่ตั้งไว้ `NodeType.Comment`. ทําให้แน่ใจว่าพารามิเตอร์ที่สองของ **ได้ชื่อเล่นของจีน** วิธีการถูกตั้งค่าเป็น trueพลังนี้ **ได้ชื่อเล่นของจีน** เพื่อ จะ เลือก จาก ปม ของ เด็ก ทั้ง หมด กลับ มา ใช้ อีก แทน ที่ จะ เก็บ รวบ รวม เด็ก ๆ ทันที.

เพื่อ เป็น ตัว อย่าง วิธี เอา คํา อธิบาย ออก จาก เอกสาร เรา จะ ทํา ตาม ขั้น ตอน ต่อ ไป นี้:

1 เปิดเอกสารคําโดยใช้ [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ชั้น
1 รับหมายเหตุทั้งหมดจากเอกสารเป็นคลัง
1 เพื่อแยกความคิดเห็น:
   1. ดูที่คอลเลกชันโดยใช้ตัวดําเนินการ
   1. คลายและรายการชื่อผู้เขียน, วันที่และข้อความทั้งหมดของหมายเหตุ
   1. คลายและทํารายการชื่อ, วันที่และข้อความที่เขียนโดยผู้เขียนเฉพาะ ในกรณีนี้ ผู้เขียน ‘k'
1 เพื่อลบหมายเหตุ:
   1. ย้อนกลับผ่านคอลเลกชันที่ใช้กับโอเปอเรเตอร์
   1. ลบหมายเหตุ
1 บันทึกการเปลี่ยนแปลง

เราจะใช้เอกสารคําต่อไปนี้ สําหรับแบบฝึกหัดนี้:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

อย่างที่คุณเห็น มันมีความคิดเห็นจากนักเขียนสองคน ที่มีชื่อย่อว่า "pm" และ "k"

### วิธี คลาย ความ เห็น ทุก อย่าง

เดอะ [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) วิธีการนั้นมีประโยชน์มาก และคุณสามารถใช้มันได้ทุกครั้งที่คุณต้องการ เพื่อดูรายการโหนดของเอกสารทุกชนิด คลังภาพ ที่ เกิด ขึ้น ไม่ ได้ ทํา ให้ อยู่ เหนือ ศีรษะ ทันที เพราะ โหนด ถูก เลือก ให้ อยู่ ใน ชุด ของ มัน เฉพาะ เมื่อ คุณ ระบุ หรือ เข้า ไป ใน ของ นั้น.

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการแยกชื่อผู้เขียน, วันที่และข้อความของทุกหมายเหตุในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### วิธี คลาย ความ เห็น ของ ผู้ ประพันธ์ ที่ ได้ กําหนด ไว้

หลังจากที่คุณได้เลือกโหนดหมายเหตุต่าง ๆ ไว้เป็นชุดสะสมแล้ว ทั้งหมดที่คุณต้องทํา คือทําการแยกเอาข้อมูลที่คุณต้องการออกไป ในตัวอย่างนี้ ตัวย่อ, วันที่, เวลา และข้อความธรรมดาของหมายเหตุ จะถูกรวมเป็นหนึ่งสตริง คุณเลือกที่จะจัดเก็บมันในรูปแบบอื่นแทน

วิธี การ ที่ ใช้ มาก เกิน ไป ซึ่ง สกัด ความ เห็น จาก ผู้ เขียน คน หนึ่ง แทบ จะ เหมือน กัน แต่ เพียง แต่ ตรวจ ดู ชื่อ ผู้ เขียน ก่อน ที่ จะ เพิ่ม ข้อมูล เข้า ไป ใน อาร์เรย์.

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีแยกชื่อผู้เขียน, วันที่และข้อความ โดยผู้เขียนที่ระบุ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### วิธี ลบ ความ เห็น

หาก คุณ กําลัง ขจัด ข้อ คิด เห็น ทุก อย่าง ออก ไป ก็ ไม่ จําเป็น ที่ จะ ย้าย ไป ที่ ข้อ คิด เห็น ที่ ลบ ออก ไป ที ละ ข้อ; คุณ สามารถ ลบ ออก ได้ โดย การ เรียก หา [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) ในชุดคอมเมนต์

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการเอาหมายเหตุทั้งหมดในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

เมื่อ คุณ จําเป็น ต้อง ขจัด ความ คิด เห็น ออก ไป กระบวนการ นี้ จะ คล้าย กับ รหัส ที่ เรา ใช้ สําหรับ การ ถอน ความ เห็น.

ตัวอย่างโค้ดต่อไปนี้แสดงถึงวิธีเอาหมายเหตุของผู้เขียนที่ระบุออกไป:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

จุด สําคัญ ที่ ต้อง เน้น คือ การ ใช้ เครื่อง มือ นี้. ไม่เหมือนกับการสกัดพื้นๆ คุณลบความคิดเห็นตรงนี้ เคล็ดลับที่เหมาะสมคือ ทําซ้ําคอลเลกชันย้อนกลับจากหมายเหตุล่าสุดไปยังหนึ่ง เหตุ ผล สําหรับ เรื่อง นี้ หาก คุณ เริ่ม จาก ที่ สุด และ ถอย หลัง ดัชนี ของ สิ่ง ที่ อยู่ ก่อน หน้า นี้ ยัง ไม่ เปลี่ยน แปลง และ คุณ สามารถ ทํา งาน ตาม วิธี ของ คุณ กลับ ไป ยัง สิ่ง แรก ใน การ เก็บ รวบ รวม.

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง วิธี การ ถอน ความ เห็น และ ขจัด:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

เมื่อเรียกใช้งาน ตัวอย่างจะแสดงผลลัพธ์ต่อไปนี้ ประการ แรก หนังสือ นี้ มี ราย ชื่อ คํา อธิบาย ทั้ง หมด ของ ผู้ เขียน ทุก คน แล้ว ก็ ลง ความ เห็น โดย ผู้ ประพันธ์ ที่ ถูก เลือก เท่า นั้น. ในที่สุดรหัสก็ลบความคิดเห็นทั้งหมด

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

เอกสารคําส่งออกได้ถูกลบออกไป:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### วิธีลบข้อความระหว่างหมายเหตุRangge Start และคําอธิบาย Rangeeld

ใช้ Aspose.Words นอกจากนี้คุณยังสามารถลบหมายเหตุระหว่าง หมายเหตุ Rangle Start และ หมายเหตุ Rangeend โหนด

ตัวอย่างโค้ดต่อไปนี้แสดงถึงวิธีเอาข้อความออก ระหว่างหมายเหตุRange Start และคําอธิบาย Ranged:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## เพิ่มหรือลบการตอบกลับ

เดอะ [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) วิธีการเพิ่มเติมคําตอบไปยังหมายเหตุนี้ โปรดสังเกตว่า เนื่องจากมีข้อจํากัดของสํานักงาน MS อยู่แล้ว มีอยู่เพียง (1) ระดับคําตอบเท่านั้น อนุญาตให้อยู่ในเอกสาร จะมีการยกข้อมูลประเภท Operation Expression ไม่ถูกต้องขึ้นหากวิธีการนี้ถูกเรียกให้แสดงความคิดเห็นในการตอบกลับที่มีอยู่แล้ว

คุณสามารถใช้ [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) วิธีการลบคําตอบกลับที่ระบุไปยังหมายเหตุนี้

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีตอบกลับไปยังหมายเหตุ และลบการตอบกลับ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## อ่านตอบกลับของหมายเหตุ

Aspose.Words รองรับการอ่านคําตอบจากหมายเหตุ เดอะ [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) คุณสมบัติต่าง ๆ จะคืนค่ากลับมาเป็นชุดสะสมของ [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) วัตถุที่เป็นเด็กๆ ในความเห็นที่ระบุไว้

ตัวอย่างรหัสต่อไปนี้ แสดงให้เห็นว่าจะทําซ้ําได้อย่างไร ผ่านการตอบกลับของความคิดเห็นและแก้ไข

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
