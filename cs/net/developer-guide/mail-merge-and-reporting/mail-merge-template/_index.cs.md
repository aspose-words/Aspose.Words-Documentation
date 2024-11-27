---
title: Mail Merge šablona v C#
second_title: Aspose.Words pro .NET
articleTitle: Mail Merge šablona
linktitle: Mail Merge šablona
type: docs
description: "Vytvořte šablonu Mail Merge pro definování pevného obsahu ve výstupních dokumentech a poté Vygenerujte slučovací dokumenty pomocí slučovacích polí v C#."
keywords: "create Mail Merge template с#"
weight: 10
url: /cs/net/mail-merge-template/
timestamp: 2024-07-11-08-07-06
---

Je běžné používat šablonu sloučení jako základní dokument pro operaci Mail Merge, pokud se jedná o jednoduchou Mail Merge nebo Mail Merge s oblastmi. Mail merge s regiony je silnější a populárnější než jednoduchý mail merge. Jednoduchý Mail Merge je považován za konkrétní případ Mail Merge s regiony, kde region je celý dokument. Vše je vysvětleno v dalším článku "Typy operací Mail Merge" podrobněji.

Šablona zajišťuje správné formátování textu ve výstupním sloučeném dokumentu a operace Mail Merge zaručuje správné zadání textu ze zdroje dat do šablony sloučení.

Aspose.Words poskytuje možnost Vytvořit šablonu Mail Merge pro definování pevného obsahu a poté generovat slučovací dokumenty pomocí slučovacích polí. Šablona sloučení tedy bude mít potřebný text, který je stejný ve všech výstupních dokumentech, a pole sloučení pro vyplnění měnícího se obsahu. V důsledku toho budou informace ze zadaného zdroje dat přidány do šablony sloučení prostřednictvím těchto polí během generování sloučeného dokumentu.

## Co je Mail Merge šablona

Šablona Mail Merge je personalizovaný dokument, který obsahuje pevná data a sloučená pole, kde má být text proměnné. Šablona sloučení může být v libovolném formátu, který podporuje pole, například, DOC, DOCX, DOT, DOTX, RTF. Kromě toho můžete také použít šablonu mustache, která je podrobněji vysvětlena v článku "syntaxe šablonyMustache".

Šablonu sloučení můžete vytvořit jako model pro nové dokumenty a měla by obsahovat hlavní text, který musí být stejný pro každou verzi sloučeného dokumentu. Přidání slučovacích polí do šablony bude představovat personalizační data, jako jsou jména nebo adresy, které jsou načteny ze zdroje dat. Operace Mail Merge automaticky vloží personalizační data ze zdroje dat do dokumentu šablony sloučení.

Kromě toho můžete do šablony přidat oblast Mail Merge vložením dvou polí Mail Merge pro označení začátku a konce oblasti pošty. Další článek "Typy operací Mail Merge" to vysvětluje podrobněji.

## Vytvořte šablonu Mail Merge

Můžete vytvořit šablonu a přidat do ní konkrétní slučovací pole, která budou nahrazena hodnotami ze zdroje dat buď ručně, například pomocí Microsoft Word, nebo programově pomocí Aspose.Words. V tomto článku se podíváme na programový způsob vytváření šablony.

Pomocí třídy [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) vytvořte požadovanou šablonu sloučení pomocí Aspose.Words. Do takové šablony můžete zahrnout text, slučovací pole a zalomení řádku pomocí metod [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) a [InsertParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertparagraph/).

Následující příklad kódu ukazuje, jak vytvořit šablonu Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "create-mail-merge-template.cs" >}}

Obrázek níže ukazuje vytvořenou šablonu:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Přizpůsobení vlastností šablony Mail Merge

Aspose.Words umožňuje přizpůsobit šablonu pomocí mnoha vlastností. Přizpůsobení šablony bude popsáno níže na příkladu přizpůsobení některých vlastností obrázků a textu.

### Přizpůsobte Vlastnosti Obrázku

Vlastnosti obrázku můžete určit pomocí třídy [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/). Všimněte si, že můžete vložit obrázek z databáze, jak je popsáno v [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L214).

Následující příklad kódu ukazuje, jak zadat název souboru obrázku a velikost obrázku:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "image-field-merging.cs" >}}

### Přizpůsobení Vlastností Textu

Vlastnost [Text](https://reference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs/text/) můžete použít k vložení textu do dokumentu pro aktuální pole sloučení. Můžete také změnit formátování textů a odstavců uvnitř šablony pomocí tříd [Font](https://reference.aspose.com/words/net/aspose.words/font/) a [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/). Text, který se má vložit před nebo za pole sloučení, můžete zpracovat pomocí vlastností [TextBefore](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textbefore/) a [TextAfter](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textafter/), které jsou součástí třídy [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/).

Následující příklad kódu ukazuje, jak vložit zaškrtávací políčka nebo HTML během operace Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

Můžete také zkontrolovat implementaci třídy `HandleMergeField` z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/828b58e207e96afa624956867ec9c777fa10af87/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L43).

{{% /alert %}}

## Vidět

* Pro více informací o tom, jak vytvořit šablony v Microsoft Word ručně, zkontrolujte prosím [Vytvoření šablony](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) článek v dokumentaci Microsoft
