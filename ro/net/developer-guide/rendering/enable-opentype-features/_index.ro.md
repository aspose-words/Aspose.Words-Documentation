---
title: Activați caracteristici OpenType în C#
second_title: Aspose.Words pentru .NET
articleTitle: Activați caracteristici OpenType
linktitle: Activați caracteristici OpenType
description: "Caracteristici avansate de tipografie folosind C#."
type: docs
weight: 25
url: /ro/net/enable-opentype-features/
---

OpenType este un format de font care a fost introdus pentru a oferi o mai bună suport pentru limbile și sistemele de scriere internaționale comparativ cu PostScript și TrueType. Caracteristicile de dispunere din OpenType sunt cunoscute comun ca caracteristici OpenType. Aspose.Words.Pachetul Shaping.HarfBuzz oferă suport pentru caracteristicile OpenType în Aspose.Words folosind motorul de modelare a textului HarfBuzz.

Aspose.Words este capabil să folosească obiecte de deformare a textului furnizate extern. Un text shaper reprezintă o fontă și calculează informațiile de modelare pentru un text. Un document în mod tipic se referă la mai multe fonturi, de aceea este necesar un text shaper factory. Acest pachet conține o implementare a unei fabrici de modele de text utilizate de Aspose.Words.Layout.LayoutOptions.TextShaperFactory proprietate.

{{% alert color="primary" %}}

Formarea textului se efectuează doar la exportul către PDF sau XPS formate.

{{% /alert %}}

Într-o aplicație tipică, un singur exemplu de o fabrică de forme de text este partajat între toate instanțele de documente. Atunci când se creează un text shaper, se accesează o fişier font. Interpretarea unui fișier font este o operație costisitoare, iar stocarea în cache este recomandată. Aspose.Words implementează clasa BasicTextShaperCache care încapsulează implementarea fabricii de text shaper și stochează în cache instanțele text shaper returnate de fabrica învelită.

Exemplul următor de cod arată cum să pornești suportul caracteristicilor OpenType.

{{< gist "aspose-words-gists" "7840fae2297fa05bba1ca0608cb81bf1" "open-type-features.cs" >}}
