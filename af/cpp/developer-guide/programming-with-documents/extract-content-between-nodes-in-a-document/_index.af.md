---
title: Hoe Om Inhoud Tussen Dokumentknope Te Onttrek
second_title: Aspose.Words vir C++
articleTitle: Uittreksel Inhoud Tussen Nodes In'n Dokument
linktitle: Uittreksel Inhoud Tussen Nodes
type: docs
description: "Onttrek dokumentinhoud in verskillende met behulp van C++."
weight: 140
url: /af/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Wanneer jy met dokumente werk, is dit belangrik om maklik inhoud uit'n spesifieke reeks binne'n dokument te kan onttrek. Die inhoud kan egter bestaan uit komplekse elemente soos paragrawe, tabelle, beelde, ens.

Ongeag watter inhoud onttrek moet word, sal die metode om daardie inhoud te onttrek altyd bepaal word deur watter nodusse gekies word om inhoud tussen te onttrek. Dit kan hele teks liggame of eenvoudige teks loop wees.

Daar is baie moontlike situasies en dus baie verskillende node tipes te oorweeg wanneer die onttrekking van inhoud. Byvoorbeeld, jy wil dalk inhoud tussen:

- Twee spesifieke paragrawe
- Spesifieke reeks teks
- Velde van verskillende tipes, soos samesmelting velde
- Begin en einde reekse van'n boekmerk of kommentaar
- Verskeie tekste in afsonderlike afdelings

In sommige situasies, kan jy selfs nodig het om verskillende node tipes kombineer, soos die onttrekking van inhoud tussen'n paragraaf en'n veld, of tussen'n run en'n boekmerk.

Hierdie artikel bied die kode implementering vir die onttrekking van teks tussen verskillende nodes, sowel as voorbeelde van algemene scenario's.

{{% alert color="primary" %}}

Hierdie voorbeelde is net'n paar demonstrasies van die baie moontlikhede. Ons beplan vir die teks onttrekking funksie om deel te wees van die publiek API in die toekoms, en geen ekstra kode sal nodig wees. In die tussentyd, voel vry om jou versoeke met betrekking tot hierdie funksie op die [Aspose.Words forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Hoekom Uittreksel Inhoud

Die doel van die onttrekking van die inhoud is dikwels om dit afsonderlik in'n nuwe dokument te dupliseer of te stoor. U kan byvoorbeeld inhoud onttrek en:

- Kopieer dit in'n aparte dokument
- Skakel'n spesifieke deel van'n dokument om na PDF of beeldlêer
- Dupliseer die inhoud in die dokument baie keer
- Werk met onttrekte inhoud apart van die res van die dokument

Dit kan maklik bereik word deur Aspose.Words en die kode implementering hieronder te gebruik.

## Onttrek Inhoud Algoritme

Die kode in hierdie afdeling spreek al die moontlike situasies hierbo beskryf met een veralgemeende en herbruikbare metode. Die algemene skets van hierdie tegniek behels::

1. Versamel die nodusse wat die inhoudgebied bepaal wat uit u dokument onttrek sal word. Die herwinning van hierdie nodes word hanteer deur die gebruiker in hul kode, gebaseer op wat hulle wil onttrek word.
1. Die oordrag van hierdie nodusse na die **ExtractContent** metode wat hieronder verskaf word. Jy moet ook'n boole-parameter slaag wat bepaal of hierdie nodusse, wat as merkers optree, by die onttrekking ingesluit moet word of nie.
1. Herwinning van'n lys van gekloonde inhoud (gekopieerde nodes) gespesifiseer om te onttrek. U kan hierdie lys van nodusse op enige toepaslike manier gebruik, byvoorbeeld om'n nuwe dokument te skep wat slegs die geselekteerde inhoud bevat.

## Hoe Om Inhoud Te Onttrek

Om die inhoud uit u dokument te onttrek, moet u die `ExtractContent` - metode hieronder skakel en die toepaslike parameters slaag. Die onderliggende basis van hierdie metode behels die vind van blokvlak-knope (paragrawe en tabelle) en die kloning daarvan om identiese kopieë te skep. As die merkknope wat oorgedra word blokvlak is, dan kan die metode eenvoudig die inhoud op daardie vlak kopieer en dit by die skikking voeg.

