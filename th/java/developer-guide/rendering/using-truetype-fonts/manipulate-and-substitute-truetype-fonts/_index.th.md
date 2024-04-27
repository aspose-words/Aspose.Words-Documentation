---
title: กํากับและแทนที่แบบอักษรแบบ TIFF
second_title: Aspose.Words สําหรับ Java
articleTitle: กํากับและแทนที่แบบอักษรแบบ TIFF
linktitle: กํากับและแทนที่แบบอักษรแบบ TIFF
description: "Aspose.Words สําหรับ Java คุณสามารถฝังแบบอักษรแบบ SueType ไว้ในเอกสารผลลัพธ์ที่ถูกต้อง เพื่อให้มันแสดงได้อย่างถูกต้อง หรือค้นหาตัวแทนที่แบบอักษรที่เหมาะสม หรือใช้กลไกการเลื่อนแบบอักษร"
type: docs
weight: 10
url: /th/java/manipulate-and-substitute-truetype-fonts/
---

Aspose.Words ต้องการจริง พิมพ์แบบอักษรสําหรับงานต่าง ๆ รวมทั้งเอกสารที่ใช้พิมพ์เป็นรูปแบบหน้าคงที่ ตัวอย่างเช่น PDF หรือ XPS. เมื่อ Aspose.Words แปลเอกสารได้, มันจําเป็นต้องทําการฝังตัวแบบฝังตัวและจัดวางสับเซตของแบบอักษรแบบสื่อความจริงไปยังเอกสารผลลัพธ์, ซึ่งเป็นการปฏิบัติตามปกติในช่วงรุ่นของเอกสาร รวมถึงเอกสารแบบ PDF หรือ XPS รูปแบบ เพื่อให้แน่ใจว่าเอกสารนี้จะแสดงตัวเดียวกันกับผู้แสดงทุกคน ยิ่งกว่านั้น XPS ข้อกําหนดต้องการแบบอักษรที่จะฝังอยู่ในเอกสารเสมอ

เพื่อให้แน่ใจว่า Aspose.Words ปรับขนาดตัวอักษรให้แม่นยํา และฝังแนบกับตัวอักษรที่สัมพันธ์กันสําเร็จ เงื่อนไขต่อไปนี้จะต้องปรากฎ:

1 Aspose.Words ควรจะสามารถค้นหาและเข้าถึงแฟ้มแบบอักษรแบบ TIFF ได้ในระบบ
1 ต้องมีแบบอักษรแบบ Secure Type เพียงพอสําหรับ Aspose.Words, ตาม ปกติ แล้ว จะ มี ชื่อ ตระกูลตัวอักษร เดียว กัน กับ ที่ ใช้ ใน เอกสาร.

โปรดสังเกตว่า แบบอักษรในเอกสารนี้ แสดงถึงองค์กร เช่น ชื่อตระกูล, รูปแบบ, ขนาด, สี, ซึ่งแตกต่างจาก `TrueType` แบบอักษร (รูปแบบตัวอักษร) Aspose.Words แก้ไขแบบอักษรในเอกสารโดยใช้แบบอักษรแบบเต็มขณะประมวลผล นี่เป็นงานบางอย่าง โดยปกติจะเป็นงานในการคํานวณขนาดข้อความ ระหว่างการสร้างผังแป้นพิมพ์ และการแทนที่รูปแบบหน้าคงที่ มี งาน ที่ ได้ รับ ความ นิยม น้อย กว่า อีก หลาย อย่าง เช่น การ ลบ แบบอักษร และ การ แทน ที่ ขณะ ทํา การโหลด HTML หรือ การ สับปะรด กับ รูป แบบ การ ไหล ของ มัน ก็ เช่น กัน.

## การ คิด รําพึง และ การ บังเกิด ผล

