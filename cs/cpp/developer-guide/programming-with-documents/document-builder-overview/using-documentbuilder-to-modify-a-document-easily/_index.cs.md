---
title: Použití DocumentBuilder pro snadnou úpravu dokumentu
second_title: Aspose.Words pro C++
articleTitle: Použití DocumentBuilder pro snadnou úpravu dokumentu
linktitle: Použití DocumentBuilder pro snadnou úpravu dokumentu
type: docs
description: "Pomocí nástroje pro tvorbu dokumentů můžete dokument snadno upravit v C++."
weight: 190
url: /cs/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## Určení Formátování

### Formátování Písma

Aktuální formátování písma je reprezentováno objektem `Font` vráceným vlastností `DocumentBuilder.Font`. Třída `Font` obsahuje širokou škálu vlastností písma možných v Microsoft Word. Níže uvedený příklad ukazuje, jak nastavit formátování písma.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### Formátování Odstavců

Formátování aktuálního odstavce je reprezentováno objektem `ParagraphFormat`, který je vrácen vlastností `DocumentBuilder.ParagraphFormat`. Tento objekt zapouzdřuje různé vlastnosti formátování odstavců dostupné v Microsoft Word. Formátování odstavce můžete snadno resetovat na výchozí na normální styl, zarovnaný doleva, bez odsazení, bez mezer, bez ohraničení a bez stínování voláním `ParagraphFormat.ClearFormatting`. Níže uvedený příklad ukazuje, jak nastavit formátování odstavce.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### Práce s asijskou typografií

#### Automatické nastavení mezery mezi asijským a latinským textem, čísly

Pokud navrhujete šablonu s východoasijským i latinským textem a chcete vylepšit vzhled šablony formuláře ovládáním mezer mezi oběma typy textu, můžete šablonu formuláře nakonfigurovat tak, aby automaticky upravovala mezery mezi těmito dvěma typy textu. K dosažení tohoto cíle můžete použít vlastnosti AddSpaceBetweenFarEastAndAlpha a AddSpaceBetweenFarEastAndDigit třídy ParagraphFormat.

Následující příklad kódu ukazuje, jak používat vlastnosti `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` a `ParagraphFormat.AddSpaceBetweenFarEastAndDigit`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Změňte asijské mezery a odsazení odstavců

Následující příklad kódu ukazuje, jak změnit asijské mezery a odsazení odstavců.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Nastavte Možnosti Zalomení Řádku

Asijská typografická karta `Paragraph` dialog vlastností v MS Word má skupinu zalomení řádku. Možnosti této skupiny lze nastavit pomocí FarEastLineBreakControl, WordWrap, HangingPunctuation Vlastnosti ParagraphFormat třídy. Příklad Below code ukazuje, jak tyto vlastnosti používat.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### Formátování Buněk

Formátování buněk se používá při vytváření tabulky. Je reprezentován `CellFormat` objektem vráceným vlastností `DocumentBuilder.CellFormat`. CellFormat zapouzdřuje různé vlastnosti buňky tabulky, jako je šířka nebo vertikální zarovnání. Níže uvedený příklad ukazuje, jak vytvořit tabulku, která obsahuje jednu formátovanou buňku.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### Formátování Řádků

Aktuální formátování řádků je určeno objektem `RowFormat`, který je vrácen vlastností `DocumentBuilder.RowFormat`. Objekt zapouzdří informace o veškerém formátování řádků tabulky. Níže uvedený příklad ukazuje, jak vytvořit tabulku obsahující jednu buňku a použít formátování řádků.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### Formátování Seznamu

Aspose.Words umožňuje snadné vytváření seznamů použitím formátování seznamu. DocumentBuilder poskytuje vlastnost `DocumentBuilder.ListFormat`, která vrací objekt `ListFormat`. Tento objekt má několik metod pro spuštění a ukončení seznamu a pro zvýšení / snížení odsazení. V Microsoft Word existují dva obecné typy seznamů: Odrážky a číslované.

- Chcete-li spustit seznam s odrážkami, zavolejte `ListFormat.ApplyBulletDefault`.
- Chcete-li spustit číslovaný seznam, zavolejte `ListFormat.ApplyNumberDefault`.

