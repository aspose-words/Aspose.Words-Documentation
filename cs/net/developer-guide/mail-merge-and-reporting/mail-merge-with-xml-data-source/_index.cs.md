---
title: Mail Merge S XML zdrojem dat v C#
second_title: Aspose.Words pro .NET
articleTitle: Mail Merge S XML zdrojem dat
linktitle: Mail Merge S XML zdrojem dat
type: docs
description: "Při provádění operace Mail Merge použijte různé zdroje dat, včetně souboru XML pomocí C#. Hlavní výhodou použití XML je schopnost definovat hierarchii přímo v dokumentu."
keywords: "mail merge xml data source c#"
weight: 30
url: /cs/net/mail-merge-with-xml-data-source/
timestamp: 2024-07-11-08-07-06
---

Při provádění operace Mail Merge můžete použít různé zdroje dat, včetně souboru XML. Hlavní výhodou použití XML je možnost definovat hierarchii přímo v dokumentu a poté ji jednoduše předat Aspose.Words.

Tento článek popisuje, jak číst data ze souboru XML spíše než přímo z databáze, a zahrnuje XML jako zdroj dat pro provedení operace Mail Merge.

## Výhody XML jako zdroje dat

XML zdroje dat jsou velmi užitečné pro ukládání dat bez režie databáze. Jsou skvělé pro offline aplikace, kde uživatelé potřebují přidávat, upravovat a mazat data, když se nemohou připojit k databázi.

XML data mohou být dobrou alternativou zdroje dat k relačním databázím, zejména pokud pracujete s webovými aplikacemi. Většina webových služeb používá XML k výměně informací. Na současném trhu se aktivně používají databáze orientované na XML a vývojáři relačních databází přidávají ke svým produktům kompatibilitu XML, aby měli návratnost databáze XML.

Protože XML ukládá data ve formátu prostého textu, je úložiště nezávislé na platformě. Data lze tedy snadno exportovat, importovat nebo jednoduše přesouvat. XML je populární jako zdroj dat, protože nabízí způsob, jak zachovat sémantický význam dat při komunikaci mezi různými aplikacemi.

## Vyplnění šablony sloučení daty z XML Pomocí DataSet

XML je univerzální standard pro výměnu dat a formáty dokumentů Microsoft Word jsou nejoblíbenějšími formáty pro šablony Mail Merge. Proto se schopnost spustit Mail Merge ze souboru XML do dokumentu šablony Word stala běžným požadavkem.

Microsoft Word neposkytuje přímou metodu pro práci s daty XML jako zdrojem dat pro operaci Mail Merge, zatímco Aspose.Words umožňuje provádět operaci Mail Merge s daty ze zdroje dat XML. Pamatujte, že strukturu dokumentu XML lze také měnit a data budou stále správně čtena. To umožňuje snadné sloučení různých typů dokumentů XML.

Pomocí metody `ReadXML` načtěte schéma a data XML do objektu `DataSet`. Tento objekt je pak použit jako zdroj dat pro mail merge.

{{% alert color="primary" %}}

Stejné šablony můžete použít pro různé zdroje dat.

{{% /alert %}}

Následující XML obsahuje data potřebná k vyplnění šablony sloučení:

{{< highlight csharp >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

Následující příklad kódu ukazuje, jak načíst data XML do DataSet a poté je použít jako zdroj dat:

{{< gist "aspose-words-gists" "0441f68c5209fec25c47d1a0a203fbb0" "xml-mail-merge.cs" >}}

{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

Rozdíl mezi šablonou si můžete všimnout před provedením operace Mail Merge:

<img src="fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset" style="width:250px"/>

A po provedení operace Mail Merge:

<img src="fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml" style="width:285px"/>
