---
title: แยกเอกสารใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: แยกเอกสาร
linktitle: แยกเอกสาร
description: "Aspose.Words สําหรับ Java ให้ คุณ มี วิธี ที่ มี ประสิทธิภาพ ใน การ แบ่ง เอกสาร หนึ่ง ชิ้น ออก เป็น เอกสาร หลาย ๆ ชิ้น โดย หัว เรื่อง หรือ ส่วน รวม ทั้ง หน้า หรือ ภาค หน้า."
type: docs
weight: 90
url: /th/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* หรือ * เชื่อมโยงเอกสาร* เป็นกระบวนการในการทําลายเอกสารขนาดใหญ่ เป็นจํานวนแฟ้มที่เล็กกว่า มีเหตุผลหลายอย่างที่จะแยกแฟ้ม ตัว อย่าง เช่น คุณ ต้องการ เพียง บาง หน้า เท่า นั้น จาก เอกสาร เฉพาะ ฉบับ หนึ่ง ไม่ ใช่ ทั้ง หน้า. หรือ ด้วย เหตุ ผล ส่วน ตัว คุณ ต้องการ แบ่ง เพียง บาง ส่วน ของ เอกสาร ให้ คน อื่น ๆ. เพื่อ เป็น ตัว อย่าง คุณ จะ ได้ เฉพาะ ส่วน ที่ ต้องการ ของ เอกสาร และ ทํา การ กระทํา ที่ จําเป็น กับ เอกสาร เหล่า นั้น เพื่อ ทํา เครื่องหมาย, บันทึก, หรือ ส่ง.

Aspose.Words ให้ คุณ มี วิธี ที่ มี ประสิทธิภาพ ใน การ แบ่ง เอกสาร หนึ่ง ชิ้น เป็น เอกสาร หลาย ๆ ชิ้น โดย ตรง หรือ บาง ส่วน. คุณสามารถแยกเอกสารได้โดยแต่ละหน้า หรือโดยช่วงของหน้ากระดาษ จะ มี การ พรรณนา ถึง ทาง เลือก ทั้ง สอง อย่าง ใน บทความ นี้.

เพื่อแยกเอกสารเป็นแฟ้มที่เล็กกว่าโดยใช้ Aspose.Words, คุณต้องตามขั้นตอนเหล่านี้

1 โหลดเอกสารในรูปแบบใด ๆ ที่รองรับ
1 แยกเอกสารออก
1 บันทึกเอกสารผลลัพธ์

หลังจากแยกเอกสารแล้ว คุณจะสามารถเปิดเอกสารทั้งหมด ที่จะเริ่มด้วยหน้า, ข้อความ เป็นต้น

{{% alert color="primary" %}}

**ลองออนไลน์ดูสิ**

