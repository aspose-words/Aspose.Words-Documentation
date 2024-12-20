---
title: Numele producătorului în rezultate
second_title: Aspose.Words pentru C++
articleTitle: Numele generatorului sau al producătorului în documentele de ieșire
linktitle: Numele producătorului în documentele de ieșire
description: "Aspose.Words pentru C++ adăugați la document numele generatorului și numărul versiunii care au fost utilizate pentru a-l crea. Aceste date pot fi găsite în document în moduri care depind de formatul fișierului de ieșire."
type: docs
weight: 90
url: /ro/cpp/generator-or-producer-name-included-in-output-documents/
timestamp: 2024-10-21-11-17-44
---

Puteți ști cu ușurință dacă un document este produs utilizând Aspose.Words pentru C++. De asemenea, puteți găsi numărul versiunii Aspose.Words pentru C++ care a fost folosit pentru a crea un anumit document de ieșire. Aspose.Words scrie direct aceste informații în documentul generat.

Numărul versiunii este specificat în formatul *YY.MM.N* sau *YY.M.N*, de exemplu, 23.12.0 sau 24.1.0.<br />
Aici *YY* sunt ultimele două cifre ale anului de lansare, *M* sau *MM* este luna de lansare(1–12), și *N* este numărul de eliberare minoră. De obicei, *N* este "0".

{{% alert color="primary" %}}

Rețineți că nu puteți instrui Aspose.Words să modifice sau să elimine aceste informații din documentele de ieșire.

{{% /alert %}}

În funcție de formatul fișierului de ieșire, următorul tabel listează modalitățile pe care le puteți utiliza pentru a cunoaște numele generatorului și numărul versiunii.

| SaveFormat Valoare | Șir, comentariu sau câmp scris în fișier | Cum să găsiți |
| :- | :- | :- |
| `Doc` | `AWC.YY.M.N`<br />For example,<br />`AWC.24.1.0` | DOC generat de Aspose.Words devine 8 octeți scrise. Puteți să o verificați deschizând fișierul într-un editor binar. |
| `Dot` | `AWC.YY.M.N`<br />For example,<br />`AWC.24.1.0` | DOT generat de Aspose.Words devine 8 octeți scrise. Puteți să o verificați deschizând fișierul într-un editor binar. |
| `Docx` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Redenumiți fișierul ca .fermoarul. Extrageți ZIP. Deschide ~ / Word / Document.xml pentru a vedea acest comentariu. |
| `Docm` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Redenumiți fișierul ca .fermoarul. Extrageți ZIP. Deschide ~ / Word / Document.xml pentru a vedea acest comentariu. |
| `Dotx` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Redenumiți fișierul ca .fermoarul. Extrageți ZIP. Deschide ~ / Document.xml pentru a vedea acest comentariu. |
| `Dotm` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Redenumiți fișierul ca .fermoarul. Extrageți ZIP. Deschide ~ / Word / Document.xml pentru a vedea acest comentariu. |
| `FlatOpc` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .fișierul xml conține acest comentariu. Îl puteți deschide în Notepad pentru a vedea acest comentariu. |
| `FlatOpcMacroEnabled` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .fișierul xml conține acest comentariu. Îl puteți deschide în Notepad pentru a vedea acest comentariu. |
| `FlatOpcTemplate` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .fișierul xml conține acest comentariu. Îl puteți deschide în Notepad pentru a vedea acest comentariu. |
| `FlatOpcTemplateMacroEnabled` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .fișierul xml conține acest comentariu. Îl puteți deschide în Notepad pentru a vedea acest comentariu. |
| `Rtf` | `{\*\generator Aspose.Words for C++ YY.M.N;}`<br />de exemplu,<br />`{\*\generator Aspose.Words for C++ 24.1.0;}` | .fișierul rtf conține acest comentariu. Îl puteți deschide în Notepad pentru a vedea acest comentariu. |
| `WordML` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .fișierul xml conține acest comentariu. Îl puteți deschide în Notepad pentru a vedea acest comentariu. |
| Pdf | <ul><li>**Application:** Aspose.Words</li><li>**PDF Producer:** `Aspose.Words for C++ YY.M.N`, de exemplu,<br />`Aspose.Words for C++ 24.1.0`</li></ul> | ![todo: image_alt_text](generator-or-producer-name-included-in-output-documents_1) |
| `Xps` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Redenumiți fișierul ca .fermoarul. Extrageți ZIP. În XPS acest comentariu poate fi găsit în ~ / Documents / 1 / Pages / 1.fpage |
| `XamlFixed` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .fișierul xml conține acest comentariu. Îl puteți deschide în Notepad pentru a vedea acest comentariu. |
| `Svg` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .fișierul xml conține acest comentariu. Îl puteți deschide în Notepad pentru a vedea acest comentariu. |
| `HtmlFixed` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />de exemplu,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | HTML fișierul conține această etichetă. Îl puteți deschide în Notepad pentru a vedea. |
| `OpenXps` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Redenumiți fișierul ca .fermoarul. Extrageți ZIP. În OpenXps acest comentariu poate fi găsit în ~ / Documents / 1 / Pages / 1.fpage |
| `Ps` | `%Generated by Aspose.Words for C++ YY.M.N`<br />de exemplu,<br />`%Generated by Aspose.Words for C++ 24.1.0` | fișierul. ps conține acest comentariu. Îl puteți deschide în Notepad pentru a vedea acest comentariu. |
| `Pcl` |  |  |
| `Html` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />de exemplu,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | HTML fișierul conține această etichetă. Îl puteți deschide în Notepad pentru a vedea. |
| `Mhtml` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />de exemplu,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | MHTML fișierul conține această etichetă. Îl puteți deschide în Notepad pentru a vedea. |
| `Epub` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />de exemplu,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | Redenumiți fișierul ca .fermoarul. Extrageți ZIP. Du-te la ~ / OEBPS/<file_name>.html. |
| `Odt` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Redenumiți fișierul ca .fermoarul. Extrageți ZIP. Verificați-l în ~/conținut.xml |
| `Ott` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Redenumiți fișierul ca .fermoarul. Extrageți ZIP. Verificați-l în ~/conținut.xml |
| `Text` |  |  |
| `XamlFlow` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .fișierul xml conține acest comentariu. Îl puteți deschide în Notepad pentru a vedea acest comentariu. |
| `XamlFlowPack` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />de exemplu,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .fișierul xml conține acest comentariu. Îl puteți deschide în Notepad pentru a vedea acest comentariu. |
| `Markdown` |  |  |
| `Tiff` |  |  |
| `Png` |  |  |
| `Bmp` |  |  |
| `Emf` |  |  |
| `Jpeg` |  |  |
| `Gif` |  |  |

{{% alert color="primary" %}}

De asemenea, există o adăugare la variantele prezentate în tabel. Numărul versiunii Aspose.Words poate fi scris în mai multe locuri pentru unele formate. Depinde de setările de export.

Aceste situații suplimentare nu sunt descrise în tabelul de mai sus.

{{% /alert %}}
