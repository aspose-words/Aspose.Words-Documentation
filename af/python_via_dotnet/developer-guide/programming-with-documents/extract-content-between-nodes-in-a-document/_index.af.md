---
title: Uittreksel Inhoud Tussen Dokumentknope
second_title: Aspose.Words vir Python
articleTitle: Uittreksel Inhoud Tussen Nodes In'n Dokument
linktitle: Uittreksel Inhoud Tussen Nodes
description: "Hoe om spesifieke inhoud uit'n reeks binne die dokument te onttrek maklik met behulp van Python."
type: docs
weight: 140
url: /af/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
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

Om die inhoud uit u dokument te onttrek, moet u die **extract_content** - metode hieronder skakel en die toepaslike parameters slaag. Die onderliggende basis van hierdie metode behels die vind van blokvlakknope (paragrawe en tabelle) en die kloning daarvan om identiese kopieë te skep. As die merker nodes geslaag is blok vlak dan die metode is in staat om eenvoudig kopieer die inhoud op daardie vlak en voeg dit by die skikking.

As die merkknope egter inlyn is (n kind van'n paragraaf), word die situasie meer kompleks, aangesien dit nodig is om die paragraaf by die inlynknooppunt te verdeel, of dit nou'n run, boekmerkvelde ens. Inhoud in die gekloonde ouerknope wat nie tussen die merkers teenwoordig is nie, word verwyder. Hierdie proses word gebruik om te verseker dat die inline nodes steeds die opmaak van die ouer paragraaf sal behou. Die metode sal ook kontrole uit te voer op die nodes geslaag as parameters en gooi'n uitsondering as een van die node is ongeldig. Die parameters wat aan hierdie metode oorgedra moet word, is::

1. **startNode** en **endNode**. Die eerste twee parameters is die nodusse wat bepaal waar die onttrekking van die inhoud onderskeidelik moet begin en eindig. Hierdie nodusse kan beide blok vlak ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) of inline vlak (bv [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) en so aan.):
   1. Om'n veld te slaag moet jy die ooreenstemmende [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) voorwerp slaag.
   1. Om boekmerke te slaag, moet die [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) en [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) nodusse geslaag word.
   1. Om kommentaar te slaag, moet die [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) en [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) nodusse gebruik word.
1. **isInclusive**. Definieer of die merkers in die onttrekking ingesluit is of nie. As hierdie opsie is ingestel op vals en dieselfde node of opeenvolgende nodes geslaag, dan'n leë lys sal teruggestuur word:
   1. As'n [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) knoop oorgedra word dan hierdie opsie definieer of die hele veld ingesluit of uitgesluit moet word.
   1. As'n [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) of [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) knoop geslaag word, definieer hierdie opsie of die boekmerk ingesluit is of net die inhoud tussen die boekmerkreeks.
   1. As'n [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) of [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) knoop geslaag word, definieer hierdie opsie of die kommentaar self ingesluit moet word of net die inhoud in die kommentaarreeks.

Die implementering van die **extract_content** metode wat jy kan vind [hier is](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). Daar sal na hierdie metode verwys word in die scenario's in hierdie artikel.

Ons sal ook'n persoonlike metode om maklik te genereer'n dokument van onttrek nodes definieer. Hierdie metode word in baie van die scenario's hieronder gebruik en skep eenvoudig'n nuwe dokument en voer die onttrekte inhoud daarin in.

Die volgende kode voorbeeld toon hoe om'n lys van nodes te neem en voeg hulle in'n nuwe dokument:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Uittreksel Inhoud Tussen Paragrawe

Dit toon hoe om die metode hierbo te gebruik om inhoud tussen spesifieke paragrawe te onttrek. In hierdie geval wil ons die liggaam van die brief wat in die eerste helfte van die dokument gevind word, onttrek. Ons kan sien dat dit tussen die 7 de en 11 de paragraaf is.

Die kode hieronder vervul hierdie taak. Die toepaslike paragrawe word onttrek met behulp van die [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) metode op die dokument en slaag die gespesifiseerde indekse. Ons gee dan hierdie nodusse aan die **extract_content** metode en verklaar dat dit in die onttrekking ingesluit moet word. Hierdie metode sal die gekopieerde inhoud tussen hierdie nodes wat dan in'n nuwe dokument ingevoeg terugkeer.

Die volgende kode voorbeeld toon hoe om die inhoud tussen spesifieke paragrawe te onttrek met behulp van die **extract_content** metode hierbo:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Uittreksel Inhoud Tussen Verskillende Tipes Nodusse

Ons kan inhoud tussen enige kombinasies van blok vlak of inline nodes te onttrek. In hierdie scenario hieronder sal ons die inhoud tussen die eerste paragraaf en die tabel in die tweede afdeling inklusief onttrek. Ons kry die merkers nodes deur die roeping van [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) en [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) metode op die tweede afdeling van die dokument om die toepaslike [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) en [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) nodes te haal. Vir'n effense variasie kom ons dupliseer eerder die inhoud en plaas dit onder die oorspronklike.

Die volgende kode voorbeeld toon hoe om die inhoud tussen'n paragraaf en tabel te onttrek met behulp van die **extract_content** metode:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Uittreksel Inhoud Tussen Paragrawe Gebaseer Op Styl

Miskien moet u die inhoud tussen paragrawe van dieselfde of verskillende styl onttrek, soos tussen paragrawe wat met kopstyle gemerk is.

