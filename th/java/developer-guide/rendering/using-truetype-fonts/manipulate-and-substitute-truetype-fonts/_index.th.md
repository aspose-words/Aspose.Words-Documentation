---
title: จัดการและแทนที่แบบอักษรTrueType
second_title: Aspose.WordsสำหรับJava
articleTitle: จัดการและแทนที่แบบอักษรTrueType
linktitle: จัดการและแทนที่แบบอักษรTrueType
description: "Aspose.WordsสำหรับJavaสามารถฝังแบบอักษรที่ถูกต้องTrueTypeลงในเอกสารที่ได้เพื่อให้แน่ใจว่ามันจะแสดงอย่างถูกต้องหรือค้นหาการเปลี่ยนแบบอักษรที่เหมาะสมหรือใช้กลไกการสำรองแบบอักษร."
type: docs
weight: 10
url: /th/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Wordsต้องใช้แบบอักษรTrueTypeสำหรับงานที่หลากหลายรวมทั้งการแสดงผลเอกสารในรูปแบบเพจถาวรตัวอย่างเช่นPDFหรือXPS เมื่อAspose.Wordsแสดงผลเอกสารจะต้องทำการฝังและฝังชุดย่อยของแบบอักษรTrueTypeลงในเอกสารที่ส่งผลลัพธ์ซึ่งเป็นแบบฝึกหัดปกติในระหว่างการสร้างเอกสารรวมถึงรูปแบบที่เป็นที่นิยมPDFหรือXPS ให้แน่ใจว่าเอกสารจะปรากฏเหมือนกันกับวิวเวอร์ใดๆ นอกจากนี้ข้อกำหนดXPSต้องใช้แบบอักษรที่จะฝังอยู่ในเอกสารเสมอ.

เพื่อให้แน่ใจว่าAspose.Wordsวัดตัวอักษรอย่างถูกต้องและฝังแบบอักษรที่เกี่ยวข้องสำเร็จ,เงื่อนไขต่อไปนี้จะต้องเป็นไปตาม:

1. Aspose.Wordsควรจะสามารถค้นหาและเข้าถึงTrueTypeแฟ้มแบบอักษรบนระบบ.
1. ต้องมีแบบอักษรTrueTypeเพียงพอสำหรับAspose.Wordsโดยเฉพาะอย่างยิ่งที่มีชื่อตระกูลแบบอักษรเดียวกันกับที่ใ.

โปรดทราบว่าแบบอักษรในเอกสารแสดงถึงเอนทิตีเช่นชื่อสกุลสไตล์ขนาดสีซึ่งแตกต่างจากเอนทิตีแบบอักษร`TrueType`(แบบอักษรทางกายภาพ) Aspose.Wordsแก้ไขแบบอักษรในเอกสารให้เป็นแบบอักษรฟิสิกส์ในบางขั้นตอนของการประมวลผล การคำนวณขนาดตัวอักษรในระหว่างการก่อสร้างเค้าโครงและการฝัง/การตั้งค่าย่อยไปยั จำนวนของงานอื่นๆที่นิยมน้อยกว่าเช่นการแก้ไขแบบอักษรและการทดแทนในขณะที่โหลดHTMLหรือการฝัง/การตั้งค่าย่อยในรูปแบบการไหลบางส่วนจะถูกเปิดใช้งานในทำนองเดียวกัน.

## การจัดการแบบอักษรและปัญหาประสิทธิภาพการทำงาน

กลไกการจัดการแบบอักษรที่มีอยู่ทั้งหมดอยู่ในชั้นเรียน[FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) คลาสนี้รับผิดชอบในการดึงแบบอักษรภายในแหล่งที่มาแบบอักษรที่กำหนดไว้เช่นเดียวกับก.

แบบอักษรจะถูกวิเคราะห์ในหลายขั้นตอน:

1. การได้รับข้อมูลสำหรับแบบอักษร,การแก้ไขจากแบบอักษรที่มีอยู่ทั้งหมด.
1. การแยกแบบอักษรที่ได้รับการแก้ไขเพื่อให้ได้สัญลักษณ์และตัวชี้วัดที่มีอยู่(แนวนอนและแนวตั้ง).
1. การแยกแบบอักษรที่แก้ไขแล้วสำหรับการฝังและการตั้งค่าย่อย.

