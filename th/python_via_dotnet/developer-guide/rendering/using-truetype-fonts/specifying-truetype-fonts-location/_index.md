---
title: ระบุตำแหน่งแบบอักษร TrueType
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ระบุตำแหน่งแบบอักษร TrueType
linktitle: ระบุตำแหน่งแบบอักษร TrueType
description: "ระบุแหล่งที่มาของแบบอักษร TrueType ต่างๆ: โฟลเดอร์ระบบ แหล่งที่มาของผู้ใช้ การโหลดแบบอักษรจากสตรีม ระบบไฟล์ หรือหน่วยความจำโดยใช้ Python"
type: docs
weight: 30
url: /th/python-net/specifying-truetype-fonts-location/
---

หัวข้อนี้จะอธิบายลักษณะการทำงานเริ่มต้นของ Aspose.Words เมื่อค้นหาแบบอักษร TrueType รวมถึงความแตกต่างเฉพาะของระบบปฏิบัติการ และสาธิตวิธีการระบุแหล่งที่มาของแบบอักษรของผู้ใช้

คลาส [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) ใช้เพื่อระบุแหล่งแบบอักษรต่างๆ มีการใช้งานคลาส [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) หลายประการ:

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

รายละเอียดการใช้งานสำหรับบางคลาสมีคำอธิบายอยู่ด้านล่าง

## กำลังโหลดแบบอักษรจากระบบ

มีคลาส [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) พิเศษที่ใช้เป็นค่าเริ่มต้นเสมอ แสดงถึงฟอนต์ TrueType ทั้งหมดที่ติดตั้งบนระบบ ดังนั้นจึงสามารถสร้างรายการแหล่งที่มาด้วย [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) และแหล่งที่มาอื่นๆ ที่จำเป็นได้:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

อินสแตนซ์เดียวของคลาส [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) ถูกกำหนดโดยค่าเริ่มต้นใน [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) บนระบบปฏิบัติการที่แตกต่างกัน แบบอักษรอาจอยู่ในตำแหน่งที่ต่างกัน อย่างไรก็ตาม การใช้อินสแตนซ์ [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) สำหรับแต่ละเอกสารไม่ใช่วิธีแก้ปัญหาที่ดีที่สุด ในกรณีส่วนใหญ่ การใช้ [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) ก็น่าจะเพียงพอแล้ว

จำเป็นต้องใช้อินสแตนซ์ต่อเอกสารเฉพาะในกรณีที่จำเป็นต้องใช้แหล่งแบบอักษรที่แตกต่างกันสำหรับเอกสารที่แตกต่างกัน ซึ่งเป็นกรณีที่ไม่ค่อยเกิดขึ้น การใช้อินสแตนซ์ [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) หลายรายการจะลดประสิทธิภาพเนื่องจากไม่แชร์แคช

### โดยที่ Aspose.Words ค้นหาแบบอักษร TrueType บน Windows

ในกรณีส่วนใหญ่ ผู้ใช้ Windows จะไม่ประสบปัญหาสำคัญเกี่ยวกับแบบอักษรที่หายไปหรือรูปแบบที่ไม่ถูกต้อง โดยทั่วไปแล้ว Aspose.Words จะต้องผ่านเอกสาร และเมื่อพบลิงก์ของแบบอักษร ก็จะดึงข้อมูลแบบอักษรจากโฟลเดอร์ระบบได้สำเร็จ

ใน Windows นั้น Aspose.Words จะนำแบบอักษรที่มีอยู่ทั้งหมดจากโฟลเดอร์ _%windir%\Fonts ก่อน การตั้งค่านี้จะได้ผลสำหรับคุณเป็นส่วนใหญ่ คุณจะระบุโฟลเดอร์แบบอักษรของคุณเองเฉพาะเมื่อจำเป็นเท่านั้น Aspose.Words สำหรับ .NET ยังค้นหาแบบอักษรเพิ่มเติมที่ลงทะเบียนในคีย์รีจิสทรี *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts* นอกจากนี้ Windows 10 ยังเปิดใช้งานการติดตั้งแบบอักษรสำหรับผู้ใช้ปัจจุบัน แบบอักษรจะถูกวางไว้ในโฟลเดอร์ *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* และยังระบุไว้ในรีจิสทรี *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts* โดยที่ Aspose.Words จะค้นหาแบบอักษรเหล่านี้

