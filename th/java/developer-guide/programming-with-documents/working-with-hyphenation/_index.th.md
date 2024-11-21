---
title: ทํางานกับการสะกดจิต Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับการสะกดจิต
linktitle: ทํางานกับการสะกดจิต
description: "ใช้ การ เรียง ข้อ ความ ให้ เป็น รูป หมู่ มาก ขึ้น. มันให้อัลกอริธึมขั้นสูงในการทํางานกับพจนานุกรมคุณภาพสูง โดยใช้พจนานุกรม OpenOffice โดยใช้ Java."
type: docs
weight: 220
url: /th/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

บาง ครั้ง จําเป็น ต้อง ใช้ เครื่อง ประดับ สําหรับ การ จัด เรียง ข้อ ความ ให้ กระชับ ขึ้น ใน เอกสาร. ใน ขณะ เดียว กัน นับ ว่า สําคัญ ที่ จะ เข้าใจ ว่า คํา ที่ เฉพาะ เจาะจง ใน การ ปรับ ปรุง อาจ แตก ต่าง กัน ไป ใน แต่ ละ ภาษา.

ใน เวลา นี้ ไม่ มี การ ใช้ ไฮเฟชัน บ่อย เท่า ที่ เคย ใช้ โดย เฉพาะ ใน ข้อ ความ ภาษา อังกฤษ. อย่าง ไร ก็ ตาม การ ใช้ คุณสมบัติ นี้ อาจ มี ผล กระทบ อย่าง ร้าย แรง ต่อ เอกสาร ของ ผู้ ใช้ – การ ปรับ ปรุง ให้ ดี ขึ้น มี ผล กระทบ ต่อ ผัง และ ยัง ผล ให้ มี การ ปรากฏ ของ แฟ้ม ที่ ส่ง ออก ใน รูป แบบ PDF.

สําหรับการตัดคําที่ถูกต้อง มีการใช้พจนานุกรมเกี่ยวกับภาษาเฉพาะ Aspose.Words ใช้อัลกอริธึมขั้นสูงในการทํางานกับพจนานุกรมดังกล่าว และช่วยให้คุณได้รับความสูงส่งเช่นเดียวกับใน Microsoft Word.

## ผู้ พยากรณ์ เท็จ

เนื่อง จาก ภาษา ต่าง ๆ ใช้ บรรทัดฐาน และ กฎ ต่าง ๆ สําหรับ คํา ว่า ไฮเฟชั่น วิธี แก้ ที่ เหมาะ ที่ สุด สําหรับ การ ปรับ ปรุง ให้ ถูก ต้อง คือ ใช้ พจนานุกรม พิเศษ. Aspose.Words ใช้พจนานุกรม OpenOffice

