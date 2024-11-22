---
title: แทรกและเพิ่มเอกสารใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: แทรกและเพิ่มเอกสาร
linktitle: แทรกและเพิ่มเอกสาร
description: "รวมเอกสารเข้าเป็นหนึ่ง ๆ: แทรกหรือเพิ่มเอกสารเข้าในเอกสารใหม่หรือที่มีอยู่ โดยใช้และแทนที่, รวมช่องข้อมูล, คั่นหน้า, หรือแค่สิ้นสุดเอกสารเท่านั้น Java."
type: docs
weight: 80
url: /th/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

บาง ครั้ง จําเป็น ต้อง รวม เอกสาร หลาย ฉบับ เข้า เป็น หนึ่ง เดียว. คุณสามารถทําเช่นนี้ด้วยตนเองหรือคุณสามารถใช้ Aspose.Words แทรกหรือเพิ่มคุณสมบัติ

การแทรกปฏิบัติการนี้ ให้คุณได้แทรกเนื้อหาของเอกสารที่ถูกสร้างขึ้นก่อนหน้านี้ ไปยังเอกสารใหม่หรือที่มีอยู่แล้ว

คุณสมบัติเพิ่มเติมนี้ จะอนุญาตให้คุณทําการเพิ่มเอกสารได้ เมื่อเอกสารอื่นจบการทํางานเท่านั้น

บทความ นี้ อธิบาย วิธี ใส่ หรือ เพิ่ม เอกสาร ให้ อีก เอกสาร หนึ่ง ใน วิธี ต่าง ๆ กัน และ อธิบาย คุณสมบัติ ทั่ว ไป ที่ คุณ สามารถ นํา มา ใช้ ได้ ขณะ ที่ ใส่ หรือ เพิ่ม เอกสาร.

## แทรกเอกสาร

ดัง ที่ กล่าว ข้าง ต้น ใน Aspose.Words เอกสาร นี้ ถูก แทน ที่ ด้วย ต้น โหนด และ การ สอด เอกสาร หนึ่ง เข้า ไป ใน อีก เอกสาร หนึ่ง ก็ คือ การ เลียน แบบ โหนด จาก ต้น ฉบับ แรก ไป ยัง ต้น ที่ สอง.

คุณ สามารถ ใส่ เอกสาร ลง ใน ที่ ต่าง ๆ ได้ หลาย แห่ง. ตัวอย่างเช่น คุณสามารถแทรกเอกสารผ่านปฏิบัติการที่แทนที่ได้ สนามรวมระหว่างปฏิบัติการรวม หรือผ่านทางที่คั่นหน้า

คุณสามารถใช้ [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) หรือ [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) วิธีการ, ซึ่งคล้ายกับการใส่เอกสารใน Microsoft Word, ให้ใส่เอกสารทั้งเอกสารในตําแหน่งเคอร์เซอร์ปัจจุบันโดยไม่มีการนําเข้าก่อนหน้า

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการใส่เอกสารโดยใช้ **InsertDocument** วิธีการ:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการใส่เอกสารโดยใช้ **InsertDocumentInline** วิธีการ:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

รายการย่อยต่อไปนี้ จะอธิบายตัวเลือกต่าง ๆ ระหว่างที่คุณสามารถแทรกเอกสารหนึ่งไปยังอีกเอกสารหนึ่งได้

### แทรกเอกสารระหว่างการค้นหาและแทนที่ปฏิบัติการ {#insert-a-document-during-find-and-replace-operation}

คุณสามารถแทรกเอกสารได้ขณะทําการค้นหาและทําการแทนที่ ตัว อย่าง เช่น เอกสาร อาจ มี วรรค ต่าง ๆ ที่ มี ข้อ ความ [ภาษา อังกฤษ] และ [ภาษา อังกฤษ]. แต่ ใน เอกสาร สุด ท้าย คุณ ต้อง เปลี่ยน ข้อ ความ ที่ ได้ มา จาก เอกสาร ภาย นอก อีก ฉบับ หนึ่ง. เพื่อบรรลุเป้าหมายนั้น คุณจะต้องสร้างผู้ดูแลสําหรับเหตุการณ์ที่แทนที่

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีสร้างตัวจัดการสําหรับแทนที่เหตุการณ์ที่จะใช้มันในภายหลังในกระบวนการแทรก:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการแทรกเนื้อหาของเอกสารหนึ่งไปยังอีกเอกสารหนึ่งระหว่างการค้นหาและแทนที่ปฏิบัติการ:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### แทรกเอกสารระหว่าง Mail Merge ปฏิบัติการ {#insert-a-document-during-mail-merge-operation}

