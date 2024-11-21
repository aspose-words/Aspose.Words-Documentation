---
title: Práce se záložky v Java
second_title: Aspose.Words místo Java
articleTitle: Práce se záložkami
linktitle: Práce se záložkami
description: "Pochopení konceptů záložky a jak lze použít záložku ve vašem programu pomocí Java."
type: docs
weight: 180
url: /cs/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Záložky identifikovat v Microsoft Word dokumentovat místa nebo fragmenty, které jmenujete a identifikovat pro budoucí odkaz. Například můžete použít záložku k identifikaci textu, který chcete později revidovat. Místo procházení dokumentem k nalezení textu můžete přejít k němu pomocí dialogového okna Záložka.

S Aspose.Words, můžete použít záložky ve zprávách nebo dokumentech pro vložení některých dat do záložky nebo použít speciální formátování na její obsah. Můžete také použít záložky pro získání textu z určitého místa ve vašem dokumentu.

Akce, které lze provádět pomocí záložek Aspose.Words jsou stejné jako ty, které můžete provádět pomocí Microsoft Word. Můžete vložit novou záložku, vymazat, přesunout se do záložky, získat nebo nastavit název záložky, získat nebo nastavit text připojený v ní.

## Vložit záložku

Použití [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) a [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) vytvořit záložku tím, že označí její začátek a konec, resp. Nezapomeňte předat stejný název záložky oběma metodám. Záložky v dokumentu se mohou překrývat a rozšířit libovolný rozsah. Špatně vytvořené záložky nebo záložky s duplikátními jmény budou při uložení dokumentu ignorovány.

{{% alert color="primary" %}}

Všechny bílé prostory v záložek byly nahrazeny podtržkami. Toto omezení pochází z formátů MS Word, protože záložky ve formátech MS Word, jako je DOCX nebo DOC, nemohou mít bílé prostory. Nicméně, PDF umožňuje takové záložky. Takže teď, pokud potřebujete použít záložky v PDF, XPS nebo SWF obrysy, můžete je použít s bílými prostory.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vytvořit novou záložku:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Získat záložky

Někdy je nutné získat sbírku záložek pro iteraci prostřednictvím záložek nebo pro jiné účely. Použijte **Uzel.getRange** vlastnost exponovaná jakýmkoliv uzelem dokumentu, který vrací a **Range** předmět představující část dokumentu obsaženého v tomto uzlu. Pomocí tohoto objektu získat **BookmarkCollection** a pak použít indexer sbírky získat konkrétní záložku.

{{% alert color="primary" %}}

Můžete si stáhnout ukázkový soubor následujících příkladů z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Následující příklad kódu ukazuje, jak získat záložky ze sbírky záložek:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

Následující příklad kódu ukazuje, jak získat nebo nastavit název záložky a text:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

Následující příklad kódu ukazuje, jak záložka tabulky:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Pokud změníte název záložky na jméno, které již existuje v dokumentu, žádná chyba nebude generována a při uložení dokumentu bude uložena pouze první záložka.

Všimněte si, že některé záložky v dokumentu jsou přiřazeny k vytvoření polí. Přechod do takové záložky a vložení textu tam vloží text do kódu pole formuláře. I když to nebude rušit pole formuláře, vložený text nebude viditelný, protože se stane součástí kódu pole.

Následující příklad kódu ukazuje, jak přistupovat ke sloupcům záložky tabulky:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Přesunout do záložky

Pokud potřebujete vložit bohatý obsah (nejen prostý text) do záložky, měli byste použít [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) přesunout kurzor do záložky a pak použít **DocumentBuilder** metody a vlastnosti pro vložení obsahu.

## Zobrazit obsah záložky

Celá Záložka (* včetně záložky obsahu*) může být zapouzdřena v části True `IF` použití pole Aspose.Words. Může to být takovým způsobem, že `IF` pole obsahuje vnořené pole sloučení ve výrazu (*Left of Operator*) a v závislosti na hodnotě pole sloučení `IF` pole zobrazuje nebo skrývá obsah záložky ve Word Document.

Následující příklad kódu ukazuje, jak zobrazit/ skrýt záložky.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
