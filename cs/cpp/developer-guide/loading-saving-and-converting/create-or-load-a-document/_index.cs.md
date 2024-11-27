---
title: Vytvoření nebo načtení dokumentu v C++
second_title: Aspose.Words pro C++
articleTitle: Vytvoření nebo načtení dokumentu
linktitle: Vytvoření nebo načtení dokumentu
type: docs
description: "Vytvořte prázdný dokument nebo jej načtěte ze souboru nebo streamu pomocí C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /cs/cpp/create-or-load-a-document/
timestamp: 2024-01-27-14-07-04
---

Téměř každý úkol, který chcete provést pomocí Aspose.Words, zahrnuje načtení dokumentu. Třída `Document` představuje dokument načtený do paměti. Dokument má několik přetížených konstruktorů, které vám umožňují vytvořit prázdný dokument nebo jej načíst ze souboru nebo streamu. Dokument lze načíst v libovolném formátu zatížení podporovaném Aspose.Words. Seznam všech podporovaných formátů načítání viz výčet [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/).

## Vytvoření nového dokumentu {#create-a-new-document}

Zavoláme Konstruktor [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) bez parametrů, abychom vytvořili nový prázdný dokument. Pokud chcete dokument vygenerovat programově, nejjednodušším způsobem je přidat obsah dokumentu pomocí třídy [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder).

Následující příklad kódu ukazuje, jak vytvořit dokument pomocí nástroje pro tvorbu dokumentů:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

Všimněte si výchozích hodnot:

- Prázdný dokument obsahuje jednu sekci s výchozími parametry, jeden prázdný odstavec, některé styly dokumentů. Ve skutečnosti je tento dokument stejný jako výsledek vytvoření "nového dokumentu" v Microsoft Word.
- Velikost papíru dokumentu je [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Načíst dokument

Chcete-li načíst existující dokument v kterémkoli z formátů `LoadFormat`, předejte název souboru nebo stream do jednoho z konstruktorů dokumentu. Formát načteného dokumentu je automaticky určen jeho rozšířením.

### Načíst ze souboru {#load-from-a-file}

Předáním názvu souboru jako řetězce konstruktoru dokumentu otevřete existující dokument ze souboru.

Následující příklad kódu ukazuje, jak otevřít dokument ze souboru:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

Soubor šablony tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### Načíst ze Streamu {#load-from-a-stream}

Chcete-li otevřít dokument ze streamu, jednoduše předejte objekt streamu, který obsahuje dokument, do konstruktoru dokumentu.

Následující příklad kódu ukazuje, jak otevřít dokument ze streamu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

Soubor šablony tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
