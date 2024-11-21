---
title: ทํางานร่วมกับรูปแบบและชุดตกแต่ง
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานร่วมกับรูปแบบและชุดตกแต่ง
linktitle: ทํางานร่วมกับรูปแบบและชุดตกแต่ง
description: "เพิ่มขนาด Microsoft Word คุณสมบัติการฟอร์แมต, ทํางานกับรูปแบบและชุดตกแต่งที่ใช้ Java."
type: docs
weight: 110
url: /th/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

เดอะ [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) คลาสถูกใช้เพื่อจัดการการตั้งค่าที่ผู้ใช้กําหนดมาสําหรับรูปแบบต่าง ๆ

## วิธี คลาย เนื้อหา ที่ อาศัย รูป แบบ

ในระดับที่เรียบง่าย การรับเนื้อหาจากรูปแบบจากเอกสารคํา จะมีประโยชน์ในการระบุ, รายการ และนับย่อหน้า และเรียกใช้ข้อความในรูปแบบเฉพาะ ตัว อย่าง เช่น คุณ อาจ จําเป็น ต้อง ระบุ เนื้อหา บาง อย่าง ใน เอกสาร เช่น ตัว อย่าง ชื่อ ตําแหน่ง การ อ้างอิง คํา ศัพท์ ชื่อ และ การ ศึกษา กรณี ต่าง ๆ.

เพื่อก้าวไปอีกไม่กี่ขั้น นี่ยังสามารถใช้เพื่อยกระดับโครงสร้างของเอกสารได้ ซึ่งนิยามโดยรูปแบบที่มันใช้ เพื่อเพิ่มเติมเนื้อหาของเอกสารสําหรับผลลัพธ์อื่น เช่น HTML นี่คือข้อเท็จจริงว่าเอกสารอรรถประโยชน์ สร้างขึ้นอย่างไร โดยใส่ Aspose.Words เพื่อทดสอบ เครื่องมือที่สร้างโดยใช้ Aspose.Words เก็บ เอกสาร เกี่ยว กับ พระ คํา ที่ มา จาก แหล่ง นั้น และ แบ่ง เป็น หัวข้อ บาง เรื่อง ใน ระดับ หัว เรื่อง. แฟ้ม XML ถูกสร้างโดยใช้ Aspose.Words ซึ่งใช้สร้างต้นไม้นําทางที่คุณเห็นอยู่ทางซ้าย และจากนั้น Aspose.Words แปลงหัวข้อแต่ละหัวข้อเป็น HTML วิธี หา ข้อ ความ ที่ มี รูป แบบ เฉพาะ ใน เอกสาร คํา มัก จะ ใช้ อย่าง ประหยัด และ ตรง ไป ตรง มา Aspose.Words.

เพื่ออธิบายว่ามันง่ายแค่ไหน Aspose.Words คุณ จะ ตอบ อย่าง ไร? ตัว อย่าง นี้ เรา จะ มา รับ ข้อ ความ โดย ดู จาก แบบ ย่อ และ แบบ อักขระ จาก เอกสาร ตัว อย่าง คํา.

ใน ระดับ สูง เรื่อง นี้ จะ เกี่ยว ข้อง กับ:

