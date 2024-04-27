---
title: ระบุว่าจริง พิมพ์ตําแหน่งแบบอักษรใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ระบุว่าจริง พิมพ์ตําแหน่งแบบอักษร
linktitle: ระบุว่าจริง พิมพ์ตําแหน่งแบบอักษร
description: "ระบุข้อมูลต่าง ๆ จริง พิมพ์แหล่งแบบอักษร: โฟลเดอร์ระบบ, แหล่งข้อมูลผู้ใช้, การเรียกแบบอักษรจากสายข้อมูล, ระบบไฟล์, หรือหน่วยความจําที่ใช้ Java."
type: docs
weight: 30
url: /th/java/specify-truetype-fonts-location/
---

หัวข้อนี้อธิบายพฤติกรรมปริยายของ Aspose.Words เมื่อมันค้นหาแบบอักษรแบบ TIFF จริง รวมถึงค่าความแตกต่างของระบบปฏิบัติการ และแสดงถึงวิธีระบุแหล่งแบบอักษรของผู้ใช้

เดอะ [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) คลาสที่จะใช้ระบุแหล่งของแบบอักษรต่าง ๆ มีขั้นตอนหลายอย่าง **FontSourceBase** คลาส:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

มี การ อธิบาย ราย ละเอียด เพิ่ม เติม เกี่ยว กับ การ เรียน บาง รุ่น ข้าง ล่าง นี้.

## โหลดแบบอักษรจากระบบ {#loading-fonts-from-system}

มีสิ่งพิเศษ [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) คลาสที่ใช้โดยปริยายเสมอ มันแสดงถึงแบบอักษรแบบ TIFF ที่ติดตั้งไว้บนระบบทั้งหมด ดังนั้น มันเป็นไปได้ที่จะสร้างรายชื่อแหล่งด้วย **SystemFontSource** และ (มะลาอิกะฮฺ) ผู้ควบคุมอย่างรัดกุม

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

ซิงเกิลของ **SystemFontSource** คลาสถูกกําหนดโดยค่าปริยายใน [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). ในระบบปฏิบัติการที่แตกต่างกัน แบบอักษรอาจตั้งอยู่คนละที่ อย่างไรก็ตาม ใช้ **FontSettings** กรณีของแต่ละเอกสารไม่ใช่คําตอบที่ดีที่สุด ส่วนใหญ่ของกรณีการใช้ [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) น่าจะพอนะ

ต้องการอักษรตัวพิมพ์ต่อก็ต่อเมื่อมันจําเป็นต้องใช้แหล่งแบบอักษรที่แตกต่างกัน สําหรับเอกสารอื่น ๆ ซึ่งเป็นกรณีที่หาได้ยาก ใช้หลาย **FontSettings** กรณี ต่าง ๆ จะ ลด ประสิทธิภาพ เพราะ ไม่ มี การ ใช้ แคช ร่วม กัน.

### ที่ไหน Aspose.Words ค้นหาแบบอักษรแบบอุปนัยที่แท้จริงบน Windows

ส่วนใหญ่แล้ว Windows ผู้ใช้ไม่ต้องเผชิญกับปัญหาที่สําคัญกับรูปแบบตัวอักษรที่พลาด หรือผังแป้นพิมพ์ไม่ถูกต้อง ปกติแล้ว Aspose.Words ผ่านเอกสารและเมื่อมันพบที่อยู่เชื่อมโยงของแบบอักษร มันจะดึงข้อมูลแบบอักษรจากโฟลเดอร์ของระบบได้สําเร็จ

เปิด <span notrans="<span notrans=" Windows"=""></span>'"> Aspose.Words อย่างแรก เอาแบบอักษรทั้งหมดที่มีมาจาก_%windir%\Fonts โฟลเดอร์ การ จัด เตรียม นี้ จะ ใช้ ได้ ผล กับ คุณ เป็น ส่วน ใหญ่. คุณกําหนดเฉพาะโฟลเดอร์แบบอักษรของคุณเอง หากคุณต้องการ Aspose.Words ค้นหาแบบอักษรเพิ่มเติมที่ลงทะเบียนไว้ HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts กุญแจสํารอง นอกจากนั้น Windows 10 เปิดให้ใช้การติดตั้งแบบอักษรสําหรับผู้ใช้ปัจจุบันได้ แบบอักษรจะถูกวางลงใน %userprofile%\AppData\Local\Microsoft\Windows\Fonts โฟลเดอร์และระบุไว้ใน HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts ลงทะเบียนที่ Aspose.Words จะมองหาตัวอักษรเหล่านี้

