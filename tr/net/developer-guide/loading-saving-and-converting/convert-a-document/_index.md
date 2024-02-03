---
title: C#'te bir Belgeyi Dönüştürme
second_title: .NET için Aspose.Words
articleTitle: Belgeyi Dönüştür
linktitle: Belgeyi Dönüştür
type: docs
url: /tr/net/convert-a-document/
weight: 30
description: "C# kullanarak belgeleri kolayca bir formattan diğerine dönüştürün. DOCX veya DOC gibi Microsoft Word formatları, ODT veya OTT gibi OpenDocument formatları, HTML veya XHTML gibi web formatları, MarkDown veya TXT gibi metin formatları ve diğerleri gibi en popüler formatların tümü ile çalışabilirsiniz."
keywords: "convert a document c#, convert documents from one format to another c#, convert to markdown c#, convert pdf to docx C#, convert docx to pdf C#, convert doc to pdf C#, convert a document Aspose for .NET"
---

Belgeleri bir formattan diğerine kolay ve güvenilir bir şekilde dönüştürme yeteneği, Aspose.Words'in ana özellik alanlarından biridir. Böyle bir dönüşüm, yükleme ve kaydetme işlemlerinin birleşiminden başka bir şey değildir.

## Belge Dönüştürme {#what-is-document-conversion} Nedir?

Aspose.Words ile gerçekleştirmek istediğiniz hemen hemen her görev, bir belgenin belirli bir biçimde yüklenmesini veya kaydedilmesini içerir. Önceki bölümlerde bahsedildiği gibi, [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) numaralandırması Aspose.Words tarafından desteklenen tüm *load* veya *import* formatlarını belirtir ve [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) numaralandırması, Aspose.Words tarafından desteklenen tüm *save* veya *export* formatlarını belirtir. Böylece Aspose.Words, desteklenen herhangi bir yükleme biçimindeki bir belgeyi desteklenen herhangi bir kaydetme biçimine dönüştürebilir. Kural olarak, böyle bir dönüşüm birkaç hesaplama aşaması gerektirir. Ancak kullanıcı açısından bir belge formatından diğerine dönüştürme işlemi oldukça basittir ve yalnızca iki adımla gerçekleştirilebilir:

