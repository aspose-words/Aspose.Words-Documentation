---
title: Omskakeling Na Vaste bladsy Formaat in C#
second_title: Aspose.Words vir .NET
articleTitle: Omskakeling Na Vaste bladsy Formaat
linktitle: Omskakeling Na Vaste bladsy Formaat
description: "Stoor dokumente na PDF, XPS, HTML, XAML, PostScript, en PCL formate met behulp van C#."
type: docs
weight: 10
url: /af/net/converting-to-fixed-page-format/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words implementeer sy eie bladsy uitleg enjin. Voordat die spesifikasies daarvan ondersoek word, is dit die moeite werd om eers dokumente op'n hoë vlak te bespreek. Wanneer gebruikers aan'n dokument dink, stel hulle gewoonlik'n aantal papiervelle voor wat woorde, beelde, tabelle en kaarte bevat. Dokumente kan van verskillende tipes wees, soos teks, sigblaaie, skyfies, CAD tekeninge, vloeidiagramme, en kan dus in wese verskillende uitlegte hê. Die meeste programme laat toe om dokumente na'n drukker te stuur; dit is wanneer'n gebruiker die dokument se finale beoogde voorkoms kan sien.

## Vertoon'n Dokument in Verskeie Toepassings

Verskeie dokument besigtiging of publikasie programme toelaat dat gebruikers oop te maak (Adobe Acrobat, XPS Kyker), en soms wysig (Adobe InDesign) dokumente van spesifieke formate. Hierdie programme produseer gewoonlik sogenaamde "vaste bladsy" formaat dokumente. So'n dokumentformaat beskryf presies waar die inhoud van'n dokument op elke bladsy geplaas word. Intern bevat die PDF of XPS formaat'n beskrywing van elke bladsy, sowel as tekeninstruksies, wat die uitleg van die inhoud op die bladsy spesifiseer. Dit is soortgelyk aan beeldformate, wat beskryf waar die inhoud in raster-of vektorvorm vertoon word.

Daarenteen ondersteun sommige teksbewerkingsprogramme nie die besigtiging van'n dokument se bladsye nie. Byvoorbeeld, Microsoft Notepad ondersteun baie min funksies behalwe om net teks te vertoon, te redigeer en te druk. Die belangrike waarneming hier is dat sulke programme nie bladsye van die dokument kan wys of'n gebruiker kan vertel hoeveel van hulle gedruk sal word nie, en slegs die dokumentinhoud kan sien. Die dokument kan in gewone teks formaat gestoor word en kan deur baie ander programme oopgemaak word. Deur'n program te gebruik wat binêre inhoud van'n arbitrêre lêer kan sien, kan'n mens sien wat in die dokumentlêer gestoor is – dit is net gewone teks, daar is niks anders daarin nie.

Effens meer gesofistikeerde teksbewerkingsprogramme, soos Microsoft WordPad, stoor die dokument in Ryk Teksformaat (RTF), wat meer opmaakfunksies ondersteun, soos die invoeging van beelde, karakteropmaak, paragraafmarges en spasiëring. Die RTF - formaat bevat egter ook slegs die inhoud van die dokument, met geen inligting oor bladsye nie.

Microsoft Word is die mees gevorderde teks-redigering aansoek in Windows vandag. Dit formateer lêers in die DOCX formaat, wat die dokument se inhoud buigsaam en uitgebreid beskryf, sodat gebruikers bladsygrootte, oriëntasie vir'n dokumentgedeelte kan spesifiseer, en as'n WYSIWYG - toepassing selfs dokumentbladsye op die skerm kan wys. Daar is egter nog geen inligting oor hoe die dokument se inhoud vertoon word op bladsye wat in die dokumentlêer beskikbaar is nie. Die dokument lêer beskryf net die inhoud self, en die verhouding van dokument voorwerpe aan mekaar, saam met'n paar geometriese beperkings. As gevolg hiervan, voordat'n dokument vertoon word, bereken Microsoft Word daardie inligting self. Dit is hier waar'n bladsy uitleg in die spel kom.

## Wat is'n Bladsy Uitleg

'n dokumentbladsy-uitleg is'n data-struktuur wat beskryf waar'n spesifieke voorwerp op bladsye vir alle dokumentvoorwerpe geleë is. Daarbenewens, aangesien voorwerpe eienskappe het wat hul voorkoms beïnvloed, soos lettergrootte, skadu-of tekeneffekte, moet jy nie net weet waar die voorwerp is nie, maar ook watter area(s) van die bladsy dit beslaan, en of dit op verskeie bladsye van toepassing sal wees sodat ander voorwerpe nie dieselfde area(s) oorvleuel nie.

