---
title: Vložení Checkboxes, zadávání textu nebo obrázků během Mail Merge
second_title: Aspose.Words pro .NET
articleTitle: Vložení Checkboxes, zadávání textu nebo obrázků
linktitle: Vložení Checkboxes, zadávání textu nebo obrázků
description: "Vložte checkboxES nebo pole pro zadávání textu během Mail Merge pomocí C#. Také vložte obrázky z databáze během Mail Merge v C#."
type: docs
weight: 40
url: /cs/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

Slučovací modul vezme dokument jako vstup, vyhledá v něm pole `MERGEFIELD` a nahradí je daty získanými ze zdroje dat. Obvykle se vkládají prostý text a HTML, ale Uživatelé Aspose.Words mohou také vygenerovat dokument, který zpracovává neobvyklejší scénáře pro pole Mail Merge.

Výkonná funkce Aspose.Words umožňuje rozšířit proces Mail Merge:

- vložit checkboxES a pole formuláře pro zadávání textu do dokumentu během mail merge
- vkládejte obrázky z libovolného vlastního úložiště(soubory, pole BLOB atd.)

## Vložte Checkboxes a zadávání textu během Mail Merge

Někdy je nutné provést operaci Mail Merge, aby v poli sloučení nebyl nahrazen text, ale checkbox nebo pole pro zadávání textu. I když to není nejběžnější scénář, je to velmi užitečné pro některé úkoly.

Následující snímek obrazovky dokumentu Word zobrazuje šablonu se sloučenými poli:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Tento snímek obrazovky níže uvedeného dokumentu Word ukazuje již vygenerovaný dokument:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Všimněte si, že některá pole byla nahrazena prostým textem, některá pole byla nahrazena poli formuláře checkbox a pole `Subject` bylo nahrazeno polem pro zadávání textu.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vložit checkboxes a zadat textová pole do dokumentu během mail merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## Vkládání obrázků během Mail Merge

Při provádění operace Mail Merge můžete do dokumentu vložit obrázky z databáze pomocí speciálních polí image Mail Merge. Pole image Mail Merge je sloučené pole s názvem Image:MyFieldName.

### Vkládání obrázků z databáze

Během mail merge, když se v dokumentu objeví pole image Mail Merge, je vyvolána událost [FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/). Na tuto událost můžete odpovědět a vrátit název souboru, stream nebo obrazový objekt do motoru Mail Merge, aby jej bylo možné vložit do dokumentu.

Následující příklad kódu ukazuje, jak vložit obrázky uložené v poli databáze BLOB do sestavy:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### Nastavení vlastností obrazu během Mail Merge

Při slučování pole pro sloučení obrázků může být někdy nutné ovládat různé vlastnosti obrázku, například [WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/).

V současné době můžete pomocí [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/) nastavit pouze vlastnosti šířky nebo výšky obrázku. K překonání tohoto problému poskytuje Aspose.Words Vlastnost [Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/), která usnadňuje získání plné kontroly nad vloženým obrázkem nebo jakýmkoli jiným tvarem.

Následující příklad kódu ukazuje, jak nastavit různé vlastnosti obrázku:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
