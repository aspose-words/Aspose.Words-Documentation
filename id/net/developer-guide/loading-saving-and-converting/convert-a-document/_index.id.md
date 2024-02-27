---
title: Konversi Dokumen di C#
second_title: Aspose.Words untuk .NET
articleTitle: Konversi Dokumen
linktitle: Konversi Dokumen
type: docs
url: /id/net/convert-a-document/
weight: 30
description: "Konversi dokumen dengan mudah dari satu format ke format lainnya menggunakan C#. Anda dapat bekerja dengan semua format terpopuler seperti format Microsoft Word seperti DOCX atau DOC, format OpenDocument seperti ODT atau OTT, format web seperti HTML atau XHTML, format teks seperti MarkDown atau TXT, dan lain-lain."
keywords: "convert a document c#, convert documents from one format to another c#, convert to markdown c#, convert pdf to docx C#, convert docx to pdf C#, convert doc to pdf C#, convert a document Aspose for .NET"
---

Kemampuan untuk mengkonversi dokumen dengan mudah dan andal dari satu format ke format lainnya adalah salah satu fitur utama Aspose.Words. Konversi semacam itu tidak lebih dari kombinasi operasi pemuatan dan penyimpanan.

## Apa itu Konversi Dokumen {#what-is-document-conversion}

Hampir semua tugas yang ingin Anda lakukan dengan Aspose.Words melibatkan memuat atau menyimpan dokumen dalam beberapa format. Seperti disebutkan di bagian sebelumnya, enumerasi [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) menentukan semua format *load* atau *import* yang didukung oleh Aspose.Words, dan enumerasi [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) menentukan semua format *save* atau *export* yang didukung oleh Aspose.Words. Dengan demikian, Aspose.Words dapat mengonversi dokumen dari format pemuatan apa pun yang didukung ke format penyimpanan apa pun yang didukung. Biasanya, konversi semacam itu memerlukan beberapa tahap perhitungan. Namun dari sudut pandang pengguna, konversi dari format dokumen ke format lain itu sendiri sangat sederhana, dan dapat dilakukan hanya dengan dua langkah:

1. Muat dokumen Anda ke dalam objek [Document](https://reference.aspose.com/words/net/aspose.words/document/) menggunakan salah satu konstruktornya.
1. Panggil salah satu metode [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) pada objek **Document** dan tentukan format output yang diinginkan.

{{% alert color="primary" %}}

**Coba daring**

Anda dapat mencoba fungsi konversi dengan menggunakan alat [Konverter online gratis](https://products.aspose.app/words/conversion) kami.

{{% /alert %}}

## Konversi Populer {#popular-conversions}

Bagian saat ini menjelaskan konversi populer, serta ide untuk bekerja dengan beberapa kombinasi format saat memuat dan menyimpan. Dengan menggunakan contoh di bagian ini, Anda dapat memahami bahwa proses konversi itu sendiri cukup universal, dan tidak ada gunanya menjelaskan semua opsi yang memungkinkan, karena ada beberapa ratus opsi karena banyaknya [Format Dokumen yang Didukung](/words/id/net/supported-document-formats/).

{{% alert color="primary" %}}

Harap perhatikan bahwa di bawah ini adalah kombinasi konversi yang paling populer, dan tidak setiap kombinasi ditautkan ke halaman tertentu. Hal ini terjadi karena artikel kami tidak memiliki contoh untuk setiap pasangan konversi – hampir semua konversi sangat mirip. Pastikan hal ini dengan mempelajari artikel di bagian saat ini.

{{% /alert %}}

<div class="row">
		<div class="col-md-4">
				<h2>Konversi Word ke PDF</h2>
						<ul>
								<li><a href="/words/net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Konversi DOC ke PDF</a></li>
								<li><a href="/words/net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Konversi DOCX ke PDF</a></li>
								<li>dan lain-lain</li>
						</ul>
				<h2>Konversi Gambar ke PDF</h2>
						<ul>
								<li><a href="/words/net/convert-a-document-to-pdf/#convert-an-image-to-pdf">Konversi JPG ke PDF</a></li>
								<li><a href="/words/net/convert-a-document-to-pdf/#convert-an-image-to-pdf">Konversi TIFF ke PDF</a></li>
								<li>dan lain-lain</li>
						</ul>
    <h2>Konversi Web ke PDF</h2>
						<ul>
								<li>Konversi Markdown ke PDF</li>
								<li>Konversi HTML ke PDF</li>
								<li>Konversi MHT (MHTML) ke PDF</li>
								<li>dan lain-lain</li>
						</ul>
				<h2>Konversi Format Lain ke PDF</h2>
						<ul>
								<li>Konversi RTF ke PDF</li>
								<li>Konversi ODT ke PDF</li>
								<li>Konversi TXT ke PDF</li>
								<li>Konversi Mobi ke PDF</li>
								<li>dan lain-lain</li>
						</ul>
		</div>
		<div class="col-md-4">
				<h2>Konversi PDF ke Word</h2>
						<ul>
								<li><a href="/words/id/net/convert-pdf-to-other-document-formats/">Konversi PDF ke Format Dokumen Lain</a></li>
        <li>Konversi PDF ke DOC</li>
								<li>dan lain-lain</li>
						</ul>
				<h2>Konversi PDF ke Gambar</h2>
						<ul>
								<li><a href="/words/id/net/convert-a-document-to-an-image/">Konversi Dokumen menjadi Gambar</a></li>
        <li>Konversi PDF ke SVG</li>
								<li>dan lain-lain</li>
						</ul>
				<h2>Konversi PDF ke Web</h2>
						<ul>
        <li>Konversi PDF ke Markdown</li>
								<li>Konversi PDF ke HTML</li>
								<li>Konversi PDF ke EPUB</li>
								<li>dan lain-lain</li>
						</ul>
				<h2>Konversi PDF ke Format Lain</h2>
						<ul>
								<li>Konversi PDF ke RTF</li>
								<li>Konversi PDF ke XPS</li>
								<li>dan lain-lain</li>
						</ul>
		</div>
		<div class="col-md-4">
				<h2>Konversi Dokumen menjadi Gambar</h2>
						<ul>
								<li><a href="/words/id/net/convert-a-document-to-an-image/">Konversi Dokumen menjadi Gambar</a></li>
								<li><a href="/words/id/net/convert-a-document-to-an-image/">Konversi Dokumen menjadi Gambar</a></li>
								<li>dan lain-lain</li>
						</ul>
				<h2>Konversikan Dokumen ke Markdown</h2>
						<ul>
								<li><a href="/words/id/net/convert-a-document-to-markdown/">Konversikan Dokumen ke Markdown</a></li>
								<li>Konversi HTML ke Markdown</li>
								<li>dan lain-lain</li>
						</ul>
				<h2>Konversi Dokumen ke HTML</h2>
						<ul>
								<li><a href="/words/net/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">Konversi Word ke HTML</a></li>
								<li>Konversi Markdown ke HTML</li>
								<li>Ubah Mobi menjadi EPUB</li>
								<li>dan lain-lain</li>
						</ul>
				<h2>Mengerjakan Dokumen dalam Database</h2>
						<ul>
								<li><a href="/words/id/net/serialize-and-work-with-a-document-in-a-database/">Membuat serial dan Bekerja dengan Dokumen dalam Database</a></li>
						</ul>
				<h2>Contoh Lainnya</h2>
						<ul>
								<li><a href="/words/id/net/convert-a-document-to-mhtml-and-send-it-by-email/">Konversikan Dokumen ke MHTML dan Kirim melalui Email</a></li>
								<li>Ubah DOCX menjadi DOC</li>
								<li>Konversi HTML ke Word</li>
								<li>dan lain-lain</li>
						</ul>
		</div>
</div>
