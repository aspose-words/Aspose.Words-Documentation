---
title: Schimbați stilul tabelului în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Aplicați Stilul Tabelului
linktitle: Aplicați Stilul Tabelului
description: "Formatare avansată a tabelului C#. Creați un stil de tabel folosind Python. Aplicați stilul tabelului Python."
type: docs
weight: 80
url: /ro/python-net/working-with-tablestyle/
---

Un stil de tabel definește un set de formatare care poate fi aplicat cu ușurință unui tabel. Formatarea, cum ar fi marginile, umbrirea, alinierea și fontul, poate fi setată într-un stil de tabel și aplicată la multe tabele pentru un aspect consistent.

Aspose.Words acceptă aplicarea unui stil de tabel la un tabel și, de asemenea, citirea proprietăților oricărui stil de tabel. Stilurile de tabel sunt păstrate în timpul încărcării și salvării în următoarele moduri:

- Stilurile de tabel în formatele DOCX și WordML sunt păstrate la încărcarea și salvarea în aceste formate
- Stilurile de tabel sunt păstrate la încărcare și salvare în format DOC (dar nu în niciun alt format)
- Când exportați în alte formate, redare sau imprimare, stilurile de tabel sunt extinse la formatarea directă în tabel, astfel încât toate formatările sunt păstrate

## Creați un stil de masă

Utilizatorul poate crea un stil nou și îl poate adăuga la colecția de stiluri. Metoda [Add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) este utilizată pentru a crea un nou stil de tabel.

Următorul exemplu de cod arată cum să creați un nou stil de tabel definit de utilizator:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "create-table-style.py" >}}

## Copiați un stil de tabel existent

Dacă este necesar, puteți copia un stil de tabel care există deja într-un anumit document în colecția dvs. de stil folosind metoda `AddCopy`.

Este important să știți că, cu această copiere, stilurile legate sunt, de asemenea, copiate.

Următorul exemplu de cod arată cum să importați un stil dintr-un document în alt document:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "copy-style-different-document.py" >}}

## Aplicați un stil de tabel existent

Aspose.Words oferă un [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/) moștenit din clasa [Style](https://reference.aspose.com/words/python-net/aspose.words/style/). **TableStyle** facilitează utilizatorului să aplice diferite opțiuni de stil, cum ar fi umbrirea, umplerea, indentarea, [CellSpacing](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/cell_spacing/) și [Font](https://reference.aspose.com/words/python-net/aspose.words/style/font/) etc.

În plus, Aspose.Words oferă clasa [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) și câteva proprietăți ale clasei `Table` pentru a specifica cu ce stil de tabel vom lucra: [Style](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_identifier/), [StyleName](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_name/), și [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words oferă, de asemenea, clasa [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/) care reprezintă formatarea specială aplicată unei anumite zone a unui tabel cu un stil de tabel atribuit și [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/) care reprezintă o colecție de obiecte **ConditionalStyle**. Această colecție conține un set permanent de elemente reprezentând un element pentru fiecare valoare a tipului de enumerare [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/). Enumerarea **ConditionalStyleType** definește toate zonele de tabel posibile la care formatarea condiționată poate fi definită într-un stil de tabel.

În acest caz, formatarea condiționată poate fi definită pentru toate zonele posibile ale tabelului definite sub Tipul de enumerare ConditionalStyleType.

Următorul exemplu de cod arată cum se definește formatarea condiționată pentru rândul antet al tabelului:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "define-conditional-formatting.py" >}}

De asemenea, puteți alege la ce părți de tabel să aplicați stiluri, cum ar fi prima coloană, ultima coloană, rânduri cu benzi. Acestea sunt listate în enumerarea [TableStyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/tablestyleoptions/) și sunt aplicate prin proprietatea [StyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_options/). Enumerarea **TableStyleOptions** permite o combinație bitwise a acestor caracteristici.

Următorul exemplu de cod arată cum să creați un tabel nou cu un stil de tabel aplicat:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "build-table-with-style.py" >}}

Imaginile de mai jos prezintă o reprezentare a **Table Styles** în Microsoft Word și proprietățile lor corespunzătoare în Aspose.Words.

![formatting-table-style-aspose-words-python](applying-formatting-10.png)



## Lucrul cu stiluri de masă

Un stil de tabel definește un set de formatare care poate fi aplicat cu ușurință unui tabel. Formatarea, cum ar fi marginile, umbrirea, alinierea și fontul pot fi setate într-un stil de tabel și aplicate la multe tabele pentru un aspect consistent.

Aspose.Words acceptă aplicarea unui stil de tabel la un tabel și, de asemenea, citirea proprietăților oricărui stil de tabel. Stilurile de tabel sunt păstrate în timpul încărcării și salvării în următoarele moduri:

- Stilurile de tabel în formatele DOCX și WordML sunt păstrate la încărcarea și salvarea în aceste formate.
- Stilurile de tabel sunt păstrate la încărcare și salvare în formatul DOC (dar nu în niciun alt format).
- Când exportați în alte formate, redare sau imprimare, stilurile de tabel sunt extinse la formatarea directă pe masă, astfel încât toate formatările să fie păstrate.

În prezent, nu puteți crea noi stiluri de tabel. Puteți aplica doar stiluri de tabel încorporate sau stiluri de tabel personalizate care există deja în document la un tabel.

## Luați formatarea din stilul tabelului și aplicați-o ca formatare directă

Aspose.Words oferă, de asemenea, metoda [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/python-net/aspose.words/document/expand_table_styles_to_direct_formatting/#default) pentru a lua formatarea găsită pe un stil de tabel și o extinde pe rândurile și celulele tabelului ca formatare directă. Încercați să combinați formatarea cu stilul tabelului și stilul celulei.

{{% alert color="primary" %}}

Această metodă nu va suprascrie nicio altă formatare deja aplicată tabelului printr-un format de rând sau celulă.

{{% /alert %}}

Următorul exemplu de cod arată cum să extindeți formatarea din stiluri pe rânduri și celule de tabel ca formatare directă:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "expand-formatting-on-cells-and-row-from-style.py" >}}