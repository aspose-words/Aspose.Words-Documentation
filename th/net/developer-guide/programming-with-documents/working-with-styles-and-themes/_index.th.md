---
title: การทำงานกับสไตล์และธีมใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับสไตล์และธีม
linktitle: การทำงานกับสไตล์และธีม
description: "คุณสมบัติการจัดรูปแบบ Microsoft Word ขั้นสูง ทำงานกับสไตล์และธีมโดยใช้ C#"
type: docs
weight: 110
url: /th/net/working-with-styles-and-themes/
timestamp: 2024-10-24-11-44-28
---

คลาส [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) ใช้เพื่อจัดการในตัวและใช้การตั้งค่าที่ผู้ใช้กำหนดกับสไตล์

## การเข้าถึงสไตล์

คุณสามารถรับคอลเลกชั่นสไตล์ที่กำหนดในเอกสารได้โดยใช้คุณสมบัติ [Document.Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) คอลเลกชันนี้เก็บทั้งสไตล์ในตัวและสไตล์ที่ผู้ใช้กำหนดในเอกสาร สไตล์เฉพาะสามารถรับได้จากชื่อ/นามแฝง ตัวระบุสไตล์ หรือดัชนี ตัวอย่างโค้ดต่อไปนี้สาธิตวิธีการเข้าถึงคอลเลกชันสไตล์ที่กำหนดไว้ในเอกสาร

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## วิธีแยกเนื้อหาตามสไตล์

ในระดับง่ายๆ การดึงเนื้อหาตามสไตล์จากเอกสาร Word จะมีประโยชน์ในการระบุ แสดงรายการ และนับย่อหน้า และเรียกใช้ข้อความที่จัดรูปแบบด้วยสไตล์เฉพาะ ตัวอย่างเช่น คุณอาจต้องระบุเนื้อหาบางประเภทในเอกสาร เช่น ตัวอย่าง ชื่อเรื่อง ข้อมูลอ้างอิง คำสำคัญ ชื่อรูปภาพ และกรณีศึกษา

หากต้องการดำเนินการเพิ่มเติมอีกสองสามขั้นตอน ยังสามารถใช้เพื่อใช้ประโยชน์จากโครงสร้างของเอกสาร ที่กำหนดโดยสไตล์ที่ใช้ เพื่อนำเอกสารไปใช้ใหม่สำหรับเอาต์พุตอื่น เช่น HTML นี่คือความจริงแล้ววิธีการสร้างเอกสาร Aspose โดยนำ Aspose.Words ไปทดสอบ เครื่องมือที่สร้างโดยใช้ Aspose.Words จะนำเอกสาร Word ต้นฉบับและแบ่งออกเป็นหัวข้อในระดับหัวเรื่องบางระดับ ไฟล์ XML ถูกสร้างขึ้นโดยใช้ Aspose.Words ซึ่งใช้ในการสร้างแผนผังการนำทางที่คุณเห็นทางด้านซ้าย จากนั้น Aspose.Words จะแปลงแต่ละหัวข้อเป็น HTML

โซลูชันสำหรับการดึงข้อความที่จัดรูปแบบด้วยสไตล์เฉพาะในเอกสาร Word โดยทั่วไปแล้วจะประหยัดและตรงไปตรงมาโดยใช้ Aspose.Words

### การแก้ไขปัญหา

เพื่อแสดงให้เห็นว่า Aspose.Words จัดการการดึงเนื้อหาตามสไตล์ได้ง่ายเพียงใด มาดูตัวอย่างกัน ในตัวอย่างนี้ เราจะดึงข้อความที่จัดรูปแบบด้วยลักษณะย่อหน้าเฉพาะและลักษณะอักขระจากเอกสาร Word ตัวอย่าง ในระดับสูง สิ่งนี้จะเกี่ยวข้องกับ:# การเปิดเอกสาร Word โดยใช้คลาส [Document](https://reference.aspose.com/words/net/aspose.words/document/)# การรับคอลเลกชันของ ทุกย่อหน้าและการรันทั้งหมดในเอกสาร # การเลือกเฉพาะย่อหน้าที่ต้องการและรัน โดยเฉพาะอย่างยิ่ง เราจะดึงข้อความที่จัดรูปแบบด้วยลักษณะย่อหน้า 'Heading 1' และลักษณะอักขระ 'Intense Emphasis' จากเอกสาร Word ตัวอย่างนี้