1. Belgenizi, yapıcılarından birini kullanarak bir [Document](https://reference.aspose.com/words/net/aspose.words/document/) nesnesine yükleyin.
1. **Document** nesnesinde [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) yöntemlerinden birini çağırın ve istediğiniz çıktı formatını belirtin.

{{% alert color="primary" %}}

**Çevrimiçi deneyin**

[Ücretsiz çevrimiçi dönüştürücü](https://products.aspose.app/words/conversion) aracımızı kullanarak dönüştürme işlevini deneyebilirsiniz.

{{% /alert %}}

## Popüler Dönüşümler {#popular-conversions}

Mevcut bölümde popüler dönüşümlerin yanı sıra yükleme ve kaydetme sırasında bazı format kombinasyonlarıyla çalışmaya yönelik fikirler açıklanmaktadır. Bu bölümün örneklerini kullanarak, dönüştürme işleminin kendisinin oldukça evrensel olduğunu ve çok sayıda [Desteklenen Belge Formatları](/words/tr/net/supported-document-formats/) nedeniyle birkaç yüz tane olduğundan olası tüm seçenekleri açıklamanın bir anlamı olmadığını anlayabilirsiniz.

{{% alert color="primary" %}}

Aşağıda en popüler dönüşüm kombinasyonlarının yer aldığını ve her kombinasyonun belirli bir sayfaya bağlı olmadığını lütfen unutmayın. Bunun nedeni makalelerimizde her dönüşüm çifti için örnek bulunmamasıdır; neredeyse tüm dönüşümler oldukça benzerdir. Güncel bölümdeki makaleleri inceleyerek bundan emin olun.

{{% /alert %}}

<div class="row">
		<div class="col-md-4">
				<h2>Word'ü PDF'ye dönüştür</h2>
						<ul>
								<li><a href="/words/net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">DOC'yi PDF'ye dönüştür</a></li>
								<li><a href="/words/net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">DOCX'i PDF'ye dönüştür</a></li>
								<li>ve diğerleri</li>
						</ul>
				<h2>Görüntüyü PDF'ye Dönüştür</h2>
						<ul>
								<li><a href="/words/net/convert-a-document-to-pdf/#convert-an-image-to-pdf">JPG'yi PDF'ye dönüştür</a></li>
								<li><a href="/words/net/convert-a-document-to-pdf/#convert-an-image-to-pdf">TIFF'yi PDF'ye dönüştür</a></li>
								<li>ve diğerleri</li>
						</ul>
    <h2>Web'i PDF'ye dönüştürün</h2>
						<ul>
								<li>Markdown'i PDF'ye dönüştür</li>
								<li>HTML'yi PDF'ye dönüştür</li>
								<li>MHT'yi (MHTML) PDF'ye dönüştür</li>
								<li>ve diğerleri</li>
						</ul>
				<h2>Diğer Formatları PDF'ye Dönüştür</h2>
						<ul>
								<li>RTF'yi PDF'ye dönüştürün</li>
								<li>ODT'yi PDF'ye dönüştür</li>
								<li>TXT'yi PDF'ye dönüştür</li>
								<li>Mobi'yi PDF'ye dönüştürün</li>
								<li>ve diğerleri</li>
						</ul>
		</div>
		<div class="col-md-4">
				<h2>PDF'yi Word'e dönüştürün</h2>
						<ul>
								<li><a href="/words/tr/net/convert-pdf-to-other-document-formats/">PDF'yi Diğer Belge Formatlarına Dönüştürme</a></li>
        <li>PDF'yi DOC'ye dönüştür</li>
								<li>ve diğerleri</li>
						</ul>
				<h2>PDF'yi Görüntüye Dönüştür</h2>
						<ul>
								<li><a href="/words/tr/net/convert-a-document-to-an-image/">Belgeyi Görüntüye Dönüştürme</a></li>
        <li>PDF'yi SVG'ye dönüştürün</li>
								<li>ve diğerleri</li>
						</ul>
				<h2>PDF'yi Web'e dönüştürün</h2>
						<ul>
        <li>PDF'yi Markdown'e dönüştürün</li>
								<li>PDF'yi HTML'ye dönüştürün</li>
								<li>PDF'yi EPUB'a dönüştürün</li>
								<li>ve diğerleri</li>
						</ul>
				<h2>PDF'yi Diğer Formatlara Dönüştür</h2>
						<ul>
								<li>PDF'yi RTF'ye dönüştürün</li>
								<li>PDF'yi XPS'ye dönüştürün</li>
								<li>ve diğerleri</li>
						</ul>
		</div>
		<div class="col-md-4">
				<h2>Belgeyi Görüntüye Dönüştürme</h2>
						<ul>
								<li><a href="/words/tr/net/convert-a-document-to-an-image/">Belgeyi Görüntüye Dönüştürme</a></li>
								<li><a href="/words/tr/net/convert-a-document-to-an-image/">Belgeyi Görüntüye Dönüştürme</a></li>
								<li>ve diğerleri</li>
						</ul>
				<h2>Belgeyi Markdown'e Dönüştürme</h2>
						<ul>
								<li><a href="/words/tr/net/convert-a-document-to-markdown/">Belgeyi Markdown'e Dönüştürme</a></li>
								<li>HTML'yi Markdown'ye dönüştür</li>
								<li>ve diğerleri</li>
						</ul>
				<h2>Belgeyi HTML'ye Dönüştürme</h2>
						<ul>
								<li><a href="/words/net/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">Word'ü HTML'ye dönüştür</a></li>
								<li>Markdown'yi HTML'ye dönüştür</li>
								<li>Mobi'yi EPUB'a dönüştür</li>
								<li>ve diğerleri</li>
						</ul>
				<h2>Bir Belgeyi Veritabanında Çalışmak</h2>
						<ul>
								<li><a href="/words/tr/net/serialize-and-work-with-a-document-in-a-database/">Veritabanındaki Bir Belgeyi Serileştirme ve Çalışma</a></li>
						</ul>
				<h2>Diğer Örnekler</h2>
						<ul>
								<li><a href="/words/tr/net/convert-a-document-to-mhtml-and-send-it-by-email/">Bir Belgeyi MHTML'ye Dönüştürün ve E-postayla Gönderin</a></li>
								<li>DOCX'yi DOC'ye dönüştür</li>
								<li>HTML'yi Word'e dönüştür</li>
								<li>ve diğerleri</li>
						</ul>
		</div>
</div>
