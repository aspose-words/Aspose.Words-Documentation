---
title: MFontความพร้อมใช้งานและการทดแทนในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: ความพร้อมใช้งานแบบอักษรและการทดแทน
linktitle: ความพร้อมใช้งานแบบอักษรและการทดแทน
description: "เมื่อไม่พบแบบอักษรทดแทนที่แน่นอนAspose.Wordsจะต้องแทนที่แบบอักษรที่คล้ายกันแทน บทความนี้อธิบายขั้นตอนการค้นหาแบบอักษรที่เหมาะสมที่สุด."
type: docs
weight: 12
url: /th/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

บทความเกี่ยวกับคอมพิวเตอร์ที่ยังไม่สมบูรณ์ เมื่อAspose.Wordsแสดงผลเอกสารจะพยายามเลือกแบบอักษรที่ระบุในเอกสาร.

อย่างไรก็ตามมีสถานการณ์ที่ไม่พบแบบอักษรที่แน่นอนและAspose.Wordsต้องใช้แบบอักษรที่คล้ายกันแทน Aspose.Wordsเลือกแบบอักษรตามกระบวนการต่อไปนี้:

1. Aspose.Wordsพยายามหาแบบอักษรระหว่างแหล่งที่มาของแบบอักษรที่มีอยู่ด้วยชื่อแบบอักษรที่แน่นอน.
1. Aspose.Wordsพยายามหาแบบอักษรที่ต้องการในแบบอักษรที่ฝังอยู่ในเอกสารต้นฉบับ รูปแบบเอกสารบางอย่างเช่นDOCXสามารถมีแบบอักษรแบบฝังตัวได้.
1. หากAspose.Wordsไม่สามารถหาแบบอักษรที่ต้องการได้ด้วยชื่อที่ตรงกันและคุณสมบัติ[AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)ที่กำหนดไว้สำหรับแบบอักษรนี้Aspose.Wordsจะพบแบบอักษรที่กำหนดด้วย**AltName**จากชั้นเรียน[FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info)ซึ่งระบุข้อมูลแบบอักษร.
1. หากAspose.Wordsไม่สามารถค้นหาแบบอักษรที่กำหนดได้และ**AltName**ไม่ได้กำหนดด้วยกฎการแทนตัวอักษรจะถูกนำมาใช้ทีละตัวตามที่อธิบายไว้ด้านล่าง(เมื่อพบการแทนที่ที่เหมาะสมกระบวนการแทนที่ตัวอักษรจะหยุดลงและขั้นตอนต่อไปจะไม่ถูกดำเนินการ):
   1. Aspose.Wordsจะพยายามใช้OSการตั้งค่าแบบอักษร,ถ้าพวกเขามีอยู่,โดยใช้`FontConfig`ยูทิลิตี้. คุณลักษณะที่ไม่ใช่Windowsนี้ต้องใช้กับFontConfig-เข้ากันได้OS เกือบทุกยูนิกซ์OSมีไลบรารี`FontConfig`ที่ถูกออกแบบมาเพื่อให้การกำหนดค่าแบบอักษรทั้งระบบการปรับแ มารถติดตั้งได้อย่างง่ายดายโดยผู้ใช้<br>
      Aspose.Wordsรู้วิธีการค้นหาข้อมูลและตีความผลลัพธ์FontConfigเพื่อวัตถุประสงค์ของตนเอง โดยค่าเริ่มต้นโปรแกรมอรรถประโยชน์`FontConfig`ถูกปิดใช้งาน คุณสามารถเปิดใช้งานได้ดังนี้:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. ขั้นต่อไปคือกลไกที่เรียบง่ายแต่ทรงพลังอย่างเหลือเชื่อที่เรียกว่า[TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule) โดยค่าเริ่มต้นคุณลักษณะนี้จะใช้งานอยู่และพร้อมใช้งานสำหรับOSใดๆ Aspose.Wordsใช้XMLตารางที่กำหนดกฎการทดแทนขั้นพื้นฐานที่แตกต่างกันOS ตามกฎการแทนที่ตารางรายการของชื่อตัวอักษรแทนที่จะถูกนำมาใช้<br>
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
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      คุณสามารถใช้เป็นพื้นฐานตารางที่มีอยู่จากโถหรือบันทึกโปรแกรมในลักษณะต่อไปนี้:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      แม้จะมีความยืดหยุ่นของกลไกนี้มีบางกรณีเมื่อมันจะดีกว่าที่จะปิดการใช้งานดังที่แสดงด้านล่:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. กฎการแทนที่**FontInfo**จะถูกนำมาใช้หากกฎการแทนที่ตารางไม่สามารถหาแบบอักษรได้ กลไกนี้ถูกเปิดใช้งานโดยดีฟอลต์ Aspose.Wordsพบแบบอักษรที่เหมาะสมที่สุดตามข้อมูลแบบอักษรที่มีอยู่ในเอกสารเฉพาะ ข้อมูลนี้สามารถรับได้จากชั้นเรียน**FontInfo**ดังที่แสดงด้านล่าง:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      ผู้ใช้ไม่สามารถแทรกแซงในเวิร์กโฟลว์ของคุณลักษณะนี้จนกว่าพวกเขาจะตัดสินใจที่จะปิด:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      ถ้า**FontInfo**ไม่พร้อมใช้งานสำหรับแบบอักษรที่หายไปกระบวนการจะหยุดลง.
   1. **DefaultFont**กฎการแทนที่จะถูกนำมาใช้ในกรณีที่การแทนที่`FontInfo`ล้มเหลวเช่นกัน กฏนี้ถูกเปิดใช้งานโดยค่าเริ่มต้น ตามกฎนี้Aspose.Wordsจะพยายามใช้แบบอักษรดีฟอลต์ที่ระบุไว้ในคุณสมบัติ[DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/) หากผู้ใช้ยังไม่ได้เลือกแบบอักษรเริ่มต้นของตัวเองแล้ว"ครั้งโรมันใหม่"จะถูกใช้เป็นแบบอัก กฎนี้สามารถปิดใช้งานได้ตามที่แสดงด้านล่าง:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      เมื่อต้องการตรวจสอบแบบอักษรปริยายปัจจุบันให้ใช้:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      ในการตั้งค่าตัวเลือกการเปลี่ยนของคุณเอง,นำไปใช้:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. ถ้าAspose.Wordsไม่สามารถทำการทดแทนแบบอักษรได้จะพยายามหาแบบอักษรที่มีอยู่ตัวแรกจากแหล่งแบบอักษรที่มีอยู่.
1. สุดท้ายหากAspose.Wordsไม่พบแบบอักษรใดๆในแหล่งที่มาของแบบอักษรที่มีอยู่จะแสดงผลเอกสารโดยใช้แบบอักษรฟรีที่ฝังอยู่ในแอสเซมบลีAspose.Words.

{{% alert color="primary" %}}

ถ้า**FontInfo**มีอยู่*FontInfo substitution rule*จะแก้ไขแบบอักษรและแทนที่กฎแบบอักษรเริ่มต้น ถ้าคุณต้องการใช้กฎแบบอักษรเริ่มต้นคุณควรปิดใช้งาน*FontInfo substitution rule* โปรดทราบว่า*FontConfig substitution rule*จะแก้ไขแบบอักษรในกรณีส่วนใหญ่และจะแทนที่กฎอื่นๆทั้งหมด.

{{% /alert %}}


