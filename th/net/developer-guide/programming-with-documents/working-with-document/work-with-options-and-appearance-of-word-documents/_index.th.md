---
title: ตัวเลือกและเอกสาร Word ลักษณะที่ปรากฏ
second_title: Aspose.Words สำหรับ .NET
articleTitle: ทำงานกับตัวเลือกและรูปลักษณ์ของเอกสาร Word
linktitle: ทำงานกับตัวเลือกและรูปลักษณ์ของเอกสาร Word
description: "ควบคุมลักษณะที่ปรากฏของเอกสาร Word โดยคำนึงถึงความแตกต่างระหว่าง Microsoft Word เวอร์ชันต่างๆ โดยใช้ C#"
type: docs
weight: 40
url: /th/net/work-with-word-document-options-and-appearance/
---

บางครั้งคุณอาจต้องเปลี่ยนรูปลักษณ์ของเอกสาร เช่น ตั้งค่าภาษาหรือจำนวนบรรทัดต่อหน้า Aspose.Words ให้ความสามารถในการควบคุมวิธีการแสดงเอกสาร รวมถึงตัวเลือกเพิ่มเติมบางอย่าง บทความนี้จะอธิบายความเป็นไปได้ดังกล่าว

## ตั้งค่าตัวเลือกการแสดงเอกสาร

คุณสามารถควบคุมวิธีการแสดงเอกสารใน Microsoft Word ได้โดยใช้คลาส [ViewOptions](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/) ตัวอย่างเช่น คุณสามารถตั้งค่าการซูมเอกสารโดยใช้คุณสมบัติ [ZoomPercent](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/zoompercent/) หรือโหมดมุมมองโดยใช้คุณสมบัติ [ViewType](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/viewtype/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีตรวจสอบให้แน่ใจว่าเอกสารแสดงที่ 50% เมื่อเปิดใน Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตสำหรับตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 ไม่ได้เขียนปัจจัยการซูมใดๆ ลงในเอกสาร และไม่ได้ตั้งค่าการซูมเริ่มต้นจากค่าที่เขียนลงในเอกสารอีกต่อไป แต่ดูเหมือนว่าจะใช้ปัจจัยการซูมของเอกสารที่เปิดครั้งล่าสุดแทน

{{% /alert %}}

## ตั้งค่าตัวเลือกการแสดงหน้า

หากคุณต้องการกำหนดจำนวนอักขระต่อบรรทัด ให้ใช้คุณสมบัติ [CharactersPerLine](https://reference.aspose.com/words/net/aspose.words/pagesetup/charactersperline/) คุณยังสามารถกำหนดจำนวนบรรทัดต่อหน้าสำหรับเอกสาร Word ได้ โดยใช้คุณสมบัติ [LinesPerPage](https://reference.aspose.com/words/net/aspose.words/pagesetup/linesperpage/) เพื่อรับหรือกำหนดจำนวนบรรทัดต่อหน้าในตารางเอกสาร

{{% alert color="primary" %}}

ใน Microsoft Word คุณสามารถตั้งค่าพารามิเตอร์เดียวกันได้โดยใช้แท็บ "Document Grid" ในกล่องโต้ตอบ "ตั้งค่าหน้ากระดาษ" เมื่อติดตั้งการรองรับภาษาเอเชียเท่านั้น

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีตั้งค่าจำนวนอักขระต่อบรรทัดและจำนวนบรรทัดต่อหน้าสำหรับเอกสาร Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## ตั้งค่ากำหนดภาษา

การแสดงเอกสารใน Microsoft Word ขึ้นอยู่กับภาษาที่ถูกตั้งค่าเป็นค่าเริ่มต้นสำหรับเอกสารนี้ หากไม่มีการตั้งค่าภาษาเป็นค่าเริ่มต้น Microsoft Word จะใช้ข้อมูลจากกล่องโต้ตอบ "ตั้งค่าการตั้งค่าภาษาของ Office" ซึ่งสามารถพบได้ภายใต้ "ไฟล์ → ตัวเลือก → ภาษา" ใน Microsoft Word 2019

ด้วย Aspose.Words คุณยังสามารถตั้งค่ากำหนดภาษาโดยใช้คลาส [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) ได้อีกด้วย โปรดทราบว่าเพื่อให้การแสดงเอกสารของคุณถูกต้อง จำเป็นต้องตั้งค่าเวอร์ชัน Microsoft Word ที่กระบวนการโหลดเอกสารควรตรงกัน ซึ่งสามารถทำได้โดยใช้คุณสมบัติ [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/)

{{% alert color="primary" %}}

หากเอกสาร Aspose.Words ที่สร้างไม่เป็นไปตามที่คาดไว้ ให้ตรวจสอบค่า **LanguagePreferences** และ **MswVersion** และปรับเปลี่ยนหากจำเป็นเพื่อให้ตรงกับการตั้งค่าสำหรับเวอร์ชัน Microsoft Word ของคุณ

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเพิ่มภาษาญี่ปุ่นให้กับภาษาสำหรับการแก้ไข:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าภาษารัสเซียเป็นภาษาสำหรับการแก้ไขเริ่มต้น:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## ปรับเอกสารให้เหมาะสมสำหรับเวอร์ชัน Word โดยเฉพาะ

วิธีการ [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) ช่วยให้สามารถปรับเนื้อหาเอกสารให้เหมาะสม รวมถึงลักษณะการทำงานของ Aspose.Words เริ่มต้นสำหรับ Microsoft Word เวอร์ชันใดเวอร์ชันหนึ่งโดยเฉพาะ คุณสามารถใช้วิธีนี้เพื่อป้องกันไม่ให้ Microsoft Word แสดงริบบิ้น "โหมดความเข้ากันได้" เมื่อโหลดเอกสาร โปรดทราบว่าคุณอาจต้องตั้งค่าคุณสมบัติ `Compliance` เป็น Iso29500_2008_Transitional หรือสูงกว่า

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีปรับเนื้อหาเอกสารให้เหมาะสมสำหรับ Microsoft Word 2016:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
