---
title: Hoe Om Inhoud Tussen Dokumentknope Te Onttrek
second_title: Aspose.Words vir .NET
articleTitle: Uittreksel Inhoud Tussen Nodes In'n Dokument
linktitle: Uittreksel Inhoud Tussen Nodes
description: "Onttrek dokumentinhoud in verskillende met behulp van C#."
type: docs
weight: 140
url: /af/net/how-to-extract-selected-content-between-nodes-in-a-document/
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

Om die inhoud uit u dokument te onttrek, moet u die **ExtractContent** - metode hieronder skakel en die toepaslike parameters slaag. Die onderliggende basis van hierdie metode behels die vind van blokvlakknope (paragrawe en tabelle) en die kloning daarvan om identiese kopieë te skep. As die merker nodes geslaag is blok vlak dan die metode is in staat om eenvoudig kopieer die inhoud op daardie vlak en voeg dit by die skikking.

As die merkknope egter inlyn is (n kind van'n paragraaf), word die situasie meer kompleks, aangesien dit nodig is om die paragraaf by die inlynknooppunt te verdeel, of dit nou'n run, boekmerkvelde ens. Inhoud in die gekloonde ouerknope wat nie tussen die merkers teenwoordig is nie, word verwyder. Hierdie proses word gebruik om te verseker dat die inline nodes steeds die opmaak van die ouer paragraaf sal behou. Die metode sal ook kontrole uit te voer op die nodes geslaag as parameters en gooi'n uitsondering as een van die node is ongeldig. Die parameters wat aan hierdie metode oorgedra moet word, is::

1. **StartNode** en **EndNode**. Die eerste twee parameters is die nodusse wat bepaal waar die onttrekking van die inhoud onderskeidelik moet begin en eindig. Hierdie nodusse kan beide blok vlak ([Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)) of inline vlak (bv [Run](https://reference.aspose.com/words/net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkstart/) en so aan.):
   1. Om'n veld te slaag moet jy die ooreenstemmende **FieldStart** voorwerp slaag
   1. Om boekmerke te slaag, moet die **BookmarkStart** en [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkend/) nodusse geslaag word
   1. Om kommentaar te slaag, moet die [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) en [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) nodes gebruik word
1. **IsInclusive**. Definieer of die merkers in die onttrekking ingesluit is of nie. As hierdie opsie is ingestel op vals en dieselfde node of opeenvolgende nodes geslaag, dan'n leë lys sal teruggestuur word:
   1. As'n **FieldStart** node geslaag word dan hierdie opsie definieer of die hele veld ingesluit of uitgesluit moet word
   1. As'n **BookmarkStart** of **BookmarkEnd** knoop geslaag word, definieer hierdie opsie of die boekmerk ingesluit is of net die inhoud tussen die boekmerkreeks.
   1. As'n **CommentRangeStart** of **CommentRangeEnd** knoop geslaag word, definieer hierdie opsie of die kommentaar self ingesluit moet word of net die inhoud in die kommentaarreeks.

Die implementering van die **ExtractContent** metode wat jy kan vind [op Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.cs). Daar sal na hierdie metode verwys word in die scenario's in hierdie artikel.

Ons sal ook'n persoonlike metode om maklik te genereer'n dokument van onttrek nodes definieer. Hierdie metode word in baie van die scenario's hieronder gebruik en skep eenvoudig'n nuwe dokument en voer die onttrekte inhoud daarin in.

Die volgende kode voorbeeld toon hoe om'n lys van nodes te neem en voeg hulle in'n nuwe dokument:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "generate-document.cs" >}}

## Uittreksel Inhoud Tussen Paragrawe

Dit toon hoe om die metode hierbo te gebruik om inhoud tussen spesifieke paragrawe te onttrek. In hierdie geval wil ons die liggaam van die brief wat in die eerste helfte van die dokument gevind word, onttrek. Ons kan sien dat dit tussen die 7 de en 11 de paragraaf is.

Die kode hieronder vervul hierdie taak. Die toepaslike paragrawe word onttrek met behulp van die [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/) metode op die dokument en slaag die gespesifiseerde indekse. Ons gee dan hierdie nodusse aan die **ExtractContent** metode en verklaar dat dit in die onttrekking ingesluit moet word. Hierdie metode sal die gekopieerde inhoud tussen hierdie nodes wat dan in'n nuwe dokument ingevoeg terugkeer.

Die volgende kode voorbeeld toon hoe om die inhoud tussen spesifieke paragrawe te onttrek met behulp van die `ExtractContent` metode hierbo:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraphs.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Uittreksel Inhoud Tussen Verskillende Tipes Nodusse

Ons kan inhoud tussen enige kombinasies van blok vlak of inline nodes te onttrek. In hierdie scenario hieronder sal ons die inhoud tussen die eerste paragraaf en die tabel in die tweede afdeling inklusief onttrek. Ons kry die merkers nodes deur die [FirstParagraph](https://reference.aspose.com/words/net/aspose.words/story/firstparagraph/) en [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/getchild/) metodes op die tweede afdeling van die dokument om die toepaslike **Paragraph** en **Table** nodes te haal. Vir'n effense variasie kom ons dupliseer eerder die inhoud en plaas dit onder die oorspronklike.

Die volgende kode voorbeeld toon hoe om die inhoud tussen'n paragraaf en tabel te onttrek met behulp van die **ExtractContent** metode:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-block-level-nodes.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Uittreksel Inhoud Tussen Paragrawe Gebaseer Op Styl

Miskien moet u die inhoud tussen paragrawe van dieselfde of verskillende styl onttrek, soos tussen paragrawe wat met kopstyle gemerk is. Die kode hieronder toon hoe om dit te bereik. Dit is'n eenvoudige voorbeeld wat die inhoud tussen die eerste geval van die "Heading 1" en "Kop 3" style sal onttrek sonder om die opskrifte ook te onttrek. Om dit te doen stel ons die laaste parameter op vals, wat spesifiseer dat die merkknope nie ingesluit moet word nie.

In'n behoorlike implementering moet dit in'n lus uitgevoer word om inhoud tussen al die paragrawe van hierdie style uit die dokument te onttrek. Die onttrekte inhoud word in'n nuwe dokument gekopieer.

Die volgende kode voorbeeld toon hoe om inhoud te onttrek tussen paragrawe met spesifieke style met behulp van die **ExtractContent** metode:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraph-styles.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "paragraphs-by-style-name.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Uittreksel Inhoud Tussen Spesifieke Lopies

Jy kan ook inhoud tussen inline nodes soos a [Run](https://reference.aspose.com/words/net/aspose.words/run/) onttrek. **Runs** uit verskillende paragrawe kan as merkers oorgedra word. Die kode hieronder wys hoe om spesifieke teks tussen dieselfde **Paragraph** knoop te onttrek.

Die volgende kode voorbeeld toon hoe om inhoud te onttrek tussen spesifieke rondes van dieselfde paragraaf met behulp van die **ExtractContent** metode:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-runs.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Onttrek Inhoud met behulp Van'n Veld

Om'n veld as merker te gebruik, moet die `FieldStart` knoop oorgedra word. Die laaste parameter van die `ExtractContent` metode sal definieer of die hele veld ingesluit moet word of nie. Kom ons onttrek die inhoud tussen die" FullName " merge veld en'n paragraaf in die dokument. Ons gebruik die [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/) metode van [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) klas. Dit sal die **FieldStart** node terugkeer van die naam van merge veld wat aan dit oorgedra is.

In ons geval laat ons die laaste parameter wat aan die **ExtractContent** metode oorgedra is, vals stel om die veld uit die onttrekking uit te sluit. Ons sal die onttrekte inhoud aan PDF weergee.

Die volgende kode voorbeeld toon hoe om inhoud te onttrek tussen'n spesifieke veld en paragraaf in die dokument met behulp van die **ExtractContent** metode:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-field.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Pak Inhoud uit'n Boekmerk

In'n dokument word die inhoud wat binne'n boekmerk gedefinieer is, gekapsel deur die `BookmarkStart` en BookmarkEnd nodusse. Inhoud wat tussen hierdie twee nodusse gevind word, vorm die boekmerk. U kan een van hierdie nodusse as enige merker slaag, selfs van verskillende boekmerke, solank die beginmerker voor die eindmerker in die dokument verskyn. Ons sal hierdie inhoud in'n nuwe dokument onttrek deur die kode hieronder te gebruik. Die **IsInclusive** parameter opsie wys hoe om die boekmerk te behou of weg te gooi.

Die volgende kode voorbeeld toon hoe om die inhoud verwys na'n boekmerk te onttrek met behulp van die **ExtractContent** metode:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-bookmark.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Uittreksel Inhoud Uit'n Kommentaar

'n kommentaar bestaan uit die CommentRangeStart, CommentRangeEnd en Kommentaar nodes. Al hierdie nodusse is inlyn. Die eerste twee nodusse kapsuleer die inhoud in die dokument waarna verwys word deur die kommentaar, soos gesien in die skermkiekie hieronder.

Die **Comment** knoop self is'n [InlineStory](https://reference.aspose.com/words/net/aspose.words/inlinestory/) wat paragrawe en loop kan bevat. Dit verteenwoordig die boodskap van die kommentaar as gesien as'n kommentaar borrel in die resensie paneel. Aangesien hierdie knoop inlyn is en'n afstammeling van'n liggaam, kan u ook die inhoud van binne hierdie boodskap onttrek.

Die kommentaar bevat die opskrif, eerste paragraaf en die tabel in die tweede afdeling. Kom ons pak hierdie kommentaar in'n nuwe dokument. Die **IsInclusive** opsie bepaal of die kommentaar self gehou of weggegooi word.

Die volgende kode voorbeeld toon hoe om dit te doen:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-comment-range.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Hoe Om inhoud Te Onttrek met DocumentVisitor

Gebruik die [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) klas om hierdie gebruik scenario te implementeer. Hierdie klas stem ooreen met die bekende Besoekersontwerppatroon. Met **DocumentVisitor** **,** kan jy persoonlike bewerkings definieer en uitvoer wat opsomming oor die dokumentboom vereis.

**DocumentVisitor**

Elke **DocumentVisitor.VisitXXX** metode gee'n [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) waarde wat die opsomming van nodes beheer. Jy kan versoek om die opsomming voort te sit, die huidige knoop oor te slaan (maar die opsomming voort te sit), of die opsomming van nodusse te stop.

Dit is die stappe wat u moet volg om verskillende dele van'n dokument programmaties te bepaal en te onttrek:

- Skep'n klas afgelei van **DocumentVisitor**
- Oorskryf en verskaf implementasies vir sommige of al die **DocumentVisitor.VisitXXX** metodes om'n paar persoonlike bedrywighede uit te voer
- Bel [Node.Accept](https://reference.aspose.com/words/net/aspose.words/node/accept/) op die nodus vanwaar jy die opsomming wil begin, byvoorbeeld, as jy die hele dokument wil opsom, gebruik [Document.Accept](https://reference.aspose.com/words/net/aspose.words/document/accept/)

**DocumentVisitor**

Die volgende voorbeeld toon hoe om die Besoeker patroon te gebruik om nuwe bedrywighede by te voeg tot die Aspose.Words voorwerp model. In hierdie geval, skep ons'n eenvoudige dokument converter in'n teks formaat:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-document-visitor.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "convert-doc-to-txt.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Hoe Om Slegs Teks Te Onttrek

Die maniere om teks uit die dokument te haal is:

- Gebruik [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/) met [SaveFormat.Text](https://reference.aspose.com/words/net/aspose.words/saveformat/) om as gewone teks in'n lêer of stroom te stoor
- Gebruik [Node.ToString](https://reference.aspose.com/words/net/aspose.words/node/tostring/) en slaag die **SaveFormat.Text** parameter. Intern, hierdie roep save as teks in'n geheue stroom en gee die gevolglike string
- Gebruik [Node.GetText](https://reference.aspose.com/words/net/aspose.words/node/gettext/) om teks te haal met alle Microsoft Word beheerkarakters insluitend veldkodes
- Implementeer'n pasgemaakte [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) om pasgemaakte ekstraksie uit te voer

### Gebruik `Node.GetText` en `Node.ToString`

'n Word-dokument kan beheerkarakters bevat wat spesiale elemente soos veld, einde van sel, einde van afdeling ens. Die volledige lys van moontlike Woord beheer karakters is gedefinieer in die **ControlChar** klas. Die **Node.GetText** metode gee teks met al die beheer karakter karakters teenwoordig in die node.

Roep **ToString** gee die gewone teks verteenwoordiging van die dokument net sonder beheer karakters. Vir verdere inligting oor uitvoer as gewone teks, sien die volgende afdeling **"Using SaveFormat.Text"**.

Die volgende kode voorbeeld toon die verskil tussen die roeping van die **GetText** en **ToString** metodes op'n knoop:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "simple-extract-text.cs" >}}

### Gebruik `SaveFormat.Text`

Hierdie voorbeeld stoor die dokument soos volg:

- Filter veldkarakters en veldkodes, vorm, voetnoot, eindnoot en kommentaarverwysings uit
- Vervang einde van paragraaf **ControlChar.Cr** karakters met **ControlChar.CrLf** kombinasies
- Gebruik UTF8 enkodering

Die volgende kode voorbeeld toon hoe om'n dokument in TXT formaat te stoor:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "docx-to-txt.cs" >}}

## Uittreksel Beelde uit Vorms

Miskien moet u dokumentbeelde onttrek om sekere take uit te voer. Aspose.Words laat jou toe om dit ook te doen.

Die volgende kode voorbeeld toon hoe om beelde uit'n dokument te onttrek:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-images.cs" >}}
