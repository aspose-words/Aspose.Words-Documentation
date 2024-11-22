---
title: ระบุตำแหน่งแบบอักษร TrueType ใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: ระบุตำแหน่งแบบอักษร TrueType
linktitle: ระบุตำแหน่งแบบอักษร TrueType
description: "ระบุแหล่งที่มาของแบบอักษร TrueType ต่างๆ: โฟลเดอร์ระบบ แหล่งที่มาของผู้ใช้ การโหลดแบบอักษรจากสตรีม ระบบไฟล์ หรือหน่วยความจำโดยใช้ C#"
type: docs
weight: 30
url: /th/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

หัวข้อนี้จะอธิบายลักษณะการทำงานเริ่มต้นของ Aspose.Words เมื่อค้นหาแบบอักษร TrueType รวมถึงความแตกต่างเฉพาะของระบบปฏิบัติการ และสาธิตวิธีการระบุแหล่งที่มาของแบบอักษรของผู้ใช้

คลาส [FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) ใช้เพื่อระบุแหล่งแบบอักษรต่างๆ มีการใช้งานคลาส **FontSourceBase** หลายประการ:

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

รายละเอียดการใช้งานสำหรับบางคลาสมีคำอธิบายอยู่ด้านล่าง

## โหลดแบบอักษรจากระบบ {#loading-fonts-from-system}

มีคลาส [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/) พิเศษที่ใช้เป็นค่าเริ่มต้นเสมอ แสดงถึงฟอนต์ TrueType ทั้งหมดที่ติดตั้งบนระบบ ดังนั้นจึงสามารถสร้างรายการแหล่งที่มาด้วย **SystemFontSource** และแหล่งที่มาที่จำเป็นอื่นๆ ได้:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

อินสแตนซ์เดียวของคลาส **SystemFontSource** ถูกกำหนดโดยค่าเริ่มต้นใน [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) บนระบบปฏิบัติการที่แตกต่างกัน แบบอักษรอาจอยู่ในตำแหน่งที่ต่างกัน อย่างไรก็ตาม การใช้อินสแตนซ์ **FontSettings** สำหรับแต่ละเอกสารไม่ใช่วิธีแก้ปัญหาที่ดีที่สุด ในกรณีส่วนใหญ่ การใช้ [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) ก็น่าจะเพียงพอแล้ว

จำเป็นต้องใช้อินสแตนซ์ต่อเอกสารเฉพาะเมื่อจำเป็นต้องใช้แหล่งแบบอักษรที่แตกต่างกันสำหรับเอกสารที่แตกต่างกัน ซึ่งเป็นกรณีที่ไม่ค่อยเกิดขึ้น การใช้อินสแตนซ์ **FontSettings** หลายรายการจะลดประสิทธิภาพเนื่องจากไม่แชร์แคช

### โดยที่ Aspose.Words ค้นหาแบบอักษร TrueType บน Windows

ในกรณีส่วนใหญ่ ผู้ใช้ Windows จะไม่ประสบปัญหาสำคัญเกี่ยวกับแบบอักษรที่หายไปหรือรูปแบบที่ไม่ถูกต้อง โดยทั่วไปแล้ว Aspose.Words จะต้องผ่านเอกสาร และเมื่อพบลิงก์ของแบบอักษร ก็จะดึงข้อมูลแบบอักษรจากโฟลเดอร์ระบบได้สำเร็จ

ใน Windows นั้น Aspose.Words จะนำแบบอักษรที่มีอยู่ทั้งหมดจากโฟลเดอร์ _%windir%\Fonts ก่อน การตั้งค่านี้จะได้ผลสำหรับคุณเป็นส่วนใหญ่ คุณจะระบุโฟลเดอร์แบบอักษรของคุณเองเฉพาะเมื่อจำเป็นเท่านั้น Aspose.Words สำหรับ .NET ยังค้นหาแบบอักษรเพิ่มเติมที่ลงทะเบียนในคีย์รีจิสทรี HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts นอกจากนี้ Windows 10 ยังเปิดใช้งานการติดตั้งแบบอักษรสำหรับผู้ใช้ปัจจุบัน แบบอักษรจะถูกวางไว้ในโฟลเดอร์ %userprofile%\AppData\Local\Microsoft\Windows\Fonts และยังระบุไว้ในรีจิสทรี HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts โดยที่ Aspose.Words จะค้นหาแบบอักษรเหล่านี้

