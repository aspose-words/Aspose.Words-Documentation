---
title: Activați OpenType caracteristici în Java
second_title: Aspose.Words pentru Java
articleTitle: Activare OpenType Caracteristici
linktitle: Activare OpenType Caracteristici
description: "Caracteristici avansate de tipografie în Aspose.Words pentru Java."
type: docs
weight: 25
url: /ro/java/enable-opentype-features/
---



OpenType este un format de font, introdus pentru a oferi un suport mai bun pentru limbile internaționale și sistemele de scriere în comparație cu PostScript și TrueType. Caracteristicile de aspect ale OpenType sunt cunoscute în mod obișnuit ca OpenType caracteristici. Aspose.Words.Modelarea.Pachetul HarfBuzz oferă suport pentru funcțiile OpenType din Aspose.Words folosind motorul de modelare a textului `HarfBuzz`.

Aspose.Words este capabil să utilizeze obiecte text shaper furnizate extern. Un formator de text reprezintă un font și calculează informațiile de modelare pentru un text. Un document se referă de obicei la mai multe fonturi, astfel încât este necesară o fabrică de modelare a textului. Acest pachet conține o implementare a unei fabrici de modelare a textului utilizată de Aspose.Words.Aspect.LayoutOptions.TextShaperFactory proprietate.

{{% alert color="primary" %}}

Modelarea textului se efectuează numai atunci când se exportă în formate PDF sau XPS.

{{% /alert %}}

Într-o aplicație tipică, o singură instanță a unei fabrici de modelare a textului este partajată între toate instanțele de documente. Ori de câte ori este creat un formator de text, este accesat un fișier de font. Parsarea unui fișier de font este o operație costisitoare, astfel se recomandă stocarea în cache. Aspose.Words implementează clasa BasicTextShaperCache care înfășoară implementarea din fabrică a formatorului de text și cache instanțele de formator de text returnate de fabrica înfășurată.

Următorul exemplu de cod vă arată cum să activați suportul caracteristicilor OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