สําหรับการตรวจสอบคําสะกด OpenOffice ใช้ [Hunspell ไลบรารี](https://hunspell.github.io/), ซึ่งเป็นการทั่วไปของอัลกอริธึมการเจริญพันธุ์ของเทกซ์ อัลกอริธึมนี้ อนุญาตให้มีการเพิ่มความไม่มาตรฐานโดยอัตโนมัติ โดยใช้รูปแบบมาตรฐานการแข่งขันและรูปแบบการผสมเทียมที่กําหนดเอง Hunspell ใช้ [& ขาว](https://github.com/hunspell/hyphen) เพื่อความสดชื่น

{{% alert color="primary" %}}

พจนานุกรมการสะกดจิตสามารถเอาออกมาจาก [LibreOffice พจนานุกรม GitHub](https://github.com/LibreOffice/dictionaries). ยกตัวอย่างเช่น [พจนานุกรมภาษาไทย](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

เป็น Microsoft Word ใช้พจนานุกรมอื่นนอกเหนือจาก OpenOfficeOffice เพื่อแสดงความอิ่มตัว, การเติมคําบางคําที่นิยามโดยพจนานุกรม OpenOffice อาจแตกต่างจาก Microsoft Word ความอิ่มตัว ด้วยเหตุผลนี้ บางครั้งเราต้องแนะนําลูกค้า ให้เพิ่มรูปแบบที่จําเป็นในพจนานุกรมของพวกเขา เพื่อแก้ไขความสูงส่งของคําเฉพาะ

{{% /alert %}}

## อัลกอริธึม

Aspose.Words อุปกรณ์ [2557) (พ.ศ. เทกซ์](https://github.com/hunspell/hyphen/blob/master/README.hyphen) และสามารถใช้พจนานุกรมของOffice ใหม่

คุณสมบัติต่อไปนี้ของ Aspose.Words ควร คํานึง ถึงอัลกอริทึม:

* พารามิเตอร์ของระยะห่าง (LEFFFEMANN, rightHyphenine, COMแพทริก COMProughREHEPHELENNMIN) ที่ระบุไว้ในพจนานุกรมคุณภาพสูงถูกละเลย Aspose.Words ใช้ชุดพารามิเตอร์ของระยะห่างของมัน ขึ้นอยู่กับโหมดความเข้ากันได้ของเอกสาร
* อัลกอริธึมไฮเฟชันใน Aspose.Words สนับสนุน [ผสมความอิ่มตัว](https://github.com/hunspell/hyphen/blob/master/README.compound). อย่างไรก็ตาม Aspose.Words แยกลําดับตัวอักษรที่มีตัวอักษรผสมกัน และไม่ตรงตัวอักษร เป็นส่วนของตัวอักษรเฉพาะ (คํา) และแยกพวกมันออกจากกัน
  สังเกตว่า Microsoft Word ตรรกะของการเติมคําทบต้นขึ้น ขึ้นอยู่กับวิธีการประกอบเอกสาร
* อัลกอริธึมไฮเฟชันใน Aspose.Words ไม่ได้กําหนด [ความสูงไม่มาตรฐาน](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). รูปแบบการไม่มาตรฐานถูกละเลย

## กําลังโหลดตัวแบ่งประเภท

เพื่อใช้คุณสมบัติการเจริญพันธุ์ การลงทะเบียนพจนานุกรมไฮฟีเนชั่นครั้งแรก ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการโหลดพจนานุกรมการเพิ่มข้อมูล สําหรับภาษาที่ระบุจากแฟ้ม:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้ แสดงวิธีการโหลดพจนานุกรมการเพิ่มความเข้มของภาษาที่ระบุจากกระแส:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

เพื่อเป็นทางเลือกอื่นแทนพจนานุกรมการชดเชยก่อนการขึ้นทะเบียน จึงเป็นไปได้ที่จะลงทะเบียนเฉพาะความต้องการไฮเฟเนชั่นเท่านั้น เพื่อบรรลุเป้าหมายนั้น [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) ส่วนติดต่อผู้ใช้และใช้การเรียกแบบคงที่ [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดําเนินการ **IHyphenationCallback** ส่วนติดต่อ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## ผล กระทบ ของ การ มี รูป ร่าง หน้า ตา

เมื่อแบ่งข้อความเป็นบรรทัด Aspose.Words ตรวจแต่ละคําว่าพอดีกับบรรทัดปัจจุบันหรือไม่ หากคําอื่นยาวเกินไปที่จะพอดีที่ปลายบรรทัด, โดยปริยาย Aspose.Words ย้ายมันไปยังจุดเริ่มต้นของบรรทัดต่อไปแทนการไฮเฟเนชัน

อย่างไรก็ตาม คุณสมบัติการเจริญพันธุ์สามารถใช้ได้ Aspose.Words การใส่ไฮเฟนลงในคําเพื่อกําจัดช่องว่างในข้อความที่เหมาะสม หรือรักษาความยาวคู่ในคอลัมน์แคบ ทั้ง นี้ เห็น ได้ ชัด ว่า อาจ มี ผล กระทบ ต่อ จํานวน เส้น และ ดัง นั้น จึง มี จํานวน หน้า กระดาษ. พูด อีก อย่าง หนึ่ง คือ การ ใช้ ฟังก์ชัน ไฮเฟ อีน มี ผล กระทบ ต่อ การ วาง ผัง เอกสาร.

## การ ปรับ ตัว ให้ เข้า กับ ความ เป็น จริง (H&J)

Microsoft Word มี เหตุ ผล ที่ ซับ ซ้อน ใน การ เลือก จุด หยุด หาก มี การ ใช้ ข้อ ความ อย่าง ถูก ต้อง และ มี การ เปิด ช่อง ให้ มี การ ปรับ ปรุง แก้ไข. สั้นๆนะ Microsoft Word อาจ เป็น ได้ ว่า คุณ อยาก จะ หด ตัว หรือ ยืด ช่อง เพื่อ หลีก เลี่ยง การ ทํา ให้ สาย ตาย. บางทีตรรกะนี้อาจขึ้นอยู่กับ [8887). 2013/i/i/i/i/i/i/i/i/i/i.8kias lanson lanson lanson lanson lanson lanson lanson lanson lanson sanson lanson lanson lanson lanson lanson lanson sanson sanson slanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson lanson slansonsonson ssonsonsonson sson slansonsonson sson lansonson](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words ใช้อัลกอริธึม H&J ของตัวมันเองให้ได้ผลเหมือนกับ Microsoft Word และให้บรรทัดเดียวกัน ทําลายในเอกสารผลลัพธ์

## ดูด้วย

* [ไลบรารีปรับความเข้มสี](https://github.com/hunspell/hyphen/blob/master/README)
* [ความสูงไม่มาตรฐาน](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [โดยอัตโนมัติ](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
