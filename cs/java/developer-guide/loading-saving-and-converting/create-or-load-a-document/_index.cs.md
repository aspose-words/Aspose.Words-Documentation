---
title: Vytvořit nebo načíst dokument v Java
second_title: Aspose.Words místo Java
articleTitle: Vytvořit nebo načíst dokument
linktitle: Vytvořit nebo načíst dokument
type: docs
weight: 10
url: /cs/java/create-or-load-a-document/
description: "Aspose.Words umožňuje vytvořit prázdný dokument nebo jej načíst ze souboru nebo streamu pomocí Java."
---

Téměř jakýkoli úkol, který chcete vykonávat s Aspose.Words zahrnuje načtení dokumentu. The `Document` třída představuje dokument naložený do paměti. Dokument má několik přetížených konstruktérů, které vám umožní vytvořit prázdný dokument nebo jej načíst ze souboru nebo streamu. Dokument lze načíst v jakémkoli formátu zatížení podporovaném Aspose.Words. Seznam všech podporovaných formátů zatížení viz [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) výčtu.

## Vytvořit nový dokument {#create-a-new-document}

Zavoláme [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) konstruktor bez parametrů pro vytvoření nového prázdného dokumentu. Pokud chcete vytvořit dokument programově, nejjednodušší způsob je použít [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) třída pro přidání obsahu dokumentu.

Následující příklad kódu ukazuje, jak vytvořit dokument pomocí tvůrce dokumentů:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Všimněte si výchozích hodnot:

- prázdný dokument obsahuje jednu část s výchozími parametry, jeden prázdný odstavec, některé styly dokumentů. Ve skutečnosti je tento dokument stejný jako výsledek vytvoření nového dokumentu Microsoft Word.
- Velikost dokumentu je [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Načíst dokument

Načíst existující dokument v některé z [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) formáty, přeneste název souboru nebo proud do jednoho z konstruktérů dokumentu. Formát naloženého dokumentu je automaticky určen jeho rozšířením.

### Načíst ze souboru {#load-from-a-file}

Přeneste název souboru jako řetězec do konstruktéru dokumentu a otevřete existující dokument ze souboru.

Následující příklad kódu ukazuje, jak otevřít dokument ze souboru:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Načíst z proudu {#load-from-a-stream}

Chcete-li otevřít dokument z potoka, stačí předat objekt stream, který obsahuje dokument do konstruktéru dokumentu.

Následující příklad kódu ukazuje, jak otevřít dokument z potoka:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
