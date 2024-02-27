---
title: การทำงานกับยัติภังค์ใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับยัติภังค์
linktitle: การทำงานกับยัติภังค์
description: "ใช้การใส่ยัติภังค์เพื่อการจัดเรียงข้อความที่กะทัดรัดยิ่งขึ้นโดยใช้ C# มีอัลกอริธึมขั้นสูงเพื่อทำงานกับพจนานุกรมการยัติภังค์ ใช้พจนานุกรม OpenOffice"
type: docs
weight: 220
url: /th/net/working-with-hyphenation/
---

บางครั้งจำเป็นต้องใช้เครื่องหมายยัติภังค์เพื่อจัดเรียงข้อความในเอกสารให้กระชับยิ่งขึ้น ในขณะเดียวกัน สิ่งสำคัญคือต้องเข้าใจว่าลักษณะเฉพาะของการใส่ยัติภังค์อาจแตกต่างกันไปในแต่ละภาษา

ในปัจจุบัน การใส่ยัติภังค์ไม่ได้ใช้บ่อยเหมือนเมื่อก่อน โดยเฉพาะในข้อความภาษาอังกฤษ อย่างไรก็ตาม การใช้คุณสมบัตินี้อาจส่งผลกระทบร้ายแรงต่อเอกสารของผู้ใช้ การใส่ยัติภังค์ส่งผลต่อเค้าโครง และเป็นผลให้ลักษณะที่ปรากฏของไฟล์เอาต์พุต เช่น ในรูปแบบ PDF

เพื่อการแยกคำที่ถูกต้อง จะใช้พจนานุกรมการใส่ยัติภังค์เฉพาะภาษา Aspose.Words ใช้อัลกอริธึมขั้นสูงเพื่อทำงานกับพจนานุกรมดังกล่าว และอนุญาตให้คุณใช้ยัติภังค์แบบเดียวกับใน Microsoft Word

## พจนานุกรมยัติภังค์

เนื่องจากภาษาที่ต่างกันใช้บรรทัดฐานและกฎเกณฑ์ที่แตกต่างกันสำหรับการใส่ยัติภังค์คำ ทางออกที่ดีที่สุดสำหรับการใส่ยัติภังค์ที่ถูกต้องคือการใช้พจนานุกรมพิเศษ Aspose.Words ใช้พจนานุกรม OpenOffice