Odrážka nebo číslo a formátování jsou přidány do aktuálního odstavce a všech dalších odstavců vytvořených pomocí **DocumentBuilder**, dokud není zavoláno `ListFormat.RemoveNumbers`, aby se zastavilo formátování seznamu s odrážkami. V dokumentech Word se seznamy mohou skládat až z devíti úrovní. Formátování seznamu pro každou úroveň určuje, jaká odrážka nebo číslo se používá, levá odrážka, mezera mezi odrážkou a textem atd.

- Chcete-li zvýšit úroveň seznamu aktuálního odstavce o jednu úroveň, zavolejte `ListFormat.ListIndent`.
- Chcete-li snížit úroveň seznamu aktuálního odstavce o jednu úroveň, zavolejte `ListFormat.ListOutdent`.

Metody změní úroveň seznamu a použijí vlastnosti formátování Nové úrovně.

{{% alert color="primary" %}}

Můžete také použít vlastnost `ListFormat.ListLevelNumber` k získání nebo nastavení úrovně seznamu pro odstavec. Úrovně seznamu jsou očíslovány od 0 do 8.

{{% /alert %}}

Níže uvedený příklad ukazuje, jak vytvořit víceúrovňový seznam.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### Nastavení stránky a formátování sekcí

Nastavení stránky a vlastnosti sekce jsou zapouzdřeny v objektu `PageSetup`, který je vrácen vlastností `DocumentBuilder.PageSetup`. Objekt obsahuje všechny atributy nastavení stránky sekce (levý okraj, spodní okraj, velikost papíru atd.) jako vlastnosti. Níže uvedený příklad ukazuje, jak nastavit takové vlastnosti, jako je velikost stránky a orientace pro aktuální sekci.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### Použití stylu

Některé formátovací objekty, jako je Písmo nebo ParagraphFormat, podporují styly. Jeden vestavěný nebo uživatelem definovaný styl je reprezentován `Style` objektem, který obsahuje odpovídající vlastnosti stylu, jako je název, základní styl, formátování písma a odstavců stylu atd.

Objekt **Style** dále poskytuje vlastnost `Style.StyleIdentifier`, která vrací identifikátor stylu nezávislý na národním prostředí představovaný hodnotou výčtu **Style.StyleIdentifier**. Jde o to, že názvy vestavěných stylů v Microsoft Word jsou lokalizovány pro různé jazyky. Pomocí identifikátoru stylu můžete najít správný styl Bez ohledu na Jazyk dokumentu. Hodnoty výčtu odpovídají Microsoft Word vestavěným stylům, jako je Normal, Heading 1, Heading 2 atd. Všechny uživatelem definované styly jsou přiřazeny **StyleIdentifier.User value**. Níže uvedený příklad ukazuje, jak použít styl odstavce.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### Hranice a stínování

Hranice jsou reprezentovány BorderCollection. Toto je kolekce objektů ohraničení, ke kterým se přistupuje podle indexu nebo podle typu ohraničení. Typ ohraničení je reprezentován `BorderType` výčtem. Některé hodnoty výčtu jsou použitelné pro několik nebo pouze jeden prvek dokumentu. Například `BorderType.Bottom` je použitelný pro buňku odstavce nebo tabulky, zatímco `BorderType.DiagonalDown` určuje diagonální okraj pouze v buňce tabulky.

Kolekce ohraničení i každé samostatné ohraničení mají podobné atributy, jako je barva, styl čáry, šířka čáry, vzdálenost od textu a volitelný stín. Jsou reprezentovány vlastnostmi stejného jména. Kombinací hodnot vlastností můžete dosáhnout různých typů ohraničení. Objekty **BorderCollection** I **Border** navíc umožňují resetovat tyto hodnoty na výchozí voláním metody `Border.ClearFormatting`. Všimněte si, že při obnovení vlastností ohraničení na výchozí hodnoty je ohraničení neviditelné. Třída `Shading` obsahuje atributy stínování pro prvky dokumentu. Můžete nastavit požadovanou texturu stínování a barvy, které se použijí na pozadí a popředí prvku.

