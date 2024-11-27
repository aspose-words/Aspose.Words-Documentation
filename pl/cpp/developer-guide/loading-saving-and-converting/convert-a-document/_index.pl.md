---
title: Konwertuj dokument w C++
second_title: Aspose.Words dla C++
articleTitle: Konwertuj dokument
linktitle: Konwertuj dokument
type: docs
description: "Łatwo Konwertuj dokumenty z jednego formatu na inny za pomocą C++. Możesz pracować ze wszystkimi najpopularniejszymi formatami ,takimi jak Microsoft Word formaty, takie jak DOCX lub DOC, OpenDocument formaty, takie jak ODT lub OTT, formaty internetowe, takie jak HTML lub XHTML, formaty tekstowe, takie jak MarkDown lub TXT i inne."
keywords: "convert a document c++, convert documents from one format to another c++, convert to markdown c++, convert pdf to docx C++, convert docx to pdf C++, convert doc to pdf C++, convert a document Aspose for C++"
weight: 30
url: /pl/cpp/convert-a-document/
timestamp: 2024-09-25-11-08-55
---

Możliwość łatwej i niezawodnej konwersji dokumentów z jednego formatu na inny jest jednym z głównych obszarów funkcji Aspose.Words. Taka konwersja to nic innego jak połączenie operacji ładowania i zapisywania.

## Co To Jest Konwersja Dokumentów {#what-is-document-conversion}

Prawie każde zadanie, które chcesz wykonać za pomocą Aspose.Words, obejmuje załadowanie lub zapisanie dokumentu w jakimś formacie. Jak wspomniano w poprzednich sekcjach, wyliczenie [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) określa wszystkie formaty *load* lub *import* obsługiwane przez Aspose.Words, a wyliczenie [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) określa wszystkie formaty *save* lub *export* obsługiwane przez Aspose.Words. W ten sposób Aspose.Words może przekonwertować dokument z dowolnego obsługiwanego formatu ładowania na dowolny obsługiwany format zapisu. Z reguły taka konwersja wymaga kilku etapów obliczeń. Jednak z punktu widzenia użytkownika konwersja z formatu dokumentu na inny jest sama w sobie bardzo prosta i można ją wykonać za pomocą zaledwie dwóch kroków:

1. Załaduj dokument do obiektu [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) za pomocą jednego z jego konstruktorów.
1. Wywołaj jedną z metod [Save](https://reference.aspose.com/words/cpp/class/aspose.words.saving.save_output_parameters) Na obiekcie **Document** i określ żądany format wyjściowy.

{{% alert color="primary" %}}

**Spróbuj online**

Możesz wypróbować funkcję konwersji, korzystając z naszego [Darmowy konwerter online](https://products.aspose.app/words/conversion) narzędzie.

{{% /alert %}}

## Popularne Konwersje {#popular-conversions}

Bieżąca sekcja opisuje popularne konwersje, a także pomysły na pracę z niektórymi kombinacjami formatów podczas ładowania i zapisywania. Korzystając z przykładów tej sekcji, możesz zrozumieć, że sam proces konwersji jest dość uniwersalny i nie ma sensu opisywać wszystkich możliwych opcji, ponieważ jest ich kilkaset ze względu na dużą liczbę [formaty obsługiwane przez Aspose.Words dla C++](/words/cpp/supported-document-formats/).

{{% alert color="primary" %}}

Należy pamiętać, że poniżej znajdują się najpopularniejsze kombinacje konwersji i nie każda kombinacja jest powiązana z określoną stroną. Dzieje się tak, ponieważ nasze artykuły nie zawierają przykładów dla każdej pary konwersji – prawie wszystkie konwersje są dość podobne. Upewnij się o tym, studiując artykuły w bieżącej sekcji.

{{% /alert %}}

<div class="row">
	<div class="col-md-6">
		<h2>Konwertuj Word na PDF</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Konwertuj DOC na PDF</a></li>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Konwertuj DOCX na PDF</a></li>
				<li>i inni</li>
			</ul>
		<h2>Konwertuj obraz na PDF</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#convert-an-image-to-pdf">Konwertuj JPG na PDF</a></li>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#convert-an-image-to-pdf">Konwertuj TIFF na PDF</a></li>
				<li>i inni</li>
			</ul>
		<h2>Konwertuj formaty internetowe na PDF</h2>
			<ul>
				<li>Konwertuj Markdown na PDF</li>
				<li>Konwertuj HTML na PDF</li>
				<li>Konwertuj MHT (MHTML) na PDF</li>
				<li>i inni</li>
			</ul>
		<h2>Konwertuj inne formaty na PDF</h2>
			<ul>
				<li>Konwertuj RTF na PDF</li>
				<li>Konwertuj ODT na PDF</li>
				<li>Konwertuj TXT na PDF</li>
				<li>Konwertuj Mobi na PDF</li>
				<li>i inni</li>
			</ul>
	</div>
	<div class="col-md-6">
		<h2>Konwertuj dokument na obraz</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-an-image/">Konwertuj DOCX na JPG</a></li>
				<li>Konwertuj DOC na PNG</li>
				<li>i inni</li>
			</ul>
		<h2>Konwertuj dokument na Markdown</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-markdown/">Konwertuj dokument na Markdown</a></li>
				<li>Konwertuj HTML na Markdown</li>
				<li>i inni</li>
			</ul>
		<h2>Konwertuj dokument na HTML</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">Konwertuj Word na HTML</a></li>
				<li>Konwertuj Markdown na HTML</li>
				<li>Konwertuj Mobi na EPUB</li>
				<li>i inni</li>
			</ul>
		<h2>Inne Przykłady</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-mhtml-and-send-it-by-email/">Konwertuj dokument na MHTML i wyślij go e-mailem</a></li>
				<li>Konwertuj DOCX na DOC</li>
				<li>Konwertuj HTML na Word</li>
				<li>i inni</li>
			</ul>
	</div>
</div>