หากเอกสารบรรจุแบบอักษรที่ฝังอยู่ Aspose.Words สามารถอ่านข้อมูลแบบอักษรที่เกี่ยวข้องจากเอกสาร และใช้มันในการสร้างผังเอกสาร เอกสารอาจมีส่วนเชื่อมโยงไปยังแบบอักษรที่ไม่ได้อยู่ในโฟลเดอร์ของระบบ ซึ่งในกรณีต่อไปนี้จะทํางาน

- ผู้ใช้สามารถตั้งค่าแหล่งแบบอักษรใหม่ผ่าน **FontSettings** ชั้น
- Aspose.Words จะพยายามแทนที่แบบอักษรที่พลาดไปด้วยตัวอักษรที่คล้ายกัน

### แบบอักษรบน...Windows ระบบ

Aspose.Words จะค้นหาแบบอักษรในโฟลเดอร์แบบอักษรของระบบ รายการโฟลเดอร์เหล่านี้อาจเห็นได้จาก [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) วิธี หากไม่พบแบบอักษรที่สนับสนุน Aspose.Words จะใช้แบบอักษรปริยายที่สร้างขึ้นใน fantwood.tf

ตั้งแต่ตัวอักษรเมตริกของ Windows และไม่...Windows OS แตกต่างกัน Aspose.Words ทําทุกอย่างที่ทําได้ เพื่อหาแบบอักษรที่คล้ายกัน และทําผังที่คล้ายกับต้นฉบับ อย่าง ไร ก็ ตาม เรื่อง นี้ เป็น ไป ไม่ ได้ เสมอ ไป. ในกรณีนี้ **FontSettings** คลาสควรจะใช้สําหรับเพิ่มกฏแบบอักษรหรือกฏการแทนที่ที่กําหนดเอง

#### ที่ไหน Aspose.Words ค้นหาแบบอักษรแบบอุปนัยที่แท้จริงบน Linux

ต่าง Linux ดิสทริบิวชันอาจเก็บแบบอักษรไว้ในโฟลเดอร์อื่น Aspose.Words ค้นหาแบบอักษรในตําแหน่งต่าง ๆ โดยปริยายแล้ว Aspose.Words ค้นหาแบบอักษรในตําแหน่งต่อไปนี้ทั้งหมด: */ usr/share/foints* / usr/local/ are/fonts */ usr/X11R6/0/X11/fonts พฤติกรรมปริยายนี้จะใช้ได้กับลักษณะส่วนใหญ่ Linux การกระจายตัว, แต่ไม่รับประกันการทํางานตลอดเวลา, ในกรณีนี้ คุณอาจจําเป็นต้องระบุตําแหน่งของ true พิมพ์แบบอักษรโดยตรง ในการทําเช่นนี้ คุณจําเป็นต้องรู้ว่าแบบอักษรแบบ TIFF ได้ถูกติดตั้งไว้ที่ไหน Linux การกระจายตัว

#### ที่ไหน Aspose.Words ค้นหาแบบอักษรแบบ Mac OS X

Aspose.Words ค้นหาแบบอักษรในโฟลเดอร์ของ / Library/Fonts ซึ่งเป็นที่ตั้งมาตรฐานสําหรับแบบอักษรแบบ ทรูฟรุตบน Mac OS X ในขณะที่การตั้งค่านี้จะใช้งานได้กับตัวคุณเกือบตลอดเวลา คุณอาจต้องระบุโฟลเดอร์แบบอักษรของคุณเองในกรณีที่คุณต้องการ

#### แบบอักษรแบบ TIFF จริงบน Android