Textura stínování je nastavena s hodnotou výčtu `TextureIndex`, která umožňuje aplikaci různých vzorů na objekt **Shading**. Chcete-li například nastavit barvu pozadí pro prvek dokumentu, použijte hodnotu `TextureIndex.TextureSolid` a podle potřeby nastavte barvu stínování popředí. Níže uvedený příklad ukazuje, jak použít ohraničení a stínování na odstavec.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### Přichytit k mřížce

Aspose.Words poskytuje dvě vlastnosti `ParagraphFormat.SnapToGrid` a `Font.SnapToGrid` pro získání a nastavení vlastnosti odstavce přichytit na mřížku.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## Přesunutí kurzoru

### Detekce aktuální polohy kurzoru

Tam, kde je aktuálně umístěn kurzor stavitele, můžete kdykoli získat. Vlastnost `DocumentBuilder.CurrentNode` vrací uzel, který je aktuálně vybrán v tomto nástroji builder. Uzel je přímým potomkem odstavce. Všechny operace vložení, které provedete pomocí `DocumentBuilder`, se vloží před `DocumentBuilder.CurrentNode`. Když je aktuální odstavec prázdný nebo je kurzor umístěn těsně před koncem odstavce, `DocumentBuilder.CurrentNode` vrátí null.

Můžete také použít vlastnost `DocumentBuilder.CurrentParagraph`, která získá odstavec, který je aktuálně vybrán v tomto **DocumentBuilder**. Níže uvedený příklad ukazuje, jak přistupovat k aktuálnímu uzlu v nástroji pro tvorbu dokumentů. Zde si můžete stáhnout soubor šablony tohoto příkladu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### Přesun do libovolného uzlu (odstavce a jejich děti)

Pokud máte uzel objektu dokumentu, který je odstavcem nebo přímou podřízenou částí odstavce,můžete na tento uzel nasměrovat kurzor tvůrce. K tomu použijte metodu `DocumentBuilder.MoveTo`. Níže uvedený příklad ukazuje, jak přesunout pozici kurzoru na zadaný uzel. Zde si můžete stáhnout soubor šablony tohoto příkladu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### Přesun na začátek/konec dokumentu

Pokud potřebujete přejít na začátek dokumentu, zavolejte `DocumentBuilder.MoveToDocumentStart`. Pokud potřebujete přejít na konec dokumentu, zavolejte `DocumentBuilder.MoveToDocumentEnd`. Níže uvedený příklad ukazuje, jak přesunout pozici kurzoru na začátek nebo konec dokumentu. Zde si můžete stáhnout soubor šablony tohoto příkladu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Přesun do sekce

Pokud pracujete s dokumentem, který obsahuje více oddílů, můžete se přesunout do požadované sekce pomocí `DocumentBuilder.MoveToSection`. Tato metoda přesune kurzor na začátek zadané sekce a přijme index požadované sekce. Pokud je index sekce větší nebo roven 0, určuje index od začátku dokumentu, přičemž první oddíl je 0. Pokud je index sekce menší než 0, určuje index od konce dokumentu, přičemž -1 je poslední oddíl. Níže uvedený příklad ukazuje, jak přesunout pozici kurzoru do zadané sekce. Zde si můžete stáhnout soubor šablony tohoto příkladu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### Přechod na záhlaví / zápatí

Pokud potřebujete umístit některá data do záhlaví nebo zápatí, měli byste se tam nejprve přesunout pomocí `DocumentBuilder.MoveToHeaderFooter`. Metoda přijímá hodnotu výčtu HeaderFooterType, která identifikuje typ záhlaví nebo zápatí, kam má být kurzor přesunut. Pokud chcete vytvořit záhlaví a zápatí, které se liší pro první stránku, musíte nastavit vlastnost `PageSetup.DifferentFirstPageHeaderFooter` na **true**. Pokud chcete vytvořit záhlaví a zápatí, které se liší pro sudé a liché stránky, musíte nastavit `PageSetup.OddAndEvenPagesHeaderFooter` na **true**.

Pokud se potřebujete vrátit k hlavnímu příběhu, Použijte **DocumentBuilder.MoveToSection** k přesunu ze záhlaví nebo zápatí. Níže uvedený příklad vytvoří záhlaví a zápatí v dokumentu pomocí DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Přechod na odstavec