![working-with-styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


ในเอกสารตัวอย่างนี้ ข้อความที่จัดรูปแบบด้วยลักษณะย่อหน้า 'หัวเรื่อง 1' คือ 'แทรกแท็บ' 'ลักษณะด่วน' และ 'ธีม' และข้อความที่จัดรูปแบบด้วยลักษณะอักขระ 'เน้นหนักแน่น' จะเป็นสีน้ำเงินหลายกรณี ข้อความตัวเอียงและตัวหนา เช่น 'แกลเลอรี' และ 'รูปลักษณ์โดยรวม'

### รหัส

การใช้แบบสอบถามตามสไตล์นั้นค่อนข้างง่ายในโมเดลออบเจ็กต์เอกสาร Aspose.Words เนื่องจากใช้เครื่องมือที่มีอยู่แล้ว มีการนำวิธีการเรียนสองวิธีมาใช้สำหรับโซลูชันนี้: **ParagraphsByStyleName** – วิธีการนี้จะดึงข้อมูลอาร์เรย์ของย่อหน้าเหล่านั้นใน เอกสารที่มีชื่อสไตล์เฉพาะ **RunsByStyleName** – วิธีการนี้จะดึงข้อมูลอาร์เรย์ของการรันเหล่านั้นในเอกสารที่มีชื่อสไตล์เฉพาะ ทั้งสองวิธีมีความคล้ายคลึงกันมาก ความแตกต่างเพียงอย่างเดียวคือประเภทโหนดและการแสดงสไตล์ ข้อมูลภายในย่อหน้าและเรียกใช้โหนด นี่คือการดำเนินการของ ParagraphsByStyleName: ตัวอย่างด้านล่างค้นหาย่อหน้าทั้งหมดที่จัดรูปแบบด้วยสไตล์ที่ระบุ

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

การใช้งานนี้ยังใช้วิธี `Document.GetChildNodes` ของคลาส `Document` ซึ่งส่งคืนคอลเลกชันของโหนดทั้งหมดตามประเภทที่ระบุ ซึ่งในกรณีนี้ในทุกย่อหน้า

โปรดทราบว่าพารามิเตอร์ที่สองของวิธี **Document.GetChildNodes** ถูกตั้งค่าเป็น true วิธีนี้จะบังคับให้วิธี **Document.GetChildNodes** เลือกจากโหนดย่อยทั้งหมดแบบวนซ้ำ แทนที่จะเลือกเฉพาะโหนดย่อยที่อยู่ติดกัน

{{% /alert %}}

นอกจากนี้ ยังควรชี้ให้เห็นว่าคอลเลกชันย่อหน้าไม่ได้สร้างค่าใช้จ่ายทันที เนื่องจากย่อหน้าจะถูกโหลดลงในคอลเลกชันนี้เฉพาะเมื่อคุณเข้าถึงรายการในย่อหน้าเท่านั้น จากนั้น สิ่งที่คุณต้องทำคือไปที่คอลเลกชัน โดยใช้ตัวดำเนินการ foreach มาตรฐาน และเพิ่มย่อหน้าที่มีสไตล์ที่ระบุลงในอาร์เรย์ย่อหน้า WithStyle ชื่อรูปแบบ `Paragraph` สามารถพบได้ในคุณสมบัติ [Style.Name](https://reference.aspose.com/words/net/aspose.words/style/name/) ของวัตถุ [Paragraph.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraph/paragraphformat/) การใช้งาน RunsByStyleName เกือบจะเหมือนกัน แม้ว่าเราจะใช้ [NodeType.Run](https://reference.aspose.com/words/net/aspose.words/nodetype/) เพื่อดึงโหนดที่รันอยู่ก็ตาม คุณสมบัติ [Font.Style](https://reference.aspose.com/words/net/aspose.words/font/style/) ของวัตถุ [Run](https://reference.aspose.com/words/net/aspose.words/run/) ใช้เพื่อเข้าถึงข้อมูลสไตล์ในโหนด **Run** ตัวอย่างด้านล่างค้นหาการรันทั้งหมดที่จัดรูปแบบด้วยสไตล์ที่ระบุ

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


เมื่อนำคำค้นหาทั้งสองไปใช้ สิ่งที่คุณต้องทำคือส่งวัตถุเอกสารและระบุชื่อสไตล์ของเนื้อหาที่คุณต้องการดึงข้อมูล: ตัวอย่างด้านล่างเรียกใช้คำค้นหาและแสดงผลลัพธ์ คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [ที่นี่](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx)

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### ผลลัพธ์สุดท้าย

เมื่อทุกอย่างเสร็จสิ้น การรันตัวอย่างจะแสดงเอาต์พุตต่อไปนี้:

![styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


อย่างที่คุณเห็น นี่เป็นตัวอย่างง่ายๆ ที่แสดงหมายเลขและข้อความของย่อหน้าที่รวบรวมและเรียกใช้ในเอกสาร Word ตัวอย่าง

## คัดลอกสไตล์ทั้งหมดจากเทมเพลต

มีหลายกรณีที่คุณต้องการคัดลอกสไตล์ทั้งหมดจากเอกสารหนึ่งไปยังอีกเอกสารหนึ่ง คุณสามารถใช้วิธี `Document.CopyStylesFromTemplate` เพื่อคัดลอกสไตล์จากเทมเพลตที่ระบุไปยังเอกสารได้ เมื่อสไตล์ถูกคัดลอกจากเทมเพลตไปยังเอกสาร สไตล์ที่มีชื่อเหมือนกันในเอกสารจะถูกกำหนดใหม่เพื่อให้ตรงกับคำอธิบายสไตล์ในเทมเพลต สไตล์เฉพาะจากเทมเพลตจะถูกคัดลอกไปยังเอกสาร สไตล์ที่เป็นเอกลักษณ์ในเอกสารยังคงเหมือนเดิม ตัวอย่าง Below code แสดงวิธีการคัดลอกสไตล์จากเอกสารหนึ่งไปยังอีกเอกสารหนึ่ง

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## วิธีจัดการคุณสมบัติของธีม

เราได้เพิ่ม API พื้นฐานใน Aspose.Words เพื่อเข้าถึงคุณสมบัติของธีมเอกสาร ในตอนนี้ API นี้มีวัตถุสาธารณะดังต่อไปนี้:

- ธีม
- ธีมฟอนต์
- ธีมสี

นี่คือวิธีที่คุณสามารถรับคุณสมบัติธีม:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

และนี่คือวิธีที่คุณสามารถตั้งค่าคุณสมบัติของธีม:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}
