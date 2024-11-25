---
title: การทำงานกับรูปแบบและธีม
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับรูปแบบและธีม
linktitle: การทำงานกับรูปแบบและธีม
description: "ปรับปรุงฟีเจอร์การจัดรูปแบบMicrosoft Wordการทำงานกับสไตล์และธีมโดยใช้Java."
type: docs
weight: 110
url: /th/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

คลาส[StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/)จะใช้ในการจัดการในตัวและใช้การตั้งค่าที่ผู้ใช้กำหนดกับรูปแบบ.

## วิธีการแยกเนื้อหาตามรูปแบบ

ในระดับง่ายเรียกเนื้อหาตามลักษณะจากเอกสารคำจะมีประโยชน์ในการระบุรายการแล ตัวอย่างเช่นคุณอาจต้องระบุชนิดของเนื้อหาในเอกสารเช่นตัวอย่างชื่ออ้างอิงคำสำคัญชื่อ.

เพื่อใช้ขั้นตอนต่อไปนี้อีกสองสามขั้นตอนนอกจากนี้ยังสามารถใช้เพื่อใช้ประโยชน์จากโครงสร้างของเอกสารที่กำหนดโดยสไตล์ที่ใช้เพื่อวัตถุประสงค์เอกสารใหม่สำหรับเอาต์พุตอื่นเช่นHTML ในความเป็นจริงวิธีการสร้างเอกสารแอสโพส,วางAspose.Wordsเพื่อทดสอบ. เครื่องมือที่สร้างขึ้นโดยใช้Aspose.Wordsจะใช้เอกสารคำต้นฉบับและแยกออกเป็นหัวข้อในระดับหัวข้อ ไฟล์XMLถูกผลิตโดยใช้Aspose.Wordsซึ่งใช้ในการสร้างต้นไม้นำทางที่คุณสามารถดูได้ทางด้านซ้าย แล้วAspose.Wordsแปลงแต่ละหัวข้อในHTML การแก้ปัญหาสำหรับการดึงข้อความที่จัดรูปแบบด้วยลักษณะเฉพาะในเอกสารคำโดยทั่วไปจะประหยัดและตรงไปตรงมาโดยใช้Aspose.Words.

เพื่อแสดงให้เห็นAspose.Wordsจัดการกับการดึงเนื้อหาตามสไตล์ได้อย่างง่ายดายเพียงใดลองดูตัวอย่าง ในตัวอย่างนี้เรากำลังจะดึงข้อความที่จัดรูปแบบด้วยลักษณะย่อหน้าเฉพาะและลักษณะตัวอัก.

ในระดับสูงนี้จะเกี่ยวข้องกับ:

