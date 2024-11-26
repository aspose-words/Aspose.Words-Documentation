---
title: การทำงานกับยัติภังค์ในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับยัติภังค์
linktitle: การทำงานกับยัติภังค์
description: "ใช้ยัติภังค์สำหรับการจัดเรียงข้อความที่มีขนาดกะทัดรัดมากขึ้นโดยใช้C++ จะมีขั้นตอนวิธีการขั้นสูงในการทำงานกับพจนานุกรมยัติภังค์ใช้พจนานุกรมOpenOffice."
type: docs
weight: 220
url: /th/cpp/working-with-hyphenation/
timestamp: 2024-01-30-16-22-34
---

บางครั้งก็เป็นสิ่งจำเป็นที่จะใช้ยัติภังค์สำหรับการจัดขนาดกะทัดรัดมากขึ้นของข้อความในเ บทความนี้ไม่มีการอ้างอิงจากเอกสารอ้างอิงหรือแหล่งข้อมูลโปรดช่วยพัฒนาบทความนี้โด.

บทความนี้ไม่มีการอ้างอิงจากเอกสารอ้างอิงหรือแหล่งข้อมูลโปรดช่วยพัฒนาบทความนี้โด บโครงร่างและเป็นผลให้ลักษณะที่ปรากฏของไฟล์ที่ส่งออกตัวอย่างเช่นในรูปแบบPDF.

สำหรับการแยกคำที่ถูกต้องพจนานุกรมยัติภังค์เฉพาะภาษาจะใช้ Aspose.Wordsใช้อัลกอริทึมขั้นสูงเพื่อทำงานกับพจนานุกรมดังกล่าวและช่วยให้คุณได้รับยัติภังค์เช่นเดียวกับในMicrosoft Word.

## พจนานุกรมยัติภังค์

เนื่องจากภาษาที่แตกต่างกันใช้บรรทัดฐานที่แตกต่างกันและกฎสำหรับการยัติภังค์คำทาง Aspose.Wordsใช้OpenOfficeพจนานุกรม.

