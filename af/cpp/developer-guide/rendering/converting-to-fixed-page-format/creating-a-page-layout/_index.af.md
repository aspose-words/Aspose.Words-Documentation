---
title: Skep'n Bladsy Uitleg in C++
second_title: Aspose.Words vir C++
articleTitle: Skep'n Bladsyuitleg
linktitle: Skep'n Bladsyuitleg
description: "Die skep van'n bladsy uitleg kan'n duur prosedure wees. Aspose.Words sal slegs'n bladsy-uitleg skep wanneer dit nodig is: om dokumentbladsye weer te gee, om'n veldwaarde te verkry, om'n dokument na HTML uit te voer, ens."
type: docs
weight: 10
url: /af/cpp/creating-a-page-layout/
timestamp: 2024-09-24-14-35-44
---

Die skep van'n bladsy-uitleg kan'n duur prosedure wees, beide in terme van spoed en geheue. Dit is as gevolg van verskeie redes:

- Die dokument kan'n groot hoeveelheid inhoud hê, wat moontlik op duisende bladsye vertoon moet word. Die meetkunde van elke voorwerp op elke bladsy moet beskryf word, wat geheuebronne verbruik.
- Die dokument kan baie reëls hê, wat beperkings op meetkunde plaas. Aansienlike reken tyd kan bestee word, om te verseker dat elke beperking voldoen word.
- Sommige dokument funksies, byvoorbeeld, die `NUMPAGES` veld, skep rekursiewe afhanklikhede vir toekomstige eienskap waardes, wat nie beskikbaar is op die tyd van berekening. Dit lei tot herhalende berekeninge en voeg by in reken tyd.

As gevolg van die bogenoemde redes, sal Aspose.Words slegs'n bladsy-uitleg skep wanneer dit nodig is. 'n tipiese rede hiervoor is'n versoek om dokumentbladsye te lewer of om'n veldwaarde te verkry wat afhang van die inligting wat in bladsy-uitleg beskikbaar is. 'n minder voor die hand liggende rede kan wees om'n dokument na HTML uit te voer. Alhoewel HTML nie'n vaste bladsy formaat is nie en dit nie die meetkunde van die inhoud voorwerpe beskryf nie, ondersteun dit steeds beelde. Sulke beelde kan in die vorm van vorms geskep in Microsoft Word met'n teks binne hulle. Byvoorbeeld, 'n grafiek met as etikette kan uitgevoer word in HTML as'n beeld, maar voordat dit gedoen kan word Aspose.Words moet daardie beeld weergee en dus moet weet waar om die etiket te vertoon. Sien die tabel voorbeeld hieronder:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## Nie-Geometriese Eienskappe

Benewens die hantering van geometriese inligting, is'n bladsy-uitleg ook verantwoordelik vir die berekening van kleure en randstyle. In Microsoft Word kan teks kleur as outomaties gespesifiseer word, wat impliseer dat die kleurkeuse gebaseer moet wees op die skadu kleur van die sel of paragraaf, of gebaseer op die kleur van die bladsy, waar die teks verskyn.

Bladsy-uitleg bereken waar die teks sal verskyn en watter inhoud daaragter weergegee sal word, wat kleurberekening moontlik maak. Daar is ander spesifieke berekeninge wat deur die bladsy uitleg uitgevoer word. Byvoorbeeld, 'n horisontale rand in'n tabel hang af of'n tabel ry is laaste in'n kolom van teks, en of dit is gebreek oor kolomme. As'n ry laaste in'n kolom weergegee word, word die onderste rand gebruik in plaas van horisontaal.

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

In Aspose.Words kan'n gebruiker versoek of hy'n nuwe bladsy-uitleg wil bou, of'n bestaande een wil opdateer. Beide van hierdie kan uitgevoer word deur die [UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/) metode, wat deur die [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) klas. As'n bladsy-uitleg nie bestaan nie, maar daar is'n behoefte daaraan (byvoorbeeld wanneer die dokument na'n vaste bladsy-formaat uitgevoer word), sal Aspose.Words hierdie metode outomaties noem. As'n bladsy-uitleg egter reeds bestaan, sal Aspose.Words die bestaande een gebruik om te verhoed dat die hulpbronne wat nodig is om dit op te dateer, verbruik word. In hierdie geval moet die gebruiker die `UpdatePageLayout` metode bel om te verseker dat die bladsy uitleg op datum is met die dokumentmodel.

## Dinamiese Struktuur

Die proses van die skepping van bladsy uitleg bestaan uit die volgende stappe:

- *Conversion* - opsomming van inhoud van die dokumentmodel en die voorbereiding van ooreenstemmende uitlegvoorwerpe.
- *Build* - rangskik uitleg voorwerpe om die inhoud van die dokument op bladsye verteenwoordig.
- *Reflow* - opdatering van voorwerpe reëling om te voldoen aan meetkunde beperkings.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - 'n stap wat nodig is as die dokument vorms bevat met geneste teksinhoud.

Let daarop dat die bladsy uitleg is'n dinamiese struktuur, wat gedeeltelik herbou kan word. Dit is veral nodig wanneer dit onmoontlik is om veldwaardes te bereken sonder om die dokument uitleg struktuur te herbou. Die veld kan verwys na die ligging van'n voorwerp op'n bladsy, en terselfdertyd, die veld waarde self is ook weergegee op die bladsy, wat die ligging van die verwysde voorwerp. 'n bladsy-uitleg kan nie in een slag gebou word nie, omdat veldwaardes dalk nog nie beskikbaar is op die tyd van posisionering op'n bladsy nie.

Oorweeg die tipiese scenario wanneer die `NUMPAGES` veld verskyn in die voetskrif van die eerste bladsy in die dokument. Die waarde van hierdie veld is die totale aantal bladsye. Om die veld op'n bladsy te plaas, moet die waarde daarvan bekend wees. As net die eerste bladsy tans gebou word, dan is die totale aantal bladsye nog nie bekend nie. In hierdie geval, die bladsy uitleg het die standaard waarde te gebruik en later terug te kom na daardie veld en verander sy waarde volgens werklike berekeninge. Die verandering van die veldwaarde kan egter ander dokumentinhoud op'n bladsy beïnvloed en uiteindelik veroorsaak dat'n nuwe bladsy aangeheg word of'n bestaande bladsy verwyder word, wat die berekende waarde verouderd maak. Hierdie probleem kan opgelos word deur dit moontlik te maak om die bestaande bladsy uitleg te werk.

Wanneer'n uitleg geskep word, is dit ook moontlik om [LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/) eienskappe op te stel wat die uitset van die dokument op bladsye beïnvloed.