เปิด Android, การกระทู้งานแบบอักษรถูกรวมเข้ากับคลาสพิมพ์แบบร่าง
มีรูปพิมพ์แบบ 5 แบบ แต่ละพิมพ์แทนกลุ่มตัวอักษรที่คล้ายกัน

- แก้ผิด
- DEAULT_BOD
- โมโนเอสซี
- STAN_SERIF
- เซอวิส

ยกตัวอย่างเช่น ตามคําบอกเล่า Androidของ [Taiii.82838383010. xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) แฟ้มปรับแต่ง, "เวลา" เป็นของครอบครัว "Serif" ดังนั้น Noto Serif-Regar.tf จะถูกใช้เมื่อ "เวลา" ถูกร้องขอ:

**แบบอักษร. xml**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

เพื่อ จะ ค้น หา ตัว อักษร ที่ คล้ายคลึง กัน มี การ ใช้ กลวิธี ที่ กล่าว ถึง ก่อน หน้า นี้

นอกจากพวกเขาแล้ว Aspose.Words มีรายชื่อผู้มาแทน Android เวที

สมมติว่าเอกสารบรรจุตัวอักษร PMing LYU-ExtB ก่อนทั้งหมด Aspose.Words กําลังค้นหาแบบอักษรที่ต้องการภายในแหล่งระบบ

รายการปริยาย Android โฟลเดอร์แบบอักษรคือ:

- ระบบ/ ระบบ
- ระบบ/ ระบบ
- data/fonts

เดอะ Aspose.Words ดูผ่านแหล่งที่ผู้ใช้กําหนดซึ่งตั้งค่าด้วยวิธีการ:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

ในกรณีที่มีการระบุการแทนที่โดยตรง Aspose.Words แทนที่แบบอักษรที่หายไปด้วยคําแนะนําของผู้ใช้:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

ถ้ากฎไม่ได้ผล Aspose.Words เช็คตารางเปลี่ยนภายใน หากตารางมีข้อมูลเกี่ยวกับขนาดที่เหมาะสม แล้วแบบอักษรจะถูกแทนที่ ในกรณีของเรา Aspose.Words จะเลือก `Typeface.SERIF`. แต่ ถ้า โต๊ะ นั้น ไม่ รู้ อะไร เลย เกี่ยว กับ ตัว อักษร ที่ ขอ มา Aspose.Words เลือกแบบอักษรที่อิงตามกฎของ MSS Word หรือระยะที่ใกล้ที่สุดในพื้นที่ Panose

#### แบบอักษรแบบ TIFF จริงบน .NET Core ถึง Xamarin

สําหรับ .NET Core ถึง Xamarin กฎเดียวกันใช้ได้กับ Aspose.Words สําหรับ Java รุ่น โดยปริยายแล้ว แบบอักษรของระบบทั้งหมด ของแพลตฟอร์มที่โปรแกรมใช้งานอยู่
รายการโฟลเดอร์ที่จะค้นหา สามารถค้นหาได้โดยเรียกวิธีการ:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## โหลดแบบอักษรจากโฟลเดอร์ {#loading-fonts-from-folder}

หากเอกสารถูกประมวลผล มีที่อยู่เชื่อมโยงไปยังแบบอักษรที่ไม่ได้อยู่บนระบบ หรือคุณไม่ต้องการที่จะเพิ่มมันเข้าไปในโฟลเดอร์ของระบบ หรือคุณอาจจะไม่มีสิทธิ์ในการประมวลผล ดังนั้นคําตอบที่ดีที่สุดก็คือ การเพิ่มโฟลเดอร์ด้วยแบบอักษรของคุณเองโดยใช้ `SetFontsSources` วิธี จะอนุญาตให้ทําการแทนที่แหล่งที่มาของระบบด้วยแหล่งของผู้ใช้ Aspose.Words จะไม่มองหาแบบอักษรในทะเบียน หรือ Windows\Font โฟลเดอร์และแทนการค้นหาแบบอักษรภายในโฟลเดอร์ที่ระบุ เดอะ `GetFontSources` วิธีการจะคืนค่ากลับมาเป็นค่าที่ตรงกัน

