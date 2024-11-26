---
title: ระบุตำแหน่งแบบอักษรTrueTypeในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: ระบุตำแหน่งแบบอักษรTrueType
linktitle: ระบุตำแหน่งแบบอักษรTrueType
description: "ระบุแหล่งแบบอักษรต่างๆTrueType:โฟลเดอร์ระบบแหล่งที่มาของผู้ใช้การโหลดแบบอักษรจากสตรีมระบบแฟ้มหรือหน่วยความจำโดยใช้Java."
type: docs
weight: 30
url: /th/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

หัวข้อนี้อธิบายลักษณะการทำงานดีฟอลต์ของAspose.Wordsเมื่อค้นหาแบบอักษรTrueTypeซึ่งรวมถึงความแตกต่าง.

คลาส[FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/)ถูกใช้เพื่อระบุแหล่งที่มาแบบอักษรต่างๆ มีการใช้งานหลายระดับ**FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

รายละเอียดการดำเนินงานสำหรับบางชั้นเรียนจะอธิบายไว้ด้านล่าง.

## โหลดแบบอักษรจากระบบ {#loading-fonts-from-system}

มีคลาสพิเศษ[SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)ที่ถูกใช้โดยค่าเริ่มต้นอยู่เสมอ มันแสดงแบบอักษรTrueTypeทั้งหมดที่ติดตั้งบนระบบ ดังนั้นจึงเป็นไปได้ที่จะสร้างรายการแหล่งที่มาที่มี**SystemFontSource**และแหล่งที่มาอื่นๆที่จำเป็น:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

อินสแตนซ์เดียวของ**SystemFontSource**คลาสถูกกำหนดโดยค่าเริ่มต้นใน[FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) บนระบบปฏิบัติการที่แตกต่างกันแบบอักษรอาจจะอยู่ในสถานที่ที่แตกต่างกัน อย่างไรก็ตามการใช้อินสแตนซ์**FontSettings**สำหรับแต่ละเอกสารไม่ใช่ทางออกที่ดีที่สุด ในกรณีส่วนใหญ่การใช้[DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance)ควรเพียงพอ.

อินสแตนซ์ต่อเอกสารมีความจำเป็นเฉพาะในกรณีที่จำเป็นต้องใช้แหล่งแบบอักษรที่แตกต่างกันสำหรับเอกสารที่แตกต่างกันซึ่งเป็นกรณีที่หายาก การใช้หลายอินสแตนซ์**FontSettings**ลดประสิทธิภาพการทำงานเนื่องจากไม่ใช้แคชร่วมกัน.

### ที่Aspose.WordsมองหาTrueTypeแบบอักษรบนWindows

ในกรณีส่วนใหญ่ผู้ใช้Windowsไม่ประสบปัญหาสำคัญกับแบบอักษรที่ไม่ได้รับหรือเลย์เอาต์ที่ไม่ถูกต้อง โดยทั่วไปAspose.Wordsจะผ่านเอกสารและเมื่อพบลิงก์ของแบบอักษรมันจะดึงข้อมูลแบบอักษรจากโฟลเด.

บนWindowsเป็นครั้งแรกAspose.Wordsใช้แบบอักษรทั้งหมดที่มีอยู่จากโฟลเดอร์_%windir%\Fonts การตั้งค่านี้จะทำงานสำหรับคุณมากที่สุดของเวลา คุณระบุเฉพาะโฟลเดอร์แบบอักษรของคุณเองถ้าคุณต้องการ Aspose.Wordsยังมองหาแบบอักษรเพิ่มเติมที่ลงทะเบียนในคีย์รีจิสทรีHKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts นอกจากนี้Windows 10ช่วยให้การติดตั้งแบบอักษรสำหรับผู้ใช้ปัจจุบัน แบบอักษรจะถูกวางไว้ในโฟลเดอร์%userprofile%\AppData\Local\Microsoft\Windows\Fontsและระบุไว้ในรีจิสทรีHKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fontsที่Aspose.Wordsจะมองหาแบบอักษรเหล่านี้.

หากเอกสารมีแบบอักษรที่ฝังอยู่Aspose.Wordsสามารถอ่านข้อมูลแบบอักษรที่เกี่ยวข้องจากเอกสารและ เอกสารอาจมีการเชื่อมโยงไปยังแบบอักษรที่ไม่ได้อยู่ในโฟลเดอร์ระบบซึ่งในกรณีนี้สถาน:

- ผู้ใช้สามารถตั้งค่าแหล่งที่มาแบบอักษรใหม่ผ่านคลาสของ**FontSettings**
- Aspose.Wordsสามารถลองแทนที่แบบอักษรที่พลาดด้วยแบบเดียวกันได้

### แบบอักษรบนระบบที่ไม่ใช่Windows

Aspose.Wordsจะมองหาแบบอักษรในโฟลเดอร์แบบอักษรของระบบ รายการของโฟลเดอร์เหล่านี้อาจเห็นได้ด้วยวิธีการ[GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) หากไม่พบแบบอักษรที่สนับสนุนAspose.Wordsจะใช้แบบฟอนต์ดีฟอลต์ในตัวทีทีเอฟ.

เนื่องจากตัวชี้วัดแบบอักษรของWindowsและไม่ใช่WindowsOSแตกต่างกันAspose.Wordsทำทุกอย่างที่เป็นไปได้เพื่อหาแบบอักษรที่คล้ายกันและสร้างเค้าโครงที่คล้ายกับต้นฉบับ อย่างไรก็ตามนี้เป็นไปไม่ได้เสมอ. ในกรณีเหล่านี้ควรใช้ชั้นเรียน**FontSettings**เพื่อเพิ่มแบบอักษรที่กำหนดเองหรือกฎการแทนที่.

#### ที่Aspose.WordsมองหาTrueTypeแบบอักษรบนLinux

การแจกจ่ายLinuxแตกต่างกันอาจเก็บแบบอักษรในโฟลเดอร์ที่แตกต่างกัน Aspose.Wordsมองหาแบบอักษรในหลายสถานที่ โดยค่าเริ่มต้นAspose.Wordsจะค้นหาแบบอักษรในตำแหน่งที่ตั้งต่อไปนี้ทั้งหมด: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. ลักษณะการทำงานดีฟอลต์นี้จะทำงานสำหรับการแจกจ่ายLinuxส่วนใหญ่แต่ไม่รับประกันว่าจะทำงานตลอดเวลาซึ่งในกรณีนี้คุณอาจต้องระบุตำแหน่งของแบบอักษรชนิดจริงอย่างชัดเจน การทำเช่นนี้คุณต้องทราบว่ามีการติดตั้งแบบอักษรTrueTypeบนการแจกจ่ายLinuxของคุณ.

#### ที่Aspose.WordsมองหาTrueTypeแบบอักษรบนMac OS X

Aspose.Wordsมองหาแบบอักษรในโฟลเดอร์`/Library/Fonts`ซึ่งเป็นตำแหน่งที่ตั้งมาตรฐานสำหรับTrueTypeแบบอักษรบนMac OS X ในขณะที่การตั้งค่านี้จะทำงานสำหรับคุณมากที่สุดของเวลา,คุณอาจต้องระบุโฟลเดอร์แบบอั.

#### TrueTypeแบบอักษรบนAndroid

บนAndroidเวิร์กโฟลว์แบบอักษรถูกห่อหุ้มในชั้นเรียนแบบอักษร.
มีห้าประเภทของแบบอักษรเป็นแบบอักษรแต่ละตัวแทนของกลุ่มของครอบครัวตัวอักษรที่คล้:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

ตัวอย่างเช่นตามAndroidของ [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) แฟ้มการกำหนดค่า"ครั้ง"เป็นของ"เสริฟ"ครอบครัวเพื่อให้NotoSerif-ปกติทีทีเอฟจะใช้เมื่อมีการร้องขอ"เวลา":

**Fonts.xml**

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

ในการค้นหาแบบอักษรที่คล้ายกันกลยุทธ์ที่อธิบายไว้ก่อนหน้านี้จะถูกใช้

นอกจากนั้นAspose.Wordsมีรายการของตัวเองของการเปลี่ยนสำหรับแพลตฟอร์มAndroid.

สมมติว่าเอกสารประกอบด้วยแบบอักษรPMingLiU-เอ็กซ์เพรส,ก่อนอื่น,Aspose.Wordsกำลังมองหาแบบอักษรที่จำเป็นภายในแหล่งที่มาของระบบ.

รายการเริ่มต้นของAndroidโฟลเดอร์ของแบบอักษรคือ:

- /ระบบ/แบบอักษร
- /ระบบ/ตัวอักษร
- /ข้อมูล/แบบอักษร

Aspose.Wordsจะดูผ่านแหล่งที่มาที่ผู้ใช้กำหนดซึ่งถูกตั้งค่าด้วยวิธีการ:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