หากเอกสารมีแบบอักษรที่ฝังอยู่ Aspose.Words จะสามารถอ่านข้อมูลแบบอักษรที่เกี่ยวข้องจากเอกสารและใช้ข้อมูลดังกล่าวเพื่อสร้างเค้าโครงของเอกสารได้ เอกสารอาจมีลิงก์ไปยังแบบอักษรที่ไม่ได้อยู่ในโฟลเดอร์ระบบ ซึ่งในกรณีนี้สถานการณ์ต่อไปนี้จะเกิดขึ้น:

- ผู้ใช้สามารถตั้งค่าแหล่งแบบอักษรใหม่ผ่านคลาส [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)
- Aspose.Words สามารถลองแทนที่แบบอักษรที่ไม่ได้รับด้วยแบบอักษรที่คล้ายกันได้


### แบบอักษรบนระบบที่ไม่ใช่ Windows

Aspose.Words จะค้นหาแบบอักษรในโฟลเดอร์แบบอักษรของระบบ รายการโฟลเดอร์เหล่านี้อาจเห็นได้ด้วยวิธี [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/) หากไม่พบแบบอักษรที่รองรับ Aspose.Words จะใช้แบบอักษรเริ่มต้นในตัว Fanwood.ttf

เนื่องจากการวัดแบบอักษรของ Windows และระบบปฏิบัติการที่ไม่ใช่ Windows นั้นแตกต่างกัน Aspose.Words จึงทำทุกอย่างที่เป็นไปได้เพื่อค้นหาแบบอักษรที่คล้ายกันและสร้างเค้าโครงที่คล้ายกับต้นฉบับ อย่างไรก็ตาม สิ่งนี้ไม่สามารถทำได้เสมอไป ในกรณีเหล่านี้ ควรใช้คลาส [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) เพื่อเพิ่มแบบอักษรที่กำหนดเองหรือกฎการทดแทน

#### โดยที่ Aspose.Words ค้นหาแบบอักษร TrueType บน Linux

การกระจาย Linux ที่แตกต่างกันอาจจัดเก็บแบบอักษรในโฟลเดอร์ที่แตกต่างกัน Aspose.Words ค้นหาแบบอักษรในหลายตำแหน่ง ตามค่าเริ่มต้น Aspose.Words จะค้นหาแบบอักษรในตำแหน่งต่อไปนี้ทั้งหมด: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts* ลักษณะการทำงานเริ่มต้นนี้จะใช้ได้กับการกระจาย Linux ส่วนใหญ่ แต่ไม่รับประกันว่าจะใช้งานได้ตลอดเวลา ซึ่งในกรณีนี้คุณอาจต้องระบุตำแหน่งของแบบอักษรประเภท true อย่างชัดเจน ในการดำเนินการนี้ คุณจำเป็นต้องทราบว่าแบบอักษร TrueType ติดตั้งอยู่ที่ใดในการแจกจ่าย Linux ของคุณ

#### โดยที่ Aspose.Words ค้นหาแบบอักษร TrueType บน Mac OS X

Aspose.Words ค้นหาแบบอักษรในโฟลเดอร์ */Library/Fonts* ซึ่งเป็นตำแหน่งมาตรฐานสำหรับแบบอักษร TrueType บน Mac OS X แม้ว่าการตั้งค่านี้จะได้ผลสำหรับคุณเป็นส่วนใหญ่ แต่คุณอาจต้องระบุโฟลเดอร์แบบอักษรของคุณเองใน กรณีที่คุณต้องการ

## กำลังโหลดแบบอักษรจากโฟลเดอร์