คุณสามารถลองใช้ฟังก์ชันนี้กับ [ตัวแยกเอกสารออนไลน์ที่เหลือ](https://products.aspose.app/words/splitter).

{{% /alert %}}

## แยก เอกสาร โดย ใช้ อักษร เบรีย ที่ ต่าง กัน {#split-a-document-using-different-criteria}

Aspose.Words ให้คุณได้แยกเอกสาร APUB หรือ HTML เป็นบทตามเกณฑ์ต่าง ๆ ในระหว่างนี้ รูปแบบและการจัดวางเอกสารต้นฉบับ จะถูกเก็บไว้สําหรับเอกสารผลลัพธ์

คุณสามารถกําหนดสัญลักษณ์ได้โดยการใช้ [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) ปลดปล่อย ดังนั้นคุณสามารถแบ่งเอกสารออกเป็นบทได้ โดยใช้เงื่อนไขต่อไปนี้หนึ่งข้อ หรือรวมเกณฑ์เข้าด้วยกันมากกว่าหนึ่งข้อ

- วรรคหลัก
- ช่วงพัก
- หยุดแถว
- ปิดหน้า

เมื่อมีการบันทึกการแสดงผลไปยัง HTML Aspose.Words บันทึกแต่ละบทเป็นแฟ้ม HTML ที่แยกต่างหาก ผลก็คือ เอกสารจะถูกแยกเป็นแฟ้ม HTML หลายแฟ้ม เมื่อบันทึกการแสดงผลไปยัง EPUB Aspose.Words บันทึกผลในแฟ้ม EPUB เพียงแฟ้มเดียวโดยไม่คํานึงถึง `DocumentSplitCriteria` ค่าที่นายใช้ ดังนั้น การใช้เอกสาร pplitCerria สําหรับเอกสาร EPUB จะมีผลเฉพาะกับรูปลักษณ์ของเนื้อหาในโปรแกรมอ่านเท่านั้น: เนื้อหาจะถูกแบ่งออกเป็นบท และเอกสารจะไม่ปรากฏต่อเนื่องอีกต่อไป

{{% alert color="primary" %}}

คุณไม่สามารถแยกเอกสารโดยใช้ [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) คุณสมบัติเมื่อมีการบันทึกในรูปแบบ MHTML

{{% /alert %}}

ในส่วนนี้ เราพิจารณาเพียงส่วนต่างๆที่เป็นไปได้

### แยกเอกสารออกโดยทางหัวเรื่อง {#split-a-document-by-headings}

เพื่อแยกเอกสารเป็นบทโดยหัวข้อให้ใช้ **HeadingParagraph** ค่าของ **DocumentSplitCriteria** ทรัพย์สิน

ถ้าคุณต้องการที่จะแยกเอกสารโดยระดับเฉพาะของหัวข้อเช่น หัว 1, 2, และ 3, ใช้ [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) ทรัพย์สิน การแสดงผลจะถูกแบ่งด้วย parts Formd กับระดับหัวที่ระบุไว้

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี แบ่ง เอกสาร เป็น ส่วน ย่อย ๆ โดย มุ่ง หน้า ไป ที่ เอกสาร ดัง ต่อ ไป นี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

โปรดสังเกตว่าสําหรับเกณฑ์นี้ Aspose.Words รองรับการบันทึกในรูปแบบ HTML เท่านั้นเมื่อแยก

เมื่อมีการบันทึกไปยัง APUB เอกสารจะไม่ถูกแยกเป็นแฟ้มหลายแฟ้ม และจะมีเพียงแฟ้มส่งออกเพียงแฟ้มเดียว

### แยกเอกสารออกทีละส่วน {#split-a-document-by-sections}

Aspose.Words นอกจากนี้ยังทําให้คุณใช้การแยกส่วนเอกสาร เพื่อบันทึกเป็น HTML ได้อีกด้วย เพื่อวัตถุประสงค์นี้ ใช้ **SectionBreak** คือ **DocumentSplitCriteria**

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

มี อีก วิธี หนึ่ง ที่ จะ แบ่ง เอกสาร ที่ มา จาก แหล่ง นี้ ออก เป็น เอกสาร ส่ง ออก หลาย ฉบับ และ คุณ สามารถ เลือก รูป แบบ ใด ก็ ได้ ที่ ได้ รับ การ สนับสนุน โดย Aspose.Words.

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกเอกสารเป็นส่วนย่อย ๆ โดยแบ่งส่วน (โดยไม่ใช้ `DocumentSplitCriteria` คุณสมบัติ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## แยกทีละหน้า {#splitting-by-pages}

คุณสามารถแบ่งเอกสารทีละหน้า, โดยช่วงหน้า หรือเริ่มจากหมายเลขหน้าที่ระบุได้ ในกรณีนี้ [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) วิธีการสามารถทํางาน

ส่วนนี้อธิบายการใช้หลายกรณีในการแบ่งเอกสารโดยใช้หน้า [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ชั้นและ **ExtractPages** วิธี

{{% alert color="primary" %}}

คุณสามารถใช้ใด ๆ [รูปแบบเอกสารที่รองรับ](/words/th/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

เนื่องจากส่วนต่าง ๆ ที่ปรากฏขณะลดจํานวนของหน้า ตรงกับ Microsoft Word ผังงานค่อนข้างซับซ้อน ดัง นั้น จึง อาจ มี ความ แตก ต่าง เล็ก น้อย ระหว่าง เอกสาร ที่ ได้ รับ การ จัด เรียง จาก เอกสาร ต้น ฉบับ.

{{% /alert %}}

### แยกหน้าเอกสารออกทีละหน้า {#split-a-document-page-by-page}

Aspose.Words ให้คุณได้แยกเอกสารหลายหน้าทีละหน้า

ตัวอย่างรหัสต่อไปนี้ แสดงวิธีแบ่งเอกสารและบันทึกแต่ละหน้า เป็นเอกสารแยก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### แยกเอกสารโดยใช้ช่วงของหน้ากระดาษ {#split-a-document-by-page-ranges}

Aspose.Words อนุญาตให้แยกเอกสารแบบหลายหน้าทีละหน้าได้ คุณสามารถแยกแฟ้มหนึ่งเป็นหลายแฟ้ม โดยมีหลายช่วงของหน้าเว็บ หรือเพียงแค่เลือกช่วงหนึ่ง แล้วบันทึกเฉพาะส่วนนี้ของเอกสารต้นฉบับเท่านั้น โปรดสังเกตว่า คุณสามารถเลือกช่วงของหน้าได้ตามหมายเลขหน้าสูงสุดและต่ําสุดของเอกสาร

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีแยกเอกสารออกเป็นส่วนย่อย ๆ โดยหน้าแต่ละหน้า โดยมีการเริ่มต้นและจบดัชนีเฉพาะ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## ตัวเลือกการเรียกกลับเพื่อบันทึกเอกสาร {#callback-option-for-saving-a-document}

คุณสามารถใช้ [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) ทรัพย์สินที่จะควบคุม Aspose.Words บันทึกส่วนของเอกสารเมื่อมีการส่งออกเป็นเอกสารในรูปแบบ HTML คุณสมบัตินี้อนุญาตให้คุณเปลี่ยนชื่อแฟ้มส่งออกเสียง หรือแม้กระทั่งเปลี่ยนค่าเป็นแม่น้ําที่กําหนดเอง

โปรดสังเกตว่าการเรียกกลับนี้ ไม่มีประโยชน์เมื่อบันทึกไปยัง APUB เพราะจะต้องบันทึกส่วนผลลัพธ์ทั้งหมดลงในกล่องเดียว - แฟ้ม. epub. So, refault value diversation is not position และผลกระทบของการเปลี่ยนชื่อแฟ้มไม่สามารถมองเห็นได้ เนื่องจากมีการเปลี่ยนชื่อแฟ้มภายในตู้บรรจุ

## รวมเอกสารแยกเข้ากับเอกสารอื่น {#merge-the-split-document-with-another-file}

Aspose.Words ให้คุณได้รวมเอกสารผลลัพธ์ที่แยกแล้ว เข้ากับเอกสารอื่น ๆ เพื่อสร้างเอกสารใหม่ นี่สามารถเรียกว่า เอกสารประกอบ

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการรวมเอกสารแยกเข้ากับเอกสารอื่น ๆ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