Aspose.Words implementeer bladsy uitleg funksionaliteit intern sodat dit al die vaste bladsy formate, soos PDF, XPS, en verskeie beeld formate te produseer. Sonder bladsy uitleg, sou die inligting wat in die vaste bladsy dokument lêer gestoor word nie beskikbaar wees nie en al hierdie formate sou nie ondersteun word nie.

Die verhouding tussen'n dokument en'n bladsy-uitleg is redelik eenvoudig. Terwyl'n dokument die inhoud beskryf, beskryf die ooreenstemmende bladsy-uitleg die meetkunde van daardie inhoud. Let daarop dat'n bladsy-uitleg nie sonder'n dokument kan bestaan nie, aangesien daar geen inhoud vir die berekening van die meetkunde sou wees nie, maar'n dokument kan bestaan sonder'n bladsy-uitleg. Byvoorbeeld, wanneer'n DOCX dokument omgeskakel word na'n RTF dokument, is dit tipies onnodig om die meetkunde te ken, aangesien geen formaat dit stoor nie.

## Skep Bladsy Uitleg

Die skep van'n bladsy-uitleg kan'n duur prosedure wees, beide in terme van spoed en geheue. Dit is as gevolg van verskeie redes:

- Die dokument kan'n groot hoeveelheid inhoud hê, wat moontlik op duisende bladsye vertoon moet word. Die meetkunde van elke voorwerp op elke bladsy moet beskryf word, wat geheuebronne verbruik.
- Die dokument kan baie reëls hê, wat beperkings op meetkunde plaas. Aansienlike reken tyd kan bestee word, om te verseker dat elke beperking voldoen word.
- Sommige dokument funksies, byvoorbeeld, `NUMPAGES` veld, skep rekursiewe afhanklikhede vir toekomstige eienskap waardes, wat nie beskikbaar is op die tyd van berekening. Dit lei tot herhalende berekeninge en voeg by in reken tyd.

As gevolg van die bogenoemde redes, sal Aspose.Words slegs'n bladsy-uitleg skep wanneer dit nodig is. 'n tipiese rede hiervoor is'n versoek om dokumentbladsye te lewer of om'n veldwaarde te verkry wat afhang van inligting wat in bladsy-uitleg beskikbaar is. 'n minder voor die hand liggende rede kan wees om'n dokument na HTML uit te voer. Alhoewel HTML nie'n vaste bladsy formaat is nie en dit nie die meetkunde van die inhoud voorwerpe beskryf nie, ondersteun dit steeds beelde. Sulke beelde kan in die vorm van vorms geskep in Microsoft Word met'n teks binne hulle. Byvoorbeeld, 'n grafiek met as etikette kan uitgevoer word in HTML as'n beeld, maar voordat dit gedoen kan word Aspose.Words moet daardie beeld te lewer, en dus moet weet waar om die etiket te vertoon. Sien die tabel voorbeeld hieronder:

<img src="converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format_1" style="width:800px"/>

### Nie-Geometriese Eienskappe

Benewens die hantering van geometriese inligting, is'n bladsy-uitleg ook verantwoordelik vir die berekening van kleure en randstyle. In Microsoft Word kan teks kleur as outomaties gespesifiseer word, wat impliseer dat die kleurkeuse gebaseer moet wees op die skadu kleur van die sel of paragraaf, of gebaseer op die kleur van die bladsy, waar die teks verskyn.

Bladsy-uitleg bereken waar die teks sal verskyn en watter inhoud daaragter weergegee sal word, wat kleurberekening moontlik maak. Daar is ander spesifieke berekeninge wat deur die bladsy uitleg uitgevoer word. Byvoorbeeld, 'n horisontale rand in'n tabel hang af of'n tabel ry is laaste in'n kolom van teks, en of dit is gebreek oor kolomme. As'n ry laaste in'n kolom weergegee word, word die onderste rand gebruik in plaas van horisontaal.

![converting-to-fixed-page-format_2](converting-to-fixed-page-format-2.png)

