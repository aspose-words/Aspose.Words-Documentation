---
title: แทนที่แบบอักษร TrueType
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: จัดการและแทนที่แบบอักษร TrueType
linktitle: จัดการและแทนที่แบบอักษร TrueType
description: "Aspose.Words สำหรับ Python via .NET สามารถฝังแบบอักษร TrueType ที่ถูกต้องลงในเอกสารผลลัพธ์เพื่อให้แน่ใจว่าจะแสดงได้อย่างถูกต้อง หากไม่มีแบบอักษรหรืออักขระเฉพาะ Aspose.Words จะค้นหาการแทนที่แบบอักษรที่เหมาะสมหรือใช้กลไกทางเลือกแบบอักษร"
type: docs
weight: 10
url: /th/python-net/manipulating-and-substitution-truetype-fonts/
---

Aspose.Words ต้องใช้แบบอักษร TrueType สำหรับงานที่หลากหลาย รวมถึงการเรนเดอร์เอกสารเป็นรูปแบบหน้าตายตัว เช่น PDF หรือ XPS เมื่อ Aspose.Words เรนเดอร์เอกสาร จะต้องทำการฝังและฝังชุดย่อยของแบบอักษร TrueType ลงในเอกสารผลลัพธ์ ซึ่งเป็นแนวทางปฏิบัติปกติในการสร้างเอกสาร รวมถึงรูปแบบ PDF หรือ XPS ยอดนิยม เพื่อให้แน่ใจว่าเอกสารจะปรากฏต่อผู้ดูทุกคนเหมือนกัน นอกจากนี้ ข้อกำหนด XPS กำหนดให้ฝังแบบอักษรในเอกสารเสมอ

เพื่อให้แน่ใจว่า Aspose.Words วัดอักขระได้อย่างแม่นยำและฝังแบบอักษรที่เกี่ยวข้องได้สำเร็จ ต้องเป็นไปตามเงื่อนไขต่อไปนี้:

1. Aspose.Words ควรสามารถค้นหาและเข้าถึงไฟล์ฟอนต์ TrueType บนระบบได้
1. Aspose.Words จะต้องมีฟอนต์ TrueType เพียงพอ โดยควรมีชื่อตระกูลฟอนต์เดียวกันกับที่ใช้ในเอกสาร

โปรดทราบว่าแบบอักษรในเอกสารแสดงถึงเอนทิตี เช่น นามสกุล สไตล์ ขนาด สี ซึ่งแตกต่างจากเอนทิตีแบบอักษร `TrueType` (แบบอักษรจริง) Aspose.Words แก้ไขแบบอักษรในเอกสารเป็นแบบอักษรจริงในบางขั้นตอนของการประมวลผล ซึ่งช่วยให้ทำงานบางอย่างได้ โดยส่วนใหญ่เป็นงานคำนวณขนาดข้อความระหว่างการสร้างเลย์เอาต์และการฝัง/การตั้งค่าย่อยเป็นรูปแบบเพจคงที่ งานอื่นๆ ที่ไม่ค่อยได้รับความนิยม เช่น การแก้ไขแบบอักษรและการทดแทนในขณะที่โหลด HTML หรือการฝัง/การตั้งค่าย่อยเป็นรูปแบบโฟลว์บางรูปแบบ ก็ถูกเปิดใช้งานเช่นเดียวกัน

## การจัดการแบบอักษรและปัญหาด้านประสิทธิภาพ

กลไกการจัดการแบบอักษรที่มีอยู่ทั้งหมดมีอยู่ในคลาส [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) คลาสนี้มีหน้าที่รับผิดชอบในการดึงฟอนต์ภายในแหล่งฟอนต์ที่กำหนด รวมถึงกระบวนการแทนที่ฟอนต์ ดังที่อธิบายไว้ด้านล่าง

แบบอักษรจะถูกแยกวิเคราะห์ในหลายขั้นตอน:

