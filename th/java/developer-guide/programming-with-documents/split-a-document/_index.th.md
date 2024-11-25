---
title: แยกเอกสารเป็นJava
second_title: Aspose.WordsสำหรับJava
articleTitle: แยกเอกสาร
linktitle: แยกเอกสาร
description: "Aspose.WordsสำหรับJavaช่วยให้คุณมีวิธีที่มีประสิทธิภาพในการแบ่งเอกสารหนึ่งออกเป็นเอกสารหลายอ."
type: docs
weight: 90
url: /th/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting*หรือ*split a document*เป็นกระบวนการของการทำลายเอกสารขนาดใหญ่เป็นจำนวนมากของไฟล์ที่มีขนา มีเหตุผลหลายประการที่จะแยกไฟล์ ตัวอย่างเช่นคุณต้องการเพียงบางหน้าจากเอกสารที่เฉพาะเจาะจงและไม่หนึ่งทั้งหมด หรือด้วยเหตุผลความเป็นส่วนตัวคุณต้องการแบ่งปันเฉพาะบางส่วนของเอกสารกับผู้อื่น ด้วยคุณลักษณะการแยกคุณจะได้รับเฉพาะส่วนที่จำเป็นของเอกสารและดำเนินการที่จำเป็.

Aspose.Wordsช่วยให้คุณมีวิธีที่มีประสิทธิภาพในการแบ่งเอกสารหนึ่งออกเป็นเอกสารหลายส่วนโดยหั คุณยังสามารถแบ่งเอกสารตามหน้าหรือตามช่วงหน้า ทั้งสองตัวเลือกแยกจะอธิบายไว้ในบทความนี้.

เมื่อต้องการแยกเอกสารออกเป็นไฟล์ขนาดเล็กโดยใช้Aspose.Wordsคุณต้องทำตามขั้นตอนเหล่านี้:

1. ป้อนเอกสารในรูปแบบที่รองรับ.
1. แยกเอกสาร.
1. บันทึกเอกสารที่ส่งออก.

หลังจากที่คุณแยกเอกสารที่คุณจะสามารถที่จะเปิดเอกสารที่ส่งออกทั้งหมดที่จะเริ่มต้นด้ว.

{{% alert color="primary" %}}

**ลองออนไลน์**