### ระบุโฟลเดอร์แบบหนึ่งหรือหลายแบบอักษร

เดอะ [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) และการตั้งค่าวิธี FontsFolders เป็นปุ่มพิมพ์ลัดของ **SetFontSources** วิธีการกับหนึ่งหรือหลาย [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) ตัว อย่าง. วิธี เหล่า นี้ ใช้ เพื่อ ระบุ ว่า ที่ ไหน Aspose.Words ควรมองหาตัวอักษร หากไม่มีโฟลเดอร์อยู่หรือไม่สามารถเข้าใช้งานได้ Aspose.Words แค่ไม่สนใจโฟลเดอร์นี้ ถ้าทุกโฟลเดอร์ รวมถึงแหล่งสําหรับแทนที่แบบอักษรด้วย Aspose.Words จะใช้แบบอักษรของ Fanwood เป็นค่าปริยาย

ตัว อย่าง ต่อ ไป นี้ แสดง ให้ เห็น วิธี ตั้ง โฟลเดอร์ หรือ แหล่ง ที่ มา Aspose.Words จะมีการใช้ภายหลังเพื่อค้นหาแบบอักษรแบบ TIFF จริงระหว่างการแปลงหรือการฝังแบบอักษร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

พารามิเตอร์ต่าง ๆ ที่เพิ่มเข้ามา จะควบคุมไม่ว่าแบบอักษรจะถูกสแกนซ้ําหรือไม่ ผ่านโฟลเดอร์ทั้งหมด ดังนั้นการสแกนโฟลเดอร์เด็กทั้งหมด ในโฟลเดอร์ที่ระบุ ตัว อย่าง ต่อ ไป นี้ แสดง ให้ เห็น วิธี วาง Aspose.Words ให้ค้นหาในโฟลเดอร์หลาย ๆ สําหรับแบบอักษรแบบ Type จริง เมื่อมีการแปลหรือแก้ไขแบบอักษร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

ขอ ให้ สังเกต สิ่ง ที่ สําคัญ กว่า. หากมีแบบอักษรที่มีชื่อตระกูลและรูปแบบเดียวกันในแหล่งแบบอักษรที่แตกต่างกันแล้ว Aspose.Words จะเลือกแบบอักษรจากแหล่งที่มีลําดับความสําคัญมากกว่า ดูรายละเอียดของสนาม "Priority" ด้านล่างนี้

{{% /alert %}}

ถ้าคุณไม่อยากใช้แบบอักษรของระบบ Aspose.Words ให้คุณได้ไม่สนใจมัน และใช้แบบอักษรของคุณเองเท่านั้น:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### คุณสมบัติความสําคัญ

เดอะ [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) คุณสมบัติที่จะใช้เมื่อมีแบบอักษรที่มีชื่อตระกูลและรูปแบบเดียวกันกับแบบอักษรอื่น ๆ ในกรณีนี้ Aspose.Words เลือกแบบอักษรที่มีระดับความสําคัญสูงกว่า ตัวอย่างเช่น มีแบบอักษรแบบเก่าบนโฟลเดอร์ระบบ และไคลเอนต์ได้เพิ่มรูปแบบตัวอักษรใหม่ ในโฟลเดอร์ที่กําหนดเอง

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## โหลดแบบอักษรจากสายข้อมูล {#loading-fonts-from-stream}