As die merkknope egter inline is (n kind van'n paragraaf), word die situasie meer kompleks, aangesien dit nodig is om die paragraaf by die inline-knooppunt te verdeel, of dit nou'n run, boekmerkvelde ens. Inhoud in die gekloonde ouerknope wat nie tussen die merkers teenwoordig is nie, word verwyder. Hierdie proses word gebruik om te verseker dat die inline nodes steeds die opmaak van die ouer paragraaf sal behou. Die metode sal ook kontrole uit te voer op die nodes geslaag as parameters en gooi'n uitsondering as een van die node is ongeldig. Die parameters wat aan hierdie metode oorgedra moet word, is::

1. **StartNode** en **EndNode**. Die eerste twee parameters is die nodusse wat bepaal waar die onttrekking van die inhoud onderskeidelik moet begin en eindig. Hierdie nodusse kan beide blokvlak (Paragraaf, Tabel ) of inlynvlak (bv.Run, FieldStart, BookmarkStart ens.) wees.):
   1. Om'n veld te slaag moet jy die ooreenstemmende **FieldStart** voorwerp slaag.
   1. Om boekmerke te slaag, moet die **BookmarkStart** en BookmarkEnd nodusse geslaag word.
   1. Om kommentaar te slaag, moet die CommentRangeStart en CommentRangeEnd nodusse gebruik word.
1. **IsInclusive**. Definieer of die merkers in die onttrekking ingesluit is of nie. As hierdie opsie is ingestel op vals en dieselfde node of opeenvolgende nodes geslaag, dan'n leë lys sal teruggestuur word:

      1. As'n **FieldStart** knoop oorgedra word dan hierdie opsie definieer of die hele veld ingesluit of uitgesluit moet word.
      1. As'n **BookmarkStart** of **BookmarkEnd** knoop geslaag word, definieer hierdie opsie of die boekmerk ingesluit is of net die inhoud tussen die boekmerkreeks.
      1. As'n **CommentRangeStart** of **CommentRangeEnd** knoop geslaag word, definieer hierdie opsie of die kommentaar self ingesluit moet word of net die inhoud in die kommentaarreeks.

Die implementering van die **ExtractContent** metode wat jy kan vind [hier is](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). Daar sal na hierdie metode verwys word in die scenario's in hierdie artikel.

Ons sal ook'n persoonlike metode om maklik te genereer'n dokument van onttrek nodes definieer. Hierdie metode word in baie van die scenario's hieronder gebruik en skep eenvoudig'n nuwe dokument en voer die onttrekte inhoud daarin in.

Die volgende kode voorbeeld toon hoe om'n lys van nodes te neem en voeg hulle in'n nuwe dokument.

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## Uittreksel Inhoud Tussen Paragrawe

Dit toon hoe om die metode hierbo te gebruik om inhoud tussen spesifieke paragrawe te onttrek. In hierdie geval wil ons die liggaam van die brief wat in die eerste helfte van die dokument gevind word, onttrek. Ons kan sien dat dit tussen die 7de en 11de paragrawe is.

Die kode hieronder vervul hierdie taak. Die toepaslike paragrawe word onttrek met behulp van die [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) metode op die dokument en slaag die gespesifiseerde indekse. Ons gee dan hierdie nodusse aan die **ExtractContent** metode en verklaar dat dit in die onttrekking ingesluit moet word. Hierdie metode sal die gekopieerde inhoud tussen hierdie nodes wat dan in'n nuwe dokument ingevoeg terugkeer.

Die volgende kode voorbeeld toon hoe om die inhoud tussen spesifieke paragrawe te onttrek met behulp van die `ExtractContent` metode hierbo:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## Uittreksel Inhoud Tussen Verskillende Tipes Nodusse

