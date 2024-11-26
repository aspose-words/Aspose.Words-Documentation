---
title: การพิมพ์เอกสารใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การพิมพ์เอกสารโดยทางโปรแกรมหรือใช้กล่องโต้ตอบ
linktitle: การพิมพ์เอกสารโดยทางโปรแกรมหรือใช้กล่องโต้ตอบ
description: "พิมพ์เอกสารบน Server โดยใช้ XpsPrint API ที่ไม่มีการจัดการ หรือผ่านเครื่องพิมพ์ที่เลือกด้วยกล่องโต้ตอบการตั้งค่าและตัวอย่างก่อนพิมพ์ใน C#"
type: docs
weight: 55
url: /th/net/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-31-14-23-37
---

บทความนี้จะอธิบายวิธีการพิมพ์เอกสารประมวลผลคำจากแอปพลิเคชันบริการ ASP.NET หรือ Windows โดยใช้ Aspose.Words และ `XpsPrint` API นอกจากนี้ยังสาธิตวิธีการพิมพ์เอกสารด้วยกล่องโต้ตอบการตั้งค่า การแสดงตัวอย่างก่อนพิมพ์ และความคืบหน้าการพิมพ์ และอธิบายวิธีลดเวลาในการโทรครั้งแรกเพื่อพิมพ์เอกสาร

## การพิมพ์เอกสารบน Server ผ่าน `XpsPrint` API

ส่วนนี้มีไว้สำหรับผู้ใช้ที่ต้องการส่งเอกสาร XPS ไปยัง XpsPrint API ที่ไม่มีการจัดการจากแอปพลิเคชัน .NET โดยใช้ Aspose.Words

### ข้อจำกัดในการพิมพ์เอกสารในแอปพลิเคชันบริการ ASP.NET หรือ Windows

เมื่อพัฒนาแอปพลิเคชัน .NET ที่สร้างเอาต์พุตที่พิมพ์ออกมา โดยทั่วไปคุณสามารถใช้คลาสที่ให้ไว้ในเนมสเปซ *System.Drawing.Printing* หรือคลาส Windows Presentation Foundation (WPF) ได้ อย่างไรก็ตาม หากแอปพลิเคชันเป็นแอปพลิเคชันบริการ ASP.NET หรือ Windows ตัวเลือกสำหรับการพิมพ์จะถูกจำกัด เนื่องจาก Microsoft ไม่สนับสนุนให้ใช้แนวทางนี้ แอปพลิเคชันบริการไม่รองรับคลาสการพิมพ์ .NET Framework ซึ่งรวมถึงเพจ ASP ซึ่งโดยทั่วไปจะทำงานในบริบทของบริการเซิร์ฟเวอร์

คลาสภายในเนมสเปซ *System.Drawing.Printing* ไม่ได้รับการสนับสนุนสำหรับการใช้งานภายในบริการ Windows หรือแอปพลิเคชันหรือบริการ ASP.NET และการพยายามใช้งานอาจทำให้ประสิทธิภาพของบริการลดลง ข้อยกเว้นรันไทม์ และปัญหาอื่นๆ ไม่รองรับการใช้ WPF เพื่อสร้างบริการ Windows เช่นกัน เนื่องจาก WPF เป็นเทคโนโลยีการนำเสนอ บริการ Windows จึงต้องการสิทธิ์ที่เหมาะสมในการดำเนินการด้านภาพที่เกี่ยวข้องกับการโต้ตอบของผู้ใช้ หากบริการ Windows ไม่มีสิทธิ์ดังกล่าว อาจมีผลลัพธ์ที่ไม่คาดคิด

ออบเจ็กต์ Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) จัดเตรียมกลุ่มวิธี [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) เพื่อพิมพ์เอกสาร วิธีการเหล่านี้ใช้คลาสการพิมพ์ .NET ที่กำหนดไว้ในเนมสเปซ *System.Drawing.Printing* มีลูกค้า Aspose.Words จำนวนมากที่สามารถนำไปใช้ในการพิมพ์ในแอปพลิเคชันฝั่งเซิร์ฟเวอร์ได้สำเร็จ อย่างไรก็ตาม บทความนี้จะสาธิตวิธีการอื่นในการพิมพ์ที่สอดคล้องกับคำแนะนำของ Microsoft

### วิธีการพิมพ์เอกสารบน Server

วิธีที่เหมาะสมในการพิมพ์เอกสารตาม Microsoft คือการใช้ XpsPrint API ที่ไม่มีการจัดการ API นี้พร้อมใช้งานบน Windows 7, Windows Server 2008 R2 และบน Windows Vista หากติดตั้งการอัปเดตแพลตฟอร์มสำหรับ Windows Vista