คุณสามารถลองฟังก์ชั่นนี้กับเรา [แยกเอกสารออนไลน์ฟรี](https://products.aspose.app/words/splitter).

{{% /alert %}}

## แยกเอกสารโดยใช้เกณฑ์ที่แตกต่างกัน {#split-a-document-using-different-criteria}

Aspose.Wordsช่วยให้คุณสามารถแบ่งเอกสารEPUBหรือHTMLออกเป็นบทตามเกณฑ์ต่างๆ ในกระบวนการลักษณะและเค้าโครงของเอกสารต้นฉบับจะถูกเก็บรักษาไว้สำหรับเอกสา.

คุณสามารถระบุเกณฑ์โดยใช้การแจงนับ[DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) ดังนั้นคุณสามารถแบ่งเอกสารออกเป็นบทโดยใช้เกณฑ์ใดเกณฑ์หนึ่งต่อไปนี้หรือรวมเกณฑ์:

- หัวเรื่องย่อหน้า,
- แบ่งส่วน,
- แบ่งคอลัมน์,
- แบ่งหน้า.

เมื่อบันทึกผลลัพธ์เป็นHTMLAspose.Wordsบันทึกแต่ละบทเป็นไฟล์HTMLแยกต่างหาก เอกสารจะถูกแบ่งออกเป็นหลายไฟล์HTML เมื่อบันทึกผลลัพธ์เป็นEPUBAspose.Wordsบันทึกผลลัพธ์ในไฟล์เดียวEPUBโดยไม่คำนึงถึงค่า`DocumentSplitCriteria`ที่คุณใช้ ดังนั้นการใช้DocumentSplitCriteriaสำหรับEPUBเอกสารจะมีผลต่อลักษณะที่ปรากฏของเนื้อหาในโปรแกรมประยุกต์ของผู้อ่าน:เนื้อหาจะถูกแบ่งออกเป็นบทและเอกสารจะไม่ปรากฏอย่างต่อเนื่องอีกต่อไป.

{{% alert color="primary" %}}

คุณไม่สามารถแยกเอกสารโดยใช้คุณสมบัติ[DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/)เมื่อบันทึกลงในรูปแบบMHTML.

{{% /alert %}}

ในส่วนนี้เราจะพิจารณาเพียงบางส่วนของเกณฑ์การแยกที่เป็นไปได้.

### แยกเอกสารตามส่วนหัว {#split-a-document-by-headings}

เมื่อต้องการแบ่งเอกสารเป็นบทตามส่วนหัวให้ใช้ค่า**HeadingParagraph**ของคุณสมบัติ**DocumentSplitCriteria**.

ถ้าคุณต้องการแยกเอกสารตามระดับเฉพาะของย่อหน้าหัวเรื่องเช่นส่วนหัว 1,2 และ 3 ให้ใช้คุณสมบัติ[DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel)ด้วย ผลลัพธ์จะถูกแบ่งตามย่อหน้าที่จัดรูปแบบด้วยระดับหัวข้อที่ระบุ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกเอกสารออกเป็นส่วนเล็กๆโดยหัวข้อ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

โปรดทราบว่าสำหรับเกณฑ์นี้Aspose.Wordsสนับสนุนการบันทึกเป็นHTMLรูปแบบเมื่อแยก.

เมื่อบันทึกเป็นEPUBเอกสารจะไม่แบ่งออกเป็นหลายแฟ้มและจะมีแฟ้มที่ส่งออกเพียงหนึ่งแฟ้ม.

### แยกเอกสารตามส่วน {#split-a-document-by-sections}

Aspose.Wordsยังช่วยให้คุณสามารถใช้ส่วนแบ่งการแยกเอกสารและบันทึกไว้เป็นHTML เพื่อจุดประสงค์นี้ให้ใช้**SectionBreak**เป็น**DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

มีอีกวิธีหนึ่งในการแยกเอกสารต้นทางออกเป็นเอกสารออกหลายรายการและคุณสามารถเลือกรูปแบบเอาต์พุตที่รองรับโดยAspose.Words.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกเอกสารออกเป็นส่วนเล็กๆโดยแบ่งส่วน(โดยไม่ต้องใช้คุณสมบัติ`DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## แยกตามหน้า {#splitting-by-pages}

คุณยังสามารถแบ่งเพจเอกสารตามเพจตามช่วงของเพจหรือเริ่มต้นด้วยหมายเลขเพจที่ร นกรณีดังกล่าววิธีการ[ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int)สามารถทำงานได้.

ส่วนนี้อธิบายถึงกรณีการใช้งานหลายกรณีของการหารเอกสารโดยใช้[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)คลาสและ**ExtractPages**วิธีการ.

{{% alert color="primary" %}}

คุณสามารถใช้ใดๆ [รูปแบบการส่งออกที่รองรับโดยAspose.คำ](/words/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

เนื่องจากความแตกต่างหลายอย่างที่ปรากฏในขณะที่ลดจำนวนหน้าเว็บการจับคู่แบบเต็มกับโครงร่างMicrosoft Wordจึงเป็นงานที่ซับซ้อน บความซับซ้อนของเอกสารอาจมีความแตกต่างเล็กน้อยในเค้าโครงเอกสารที่ได้จากเอก.

{{% /alert %}}

### แยกหน้าเอกสารตามหน้า {#split-a-document-page-by-page}

Aspose.Wordsช่วยให้คุณสามารถแยกหน้าเอกสารหลายหน้าตามหน้า.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแบ่งเอกสารและบันทึกแต่ละหน้าเป็นเอกสารแยกต่างหาก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### แยกเอกสารตามช่วงหน้า {#split-a-document-by-page-ranges}

Aspose.Wordsอนุญาตให้แยกเอกสารหลายหน้าตามช่วงหน้า คุณสามารถแยกไฟล์หนึ่งไฟล์เป็นหลายไฟล์ที่มีช่วงหน้าต่างๆหรือเพียงแค่เลือกหนึ่งช่วงและ โปรดทราบว่าคุณสามารถเลือกช่วงหน้าตามจำนวนหน้าสูงสุดและต่ำสุดของเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกเอกสารออกเป็นส่วนเล็กๆตามช่วงหน้ากับดัชนีเริ่มต้นแ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## ตัวเลือกการโทรกลับเพื่อบันทึกเอกสาร {#callback-option-for-saving-a-document}

คุณสามารถใช้คุณสมบัติ[DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback)เพื่อควบคุมวิธีบันทึกAspose.Wordsชิ้นส่วนเอกสารเมื่อเอกสารนี้ถูกส่งออกเป็นรูปHTML คุณสมบัตินี้ช่วยให้คุณสามารถเปลี่ยนชื่อไฟล์ที่ส่งออกหรือแม้กระทั่งการเปลี่ยนเส้นทางไปยั.

โปรดทราบว่าการเรียกกลับนี้จะไม่เป็นประโยชน์เมื่อบันทึกEPUBเพราะทุกส่วนส่งออกจะต้องถูกบันทึกลงในภาชนะเดียว–ไฟล์ ดังนั้นการเปลี่ยนเส้นทางสตรีมไม่ได้รับการสนับสนุนและผลกระทบของการเปลี่ยนชื่อจะไ.

## ผสานเอกสารแยกกับเอกสารอื่น {#merge-the-split-document-with-another-file}

Aspose.Wordsช่วยให้คุณสามารถรวมเอาต์พุตเอกสารแยกกับเอกสารอื่นเพื่อสร้างเอกสารใหม่ นี้สามารถเรียกว่าการรวมเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรวมเอกสารแยกกับเอกสารอื่น:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