กลไกการจัดการแบบอักษรที่มีอยู่ทั้งหมดอยู่ใน [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) ชั้นเรียน. คลาสนี้มีส่วนรับผิดชอบในการดึงแบบอักษรภายในแหล่งแบบอักษรที่กําหนดไว้ รวมถึงในกระบวนการย่อยแบบอักษร ตามที่อธิบายไว้ด้านล่างนี้

แบบอักษรจะถูกวิเคราะห์ในหลายขั้นตอน:

1 การเพิ่มข้อมูลแบบอักษร, การแก้ไขแบบอักษรทั้งหมดที่มี
1 การจัดรูปแบบแบบอักษรที่แก้ไขแล้วให้ใช้ได้ glyphs และเมตริก (ส่วนในแนวตั้งและแนวตั้ง).
1 จัดรูปแบบแบบอักษรที่แก้ไขแล้ว สําหรับการฝังและจัดรูปแบบ

เมื่อ Aspose.Words พบแบบอักษรในเอกสารเป็นครั้งแรก โดยมันจะพยายามรับข้อมูลแบบอักษรพื้นฐาน เช่น ชื่อเต็ม, ชื่อครอบครัว, รุ่น, รูปแบบตัวอักษร, จากแฟ้มแบบอักษรที่อยู่ในแต่ละแหล่งแบบอักษร หลังจากได้รับเอกสารทั้งหมด Aspose.Words ใช้รายละเอียดเหล่านี้เพื่อค้นหาข้อมูลแบบอักษรที่ต้องการ หรือแทนที่ที่เหมาะสมสําหรับแบบอักษรที่ต้องการ

เนื่องจากขั้นตอนที่กล่าวไว้ ข้างต้น เป็นการจํากัดเวลา มันอาจส่งผลกระทบต่อ ประสิทธิภาพของโปรแกรมในครั้งแรก อย่างไรก็ตาม แต่ละตัวอย่างของ **FontSettings** มีแคชของมันเอง ซึ่งสามารถลดเวลาในการประมวลผล ของเอกสารที่ตามมา ตัวอย่างเช่น คุณสามารถแบ่งปันตัวอย่างของ **FontSettings** พิมพ์ระหว่างเอกสารต่าง ๆ ซึ่งช่วยให้คุณสามารถเร่งการโหลดเอกสารได้เร็วขึ้น ตัว อย่าง ต่อ ไป นี้ แสดง ให้ เห็น ว่า:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

ในกรณีที่ **FontSettings** ที่ไม่ได้นิยามไว้อย่างชัดเจน Aspose.Words ใช้ค่าปริยาย **FontSettings** เช่น ส่วน นี้ ยัง มี การ ใช้ ร่วม กับ เอกสาร ต่าง ๆ โดย อัตโนมัติ ด้วย และ สามารถ สกัด ได้ ดัง ต่อ ไป นี้:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

หากคุณแน่ใจว่า เอกสารที่ประมวลผลทั้งหมด ต้องการการตั้งค่าแบบอักษรเดียวกัน จึงขอแนะนําให้ตั้งค่าและใช้ค่าปริยาย **FontSettings** เช่น สมมุติ ว่า คุณ จําเป็น ต้อง ใช้ แหล่ง ตัว อักษร เดียว กัน สําหรับ เอกสาร ทั้ง หมด ของ คุณ. ในกรณีนี้ คุณสามารถทําการแก้ไขอินสแตนซ์ปริยายได้ ดังต่อไปนี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

กําหนดเอง **FontSettings** มีระดับความสําคัญสูงกว่าค่าปริยาย

{{% /alert %}}

## การประหยัดแบบอักษร

ข้อ ความ ใน เอกสาร สามารถ ทํา ให้ เป็น แบบ แปลน ต่าง ๆ ได้ เช่น เอ เรียล, ไท มส์ โรมัน, เวอร์ ดา นา, และ อื่น ๆ. เมื่อ Aspose.Words แปลเอกสาร โดยพยายามเลือกแบบอักษรที่ระบุไว้ในเอกสาร