สำหรับการตรวจสอบการสะกดOpenOfficeใช้ [Hunspellห้องสมุด](https://hunspell.github.io/) ซึ่งเป็นลักษณะทั่วไปของอัลกอริทึมยัติภังค์ของเท็กซ์ อัลกอริทึมนี้อนุญาตให้ใช้ยัติภังค์ที่ไม่ได้มาตรฐานโดยอัตโนมัติโดยใช้รูปแบบมาตรฐานการแข่งขันและรูปแบบยัติภังค์ที่กำหนดเอง Hunspellใช้ [ยัติภังค์](https://github.com/hunspell/hyphen) สำหรับยัติภังค์.

{{% alert color="primary" %}}

พจนานุกรมยัติภังค์สามารถนำมาจาก [LibreOfficeพจนานุกรมGitHub](https://github.com/LibreOffice/dictionaries). ตัวอย่างเช่น, [พจนานุกรมยัติภังค์-US](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

เนื่องจากพจนานุกรมMicrosoft Wordใช้พจนานุกรมอื่นที่ไม่ใช่พจนานุกรมOpenOfficeเพื่อดำเนินการยัติภังค์ยัติภังค์ของคำบางคำที่กำหนดโดยพจนานุกรมOpenOfficeอาจแตกต่างจากการยัติภังค์Microsoft Word ด้วยเหตุนี้,บางครั้งเราต้องให้คำแนะนำลูกค้าที่จะเพิ่มรูปแบบที่จำเป็นในพจนานุกรมของพ.

{{% /alert %}}

## อัลกอริทึมยัติภังค์

Aspose.Wordsดำเนินการ [อัลกอริทึมยัติภังค์เท็กซ์](https://github.com/hunspell/hyphen/blob/master/README.hyphen) และสามารถนำมาใช้พจนานุกรมยัติภังค์OpenOffice.

คุณลักษณะต่อไปนี้ของAspose.Wordsอัลกอริทึมควรนำมาพิจารณา:

* พารามิเตอร์ระยะยัติภังค์(LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) ระบุไว้ในพจนานุกรมยัติภังค์จะถูกละเว้น Aspose.Wordsใช้ชุดพารามิเตอร์ระยะทางของตัวเองขึ้นอยู่กับโหมดความเข้ากันได้ของเอกสาร.
* อัลกอริทึมยัติภังค์ในAspose.Wordsรองรับ [ยัติภังค์คอมโพสิต](https://github.com/hunspell/hyphen/blob/master/README.compound). อย่างไรก็ตามAspose.Wordsแบ่งลำดับอักขระที่มีอักขระผสมตามตัวอักษรและที่ไม่ใช่ตัวอักษรเป็นส่วนตั.
  โปรดทราบว่าMicrosoft Wordตรรกะของยัติภังค์ของคำผสมขึ้นอยู่กับโหมดความเข้ากันได้ของเอกสาร.
* อัลกอริทึมยัติภังค์ในAspose.Wordsไม่ใช้ [ยัติภังค์ที่ไม่ได้มาตรฐาน](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). รูปแบบที่ไม่ได้มาตรฐานจะถูกละเว้น.

## กำลังโหลดพจนานุกรมยัติภังค์

เมื่อต้องการใช้คุณลักษณะยัติภังค์ให้ลงทะเบียนพจนานุกรมยัติภังค์ก่อนตัวอย่างรหัสต่อไปนี้แสดงวิธีการโหลดพจนานุกรมยัติภังค์สำหรับภาษาที่ระบุจากไฟล์:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.h" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโหลดพจนานุกรมยัติภังค์สำหรับภาษาที่ระบุจากสตรีม:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.h" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

เป็นทางเลือกในการลงทะเบียนก่อนพจนานุกรมยัติภังค์ก็เป็นไปได้ที่จะลงทะเบียนพจนานุกรมยัติภังค์ที่จำเป็นเท่านั้น"ตามคำขอ" เพื่อให้บรรลุที่,ใช้อินเตอร์เฟซ[IHyphenationCallback](https://reference.aspose.com/words/cpp/aspose.words/ihyphenationcallback/)และใช้การเรียกกลับแบบคงที่[Callback](https://reference.aspose.com/words/cpp/aspose.words/hyphenation/get_callback/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้อินเตอร์เฟซ**IHyphenationCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-CustomHyphenation.h" >}}

## ผลกระทบของยัติภังค์ในรูปแบบ

เมื่อแบ่งข้อความเป็นบรรทัดAspose.Wordsจะตรวจสอบแต่ละคำว่าพอดีกับบรรทัดปัจจุบันหรือไม่ ถ้าคำอื่นยาวเกินไปจนสุดบรรทัดโดยค่าเริ่มต้นAspose.Wordsย้ายคำนั้นไปยังจุดเริ่มต้นของบรรทัดถัดไปแ.

อย่างไรก็ตามคุณลักษณะการยัติภังค์สามารถใช้ในAspose.Wordsเพื่อแทรกยัติภังค์เป็นคำเพื่อขจัดช่องว่างในข้อความที่ถูกต้องหรือเพื่อรักษาความยาวบรรทัดที่เท่ากันในคอลัมน์แคบ นี้สามารถเห็นได้ชัดมีผลต่อจำนวนบรรทัดและดังนั้นจึงจำนวนของหน้า. นการใช้ฟังก์ชันยัติภังค์มีผลต่อการจัดวางเอกสาร.

## ยัติภังค์และเหตุผล(เอช&เจ)

Microsoft Wordมีตรรกะที่ซับซ้อนสำหรับการเลือกเบรกพอยต์ถ้าข้อความเป็นธรรมและมีการเปิดใช้ยัติภังค์ ในระยะสั้นMicrosoft Wordอาจชอบที่จะหดตัวหรือยืดช่องว่างเพื่อหลีกเลี่ยงการยัติภังค์บรรทัด ส่วนใหญ่อาจจะตรรกะนี้จะขึ้นอยู่กับ [บทความของนูธ](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Wordsใช้อัลกอริทึมเอชแอนด์เจของตัวเองที่ให้ผลลัพธ์เช่นเดียวกับMicrosoft Wordและมีการแบ่งบรรทัดที่เหมือน.

## ดูเพิ่มเติม

* [ห้องสมุดยัติภังค์ยัติภังค์](https://github.com/hunspell/hyphen/blob/master/README)
* [ยัติภังค์ที่ไม่ได้มาตรฐาน](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [ยัติภังค์ที่ไม่ได้มาตรฐานอัตโนมัติในสำนักงานที่เปิด](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
