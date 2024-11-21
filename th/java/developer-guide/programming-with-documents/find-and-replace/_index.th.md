---
title: ค้นหาและแทนที่ Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ค้นหาและแทนที่
linktitle: ค้นหาและแทนที่
type: docs
description: "ค้นหาข้อความหรือรูปแบบการค้นหาในเอกสารของคุณ แล้วแทนที่ด้วยข้อความที่คุณต้องการใช้ Java."
weight: 100
url: /th/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

คุณ สามารถ นํา ทาง ได้ ง่าย ใน เอกสาร ของ คุณ โดย ใช้ คีย์บอร์ด และ เมาส์ แต่ ถ้า คุณ มี หลาย หน้า ที่ จะ เลื่อน ผ่าน ไป ก็ จะ ต้อง ใช้ เวลา นาน ที เดียว กว่า จะ พบ ข้อ ความ เฉพาะ ใน เอกสาร ยาว ๆ. มันจะใช้เวลามากขึ้นเมื่อคุณต้องการที่จะแทนที่ตัวอักษรหรือคําบางคําที่คุณใช้ในเอกสารของคุณ ฟังก์ชัน "ค้นหาและแทนที่" ช่วยให้คุณค้นหาลําดับตัวอักษรในเอกสาร และแทนที่ด้วยลําดับตัวอักษรอื่น ๆ

Aspose.Words ให้คุณได้ค้นหาข้อความหรือรูปแบบเงื่อนไขการค้นหาในเอกสารของคุณ และแทนที่มันด้วยตัวเลือกอื่น โดยไม่ต้องติดตั้งและใช้งานโปรแกรมอื่น ๆ เช่น Microsoft Word. การ ทํา เช่น นี้ จะ ทํา ให้ งาน พิมพ์ และ การ ตกแต่ง หลาย อย่าง เร็ว ขึ้น ซึ่ง อาจ ช่วย ประหยัด เวลา ทํา งาน ได้.

บทความ นี้ อธิบาย วิธี ที่ จะ ใช้ คํา ที่ ใช้ แทน ข้อ ความ และ การ ใช้ คํา ศัพท์ เป็น ประจํา เพื่อ สนับสนุน การ ใช้ คํา ศัพท์.

## วิธี หา และ แทนที่ {#ways-to-find-and-replace}

Aspose.Words ให้ สอง วิธี ใน การ หา และ แทน ที่ กิจการ โดย ใช้ วิธี ต่อ ไป นี้:

1 * การแทนที่ข้อความ simple * - เพื่อค้นหาและแทนที่ข้อความที่กําหนดด้วยข้อความอื่น ๆ คุณต้องระบุข้อความค้นหา (ตัวอักษรที่เป็นอักขระอื่น) ที่จะถูกแทนที่ด้วยข้อความที่กําหนดทั้งหมด สายทั้งสองต้องไม่มีสัญลักษณ์ ขอ ให้ พิจารณา ว่า การ เปรียบ เทียบ ข้อ ความ อาจ เป็น การ เปรียบ เทียบ กรณี หรือ คุณ อาจ ไม่ แน่ ใจ ใน การ สะกด หรือ มี การ สะกด ทํานอง เดียว กัน หลาย ครั้ง.
2. * เงื่อนไขการค้นหา* - เพื่อระบุเงื่อนไขการค้นหาข้อความที่ตรงกันเป๊ะ และแทนที่ด้วยเงื่อนไขการค้นหาปกติของคุณ โปรด สังเกต ว่า คํา หนึ่ง ได้ รับ การ นิยาม ว่า เป็น คํา ที่ ประกอบ ด้วย ตัว อักษร ที่ มี ความ หมาย เฉพาะ ตัว. หากมีการประมวลผลตัวแทนที่ด้วยคําทั้งคําที่จะตรงกัน และข้อความที่ป้อนเข้าจะมีสัญลักษณ์อยู่ด้วย จะไม่พบวลีใดเลย