In Aspose.Words kan'n gebruiker versoek of hy'n nuwe bladsy-uitleg wil bou, of'n bestaande een wil opdateer. Beide van hierdie kan uitgevoer word deur die [UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/updatepagelayout/) metode, wat deur die [Document](https://reference.aspose.com/words/net/aspose.words/document/) klas. As daar nie'n bladsy-uitleg bestaan nie, maar dit nodig is (byvoorbeeld wanneer die dokument na'n vaste bladsy-formaat uitgevoer word), sal Aspose.Words hierdie metode outomaties noem. As daar egter reeds'n bladsy-uitleg bestaan, sal Aspose.Words die bestaande een gebruik om te verhoed dat die hulpbronne wat nodig is om dit op te dateer, verbruik word. In hierdie geval moet die gebruiker die `UpdatePageLayout` metode bel om te verseker dat die bladsy uitleg op datum is met die dokumentmodel.

### Dinamiese Struktuur

Die proses van die skepping van bladsy uitleg bestaan uit die volgende stappe:

- *Conversion* - opsomming van inhoud van die dokumentmodel en die voorbereiding van ooreenstemmende uitlegvoorwerpe.
- *Build* - rangskik uitleg voorwerpe om inhoud van die dokument op bladsye verteenwoordig.
- *Reflow* - opdatering van voorwerpe reëling om te voldoen aan meetkunde beperkings.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - 'n stap wat nodig is as dokument vorms bevat met geneste teksinhoud.

Let daarop dat die bladsy uitleg is'n dinamiese struktuur, wat gedeeltelik herbou kan word. Dit is veral nodig wanneer dit onmoontlik is om veldwaardes te bereken sonder om die dokument uitleg struktuur te herbou. Die veld kan verwys na die ligging van'n voorwerp op'n bladsy, en terselfdertyd die veld waarde self is ook weergegee op die bladsy, wat die ligging van die verwysde voorwerp. 'n bladsy-uitleg kan nie in een slag gebou word nie, omdat veldwaardes dalk nog nie beskikbaar is op die tyd van posisionering op'n bladsy nie.

Oorweeg die tipiese scenario wanneer die `NUMPAGES` veld verskyn in die voetskrif van die eerste bladsy in die dokument. Die waarde van hierdie veld is die totale aantal bladsye. Om die veld op'n bladsy te plaas, moet die waarde daarvan bekend wees. As net die eerste bladsy tans gebou word, dan is die totale aantal bladsye nog nie bekend nie. In hierdie geval, die bladsy uitleg het die standaard waarde te gebruik en later terug te kom na daardie veld en verander sy waarde volgens werklike berekeninge. Die verandering van die veldwaarde kan egter ander dokumentinhoud op'n bladsy beïnvloed en uiteindelik veroorsaak dat'n nuwe bladsy aangeheg word of'n bestaande bladsy verwyder word, wat die berekende waarde verouderd maak. Hierdie probleem kan opgelos word deur dit moontlik te maak om die bestaande bladsy uitleg te werk.

Wanneer'n uitleg geskep word, is dit ook moontlik om [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) eienskappe op te stel wat die uitset van die dokument op bladsye beïnvloed.

## Stoor Na Vaste bladsy Formaat

Nadat die bladsy uitleg gebou is en die meetkunde van voorwerpe en hul posisie op die bladsy bereken is, kan die dokument gestoor word in'n vaste bladsy formaat ondersteun deur Aspose.Words. Wanneer dokumente in vaste bladsy formate gestoor word, kan die weergawe opsies wat algemeen is vir al hierdie formate gebruik word. Hulle laat toe om te beheer:

- Die aantal en omvang van bladsye vervat in die uitset dokument ([PageCount](https://reference.aspose.com/words/net/aspose.words/document/pagecount/)).
- Vordering van bladsy-vir-bladsy dokument stoor ([PageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/pagesavingcallback/)).
- 'n stel karakters wat gebruik word om getalle te vertoon ([NumeralFormat](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/numeralformat/)).
- 'n meta-lêer speler ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/metafilerenderingoptions/)). Vir meer besonderhede, sien die [Hantering Windows Meta Lêers](/words/net/handling-windows-metafiles/) artikel.
- 'n kwaliteitskoers vir die herkomprimering van JPEG beelde, waarvan die waarde effens kan verskil, afhangende van die geselekteerde stoorformaat ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/)).
- Optimalisering van vektorgrafika in Aspose.Words uitset ([OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/)).
- Grafiese opsies wanneer jy stoor Na Tiff, Png, Bmp, Jpeg, Emf formate ([UseAntiAliasing](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/usehighqualityrendering/)).
- Stoor die dokument in grysskaal ([ColorMode](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/colormode/)).
- Skakel tussen die weergawe van DrawingML vorms en fallback vorms ([DmlRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/dmlrenderingmode/)).
- Skakel tussen DML effekte vertoon modes ([DmlEffectsRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/dmleffectsrenderingmode/)).

Die onderstaande voorbeeld toon hoe om'n dokument te stoor na JPEG formaat met behulp van die `Save` metode en weergawe opsies:

{{< gist "aspose-words-gists" "ebbb90d74ef57db456685052a18f8e86" "get-jpeg-page-range.cs" >}}