1 กําลังเปิดเอกสารคําโดยใช้ [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ชั้นเรียน.
1 การรับสะสมของทุก ๆ ย่อหน้า และทั้งหมดทํางานในเอกสาร
1 เลือกเฉพาะย่อหน้าที่ต้องการแล้วทํางาน

โดย เฉพาะ อย่าง ยิ่ง เรา จะ ได้ ข้อ ความ ที่ มี ราย ละเอียด โดย ‘ แบบ ย่อ ของ วรรค 1 และ ‘ ลักษณะ นิสัย ของ เอ็ม ฟา ซิส ที่ มี ความ สําคัญ จาก เอกสาร ตัว อย่าง คํา นี้

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

ในเอกสารตัวอย่างนี้ ข้อความที่มีรูปแบบ ‘Hading 1 paragraphy', ‘inst Tabs', ‘ Quick Stodes', และ ‘Theme', และเนื้อหาที่มีรูปแบบ ‘การเน้นความเน้นของตัวละคร คือหลายกรณีของอักษรสีฟ้า, ตัวเอียง, ตัวหนังสือหนา เช่น ‘ลักษณะสัญลักษณ์' และ 'มองผ่าน

แนวทางของการสอบถามตามสไตล์ค่อนข้างง่ายใน Aspose.Words เอกสารตัวอย่างออบเจ็กต์ เนื่องจากมันใช้เครื่องมือที่อยู่ในตําแหน่งอยู่แล้ว มี การ นํา วิธี การ สอง แบบ มา ใช้ เพื่อ แก้ ปัญหา นี้:

1 **ParagraphsByStyleName** - วิธีการนี้ จะทําการดึงข้อมูลลําดับของย่อหน้าต่าง ๆ ในเอกสารที่มีชื่อรูปแบบเฉพาะ
1 **RunsByStyleName** - วิธีการนี้ จะเรียกข้อมูลลําดับของตัวที่ประมวลผลในเอกสารที่มีชื่อรูปแบบเฉพาะ

ทั้ง สอง วิธี นี้ คล้าย กัน มาก มี ความ แตก ต่าง กัน เพียง อย่าง เดียว คือ ชนิด โหนด และ การ แสดง ข้อมูล รูป แบบ ภาย ใน วรรค และ การ ใช้ โหนด. นี่เป็นการจัดรูปแบบย่อหน้า BysByleName แสดงอยู่ในตัวอย่างรหัสต่าง ๆ ที่ให้ด้านล่างนี้ เพื่อค้นหาทุก ๆ parts แบบที่กําหนด

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

การปฏิบัตินี้ยังใช้ [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) วิธีการ `Document` ห้องเรียนซึ่งจะคืนค่าสะสมของโหนดเด็กทันที

นอก จาก นั้น ควร ชี้ ให้ เห็น ว่า การ เก็บ วรรค ต่าง ๆ ไม่ ได้ ทํา ให้ อยู่ เหนือ ศีรษะ ทันที เพราะ มี การ บรรจุ วรรค ต่าง ๆ เข้า ไป ใน คอลเลกชัน นี้ เฉพาะ เมื่อ คุณ เข้า ไป ใน ของ เหล่า นั้น เท่า นั้น. แล้วสิ่งที่คุณต้องทําทั้งหมดก็คือ ผ่านชุดสะสม โดยใช้มาตรฐานสําหรับแต่ละโอเปอเรเตอร์ และเพิ่มย่อหน้าที่มีรูปแบบที่ระบุไปยังย่อหน้า โรยยาง เดอะ `Paragraph` พบชื่อรูปแบบใน [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) สมบัติของ [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) วัตถุ

การ จัด ระเบียบ ของ การ วิ่ง ไบ ส ไทล์ `NodeType.Run` เพื่อรับโหนดที่ทํางาน เดอะ [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) คุณสมบัติของ [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) วัตถุถูกใช้เพื่อเข้าถึงข้อมูลรูปแบบใน **Run** โหนด

ตัวอย่างรหัสต่อไปนี้ จะพบว่าทั้งหมดทํางานในรูปแบบที่ระบุ

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

เมื่อมีการปรับใช้ข้อมูลทั้งคู่แล้ว สิ่งที่คุณต้องทําทั้งหมดก็คือ การส่งเอกสารและระบุชื่อรูปแบบของเนื้อหาที่คุณต้องการจะเรียกใช้:

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้ จะทํางาน squery และแสดงผลลัพธ์

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

เมื่อทุก ๆ สิ่งเสร็จแล้ว การประมวลผลตัวอย่าง จะแสดงผลลัพธ์ต่อไปนี้:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

อย่างที่คุณเห็น นี่เป็นตัวอย่างที่ง่ายมากๆ โดยแสดงจํานวนและข้อความ ของย่อหน้าที่เก็บมา แล้วแสดงในเอกสารตัวอย่างคํา

## แทรกรูปแบบสัญลักษณ์ที่จะใช้รูปแบบย่อหน้าที่แตกต่างกัน

ตัวแบ่งรูปแบบสามารถถูกเพิ่มไปยังท้ายย่อหน้าได้ โดยใช้ Ctrl + Alt + ใส่ปุ่มพิมพ์ลัดเข้าไปใน MSW บทความ นี้ เปิด ช่อง ให้ มี สอง ย่อ ย่อ ต่าง กัน ซึ่ง ใช้ ใน วรรค เดียว อย่าง มี เหตุ ผล. หาก คุณ ต้องการ ให้ มี ข้อ ความ บาง ตอน จาก ตอน เริ่ม ต้น ของ หัว เรื่อง ใด เรื่อง หนึ่ง ปรากฏ ใน สารบัญ แต่ ไม่ ต้องการ ให้ มี หัว เรื่อง ทั้ง หมด ใน สารบัญ คุณ อาจ ใช้ บทความ นี้ ได้

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ ใส่ ตัว กําหนด แบบ วรรค ต่าง ๆ

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## คัดลอกรูปแบบทั้งหมดจากแม่แบบ

มีหลายกรณีเมื่อคุณต้องการคัดลอกรูปแบบทั้งหมด จากเอกสารหนึ่งไปยังอีกเอกสารหนึ่ง คุณสามารถใช้ `Document.CopyStylesFromTemplate` วิธีการคัดลอกรูปแบบจากแม่แบบที่ระบุไปยังเอกสาร เมื่อมีการคัดลอกรูปแบบจากเอกสารต้นแบบไปยังเอกสาร รูปแบบที่มีชื่อในเอกสารนั้น จะถูกนิยามใหม่ให้ตรงกับลักษณะคําบรรยายในแม่แบบ รูปแบบเฉพาะจากเอกสารต้นแบบจะถูกคัดลอกไปยังเอกสาร รูปแบบที่ไม่ซ้ํากันในเอกสารยังคงอยู่

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ถึง วิธี ที่ จะ เลียน แบบ แบบ แบบ จาก เอกสาร หนึ่ง ไป เป็น อีก เอกสาร หนึ่ง.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## วิธี ทํา ให้ ตัว เอง มี ความ สุข คุณสมบัติของชุดตกแต่ง

เราได้เพิ่มพื้นฐาน API ใน Aspose.Words เพื่อเข้าถึงคุณสมบัติของชุดตกแต่งของเอกสาร สําหรับตอนนี้ API รวมทั้งวัตถุสาธารณะต่อไปนี้

- ชุดตกแต่ง
- ชุดตกแต่ง
- สีของชุดตกแต่ง

นี่เป็นวิธีที่คุณจะได้รับคุณสมบัติของชุดตกแต่ง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

และนี่คือวิธีที่คุณสามารถตั้งค่าคุณสมบัติของชุดตกแต่ง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
