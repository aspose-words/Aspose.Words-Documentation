---
title: Použití `DocumentBuilder` Změnit dokument
second_title: Aspose.Words místo Java
articleTitle: Použití `DocumentBuilder` Změnit dokument
linktitle: Použití `DocumentBuilder` Změnit dokument
type: docs
description: "Pomocí stavitele dokumentů lze dokument snadno upravit v Java."
weight: 20
url: /cs/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Upřesňování formátování

### Formátování písma

Současné formátování písma představuje a `Font` objekt vrácený `DocumentBuilder.Font` majetek. The `Font` třída obsahuje širokou škálu vlastností písma možné v Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
Následující příklad kódu ukazuje, jak nastavit formátování písma.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Formátování buněk

Při stavbě stolu se používá formátování buněk. Je zastoupena `CellFormat` objekt vrácený `DocumentBuilder.CellFormat` majetek. CellFormat zapouzdřuje různé vlastnosti stolních buněk, jako je šířka nebo vertikální zarovnání.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
Následující příklad kódu ukazuje, jak vytvořit tabulku, která obsahuje jednu formátovanou buňku.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Formátování řádku

Současné formátování řádku se určuje pomocí a `RowFormat` objekt, který je vrácen `DocumentBuilder.RowFormat` majetek. Objekt zakrývá informace o formátování všech řádků tabulky.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
The below code příklad ukazuje, jak vytvořit tabulku, která obsahuje jednu buňku a použít formátování řádku.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Formátování seznamů

Aspose.Words umožňuje snadné vytváření seznamů pomocí formátování seznamu. DokumentBuilder poskytuje `DocumentBuilder.ListFormat` vlastnost, která vrací a `ListFormat` objekt. Tento objekt má několik metod ke spuštění a ukončení seznamu a ke zvýšení nebo snížení odrážky.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
Existují dva obecné typy seznamů v Microsoft WordZastřelen a sečten.