1. รับข้อมูลฟอนต์ โดยแก้ไขจากฟอนต์ที่มีอยู่ทั้งหมด
1. แยกวิเคราะห์แบบอักษรที่แก้ไขแล้วเพื่อรับ glyph และเมตริกที่พร้อมใช้งาน (แนวนอนและแนวตั้ง)
1. การแยกวิเคราะห์แบบอักษรที่แก้ไขแล้วสำหรับการฝังและการตั้งค่าย่อย

เมื่อ Aspose.Words พบแบบอักษรในเอกสารเป็นครั้งแรก เอกสารจะพยายามรับข้อมูลแบบอักษรพื้นฐาน เช่น ชื่อเต็มของแบบอักษร นามสกุล เวอร์ชัน สไตล์ จากไฟล์แบบอักษรที่อยู่ในแหล่งแบบอักษรแต่ละแหล่ง หลังจากที่ดึงข้อมูลแบบอักษรทั้งหมดแล้ว Aspose.Words จะใช้รายละเอียดเหล่านี้เพื่อค้นหาข้อมูลแบบอักษรที่ต้องการหรือการแทนที่ที่เหมาะสมสำหรับแบบอักษรที่ร้องขอ

เนื่องจากขั้นตอนที่อธิบายไว้ข้างต้นใช้เวลานาน จึงอาจส่งผลเสียต่อประสิทธิภาพของแอปพลิเคชันตั้งแต่เปิดตัวครั้งแรก อย่างไรก็ตาม แต่ละอินสแตนซ์ของ [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) จะมีแคชของตัวเอง ซึ่งอาจลดเวลาการประมวลผลของเอกสารที่ตามมาได้ ตัวอย่างเช่น คุณสามารถแชร์อินสแตนซ์ของคลาส [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) ระหว่างเอกสารต่างๆ ได้ ซึ่งช่วยให้คุณเพิ่มความเร็วในการโหลดเอกสารได้ ตัวอย่างต่อไปนี้แสดงให้เห็นถึงสิ่งนี้:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsWithLoadOption.py" >}}

ในกรณีที่ไม่ได้กำหนด [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) ไว้อย่างชัดเจน Aspose.Words จะใช้อินสแตนซ์ [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) เริ่มต้น อินสแตนซ์นี้ยังแชร์ระหว่างเอกสารต่างๆ โดยอัตโนมัติด้วย และสามารถแยกออกมาได้ดังต่อไปนี้:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsDefaultInstance.py" >}}

หากคุณแน่ใจว่าเอกสารที่กำลังประมวลผลทั้งหมดต้องใช้การตั้งค่าแบบอักษรเดียวกัน ขอแนะนำให้ตั้งค่าและใช้อินสแตนซ์ [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) เริ่มต้น สมมติว่าคุณต้องใช้แหล่งแบบอักษรเดียวกันสำหรับเอกสารทั้งหมดของคุณ ในกรณีนี้ คุณสามารถแก้ไขอินสแตนซ์เริ่มต้นได้ดังนี้:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsFontSource.py" >}}

{{% alert color="primary" %}}

[FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) แบบกำหนดเองมีลำดับความสำคัญสูงกว่าอินสแตนซ์เริ่มต้น

{{% /alert %}}

## ความพร้อมใช้งานและการทดแทนแบบอักษร

ข้อความในเอกสารสามารถจัดรูปแบบด้วยแบบอักษรต่างๆ เช่น Arial, Times New Roman, Verdana และอื่นๆ เมื่อ Aspose.Words แสดงผลเอกสาร Aspose.Words จะพยายามเลือกแบบอักษรที่ระบุไว้ในเอกสาร

