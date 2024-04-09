---
title: Vytvořit nebo načíst dokument v C#
second_title: Aspose.Words místo .NET
articleTitle: Vytvořit nebo načíst dokument
linktitle: Vytvořit nebo načíst dokument
type: docs
url: /cs/net/create-or-load-a-document/
description: "Vytvořit prázdný dokument nebo jej načíst ze souboru nebo streamu pomocí C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

Téměř jakýkoli úkol, který chcete vykonávat s Aspose.Words zahrnuje načtení dokumentu. • `Document` třída představuje dokument naložený do paměti. Dokument má několik přetížených konstruktérů, které vám umožní vytvořit prázdný dokument nebo jej načíst ze souboru nebo streamu. Dokument lze načíst v jakémkoli formátu zatížení podporovaném Aspose.Words. Seznam všech podporovaných formátů zatížení viz [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) výčtu.

## Vytvořit nový dokument {#create-a-new-document}

Zavoláme [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) konstruktor bez parametrů pro vytvoření nového prázdného dokumentu. Pokud chcete vytvořit dokument programově, nejjednodušší způsob je použít [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) třída pro přidání obsahu dokumentu.

Následující příklad kódu ukazuje, jak vytvořit dokument pomocí tvůrce dokumentů:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

Všimněte si výchozích hodnot:

- prázdný dokument obsahuje jednu část s výchozími parametry, jeden prázdný odstavec, některé styly dokumentu. Tento dokument je vlastně stejný jako výsledek vytvoření nového dokumentu Microsoft Word.
- Velikost dokumentu je [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Načíst dokument {#load-a-document}

Načíst existující dokument v některé z [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) formáty, přeneste název souboru nebo proud do jednoho z konstruktérů dokumentu. Formát naloženého dokumentu je automaticky určen jeho rozšířením.

### Načíst ze souboru {#load-from-a-file}

Přeneste název souboru jako řetězec konstruktoru dokumentu k otevření existujícího dokumentu ze souboru.

Následující příklad kódu ukazuje, jak otevřít dokument ze souboru:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### Načíst z proudu {#load-from-a-stream}

Chcete-li otevřít dokument z potoka, stačí předat objekt stream, který obsahuje dokument do konstruktéru dokumentu.

Následující příklad kódu ukazuje, jak otevřít dokument z potoka:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
