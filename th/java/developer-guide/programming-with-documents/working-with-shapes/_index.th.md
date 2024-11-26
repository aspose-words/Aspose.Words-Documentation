---
title: การทำงานกับรูปร่างในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับรูปร่าง
linktitle: การทำงานกับรูปร่าง
type: docs
description: "รู้เบื้องต้นเกี่ยวกับภาษามาร์กอัปสร้างรูปร่างที่แตกต่างกันโดยใช้Java."
weight: 280
url: /th/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

หัวข้อนี้อธิบายถึงวิธีการทำงานตามโปรแกรมที่มีรูปร่างโดยใช้Aspose.Words.

รูปร่างในAspose.Wordsเป็นตัวแทนของวัตถุในเลเยอร์รูปวาดเช่นAutoShape,กล่องข้อความ,แบบอิสระ,OLEวัตถุ,การควบ เอกสารคำสามารถประกอบด้วยรูปทรงที่แตกต่างกันอย่างน้อยหนึ่ง รูปร่างของเอกสารจะแสดงโดยคลาส[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/).

## แทรกรูปร่างโดยใช้ตัวสร้างเอกสาร

คุณสามารถแทรกรูปร่างแบบอินไลน์ที่มีชนิดและขนาดที่ระบุและรูปร่างแบบลอยตัวได้ด้วยตำแหน่งขนาดและชนิดการตัดข้อความที่ระบุในเอกสารโดยใช้วิธีการ[InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) วิธี**InsertShape**อนุญาตให้แทรกDMLรูปร่างลงในโมเดลเอกสาร เอกสารจะต้องถูกบันทึกในรูปแบบที่รองรับDMLรูปร่างมิฉะนั้นโหนดดังกล่าวจะถูกแปลงเป็นVMLรูปร่างในขณะที่บันทึกเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกรูปร่างชนิดนี้ลงในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## ตั้งค่าอัตราส่วนภาพล็อค

ใช้Aspose.Wordsคุณสามารถระบุว่าอัตราส่วนของรูปร่างถูกล็อคผ่านคุณสมบัติ[AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ**AspectRatioLocked**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## ตั้งรูปแบบรูปร่างในเซลล์

นอกจากนี้คุณยังสามารถระบุว่ารูปร่างจะแสดงภายในตารางหรือภายนอกโดยใช้คุณสมบัติ[IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ**IsLayoutInCell**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## เพิ่มมุมตัด

คุณสามารถสร้างสี่เหลี่ยมมุมตัดด้วยAspose.Words ประเภทรูปร่างคือ*SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,*และ*DiagonalCornersRounded.*

รูปร่างDMLถูกสร้างขึ้นโดยใช้วิธีการ**InsertShape**กับประเภทรูปร่างเหล่านี้ ชนิดเหล่านี้ไม่สามารถใช้เพื่อสร้างVMLรูปร่าง พยายามที่จะสร้างรูปร่างโดยใช้ตัวสร้างสาธารณะของชั้นเรียน"รูปร่าง"เพิ่มข้อยกเว้น"NotSupportedException".

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกชนิดของรูปร่างเหล่านี้ลงในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## รับรูปร่างขอบเขตที่เกิดขึ้นจริงจุด

ใช้Aspose.WordsAPIคุณจะได้รับตำแหน่งและขนาดของรูปร่างที่มีบล็อกในจุดเมื่อเทียบกับสมอของรูปร่างบ เมื่อต้องการทำเช่นนี้ให้ใช้คุณสมบัติ[BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ**BoundsInPoints**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## ระบุสมอแนวตั้ง

คุณสามารถระบุการจัดตำแหน่งข้อความในแนวตั้งภายในรูปร่างโดยใช้คุณสมบัติ[VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ**VerticalAnchor**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## ตรวจหาSmartArtรูปร่าง

Aspose.Wordsยังช่วยให้การตรวจสอบว่ารูปร่างมีวัตถุ`SmartArt` เมื่อต้องการทำเช่นนี้ให้ใช้คุณสมบัติ[HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ**HasSmartArt**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## รูปแบบกฎแนวนอน

คุณสามารถแทรกรูปร่างกฎแนวนอนลงในเอกสารโดยใช้วิธีการ[InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule).

Aspose.WordsAPIให้[HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat)คุณสมบัติในการเข้าถึงคุณสมบัติของรูปร่างกฎแนวนอน [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/)ชั้นแสดงคุณสมบัติพื้นฐานเช่นความสูง,สี,NoShadeฯลฯ สำหรับการจัดรูปแบบของกฎแนวนอน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่า**HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
