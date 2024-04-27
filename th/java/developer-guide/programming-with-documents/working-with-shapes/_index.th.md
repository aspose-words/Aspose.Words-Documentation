---
title: ทํางานกับรูปร่างใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับรูปร่าง
linktitle: ทํางานกับรูปร่าง
type: docs
description: "แนะ นํา ให้ มี รูป แบบ ภาษา ที่ ใช้ ใน การ สอน, สร้าง รูป แบบ ของ ชนิด ต่าง ๆ กัน โดย ใช้ Java."
weight: 280
url: /th/java/working-with-shapes/
---

หัวข้อเกี่ยวกับวิธีการทํางานโปรแกรมกับรูปทรงที่ใช้ Aspose.Words.

รูปทรงใน Aspose.Words แทน วัตถุ ชิ้น หนึ่ง ใน ชั้น วาด เช่น ออโต สแฮป, เครื่องหมาย วรรค ตอน, วัตถุ โอ แอล, การ ควบคุม การ เคลื่อน ไหว, หรือ ภาพ. เอกสาร คํา อาจ มี รูป แบบ ต่าง ๆ กัน. รูป ร่าง ของ เอกสาร แสดง โดย [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) ชั้นเรียน.

## แทรกรูปทรงโดยใช้ตัวสร้างเอกสาร

คุณสามารถแทรกรูปร่างในบรรทัดได้ โดยมีการระบุประเภทและขนาด และเปลี่ยนรูปร่างได้อย่างอิสระ โดยมีตําแหน่ง, ขนาด, และข้อความเป็นเอกสารที่ถูกระบุ [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) วิธี เดอะ **InsertShape** วิธีการช่วยแทรกรูปร่าง DML ไปยังโมเดลเอกสารได้ เอกสารจะต้องถูกบันทึกในรูปแบบ ซึ่งรองรับรูปทรง DML ไม่เช่นนั้น โหนดดังกล่าวจะถูกแปลงเป็นรูปร่างแบบ VML ขณะบันทึกเอกสาร

ตัวอย่างรหัสต่อไปนี้แสดงวิธีแทรกรูปร่างเหล่านี้เข้าไปในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## ตั้งค่าสัดส่วนที่ถูกล็อค

ใช้ Aspose.Words, คุณสามารถกําหนดสัดส่วนภาพได้โดยล็อคผ่าน [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) ทรัพย์สิน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทํางานกับ **AspectRatioLocked** คุณสมบัติ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## ตั้งค่าการจัดวางภาพในเซลล์

คุณยังสามารถกําหนดรูปร่างที่จะใช้แสดงภายในตารางหรือข้างนอกได้โดย [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) ทรัพย์สิน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทํางานกับ **IsLayoutInCell** คุณสมบัติ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## เพิ่มมุม

คุณสามารถสร้างสี่เหลี่ยมมุมได้โดยใช้ Aspose.Words. ประเภทรูปร่างคือ * SingleCorner snipped, TopCorners snipped, PhythCorners nipped, TopCorners snipped, TopCorrounded, and. *DiagonalCornersRounded.*

สร้างรูปทรง DML โดยใช้ **InsertShape** วิธีการที่มีรูปร่างเหล่านี้ ชนิดเหล่านี้ไม่สามารถใช้ในการสร้างรูปร่างแบบ VML ได้ ความพยายามที่จะสร้างรูปร่างโดยการใช้ผู้สร้างสาธารณะของคลาส "Shape" เพิ่มข้อยกเว้น "NotSupported Exception"

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการแทรกรูปร่างเหล่านี้เข้าไปในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## รับ เอา รูป ร่าง หน้า ตา

ใช้ Aspose.Words API, คุณ สามารถ ได้ ตําแหน่ง และ ขนาด ของ รูป ทรง ที่ มี บล็อก ใน จุด เมื่อ เทียบ กับ สมอ ของ รูป ทรง ยอด. เพื่อทําสิ่งนี้ ใช้ [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) ทรัพย์สิน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทํางานกับ **BoundsInPoints** คุณสมบัติ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## แสดงเส้นทางแนวตั้ง

คุณสามารถกําหนดการจัดวางข้อความทางแนวตั้งภายในรูปแบบที่ต้องการได้ [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) ทรัพย์สิน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทํางานกับ **VerticalAnchor** คุณสมบัติ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## ตรวจสอบแบบฉลาด แปรงทาสี

Aspose.Words นอกจากนี้ยังอนุญาตให้ตรวจสอบว่ารูปร่างมี `SmartArt` วัตถุ เพื่อทําสิ่งนี้ ใช้ [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) ทรัพย์สิน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทํางานกับ **HasSmartArt** คุณสมบัติ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## รูปแบบกฎทางแนวนอน

คุณสามารถแทรกกฎในแนวนอนเป็นเอกสารโดยใช้ [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) วิธี

Aspose.Words API ให้ [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) คุณสมบัติเพื่อเข้าไปในคุณสมบัติของรูปแบบกฎแนวราบ เดอะ [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) ห้องเรียนเปิดเผยคุณสมบัติพื้นฐาน เช่น ความสูง, สี, NoShade ฯลฯ สําหรับการจัดรูปแบบกฎแนวราบ

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่า **HorizontalRuleFormat**

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