เนื่องจาก Aspose.Words สามารถแปลงเอกสารใดๆ เป็น XPS ได้อย่างง่ายดาย คุณเพียงแค่เขียนโค้ดที่ส่งเอกสาร XPS ไปยัง `XpsPrint` API เท่านั้น ปัญหาเดียวคือ `XpsPrint` API ไม่มีการจัดการและต้องการความรู้บางอย่างเกี่ยวกับเทคโนโลยี Platform Invoid

หากต้องการพิมพ์เอกสาร Aspose.Words ให้คลาส **XpsPrintHelper** มีวิธีการพิมพ์แบบง่าย โดยที่คุณเพียงแค่ต้องระบุพารามิเตอร์ต่อไปนี้ (ดูรายละเอียดเพิ่มเติมในบทความ [พิมพ์เอกสารผ่าน XPS API](/words/net/missing-features-in-openxml/)):

- เอกสารที่คุณต้องการพิมพ์
- ชื่อเครื่องพิมพ์
- ชื่องาน (ไม่บังคับ)
- ค่าบูลีน ระบุว่าโปรแกรมควรรอจนกว่างานพิมพ์จะเสร็จสิ้นหรือไม่ ดังนั้นระบบจะตรวจสอบว่าพิมพ์เอกสารสำเร็จหรือส่งคืนทันทีหลังจากส่งงานพิมพ์ ในกรณีสุดท้าย ไม่สามารถระบุได้ว่างานพิมพ์สำเร็จหรือไม่

เมื่อพบปัญหาในการส่งหรือพิมพ์เอกสาร วิธีการนี้จะทำให้เกิดข้อยกเว้น

ตัวอย่างโค้ดด้านล่างแสดงวิธีการพิมพ์เอกสารโดยใช้คลาส **XpsPrintHelper**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

เมื่อคุณรันโปรเจ็กต์ จะพิมพ์เอกสารตัวอย่างบนเครื่องพิมพ์ที่ระบุ และเปิดหน้าต่างคอนโซลเพื่อแสดงผลการพิมพ์ เมื่องานพิมพ์เสร็จสมบูรณ์หรือเกิดข้อผิดพลาด ระบบจะแสดงข้อความแสดงความสำเร็จหรือข้อความแสดงข้อยกเว้นที่ถูกส่งออกมา

คุณยังสามารถตั้งค่าการพิมพ์บางอย่างโดยใช้คลาส [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) ได้ ตัวอย่างเช่น ใน Microsoft Word ถาดเครื่องพิมพ์ถูกกำหนดไว้สำหรับแต่ละส่วนและเป็นเครื่องพิมพ์เฉพาะ ดังนั้น คุณจึงเปลี่ยนค่าเหล่านี้สำหรับแต่ละส่วนโดยทางโปรแกรมผ่านคุณสมบัติ [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) และ [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/) ได้

{{% alert color="primary" %}}

ในบางกรณี คุณอาจจำเป็นต้องใช้ตัวอย่างนี้โดยไม่มี Aspose.Words ตัวอย่างเช่น เมื่อคุณมีเอกสาร XPS อยู่แล้ว และเพียงต้องการพิมพ์จากแอปพลิเคชันบริการ ASP.NET หรือ Windows จากนั้น คุณก็สามารถลบวิธี `Print` ได้

{{% /alert %}}

เมธอด **XpsPrintHelper**.**Print** มีโอเวอร์โหลดสองครั้ง การโอเวอร์โหลดครั้งแรกจะใช้ออบเจ็กต์ [Document](https://reference.aspose.com/words/net/aspose.words/document/) และบันทึกลงใน `MemoryStream` ในรูปแบบ XPS โอเวอร์โหลดครั้งที่สองยอมรับวัตถุ `Stream` สตรีมต้องมีเอกสารในรูปแบบ XPS

คุณสามารถดาวน์โหลดตัวอย่างวิธีการโอเวอร์โหลดได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip)

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)

## การพิมพ์เอกสารด้วยการตั้งค่าและกล่องโต้ตอบแสดงตัวอย่างก่อนพิมพ์

เมื่อทำงานกับเอกสาร มักจำเป็นต้องพิมพ์ไปยังเครื่องพิมพ์ที่เลือก การใช้กล่องโต้ตอบแสดงตัวอย่างก่อนพิมพ์เพื่อตรวจสอบลักษณะที่เอกสารที่พิมพ์ออกมาด้วยสายตาจะเป็นประโยชน์ และเลือกตัวเลือกการพิมพ์ที่เกี่ยวข้อง

