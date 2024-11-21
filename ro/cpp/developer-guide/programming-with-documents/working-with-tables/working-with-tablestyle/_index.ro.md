---
title: Schimbați stilul tabelului în documentele Word
second_title: Aspose.Words pentru C++
articleTitle: Aplicați Stilul Tabelului
linktitle: Aplicați Stilul Tabelului
description: "Formatare avansată a tabelului C++. Creați un stil de tabel folosind C++. Aplicați stilul tabelului C++."
type: docs
weight: 80
url: /ro/cpp/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Un stil de tabel definește un set de formatare care poate fi aplicat cu ușurință unui tabel. Formatarea, cum ar fi marginile, umbrirea, alinierea și fontul, poate fi setată într-un stil de tabel și aplicată la multe tabele pentru un aspect consistent.

Aspose.Words acceptă aplicarea unui stil de tabel la un tabel și, de asemenea, citirea proprietăților oricărui stil de tabel. Stilurile de tabel sunt păstrate în timpul încărcării și salvării în următoarele moduri:

- Stilurile de tabel în formatele DOCX și WordML sunt păstrate la încărcarea și salvarea în aceste formate
- Stilurile de tabel sunt păstrate la încărcare și salvare în format DOC (dar nu în niciun alt format)
- Când exportați în alte formate, redare sau imprimare, stilurile de tabel sunt extinse la formatarea directă în tabel, astfel încât toate formatările sunt păstrate

## Creați un stil de masă

Utilizatorul poate crea un stil nou și îl poate adăuga la colecția de stiluri. Metoda [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) este utilizată pentru a crea un nou stil de tabel.

Următorul exemplu de cod arată cum să creați un nou stil de tabel definit de utilizator:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## Copiați un stil de tabel existent

Dacă este necesar, puteți copia un stil de tabel care există deja într-un anumit document în colecția dvs. de stil folosind metoda `AddCopy`.

Este important să știți că, cu această copiere, stilurile legate sunt, de asemenea, copiate.

Următorul exemplu de cod arată cum să importați un stil dintr-un document în alt document:

EXAMPLE

## Aplicați un stil de tabel existent

Aspose.Words oferă un [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/) moștenit din clasa [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). **TableStyle** facilitează utilizatorului să aplice diferite opțiuni de stil, cum ar fi umbrirea, umplerea, indentarea, [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) și [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/) etc.

În plus, Aspose.Words oferă clasa [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) și câteva proprietăți ale clasei `Table` pentru a specifica cu ce stil de tabel vom lucra: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), și [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words oferă, de asemenea, clasa [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/) care reprezintă formatarea specială aplicată unei anumite zone a unui tabel cu un stil de tabel atribuit și [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/) care reprezintă o colecție de obiecte **ConditionalStyle**. Această colecție conține un set permanent de elemente reprezentând un element pentru fiecare valoare a tipului de enumerare [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/). Enumerarea **ConditionalStyleType** definește toate zonele de tabel posibile la care formatarea condiționată poate fi definită într-un stil de tabel.

În acest caz, formatarea condiționată poate fi definită pentru toate zonele posibile ale tabelului definite sub Tipul de enumerare ConditionalStyleType.

Următorul exemplu de cod arată cum se definește formatarea condiționată pentru rândul antet al tabelului:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

De asemenea, puteți alege la ce părți de tabel să aplicați stiluri, cum ar fi prima coloană, ultima coloană, rânduri cu benzi. Acestea sunt listate în enumerarea [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) și sunt aplicate prin proprietatea [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/). Enumerarea **TableStyleOptions** permite o combinație bitwise a acestor caracteristici.

Următorul exemplu de cod arată cum să creați un tabel nou cu un stil de tabel aplicat:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

Imaginile de mai jos prezintă o reprezentare a **Table Styles** în Microsoft Word și proprietățile lor corespunzătoare în Aspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## Luați formatarea din stilul tabelului și aplicați-o ca formatare directă

Aspose.Words oferă, de asemenea, metoda [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/) pentru a lua formatarea găsită pe un stil de tabel și o extinde pe rândurile și celulele tabelului ca formatare directă. Încercați să combinați formatarea cu stilul tabelului și stilul celulei.

{{% alert color="primary" %}}

Această metodă nu va suprascrie nicio altă formatare deja aplicată tabelului printr-un format de rând sau celulă.

{{% /alert %}}

Următorul exemplu de cod arată cum să extindeți formatarea din stiluri pe rânduri și celule de tabel ca formatare directă:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}
