---
title: ค้นหาและแทนที่ใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ค้นหาและแทนที่
linktitle: ค้นหาและแทนที่
type: docs
description: "ค้นหารูปแบบสตริงหรือนิพจน์ทั่วไปในเอกสารของคุณและแทนที่ด้วยข้อความที่คุณต้องการโดยใช้ Python"
weight: 100
url: /th/python-net/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

คุณสามารถนำทางภายในเอกสารของคุณได้อย่างง่ายดายโดยใช้แป้นพิมพ์และเมาส์ แต่หากคุณมีหลายหน้าที่ต้องเลื่อนดู อาจต้องใช้เวลาสักครู่เพื่อค้นหาข้อความที่ต้องการในเอกสารขนาดยาว จะใช้เวลานานมากขึ้นเมื่อคุณต้องการแทนที่อักขระหรือคำบางตัวที่คุณใช้ในเอกสารของคุณ ฟังก์ชัน "ค้นหาและแทนที่" ช่วยให้คุณสามารถค้นหาลำดับอักขระในเอกสารและแทนที่ด้วยลำดับอักขระอื่นได้

Aspose.Words ช่วยให้คุณค้นหาสตริงเฉพาะหรือรูปแบบนิพจน์ทั่วไปในเอกสารของคุณและแทนที่ด้วยสตริงอื่นโดยไม่ต้องติดตั้งและใช้แอปพลิเคชันเพิ่มเติม เช่น Microsoft Word ซึ่งจะทำให้งานพิมพ์และการจัดรูปแบบต่างๆ เร็วขึ้น ซึ่งอาจช่วยคุณประหยัดเวลาในการทำงานได้

บทความนี้จะอธิบายวิธีการใช้การแทนที่สตริงและนิพจน์ทั่วไปโดยได้รับการสนับสนุนจากเมตาอักขระ

## วิธีค้นหาและแทนที่ {#ways-to-find-and-replace}

Aspose.Words มีสองวิธีในการใช้การค้นหาและแทนที่โดยใช้สิ่งต่อไปนี้:

1. *การแทนที่สตริงอย่างง่าย* – ในการค้นหาและแทนที่สตริงที่ระบุด้วยสตริงอื่น คุณต้องระบุสตริงการค้นหา (อักขระที่เป็นตัวอักษรและตัวเลข) ที่จะถูกแทนที่ด้วยสตริงการแทนที่ที่ระบุอื่นตามเหตุการณ์ทั้งหมด ทั้งสองสายต้องไม่มีสัญลักษณ์ โปรดทราบว่าการเปรียบเทียบสตริงอาจคำนึงถึงตัวพิมพ์เล็กและตัวพิมพ์ใหญ่ หรือคุณอาจไม่แน่ใจในการสะกดหรือมีการสะกดที่คล้ายกันหลายตัว
2. *นิพจน์ทั่วไป* – เพื่อระบุนิพจน์ทั่วไปเพื่อค้นหาสตริงที่ตรงกันทุกประการ และแทนที่ตามนิพจน์ทั่วไปของคุณ โปรดทราบว่าคำที่ถูกกำหนดให้ประกอบด้วยอักขระตัวอักษรและตัวเลขเท่านั้น หากดำเนินการแทนที่โดยจับคู่ทั้งคำเท่านั้นและสตริงอินพุตมีสัญลักษณ์ จะไม่พบวลีใดๆ

นอกจากนี้ คุณยังสามารถใช้อักขระเมตาพิเศษที่มีการแทนที่สตริงอย่างง่ายและนิพจน์ทั่วไปเพื่อระบุตัวแบ่งภายในการดำเนินการค้นหาและแทนที่

Aspose.Words นำเสนอฟังก์ชันการค้นหาและแทนที่ด้วยโมดูล [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/) คุณสามารถทำงานกับตัวเลือกมากมายในระหว่างกระบวนการค้นหาและแทนที่โดยใช้คลาส [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/)

### ค้นหาและแทนที่ข้อความโดยใช้การแทนที่สตริงอย่างง่าย {#find-and-replace-text-using-simple-string-replacement}

คุณสามารถใช้หนึ่งในวิธี [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) และ [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) เพื่อค้นหาหรือแทนที่สตริงที่ต้องการ และส่งกลับจำนวนการแทนที่ที่ทำขึ้น ในกรณีนี้ คุณสามารถระบุสตริงที่จะแทนที่ สตริงที่จะแทนที่รายการทั้งหมด ไม่ว่าการแทนที่จะคำนึงถึงตัวพิมพ์เล็กและตัวพิมพ์ใหญ่หรือไม่ และเฉพาะคำเดี่ยวๆ เท่านั้นที่จะได้รับผลกระทบหรือไม่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีค้นหาสตริง "_CustomerName_" และแทนที่ด้วยสตริง *"James Bond"*:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

คุณสามารถสังเกตเห็นความแตกต่างระหว่างเอกสารก่อนที่จะใช้การแทนที่สตริงแบบง่าย:

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="ก่อนการแทนที่สตริงอย่างง่าย" style="width:600px"/>

และหลังจากใช้การแทนที่สตริงแบบง่ายแล้ว:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="หลังจากเปลี่ยนสตริงอย่างง่าย" style="width:600px"/>

### ค้นหาและแทนที่ข้อความโดยใช้นิพจน์ทั่วไป {#find-and-replace-text-using-regular-expressions}

