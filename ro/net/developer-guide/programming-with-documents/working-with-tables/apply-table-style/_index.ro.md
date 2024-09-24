---
title: Schimbă Stilul Tabelului în Documentele Word
second_title: Aspose.Words pentru .NET
articleTitle: Aplică Stilul Tabelului
linktitle: Aplică Stilul Tabelului
description: "Formatare tabele avansată C#. Crează un stil de tabel folosind C#. Aplica stil de masă C#."
type: docs
weight: 80
url: /ro/net/working-with-tablestyle/
---

Un stil de tabel definește o serie de formatare care poate fi aplicată cu ușurință la un tabel. "Formatarea, cum ar fi borduri, umbrire, aliniere și font poate fi stabilită într-un stil de tabel și aplicată pentru multe tabele pentru un aspect coerent."

Aspose.Words suportă aplicarea unui stil de tabel asupra unui tabel și, de asemenea, citirea proprietăților oricărui stil de tabel. Stilurile pentru tabele sunt păstrate la încărcare și salvare în următoarele moduri:

- Stilurile de tabel în DOCX și formatul WordML sunt păstrate atunci când se încarcă și se salvează în aceste formate
"- Stilurile tabelelor se păstrează la încărcare și salvare în formatul DOC (dar nu la nici un alt format)"
"- Când se exportează în alte formate, randarea sau imprimarea, stilurile de tabel sunt extinse pentru formatare directă în tabel, astfel încât toate formatările sunt păstrate"

## Creează un stil de tabel

Utilizatorul poate crea un nou stil și să îl adauge la colecția de stiluri. Metoda "The [Add](https://reference.aspose.com/words/net/aspose.words/stylecollection/add/)" se folosește pentru a crea un nou stil de masă.

Exemplul de cod următor arată cum să creezi un nou stil de tabel definit de utilizator:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "create-table-style.cs" >}}

## Copiază un stil existent de tabelă

Dacă este necesar, poți copia un stil de tabel care deja există într-un anumit document în colecția ta de stiluri folosind metoda `AddCopy`.

Este important să știi că cu această copiere, stilurile legate sunt, de asemenea, copiate.

Exemplul următor de cod arată cum să importăm un stil dintr-un document în altul:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "copy-style-different-document.cs" >}}

## Aplicați un Stil de Tabel existent

F Aspose.Words oferă o [TableStyle](https://reference.aspose.com/words/net/aspose.words/tablestyle/) moștenită de la clasa [Style](https://reference.aspose.com/words/net/aspose.words/style/). **TableStyle** facilitează utilizatorului să aplice diferite opțiuni de stil, cum ar fi umbrirea, padding-ul, indentarea, [CellSpacing](https://reference.aspose.com/words/net/aspose.words/tablestyle/cellspacing/) și [Font](https://reference.aspose.com/words/net/aspose.words/style/font/), etc.

În plus, Aspose.Words oferă clasa [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) și câteva proprietăți ale clasei `Table` pentru a specifica care stil de tabel vom lucra: [Style](https://reference.aspose.com/words/net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words.tables/table/styleidentifier/), [StyleName](https://reference.aspose.com/words/net/aspose.words.tables/table/stylename/) și [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

De asemenea, Aspose.Words oferă [ConditionalStyle](https://reference.aspose.com/words/net/aspose.words/conditionalstyle/) clasă care reprezintă formatarea specială aplicată unor zone dintr-o masă cu un stil de masă atribuit și [ConditionalStyleCollection](https://reference.aspose.com/words/net/aspose.words/conditionalstylecollection/) care reprezintă o colecție de **ConditionalStyle** obiecte. Această colecție conține un set permanent de elemente reprezentând câte o element pentru fiecare valoare a tipului de enumerare [ConditionalStyleType](https://reference.aspose.com/words/net/aspose.words/conditionalstyletype/). Enumerarea **ConditionalStyleType** definește toate zonele de tabel posibile pentru care poate fi definită formatarea condițională într-un stil de tabel.

În acest caz, formatarea condițională poate fi definită pentru toate zonele de tabel posibil definite sub tipul de enumerare ConditionalStyleType.

Exemplul următor de cod arată cum să definești formatarea condițională pentru rândul de antet al tabelului:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "define-conditional-formatting.cs" >}}

Puteți alege și ce părţi ale unei tabele să aplicaţi stiluri, cum ar fi prima coloană, ultima coloană, rândurile cu dungi. Ei sunt enumeraţi în [TableStyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/tablestyleoptions/) enumerare şi aplicată prin [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/) proprietate. The **TableStyleOptions** enumerare permite o combinație bit-wise a acestor caracteristici.

Exemplul următor de cod arată cum să creezi o nouă tabelă cu un stil de tabel aplicat:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "build-table-with-style.cs" >}}

Fotografiile de mai jos prezintă o reprezentare a **Table Styles** în Microsoft Word și proprietățile lor corespunzătoare în Aspose.Words.

![formatting-table-style-aspose-words-net](applying-formatting-10.png)

## Ia formatarea din Stilul Tabelului și aplică-l ca Formatare Directă

Aspose.Words oferă, de asemenea, metoda [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/net/aspose.words/document/expandtablestylestodirectformatting/) pentru a lua formatarea găsită pe un stil de tabel și o extinde asupra rândurilor și celulelor tabelului ca formatare directă. Încercă să combini formatarea cu stilul de tabel și celula stilului.

{{% alert color="primary" %}}

Acestă metodă nu va suprascrie nici o altă formatare deja aplicată la tabel prin intermediul unui rând sau a unei celule.

{{% /alert %}}

Exemplul de cod următor arată cum să extindem formatarea din stiluri asupra rândurilor și celulelor tabelelor ca formatare directă:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "expand-formatting-on-cells-and-row-from-style.cs" >}}

{{% alert color="primary" %}}

Puteţi descărca fişierul-eşantion al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}
