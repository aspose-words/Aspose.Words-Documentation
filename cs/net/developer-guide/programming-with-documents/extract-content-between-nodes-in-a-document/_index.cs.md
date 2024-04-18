---
title: Jak extrahovat obsah mezi uzely dokumentu
second_title: Aspose.Words místo .NET
articleTitle: Obsah výpisu mezi uzely v dokumentu
linktitle: Obsah výpisu mezi uzely
description: "Extrahování obsahu dokumentu v jiném použití C#."
type: docs
weight: 140
url: /cs/net/how-to-extract-selected-content-between-nodes-in-a-document/
---

Při práci s dokumenty je důležité být schopen snadno extrahovat obsah z určitého rozsahu v dokumentu. Obsah se však může skládat ze složitých prvků, jako jsou odstavce, tabulky, obrázky atd.

Bez ohledu na to, jaký obsah je třeba extrahovat, bude metoda extrahování tohoto obsahu vždy určena tím, které uzly jsou vybrány pro extrahování obsahu mezi. Mohou to být celé textové těla nebo jednoduché textové runy.

Existuje mnoho možných situací, a proto mnoho různých typů uzlů zvážit při získávání obsahu. Například, možná budete chtít extrahovat obsah mezi:

- Dva konkrétní odstavce
- Specifické průběhy textu
- Pole různých typů, jako například pole sloučení
- Spustit a ukončit rozsah záložky nebo komentář
- Různé části textu obsažené v oddělených sekcích

V některých situacích můžete dokonce potřebovat kombinovat různé typy uzlů, jako je například získávání obsahu mezi odstavcem a polem, nebo mezi spuštěním a záložkou.

Tento článek poskytuje implementaci kódu pro získávání textu mezi různými uzly, stejně jako příklady běžných scénářů.

{{% alert color="primary" %}}