อย่างไรก็ตาม มีสถานการณ์เมื่อไม่สามารถค้นหาแบบอักษรที่ถูกต้องได้ Aspose.Words ต้องแทนที่แบบอักษรที่คล้ายกันแทน Aspose.Words เลือกแบบอักษรตามโพรเซสต่อไปนี้:

1 Aspose.Words ค้นหาแบบอักษรจากแหล่งของแบบอักษรที่มีอยู่ โดยมีชื่อตัวอักษรที่ถูกต้อง
1 Aspose.Words ค้นหาแบบอักษรที่ต้องการในหมู่แบบอักษรที่ฝังอยู่ในเอกสารต้นฉบับ รูปแบบเอกสารบางตัว เช่น DOCX สามารถบรรจุแบบอักษรที่ฝังอยู่ได้
1 ถ้า Aspose.Words ไม่สามารถค้นหาแบบอักษรที่ต้องการ โดยมีชื่อตรงกันเป๊ะ และ [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) คุณสมบัติที่กําหนดไว้สําหรับแบบอักษรนี้ แล้ว Aspose.Words จะค้นหาแบบอักษรที่กําหนดไว้ **AltName** จาก [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) คลาสที่ใช้กําหนดข้อมูลแบบอักษร
1 ถ้า Aspose.Words ไม่สามารถค้นหาแบบอักษรที่กําหนดไว้ได้ และ **AltName** ยังไม่ได้กําหนดกฏการแทนที่แบบอักษรไว้เช่นกัน โดยจะปรับใช้ 1 คูณ 1 ตามที่ได้อธิบายไว้ด้านล่างนี้ (เมื่อพบตัวแทนที่ที่เหมาะสม โพรเซสย่อยของแบบอักษรจะหยุดการทํางาน และขั้นตอนถัดไปจะไม่ถูกประมวลผล):
   1 Aspose.Words จะพยายามปรับใช้การตั้งค่าแบบอักษรของ OS หากสามารถใช้ได้ โดยใช้ `FontConfig` อุปกรณ์ นี่มัน...Windows คุณสมบัติจะต้องถูกใช้ร่วมกับ OS ที่เข้ากันได้กับแบบอักษรของ Config เกือบทุก OS ที่อยู่บน Unix มี `FontConfig` ไลบรารีที่ถูกออกแบบมาเพื่อปรับแต่งแบบอักษรทั้งระบบ, ปรับแต่งเอง, และเข้าใช้งานโปรแกรมต่าง ๆ มิฉะนั้น ไลบรารีนี้จะถูกติดตั้งโดยผู้ใช้ได้ง่าย<br/>
      Aspose.Words รู้วิธีสอบถามข้อมูล และตีความผลของตัวอักษร Config สําหรับวัตถุประสงค์ของตัวเอง โดยปริยายแล้ว `FontConfig` เครื่องมือถูกปิดการใช้งาน คุณสามารถเปิดใช้งานมันดังต่อไปนี้:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. ขั้นตอนถัดไปเป็นกลไกที่เรียบง่าย แต่มีประสิทธิภาพอย่างเหลือเชื่อที่เรียกว่า [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). โดยปริยายแล้ว คุณสมบัตินี้จะถูกใช้งาน และใช้ได้กับ OS ใด ๆ Aspose.Words ใช้ตาราง XML ซึ่งกําหนดกฎการแทนที่พื้นฐานสําหรับ OS ที่แตกต่างกัน ตามกฎของการแทนที่ตาราง จะใช้รายชื่อแบบอักษรแทน<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      Font เดิม - แบบอักษรที่จะใช้แทนที่, subtitute fonts - list of การแทนที่, แยกด้วยเครื่องหมายจุลภาค แบบอักษรตัวแรกที่มีให้ใช้แทน<br/>
      ลักษณะหลักของกฎนี้ คือความสามารถในการโหลดตารางการแทนที่ของคุณเอง ตามที่แสดงในตัวอย่างต่อไปนี้:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      คุณสามารถเอาตารางที่มีอยู่จากโหล หรือบันทึกมันแบบโปรแกรมในวิธีการต่อไปนี้:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      แม้ จะ มี ความ ยืดหยุ่น ของ กลไก นี้ แต่ มี บาง กรณี ที่ ดี กว่า ที่ จะ ปิด การ ใช้ กลไก นี้ ดัง แสดง ไว้ ข้าง ล่าง:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. **FontInfo** กฎการแทนที่จะถูกปรับใช้ หากไม่สามารถค้นหาแบบอักษรได้ เปิดใช้งานกลไกนี้โดยปริยายแล้ว Aspose.Words ค้นหาแบบอักษรที่เหมาะสมที่สุดตามข้อมูลแบบอักษรที่อยู่ในเอกสารบางส่วน ข้อมูลนี้จะได้รับจาก **FontInfo** คลาสที่แสดงด้านล่างนี้:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      ผู้ใช้ไม่สามารถแทรกแซงการทํางานของคุณสมบัตินี้ได้ นอกจากพวกเขาจะตัดสินใจปิดการทํางาน ในกรณีที่เกิดผลลัพธ์ที่ไม่พอใจ:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      ถ้า **FontInfo** ไม่พบแบบอักษรที่ขาดหายไป แล้วโพรเซสก็จะหยุด
   1 **DefaultFont** กฎการแทนที่จะถูกนําไปใช้ในกรณีที่ `FontInfo` การแทนที่ล้มเหลวเช่นกัน กฏนี้ ถูกเปิดใช้โดยปริยายแล้ว ตามกฎนี้ Aspose.Words จะพยายามใช้แบบอักษรปริยายที่กําหนดไว้ใน [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) ทรัพย์สิน หากผู้ใช้ไม่ได้เลือกแบบอักษรปริยายของตัวเอง แล้ว "Times Romeman" จะถูกใช้เป็นแบบอักษรปริยาย กฎนี้สามารถปิดการใช้งานได้ตามที่แสดงด้านล่างนี้:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      เพื่อตรวจสอบแบบอักษรปริยายในปัจจุบัน ให้ใช้:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      เพื่อตั้งค่าตัวเลือกแทนที่ของคุณเอง ให้ปรับใช้:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1 ถ้า Aspose.Words ไม่สามารถทําการแทนที่แบบอักษรได้ มันพยายามจะได้แบบอักษรตัวแรกจากแหล่งที่มี
