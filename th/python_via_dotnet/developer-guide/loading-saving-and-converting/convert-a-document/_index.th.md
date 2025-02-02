---
title: แปลงเอกสารเป็น Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: แปลงเอกสาร
linktitle: แปลงเอกสาร
type: docs
url: /th/python-net/convert-a-document/
weight: 30
description: "แปลงเอกสารจากรูปแบบหนึ่งไปเป็นอีกรูปแบบหนึ่งได้อย่างง่ายดายโดยใช้ Python คุณสามารถทำงานกับรูปแบบยอดนิยมทั้งหมด เช่น รูปแบบ Microsoft Word เช่น DOCX หรือ DOC, รูปแบบ OpenDocument เช่น ODT หรือ OTT, รูปแบบเว็บ เช่น HTML หรือ XHTML, รูปแบบข้อความ เช่น MarkDown หรือ TXT และอื่นๆ"
keywords: "convert a document python, convert documents from one format to another python, convert to markdown python, convert pdf to docx python, convert docx to pdf python, convert doc to pdf python, convert a document Aspose for Python"
timestamp: 2024-01-27-14-07-04
---

ความสามารถในการแปลงเอกสารจากรูปแบบหนึ่งไปเป็นอีกรูปแบบหนึ่งได้อย่างง่ายดายและเชื่อถือได้ถือเป็นหนึ่งในคุณสมบัติหลักของ Aspose.Words การแปลงดังกล่าวไม่มีอะไรมากไปกว่าการผสมผสานระหว่างการโหลดและการบันทึก

เกือบทุกงานที่คุณต้องการดำเนินการด้วย Aspose.Words เกี่ยวข้องกับการโหลดหรือบันทึกเอกสารในรูปแบบใดรูปแบบหนึ่ง ตามที่กล่าวไว้ในส่วนก่อนหน้า การแจงนับ [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) ระบุรูปแบบ *load* หรือ *import* ทั้งหมดที่รองรับโดย Aspose.Words และการแจงนับ [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) ระบุรูปแบบ *save* หรือ *export* ทั้งหมดที่รองรับโดย Aspose.Words ดังนั้น Aspose.Words จึงสามารถแปลงเอกสารจากรูปแบบโหลดที่รองรับให้เป็นรูปแบบบันทึกที่รองรับได้ ตามกฎแล้วการแปลงดังกล่าวต้องใช้การคำนวณหลายขั้นตอน อย่างไรก็ตาม จากมุมมองของผู้ใช้ การแปลงจากรูปแบบเอกสารไปเป็นอีกรูปแบบหนึ่งนั้นง่ายมาก และสามารถทำได้ด้วยสองขั้นตอนเท่านั้น:

1. โหลดเอกสารของคุณลงในวัตถุ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) โดยใช้ตัวสร้างตัวใดตัวหนึ่ง
1. เรียกใช้หนึ่งในวิธี [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) บนออบเจ็กต์ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) และระบุรูปแบบเอาต์พุตที่ต้องการ

{{% alert color="primary" %}}

**ลองออนไลน์**