Tyto příklady jsou jen několika ukázkami mnoha možností. Plánujeme, aby funkce extrakce textu byla součástí veřejnosti API v budoucnu a žádný další kód nebude nutný. Mezitím, neváhejte umístit své požadavky týkající se této funkce na [Aspose.Words fórum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Proč obsah výpisu

Často je cílem výpisu obsahu duplikovat nebo uložit samostatně v novém dokumentu. Například můžete extrahovat obsah a:

- Zkopírujte to do samostatného dokumentu
- Převést určitou část dokumentu na PDF nebo obrázek
- Duplikovat obsah v dokumentu mnohokrát
- Práce s extrahovaným obsahem odděleně od zbytku dokumentu

Toho lze snadno dosáhnout použitím Aspose.Words a provádění kódu níže.

## Extrakční obsah Algoritmus

Kód v tomto oddíle řeší všechny výše popsané možné situace jednou zobecněnou a opakovaněnou metodou. Obecný přehled této techniky zahrnuje:

1. Shromažďování uzlů, které diktují obsah, který bude extrahován z vašeho dokumentu. Získávání těchto uzlů je řízeno uživatelem v jejich kódu, na základě toho, co chtějí být extrahovány.
1. Předání těchto uzlů **ExtractContent** metoda uvedená níže. Musíte také projít boolean parametr, který uvádí, zda tyto uzly, působící jako markery, by měly být zahrnuty do extrakce nebo ne.
1. Získávání seznamu klonovaného obsahu (kopírovaných uzlů), který má být extrahován. Tento seznam uzlů můžete použít jakýmkoliv způsobem, například vytvoření nového dokumentu obsahujícího pouze vybraný obsah.

## Jak extrahovat obsah

Chcete-li získat obsah z vašeho dokumentu musíte volat **ExtractContent** metoda níže a předat příslušné parametry. Základem této metody je nalezení uzlů na úrovni bloků (odstavce a tabulky) a jejich klonování k vytvoření stejných kopií. Pokud jsou prošlé značkovací uzly blokovou úrovní, pak je metoda schopna obsah na této úrovni jednoduše zkopírovat a přidat do pole.

Pokud jsou však markerové uzly inline (dítě odstavce) pak se situace stává složitější, protože je nutné rozdělit odstavec v inline uzlu, ať už je to run, záložková pole atd. Obsah klonovaných mateřských uzlů, které nejsou mezi markery přítomny, se odstraní. Tento proces se používá k zajištění toho, aby inline uzly stále zachovaly formátování základního odstavce. Metoda bude také provádět kontroly uzlů, které prošly jako parametry, a hodit výjimku, pokud je buď uzel neplatný. Parametry, které mají být předány této metodě, jsou:

1. **StartNode** a **EndNode**. Prvními dvěma parametry jsou uzly, které definují, kde má být extrakce obsahu zahájena, resp. skončit. Tyto uzly mohou být oba blok úrovně ([Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) , [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)) nebo inline úroveň (např. [Run](https://reference.aspose.com/words/net/aspose.words/run/) , [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) , [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkstart/) atd.:
   1. Chcete-li projít pole byste měli projít odpovídající **FieldStart** objekt
   1. Chcete-li projít záložky, **BookmarkStart** a [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkend/) Uzel by měl být předán
   1. Chcete-li předat připomínky, [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) a [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) Je třeba použít uzly
1. **IsInclusive**. Určuje, zda jsou značky zahrnuty do extrakce nebo nikoli. Pokud je tato volba nastavena false a projdou stejným uzlem nebo po sobě jdoucími uzly, poté bude vrácen prázdný seznam:
   1. Pokud a **FieldStart** Uzel je schválen a tato volba definuje, zda má být celé pole zahrnuto nebo vyloučeno
   1. Pokud a **BookmarkStart** nebo **BookmarkEnd** Uzel je předán, tato volba definuje, zda je záložka zahrnuta nebo pouze obsah mezi záložek rozsah.
   1. Pokud a **CommentRangeStart** nebo **CommentRangeEnd** Uzel je předán, tato volba definuje, zda má být komentář sám o sobě zahrnut nebo pouze obsah v rozsahu komentáře.

Provádění **ExtractContent** metoda, kterou můžete najít [n Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.cs). Tato metoda bude uvedena ve scénářích uvedených v tomto článku.

Budeme také definovat vlastní metodu snadno generovat dokument z extrahovaných uzlů. Tato metoda se používá v mnoha níže uvedených scénářích a jednoduše vytváří nový dokument a do něj dováží extrahovaný obsah.

Následující příklad kódu ukazuje, jak vzít seznam uzlů a vloží je do nového dokumentu:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "generate-document.cs" >}}

## Obsah výpisu mezi odstavci

To ukazuje, jak použít výše uvedenou metodu k získání obsahu mezi konkrétními odstavci. V tomto případě chceme získat tělo dopisu nalezeného v první polovině dokumentu. Můžeme říci, že to je mezi 7. a 11. odstavec.

Tento úkol plní následující kód. Příslušné odstavce jsou extrahovány pomocí [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/) metoda na dokumentu a předávání stanovených indexů. Pak předáme tyto uzly do **ExtractContent** metoda a uvést, že jsou zahrnuty do extrakce. Tato metoda vrátí zkopírovaný obsah mezi tyto uzly, které jsou pak vloženy do nového dokumentu.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi konkrétními odstavci pomocí `ExtractContent` metoda výše:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraphs.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Obsah výpisu mezi různými typy uzlů

Můžeme extrahovat obsah mezi libovolnými kombinacemi úrovně bloku nebo inline uzlů. V tomto scénáři níže budeme extrahovat obsah mezi prvním odstavcem a tabulkou v druhé části včetně. Získáme markery uzlů voláním [FirstParagraph](https://reference.aspose.com/words/net/aspose.words/story/firstparagraph/) a [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/getchild/) metody druhého oddílu dokumentu pro získání vhodného **Paragraph** a **Table** uzly. Pro malou variaci nechť místo toho zdvojí obsah a vloží jej pod originál.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi odstavcem a tabulkou pomocí **ExtractContent** metoda:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-block-level-nodes.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Obsah výpisu mezi odstavci Na základě stylu

Možná budete muset extrahovat obsah mezi odstavci stejného nebo odlišného stylu, například mezi odstavci označenými stylem záhlaví. Níže uvedený kód ukazuje, jak toho dosáhnout. Jedná se o jednoduchý příklad, který bude extrahovat obsah mezi prvními stupni ¶Heading 1¶ a ¶Header 3¶ styly, aniž by také extrahoval položky. K tomu nastavíme poslední parametr na false, která stanoví, že by neměly být zahrnuty značky.

Ve správném provedení by se to mělo spustit ve smyčce k získání obsahu mezi všemi odstavci těchto stylů z dokumentu. Extrahovaný obsah je zkopírován do nového dokumentu.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi odstavci se specifickými styly pomocí **ExtractContent** metoda:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraph-styles.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "paragraphs-by-style-name.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Obsah výpisu mezi konkrétními výsledky

Můžete extrahovat obsah mezi inline uzly, jako je [Run](https://reference.aspose.com/words/net/aspose.words/run/) Taky. **Runs** z různých odstavců lze předat jako markery. Níže uvedený kód ukazuje, jak extrahovat konkrétní text mezi stejným **Paragraph** Uzel.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi konkrétními kroky téhož odstavce pomocí **ExtractContent** metoda:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-runs.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Obsah výpisu pomocí pole

K použití pole jako značky, `FieldStart` Uzel by měl být předán. Poslední parametr k `ExtractContent` metoda definuje, zda má být celé pole zahrnuto nebo nikoli. Nechť extrahují obsah mezi polem sloučení FullName a odstavcem v dokumentu. Používáme [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/) způsob [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) třída. Tohle vrátí **FieldStart** Uzel z názvu pole sloučení přešel na něj.

V našem případě nechte nastavit poslední parametr, který byl předán **ExtractContent** metoda k false vyloučit pole z těžby. Získáme extrahovaný obsah do PDF.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi konkrétním polem a odstavcem v dokumentu pomocí **ExtractContent** metoda:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-field.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extrahovat obsah ze záložky

V dokumentu je obsah definovaný v záložce zapouzdřen `BookmarkStart` a záložekEnd uzly. Obsah nalezený mezi těmito dvěma uzly tvoří záložku. Můžete předat některý z těchto uzlů jako jakýkoli marker, a to i ty z různých záložek, pokud se počáteční značka objeví před koncovou značkou v dokumentu. Tento obsah budeme extrahovat do nového dokumentu pomocí níže uvedeného kódu. • **IsInclusive** volba parametru ukazuje, jak záložku uchovávat nebo vyřadit.

Následující příklad kódu ukazuje, jak extrahovat obsah odkazovaný na záložku pomocí **ExtractContent** metoda:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-bookmark.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Obsah výpisu z komentáře

Komentář se skládá z KomentářRangeStart, KomentářRangeEnd a Komentář uzly. Všechny tyto uzly jsou inline. První dva uzly zapoutají obsah v dokumentu, na který odkazuje komentář, jak je vidět v screenshotu níže.

• **Comment** Uzel samotný je [InlineStory](https://reference.aspose.com/words/net/aspose.words/inlinestory/) který může obsahovat odstavce a běží. Představuje poselství komentáře, jak je vnímáno jako bublina komentáře v přehledové tabuli. Protože tento uzel je inline a potomek těla můžete také extrahovat obsah zevnitř této zprávy.

V komentáři je uveden nadpis, první odstavec a tabulka ve druhém oddíle. Nechť tuto poznámku extrahují do nového dokumentu. • **IsInclusive** možnost diktuje, zda je komentář sám o sobě zachován nebo vyřazen.

Následující příklad kódu ukazuje, jak to udělat:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-comment-range.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Jak extrahovat obsah pomocí aplikace DocumentVisitor

Použijte [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) třída k provedení tohoto scénáře využití. Tato třída odpovídá známému designu návštěvníka. S **DocumentVisitor** **,** můžete definovat a provádět vlastní operace, které vyžadují počet nad stromem dokumentu.

**DocumentVisitor** poskytuje soubor **VisitXXX** metody, které se používají, pokud se nachází určitý dokumentový prvek (noda). Například: [VisitParagraphStart](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphstart/) se volá, když se najde začátek textového odstavce a [VisitParagraphEnd](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphend/) volá, když je nalezen konec textového odstavce. Každý **DocumentVisitor.VisitXXX** metoda přijímá odpovídající objekt, se kterým se setká, takže jej můžete použít podle potřeby (řekněme načíst formátování), např. obojí **DocumentVisitor.VisitParagraphStart** a **DocumentVisitor.VisitParagraphEnd** přijmout [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) objekt.

Každý **DocumentVisitor.VisitXXX** metoda vrací a [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) hodnota, která kontroluje počet uzlů. Můžete požádat buď pokračovat v výčtu, přeskočit aktuální uzel (ale pokračovat v výčtu), nebo zastavit počet uzlů.

To jsou kroky, které byste měli sledovat programově určit a extrahovat různé části dokumentu:

- Vytvořit třídu odvozenou od **DocumentVisitor**
- Ovládnout a zajistit provádění pro některé nebo všechny **DocumentVisitor.VisitXXX** metody provádění některých vlastních operací
- Dorovnávám. [Node.Accept](https://reference.aspose.com/words/net/aspose.words/node/accept/) na nódu, kde chcete začít s vyjmenováváním, například pokud chcete vyčíslit celý dokument, použijte [Document.Accept](https://reference.aspose.com/words/net/aspose.words/document/accept/)

**DocumentVisitor** poskytuje výchozí implementace pro všechny **DocumentVisitor.VisitXXX** metody. Díky tomu je snazší vytvořit nové návštěvníky dokumentů, protože pouze metody potřebné pro konkrétního návštěvníka je třeba přepsat. Není nutné překračovat všechny metody návštěvníků.

Následující příklad ukazuje, jak použít vzor Návštěvníka k přidání nových operací do Aspose.Words model objektu. V tomto případě vytvoříme jednoduchý konvertor dokumentu do textového formátu:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-document-visitor.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "convert-doc-to-txt.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Jak extrahovat pouze text

Způsoby, jak získat text z dokumentu jsou:

- Použít [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/) s [SaveFormat.Text](https://reference.aspose.com/words/net/aspose.words/saveformat/) uložit jako prostý text do souboru nebo streamu
- Použít [Node.ToString](https://reference.aspose.com/words/net/aspose.words/node/tostring/) a projít **SaveFormat.Text** parametr. Interně to vyvolá uložení textu do paměti a vrací výsledný řetězec
- Použít [Node.GetText](https://reference.aspose.com/words/net/aspose.words/node/gettext/) získat text se všemi Microsoft Word kontrolní znaky včetně kódů polí
- Provádět zvyk [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) provádět vlastní extrakci

### Použití `Node.GetText` a `Node.ToString`

A Slovní dokument může obsahovat kontrolní znaky, které označují zvláštní prvky jako pole, konec buňky, konec sekce atd. Úplný seznam možných znaků Word control je definován v **ControlChar** třída. • **Node.GetText** metoda vrací text se všemi znaky ovládacího znaku přítomnými v uzlu.

Volání **ToString** vrací prostý text zobrazující dokument pouze bez kontrolních znaků. Další informace o vývozu jako prostý text viz následující oddíl **"Using SaveFormat.Text"**.

Následující příklad kódu ukazuje rozdíl mezi voláním **GetText** a **ToString** metody na uzel:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "simple-extract-text.cs" >}}

### Použití `SaveFormat.Text`

Tento příklad uloží dokument takto:

- Filtruje znaky pole a kódy pole, tvar, poznámka pod čarou, poznámka pod čarou a poznámky
- nahrazuje konec odstavce **ControlChar.Cr** Znaky s **ControlChar.CrLf** kombinace
- Používá kódování UTF8

Následující příklad kódu ukazuje, jak uložit dokument ve formátu TXT:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "docx-to-txt.cs" >}}

## Extrahovat obrázky z tvarů

Možná budete muset extrahovat obrázky dokumentů, abyste mohli plnit některé úkoly. Aspose.Words umožňuje vám to také udělat.

Následující příklad kódu ukazuje, jak extrahovat obrázky z dokumentu:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-images.cs" >}}