Die kode hieronder toon hoe om dit te bereik. Dit is'n eenvoudige voorbeeld wat die inhoud tussen die eerste geval van die "Heading 1" en "Kop 3" style sal onttrek sonder om die opskrifte ook te onttrek. Om dit te doen stel ons die laaste parameter op vals, wat spesifiseer dat die merkknope nie ingesluit moet word nie.

In'n behoorlike implementering moet dit in'n lus uitgevoer word om inhoud tussen al die paragrawe van hierdie style uit die dokument te onttrek. Die onttrekte inhoud word in'n nuwe dokument gekopieer.

Die volgende kode voorbeeld toon hoe om inhoud te onttrek tussen paragrawe met spesifieke style met behulp van die **extract_content** metode:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Uittreksel Inhoud Tussen Spesifieke Lopies

Jy kan ook inhoud tussen inline nodes soos a [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) onttrek. Runs van verskillende paragrawe kan as merkers oorgedra word. Die kode hieronder wys hoe om spesifieke teks tussen dieselfde [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) knoop te onttrek.

Die volgende kode voorbeeld toon hoe om inhoud te onttrek tussen spesifieke rondes van dieselfde paragraaf met behulp van die **extract_content** metode:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Onttrek Inhoud met behulp Van'n Veld

Om'n veld as merker te gebruik, moet die [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) knoop oorgedra word. Die laaste parameter van die **extract_content** metode sal definieer of die hele veld ingesluit moet word of nie. Kom ons onttrek die inhoud tussen die" FullName " merge veld en'n paragraaf in die dokument. Ons gebruik die [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) metode van [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) klas. Dit sal die [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) node van die naam van merge veld oorgedra om dit terug te keer.

In ons geval laat ons die laaste parameter wat aan die **extract_content** metode oorgedra is, stel op `False` om die veld uit die onttrekking uit te sluit. Ons sal die onttrekte inhoud aan PDF weergee.

Die volgende kode voorbeeld toon hoe om inhoud te onttrek tussen'n spesifieke veld en paragraaf in die dokument met behulp van die **extract_content** metode:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Pak Inhoud uit'n Boekmerk

In'n dokument word die inhoud wat binne'n boekmerk gedefinieer is, gekapsel deur die [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) en [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) nodusse. Inhoud wat tussen hierdie twee nodusse gevind word, vorm die boekmerk. U kan een van hierdie nodusse as enige merker slaag, selfs van verskillende boekmerke, solank die beginmerker voor die eindmerker in die dokument verskyn. Ons sal hierdie inhoud in'n nuwe dokument onttrek deur die kode hieronder te gebruik. Die **isInclusive** parameter opsie wys hoe om die boekmerk te behou of weg te gooi.

Die volgende kode voorbeeld toon hoe om die inhoud verwys na'n boekmerk te onttrek met behulp van die **extract_content** metode:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Uittreksel Inhoud Uit'n Kommentaar

'n kommentaar bestaan uit die [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) en [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) nodusse. Al hierdie nodusse is inlyn. Die eerste twee nodusse kapsuleer die inhoud in die dokument waarna verwys word deur die kommentaar, soos gesien in die skermkiekie hieronder. Die [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) knoop self is'n [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) wat paragrawe en loop kan bevat. Dit verteenwoordig die boodskap van die kommentaar as gesien as'n kommentaar borrel in die resensie paneel. Aangesien hierdie knoop inlyn is en'n afstammeling van'n liggaam, kan u ook die inhoud van binne hierdie boodskap onttrek.

Die kommentaar bevat die opskrif, eerste paragraaf en die tabel in die tweede afdeling. Kom ons pak hierdie kommentaar in'n nuwe dokument. Die **isInclusive** opsie bepaal of die kommentaar self gehou of weggegooi word.

Die volgende kode voorbeeld toon hoe om dit te doen:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Hoe Om Slegs Teks Te Onttrek

Die maniere om teks uit die dokument te haal is:

- Gebruik [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) om as gewone teks in'n lêer of stroom te stoor
- Gebruik [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) en slaag die [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text) parameter. Intern, hierdie roep save as teks in'n geheue stroom en gee die gevolglike string
- Gebruik [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) om teks te haal met alle Microsoft Word beheerkarakters insluitend veldkodes

### Gebruik Van Node.get_text en Node.to_string

'n Word-dokument kan beheerkarakters bevat wat spesiale elemente soos veld, einde van sel, einde van afdeling ens. Die volledige lys van moontlike Woord beheer karakters is gedefinieer in die [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) klas. Die [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) metode gee teks met al die beheer karakter karakters teenwoordig in die node.

Roep [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) gee die gewone teks verteenwoordiging van die dokument net sonder beheer karakters. Vir verdere inligting oor uitvoer as gewone teks sien met behulp van [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text).

Die volgende kode voorbeeld toon die verskil tussen die roeping van die [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) en [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) metodes op'n knoop:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### Gebruik `SaveFormat.Text`

Hierdie voorbeeld stoor die dokument soos volg:

- Filter veldkarakters en veldkodes, vorm, voetnoot, eindnoot en kommentaarverwysings uit
- Vervang einde van paragraaf **ControlChar.Cr** karakters met **ControlChar.CrLf** kombinasies
- Gebruik UTF8 enkodering

Die volgende kode voorbeeld toon hoe om'n dokument in TXT formaat te stoor:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Uittreksel Beelde uit Vorms

Miskien moet u dokumentbeelde onttrek om sekere take uit te voer. Aspose.Words laat jou toe om dit ook te doen.

Die volgende kode voorbeeld toon hoe om beelde uit'n dokument te onttrek:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