หากเอกสารมีแบบอักษรที่ฝังอยู่ Aspose.Words จะสามารถอ่านข้อมูลแบบอักษรที่เกี่ยวข้องจากเอกสารและใช้ข้อมูลดังกล่าวเพื่อสร้างเค้าโครงของเอกสารได้ เอกสารอาจมีลิงก์ไปยังแบบอักษรที่ไม่ได้อยู่ในโฟลเดอร์ระบบ ซึ่งในกรณีนี้สถานการณ์ต่อไปนี้จะเกิดขึ้น:

- ผู้ใช้สามารถตั้งค่าแหล่งแบบอักษรใหม่ผ่านคลาส **FontSettings**
- Aspose.Words สามารถลองแทนที่แบบอักษรที่ไม่ได้รับด้วยแบบอักษรที่คล้ายกันได้

{{% alert color="primary" %}}

โดยทั่วไปการเรนเดอร์ Aspose.Words บนเซิร์ฟเวอร์จะไม่ทำงานกับแอปพลิเคชัน ASP.NET ที่กำหนดค่าให้ทำงานภายใต้ระดับความน่าเชื่อถือปานกลาง เนื่องจากจะห้ามการเข้าถึงรีจิสทรีและจำกัดการเข้าถึงระบบไฟล์

{{% /alert %}}

### แบบอักษรบนระบบที่ไม่ใช่ Windows

Aspose.Words จะค้นหาแบบอักษรในโฟลเดอร์แบบอักษรของระบบ รายการโฟลเดอร์เหล่านี้อาจเห็นได้ด้วยวิธี [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/) หากไม่พบแบบอักษรที่รองรับ Aspose.Words จะใช้แบบอักษรเริ่มต้นในตัว Fanwood.ttf

เนื่องจากการวัดแบบอักษรของ Windows และระบบปฏิบัติการที่ไม่ใช่ Windows นั้นแตกต่างกัน Aspose.Words จึงทำทุกอย่างที่เป็นไปได้เพื่อค้นหาแบบอักษรที่คล้ายกันและสร้างเค้าโครงที่คล้ายกับต้นฉบับ อย่างไรก็ตาม สิ่งนี้ไม่สามารถทำได้เสมอไป ในกรณีเหล่านี้ ควรใช้คลาส **FontSettings** เพื่อเพิ่มแบบอักษรที่กำหนดเองหรือกฎการทดแทน

#### โดยที่ Aspose.Words ค้นหาแบบอักษร TrueType บน Linux

การกระจาย Linux ที่แตกต่างกันอาจจัดเก็บแบบอักษรในโฟลเดอร์ที่แตกต่างกัน Aspose.Words ค้นหาแบบอักษรในหลายตำแหน่ง ตามค่าเริ่มต้น Aspose.Words จะค้นหาแบบอักษรในตำแหน่งทั้งหมดต่อไปนี้: `/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts`ลักษณะการทำงานเริ่มต้นนี้จะใช้ได้กับการกระจาย Linux ส่วนใหญ่ แต่ไม่รับประกันว่าจะใช้งานได้ตลอดเวลา ซึ่งในกรณีนี้คุณอาจต้องระบุตำแหน่งของแบบอักษรประเภท true อย่างชัดเจน ในการดำเนินการนี้ คุณจำเป็นต้องทราบว่าแบบอักษร TrueType ติดตั้งอยู่ที่ใดในการแจกจ่าย Linux ของคุณ

#### โดยที่ Aspose.Words ค้นหาแบบอักษร TrueType บน Mac OS X

Aspose.Words ค้นหาแบบอักษรในโฟลเดอร์ /Library/Fonts ซึ่งเป็นตำแหน่งมาตรฐานสำหรับแบบอักษร TrueType บน Mac OS X แม้ว่าการตั้งค่านี้จะเหมาะกับคุณเกือบทุกครั้ง แต่คุณอาจต้องระบุโฟลเดอร์แบบอักษรของคุณเองในกรณีที่เมื่อ คุณต้อง

## โหลดแบบอักษรจากโฟลเดอร์ {#loading-fonts-from-folder}

หากเอกสารที่กำลังประมวลผลมีลิงก์ไปยังแบบอักษรที่ไม่ได้อยู่ในระบบ หรือคุณไม่ต้องการเพิ่มลงในโฟลเดอร์ระบบ หรือคุณไม่มีสิทธิ์ ทางออกที่ดีที่สุดคือการเพิ่มโฟลเดอร์ด้วยแบบอักษรของคุณเองโดยใช้ วิธีการ [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/) ซึ่งจะช่วยให้สามารถแทนที่แหล่งที่มาของระบบด้วยแหล่งที่มาของผู้ใช้ได้ Aspose.Words จะไม่ค้นหาแบบอักษรในรีจิสทรีหรือโฟลเดอร์ Windows\Font อีกต่อไป และจะสแกนเฉพาะแบบอักษรภายในโฟลเดอร์ที่ระบุแทน เมธอด [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) จะส่งกลับค่าที่เกี่ยวข้อง