คุณสามารถลองใช้ฟังก์ชันการแปลงได้โดยใช้เครื่องมือ [แปลงออนไลน์ฟรี](https://products.aspose.app/words/conversion) ของเรา

{{% /alert %}}

ส่วนปัจจุบันจะอธิบาย Conversion ยอดนิยม รวมถึงแนวคิดในการทำงานกับรูปแบบบางรูปแบบเมื่อโหลดและบันทึก จากตัวอย่างของส่วนนี้ คุณจะเข้าใจได้ว่ากระบวนการแปลงนั้นค่อนข้างเป็นสากล และไม่มีประเด็นใดที่จะอธิบายตัวเลือกที่เป็นไปได้ทั้งหมด เนื่องจากมีหลายร้อยตัวเลือกเนื่องจากมี [รูปแบบเอกสารที่รองรับ](/words/th/python-net/supported-document-formats/) จำนวนมาก

{{% alert color="primary" %}}

โปรดทราบว่าด้านล่างคือชุดค่าผสม Conversion ที่ได้รับความนิยมมากที่สุด และไม่ใช่ทุกชุดจะเชื่อมโยงกับหน้าที่แน่นอน ในกรณีนี้เนื่องจากบทความของเราไม่มีตัวอย่างสำหรับ Conversion ทุกคู่ โดย Conversion เกือบทั้งหมดจะค่อนข้างคล้ายกัน ตรวจสอบสิ่งนี้โดยศึกษาบทความในหัวข้อปัจจุบัน

{{% /alert %}}

<div class="row">
		<div class="col-md-4">
				<h2>แปลง Word เป็น PDF</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">แปลง DOC เป็น PDF</a></li>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">แปลง DOCX เป็น PDF</a></li>
								<li>และคนอื่น ๆ</li>
						</ul>
				<h2>แปลงรูปภาพเป็น PDF</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">แปลง JPG เป็น PDF</a></li>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">แปลง TIFF เป็น PDF</a></li>
								<li>และคนอื่น ๆ</li>
						</ul>
				<h2>แปลงรูปแบบเว็บเป็น PDF</h2>
						<ul>
								<li>แปลง Markdown เป็น PDF</li>
								<li>แปลง HTML เป็น PDF</li>
								<li>แปลง MHT (MHTML) เป็น PDF</li>
								<li>และคนอื่น ๆ</li>
						</ul>
				<h2>แปลงรูปแบบอื่นเป็น PDF</h2>
						<ul>
								<li>แปลง RTF เป็น PDF</li>
								<li>แปลง ODT เป็น PDF</li>
								<li>แปลง TXT เป็น PDF</li>
								<li>แปลง Mobi เป็น PDF</li>
								<li>และคนอื่น ๆ</li>
						</ul>
		</div>
		<div class="col-md-4">
				<h2>แปลง PDF เป็น Word</h2>
						<ul>
								<li><a href="/words/th/python-net/convert-pdf-to-other-document-formats/">แปลง PDF เป็นรูปแบบเอกสารอื่น ๆ</a></li>
        <li>แปลง PDF เป็น DOC</li>
								<li>และคนอื่น ๆ</li>
						</ul>
				<h2>แปลง PDF เป็นรูปภาพ</h2>
						<ul>
								<li><a href="/words/th/python-net/convert-a-document-to-an-image/">แปลงเอกสารเป็นรูปภาพ</a></li>
        <li>แปลง PDF เป็น SVG</li>
								<li>และคนอื่น ๆ</li>
						</ul>
				<h2>แปลง PDF เป็นรูปแบบเว็บ</h2>
						<ul>
        <li>แปลง PDF เป็น Markdown</li>
								<li>แปลง PDF เป็น HTML</li>
								<li>แปลง PDF เป็น EPUB</li>
								<li>และคนอื่น ๆ</li>
						</ul>
				<h2>แปลง PDF เป็นรูปแบบอื่น</h2>
						<ul>
								<li>แปลง PDF เป็น RTF</li>
								<li>แปลง PDF เป็น XPS</li>
								<li>และคนอื่น ๆ</li>
						</ul>
		</div>
		<div class="col-md-4">
				<h2>แปลงเอกสารเป็นรูปภาพ</h2>
						<ul>
								<li><a href="/words/th/python-net/convert-a-document-to-an-image/">แปลงเอกสารเป็นรูปภาพ</a></li>
								<li><a href="/words/th/python-net/convert-a-document-to-an-image/">แปลงเอกสารเป็นรูปภาพ</a></li>
								<li>และคนอื่น ๆ</li>
						</ul>
				<h2>แปลงเอกสารเป็น Markdown</h2>
						<ul>
								<li><a href="/words/th/python-net/convert-a-document-to-markdown/">แปลงเอกสารเป็น Markdown</a></li>
								<li>แปลง HTML เป็น Markdown</li>
								<li>และคนอื่น ๆ</li>
						</ul>
				<h2>แปลงเอกสารเป็น HTML</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">แปลง Word เป็น HTML</a></li>
								<li>แปลง Markdown เป็น HTML</li>
								<li>แปลง Mobi เป็น EPUB</li>
								<li>และคนอื่น ๆ</li>
						</ul>
		</div>
</div>
