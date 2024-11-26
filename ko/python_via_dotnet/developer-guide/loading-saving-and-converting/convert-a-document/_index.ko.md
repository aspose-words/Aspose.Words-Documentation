---
title: Python에서 문서 변환
second_title: Python via .NET용 Aspose.Words
articleTitle: 문서 변환
linktitle: 문서 변환
type: docs
url: /ko/python-net/convert-a-document/
weight: 30
description: "Python을 사용하여 문서를 한 형식에서 다른 형식으로 쉽게 변환할 수 있습니다. DOCX 또는 DOC와 같은 Microsoft Word 형식, ODT 또는 OTT와 같은 OpenDocument 형식, HTML 또는 XHTML과 같은 웹 형식, MarkDown 또는 TXT와 같은 텍스트 형식 등과 같이 가장 널리 사용되는 모든 형식으로 작업할 수 있습니다."
keywords: "convert a document python, convert documents from one format to another python, convert to markdown python, convert pdf to docx python, convert docx to pdf python, convert doc to pdf python, convert a document Aspose for Python"
timestamp: 2024-01-27-14-07-04
---

문서를 한 형식에서 다른 형식으로 쉽고 안정적으로 변환하는 기능은 Aspose.Words의 주요 기능 영역 중 하나입니다. 이러한 변환은 로드 및 저장 작업의 조합에 지나지 않습니다.

Aspose.Words로 수행하려는 거의 모든 작업에는 특정 형식으로 문서를 로드하거나 저장하는 작업이 포함됩니다. 이전 섹션에서 언급했듯이 [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) 열거형은 Aspose.Words에서 지원하는 모든 *load* 또는 *import* 형식을 지정하고, [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) 열거형은 Aspose.Words에서 지원하는 모든 *save* 또는 *export* 형식을 지정합니다. 따라서 Aspose.Words는 지원되는 모든 로드 형식의 문서를 지원되는 저장 형식으로 변환할 수 있습니다. 일반적으로 이러한 변환에는 여러 단계의 계산이 필요합니다. 그러나 사용자 관점에서 볼 때 문서 형식에서 다른 형식으로의 변환은 그 자체로 매우 간단하며 다음 두 단계만으로 수행할 수 있습니다

1. 생성자 중 하나를 사용하여 문서를 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 객체에 로드합니다.
1. [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 객체에서 [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) 메소드 중 하나를 호출하고 원하는 출력 형식을 지정합니다.

{{% alert color="primary" %}}

**온라인으로 사용해 보세요**

[무료 온라인 변환기](https://products.aspose.app/words/conversion) 도구를 사용하여 변환 기능을 사용해 볼 수 있습니다.

{{% /alert %}}

현재 섹션에서는 널리 사용되는 변환과 로드 및 저장할 때 일부 형식 조합을 사용하는 아이디어에 대해 설명합니다. 이 섹션의 예를 사용하면 변환 프로세스 자체가 매우 보편적이며 많은 수의 [지원되는 문서 형식](/words/ko/python-net/supported-document-formats/)로 인해 수백 가지가 있기 때문에 가능한 모든 옵션을 설명하는 데 의미가 없다는 것을 이해할 수 있습니다.

{{% alert color="primary" %}}

아래는 가장 인기 있는 전환 조합이며 모든 조합이 특정 페이지에 연결되는 것은 아닙니다. 이는 기사에 모든 전환 쌍에 대한 예가 없기 때문입니다. 거의 모든 전환이 매우 유사합니다. 현재 섹션의 기사를 연구하여 이를 확인하세요.

{{% /alert %}}

<div class="row">
		<div class="col-md-4">
				<h2>Word를 PDF로 변환</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">DOC를 PDF로 변환</a></li>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">DOCX를 PDF로 변환</a></li>
								<li>다른 사람</li>
						</ul>
				<h2>이미지를 PDF로 변환</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">JPG를 PDF로 변환</a></li>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">TIFF를 PDF로 변환</a></li>
								<li>다른 사람</li>
						</ul>
				<h2>웹 형식을 PDF로 변환</h2>
						<ul>
								<li>Markdown를 PDF로 변환</li>
								<li>HTML을 PDF로 변환</li>
								<li>MHT(MHTML)를 PDF로 변환</li>
								<li>다른 사람</li>
						</ul>
				<h2>다른 형식을 PDF로 변환</h2>
						<ul>
								<li>RTF를 PDF로 변환</li>
								<li>ODT를 PDF로 변환</li>
								<li>TXT를 PDF로 변환</li>
								<li>Mobi를 PDF로 변환</li>
								<li>다른 사람</li>
						</ul>
		</div>
		<div class="col-md-4">
				<h2>PDF를 Word로 변환</h2>
						<ul>
								<li><a href="/words/ko/python-net/convert-pdf-to-other-document-formats/">PDF를 다른 문서 형식으로 변환</a></li>
        <li>PDF를 DOC로 변환</li>
								<li>다른 사람</li>
						</ul>
				<h2>PDF를 이미지로 변환</h2>
						<ul>
								<li><a href="/words/ko/python-net/convert-a-document-to-an-image/">문서를 이미지로 변환</a></li>
        <li>PDF를 SVG로 변환</li>
								<li>다른 사람</li>
						</ul>
				<h2>PDF를 웹 형식으로 변환</h2>
						<ul>
        <li>PDF를 Markdown로 변환</li>
								<li>PDF를 HTML로 변환</li>
								<li>PDF를 EPUB로 변환</li>
								<li>다른 사람</li>
						</ul>
				<h2>PDF를 다른 형식으로 변환</h2>
						<ul>
								<li>PDF를 RTF로 변환</li>
								<li>PDF를 XPS로 변환</li>
								<li>다른 사람</li>
						</ul>
		</div>
		<div class="col-md-4">
				<h2>문서를 이미지로 변환</h2>
						<ul>
								<li><a href="/words/ko/python-net/convert-a-document-to-an-image/">문서를 이미지로 변환</a></li>
								<li><a href="/words/ko/python-net/convert-a-document-to-an-image/">문서를 이미지로 변환</a></li>
								<li>다른 사람</li>
						</ul>
				<h2>문서를 Markdown로 변환</h2>
						<ul>
								<li><a href="/words/ko/python-net/convert-a-document-to-markdown/">문서를 Markdown로 변환</a></li>
								<li>HTML을 Markdown로 변환</li>
								<li>다른 사람</li>
						</ul>
				<h2>문서를 HTML로 변환</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">워드를 HTML로 변환</a></li>
								<li>Markdown를 HTML로 변환</li>
								<li>Mobi를 EPUB로 변환</li>
								<li>다른 사람</li>
						</ul>
		</div>
</div>