1 ในที่สุด ถ้า Aspose.Words ไม่พบแบบอักษรใด ๆ จากแหล่งแบบอักษรที่มีอยู่ มันจะแปลงเอกสารโดยใช้แบบอักษรของ Fanwood ที่ฝังอยู่ใน Aspose.Words การชุมนุม

{{% alert color="primary" %}}

ถ้า **FontInfo** มีกฎการแทนที่ *ฟอนต์อินโฟ* จะทําการแก้ไขแบบอักษรและแทนที่กฏแบบอักษรปริยายเสมอ หากคุณต้องการใช้กฎแบบอักษรปริยาย คุณควรปิดกฏการแทนที่ *Font Info* โปรดสังเกตว่า กฎการแทนที่ *FontConfig * จะแก้ไขแบบอักษรส่วนใหญ่ในกรณีอื่น ๆ และดังนั้นจึงยกเลิกกฏอื่น ๆ ทั้งหมด

{{% /alert %}}

## จะ รู้ ได้ อย่าง ไร? การแทนที่แบบอักษร

บาง ครั้ง อาจ ดู เหมือน ไม่ ชัดเจน ว่า ทําไม ผัง เอกสาร จึง ได้ เปลี่ยน ไป หรือ ทําไม จึง มี การ คาด หมาย อักษร บาง ตัว ไม่ ได้. ในกรณีดังกล่าว ข้อความแจ้งเตือนการแทนที่แบบอักษร ซึ่งถูกปรับใช้โดย [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) อินเตอร์เฟสมาช่วยแล้ว พวกเขามี [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) ชนิดคําเตือนและรูปแบบข้อความมาตรฐาน "Font'<originalfont>ไม่พบ ใช้ '<substitutionfont>แบบอักษรแทน เหตุผล: <reason>"ด้วยเหตุผลต่อไปนี้</reason></substitutionfont></originalfont>