- Chcete-li začít seznam kulky, zavolejte [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Chcete-li začít číslovaný seznam, zavolejte [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

Kulka nebo číslo a formátování jsou přidány do současného odstavce a všechny další odstavce vytvořené pomocí **DocumentBuilder** až [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) se volá, aby zastavil formátování seznamu.

V dokumentech Word se seznamy mohou skládat až z devíti úrovní. Seznam formátování pro každou úroveň určuje, jaká kulka nebo číslo se používá, levá odrážka, prostor mezi kulkou a textem atd.

- Pro zvýšení úrovně seznamu aktuálního odstavce o jednu úroveň volejte [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- Pro snížení úrovně seznamu aktuálního odstavce o jednu úroveň volejte [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

Metody mění úroveň seznamu a uplatňují formátovací vlastnosti nové úrovně.

{{% alert color="primary" %}}

Můžete také použít [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) vlastnost získat nebo nastavit úroveň seznamu pro odstavec. Úroveň seznamu je 0 až 8.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vytvořit víceúrovňový seznam.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Nastavení stránky a formátování sekce

Nastavení stránky a vlastnosti sekce jsou zapouzdřeny v `PageSetup` objekt, který je vrácen `DocumentBuilder.PageSetup` majetek. Objekt obsahuje všechny atributy nastavení stránky sekce (levý okraj, dolní okraj, velikost papíru atd.) jako vlastnosti.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
Následující příklad kódu ukazuje, jak nastavit takové vlastnosti jako velikost stránky a orientaci pro aktuální sekci.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Použít styl

Některé formátování objektů, jako je písmo nebo odstavecFormat podpůrné styly. Jediný vestavěný nebo uživatelsky definovaný styl představuje `Style` objekt, který obsahuje odpovídající styl vlastnosti jako jméno, základní styl, písmo a paragraf formátování stylu, a tak dále.

Kromě toho **Style** objekt poskytuje [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) Vlastnost, která vrací identifikátor locale-nezávislého stylu zastoupený **Style.StyleIdentifier** hodnota výčtu. Jde o to, že názvy vestavěných stylů Microsoft Word jsou lokalizovány pro různé jazyky. Pomocí identifikátoru stylu můžete najít správný styl bez ohledu na jazyk dokumentu. Hodnoty výčtu odpovídají Microsoft Word vestavěné styly, jako je normální , okruh 1 , okruh 2 atd. Všechny uživatelské styly jsou přiřazeny **StyleIdentifier. Uživatelská hodnota**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
Následující příklad kódu ukazuje, jak použít odstavec styl.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Hranice a stínění

Hranice jsou reprezentovány borderColekce. Jedná se o sbírku hraničních objektů, které jsou přístupné podle indexu nebo typu hranice. Typ hranice představuje `BorderType` výčtu. Některé hodnoty výčtu se vztahují na několik nebo pouze jeden prvek dokumentu. Například, `BorderType.Bottom` je použitelná pro odstavec nebo tabulku, zatímco `BorderType.DiagonalDown` určuje diagonální hranici pouze v buňce tabulky.

Sbírka hranic i každá samostatná hranice mají podobné atributy jako barva, styl čáry, šířka čáry, vzdálenost od textu a volitelný stín. Jsou reprezentovány vlastnostmi stejného jména. Můžete dosáhnout různých typů hranic kombinací hodnot nemovitostí. Kromě toho obojí **BorderCollection** a **Border** objekty umožňují resetovat tyto hodnoty výchozí voláním [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) metoda. Všimněte si, že když jsou vlastnosti hranic resetovány na výchozí hodnoty, hranice je neviditelná.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
The [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) třída obsahuje stínovací atributy pro prvky dokumentu. Můžete nastavit požadovanou stínovací strukturu a barvy, které jsou aplikovány na pozadí a popředí prvku.

Stinná textura je nastavena na [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) hodnota výčtu, která umožňuje aplikaci různých vzorů na **Shading** objekt. Například pro nastavení barvy pozadí prvku dokumentu použijte [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) hodnota a nastavit barvu stínování popředí podle potřeby.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
Níže uvedený příklad ukazuje, jak uplatnit hranice a stínování na odstavec.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Snap to Grid

Aspose.Words poskytuje dvě vlastnosti `ParagraphFormat.SnapToGrid` a `Font.SnapToGrid` dostat a nastavit odstavec vlastnost snap na mřížku

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Přesunout kurzor

### Detekování současné pozice kurzoru

Můžete získat místo, kde je v současné době umístěn kurzor stavitele. The [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) vlastnost vrací uzel, který je v současné době vybrán v tomto staviteli. Uzel je přímým dítětem odstavce. Jakékoliv vkládání operací, které provádíte pomocí `DocumentBuilder` vloží se před `DocumentBuilder.CurrentNode`. Pokud je současný odstavec prázdný nebo je kurzor umístěn těsně před koncem odstavce, `DocumentBuilder.CurrentNode` vrací null.

Také můžete použít [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) vlastnost, která dostane odstavec, který je v současné době vybrán v tomto **DocumentBuilder**. The below code příklad ukazuje, jak přistupovat k aktuálnímu uzlu ve staviteli dokumentů.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Stěhování do jakéhokoliv uzlu (Paragrafy a jejich děti)

Pokud máte uzel objektu dokumentu, což je odstavec nebo přímé dítě odstavce, můžete nasměrovat kurzor stavitele na tento uzel. Použijte [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) způsob, jak to provést.
Následující příklad kódu ukazuje, jak přesunout kurzorovou pozici na zadaný uzel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Přechod na začátek/konec dokumentu

Pokud potřebujete přejít na začátek dokumentu, zavolejte [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Pokud potřebujete přejít na konec dokumentu, zavolejte [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Přesun do sekce

Pokud pracujete s dokumentem, který obsahuje více sekcí, můžete přejít do požadované sekce pomocí [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Tato metoda posune kurzor na začátek zadané části a přijme index požadované části. Je-li index sekce větší nebo roven 0, určuje index od začátku dokumentu, přičemž 0 je první oddíl. Je-li index sekce menší než 0, určuje index od konce dokumentu, přičemž -1 je poslední část. The below code příklad ukazuje, jak přesunout pozici kurzoru do zadané části. Můžete si stáhnout soubor šablony tohoto příkladu z [Tady](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Přesun na hlavičku/footer

Když potřebujete umístit nějaká data do hlavičky nebo zápatí, měli byste se tam pohybovat nejprve pomocí [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int). Metoda přijímá hodnotu výčtu záhlavíFooterType, která určuje typ hlavičky nebo zápatí, kam by měl být kurzor přesunut.

Pokud chcete vytvořit hlavičky a zápatí, které jsou odlišné pro první stránku, musíte nastavit [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) majetek **true**. Pokud chcete vytvořit hlavičky a zápatí, které jsou odlišné pro sudé a liché stránky, musíte nastavit [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) až **true**.

Pokud se potřebujete vrátit k hlavnímu příběhu, použijte[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) vyjít z hlavičky nebo zápatí. Níže uvedený příklad vytvoří hlavičky a zápatí v dokumentu pomocí DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Přechod k odstavci

Použití[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) přesunout kurzor na požadovaný odstavec v aktuální části. Měli byste předat dva parametry této metody: paragraphIndex (index odstavce přesunout na) a znakIndex (index znaku uvnitř odstavce).

Navigace se provádí uvnitř aktuálního příběhu aktuální sekce. Pokud jste kurzor přesunuli do hlavní hlavičky první části, pak odstavecIndex určuje index odstavce uvnitř této hlavičky této části.

Pokud je odstavecIndex větší nebo roven 0, určuje index od začátku oddílu, přičemž 0 je první odstavec. Pokud je odstavecIndex menší než 0, určuje index od konce oddílu, přičemž -1 je poslední odstavec. Index znaků může být v současné době specifikován pouze jako 0, aby se posunul na začátek odstavce nebo -1 k posunu na konec odstavce. Následující příklad kódu ukazuje, jak přesunout polohu kurzoru do uvedeného odstavce. Můžete si stáhnout soubor šablony tohoto příkladu z [Tady](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Přesun do stolní buňky

Použití [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) Pokud potřebujete přesunout kurzor do buňky tabulky v aktuální sekci. Tato metoda přijímá čtyři parametry:

- tableIndex - index tabulky k přesunu.
- rowIndex - index řádku v tabulce.
- sloupecIndex - index sloupce v tabulce.
- znakIndex - index znaku uvnitř buňky.

Navigace se provádí v aktuálním příběhu aktuální sekce.

Pro parametry indexu, je-li index větší nebo roven 0, určuje index od začátku s 0 je první prvek. Pokud je index menší než 0, určuje index od konce, přičemž -1 je poslední prvek.

Také, všimněte si, že znakIndex v současné době může určit pouze 0 přesunout na začátek buňky nebo -1 přesunout na konec buňky. Následující příklad kódu ukazuje, jak přesunout kurzorovou pozici do zadané buňky tabulky. Můžete si stáhnout soubor šablony tohoto příkladu z [Tady](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Přesun do záložky

Záložky se často používají k označení určitých míst v dokumentu, kde mají být vloženy nové prvky. Přejít do záložky, použít [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Tato metoda má dvě přetížení. Nejjednodušší z nich nepřijímá nic jiného než jméno záložky, kde má být kurzor přesunut. Následující příklad kódu ukazuje, jak přesunout kurzorovou pozici do záložky.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Toto přetížení posune kurzor na pozici těsně po začátku záložky s uvedeným názvem. Další přetížení. [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) přesune kurzor do záložky s větší přesností. Přijímá dva další booleovské parametry:

- isStart určuje, zda přesunout kurzor na začátek nebo na konec záložky.
- isPo rozhodnutí, zda přesunout kurzor po spuštění nebo ukončení záložky, nebo přesunout kurzor před spuštěním nebo koncem záložky.

Následující příklad kódu ukazuje, jak přesunout kurzorovou pozici těsně po skončení záložky.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Vložení nového textu tímto způsobem nenahrazuje stávající text záložky. Všimněte si, že některé záložky v dokumentu jsou přiřazeny k vytvoření polí. Přechod do takové záložky a vložení textu tam vloží text do kódu pole formuláře. I když to nebude rušit pole formuláře, vložený text nebude viditelný, protože se stane součástí kódu pole.

### Přesun do `Merge` Pole

Někdy budete muset provést "ruční" Mail Merge podání `DocumentBuilder` nebo vyplnit pole sloučení zvláštním způsobem uvnitř Mail Merge Správce akcí. Tehdy [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) Mohlo by to být užitečné. Metoda přijímá název pole sloučení. Přesune kurzor do polohy těsně za zadaným polem sloučení a odstraní pole sloučení. Následující příklad kódu ukazuje, jak přesunout kurzor do polohy těsně za zadaným polem sloučení.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Jak převést mezi měřicími jednotkami

Většina vlastností objektu uvedených v Aspose.Words API které představuje některá měření (šířka/výška, okraje a různé vzdálenosti) přijímají hodnoty v bodech (1 palec = 72 bodů). Někdy to není vhodné, takže tam je `ConvertUtil` třída, která poskytuje pomocné funkce pro převod mezi různými měřicími jednotkami. Umožňuje převést palce na body, body na palce, pixely na body a body na pixely. Když jsou pixely převedeny na body a naopak, lze je provádět při 96 rozlišeních dpi (tečky na palec) nebo při zadaném rozlišení dpi.

**ConvertUtil** je velmi užitečné při nastavení různých vlastností stránky, protože například palce jsou více obvyklé měřicí jednotky než body. Následující příklad ukazuje, jak nastavit vlastnosti stránky v palcích.

Následující příklad kódu ukazuje, jak zadat vlastnosti stránky v palcích.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