สำหรับการตรวจสอบการสะกด OpenOffice จะใช้ [ห้องสมุด Hunspell](https://hunspell.github.io/) ซึ่งเป็นลักษณะทั่วไปของอัลกอริทึมการยัติภังค์ของ TeX อัลกอริทึมนี้อนุญาตให้ใช้ยัติภังค์ที่ไม่ได้มาตรฐานโดยอัตโนมัติโดยใช้รูปแบบยัติภังค์มาตรฐานและแบบกำหนดเองที่แข่งขันกัน Hunspell ใช้ [ยัติภังค์](https://github.com/hunspell/hyphen) สำหรับการยัติภังค์

{{% alert color="primary" %}}

พจนานุกรมการใส่ยัติภังค์สามารถนำมาจาก [พจนานุกรม LibreOffice GitHub](https://github.com/LibreOffice/dictionaries) ได้ ตัวอย่างเช่น [พจนานุกรมยัติภังค์ en-US](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic)

{{% /alert %}}

{{% alert color="primary" %}}

เนื่องจาก Microsoft Word ใช้พจนานุกรมอื่นที่ไม่ใช่พจนานุกรม OpenOffice ในการใส่ยัติภังค์ การใส่ยัติภังค์ของคำบางคำที่กำหนดโดยพจนานุกรม OpenOffice อาจแตกต่างจากการใส่ยติภังค์ Microsoft Word ด้วยเหตุนี้ บางครั้งเราจึงต้องแนะนำให้ลูกค้าเพิ่มรูปแบบที่จำเป็นลงในพจนานุกรมเพื่อแก้ไขการใส่ยัติภังค์ของคำบางคำ

{{% /alert %}}

## อัลกอริธึมการใส่ยัติภังค์

Aspose.Words ใช้ [อัลกอริธึมการยัติภังค์ TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) และนำพจนานุกรมการใส่ยัติภังค์ของ OpenOffice มาใช้ซ้ำได้

ควรคำนึงถึงคุณลักษณะต่อไปนี้ของอัลกอริทึม Aspose.Words:

* พารามิเตอร์ระยะการใส่ยัติภังค์ (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) ที่ระบุในพจนานุกรมการใส่ยัติภังค์จะถูกละเว้น Aspose.Words ใช้ชุดพารามิเตอร์ระยะทางของตัวเอง ขึ้นอยู่กับโหมดความเข้ากันได้ของเอกสาร
* อัลกอริธึมการยัติภังค์ใน Aspose.Words รองรับ [การใส่ยัติภังค์แบบผสม](https://github.com/hunspell/hyphen/blob/master/README.compound) อย่างไรก็ตาม Aspose.Words จะแยกลำดับอักขระที่มีอักขระผสมทั้งที่เป็นตัวอักษรและไม่ใช่ตัวอักษรออกเป็นส่วนที่เป็นตัวอักษรเท่านั้น (คำ) และใส่ยัติภังค์แยกกัน
  โปรดทราบว่าตรรกะ Microsoft Word ของการใส่ยัติภังค์ของคำประสมขึ้นอยู่กับโหมดความเข้ากันได้ของเอกสาร
* อัลกอริธึมการยัติภังค์ใน Aspose.Words ไม่ได้ใช้ [การใส่ยัติภังค์ที่ไม่ได้มาตรฐาน](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf) รูปแบบที่ไม่ได้มาตรฐานจะถูกละเว้น

## กำลังโหลดพจนานุกรมการใส่ยัติภังค์

หากต้องการใช้คุณลักษณะการใส่ยัติภังค์ ให้ลงทะเบียนพจนานุกรมการใส่ยัติภังค์ก่อน ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโหลดพจนานุกรมการใส่ยัติภังค์สำหรับภาษาที่ระบุจากไฟล์:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโหลดพจนานุกรมยัติภังค์สำหรับภาษาที่ระบุจากสตรีม:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)

{{% /alert %}}

อีกทางเลือกหนึ่งนอกเหนือจากการลงทะเบียนพจนานุกรมการใส่ยัติภังค์ล่วงหน้า คุณสามารถลงทะเบียนเฉพาะพจนานุกรมการใส่ยัติภังค์ที่จำเป็นเท่านั้น "ตามคำขอ" เพื่อให้บรรลุผลดังกล่าว ให้ใช้อินเทอร์เฟซ [IHyphenationCallback](https://reference.aspose.com/words/net/aspose.words/ihyphenationcallback/) และใช้ [Callback](https://reference.aspose.com/words/net/aspose.words/hyphenation/callback/) เรียกกลับแบบคงที่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้อินเทอร์เฟซ **IHyphenationCallback**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-CustomHyphenation.cs" >}}

## ผลกระทบของการใส่ยัติภังค์ต่อเค้าโครง

เมื่อแบ่งข้อความเป็นบรรทัด Aspose.Words จะตรวจสอบแต่ละคำว่าพอดีกับบรรทัดปัจจุบันหรือไม่ หากคำอื่นยาวเกินไปที่จะอยู่ท้ายบรรทัด ตามค่าเริ่มต้น Aspose.Words จะย้ายคำนั้นไปที่จุดเริ่มต้นของบรรทัดถัดไป แทนที่จะใส่ยัติภังค์

อย่างไรก็ตาม คุณลักษณะการใส่ยัติภังค์สามารถใช้ใน Aspose.Words เพื่อแทรกยัติภังค์ลงในคำเพื่อขจัดช่องว่างในข้อความที่จัดชิดขอบ หรือเพื่อรักษาความยาวบรรทัดให้เท่ากันในคอลัมน์แคบๆ สิ่งนี้สามารถส่งผลต่อจำนวนบรรทัดและจำนวนหน้าได้อย่างชัดเจน กล่าวอีกนัยหนึ่ง การใช้ฟังก์ชันการใส่ยัติภังค์จะส่งผลต่อเค้าโครงเอกสาร

## การใส่ยัติภังค์และการให้เหตุผล (H&amp;J)

Microsoft Word มีตรรกะที่ซับซ้อนในการเลือกเบรกพอยต์หากข้อความถูกจัดชิดขอบและเปิดใช้งานการใส่ยัติภังค์ กล่าวโดยสรุป Microsoft Word อาจต้องการย่อหรือขยายช่องว่างเพื่อหลีกเลี่ยงการใส่ยัติภังค์บรรทัด ส่วนใหญ่แล้วตรรกะนี้จะขึ้นอยู่กับ [บทความของ Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf)

Aspose.Words ใช้อัลกอริธึม H&amp;J ของตัวเองซึ่งให้ผลลัพธ์เหมือนกับ Microsoft Word และจัดให้มีการแบ่งบรรทัดที่เหมือนกันในเอกสารเอาต์พุต

## ดูสิ่งนี้ด้วย

* [ยัติภังค์ – ไลบรารียัติภังค์](https://github.com/hunspell/hyphen/blob/master/README)
* [การใส่ยัติภังค์ที่ไม่ได้มาตรฐาน](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [การใส่ยัติภังค์ที่ไม่ได้มาตรฐานอัตโนมัติใน Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