- "ชื่อจากเอกสาร" - เพื่อแทนที่ [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "การแทนที่ด้วย fontconfig" - สําหรับแทนที่ด้วยกฏปรับแต่งแบบอักษร
- "การแทนที่ด้วยตาราง" - เพื่อแทนที่ด้วยกฎตาราง
- "การแทนที่ข้อมูล" - สําหรับการแทนที่ด้วยกฎของแบบอักษร
- "การแทนที่แบบอักษรปริยาย" - สําหรับการเปลี่ยนรูปแบบตัวอักษรโดยปริยาย
- "แบบอักษรตัวแรกที่มี" - สําหรับแทนที่ด้วยแบบอักษรตัวแรกที่มี

## ตั้งค่าแบบอักษรกลับค่าจาก XML

มีกลไกสองแบบที่ใช้ใน Aspose.Words - การแทนที่ตัวอักษรและตัวอักษรเสีย การแทนที่แบบอักษร จะถูกใช้เมื่อไม่สามารถค้นหาแบบอักษรที่ระบุไว้ในเอกสารจากแหล่งอ้างอิงแบบอักษรได้ เนื่องจากมันถูกอธิบายในส่วนด้านบน กลไกการวนกลับแบบอักษรถูกใช้เมื่อแก้ไขแบบอักษรแล้ว แต่มันไม่มีตัวอักษรเฉพาะอยู่ ในกรณีนี้ Aspose.Words พยายามใช้ตัวอักษรที่สะกดผิดตัวหนึ่ง

มี [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) วิธีการสร้างการตั้งค่าการถอยกลับโดยอัตโนมัติ โดยการสแกนแบบอักษรที่มีอยู่ เนื่องจากวิธีการนี้อาจจะทําให้มีการตั้งค่าการถอยหลังแบบไม่ตรงตามเข็มนาฬิกา คุณสามารถควบคุมพฤติกรรมการเลื่อนแบบอักษรได้ โดยใช้คุณสมบัติของ [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) ชั้นเรียน. คลาสนี้ใช้กําหนดการตั้งค่ากลไกการย้อนกลับแบบอักษร คุณสามารถหาตัวอย่างของ **FontFallbackSettings** คลาสต่อไปนี้:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

คล้ายกันกับกฏการแทนที่ที่ใช้ได้, กลไกนี้ใช้ตาราง XML สําหรับการปรับแต่ง ตาราง XML เหล่านี้สามารถเรียกใช้และบันทึกได้โดยวิธีการต่อไปนี้:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

เดอะ Aspose.Words การปล่อยรวมสองตาราง: *MsOfficeFallbackSetting.xml* ถึง *NotoFallbackSetting.xml*.

เดอะ *MsOfficeFallbackSetting* ตารางกําหนดกลยุทธ์การแทนที่สําหรับช่วงของตัวอักษรซึ่งคล้ายกับกลยุทธ์ที่ใช้โดย Microsoft Word. ดังนั้น กลยุทธ์ที่ต้องใช้การติดตั้ง Microsoft ในสํานักงาน *MsOfficeFallbackSetting* สามารถเปิดใช้งานได้โดยใช้วิธีการต่อไปนี้:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

เดอะ *NotoFallbackSetting* ตารางถูกสร้างโดยเฉพาะสําหรับการใช้งานด้วย Google Noto แบบอักษร (ดูเพิ่มเติมเกี่ยวกับ Google Noto ตั้งค่าแบบอักษรในส่วนถัดไป) และสามารถเปิดใช้ต่อไปนี้ได้:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

ตัวอย่างโค้ดต่อไปนี้ จะแสดงถึงวิธีโหลดการตั้งค่าการไหลกลับของแบบอักษรจากแฟ้ม XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

ในตัวอย่างโค้ดด้านบน แฟ้ม XML ต่อไปนี้จะถูกใช้:

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

## ตั้งค่ารูปแบบตัวอักษรสําหรับ Google Noto แบบอักษร

Aspose.Words การตั้งค่าการถอยแบบอักษรที่กําหนดไว้ล่วงหน้าสําหรับ Google Noto แบบอักษร. นี่เป็นชื่อแบบอักษรฟรี ภายใต้สัญญาอนุญาตแบบ SIL Open Font ซึ่งสามารถดาวน์โหลดได้จาก Google Noto แบบอักษร เดอะ **FontFallbackSettings** ชั้นเรียนให้ [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) วิธี มันโหลดการตั้งค่าการผิดพลาดก่อนซึ่งใช้ Google Noto แบบอักษรที่แสดงอยู่ในตัวอย่างรหัสด้านล่างนี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

ใช้แบบอักษรแบบ Sans Noto ที่มีน้ําหนักปกติในการตั้งค่าที่กําหนด

{{% /alert %}}

## ที่ไหน Aspose.Words ค้นหาแบบอักษร

Aspose.Words พยายามค้นหาแบบอักษรแบบ TIFF บนระบบแฟ้มโดยอัตโนมัติ โดยทั่วไป คุณสามารถพึ่งพาพฤติกรรมปริยายของ Aspose.Words เพื่อหา `TrueType` แบบอักษร, แต่บางครั้งคุณจําเป็นต้องระบุโฟลเดอร์ของคุณเอง โดยมีแบบอักษรแบบ TIFF เดอะ [ระบุว่าจริง พิมพ์ตําแหน่งแบบอักษร](/words/th/java/specify-truetype-fonts-location/) หัวข้อ ต่าง ๆ อธิบาย ว่า เหตุ ใด และ เมื่อ ไร Aspose.Words ค้นหาแบบอักษรที่จะใช้กําหนดตําแหน่งแบบอักษรของคุณเอง

## ความแตกต่างในการประมวลผลรูปแบบตัวอักษรใน Aspose.Words ถึง Microsoft Word

มีความแตกต่างบางอย่างในการประมวลผลรูปแบบแบบอักษรใน Aspose.Words ถึง Microsoft Word ที่แสดงอยู่ในตารางด้านล่างนี้

| | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| แบบอักษรแบบ TIFF แท้ และแบบอักษรแบบ OpenTranslate ที่มีกรอบกํากับจริง | สนับสนุน | สนับสนุน |
| เปิดรูปแบบตัวอักษรแบบ TIFF | รองรับสถานการณ์ส่วนใหญ่ แนบเข้ากับรูปแบบหน้าคงที่ เช่น PDF และ XPS ยังไม่รองรับ ข้อความจะถูกแทนที่ด้วยภาพบิตแมพ | รองรับสถานการณ์ส่วนใหญ่ รวมถึงการฝังตัวในรูปแบบหน้าคงที่ |
| แบบอักษรแบบ OpenPGP | รองรับเฉพาะชื่อเท่านั้น ไม่รองรับรูปแบบต่อเนื่อง | รองรับโพรเซสปริยายตัวเดียว ยังไม่รองรับตัวอย่างที่มีชื่อและรูปแบบที่ต่อเนื่อง |
| แบบอักษรประเภท 1 | รองรับ Windows รุ่นก่อนหน้าปี 2013 และใน MacOS รุ่น การรองรับถูกยกเลิกแล้ว Windows 2013. สืบค้นเมื่อ ค.ศ. | ยังไม่รองรับ |

## ดูด้วย

- [Google Noto แบบอักษร](https://fonts.google.com/noto) เพื่อดาวน์โหลดแบบอักษรอิสระ