คุณสามารถแทรกเอกสารลงในช่องข้อมูลรวมระหว่าง Mail Merge ปฏิบัติการ ยกตัวอย่างเช่น Mail Merge แม่แบบสามารถรวมสนามได้ เช่น [ซูเมรี่] แต่ในเอกสารสุดท้าย คุณจะต้องแทรกเนื้อหาที่ได้รับจากเอกสารภายนอกอื่น ๆ ในสนามรวมนี้ เพื่อบรรลุเป้าหมายนั้น คุณจะต้องสร้างผู้ดูแลสําหรับการรวมเหตุการณ์เข้าด้วยกัน

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีสร้างตัวจัดการสําหรับเหตุการณ์คอมไพล์ที่จะใช้ภายหลังในกระบวนการแทรก:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีแทรกเอกสารเข้าไปในช่องข้อมูลรวมโดยใช้ตัวจัดการที่ถูกสร้าง:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### แทรกเอกสารที่ที่คั่นหน้า

คุณสามารถนําเข้าแฟ้มข้อความ มาเป็นเอกสาร และแทรกมันเข้าไป หลังจากคั่นหน้าที่คุณกําหนดไว้ในเอกสารแล้ว เพื่อสร้างย่อหน้าที่คั่นหน้าที่คุณต้องการให้ใส่เอกสาร

ตัวอย่างการเข้ารหัสต่อไปนี้ แสดงวิธีแทรกเนื้อหาของเอกสารหนึ่งไปยังที่คั่นหน้าในเอกสารอื่น ๆ:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

โปรดสังเกตว่า คั่นหน้าไม่ควรจะรวมหลาย ๆ ย่อหน้าหรือข้อความที่คุณต้องการให้ปรากฎในเอกสารผลสุดท้ายของคุณ

{{% /alert %}}

## เพิ่มเอกสาร

คุณ อาจ มี กรณี ที่ จําเป็น ต้อง มี หน้า ที่ เพิ่ม จาก เอกสาร ไป จน ถึง ท้าย เอกสาร ที่ มี อยู่ แล้ว. เพื่อทําสิ่งนี้ คุณต้องเรียกว่า [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) วิธีการเพิ่มเอกสารไปยังท้ายเอกสารอื่น ๆ

{{% alert color="primary" %}}

สังเกตว่า [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) เป็นวิธีการระดับโหนดภายในเอกสาร ยกตัวอย่างเช่น คุณสามารถสร้างวรรคได้ วางคุณสมบัติการตกแต่ง และต่อเติมมันให้เป็นเด็กให้ร่างกายใช้ **AppendChild** วิธี

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการต่อเอกสาร ไปยังส่วนท้ายของเอกสารอื่น ๆ:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## นําเข้าและแทรกโหนดด้วยตนเอง {#import-and-insert-nodes-manually}

Aspose.Words ให้คุณได้แทรกและเพิ่มเอกสารต่อท้ายโดยอัตโนมัติ โดยไม่ต้องมีการนําเข้าข้อมูลก่อนหน้า อย่าง ไร ก็ ตาม หาก คุณ จําเป็น ต้อง สอด หรือ เติม โหนด เฉพาะ ของ เอกสาร ของ คุณ เช่น ส่วน หนึ่ง หรือ วรรค ก่อน ก่อน อื่น คุณ ต้อง นํา โหนด นี้ เข้า มา ด้วย ตัว เอง.