เมื่อAspose.Wordsพบแบบอักษรในเอกสารเป็นครั้งแรกจะพยายามขอรับข้อมูลแบบอักษรพื้นฐานเช่นชื่อเต็มแบบอักษรชื่อสกุลรุ่นสไตล์จากไฟล์แบบอักษรที่อยู่ในแหล่งข้อมูลแบบอักษรแต่ละตัว หลังจากดึงแบบอักษรทั้งหมดแล้วAspose.Wordsใช้รายละเอียดเหล่านี้เพื่อค้นหาข้อมูลแบบอักษรที่จำเป็นหรือการแทนที่ที่เหมาะสมสำหรับแบบอักษรที่ร้องขอ.

เนื่องจากขั้นตอนที่อธิบายไว้ข้างต้นเป็นเวลานาน,มันอาจส่งผลกระทบต่อประสิทธิภาพกา อย่างไรก็ตามแต่ละอินสแตนซ์ของ**FontSettings**มีแคชของตัวเองซึ่งสามารถลดเวลาในการประมวลผล ตัวอย่างเช่น,คุณสามารถแบ่งปันอินสแตนซ์ของ**FontSettings**คลาสระหว่างเอกสารที่แตกต่างกัน,ซึ่งจะช่ ตัวอย่างต่อไปนี้แสดงให้เห็นถึงสิ่งนี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

ในกรณีที่**FontSettings**ไม่ได้กำหนดไว้อย่างชัดเจนAspose.Wordsใช้ค่าดีฟอลต์**FontSettings**อินสแตนซ์ อินสแตนซ์นี้จะใช้ร่วมกันโดยอัตโนมัติระหว่างเอกสารและสามารถแยกได้ดังนี้:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

หากคุณแน่ใจว่าเอกสารการประมวลผลทั้งหมดต้องการการตั้งค่าแบบอักษรเดียวกันขอแนะนำให้ตั้งค่าและใช้อินสแตนซ์เริ่มต้น**FontSettings** สมมติว่าคุณจำเป็นต้องใช้แหล่งที่มาแบบอักษรเดียวกันสำหรับเอกสารทั้งหมดของคุณ ในกรณีนี้,คุณก็สามารถแก้ไขอินสแตนซ์เริ่มต้นดังต่อไปนี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

กำหนดเอง**FontSettings**มีลำดับความสำคัญสูงกว่าอินสแตนซ์เริ่มต้น.

{{% /alert %}}

## ความพร้อมใช้งานแบบอักษรและการทดแทน

บทความเกี่ยวกับคอมพิวเตอร์ที่ยังไม่สมบูรณ์ เมื่อAspose.Wordsแสดงผลเอกสารจะพยายามเลือกแบบอักษรที่ระบุในเอกสาร.

อย่างไรก็ตามมีสถานการณ์ที่ไม่พบแบบอักษรที่แน่นอนและAspose.Wordsต้องใช้แบบอักษรที่คล้ายกันแทน Aspose.Wordsเลือกแบบอักษรตามกระบวนการต่อไปนี้:

1. Aspose.Wordsพยายามหาแบบอักษรระหว่างแหล่งที่มาของแบบอักษรที่มีอยู่ด้วยชื่อแบบอักษรที่แน่นอน.
1. Aspose.Wordsพยายามหาแบบอักษรที่ต้องการในแบบอักษรที่ฝังอยู่ในเอกสารต้นฉบับ รูปแบบเอกสารบางอย่างเช่นDOCXสามารถมีแบบอักษรแบบฝังตัวได้.
1. หากAspose.Wordsไม่สามารถหาแบบอักษรที่ต้องการได้ด้วยชื่อที่ตรงกันและคุณสมบัติ[AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName)ที่กำหนดไว้สำหรับแบบอักษรนี้Aspose.Wordsจะพบแบบอักษรที่กำหนดด้วย**AltName**จากคลาสของ[FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/)ซึ่งระบุข้อมูลแบบอักษร.
1. หากAspose.Wordsไม่สามารถค้นหาแบบอักษรที่กำหนดได้และ**AltName**ไม่ได้กำหนดด้วยกฎการแทนตัวอักษรจะถูกนำมาใช้ทีละตัวตามที่อธิบายไว้ด้านล่าง(เมื่อพบการแทนที่ที่เหมาะสมกระบวนการแทนที่ตัวอักษรจะหยุดลงและขั้นตอนต่อไปจะไม่ถูกดำเนินการ):
   1. Aspose.Wordsจะพยายามที่จะใช้OSการตั้งค่าแบบอักษร,ถ้าพวกเขามีอยู่,โดยใช้`FontConfig`ยูทิลิตี้. คุณลักษณะที่ไม่ใช่Windowsนี้ต้องใช้กับFontConfig-เข้ากันได้OS เกือบทุกยูนิกซ์ที่ใช้แล้วOSมีไลบรารี`FontConfig`ที่ถูกออกแบบมาเพื่อให้การกำหนดค่าแบบอักษรทั้งระบ มารถติดตั้งได้อย่างง่ายดายโดยผู้ใช้<br>
      Aspose.Wordsรู้วิธีการสืบค้นข้อมูลและตีความผลลัพธ์FontConfigเพื่อวัตถุประสงค์ของตนเอง โดยค่าเริ่มต้นโปรแกรมอรรถประโยชน์`FontConfig`ถูกปิดใช้งาน คุณสามารถเปิดใช้งานได้ดังนี้:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. ขั้นต่อไปคือกลไกที่เรียบง่ายแต่ทรงพลังอย่างเหลือเชื่อที่เรียกว่า[TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/) โดยค่าเริ่มต้นคุณลักษณะนี้จะใช้งานอยู่และพร้อมใช้งานสำหรับOSใดๆ Aspose.Wordsใช้XMLตารางซึ่งกำหนดกฎการทดแทนพื้นฐานที่แตกต่างกันOS ตามกฎการแทนที่ตารางรายการของชื่อตัวอักษรแทนที่จะถูกนำมาใช้<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont-แบบอักษรที่จะถูกแทนที่,SubstituteFonts-รายการของตัวแปรทดแทน,คั่นด้วยเครื่องหมายจุลภาค. แบบอักษรแรกที่ใช้ได้ถูกนำมาใช้สำหรับการแทนที่<br>
      คุณสมบัติหลักของกฎนี้คือความสามารถในการโหลดตารางทดแทนของคุณเองตามที่แสดงใ:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      คุณสามารถใช้เป็นพื้นฐานตารางที่มีอยู่จากโถหรือบันทึกโปรแกรมในลักษณะต่อไปนี้:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      แม้จะมีความยืดหยุ่นของกลไกนี้มีบางกรณีเมื่อมันจะดีกว่าที่จะปิดการใช้งานดังที่แสดงด้านล่:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. กฎการแทนที่**FontInfo**จะถูกนำมาใช้หากกฎการแทนที่ตารางไม่สามารถหาแบบอักษรได้ กลไกนี้ถูกเปิดใช้งานโดยดีฟอลต์ Aspose.Wordsพบแบบอักษรที่เหมาะสมที่สุดตามข้อมูลแบบอักษรที่มีอยู่ในเอกสารใดเอกสาร ข้อมูลนี้สามารถรับได้จากชั้นเรียน**FontInfo**ดังที่แสดงด้านล่าง:<br>
**Java**
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      ผู้ใช้ไม่สามารถแทรกแซงในเวิร์กโฟลว์ของคุณลักษณะนี้จนกว่าพวกเขาจะตัดสินใจที่จะปิด:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      ถ้า**FontInfo**ไม่พร้อมใช้งานสำหรับแบบอักษรที่หายไปกระบวนการจะหยุดลง.
   1. **DefaultFont**กฎการทดแทนจะถูกนำไปใช้ในกรณีที่การทดแทน`FontInfo`ล้มเหลวเช่นกัน กฏนี้ถูกเปิดใช้งานโดยค่าเริ่มต้น ตามกฎนี้Aspose.Wordsจะพยายามใช้ฟอนต์ดีฟอลต์ที่ระบุไว้ในพร็อพเพอร์ตี้[DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) หากผู้ใช้ยังไม่ได้เลือกแบบอักษรเริ่มต้นของตัวเองแล้ว"ครั้งโรมันใหม่"จะถูกใช้เป็นแบบอัก กฎนี้สามารถปิดใช้งานได้ตามที่แสดงด้านล่าง:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      เมื่อต้องการตรวจสอบแบบอักษรปริยายปัจจุบันให้ใช้:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      ในการตั้งค่าตัวเลือกการเปลี่ยนของคุณเอง,นำไปใช้:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. ถ้าAspose.Wordsไม่สามารถทำการทดแทนแบบอักษรได้จะพยายามหาแบบอักษรที่มีอยู่ตัวแรกจากแหล่งแบบอักษรที่มีอยู่.