นอกจากนี้ คุณยังสามารถใช้ข้อมูลกํากับพิเศษได้ โดยมีการแทนที่ข้อความธรรมดา และนิพจน์ปกติ เพื่อระบุการหยุดการทํางานภายในกระบวนการค้นหาและแทนที่

Aspose.Words นําเสนอการค้นหาและแทนที่การทํางานด้วย [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). คุณสามารถทํางานกับตัวเลือกมากมายระหว่างการค้นหาและแทนที่โพรเซสโดยใช้ [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) ชั้นเรียน.

### ค้นหาและแทนที่ข้อความโดยใช้การแทนที่ข้อความธรรมดา {#find-and-replace-text-using-simple-string-replacement}

คุณสามารถใช้หนึ่งใน [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) วิธีการในการหาหรือแทนที่ข้อความเฉพาะ แล้วส่งค่ากลับมาเป็นจํานวนของแฟ้มที่แทนที่ ในกรณีนี้ คุณสามารถกําหนดข้อความที่จะใช้แทนที่ข้อความได้ โดยข้อความที่จะแทนที่การเกิดขึ้นอีกทั้งหมดของมัน การแทนที่ด้วยตัวพิมพ์เล็ก- ใหญ่ และเฉพาะคําเดียวจะมีผลหรือไม่

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีการหาข้อความ "_ ustotmer" และแทนที่ด้วยข้อความ * "เจมส์บอนด์"*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

คุณสามารถสังเกตเห็นความแตกต่างระหว่างเอกสาร ก่อนที่จะทําการแทนที่ข้อความง่ายๆ:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

และหลังจากใช้การแทนที่ข้อความง่ายๆ

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### ค้นหาและแทนที่ข้อความโดยใช้เงื่อนไขการค้นหา {#find-and-replace-text-using-regular-expressions}

นิพจน์ปกติ (Regex) เป็นรูปแบบที่อธิบายลําดับของข้อความ สมมติว่าคุณต้องการแทนที่การเกิดขึ้นสองครั้งของคําทั้งหมด โดยมีหนึ่งคําเกิดขึ้น จากนั้นคุณสามารถใช้เงื่อนไขการค้นหาต่อไปนี้ เพื่อระบุรูปแบบคําสองคําได้: `([a-zA-Z]+) \1`.

ใช้ตัวอื่น [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) วิธีการค้นหาและแทนที่อักขระต่าง ๆ ด้วยการตั้งค่า `Regex` พารามิเตอร์เป็นรูปแบบเงื่อนไขการค้นหาที่เข้าคู่กัน

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีแทนที่ข้อความ ที่ตรงกับรูปแบบเงื่อนไขการค้นหา โดยใช้ข้อความแทนที่ที่ระบุไว้:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


คุณสามารถสังเกตเห็นความแตกต่างระหว่างเอกสาร ก่อนที่จะทําการแทนที่ข้อความด้วยนิพจน์ปกติ:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

และหลังจากใช้คําแทนที่คําปกติ

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### ค้นหาและแทนที่ข้อความโดยใช้แม็ตตา {#find-and-replace-text-using-metacharacters}

คุณสามารถใช้ metharacter ในข้อความค้นหา หรือข้อความแทนที่ หากข้อความหรือวลีใด ๆ ประกอบด้วย paragraph, page หรือ page. บาง ส่วน ของ สาร ที่ มี ส่วน ประกอบ **&p** วรรคพักน่ะ **&b** สําหรับส่วนพัก **&m** สําหรับพักหน้า และ **&l** สําหรับพักสาย

{{% alert color="primary" %}}

หมายเหตุที่ตัวนําทาง **&&** เท่ากับ **&**. ยกตัวอย่างเช่น ถ้าคุณต้องการหาข้อความ **&p** นั่นไม่ใช่การพักในวรรค แล้วคุณจะใช้ **&&p**.

{{% /alert %}}

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ แทน ข้อ ความ ด้วย ข้อ และ ข้อ ความ ย่อ หน้า:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## ค้นหาและแทนที่ข้อความในส่วนหัว/ footer ของเอกสาร {#find-and-replace-string-in-header-or-footer-of-a-document}