ในกรณีที่มีการระบุการแทนที่อย่างชัดเจนAspose.Wordsจะแทนที่แบบอักษรที่ขาดหายไปด้วยข้อเสนอแนะ:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

ถ้าไม่มีกฎใดทำงานให้ตรวจสอบตารางการเปลี่ยนภายในAspose.Words ถ้าตารางประกอบด้วยข้อมูลเกี่ยวกับแบบที่ดีแล้วแบบอักษรที่ได้รับการแทนที่ ในกรณีของเราAspose.Wordsจะเลือก`Typeface.SERIF` แต่ถ้าตารางไม่รู้อะไรเกี่ยวกับแบบอักษรที่ร้องขอแล้วAspose.WordsหยิบแบบอักษรตามกฎคำพิเศษMSหรือ.

#### TrueTypeแบบอักษรบน.NET CoreและXamarin

สำหรับ.NET CoreและXamarinกฎเดียวกันใช้กับAspose.WordsสำหรับJavaรุ่น โดยดีฟอลต์แบบอักษรระบบทั้งหมดของแพลตฟอร์มที่แอ็พพลิเคชันทำงานอยู่.
รายการของโฟลเดอร์ที่การค้นหาจะดำเนินการสามารถพบได้โดยการเรียกวิธีการ:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## โหลดแบบอักษรจากโฟลเดอร์ {#loading-fonts-from-folder}

หากเอกสารที่กำลังประมวลผลมีลิงก์ไปยังแบบอักษรที่ไม่ได้อยู่ในระบบหรือคุณไม่ต้องการเพิ่มลงในโฟลเดอร์ระบบหรือคุณขาดสิทธิ์ทางออกที่ดีที่สุดคือการเพิ่มโฟลเดอร์ที่มีแบบอักษรของคุณเองโดยใช้วิธีการ`SetFontsSources` นี้จะช่วยให้การเปลี่ยนแหล่งที่มาของระบบที่มีแหล่งที่มาของผู้ใช้ Aspose.Wordsจะไม่มองหาแบบอักษรในรีจิสทรีหรือWindows\โฟลเดอร์แบบอักษรและแทนที่จะสแกนหาแบบอักษรภายในโฟลเดอร์ที่ระบุเท่านั้น วิธีการ`GetFontSources`จะส่งคืนค่าที่สอดคล้องกัน.

### ระบุหนึ่งหรือหลายโฟลเดอร์แบบอักษร

วิธีการ[SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean)และSetFontsFoldersเป็นทางลัดไปยังวิธีการ**SetFontSources**โดยมีหนึ่งหรือหลายอินสแตนซ์[FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) วิธีการเหล่านี้จะใช้เพื่อระบุตำแหน่งที่Aspose.Wordsควรมองหาแบบอักษร หากไม่มีโฟลเดอร์หรือไม่สามารถเข้าถึงได้Aspose.Wordsจะเพิกเฉยต่อโฟลเดอร์นี้ หากโฟลเดอร์ทั้งหมดรวมถึงแหล่งที่มาสำหรับการแทนที่แบบอักษรถูกละเว้นAspose.Wordsจะใช้แบบอัก.

ตัวอย่างต่อไปนี้แสดงวิธีการตั้งค่าโฟลเดอร์หรือแหล่งที่มาซึ่งAspose.Wordsจะใช้ในการค้นหาแบบอักษรTrueTypeในระหว่างการแสดงผลหรือการฝังแบบอักษร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

พารามิเตอร์บูลีนพิเศษควบคุมว่าแบบอักษรจะถูกสแกนซ้ำผ่านโฟลเดอร์ทั้งหมดดังนั้นการสแ ตัวอย่างต่อไปนี้สาธิตวิธีการตั้งค่าAspose.Wordsให้ค้นหาในหลายโฟลเดอร์สำหรับTrueTypeแบบอักษรเมื่อแสดงผ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

หมายเหตุลำดับความสำคัญ หากมีแบบอักษรที่มีชื่อตระกูลและสไตล์เดียวกันในแหล่งที่มาแบบอักษรที่แตกต่างกันAspose.Wordsจะเลือกแบบอักษรจากแหล่งที่มาที่มีความสำคัญสูงกว่า ดูคำอธิบายของช่อง"ลำดับความสำคัญ"ด้านล่าง.

{{% /alert %}}

หากคุณไม่ต้องการใช้แบบอักษรของระบบเลยAspose.Wordsช่วยให้คุณสามารถเพิกเฉยและใช้แบบอักษรของคุณเองเท่านั้น:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### คุณสมบัติสำคัญ

