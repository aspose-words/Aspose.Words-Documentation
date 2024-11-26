---
title: แยกเอกสารใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: แยกเอกสาร
linktitle: แยกเอกสาร
description: "แยกเอกสารออกเป็นหลายไฟล์โดยใช้ C# ใช้คุณลักษณะการแยกเพื่อแบ่งเอกสารตามหัวเรื่องหรือส่วน ตลอดจนตามหน้าหรือตามช่วงหน้าอย่างมีประสิทธิภาพ"
type: docs
weight: 90
url: /th/net/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* หรือ *แยกเอกสาร* เป็นกระบวนการแบ่งเอกสารขนาดใหญ่ออกเป็นไฟล์ขนาดเล็กจำนวนมากขึ้น มีเหตุผลหลายประการในการแบ่งไฟล์ ตัวอย่างเช่น คุณต้องการเพียงบางหน้าจากเอกสารที่ระบุ ไม่ใช่ทั้งหน้า หรือด้วยเหตุผลด้านความเป็นส่วนตัว คุณต้องการแชร์เฉพาะบางส่วนของเอกสารกับผู้อื่น ด้วยคุณสมบัติการแยก คุณสามารถรับเฉพาะส่วนที่จำเป็นของเอกสาร และดำเนินการที่จำเป็นกับส่วนเหล่านั้น เช่น เพื่อมาร์กอัป บันทึก หรือส่ง

Aspose.Words มอบวิธีที่มีประสิทธิภาพในการแบ่งเอกสารหนึ่งฉบับออกเป็นหลายเอกสารตามหัวข้อหรือส่วนต่างๆ คุณยังสามารถแบ่งเอกสารตามหน้าหรือตามช่วงหน้าได้ ตัวเลือกการแยกทั้งสองจะอธิบายไว้ในบทความนี้

หากต้องการแยกเอกสารเป็นไฟล์ขนาดเล็กโดยใช้ Aspose.Words คุณต้องทำตามขั้นตอนเหล่านี้:

1. โหลดเอกสารในรูปแบบที่รองรับ
1. แยกเอกสาร
1. บันทึกเอกสารผลลัพธ์

หลังจากที่คุณแยกเอกสาร คุณจะสามารถเปิดเอกสารเอาต์พุตทั้งหมดที่จะเริ่มต้นด้วยหน้า ข้อความ ฯลฯ ที่ต้องการ

{{% alert color="primary" %}}

**ลองออนไลน์**

