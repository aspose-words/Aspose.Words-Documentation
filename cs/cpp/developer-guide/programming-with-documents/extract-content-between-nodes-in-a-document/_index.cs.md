---
title: Jak extrahovat obsah mezi uzly dokumentu
second_title: Aspose.Words pro C++
articleTitle: Extrahujte obsah mezi uzly v dokumentu
linktitle: Extrahujte Obsah Mezi Uzly
type: docs
description: "Extrahování obsahu dokumentu v různých pomocí C++."
weight: 140
url: /cs/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Při práci s dokumenty je důležité být schopen snadno extrahovat obsah z konkrétního rozsahu v dokumentu. Obsah však může sestávat ze složitých prvků, jako jsou odstavce, tabulky, obrázky atd.

Bez ohledu na to, jaký obsah je třeba extrahovat, bude metoda extrahování tohoto obsahu vždy určena podle toho, které uzly jsou vybrány k extrahování obsahu mezi nimi. Mohou to být celá textová těla nebo jednoduché textové běhy.

Existuje mnoho možných situací, a proto je třeba při extrahování obsahu zvážit mnoho různých typů uzlů. Můžete například chtít extrahovat obsah mezi:

- Dva konkrétní odstavce
- Konkrétní běhy textu
- Pole různých typů, například sloučit pole
- Počáteční a koncový rozsah záložky nebo komentáře
- Různá těla textu obsažená v samostatných částech

V některých situacích může být dokonce nutné kombinovat různé typy uzlů, například extrahování obsahu mezi odstavcem a polem nebo mezi spuštěním a záložkou.

Tento článek poskytuje implementaci kódu pro extrahování textu mezi různými uzly, stejně jako příklady běžných scénářů.

{{% alert color="primary" %}}