นิพจน์ทั่วไปคือรูปแบบที่อธิบายลำดับข้อความบางลำดับ สมมติว่าคุณต้องการแทนที่คำที่ซ้ำกันทั้งหมดด้วยคำเดียวที่เกิดขึ้น จากนั้นคุณสามารถใช้นิพจน์ทั่วไปต่อไปนี้เพื่อระบุรูปแบบคำคู่: `([a-zA-Z]+) \1`

ใช้วิธี [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) เพื่อค้นหาและแทนที่ชุดอักขระโดยการตั้งค่าพารามิเตอร์นิพจน์ทั่วไปเป็นรูปแบบเพื่อค้นหารายการที่ตรงกัน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทนที่สตริงที่ตรงกับรูปแบบนิพจน์ทั่วไปด้วยสตริงการแทนที่ที่ระบุ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

คุณสามารถสังเกตเห็นความแตกต่างระหว่างเอกสารก่อนที่จะใช้การแทนที่สตริงด้วยนิพจน์ทั่วไป:

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="ก่อนแทนที่ด้วยนิพจน์ปกติ" style="width:600px"/>

และหลังจากใช้การแทนที่สตริงด้วยนิพจน์ทั่วไป:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="หลังจากแทนที่ด้วยนิพจน์ปกติ" style="width:600px"/>

### ค้นหาและแทนที่สตริงโดยใช้ MetaCharacters {#find-and-replace-text-using-metacharacters}

คุณสามารถใช้อักขระเมตาในสตริงการค้นหาหรือสตริงการแทนที่ได้ หากข้อความหรือวลีใดประกอบด้วยหลายย่อหน้า ส่วน หรือหน้า เมตาอักขระบางตัวประกอบด้วย **&amp;พี** สำหรับตัวแบ่งย่อหน้า, **&amp;ข** สำหรับตัวแบ่งส่วน, **&amp; ม** สำหรับตัวแบ่งหน้า และ **&amp;ล** สำหรับตัวแบ่งบรรทัด

{{% alert color="primary" %}}

โปรดทราบว่าเมตาอักขระ **&&** เท่ากับ **&** ตัวอย่างเช่น หากคุณต้องการค้นหาข้อความสำหรับ **&amp;พี** ที่ไม่ใช่ตัวแบ่งย่อหน้า คุณสามารถใช้ **&amp;&amp;พี** ได้

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทนที่ข้อความด้วยตัวแบ่งย่อหน้าและหน้า:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## ค้นหาและแทนที่สตริงในส่วนหัว/ส่วนท้ายของเอกสาร {#find-and-replace-string-in-header-or-footer-of-a-document}

คุณสามารถค้นหาและแทนที่ข้อความในส่วนหัว/ส่วนท้ายของเอกสาร Word ได้โดยใช้คลาส [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทนที่ข้อความของส่วนหัวในเอกสารของคุณ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

คุณสามารถสังเกตเห็นความแตกต่างระหว่างเอกสารก่อนที่จะใช้การแทนที่สตริงส่วนหัว:

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="ก่อนที่จะใช้แทนที่สตริงส่วนหัว" style="width:600px"/>

และหลังจากใช้การแทนที่สตริงส่วนหัว:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="หลังจากใช้-ส่วนหัว-สตริง-แทนที่" style="width:600px"/>

ตัวอย่างโค้ดเพื่อแทนที่ข้อความของส่วนท้ายในเอกสารของคุณคล้ายกับตัวอย่างโค้ดส่วนหัวก่อนหน้ามาก สิ่งที่คุณต้องทำคือแทนที่สองบรรทัดต่อไปนี้:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

โดยมีดังต่อไปนี้:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

คุณสามารถสังเกตเห็นความแตกต่างระหว่างเอกสารก่อนที่จะใช้การแทนที่สตริงส่วนท้าย:

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="ก่อนใช้ส่วนท้ายสตริงแทนที่" style="width:600px"/>

และหลังจากใช้การแทนที่สตริงส่วนท้าย:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="หลังจากใช้ส่วนท้ายสตริงแทนที่" style="width:600px"/>

## ละเว้นข้อความระหว่างการค้นหาและแทนที่ {#ignore-text-during-find-and-replace}

ในขณะที่ใช้การดำเนินการค้นหาและแทนที่ คุณสามารถละเว้นบางส่วนของข้อความได้ ดังนั้น บางส่วนของข้อความจึงสามารถแยกออกจากการค้นหาได้ และการค้นหาและการแทนที่สามารถใช้ได้เฉพาะกับส่วนที่เหลือเท่านั้น

Aspose.Words มีคุณสมบัติการค้นหาและแทนที่มากมายสำหรับการละเว้นข้อความ เช่น [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/) และ [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการละเว้นข้อความภายในการแก้ไขการลบ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## ปรับแต่งการดำเนินการค้นหาและแทนที่ {#customize-find-and-replace-operation}

Aspose.Words มีคุณสมบัติต่างๆ มากมายเพื่อค้นหาและแทนที่ข้อความ เช่น การใช้รูปแบบเฉพาะกับคุณสมบัติ [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) และ [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/) การใช้การทดแทนในรูปแบบการแทนที่ด้วยคุณสมบัติ [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) และอื่นๆ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีเน้นคำเฉพาะในเอกสารของคุณ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