อย่างไรก็ตาม มีบางสถานการณ์ที่ไม่พบแบบอักษรที่ตรงกันทุกประการ และ Aspose.Words ต้องแทนที่ด้วยแบบอักษรที่คล้ายกันแทน Aspose.Words เลือกแบบอักษรตามกระบวนการต่อไปนี้:
1. Aspose.Words พยายามค้นหาแบบอักษรจากแหล่งแบบอักษรที่มีอยู่พร้อมชื่อแบบอักษรที่ตรงกันทุกประการ
1. Aspose.Words พยายามค้นหาแบบอักษรที่ต้องการจากแบบอักษรที่ฝังอยู่ในเอกสารต้นฉบับ เอกสารบางรูปแบบ เช่น DOCX อาจมีแบบอักษรฝังอยู่
1. หาก Aspose.Words ไม่สามารถค้นหาแบบอักษรที่ต้องการซึ่งมีชื่อตรงกันทุกประการ และคุณสมบัติ [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) ที่กำหนดไว้สำหรับแบบอักษรนี้ Aspose.Words จะค้นหาแบบอักษรที่กำหนดด้วย [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) จากคลาส [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) ซึ่งระบุข้อมูลแบบอักษร
1. หาก Aspose.Words ไม่สามารถระบุตำแหน่งแบบอักษรที่กำหนดไว้ได้ และไม่ได้กำหนด [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) ไว้ด้วย กฎการแทนที่แบบอักษรจะถูกใช้ทีละรายการ ดังที่อธิบายไว้ด้านล่าง (เมื่อพบการแทนที่ที่เหมาะสม กระบวนการทดแทนแบบอักษรจะหยุดลงและ ขั้นตอนต่อไปจะไม่ถูกดำเนินการ):
   1. ขั้นแรก Aspose.Words พยายามประมวลผลชื่อแบบอักษรเพื่อรับการทดแทน โดยเฉพาะอย่างยิ่งพยายามลบส่วนต่อท้ายด้วยตัวคั่น "-" และ ","<br>
      หากกฎการแทนที่นี้เกิดขึ้น จะไม่พบ "แบบอักษร '&lt;OriginalFont&gt;' ใช้แบบอักษร '&lt;SubstitutionFont&gt;' แทน เหตุผล: การทดแทนชื่อแบบอักษร" คำเตือนปรากฏขึ้น<br>
   1. จากนั้น Aspose.Words จะพยายามใช้การตั้งค่าแบบอักษรของระบบปฏิบัติการ (หากมี) โดยใช้ยูทิลิตี **FontConfig** ต้องใช้ฟีเจอร์ที่ไม่ใช่ Windows นี้กับระบบปฏิบัติการที่เข้ากันได้กับ FontConfig ระบบปฏิบัติการที่ใช้ Unix เกือบทุกระบบมีไลบรารี `FontConfig` ที่ได้รับการออกแบบมาเพื่อให้การกำหนดค่าแบบอักษรทั่วทั้งระบบ การปรับแต่ง และการเข้าถึงแอปพลิเคชัน มิฉะนั้น ผู้ใช้สามารถติดตั้งไลบรารีนี้ได้อย่างง่ายดาย
      Aspose.Words รู้วิธีสืบค้นข้อมูลและตีความผลลัพธ์ FontConfig เพื่อจุดประสงค์ของตนเอง ตามค่าเริ่มต้น ยูทิลิตี `FontConfig` จะถูกปิดใช้งาน คุณสามารถเปิดใช้งานได้ดังนี้:<br>
{{< highlight python >}}
fontSettings.substitution_settings.font_config_substitution.enabled = True
{{< /highlight >}}
   1. ขั้นตอนต่อไปใช้กลไกที่เรียบง่ายแต่ทรงพลังที่เรียกว่ากฎการทดแทน **Table** ตามค่าเริ่มต้น คุณลักษณะนี้จะเปิดใช้งานและพร้อมใช้งานสำหรับระบบปฏิบัติการที่กำหนด Aspose.Words จะแทนที่แบบอักษรด้วยกฎนี้หากไม่ได้แทนที่ด้วยกฎการแทนที่ `FontConfig`<br>
      Aspose.Words ใช้ตาราง XML ซึ่งกำหนดกฎการทดแทนพื้นฐานสำหรับระบบปฏิบัติการที่แตกต่างกัน ตามกฎการแทนที่ตาราง รายการชื่อแบบอักษรทดแทนจะถูกนำมาใช้<br>
      **XML**<br>
{{< highlight html >}}
<TableSubstitutionSettings xmlns="Aspose.Words"> 
<SubstitutesTable> 
<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
… 
</SubstitutesTable> 
</TableSubstitutionSettings>
{{< /highlight >}}
      คุณลักษณะหลักของกฎนี้คือความสามารถในการโหลดตารางการแทนที่ของคุณเอง ดังที่แสดงในตัวอย่างต่อไปนี้:<br>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.load("Table.xml")
{{< /highlight >}}
      แม้ว่ากลไกนี้จะมีความยืดหยุ่น แต่ก็มีบางกรณีที่ควรปิดการใช้งานจะดีกว่า ดังที่แสดงด้านล่าง:<br>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.enabled = False
{{< /highlight >}}
   1. กฎการทดแทน [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) จะถูกนำมาใช้หากกฎการทดแทนตารางไม่พบแบบอักษร กลไกนี้เปิดใช้งานตามค่าเริ่มต้น Aspose.Words ค้นหาแบบอักษรที่เหมาะสมที่สุดตามข้อมูลแบบอักษรที่มีอยู่ในเอกสารเฉพาะ ข้อมูลนี้สามารถรับได้จากคลาส [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) ดังที่แสดงด้านล่าง:<br>
{{< highlight python >}}
fontInfos = doc.font_infos
{{< /highlight >}}
      ผู้ใช้ไม่สามารถแทรกแซงเวิร์กโฟลว์ของคุณสมบัตินี้ได้ เว้นแต่พวกเขาจะตัดสินใจปิดการใช้งานในกรณีที่ผลลัพธ์ไม่เป็นที่น่าพอใจ:<br>
{{< highlight python >}}
fontSettings.substitution_settings.font_info_substitution.enabled = False
{{< /highlight >}}
      หากไม่มี [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) สำหรับแบบอักษรที่หายไป กระบวนการจะหยุดลง<br>
   1. กฎการทดแทน [DefaultFont](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/) จะถูกนำมาใช้ในกรณีที่การทดแทน `FontInfo` ล้มเหลวเช่นกัน กฎนี้ยังเปิดใช้งานตามค่าเริ่มต้นด้วย ตามกฎนี้ Aspose.Words จะพยายามใช้แบบอักษรเริ่มต้นที่ระบุในคุณสมบัติ [default_font_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/default_font_name/) หากผู้ใช้ไม่ได้เลือกแบบอักษรเริ่มต้นของตนเอง ระบบจะใช้ "Times New Roman" เป็นแบบอักษรเริ่มต้น กฎนี้สามารถปิดใช้งานได้ดังที่แสดงด้านล่าง:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.enabled = False
{{< /highlight >}}
      หากต้องการตรวจสอบแบบอักษรเริ่มต้นปัจจุบัน ให้ใช้:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name
{{< /highlight >}}
      หากต้องการตั้งค่าตัวเลือกการเปลี่ยนทดแทนของคุณเอง ให้ใช้:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name = "Arial"
{{< /highlight >}}
1. หาก Aspose.Words ไม่สามารถทำการทดแทนแบบอักษรได้ จะพยายามรับแบบอักษรแรกที่มีอยู่จากแหล่งแบบอักษรที่มีอยู่
1. สุดท้ายนี้ หาก Aspose.Words ไม่พบแบบอักษรใดๆ จากแหล่งแบบอักษรที่มีอยู่ ระบบจะแสดงผลเอกสารโดยใช้แบบอักษร Fanwood ฟรีที่ฝังอยู่ในแพ็คเกจ Aspose.Words<br>