Aspose.Words ไม่มีกล่องโต้ตอบหรือแบบฟอร์มในตัว แต่ใช้คลาส [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) โดยอิงตามคลาส .NET **PrintDocument** อินสแตนซ์ของคลาสนี้สามารถส่งผ่านไปยังแบบฟอร์ม **PrintPreviewDialog** เพื่อดูตัวอย่างและพิมพ์เอกสารได้ นอกจากนี้คลาส [พิมพ์กล่องโต้ตอบตัวอย่าง](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) ยังกำหนดเอาต์พุตที่จะส่งไปยังเครื่องพิมพ์

ตัวอย่างต่อไปนี้แสดงวิธีใช้คลาสเหล่านี้เพื่อพิมพ์เอกสารจาก Aspose.Words ผ่านกล่องโต้ตอบแสดงตัวอย่างก่อนพิมพ์และการตั้งค่า:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

คุณสมบัติ **AllowSomePages** ช่วยให้คุณสามารถเลือกช่วงของหน้าสำหรับการพิมพ์ได้ หากค่าของคุณสมบัตินี้เป็น True ตามค่าเริ่มต้น หน้าทั้งหมดในช่วงจะถูกเลือกสำหรับการพิมพ์

{{% /alert %}}

หากต้องการปรับลักษณะที่ปรากฏของการตั้งค่ากล่องโต้ตอบแสดงตัวอย่างก่อนพิมพ์ให้เหมาะสม ให้ระบุคุณสมบัติของคลาส **PrintPreviewDialog**

## การพิมพ์หลายหน้าในแผ่นเดียว

การมีความยืดหยุ่นมากขึ้นในการพิมพ์เอกสารจะเป็นประโยชน์เสมอ การใช้ .NET และ Aspose.Words คุณสามารถปรับแต่งการดำเนินการพิมพ์อย่างละเอียดได้อย่างง่ายดายเพื่อใช้ตรรกะที่คุณกำหนดเอง โดยกำหนดวิธีที่เอกสารจะปรากฏบนหน้าที่พิมพ์

เช่นเดียวกับในส่วนก่อนหน้า Aspose.Words ใช้คลาส **MultipagePrintDocument** ซึ่งอิงตามคลาส .NET **PrintDocument** ซึ่งหมายความว่าโครงสร้างพื้นฐานการพิมพ์ .NET ที่มีอยู่สามารถนำมาใช้ในลักษณะที่กล่องโต้ตอบตัวอย่างการพิมพ์และการพิมพ์จะช่วยให้การแสดงภาพเอกสารก่อนการพิมพ์ คลาส **MultipagePrintDocument** ให้ความสามารถในการพิมพ์หลายหน้าบนกระดาษแผ่นเดียว

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

ผลลัพธ์ของตัวอย่างโค้ดนี้แสดงอยู่ด้านล่าง:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## การซ่อนกล่องโต้ตอบความคืบหน้าการพิมพ์เมื่อพิมพ์เอกสาร

กล่องโต้ตอบความคืบหน้าการพิมพ์ไม่ปรากฏขึ้นเมื่อพิมพ์เอกสารด้วยวิธี [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) อย่างไรก็ตาม กล่องโต้ตอบนี้จะปรากฏขึ้นระหว่างการพิมพ์ด้วยวิธี [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) อื่น ในกรณีนี้ เพื่อป้องกันไม่ให้กล่องโต้ตอบการพิมพ์ปรากฏขึ้น คุณควรระบุการตั้งค่าเครื่องพิมพ์ที่ถูกต้องและตัวควบคุมการพิมพ์มาตรฐานในวิธีนี้ ดังที่แสดงในตัวอย่างด้านล่าง:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)

## วิธีลดเวลาในการโทรครั้งแรกเพื่อพิมพ์เอกสาร

Aspose.Words อ่านและแคชบางช่องของ **PrinterSettings** เพื่อลดเวลาในการพิมพ์ คุณสามารถบรรลุสิ่งนี้ได้โดยการเรียกวิธี [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/) วิธีการนี้จะถูกเรียกก่อนที่การพิมพ์จะเริ่มขึ้น หากไม่ได้ดำเนินการก่อนหน้านี้ โปรดทราบว่าเวลารวมในการพิมพ์ทั้งที่มีและไม่มีการเรียกใช้วิธีนี้เกือบจะเท่ากัน วัตถุประสงค์ของการใช้วิธีการนี้คือเพื่อลดเวลาของการเรียกวิธี [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) ครั้งแรก ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้วิธีนี้:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## ดูสิ่งนี้ด้วย

- [การอัปเดตแพลตฟอร์มสำหรับ Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