หากเอกสารที่กำลังประมวลผลมีลิงก์ไปยังแบบอักษรที่ไม่ได้อยู่ในระบบ หรือคุณไม่ต้องการเพิ่มลงในโฟลเดอร์ระบบ หรือคุณไม่มีสิทธิ์ ทางออกที่ดีที่สุดคือการเพิ่มโฟลเดอร์ด้วยแบบอักษรของคุณเองโดยใช้ วิธีการ [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) ซึ่งจะช่วยให้สามารถแทนที่แหล่งที่มาของระบบด้วยแหล่งที่มาของผู้ใช้ได้ Aspose.Words จะไม่ค้นหาแบบอักษรในรีจิสทรีหรือโฟลเดอร์ Windows\Font อีกต่อไป และจะสแกนเฉพาะแบบอักษรภายในโฟลเดอร์ที่ระบุแทน เมธอด [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) จะส่งกลับค่าที่เกี่ยวข้อง

### การระบุโฟลเดอร์แบบอักษรหนึ่งหรือหลายโฟลเดอร์

วิธีการ [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) และ [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) เป็นทางลัดไปยังวิธี [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) ที่มีอินสแตนซ์ [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/) หนึ่งรายการหรือหลายรายการ วิธีการเหล่านี้ใช้เพื่อระบุตำแหน่งที่ Aspose.Words ควรค้นหาแบบอักษร หากไม่มีโฟลเดอร์หรือไม่สามารถเข้าถึงได้ Aspose.Words จะละเว้นโฟลเดอร์นี้ หากโฟลเดอร์ทั้งหมด รวมถึงแหล่งที่มาสำหรับการทดแทนแบบอักษรถูกละเว้น Aspose.Words จะใช้แบบอักษร Fanwood เป็นค่าเริ่มต้น

ตัวอย่างต่อไปนี้สาธิตวิธีการตั้งค่าโฟลเดอร์หรือแหล่งที่มา ซึ่ง Aspose.Words จะใช้เพื่อค้นหาแบบอักษร TrueType ในภายหลังในระหว่างการเรนเดอร์หรือฝังแบบอักษร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)

พารามิเตอร์บูลีนพิเศษจะควบคุมว่าแบบอักษรจะถูกสแกนซ้ำผ่านโฟลเดอร์ทั้งหมดหรือไม่ ดังนั้นการสแกนโฟลเดอร์ย่อยทั้งหมดของโฟลเดอร์ที่ระบุ ตัวอย่างต่อไปนี้สาธิตวิธีตั้งค่า Aspose.Words ให้ค้นหาแบบอักษร TrueType ในหลายโฟลเดอร์เมื่อแสดงผลหรือฝังแบบอักษร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)

{{% /alert %}}

สังเกตลำดับความสำคัญ หากมีแบบอักษรที่มีชื่อตระกูลและสไตล์เดียวกันในแหล่งที่มาของแบบอักษรต่างกัน Aspose.Words จะเลือกแบบอักษรจากแหล่งที่มาที่มีลำดับความสำคัญสูงกว่า ดูคำอธิบายของช่อง "ลำดับความสำคัญ" ด้านล่าง

หากคุณไม่ต้องการใช้แบบอักษรของระบบเลย Aspose.Words จะอนุญาตให้คุณเพิกเฉยต่อแบบอักษรเหล่านั้นและใช้แบบอักษรของคุณเองเท่านั้น:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### ทรัพย์สินที่มีลำดับความสำคัญ

คุณสมบัติ **ลำดับความสำคัญ** ใช้เมื่อมีแบบอักษรที่มีชื่อตระกูลและสไตล์เดียวกันในแหล่งแบบอักษรที่แตกต่างกัน ในกรณีนี้ Aspose.Words จะเลือกแบบอักษรจากแหล่งที่มาที่มีค่าลำดับความสำคัญสูงกว่า ตัวอย่างเช่น มีแบบอักษรเวอร์ชันเก่าในโฟลเดอร์ระบบ และลูกค้าได้เพิ่มแบบอักษรเดียวกันเวอร์ชันใหม่ในโฟลเดอร์ที่กำหนดเอง

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## รับรายการแบบอักษรที่มีอยู่

หากคุณต้องการรับรายการแบบอักษรที่พร้อมใช้งาน ซึ่ง เช่น สามารถใช้ในการแสดงเอกสาร PDF คุณสามารถใช้วิธี [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/) ดังที่แสดงในตัวอย่างโค้ดต่อไปนี้ คลาส [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) ระบุข้อมูลเกี่ยวกับแบบอักษรทางกายภาพที่มีให้กับกลไกแบบอักษร Aspose.Words:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