คุณสมบัติ[Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/)จะถูกใช้เมื่อมีแบบอักษรที่มีชื่อตระกูลและสไตล์เดียวกันในแหล่งที่มาของแบบอัก ในกรณีนี้Aspose.Wordsเลือกแบบอักษรจากแหล่งที่มีค่าลำดับความสำคัญสูงกว่า ตัวอย่างเช่นมีรุ่นเก่าของตัวอักษรในโฟลเดอร์ระบบและลูกค้าเพิ่มรุ่นใหม่ของแบบอักษรเ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## โหลดแบบอักษรจากสตรีม {#loading-fonts-from-stream}

Aspose.Words จัดเตรียมคลาส [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) ซึ่งอนุญาตให้โหลดฟอนต์จากสตรีม ในการใช้แหล่งฟอนต์สตรีม ผู้ใช้จำเป็นต้องสร้างคลาสที่สืบทอดมาจาก **StreamFontSource** และจัดเตรียมการใช้งานของเมธอด [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) เมธอด **OpenFontDataStream** สามารถเรียกใช้ได้หลายครั้ง ในครั้งแรก เมธอดจะถูกเรียกใช้เมื่อ Aspose.Words สแกนแหล่งฟอนต์ที่ให้มาเพื่อรับรายการฟอนต์ที่พร้อมใช้งาน ในภายหลัง เมธอดอาจถูกเรียกใช้หากใช้ฟอนต์ในเอกสารเพื่อวิเคราะห์ข้อมูลฟอนต์และฝังข้อมูลฟอนต์ลงในรูปแบบเอาต์พุตบางรูปแบบ **StreamFontSource** อาจมีประโยชน์เนื่องจากอนุญาตให้โหลดข้อมูลฟอนต์เฉพาะเมื่อจำเป็นเท่านั้น และไม่สามารถเก็บไว้ในหน่วยความจำตลอดอายุการใช้งาน `FontSettings`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource**

## บันทึกและโหลดแคชการค้นหาแบบอักษร

เมื่อค้นหาแบบอักษรเป็นครั้งแรกAspose.Wordsจะซ้ำกับแหล่งแบบอักษรที่ระบุโดยผู้ใช้และสร้างแคชการค้ ดังนั้นแคชจะเก็บรวบรวมข้อมูลเกี่ยวกับแบบอักษรที่มีอยู่:ครอบครัวตัวอักษรสไตล์ชื่อแบบอั ในการเรียกที่ตามมาAspose.Wordsจะค้นหาข้อมูลเกี่ยวกับแบบอักษรที่ต้องการตามชื่อในแคชการค้นหาแบบอักษรหลังจากนั้นจะวิเคราะห์ไฟล์ที่ระบุเพื่อใช้แบบอักษร.

ขั้นตอนสำหรับการแยกแฟ้มแบบอักษรที่มีอยู่ทั้งหมดเพื่อเริ่มต้นแคชจะค่อนข้างใช้เวลานาน Aspose.Wordsช่วยให้คุณสามารถบันทึกและโหลดแคชโดยใช้วิธีการ**FontSettings.SaveSearchCache**เพื่อแก้ปัญหาประสิทธิภาพการทำงาน อผู้ใช้สามารถโหลดแคชที่บันทึกไว้ก่อนหน้านี้จากไฟล์และข้ามขั้นตอนของการแยกไฟล์แบบอั.

{{% alert color="primary" %}}

ใช้วิธีการ**SaveSearchCache**เดียวกันเพื่ออัปเดตแคช.

{{% /alert %}}

{{% alert color="primary" %}}

รณ์อื่นๆเมื่อแบบอักษรถูกโหลดผ่านเครือข่าย หรือสำหรับสถานการณ์เมื่อไม่มีทางที่จะจัดเก็บอินสแตนซ์`FontSettings`ด้วยแคชโหลด.

{{% /alert %}}


## รับรายชื่อแบบอักษรที่มีอยู่ {#get-a-list-of-available-fonts}

หากคุณต้องการดูรายการแบบอักษรที่มีอยู่ซึ่งสามารถใช้เพื่อแสดงผลเอกสารPDFคุณสามารถใช้วิธีการ[GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts)ตามที่แสดงในตัวอย่างรหัสต่อไปนี้ คลาส[PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/)ระบุข้อมูลเกี่ยวกับฟอนต์ฟอนต์ที่มีอยู่สำหรับAspose.Wordsเครื่องมือแบบอักษร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