Ons kan inhoud tussen enige kombinasies van blok-vlak of inline nodes te onttrek. In hierdie scenario hieronder sal ons die inhoud tussen die eerste paragraaf en die tabel in die tweede afdeling inklusief onttrek. Ons kry die merkers nodes deur die roeping van `Body.FirstParagraph` en [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) metode op die tweede afdeling van die dokument om die toepaslike Paragraaf en Tabel nodes te haal. Vir'n effense variasie kom ons dupliseer eerder die inhoud en plaas dit onder die oorspronklike.

Die volgende kode voorbeeld toon hoe om die inhoud tussen'n paragraaf en tabel te onttrek met behulp van die `ExtractContent` metode:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## Uittreksel Inhoud Tussen Paragrawe Gebaseer Op Styl

Miskien moet u die inhoud tussen paragrawe van dieselfde of verskillende style onttrek, soos tussen paragrawe wat met kopstyle gemerk is. Die kode hieronder toon hoe om dit te bereik. Dit is'n eenvoudige voorbeeld wat die inhoud tussen die eerste geval van die "Heading 1" en "Header 3" style sal onttrek sonder om die opskrifte ook te onttrek. Om dit te doen stel ons die laaste parameter op vals, wat spesifiseer dat die merkknope nie ingesluit moet word nie.

In'n behoorlike implementering moet dit in'n lus uitgevoer word om inhoud tussen al die paragrawe van hierdie style uit die dokument te onttrek. Die onttrekte inhoud word in'n nuwe dokument gekopieer.

Die volgende kode voorbeeld toon hoe om inhoud te onttrek tussen paragrawe met spesifieke style met behulp van die `ExtractContent` metode:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## Uittreksel Inhoud Tussen Spesifieke Lopies

Jy kan ook inhoud tussen inline nodes soos a [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) onttrek. **Runs** uit verskillende paragrawe kan as merkers oorgedra word. Die kode hieronder wys hoe om spesifieke teks tussen dieselfde **Paragraph** knoop te onttrek.

Die volgende kode voorbeeld toon hoe om inhoud te onttrek tussen spesifieke rondes van dieselfde paragraaf met behulp van die **ExtractContent** metode:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## Onttrek Inhoud met behulp Van'n Veld

Om'n veld as merker te gebruik, moet die `FieldStart` knoop oorgedra word. Die laaste parameter van die `ExtractContent` metode sal definieer of die hele veld ingesluit moet word of nie. Kom ons onttrek die inhoud tussen die" FullName " merge veld en'n paragraaf in die dokument. Ons gebruik die [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) metode van [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) klas. Dit sal die **FieldStart** node van die naam van merge veld oorgedra om dit terug te keer.

In ons geval laat ons die laaste parameter wat aan die **ExtractContent** metode oorgedra is, vals stel om die veld uit die onttrekking uit te sluit. Ons sal die onttrekte inhoud aan PDF weergee.

Die volgende kode voorbeeld toon hoe om inhoud te onttrek tussen'n spesifieke veld en paragraaf in die dokument met behulp van die **ExtractContent** metode:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## Pak Inhoud uit'n Boekmerk

In'n dokument word die inhoud wat binne'n boekmerk gedefinieer is, gekapsel deur die `BookmarkStart` en BookmarkEnd nodusse. Die inhoud wat tussen hierdie twee nodusse gevind word, vorm die boekmerk. U kan een van hierdie nodusse as enige merker slaag, selfs van verskillende boekmerke, solank die beginmerker voor die eindmerker in die dokument verskyn. Ons sal hierdie inhoud in'n nuwe dokument onttrek deur die kode hieronder te gebruik. Die **IsInclusive** parameter opsie wys hoe om die boekmerk te behou of weg te gooi.

Die volgende kode voorbeeld toon hoe om die inhoud verwys na'n boekmerk te onttrek met behulp van die **ExtractContent** metode:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## Uittreksel Inhoud Uit'n Kommentaar

'n kommentaar bestaan uit die CommentRangeStart, CommentRangeEnd en Kommentaar nodes. Al hierdie nodusse is inlyn. Die eerste twee nodusse kapsuleer die inhoud in die dokument waarna verwys word deur die kommentaar, soos gesien in die skermkiekie hieronder.