หากมี [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) *กฎการแทนที่ FontInfo* จะแก้ไขแบบอักษรและแทนที่กฎแบบอักษรเริ่มต้นเสมอ หากคุณต้องการใช้กฎแบบอักษรเริ่มต้น คุณควรปิดใช้งาน *กฎการทดแทน FontInfo* โปรดทราบว่า *กฎการแทนที่ FontConfig* จะแก้ไขแบบอักษรในกรณีส่วนใหญ่ และจะแทนที่กฎอื่นๆ ทั้งหมด

## การตั้งค่า FallBack แบบอักษรจาก XML

มีกลไกที่แตกต่างกัน 2 ประการที่ใช้ใน Aspose.Words ได้แก่ การทดแทนแบบอักษรและทางเลือกแบบอักษร การทดแทนแบบอักษรจะใช้เมื่อไม่พบแบบอักษรที่ระบุในเอกสารในแหล่งแบบอักษรตามที่อธิบายไว้ในส่วนข้างต้น กลไกการใช้ทางเลือกแบบอักษรจะใช้เมื่อแก้ไขแบบอักษร แต่ไม่มีอักขระเฉพาะ ในกรณีนี้ Aspose.Words จะพยายามใช้แบบอักษรสำรองแบบใดแบบหนึ่งสำหรับอักขระ

