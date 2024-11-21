---
title: Práce se záložkami v C#
second_title: Aspose.Words místo .NET
articleTitle: Práce se záložkami
linktitle: Práce se záložkami
description: "Pochopení konceptů záložky a jak lze použít záložku ve vašem programu pomocí C#."
type: docs
weight: 180
url: /cs/net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Záložky identifikovat v Microsoft Word dokumentovat místa nebo fragmenty, které jmenujete a identifikovat pro budoucí odkaz. Například můžete použít záložku k identifikaci textu, který chcete později revidovat. Místo procházení dokumentem k nalezení textu, můžete k němu přejít pomocí dialogového okna Záložka.

Akce, které lze provádět pomocí záložek Aspose.Words jsou stejné jako ty, které můžete provádět pomocí Microsoft Word. Můžete vložit novou záložku, vymazat, přesunout se do záložky, získat nebo nastavit název záložky, získat nebo nastavit text připojený v ní.

## Vložit záložku

Použití [StartBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/startbookmark/) a [EndBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endbookmark/) vytvořit záložku značením jejího startu a konce, resp. Nezapomeňte předat stejný název záložky oběma metodám. Záložky v dokumentu se mohou překrývat a rozšířit libovolný rozsah. Špatně vytvořené záložky nebo záložky s duplikátními jmény budou při uložení dokumentu ignorovány.

{{% alert color="primary" %}}

Všechny bílé prostory v záložek byly nahrazeny podtržítky. Toto omezení pochází z Microsoft Word formáty, protože záložky ve formátech Word jako DOCX nebo DOC nemohou mít bílé prostory. PDF však takové záložky umožňuje. Takže teď, pokud potřebujete použít záložky v PDF nebo XPS obrysy, můžete je použít s bílými prostory.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vytvořit novou záložku:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## Získat záložky

Někdy je nutné získat sbírku záložek pro iteraci prostřednictvím záložek nebo pro jiné účely. Použijte [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) vlastnost exponovaná jakýmkoliv uzelem dokumentu, který vrací a [Range](https://reference.aspose.com/words/net/aspose.words/range/) předmět představující část dokumentu obsaženého v tomto uzlu. Pomocí tohoto objektu získat [BookmarkCollection](https://reference.aspose.com/words/net/aspose.words/bookmarkcollection/) a pak použít indexer sbírky získat konkrétní záložku.

Následující příklad kódu ukazuje, jak získat záložky ze sbírky záložek:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}


Následující příklad kódu ukazuje, jak získat nebo nastavit název záložky a text:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Následující příklad kódu ukazuje, jak záložka tabulky:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

Pokud změníte název záložky na jméno, které již existuje v dokumentu, žádná chyba nebude generována a při uložení dokumentu bude uložena pouze první záložka.

Všimněte si, že některé záložky v dokumentu jsou přiřazeny k vytvoření polí. Přesun do takové záložky a vložení textu tam vloží text do kódu pole formuláře. I když to nebude neplatné pole formuláře, vložený text nebude viditelný, protože se stane součástí kódu pole.

Následující příklad kódu ukazuje, jak přistupovat ke sloupcům záložky tabulky:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## Přesunout se do záložky

Pokud potřebujete vložit bohatý obsah (nejen prostý text) do záložky, měli byste použít [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/) přesunout kurzor do záložky a poté použít [DocumentBuilder's](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) metody a vlastnosti pro vložení obsahu.

## Zobrazit obsah záložky

Celá Záložka (* včetně obsahu záložek*) může být zapouzdřena v části True `IF` použití pole Aspose.Words. Může to být takovým způsobem, že `IF` pole obsahuje vnořené pole sloučení ve výrazu (*Left of Operator*) a v závislosti na hodnotě pole sloučení `IF` pole zobrazuje nebo skrývá obsah záložky ve Word Document.

Následující příklad kódu ukazuje, jak zobrazit/ skrýt záložky:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}
