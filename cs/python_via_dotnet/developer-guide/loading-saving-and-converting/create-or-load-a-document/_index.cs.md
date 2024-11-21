---
title: Vytvořit nebo načíst dokument v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Vytvořit nebo načíst dokument
linktitle: Vytvořit nebo načíst dokument
type: docs
url: /cs/python-net/create-or-load-a-document/
description: "Vytvořit prázdný dokument nebo jej načíst ze souboru nebo streamu pomocí Python."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
timestamp: 2024-01-27-14-07-04
---

Téměř jakýkoli úkol, který chcete vykonávat s Aspose.Words zahrnuje načtení dokumentu. • [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) třída představuje dokument naložený do paměti. Dokument má několik přetížených konstruktérů, které vám umožní vytvořit prázdný dokument nebo jej načíst ze souboru nebo streamu. Dokument lze načíst v jakémkoli formátu zatížení podporovaném Aspose.Words. Seznam všech podporovaných formátů zatížení viz [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) výčtu.

## Vytvořit nový dokument

Zavoláme [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) konstruktor bez parametrů pro vytvoření nového prázdného dokumentu. Pokud chcete vytvořit dokument programově, nejjednodušší způsob je použít [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) třída pro přidání obsahu dokumentu.

Následující příklad kódu ukazuje, jak vytvořit dokument pomocí tvůrce dokumentů:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Všimněte si výchozích hodnot:

- prázdný dokument obsahuje jednu část s výchozími parametry, jeden prázdný odstavec, některé styly dokumentu. Tento dokument je vlastně stejný jako výsledek vytvoření nového dokumentu Microsoft Word.
- Velikost dokumentu je [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## Načíst dokument

Načíst existující dokument v některé z [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) formáty, přeneste název souboru nebo proud do jednoho z [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Konstruktéři. Formát naloženého dokumentu je automaticky určen jeho rozšířením.

### Načíst ze souboru

Přeneste název souboru jako řetězec do [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) konstruktor otevře existující dokument ze souboru.

Následující příklad kódu ukazuje, jak otevřít dokument ze souboru:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### Načíst z proudu

Pro otevření dokumentu z potoka stačí předat objekt streamu, který obsahuje dokument do [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Konstruktér.

Následující příklad kódu ukazuje, jak otevřít dokument z potoka:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