Aspose.Words ให้ [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) คลาสนี้อนุญาตให้ทําการโหลดแบบอักษรจากสายข้อมูล ในการใช้แหล่งแสดงแบบอักษรแบบ สายข้อมูล ผู้ใช้จําเป็นต้องสร้างคลาสที่หาได้จาก **StreamFontSource** และจัดหาของ [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) วิธี เดอะ **OpenFontDataStream** อาจ เรียก ได้ หลาย วิธี. เป็นครั้งแรก ที่มันจะถูกเรียก Aspose.Words ค้นหาแหล่งของแบบอักษรที่ให้มา เพื่อดูรายการแบบอักษรที่มี ในภายหลัง อาจเรียกว่า การใช้แบบอักษรในเอกสาร เพื่อวิเคราะห์ข้อมูลแบบอักษร และฝังข้อมูลแบบอักษรไว้ในรูปแบบผลลัพธ์บางอย่าง **StreamFontSource** อาจมีประโยชน์ เนื่องจากมันอนุญาตให้ทําการโหลดข้อมูลแบบอักษรได้เฉพาะเมื่อจําเป็นเท่านั้น และไม่ให้จัดเก็บข้อมูลนั้นไว้ในหน่วยความจําสําหรับหน่วยความจํา `FontSettings` ชั่วชีวิต

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** เป็นทางเลือก [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) เนื่องจากมันเป็นไปได้เสมอที่จะโหลดลําธารไปยังหน่วยความจําและส่งต่อไปยัง **MemoryFontSource**. ความแตกต่างคือ **MemoryFontSource** อยู่ในความทรงจําตลอดเวลา และ **StreamFontSource** มีความต้องการและกําจัดทันที แต่ อาจ มี การ บรรจุ ของ หนัก หลาย ครั้ง ดัง ที่ พรรณนา ไว้ ข้าง ต้น. ในบางกรณี **MemoryFontSource** เป็นคนตระหนี่ และเป็นคนตระหนี่ **StreamFontSource**.

## บันทึกและโหลดแคชสําหรับค้นหาแบบอักษร

เมื่อค้นหาแบบอักษรเป็นครั้งแรก Aspose.Words ทําซ้ําไปยังแหล่งของแบบอักษรที่ระบุโดยผู้ใช้ และสร้างแคชสําหรับการค้นหาแบบอักษร โดยใช้ข้อมูลจากแหล่งเหล่านี้ ดังนั้น แคชจะเก็บข้อมูลเกี่ยวกับแบบอักษรที่มีอยู่: ตระกูลแบบอักษร, สไตล์, ชื่อเต็ม, และอื่น ๆ หลังจากนั้น Aspose.Words ค้นหาข้อมูลเกี่ยวกับแบบอักษรที่ต้องการโดยใช้ชื่อในแคชค้นหาแบบอักษร จากนั้นมันจึงวิเคราะห์แฟ้มที่จะใช้แบบอักษร

กระบวนการสําหรับวิเคราะห์แฟ้มแบบอักษรที่มีอยู่ทั้งหมด เพื่อเริ่มใช้แคช มีเวลาค่อนข้างมาก Aspose.Words ให้คุณได้บันทึกและโหลดแคชโดยใช้ **FontSettings.SaveSearchCache** วิธีแก้ปัญหาการแสดง นั่นคือ ผู้ใช้สามารถเรียกใช้แคชที่บันทึกไว้ก่อนหน้านี้จากแฟ้ม และข้ามขั้นตอนการแทนที่แฟ้มแบบอักษรทั้งหมดที่มีอยู่

{{% alert color="primary" %}}

ใช้แบบเดียวกัน **SaveSearchCache** วิธีการปรับปรุงแคช

{{% /alert %}}

{{% alert color="primary" %}}

แคชยังเหมาะกับสถานการณ์อื่น ๆ เมื่อมีการโหลดแบบอักษรผ่านเครือข่าย หรือสําหรับสถานการณ์เมื่อไม่มีทางเก็บ `FontSettings` ตัวอย่างที่บรรจุอยู่ในแคช

{{% /alert %}}


## หารายการแบบอักษรที่มีอยู่ {#get-a-list-of-available-fonts}

หากคุณต้องการดูรายการของแบบอักษรที่มีอยู่ ตัวอย่างเช่น สามารถใช้ในการแปลเอกสาร PDF ได้ คุณสามารถใช้ [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) วิธี การ ต่าง ๆ ดัง แสดง ให้ เห็น ใน ตัว อย่าง รหัส ต่อ ไป นี้. เดอะ [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) แสดงข้อมูลเกี่ยวกับแบบอักษรที่ใช้ได้ Aspose.Words กลไกแบบอักษร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