### ระบุโฟลเดอร์แบบอักษรหนึ่งหรือหลายโฟลเดอร์

วิธีการ [SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) และ [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) เป็นทางลัดไปยังวิธี **SetFontSources** ที่มีอินสแตนซ์ [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/) หนึ่งรายการหรือหลายรายการ วิธีการเหล่านี้ใช้เพื่อระบุตำแหน่งที่ Aspose.Words ควรค้นหาแบบอักษร หากไม่มีโฟลเดอร์หรือไม่สามารถเข้าถึงได้ Aspose.Words จะละเว้นโฟลเดอร์นี้ หากโฟลเดอร์ทั้งหมด รวมถึงแหล่งที่มาสำหรับการทดแทนแบบอักษรถูกละเว้น Aspose.Words จะใช้แบบอักษร Fanwood เป็นค่าเริ่มต้น

ตัวอย่างต่อไปนี้สาธิตวิธีการตั้งค่าโฟลเดอร์หรือแหล่งที่มา ซึ่ง Aspose.Words จะใช้เพื่อค้นหาแบบอักษร TrueType ในภายหลังในระหว่างการเรนเดอร์หรือฝังแบบอักษร:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)

พารามิเตอร์บูลีนพิเศษจะควบคุมว่าแบบอักษรจะถูกสแกนซ้ำผ่านโฟลเดอร์ทั้งหมดหรือไม่ ดังนั้นการสแกนโฟลเดอร์ย่อยทั้งหมดของโฟลเดอร์ที่ระบุ ตัวอย่างต่อไปนี้สาธิตวิธีตั้งค่า Aspose.Words ให้ค้นหาแบบอักษร TrueType ในหลายโฟลเดอร์เมื่อแสดงผลหรือฝังแบบอักษร:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)

{{% /alert %}}

สังเกตลำดับความสำคัญ หากมีแบบอักษรที่มีชื่อตระกูลและสไตล์เดียวกันในแหล่งที่มาของแบบอักษรต่างกัน Aspose.Words จะเลือกแบบอักษรจากแหล่งที่มาที่มีลำดับความสำคัญสูงกว่า ดูคำอธิบายของช่อง "ลำดับความสำคัญ" ด้านล่าง

หากคุณไม่ต้องการใช้แบบอักษรของระบบเลย Aspose.Words จะอนุญาตให้คุณเพิกเฉยต่อแบบอักษรเหล่านั้นและใช้แบบอักษรของคุณเองเท่านั้น:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### ทรัพย์สินที่มีลำดับความสำคัญ

คุณสมบัติ [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) ใช้เมื่อมีแบบอักษรที่มีชื่อตระกูลและสไตล์เดียวกันในแหล่งแบบอักษรที่แตกต่างกัน ในกรณีนี้ Aspose.Words จะเลือกแบบอักษรจากแหล่งที่มาที่มีค่าลำดับความสำคัญสูงกว่า ตัวอย่างเช่น มีแบบอักษรเวอร์ชันเก่าในโฟลเดอร์ระบบ และลูกค้าได้เพิ่มแบบอักษรเดียวกันเวอร์ชันใหม่ในโฟลเดอร์ที่กำหนดเอง

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## โหลดแบบอักษรจากสตรีม {#loading-fonts-from-stream}