1. สุดท้ายหากAspose.Wordsไม่พบแบบอักษรใดๆในแหล่งที่มาของแบบอักษรที่มีอยู่จะแสดงผลเอกสารโดยใช้แบบอักษรฟรีที่ฝังอยู่ในแอสเซมบลีAspose.Words.

{{% alert color="primary" %}}

ถ้า**FontInfo**มีอยู่*FontInfo substitution rule*จะแก้ไขแบบอักษรและแทนที่กฎแบบอักษรเริ่มต้น ถ้าคุณต้องการใช้กฎแบบอักษรเริ่มต้นคุณควรปิดใช้งาน*FontInfo substitution rule* โปรดทราบว่า*FontConfig substitution rule*จะแก้ไขแบบอักษรในกรณีส่วนใหญ่และจะแทนที่กฎอื่นๆทั้งหมด.

{{% /alert %}}

## วิธีการรับรู้ว่าตัวอักษรที่ถูกแทนที่

บางครั้งอาจไม่ชัดเจนว่าทำไมเค้าโครงเอกสารมีการเปลี่ยนแปลงหรือทำไมแบบอักษรบ ในกรณีดังกล่าวข้อความคำเตือนการทดแทนแบบอักษรที่ดำเนินการโดย[IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/)อินเทอร์เฟซมาช่ว พวกเขามี[FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION)ชนิดคำเตือนและรูปแบบข้อความคำอธิบายมาตรฐาน"ตัวอักษร'<OriginalFont>'ไม่พบ ใช้แบบอักษร'<SubstitutionFont>'แทน เหตุผล:<Reason>"ด้วยเหตุผลต่อไปนี้:

- "ชื่อทางเลือกจากเอกสาร"-สำหรับการทดแทนโดย[AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "ตัวอักษรทดแทนการกำหนดค่า"-สำหรับการทดแทนตามกฎการกำหนดค่าตัวอักษร
- "การทดแทนตาราง"-สำหรับการทดแทนตามกฎตาราง
- "ตัวอักษรทดแทนข้อมูล"-สำหรับการทดแทนตามกฎข้อมูลตัวอักษร
- "ตัวอักษรเริ่มต้นทดแทน"-สำหรับการทดแทนตามกฎตัวอักษรเริ่มต้น
- "ตัวอักษรที่มีอยู่ครั้งแรก"-สำหรับการทดแทนด้วยตัวอักษรที่มีอยู่ครั้งแรก

## แบบอักษรFallBackตั้งแต่XML

มีสองกลไกที่แตกต่างกันที่ใช้ในAspose.Words-การแทนที่แบบอักษรและทางเลือกแบบอักษร การแทนที่แบบอักษรจะใช้เมื่อแบบอักษรที่ระบุในเอกสารไม่สามารถพบได้ในแหล่งที่มาของ กลไกการสำรองแบบอักษรจะใช้เมื่อแบบอักษรได้รับการแก้ไขแต่ไม่มีอักขระเฉพาะ ในกรณีนี้Aspose.Wordsพยายามใช้แบบอักษรทางเลือกหนึ่งสำหรับอักขระ.

มีวิธีการ[BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic)ที่สร้างการตั้งค่าทางเลือกโดยอัตโนมัติโดยการสแกนแบบอักษรที่มีอยู่ คุณสามารถควบคุมพฤติกรรมแบบอักษรทางเลือกโดยใช้คุณสมบัติของคลาสของ[FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) คลาสนี้ระบุการตั้งค่าของกลไกการย้อนกลับแบบอักษร คุณจะได้รับอินสแตนซ์ของ**FontFallbackSettings**ชั้นดังนี้:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

ในทำนองเดียวกันกับ*Table substitution rule*กลไกนี้ใช้ตารางXMLสำหรับการกำหนดค่า ตารางเหล่านี้XMLสามารถโหลดและบันทึกด้วยวิธีการต่อไปนี้:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

รุ่นAspose.Wordsประกอบด้วยสองตาราง:*MsOfficeFallbackSetting.xml*และ*NotoFallbackSetting.xml*.

ตาราง*MsOfficeFallbackSetting*กำหนดกลยุทธ์การแทนที่สำหรับช่วงของอักขระซึ่งคล้ายกับกลยุทธ์ที่ใช้โดยMicrosoft Word ดังนั้นกลยุทธ์ที่ต้องติดตั้งแบบอักษรสำนักงานMicrosoft *MsOfficeFallbackSetting*สามารถเปิดใช้งานได้โดยใช้วิธีการต่อไปนี้:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

ตาราง*NotoFallbackSetting*ถูกสร้างขึ้นโดยเฉพาะสำหรับใช้กับแบบอักษรGoogle Noto(ดูข้อมูลเพิ่มเติมเกี่ยวกับGoogle Notoการตั้งค่าแบบอักษรในส่วนถัดไป)และสามารถเปิดใช้งานได้ดังนี้:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

ตัวอย่างรหัสต่อไปนี้สาธิตวิธีการโหลดการตั้งค่าแบบอักษรสำรองจากแฟ้มXML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

ในตัวอย่างรหัสข้างต้นใช้แฟ้มXMLต่อไปนี้:

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

## แบบอักษรที่กำหนดไว้ล่วงหน้าFallBackการตั้งค่าสำหรับGoogle Notoแบบอักษร

Aspose.Wordsให้การตั้งค่าแบบอักษรทางเลือกที่กำหนดไว้ล่วงหน้าสำหรับGoogle Notoแบบอักษร เหล่านี้เป็นแบบอักษรฟรีที่ได้รับอนุญาตภายใต้SILใบอนุญาตแบบอักษรเปิดที่สามารถดาวน์โหลดได้จากGoogle Notoแบบอักษร คลาส**FontFallbackSettings**มีวิธีการ[LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) โหลดการตั้งค่าทางเลือกที่กำหนดไว้ล่วงหน้าซึ่งใช้Google Notoแบบอักษรที่แสดงในตัวอย่างรหัสด้านล่:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

นโตะที่มีน้ำหนักปกติจะใช้ในการตั้งค่าที่กำหนดไว้ล่วงหน้า.

{{% /alert %}}

## ที่Aspose.Wordsมองหาแบบอักษร

Aspose.Wordsพยายามค้นหาแบบอักษรTrueTypeบนระบบไฟล์โดยอัตโนมัติ โดยปกติแล้วคุณสามารถพึ่งพาพฤติกรรมเริ่มต้นของAspose.Wordsเพื่อหาแบบอักษร`TrueType`แต่บางครั้งคุณต้องระบุโฟลเดอร์ของคุณเองที่มีแบบอักษรTrueType ร [ระบุตำแหน่งแบบอักษรTrueType](/words/java/specify-truetype-fonts-location/) หัวข้ออธิบายวิธีและตำแหน่งที่Aspose.Wordsมองหาแบบอักษรรวมทั้งวิธีการระบุตำแหน่งแบบอักษรของคุ.

## ความแตกต่างในการประมวลผลรูปแบบตัวอักษรในAspose.WordsและMicrosoft Word

มีความแตกต่างบางอย่างในการประมวลผลรูปแบบตัวอักษรในAspose.WordsและMicrosoft Wordดังที่แสดงในตารางด้านล่าง:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueTypeแบบอักษรและOpenTypeแบบอักษรที่มีTrueTypeเค้าร่าง | การสนับสนุน. | การสนับสนุน. |
| OpenTypeแบบอักษรที่มีPostScriptโครงร่าง | รองรับสถานการณ์ส่วนใหญ่ ไม่สนับสนุนการฝังรูปแบบหน้าถาวรเช่นPDFและXPS ข้อความจะถูกแทนที่ด้วยภาพบิตแมป. | สนับสนุนสำหรับสถานการณ์ส่วนใหญ่รวมถึงการฝังรูปแบบหน้าถาวร. |
| OpenTypeรูปแบบแบบอักษร | รองรับเฉพาะอินสแตนซ์ที่มีชื่อเท่านั้น ไม่สนับสนุนรูปแบบต่อเนื่อง. | รองรับสำหรับอินสแตนซ์ดีฟอลต์เท่านั้น อินสแตนซ์ที่มีชื่อและการเปลี่ยนแปลงอย่างต่อเนื่องจะไม่ได้รับการสนับสนุน. |
| ชนิด 1 แบบอักษร | สนับสนุนในWindowsรุ่นก่อนปี 2013 และในMacOS รุ่น การสนับสนุนจะลดลงบนWindowsรุ่นเริ่มต้นจาก 2013. | ไม่สนับสนุน. |

## ดูเพิ่มเติม

- [Google Notoแบบอักษร](https://fonts.google.com/noto) ดาวน์โหลดแบบอักษรฟรี