Pomocí `DocumentBuilder.MoveToParagraph` přesuňte kurzor na požadovaný odstavec v aktuální sekci. Této metodě byste měli předat dva parametry: paragraphIndex (index odstavce, na který se má přesunout) a characterIndex (index znaku uvnitř odstavce).

Navigace se provádí uvnitř aktuálního příběhu aktuální sekce. To znamená, že pokud jste přesunuli kurzor na primární záhlaví první sekce, pak paragraphIndex určuje index odstavce uvnitř této záhlaví této sekce.

Když paragraphIndex je větší nebo rovno 0, určuje index od začátku sekce, přičemž 0 je první odstavec. Když paragraphIndex je menší než 0, určuje index od konce sekce, přičemž -1 je poslední odstavec.

Index znaků lze v současné době zadat pouze jako 0 pro přesun na začátek odstavce nebo -1 pro přesun na konec odstavce. Níže uvedený příklad ukazuje, jak přesunout pozici kurzoru na zadaný odstavec. Zde si můžete stáhnout soubor šablony tohoto příkladu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### Přesun do buňky tabulky

Pokud potřebujete přesunout kurzor na buňku tabulky v aktuální sekci, použijte `DocumentBuilder.MoveToCell`. Tato metoda přijímá čtyři parametry:

- tableIndex - index tabulky, do které se má přesunout.
- rowIndex - index řádku v tabulce.
- columnIndex - index sloupce v tabulce.
- characterIndex - index znaku uvnitř buňky.

Navigace se provádí uvnitř aktuálního příběhu aktuální sekce. U parametrů indexu, když je index větší nebo roven 0, určuje index od začátku, přičemž prvním prvkem je 0. Když je index menší než 0, určuje index od konce, přičemž -1 je posledním prvkem.

Všimněte si také, že characterIndex v současné době může určit pouze 0 pro přesun na začátek buňky nebo -1 pro přesun na konec buňky. Níže uvedený příklad ukazuje, jak přesunout pozici kurzoru do určené buňky tabulky. Zde si můžete stáhnout soubor šablony tohoto příkladu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Přesun na záložku

Záložky se často používají k označení konkrétních míst v dokumentu, kam mají být vloženy nové prvky. Chcete-li přejít na záložku, použijte `DocumentBuilder.MoveToBookmark`. Tato metoda má dvě přetížení. Nejjednodušší nepřijímá nic jiného než název záložky, kam má být kurzor přesunut. Níže uvedený příklad ukazuje, jak přesunout pozici kurzoru na záložku. Zde si můžete stáhnout soubor šablony tohoto příkladu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

Toto přetížení přesune kurzor na pozici těsně po začátku záložky se zadaným názvem. Další přetížení `DocumentBuilder.MoveToBookmark` přesune kurzor na záložku s větší přesností. Přijímá dva další booleovské parametry:

- isStart určuje, zda se má kurzor přesunout na začátek nebo na konec záložky.
- isAfter určuje, zda přesunout kurzor za počáteční nebo koncovou pozici záložky, nebo přesunout kurzor před počáteční nebo koncovou pozici záložky.

Níže uvedený příklad ukazuje, jak přesunout pozici kurzoru těsně za koncem záložky.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

Srovnání obou metod není rozlišeno velkými a malými písmeny.

Vložení nového textu tímto způsobem nenahrazuje existující text záložky. Všimněte si, že některé záložky v dokumentu jsou přiřazeny k polím formuláře. Přesun na takovou záložku a vložení textu tam vloží text do kódu pole formuláře. I když to nezneplatní pole formuláře, vložený text nebude viditelný, protože se stane součástí kódu pole.

## Jak převést mezi měrnými jednotkami

Většina vlastností objektu uvedených v Aspose.Words API, které představují určité měření (šířka/výška, okraje a různé vzdálenosti), přijímá hodnoty v bodech (1 palec se rovná 72 bodům). Někdy to není vhodné, takže existuje třída `ConvertUtil`, která poskytuje pomocné funkce pro převod mezi různými měrnými jednotkami. Umožňuje převádět palce na body, body na palce, pixely na body a body na pixely. Když jsou pixely převedeny na body a naopak, lze to provést při rozlišení 96 dpi (bodů na palec) nebo při zadaném rozlišení dpi.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