คุณสามารถลองใช้ฟังก์ชันนี้กับ [ตัวแยกเอกสารออนไลน์ฟรี](https://products.aspose.app/words/splitter) ของเราได้

{{% /alert %}}

## แยกเอกสารโดยใช้เกณฑ์ที่แตกต่างกัน {#split-a-document-using-different-criteria}

Aspose.Words ช่วยให้คุณสามารถแบ่งเอกสาร EPUB หรือ HTML ออกเป็นบทต่างๆ ตามเกณฑ์ต่างๆ ในกระบวนการนี้ สไตล์และโครงร่างของเอกสารต้นทางจะถูกรักษาไว้สำหรับเอกสารเอาท์พุต

คุณสามารถระบุเกณฑ์ได้โดยใช้การแจงนับ [DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/documentsplitcriteria/) ดังนั้นคุณจึงสามารถแบ่งเอกสารออกเป็นบทๆ ได้โดยใช้เกณฑ์ข้อใดข้อหนึ่งต่อไปนี้ หรือรวมเกณฑ์มากกว่าหนึ่งเกณฑ์เข้าด้วยกัน:

- ย่อหน้าหัวเรื่อง
- ตัวแบ่งส่วน
- ตัวแบ่งคอลัมน์
- ตัวแบ่งหน้า

เมื่อบันทึกเอาต์พุตเป็น HTML Aspose.Words จะบันทึกแต่ละบทเป็นไฟล์ HTML แยกกัน เป็นผลให้เอกสารถูกแบ่งออกเป็นไฟล์ HTML หลายไฟล์ เมื่อบันทึกเอาต์พุตเป็น EPUB Aspose.Words จะบันทึกผลลัพธ์เป็นไฟล์ EPUB ไฟล์เดียว โดยไม่คำนึงถึงค่า `DocumentSplitCriteria` ที่คุณใช้ ดังนั้น การใช้ DocumentSplitCriteria สำหรับเอกสาร EPUB จะส่งผลต่อลักษณะที่ปรากฏของเนื้อหาในแอปพลิเคชันโปรแกรมอ่านเท่านั้น โดยเนื้อหาจะถูกแบ่งออกเป็นบทต่างๆ และเอกสารจะไม่ปรากฏต่อเนื่องอีกต่อไป

{{% alert color="primary" %}}

คุณไม่สามารถแยกเอกสารโดยใช้คุณสมบัติ [DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitcriteria/) เมื่อบันทึกเป็นรูปแบบ MHTML

{{% /alert %}}

ในส่วนนี้ เราจะพิจารณาเฉพาะเกณฑ์การแยกที่เป็นไปได้บางส่วนเท่านั้น

### แยกเอกสารตามส่วนหัว {#split-a-document-by-headings}

หากต้องการแบ่งเอกสารออกเป็นบทต่างๆ ตามหัวข้อ ให้ใช้ค่า **HeadingParagraph** ของคุณสมบัติ **DocumentSplitCriteria**

หากคุณต้องการแบ่งเอกสารตามระดับเฉพาะของย่อหน้าส่วนหัว เช่น ส่วนหัว 1, 2 และ 3 ให้ใช้คุณสมบัติ [DocumentSplitHeadingLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitheadinglevel/) ด้วย ผลลัพธ์จะถูกแบ่งตามย่อหน้าที่จัดรูปแบบตามระดับหัวเรื่องที่ระบุ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแบ่งเอกสารออกเป็นส่วนเล็กๆ ตามหัวข้อ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentByHeadingsHtml.cs" >}}

โปรดทราบว่าสำหรับเกณฑ์นี้ Aspose.Words รองรับเฉพาะการบันทึกเป็นรูปแบบ HTML เมื่อทำการแยก

เมื่อบันทึกเป็น EPUB เอกสารจะไม่แบ่งออกเป็นหลายไฟล์ และจะมีไฟล์เอาต์พุตเพียงไฟล์เดียวเท่านั้น

### แยกเอกสารตามส่วน {#split-a-document-by-sections}

Aspose.Words ยังช่วยให้คุณใช้ตัวแบ่งส่วนเพื่อแยกเอกสารและบันทึกเป็น HTML ได้ เพื่อจุดประสงค์นี้ ให้ใช้ **SectionBreak** เป็น **DocumentSplitCriteria**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentBySectionsHtml.cs" >}}

มีอีกวิธีหนึ่งในการแบ่งเอกสารต้นฉบับออกเป็นเอกสารเอาต์พุตหลายชุด และคุณสามารถเลือกรูปแบบเอาต์พุตใดก็ได้ที่ Aspose.Words รองรับ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแบ่งเอกสารออกเป็นส่วนเล็กๆ ตามตัวแบ่งส่วน (โดยไม่ต้องใช้คุณสมบัติ `DocumentSplitCriteria`):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cs" >}}

## แบ่งตามเพจ {#splitting-by-pages}

คุณยังสามารถแยกเอกสารทีละหน้า ตามช่วงหน้า หรือเริ่มต้นด้วยหมายเลขหน้าที่ระบุได้ ในกรณีเช่นนี้ วิธี [ExtractPages](https://reference.aspose.com/words/net/aspose.words/document/extractpages/) สามารถทำงานได้

ส่วนนี้จะอธิบายกรณีการใช้งานต่างๆ ของการแบ่งเอกสารโดยเพจโดยใช้คลาส [Document](https://reference.aspose.com/words/net/aspose.words/document/) และวิธีการ **ExtractPages**

{{% alert color="primary" %}}

คุณสามารถใช้ [รูปแบบเอกสารที่รองรับ](/words/th/net/supported-document-formats/) ใดก็ได้

{{% /alert %}}

{{% alert color="primary" %}}

เนื่องจากความแตกต่างมากมายปรากฏขึ้นในขณะที่ลดจำนวนหน้า การจับคู่แบบเต็มกับเค้าโครง Microsoft Word จึงเป็นงานที่ค่อนข้างซับซ้อน ดังนั้น ขึ้นอยู่กับความซับซ้อนของเอกสาร จึงอาจมีความแตกต่างเล็กน้อยในเค้าโครงเอกสารที่เป็นผลลัพธ์จากเอกสารต้นฉบับ

{{% /alert %}}

### แยกหน้าเอกสารตามหน้า {#split-a-document-page-by-page}

Aspose.Words ช่วยให้คุณสามารถแบ่งเอกสารหลายหน้าทีละหน้า

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแบ่งเอกสารและบันทึกแต่ละหน้าเป็นเอกสารแยกต่างหาก:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.cs" >}}

### แบ่งเอกสารตามช่วงหน้า {#split-a-document-by-page-ranges}

Aspose.Words อนุญาตให้แยกเอกสารหลายหน้าตามช่วงหน้า คุณสามารถแบ่งไฟล์หนึ่งไฟล์ออกเป็นหลายไฟล์โดยมีช่วงหน้าต่างๆ หรือเพียงเลือกช่วงเดียวและบันทึกเฉพาะส่วนนี้ของเอกสารต้นฉบับ โปรดทราบว่าคุณสามารถเลือกช่วงหน้าตามหมายเลขหน้าสูงสุดและต่ำสุดของเอกสารได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแบ่งเอกสารออกเป็นส่วนเล็ก ๆ ตามช่วงหน้าด้วยดัชนีเริ่มต้นและสิ้นสุดเฉพาะ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.cs" >}}

## ตัวเลือกการโทรกลับเพื่อบันทึกเอกสาร {#callback-option-for-saving-a-document}

คุณสามารถใช้คุณสมบัติ [DocumentPartSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentpartsavingcallback/) เพื่อควบคุมวิธีที่ Aspose.Words บันทึกส่วนของเอกสารเมื่อเอกสารนี้ถูกส่งออกเป็นรูปแบบ HTML คุณสมบัตินี้ช่วยให้คุณสามารถเปลี่ยนชื่อไฟล์เอาต์พุตหรือแม้กระทั่งเปลี่ยนเส้นทางไปยังสตรีมที่กำหนดเองได้

โปรดทราบว่าการโทรกลับนี้ไม่มีประโยชน์เมื่อบันทึกเป็น EPUB เนื่องจากส่วนที่ส่งออกทั้งหมดจะต้องบันทึกลงในคอนเทนเนอร์เดียว นั่นคือไฟล์ .epub ดังนั้นจึงไม่รองรับการเปลี่ยนเส้นทางสตรีม และเอฟเฟกต์ของการเปลี่ยนชื่อจะไม่ปรากฏให้เห็นเนื่องจากการเปลี่ยนชื่อไฟล์ภายในคอนเทนเนอร์

## รวมเอกสารแยกกับเอกสารอื่น {#merge-the-split-document-with-another-file}

Aspose.Words ช่วยให้คุณสามารถรวมเอกสารแยกเอาต์พุตกับเอกสารอื่นเพื่อสร้างเอกสารใหม่ สิ่งนี้สามารถเรียกได้ว่าเป็นการรวมเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการผสานเอกสารที่แยกกับเอกสารอื่น:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cs" >}}