มีวิธี [build_automatic](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/build_automatic/) ที่สร้างการตั้งค่าทางเลือกโดยอัตโนมัติโดยการสแกนแบบอักษรที่มีอยู่ เนื่องจากวิธีนี้อาจทำให้เกิดการตั้งค่าทางเลือกที่ไม่เหมาะสม คุณสามารถควบคุมลักษณะการทำงานของทางเลือกแบบอักษรได้ โดยใช้คุณสมบัติของคลาส [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) คลาสนี้ระบุการตั้งค่ากลไกทางเลือกแบบอักษร คุณสามารถรับอินสแตนซ์ของคลาส [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) ได้ดังนี้:

{{< highlight python >}}
settings = fontSettings.fallback_settings
{{< /highlight >}}

ในทำนองเดียวกันกับ *กฎการทดแทนตาราง* กลไกนี้ใช้ตาราง XML สำหรับการกำหนดค่า ตาราง XML เหล่านี้สามารถโหลดและบันทึกได้ด้วยวิธีต่อไปนี้:

{{< highlight python >}}
fontSettings.fallback_settings.load("MyNewFallbackTable.xml")
fontSettings.fallback_settings.save("Current_FallbackTable.xml")
{{< /highlight >}}

รุ่น Aspose.Words ประกอบด้วย 2 ตาราง: *MsOfficeFallbackSetting.xml* และ *NotoFallbackSetting.xml*

ตาราง *MsOfficeFallbackSetting* กำหนดกลยุทธ์การแทนที่สำหรับช่วงอักขระ ซึ่งคล้ายกับกลยุทธ์ที่ใช้โดย Microsoft Word ดังนั้นกลยุทธ์นี้จึงต้องติดตั้งฟอนต์ Microsoft Office สามารถเปิดใช้งาน *MsOfficeFallbackSetting* ได้โดยใช้วิธีการต่อไปนี้:

{{< highlight python >}}
fontSettings.fallback_settings.load_ms_office_fallback_settings()
{{< /highlight >}}

ตาราง *NotoFallbackSetting* ถูกสร้างขึ้นเพื่อใช้กับแบบอักษร Google Noto โดยเฉพาะ (ดูเพิ่มเติมเกี่ยวกับการตั้งค่าแบบอักษร Google Noto ในส่วนถัดไป) และสามารถเปิดใช้งานได้ดังต่อไปนี้:

{{< highlight python >}}
fontSettings.fallback_settings.load_noto_fallback_settings()
{{< /highlight >}}

ตัวอย่างโค้ดต่อไปนี้สาธิตวิธีการโหลดการตั้งค่าทางเลือกแบบอักษรจากไฟล์ XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontFallbackSettings.py" >}}