Die **Comment** knoop self is'n InlineStory wat paragrawe en loop kan bevat. Dit verteenwoordig die boodskap van die kommentaar soos gesien as'n kommentaar borrel in die voorskou paneel. Aangesien hierdie knoop inlyn is en'n afstammeling van'n liggaam, kan u ook die inhoud van binne hierdie boodskap onttrek.

Die kommentaar bevat die opskrif, eerste paragraaf en die tabel in die tweede afdeling. Kom ons pak hierdie kommentaar in'n nuwe dokument. Die **IsInclusive** opsie bepaal of die kommentaar self gehou of weggegooi word.

Die volgende kode voorbeeld toon hoe om dit te doen:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## Hoe Om inhoud Te Onttrek met DocumentVisitor

Gebruik die [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) klas om hierdie gebruik scenario te implementeer. Hierdie klas stem ooreen met die bekende Besoekersontwerppatroon. Met **DocumentVisitor,** kan jy persoonlike bewerkings definieer en uitvoer wat opsomming oor die dokumentboom vereis.

**DocumentVisitor**

Elke **DocumentVisitor.VisitXXX** metode gee'n [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) waarde wat die opsomming van nodes beheer. Jy kan versoek om die opsomming voort te sit, die huidige knoop oor te slaan (maar die opsomming voort te sit), of die opsomming van nodusse te stop.

Dit is die stappe wat u moet volg om verskillende dele van'n dokument programmaties te bepaal en te onttrek:

- Skep'n klas afgelei van **DocumentVisitor**
- Oorskryf en verskaf implementasies vir sommige of al die **DocumentVisitor.VisitXXX** metodes om'n paar persoonlike bedrywighede uit te voer
- Bel `Node.Accept` op die knoop vanwaar jy die opsomming wil begin. As u byvoorbeeld die hele dokument wil opsom, gebruik `Document.Accept`

**DocumentVisitor**

Hierdie voorbeeld toon hoe Om die Besoeker patroon te gebruik om nuwe bedrywighede by te voeg tot die Aspose.Words voorwerp model. In hierdie geval, skep ons'n eenvoudige dokument converter in'n teks formaat:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Hoe Om Slegs Teks Te Onttrek

Die maniere om teks uit die dokument te haal is:

- Gebruik [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) met [SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) om as gewone teks in'n lêer of stroom te stoor
- Gebruik [Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/) en slaag die **SaveFormat.Text** parameter. Intern, hierdie roep save as teks in'n geheue stroom en gee die gevolglike string
- Gebruik [Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/) om teks te haal met alle Microsoft Word beheerkarakters insluitend veldkodes
- Implementeer'n pasgemaakte [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) om pasgemaakte ekstraksie uit te voer

### Gebruik `Node.GetText` en `Node.ToString`

'n Word-dokument kan beheerkarakters bevat wat spesiale elemente soos veld, einde van die sel, einde van die afdeling ens. Die volledige lys van moontlike Woord beheer karakters is gedefinieer in die [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) klas. Die **Node.GetText** metode gee teks met al die beheer karakter karakters teenwoordig in die node.

Roep **ToString** gee die gewone teks verteenwoordiging van die dokument net sonder beheer karakters.

Die volgende kode voorbeeld toon die verskil tussen die roeping van die **GetText** en **ToString** metodes op'n knoop:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### Gebruik `SaveFormat.Text`

Hierdie voorbeeld stoor die dokument soos volg:

- Filter veldkarakters en veldkodes, vorm, voetnoot, eindnoot en kommentaarverwysings uit
- Vervang einde van paragraaf **ControlChar.Cr** karakters met **ControlChar.CrLf** kombinasies
- Gebruik UTF8 enkodering

Die volgende kode voorbeeld toon hoe om'n dokument in TXT formaat te stoor:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## Uittreksel Beelde uit Vorms

Miskien moet u dokumentbeelde onttrek om sekere take uit te voer. Aspose.Words laat jou toe om dit ook te doen.

Die volgende kode voorbeeld toon hoe om beelde uit'n dokument te onttrek:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}