เมื่อคุณจําเป็นต้องแทรกหรือเพิ่มส่วนใดส่วนหนึ่งหรือย่อหน้าหนึ่งไปยังอีกส่วนหนึ่ง คุณต้องนําเข้าโหนดของต้นโหนดเอกสารแรก ไปเป็นต้นที่สองโดยใช้ [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) วิธี หลังจากนําเข้าโหนดของคุณ คุณจะต้องใช้ [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) วิธีการใส่โหนดใหม่หลัง/ ก่อนโหนดอ้างอิง ให้คุณได้ปรับแต่งโพรเซสการแทรก ด้วยการนําเข้าโหนดจากเอกสาร และแทรกมันไปยังตําแหน่งที่กําหนด

คุณสามารถใช้ [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) วิธีการเพิ่มโหนดที่ระบุไว้ใหม่ไปยังส่วนท้ายของโหนดลูก ตัวอย่างเช่น หากคุณต้องการเพิ่มข้อมูลในเพิ่มเติมที่ระดับ parts แทนการอยู่ที่ระดับส่วน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการนําเข้าโหนดด้วยตนเองและแทรกมัน หลังจากโหนดเฉพาะโดยใช้ **InsertAfter** วิธีการ:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

การนําเข้านี้จะสร้างโหนดใหม่ ที่เป็นสําเนาของโหนดต้นฉบับ และเหมาะกับการแทรกข้อมูลไปยังเอกสารปลายทาง

{{% /alert %}}

เนื้อหาจะถูกนําเข้ามายังส่วนเอกสารปลายทาง ทีละส่วนของเอกสาร ซึ่งหมายความว่า การตั้งค่าหน้า หรือส่วนหัวจดหมาย จะถูกเก็บไว้ระหว่างการนําเข้า เป็น ประโยชน์ ด้วย ที่ จะ สังเกต ว่า คุณ สามารถ กําหนด ค่า การ ฟอร์แมต ได้ เมื่อ คุณ สอด หรือ เพิ่ม เติม เอกสาร เพื่อ ระบุ ว่า มี การ เชื่อม โยง เอกสาร สอง เอกสาร เข้า ด้วย กัน อย่าง ไร.

## คุณสมบัติทั่วไปสําหรับแทรกและเพิ่มเอกสาร {#common-properties-for-insert-and-append-documents}

ทั้งคู่ [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) ถึง [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) ยอมรับวิธีการ [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) ถึง [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) เป็นพารามิเตอร์การนําเข้า เดอะ **ImportFormatMode** ให้คุณได้ควบคุมการรวมการแปลงเอกสารเข้าด้วยกัน เมื่อคุณนําเข้าเนื้อหาจากเอกสารหนึ่งมายังอีกเอกสารหนึ่ง โดยการเลือกโหมดรูปแบบต่าง ๆ เช่น [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), ถึง [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). เดอะ **ImportFormatOptions** ให้คุณได้เลือกตัวเลือกการนําเข้าอื่น ๆ เช่น [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), ถึง [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words ให้คุณได้ปรับค่าภาพของภาพผลลัพธ์ของเอกสาร เมื่อมีการเพิ่มเอกสาร 2 เอกสารเข้าในปฏิบัติการแทรกหรือเพิ่มต่อท้ายโดยใช้ [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) ถึง [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) คุณสมบัติ เดอะ **PageSetup** คุณสมบัติต่าง ๆ ของส่วนต่าง ๆ เช่น [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), และคนอื่นๆ กรณีที่ใช้บ่อยที่สุดคือการตั้งค่า **SectionStart** คุณสมบัติที่จะใช้กําหนดว่าจะให้เนื้อหาที่เพิ่มเข้าไปปรากฏบนหน้าเดียวกัน หรือแยกเป็นหน้าใหม่

{{% alert color="primary" %}}

สังเกตว่า **Section** ถึง **PageSetup** คุณสมบัติ ไม่ รู้ ว่า มี การ ใส่ หรือ ยัด เอกสาร สอง เอกสาร เข้า ด้วย กัน อย่าง ไร. เอกสาร เหล่า นี้ เพียง แต่ ทํา ให้ คุณ เปลี่ยน รูป แบบ การ ปรากฏ ของ เอกสาร ผล งาน.

{{% /alert %}}

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ เพิ่ม เอกสาร หนึ่ง เข้า ไป ใน อีก เอกสาร หนึ่ง ขณะ เดียว กัน ก็ เก็บ เนื้อหา ไว้ จาก การ แยก สอง หน้า:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