Aspose.Words มีคลาส [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/) ซึ่งช่วยให้สามารถโหลดแบบอักษรจากสตรีมได้ หากต้องการใช้แหล่งที่มาของแบบอักษรสตรีม ผู้ใช้จำเป็นต้องสร้างคลาสที่ได้รับมาจาก **StreamFontSource** และจัดให้มีการนำเมธอด [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/) ไปใช้ วิธี **OpenFontDataStream** สามารถเรียกได้หลายครั้ง เป็นครั้งแรกที่จะมีการเรียกเมื่อ Aspose.Words สแกนแหล่งแบบอักษรที่ให้มาเพื่อดูรายการแบบอักษรที่พร้อมใช้งาน ต่อมาอาจถูกเรียกหากใช้แบบอักษรในเอกสารเพื่อแยกวิเคราะห์ข้อมูลแบบอักษรและเพื่อฝังข้อมูลแบบอักษรลงในรูปแบบเอาต์พุตบางรูปแบบ **StreamFontSource** อาจมีประโยชน์เนื่องจากอนุญาตให้โหลดข้อมูลแบบอักษรเมื่อจำเป็นเท่านั้น และไม่จัดเก็บไว้ในหน่วยความจำตลอดอายุการใช้งาน [การตั้งค่าแบบอักษร](https://fontsettings/)

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** เป็นอีกทางเลือกหนึ่งของ [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/) เนื่องจากสามารถโหลดสตรีมไปยังหน่วยความจำและส่งไปยัง **MemoryFontSource** ได้ตลอดเวลา ความแตกต่างก็คือ **MemoryFontSource** จะถูกจัดเก็บไว้ในหน่วยความจำตลอดเวลา และ **StreamFontSource** จะถูกโหลดตามความต้องการและถูกกำจัดทันที แต่อาจจะโหลดได้หลายครั้งตามที่อธิบายไว้ข้างต้น ในบางกรณี **MemoryFontSource** จะดีกว่า และในบางกรณี **StreamFontSource**

## บันทึกและโหลดแคชค้นหาแบบอักษร

เมื่อค้นหาแบบอักษรเป็นครั้งแรก Aspose.Words จะวนซ้ำแหล่งที่มาของแบบอักษรที่ผู้ใช้ระบุ และสร้างแคชการค้นหาแบบอักษรตามข้อมูลจากแหล่งที่มาเหล่านี้ ดังนั้น แคชจะรวบรวมข้อมูลเกี่ยวกับแบบอักษรที่มีอยู่: ตระกูลแบบอักษร สไตล์ ชื่อแบบอักษรแบบเต็ม และอื่นๆ ในการโทรครั้งต่อไป Aspose.Words จะค้นหาข้อมูลเกี่ยวกับแบบอักษรที่ต้องการตามชื่อในแคชการค้นหาแบบอักษร หลังจากนั้นจะแยกวิเคราะห์ไฟล์ที่ระบุเพื่อใช้แบบอักษรนั้น

ขั้นตอนการแยกวิเคราะห์ไฟล์ฟอนต์ที่มีอยู่ทั้งหมดเพื่อเริ่มต้นแคชนั้นค่อนข้างใช้เวลานาน Aspose.Words ช่วยให้คุณบันทึกและโหลดแคชโดยใช้วิธี [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) เพื่อแก้ไขปัญหาประสิทธิภาพ นั่นคือผู้ใช้สามารถโหลดแคชที่บันทึกไว้ก่อนหน้านี้จากไฟล์และข้ามขั้นตอนการแยกวิเคราะห์ไฟล์ฟอนต์ที่มีอยู่ทั้งหมด

{{% alert color="primary" %}}

ใช้วิธี **SaveSearchCache** เดียวกันเพื่ออัปเดตแคช

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการจัดเตรียมแหล่งแบบอักษรและสร้างแคชการค้นหาแบบอักษรล่วงหน้า:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าแหล่งแบบอักษรและโหลดแคชการค้นหาก่อนประมวลผลเอกสาร:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

แคชการค้นหาแบบอักษรเหมาะอย่างยิ่งสำหรับการรวม Aspose.Words ใน AWS Lambda เนื่องจากมีข้อจำกัดหลายประการ ตัวอย่างเช่น ในขนาดคอนเทนเนอร์หลัก และผลที่ตามมาคือจำนวนแบบอักษร

แคชยังเหมาะสำหรับสถานการณ์อื่นเมื่อมีการโหลดแบบอักษรผ่านเครือข่าย หรือสำหรับสถานการณ์เมื่อไม่มีวิธีจัดเก็บอินสแตนซ์ `FontSettings` ด้วยแคชที่โหลดไว้

{{% /alert %}}

## รับรายการแบบอักษร {#get-a-list-of-available-fonts} ที่มีจำหน่าย

หากคุณต้องการรับรายการแบบอักษรที่พร้อมใช้งาน ซึ่ง เช่น สามารถใช้ในการแสดงเอกสาร PDF คุณสามารถใช้วิธี [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/) ดังที่แสดงในตัวอย่างโค้ดต่อไปนี้ คลาส [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) ระบุข้อมูลเกี่ยวกับแบบอักษรทางกายภาพที่มีให้กับกลไกแบบอักษร Aspose.Words:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
