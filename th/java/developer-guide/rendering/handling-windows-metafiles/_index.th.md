---
title: การจัดการ Windows ชื่อแฟ้มกํากับใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: การจัดการ Windows ชื่อแฟ้มกํากับ
linktitle: การจัดการ Windows ชื่อแฟ้มกํากับ
description: "Aspose.Words สําหรับ Java ใช้ได้เอง Windows โปรแกรมเล่น เมต้าไฟล์ เพื่อเล่นรูปแบบ metfile บนแพลตฟอร์มทั้งหมด และรองรับการจัดการแฟ้มกํากับพื้นฐาน และสามารถทําความล้มเหลวกับเครื่องเล่นเมต้าชนิดอื่นได้"
type: docs
weight: 30
url: /th/java/handling-windows-metafiles/
---

Windows รูปแบบ metafile เป็นรูปแบบอิมเมจที่สามารถบรรจุทั้งเวกเตอร์และกราฟฟิกได้ รูปแบบนี้จะใช้ในการจัดเก็บข้อมูลกราฟิกในหน่วยความจําหรือแฟ้มบนดิสก์ แฟ้มภาพประเภทย่อย Windows ส่วนติดต่อผู้ใช้แบบกราฟิก (GDI) ที่จะต้องประมวลผลเพื่อแสดงภาพบนหน้าจอ ระบบ นี้ ตี ความ และ ปฏิบัติ ตาม คํา สั่ง เหล่า นี้ ใน บริบท ของ การ แสดง.

ก่อนหน้านี้ Windows แฟ้มภาพกํากับเป็นรูปแบบแฟ้มของเวกเตอร์เดียวที่รองรับ Microsoft Word. Microsoft Word ตอนนี้ยังรองรับรูปแบบแฟ้มแบบ SVG อีกด้วย แต่รูปแบบ metrafile ยังคงถูกใช้โดยทั่วไปในเอกสารคํา นอกจากนี้ เมต้าไฟล์อาจเป็นรูปแบบการสลับกันของโปรแกรมอื่น เช่น Microsoft วิซิโอ โดยพื้นฐานแล้ว วัตถุประสงค์หลักของแฟ้มกํากับคือ เพื่อตรวจสอบการแลกเปลี่ยนข้อมูลกราฟิกระหว่าง Windows ใบสมัคร

มี 3 รุ่น Windows แฟ้มกํากับ:

- WMF. ร้านค้าโทร 16 บิต จีดีไอ.
- EMF – ร้านโทร.หา Win32/GDI.
- ร้านขายแฟ้ม EMF+ เรียกที่ GDI+ EMF+ Metfile อาจจะถูกจับคู่ด้วย โดยบรรยายกราฟฟิกเดียวกันด้วยทั้ง EMF และ EMF+

ปัญหาที่มีอยู่แล้ว Windows แฟ้มกํากับคือแฟ้มนี้ไม่ถูกรองรับจากรูปแบบที่ไม่ใช่แฟ้ม Word ส่วนใหญ่ ซึ่งโดยทั่วไปแล้วจะถูกบันทึกเป็นเอกสาร ดังนั้น จึงจําเป็นต้องแปลงรูปแบบ เมต้าไฟล์ เป็นรูปแบบราสเตอร์หรือเวกเตอร์อื่น ๆ การแปลงง่าย Windows ชื่อแฟ้มกํากับไปยังอิมเมจราสเตอร์บน .NET โดยเพียงแค่ส่งมันไปยัง GDI+ แต่มันเป็นไปไม่ได้ในแพลตฟอร์มอื่น ๆ เนื่องจากแม้กระทั่ง GDI+ ไม่ได้ให้ความสามารถในการแยกกราฟฟิกของเวกเตอร์ออกจากแฟ้มเมต้า เพื่อแก้ปัญหาเหล่านี้ Aspose.Words ใช้ได้เอง Windows ผู้เล่น metafile ซึ่งสามารถเล่น Metfile ได้ทั้งรูปแบบทั้งของเวกเตอร์และกราฟฟิกในทุกแพลตฟอร์ม

## ควบคุม Aspose.Words โปรแกรมเล่นแฟ้มกํากับ

เดอะ [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) คลาสช่วยให้คุณสามารถควบคุมเครื่องเล่นเมต้าได้ ตัวอย่างเช่น คุณสามารถกําหนดว่าภาพต่าง ๆ ควรจะถูกแก้ไขอย่างไร โดยใช้ [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) ทรัพย์สินซึ่งมีความหมายพิเศษเมื่อแปลงเป็นบิตแมพ (ดูที่ [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) ทรัพย์สิน).

## การ สนับสนุน การ ดําเนิน งาน แบบ ราสเตอร์