คุณสามารถค้นหาและแทนที่ข้อความในส่วนส่วนหัว/ ฟุตเกอร์ของเอกสารคําโดยใช้ [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) ชั้นเรียน.

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีแทนที่ข้อความในส่วนส่วนหัวในเอกสารของคุณ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


คุณสามารถสังเกตเห็นความแตกต่างระหว่างเอกสาร ก่อนที่จะทําการแทนที่ข้อความส่วนหัว:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

หลังจากทําการแทนที่ข้อความส่วนหัว:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

ตัวอย่างรหัสที่จะแทนที่ข้อความในส่วนท้ายกระดาษในเอกสารของคุณ คล้ายกับตัวอย่างรหัสตัวอักษรก่อนหน้ามาก สิ่งที่คุณต้องทําก็แค่แทนที่สองบรรทัดต่อไปนี้:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

ด้วย:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


คุณสามารถสังเกตเห็นความแตกต่างระหว่างเอกสาร ก่อนที่จะทําการแทนที่ข้อความท้ายกระดาษ:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

และหลังจากทําการแทนที่ข้อความ

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## ไม่สนใจข้อความระหว่างการค้นหาและแทนที่ {#ignore-text-during-find-and-replace}

ขณะ ที่ ใช้ ส่วน ที่ พบ และ แทน ที่ ส่วน ต่าง ๆ ของ ข้อ ความ นั้น คุณ อาจ ไม่ สนใจ. ดัง นั้น บาง ส่วน ของ ข้อ ความ นั้น อาจ ถูก แยก ออก จาก การ ค้น หา และ สามารถ นํา มา ใช้ ได้ เฉพาะ ส่วน ที่ เหลือ เท่า นั้น.

Aspose.Words จัดทําการค้นหาและแทนที่คุณสมบัติสําหรับไม่สนใจข้อความเช่น [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), ถึง [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการไม่สนใจข้อความภายในที่ลบตอนแก้ไข:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## ปรับแต่งการค้นหาและแทนที่ปฏิบัติการ {#customize-find-and-replace-operation}

Aspose.Words แตกต่างกันมาก [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) เพื่อหาและแทนที่ข้อความเช่น การปรับใช้รูปแบบเฉพาะกับ [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) ถึง [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) คุณสมบัติ, โดยใช้การแทนที่ในรูปแบบแทนที่ [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) ทรัพย์สิน และอื่นๆ

ตัวอย่างรหัสต่อไปนี้แสดงวิธีเน้นคําเฉพาะในเอกสารของคุณ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words ให้คุณได้ใช้ [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) ส่วนติดต่อในการสร้างและเรียกวิธีการปรับแต่งเองระหว่างปฏิบัติการแทนที่ คุณอาจมีบางกรณีที่จะใช้ในกรณีที่คุณจําเป็นต้องปรับแต่งส่วนการค้นหาและแทนที่ด้วยปฏิบัติการเช่น การแทนที่ข้อความที่ระบุโดยใช้รูปแบบเงื่อนไขการค้นหาโดยใช้ป้ายกํากับ HTML ดังนั้น คุณจึงจะปรับใช้การแทนที่ด้วยการใส่ HTML เข้าไป

หากคุณต้องการแทนที่ข้อความโดยใช้ป้ายกํากับ HTML ให้ปรับใช้ **IReplacingCallback** ส่วนติดต่อสําหรับปรับแต่งส่วนค้นหาและแทนที่ของปฏิบัติการนั้น ๆ จึงเริ่มการจับคู่ที่ตอนต้นของการทํางานด้วยโหนดที่เข้าคู่กับเอกสารของคุณ ขอ ให้ เรา ยก ตัว อย่าง หลาย เรื่อง เกี่ยว กับ การ ใช้ **IReplacingCallback**.

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีแทนที่ข้อความที่ระบุด้วย HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


ตัวอย่างรหัสต่อไปนี้ แสดงวิธีเน้นเลขบวกด้วยสีเขียว และเลขลบด้วยสีแดง

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการเตรียมหมายเลขบรรทัดแต่ละบรรทัด:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