Tyto příklady jsou jen několika ukázkami mnoha možností. V budoucnu plánujeme, aby funkce extrakce textu byla součástí veřejné API a nebude vyžadován žádný další kód. Mezitím můžete své požadavky týkající se této funkce zveřejnit na [Aspose.Words fórum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Proč Extrahovat Obsah

Cílem extrahování obsahu je často duplikovat nebo uložit jej samostatně do nového dokumentu. Můžete například extrahovat obsah a:

- Zkopírujte jej do samostatného dokumentu
- Převod konkrétní části dokumentu na PDF nebo obrázek
- Duplikujte obsah v dokumentu mnohokrát
- Práce s extrahovaným obsahem odděleně od zbytku dokumentu

Toho lze snadno dosáhnout pomocí Aspose.Words a implementace kódu níže.

## Extrahování Algoritmu Obsahu

Kód v této části řeší všechny možné situace popsané výše jednou zobecněnou a opakovaně použitelnou metodou. Obecný nástin této techniky zahrnuje:

1. Shromažďování uzlů, které diktují oblast obsahu, která bude extrahována z vašeho dokumentu. Načítání těchto uzlů zpracovává uživatel ve svém kódu na základě toho, co chtějí extrahovat.
1. Předání těchto uzlů metodě **ExtractContent** uvedené níže. Musíte také předat booleovský parametr, který uvádí, zda by tyto uzly, které fungují jako značky, měly být zahrnuty do extrakce nebo ne.
1. Načtení seznamu klonovaného obsahu (zkopírovaných uzlů) určeného k extrahování. Tento seznam uzlů můžete použít jakýmkoli použitelným způsobem, například vytvořením nového dokumentu obsahujícího pouze vybraný obsah.

## Jak extrahovat obsah

Chcete-li extrahovat obsah z dokumentu, musíte zavolat metodu `ExtractContent` níže a předat příslušné parametry. Základem této metody je nalezení uzlů na úrovni bloků (odstavců a tabulek) a jejich klonování za účelem vytvoření identických kopií. Pokud jsou předané značkovací uzly na úrovni bloku, pak je metoda schopna jednoduše zkopírovat obsah na této úrovni a přidat jej do pole.

Pokud jsou však uzly značky Vložené (podřízené odstavci), situace se stává složitější, protože je nutné rozdělit odstavec na vloženém uzlu, ať už jde o Běh, Pole záložek atd. Obsah v klonovaných nadřazených uzlech, které nejsou přítomny mezi značkami, je odstraněn. Tento proces se používá k zajištění toho, aby Vložené uzly stále zachovaly formátování nadřazeného odstavce. Metoda také spustí kontroly uzlů předaných jako parametry a vyvolá výjimku, pokud je některý uzel neplatný. Parametry, které mají být předány této metodě, jsou:

1. **StartNode** a **EndNode**. První dva parametry jsou uzly, které definují, kde má extrakce obsahu začít a končit v příslušně. Tyto uzly mohou být jak na úrovni bloku (odstavec, tabulka), tak na úrovni inline (např. Run, FieldStart, BookmarkStart atd.):
   1. Chcete-li předat pole, měli byste předat odpovídající objekt **FieldStart**.
   1. Chcete-li předat záložky, měly by být předány uzly **BookmarkStart** a BookmarkEnd.
   1. Pro předávání komentářů by měly být použity uzly CommentRangeStart a CommentRangeEnd.
1. **IsInclusive**. Definuje, zda jsou značky zahrnuty do extrakce nebo ne. Pokud je tato možnost nastavena na hodnotu false a je předán stejný uzel nebo po sobě jdoucí uzly, bude vrácen prázdný seznam:

      1. Pokud je předán uzel **FieldStart**, pak tato volba definuje, zda má být celé pole zahrnuto nebo vyloučeno.
      1. Pokud je předán uzel **BookmarkStart** nebo **BookmarkEnd**, Tato volba definuje, zda je záložka zahrnuta nebo pouze obsah mezi rozsahem záložek.
      1. Pokud je předán uzel **CommentRangeStart** nebo **CommentRangeEnd**, Tato volba definuje, zda má být zahrnut samotný komentář nebo pouze obsah v rozsahu komentářů.

Implementaci metody **ExtractContent** můžete najít [nízko](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). Tato metoda bude uvedena ve scénářích v tomto článku.

Definujeme také vlastní metodu pro snadné generování dokumentu z extrahovaných uzlů. Tato metoda se používá v mnoha níže uvedených scénářích a jednoduše vytvoří nový dokument a importuje do něj extrahovaný obsah.

Následující příklad kódu ukazuje, jak vzít seznam uzlů a vloží je do nového dokumentu.

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## Extrahujte Obsah Mezi Odstavci

To ukazuje, jak použít výše uvedenou metodu k extrahování obsahu mezi konkrétními odstavci. V tomto případě chceme extrahovat tělo dopisu nalezeného v první polovině dokumentu. Můžeme říci, že je to mezi 7.a 11. odstavcem.

Níže uvedený kód splňuje tento úkol. Příslušné odstavce jsou extrahovány metodou [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) v dokumentu a předáním zadaných indexů. Poté tyto uzly předáme metodě **ExtractContent** a uvedeme, že mají být zahrnuty do extrakce. Tato metoda vrátí zkopírovaný obsah mezi těmito uzly, které jsou poté vloženy do nového dokumentu.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi konkrétními odstavci pomocí výše uvedené metody `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## Extrahujte obsah mezi různými typy uzlů

Můžeme extrahovat obsah mezi libovolnými kombinacemi blokových nebo vložených uzlů. V tomto scénáři níže extrahujeme obsah mezi prvním odstavcem a tabulkou ve druhé části včetně. Uzly značek získáme voláním metody `Body.FirstParagraph` a [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) ve druhé části dokumentu pro načtení příslušných uzlů odstavců a tabulek. Pro malou variaci místo toho duplikujte obsah a vložte jej pod originál.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi odstavcem a tabulkou pomocí metody `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## Extrahujte obsah mezi odstavci na základě stylu

Možná budete muset extrahovat obsah mezi odstavci stejných nebo různých stylů, například mezi odstavci označenými styly nadpisů. Níže uvedený kód ukazuje, jak toho dosáhnout. Jedná se o jednoduchý příklad, který extrahuje obsah mezi první instancí stylů "Heading 1" a "Header 3" bez extrahování nadpisů. Za tímto účelem nastavíme poslední parametr na false, který určuje, že uzly značky by neměly být zahrnuty.

Při správné implementaci by to mělo být spuštěno ve smyčce pro extrahování obsahu mezi všemi odstavci těchto stylů z dokumentu. Extrahovaný obsah se zkopíruje do nového dokumentu.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi odstavci se specifickými styly pomocí metody `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## Extrahujte Obsah Mezi Konkrétními Běhy

Můžete také extrahovat obsah mezi vloženými uzly, například [Run](https://reference.aspose.com/words/cpp/aspose.words/run/). **Runs** z různých odstavců lze předat jako značky. Níže uvedený kód ukazuje, jak extrahovat konkrétní text mezi stejným uzlem **Paragraph**.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi konkrétními běhy stejného odstavce pomocí metody **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## Extrahujte obsah pomocí pole

Chcete-li použít pole jako značku, měl by být předán uzel `FieldStart`. Poslední parametr metody `ExtractContent` definuje, zda má být celé pole zahrnuto nebo ne. Extrahujme obsah mezi slučovacím polem "FullName " a odstavcem v dokumentu. Používáme metodu [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) třídy [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Tím se vrátí uzel **FieldStart** z pole Název sloučení, které mu bylo předáno.

V našem případě nastavíme poslední parametr předaný metodě **ExtractContent** na false, abychom vyloučili pole z extrakce. Extrahovaný obsah vykreslíme do PDF.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi konkrétním polem a odstavcem v dokumentu pomocí metody **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## Extrahujte obsah ze záložky

V dokumentu je obsah definovaný v záložce zapouzdřen uzly `BookmarkStart` a BookmarkEnd. Obsah nalezený mezi těmito dvěma uzly tvoří záložku. Kterýkoli z těchto uzlů můžete předat jako jakoukoli značku, dokonce i ty z různých záložek, pokud se počáteční značka objeví před koncovou značkou v dokumentu. Tento obsah extrahujeme do nového dokumentu pomocí níže uvedeného kódu. Volba parametru **IsInclusive** ukazuje, jak záložku zachovat nebo zahodit.

Následující příklad kódu ukazuje, jak extrahovat obsah odkazovaný na záložku pomocí metody **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## Extrahujte obsah z Komentáře

Komentář se skládá z uzlů CommentRangeStart, CommentRangeEnd a komentářů. Všechny tyto uzly jsou vložené. První dva uzly zapouzdřují obsah v dokumentu, na který odkazuje komentář, jak je vidět na obrázku níže.

Samotný uzel **Comment** je InlineStory, který může obsahovat odstavce a běhy. Představuje zprávu Komentáře, která je v podokně náhledu vnímána jako bublina komentářů. Protože je tento uzel vložený a potomek těla, můžete také extrahovat obsah z této zprávy.

Komentář zapouzdřuje Nadpis, první odstavec a tabulku ve druhé části. Pojďme extrahovat tento komentář do nového dokumentu. Volba **IsInclusive** určuje, zda je samotný komentář zachován nebo zahozen.

Následující příklad kódu ukazuje, jak to udělat:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## Jak extrahovat obsah pomocí DocumentVisitor

K implementaci tohoto scénáře použití použijte třídu [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/). Tato třída odpovídá známému vzoru designu návštěvníků. Pomocí **DocumentVisitor,** můžete definovat a provádět vlastní operace, které vyžadují výčet nad stromem dokumentů.

**DocumentVisitor**

Každá metoda **DocumentVisitor.VisitXXX** vrací hodnotu [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/), která řídí výčet uzlů. Můžete požádat o pokračování výčtu, přeskočení aktuálního uzlu (ale pokračování výčtu) nebo zastavení výčtu uzlů.

Toto jsou kroky, které byste měli dodržovat, abyste programově určili a extrahovali různé části dokumentu:

- Vytvořte třídu odvozenou od **DocumentVisitor**
- Přepsat a poskytnout implementace pro některé nebo všechny metody **DocumentVisitor.VisitXXX** k provádění některých vlastních operací
- Zavolejte `Node.Accept` na uzel, odkud chcete spustit výčet. Pokud například chcete vyčíslit celý dokument, použijte `Document.Accept`

**DocumentVisitor**

Tento příklad ukazuje, jak použít vzor návštěvníka k přidání nových operací do objektového modelu Aspose.Words. V tomto případě vytvoříme jednoduchý převodník dokumentů do textového formátu:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Jak extrahovat pouze Text

Způsoby načítání textu z dokumentu jsou:

- Použijte [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) s [SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) k uložení jako prostý text do souboru nebo streamu
- Použijte [Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/) a předejte parametr **SaveFormat.Text**. Interně to vyvolá uložit jako text do proudu paměti a vrátí výsledný řetězec
- Použijte [Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/) k načtení textu se všemi řídicími znaky Microsoft Word včetně kódů polí
- Implementujte vlastní [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) k provedení přizpůsobené extrakce

### Použití `Node.GetText` a `Node.ToString`

Word dokument může obsahovat kontrolní znaky, které označují speciální prvky, jako je pole,Konec buňky, konec sekce atd. Úplný seznam možných řídicích znaků Word je definován ve třídě [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/). Metoda **Node.GetText** vrací text se všemi znaky řídicího znaku přítomnými v uzlu.

Volání **ToString** vrátí prostou textovou reprezentaci dokumentu pouze bez ovládacích znaků.

Následující příklad kódu ukazuje rozdíl mezi voláním metod **GetText** a **ToString** v uzlu:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### Použití `SaveFormat.Text`

Tento příklad uloží dokument následujícím způsobem:

- Filtruje znaky polí a kódy polí, tvar, poznámky pod čarou, vysvětlivky a komentáře
- Nahrazuje znaky konce odstavce **ControlChar.Cr** kombinací **ControlChar.CrLf**
- Používá UTF8 kódování

Následující příklad kódu ukazuje, jak uložit dokument ve formátu TXT:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## Extrahujte obrázky z tvarů

Možná budete muset extrahovat obrázky dokumentů, abyste mohli provádět některé úkoly. Aspose.Words vám to také umožňuje.

Následující příklad kódu ukazuje, jak extrahovat obrázky z dokumentu:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}