ในตัวอย่างโค้ดข้างต้น มีการใช้ไฟล์ XML ต่อไปนี้:

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

## การตั้งค่า FallBack แบบอักษรที่กำหนดไว้ล่วงหน้าสำหรับแบบอักษร Google Noto

Aspose.Words มีการตั้งค่าทางเลือกแบบอักษรที่กำหนดไว้ล่วงหน้าสำหรับแบบอักษร Google Noto แบบอักษรเหล่านี้เป็นแบบอักษรฟรีที่ได้รับอนุญาตภายใต้ SIL Open Font License ซึ่งสามารถดาวน์โหลดได้จากแบบอักษร Google Noto คลาส [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) มีเมธอด [load_noto_fallback_settings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/load_noto_fallback_settings/) โหลดการตั้งค่าทางเลือกที่กำหนดไว้ล่วงหน้าซึ่งใช้แบบอักษร Google Noto ดังแสดงในตัวอย่างโค้ดด้านล่าง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetPredefinedFontFallbackSettings.py" >}}

{{% alert color="primary" %}}

เฉพาะแบบอักษร Noto สไตล์ Sans ที่มีน้ำหนักปกติเท่านั้นที่จะถูกนำมาใช้ในการตั้งค่าที่กำหนดไว้ล่วงหน้า

{{% /alert %}}

## โดยที่ Aspose.Words ค้นหาแบบอักษร

Aspose.Words พยายามค้นหาแบบอักษร TrueType บนระบบไฟล์โดยอัตโนมัติ โดยปกติแล้ว คุณสามารถใช้ลักษณะการทำงานเริ่มต้นของ Aspose.Words เพื่อค้นหาแบบอักษร `TrueType` ได้ แต่บางครั้งคุณจำเป็นต้องระบุโฟลเดอร์ของคุณเองที่มีแบบอักษร TrueType หัวข้อ [ระบุตำแหน่งแบบอักษร TrueType](/words/th/python-net/specifying-truetype-fonts-location/) อธิบายวิธีการและตำแหน่งที่ Aspose.Words ค้นหาแบบอักษร ตลอดจนวิธีระบุตำแหน่งแบบอักษรของคุณเอง

## ความแตกต่างในการประมวลผลรูปแบบแบบอักษรใน Aspose.Words และ Microsoft Word

การประมวลผลรูปแบบแบบอักษรใน Aspose.Words และ Microsoft Word มีความแตกต่างบางประการดังที่แสดงในตารางด้านล่าง:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| แบบอักษร TrueType และแบบอักษร OpenType พร้อมโครงร่าง TrueType | ได้รับการสนับสนุน. | ได้รับการสนับสนุน. |
| แบบอักษร OpenType พร้อมโครงร่าง PostScript | รองรับสถานการณ์ส่วนใหญ่ ไม่รองรับการฝังในรูปแบบหน้าตายตัว เช่น PDF และ XPS ข้อความจะถูกแทนที่ด้วยภาพบิตแมป | รองรับสถานการณ์ส่วนใหญ่ รวมถึงการฝังในรูปแบบเพจคงที่ |
| การเปลี่ยนแปลงแบบอักษร OpenType | รองรับเฉพาะอินสแตนซ์ที่มีชื่อเท่านั้น ไม่รองรับรูปแบบต่อเนื่อง | รองรับอินสแตนซ์เริ่มต้นเท่านั้น ไม่รองรับอินสแตนซ์ที่มีชื่อและรูปแบบต่อเนื่อง |
| แบบอักษร Type1 | รองรับในเวอร์ชัน Windows ก่อนปี 2013 และบนเวอร์ชัน MacOS การสนับสนุนถูกยกเลิกในเวอร์ชัน Windows ตั้งแต่ปี 2013 เป็นต้นไป | ไม่รองรับ. |

## ดูสิ่งนี้ด้วย

- [แบบอักษร Google Noto](https://fonts.google.com/noto) เพื่อดาวน์โหลดแบบอักษรฟรี