1. การเปิดเอกสารคำโดยใช้คลาส[Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. การรับคอลเล็กชันของย่อหน้าทั้งหมดและทั้งหมดทำงานในเอกสาร.
1. เลือกเฉพาะย่อหน้าที่ต้องการและรัน.

โดยเฉพาะอย่างยิ่งเราจะดึงข้อความที่จัดรูปแบบด้วยรูปแบบย่อหน้า'Heading 1'และรูปแบบตัวอักษร'เน้

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

ในเอกสารตัวอย่างนี้ข้อความที่จัดรูปแบบด้วยสไตล์'Heading 1'ย่อหน้าคือ'แทรกแท็บ','รูปแบบด่วน'และ'ธีม'และข้อความที่จัดรูปแบบด้วยรูปแบบอักขระ'เน้นเข้มข้น'คือข้อความที่เป็นตัวหนาหลายอินสแตนซ์เช่น'แกลเลอรี่'และ'รูปลักษณ์โดยรวม'.

การดำเนินงานของแบบสอบถามตามสไตล์ค่อนข้างง่ายในแบบจำลองวัตถุเอกสารAspose.Wordsเนื่องจ สองวิธีการระดับจะดำเนินการสำหรับการแก้ปัญหานี้:

1. **ParagraphsByStyleName**-วิธีนี้จะดึงอาร์เรย์ของย่อหน้าเหล่านั้นในเอกสารที่มีชื่อสไตล์ที่เฉพาะเจาะจง.
1. **RunsByStyleName**-เมธอดนี้จะดึงอาร์เรย์ของผู้ที่รันในเอกสารที่มีชื่อสไตล์ที่เฉพาะเจาะจง.

ทั้งสองวิธีเหล่านี้จะคล้ายกันมากความแตกต่างเพียงอย่างเดียวคือชนิดโหนดและการแส นี่คือการดำเนินการของParagraphsByStyleNameที่แสดงในตัวอย่างรหัสที่ระบุไว้ด้านล่างเพื่อหาย่อหน้าทั้งหมดที่จัดรูปแบบด้วยสไตล์ที่ระบุ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

การใช้งานนี้ยังใช้วิธีการ[Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes)ของคลาสของ`Document`ซึ่งส่งคืนคอลเล็กชันของโหนดย่อยทันทีทั้งหมด.

นอกจากนี้ยังมีมูลค่าชี้ให้เห็นว่าคอลเลกชันย่อหน้าไม่ได้สร้างค่าใช้จ่ายทันทีเนื่องจากย่อหย่อหน้าที่มีลักษณะที่ระบุไว้ในอาร์เรย์paragraphsWithStyle ชื่อลักษณะ`Paragraph`สามารถพบได้ในคุณสมบัติ[Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName)ของออบเจกต์[Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat).

การดำเนินงานของRunsByStyleNameเกือบจะเหมือนกันแม้ว่าเราจะเห็นได้ชัดว่าใช้`NodeType.Run`เพื่อดึงโหนดเรียกใช้ คุณสมบัติ[Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle)ของออบเจกต์[Run](https://reference.aspose.com/words/java/com.aspose.words/run/)ถูกใช้เพื่อเข้าถึงข้อมูลลักษณะในโหนด**Run**

ตัวอย่างรหัสต่อไปนี้พบการทำงานทั้งหมดที่จัดรูปแบบด้วยลักษณะที่ระบุ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

เมื่อทั้งสองแบบสอบถามถูกนำมาใช้ทั้งหมดที่คุณต้องทำคือการส่งผ่านวัตถุเอกสารและระบุชื่:

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้เรียกใช้แบบสอบถามและแสดงผลลัพธ์.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

เมื่อทุกอย่างเสร็จสิ้นการทำงานตัวอย่างจะแสดงผลลัพธ์ต่อไปนี้:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

ที่คุณสามารถดูนี้เป็นตัวอย่างที่ง่ายมากแสดงให้เห็นจำนวนและข้อความของย่อหน้าที่รวบร.

## แทรกตัวคั่นสไตล์ที่จะนำรูปแบบที่แตกต่างกันย่อหน้า

สามารถเพิ่มตัวคั่นลักษณะไปยังส่วนท้ายของย่อหน้าได้โดยใช้แป้นพิมพ์ลัดMSคำ คุณลักษณะนี้ช่วยให้ลักษณะย่อหน้าต่างๆสองใช้ในย่อหน้าตรรกะหนึ่งพิมพ์ หากคุณต้องการให้ข้อความจากจุดเริ่มต้นของหัวข้อเฉพาะปรากฏในสารบัญแต่ไม่ต้องการ

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกตัวคั่นลักษณะที่จะใส่ลักษณะย่อหน้าที่แตกต่างกัน

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## คัดลอกสไตล์ทั้งหมดจากแม่แบบ

มีกรณีเมื่อคุณต้องการคัดลอกลักษณะทั้งหมดจากเอกสารหนึ่งไปยังอีก คุณสามารถใช้วิธีการ`Document.CopyStylesFromTemplate`เพื่อคัดลอกลักษณะจากเทมเพลตที่ระบุไปยังเอกสาร เมื่อสไตล์ถูกคัดลอกจากเทมเพลทไปยังเอกสารลักษณะที่เหมือนชื่อในเอกสารจะถูกนิยาม รูปแบบที่ไม่ซ้ำกันจากแม่แบบจะถูกคัดลอกไปยังเอกสาร รูปแบบที่ไม่ซ้ำกันในเอกสารยังคงเหมือนเดิม

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการคัดลอกลักษณะจากเอกสารหนึ่งไปยังอีก.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## วิธีการจัดการคุณสมบัติของชุดรูปแบบ

เราได้เพิ่มขั้นพื้นฐานAPIในAspose.Wordsในการเข้าถึงคุณสมบัติของชุดรูปแบบเอกสาร สำหรับตอนนี้APIนี้มีวัตถุสาธารณะต่อไปนี้:

- ธีม
- ThemeFonts
- ThemeColors

นี่คือวิธีที่คุณจะได้รับคุณสมบัติของชุดรูปแบบ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

และนี่คือวิธีที่คุณสามารถตั้งค่าคุณสมบัติของชุดรูปแบบ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