การดําเนินงานแบบราสเตอร์เป็นองค์ประกอบ เมต้าไฟล์ที่ซับซ้อน ซึ่งปัจจุบันมีการสนับสนุนอย่างจํากัด การปฏิบัติการของราสเตอร์มีอยู่ในรูปแบบ metiofile ของ WMF และ EMF รูปแบบ metafile ของ EMF+ ไม่สามารถใช้ปฏิบัติการ rasser โดยตรง แต่สามารถบรรจุส่วนของ EMF ได้ ฝังแฟ้มกํากับของ WMF หรือ EMF

มีการดําเนินงานแบบไบนารีและเทอร์เนรี่ ราสเตอร์

- การดําเนินงานแบบไบนารี ราสเตอร์ ถูกนําไปใช้กับคําสั่งวาดปากกา เช่น การวาดเส้นและเส้นโค้ง เมื่อวาดเส้น, สีปากกาจะถูกรวมเข้ากับสีของบิตแมพปลายทาง (สีของพิกเซลที่ตรงกับพื้นผิวของอุปกรณ์) โดยใช้การประมวลผลตามตรรกะบิตตามค่าสีที่ระบุไว้ ตัว อย่าง ภาพ ข้าง ล่าง นี้ แสดง ให้ เห็น ถึง ผล ของ การ ดําเนิน งาน ทั้ง 16 ชิ้น ที่ ใช้ กับ แถบ สี ต่าง กัน 20 แถบ. แท่ง สี ใน แนว นอน จะ ถูก วาด ก่อน หลัง จาก ที่ ใช้ แท่ง มีดโกน แบบ ไบ แซน ไทน์. สําหรับคดีง่ายๆ R2_BLACK วาดสีดํา R2แ_ทรกกลับสี R2_NOP ไม่สามารถเปลี่ยนพื้นหลัง และ R2_WHITE วาดสีขาว

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- เทอร์นารี่ ราสเตอร์ เปิดใช้งานเมื่อวาดภาพบิตแมป พวกเขาผสมสีของพิกเซลบิตแมพ, แปรง, และบิตแมพปลายทาง โดยการใช้การคํานวณตามตรรกะเล็กน้อย กับค่าสีที่ระบุไว้ หนึ่งในวัตถุประสงค์ที่นิยมมากที่สุดในการใช้ปฏิบัติการเทอร์นารี่ราสเตอร์ คือการจําลองความโปร่งใส ภาพ ที่ มี อยู่ ใน ตัว อย่าง ข้าง ล่าง นี้ แสดง ให้ เห็น ว่า สามารถ เลียน แบบ ความโปร่งใส ของ ไอคอน ได้ อย่าง ไร. มีบิตแมพอยู่สองประเภท คือ บิตแมพแบบ b/w และสีบิตแมพ อย่างแรก หน้ากากบิตแมป ถูกวาดด้วยปฏิบัติการ SRCAND Raster มันเปลี่ยนขอบเขตของไอคอนโอเปกเป็นสีขาวดํา ทําให้พื้นที่โปร่งใสไม่เปลี่ยนแปลง แล้วบิตแมพที่สองจะวาดด้วยปฏิบัติการ SRCNVERT raster มันแสดงจุดสีบนพื้นที่ดํา ทําให้พื้นที่สีโปร่งใสไม่เปลี่ยนแปลง

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

การดําเนินการแบบราสเตอร์ไม่สามารถแปลงเป็นเวกเตอร์กราฟฟิกได้โดยตรง Aspose.Words การ ทํา งาน ของ เครื่อง ยนต์ เพื่อจุดประสงค์นี้ [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) มี การ ใช้ ทรัพย์ สิน.

{{% alert color="primary" %}}

แม้ว่าการดําเนินงานแบบราสเตอร์ไบนารีจะยังไม่ได้รับการสนับสนุนอยู่ก็ตาม แต่ปฏิบัติการราสเตอร์จํานวนจํากัดนั้นยังสนับสนุนโดย Aspose.Words, มันสามารถจัดการกรณีพื้นฐาน ของการแปลงเป็นเวกเตอร์กราฟฟิก ตัวอย่างเช่น R2_BLACK, R2_WHITE, R2_NOP. นอก จาก นั้น การ ใช้ พื้น ผิว ของ อุปกรณ์ นั้น มี ผล กระทบ อย่าง มาก ต่อ การ กระทํา โดย เฉพาะ อย่าง ยิ่ง เมื่อ มี การ บันทึก จํานวน มาก มาย เกี่ยว กับ การ ดําเนิน งาน ของ รา ส เตอร์.

{{% /alert %}}

ตัว อย่าง ที่ แสดง ไว้ ข้าง ล่าง นี้ แสดง ถึง วิธี ที่ Aspose.Words แปลเอกสารกํากับเป็นบิตแมปเมื่อไม่สามารถแปลข้อมูล เมต้าไฟล์บางส่วนเป็นกราฟิกของเวกเตอร์ได้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
