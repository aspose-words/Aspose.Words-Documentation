---
title: Naam producent in uitvoer
second_title: Aspose.Words voor Java
articleTitle: Generator of producentnaam opgenomen in uitvoerdocumenten
linktitle: Generator of producentnaam opgenomen in uitvoerdocumenten
description: "Aspose.Words voor Java voeg aan het document de naam van de generator en versienummer dat werd gebruikt om het te maken. Deze gegevens kunnen worden gevonden in het document op manieren die afhankelijk zijn van de uitvoer bestandsformaat."
type: docs
weight: 70
url: /nl/java/generator-or-producer-name-included-in-output-documents/
timestamp: 2024-10-21-11-17-44
---

U kunt gemakkelijk weten of een document wordt geproduceerd met behulp van Aspose.Words voor Java. U kunt ook het versienummer van Aspose.Words voor Java dat werd gebruikt om een bepaald uitvoerdocument aan te maken. Aspose.Words schrijft deze informatie rechtstreeks in het gegenereerde document.

Het versienummer wordt opgegeven in het formaat *YY.MM.N* of *YY.M.N*, bijvoorbeeld 23.12.0 of 24.1.0.<br/>
Hier. *YY* de laatste twee cijfers van het releasejaar, *M* of *MM* de releasemaand (1 *N* het kleine releasenummer. Meestal, *N* is "0."

{{% alert color="primary" %}}

Merk op dat u niet kunt instrueren Aspose.Words deze informatie uit uitvoerdocumenten te wijzigen of te verwijderen.

{{% /alert %}}

Afhankelijk van de output bestandsindeling, de volgende tabel toont de manieren die u kunt gebruiken om de generator naam en versie nummer kennen.

| OpslaanFormat Waarde | Tekenreeks, commentaar of veld Geschreven in het bestand | Hoe te vinden |
|  :-  |  :-  |  :-  |
|  `Doc`  | `AWJ.YY.M.N`<br/>Bijvoorbeeld,<br/>`AWJ.24.1.0` | DOC gegenereerd door Aspose.Words wordt 8 bytes geschreven. U kunt het controleren door het bestand te openen in een binaire editor. |
|  `Dot`  | `AWJ.YY.M.N`<br/>Bijvoorbeeld,<br/>`AWJ.24.1.0` | DOT gegenereerd door Aspose.Words wordt 8 bytes geschreven. U kunt het controleren door het bestand te openen in een binaire editor. |
|  `Docx`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | Het bestand hernoemen als .zip. Pak de ZIP. Open ~/Word/Document.xml om dit commentaar te zien. |
|  `Docm`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | Het bestand hernoemen als .zip. Pak de ZIP. Open ~/Word/Document.xml om dit commentaar te zien. |
|  `Dotx`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | Het bestand hernoemen als .zip. Pak de ZIP. Open ~/Document.xml om dit commentaar te zien. |
|  `Dotm`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | Het bestand hernoemen als .zip. Pak de ZIP. Open ~/Word/Document.xml om dit commentaar te zien. |
|  `FlatOpc`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .xml bestand bevat dit commentaar. U kunt het openen in Notepad om dit commentaar te zien. |
|  `FlatOpcMacroEnabled`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .xml bestand bevat dit commentaar. U kunt het openen in Notepad om dit commentaar te zien. |
|  `FlatOpcTemplate`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .xml bestand bevat dit commentaar. U kunt het openen in Notepad om dit commentaar te zien. |
|  `FlatOpcTemplateMacroEnabled`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .xml bestand bevat dit commentaar. U kunt het openen in Notepad om dit commentaar te zien. |
|  `Rtf`  | `{0}`<br/>Bijvoorbeeld,<br/>`{\*\generator Aspose.Words for Java 24.1.0;}` | .rtf bestand bevat dit commentaar. U kunt het openen in Notepad om dit commentaar te zien. |
|  `WordML`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .xml bestand bevat dit commentaar. U kunt het openen in Notepad om dit commentaar te zien. |
|  Pdf | <ul><li>**Toepassing:** Aspose.Words</li><li>**PDF Producent:** `Aspose.Words for Java YY.M.N`, bijvoorbeeld,<br/>`Aspose.Words for Java 24.1.0`</li></ul> | ![todo:image_alt_text](/words/java/generator-or-producer-name-included-in-output-documents/generator-or-producer-name-included-in-output-documents_1) |
|  `Xps`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | Het bestand hernoemen als .zip. Pak de ZIP. In XPS dit commentaar is te vinden in ~/Documenten/1/Pages/1.fpage |
|  `XamlFixed`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` |  .xml bestand bevat dit commentaar. U kunt het openen in Notepad om dit commentaar te zien |
|  `Svg`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` |  .xml bestand bevat dit commentaar. U kunt het openen in Notepad om dit commentaar te zien |
|  `HtmlFixed`  |  `<meta name="generator" content="Aspose.Words for Java YY.M.N" />`<br/>Bijvoorbeeld,<br/>`meta name="generator" content="Aspose.Words for Java 24.1.0" />` |  HTML-bestand bevat deze tag. U kunt het openen in Notepad om te zien |
|  `OpenXps`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | Het bestand hernoemen als .zip. Pak de ZIP. In OpenXps is dit commentaar te vinden in ~/Documenten/1/Pages/1.fpage |
|  `Ps`  | `%Generated by Aspose.Words for Java YY.M.N`<br/>Bijvoorbeeld,<br/>`%Generated by Aspose.Words for Java 24.1.0` | .ps bestand bevat dit commentaar. U kunt het openen in Notepad om dit commentaar te zien. |
|  `Pcl`  |  –  |  –  |
|  `Html`  |  `<meta name="generator" content="Aspose.Words for Java YY.M.N" />`<br/>Bijvoorbeeld,<br/>`meta name="generator" content="Aspose.Words for Java 24.1.0" />` | HTML-bestand bevat deze tag. U kunt het openen in Notepad om te zien. |
|  `Mhtml`  |  `<meta name="generator" content="Aspose.Words for Java YY.M.N" />`<br/>Bijvoorbeeld,<br/>`meta name="generator" content="Aspose.Words for Java 24.1.0" />` | MHTML-bestand bevat dit label. U kunt het openen in Notepad om te zien. |
|  `Epub`  |  `<meta name="generator" content="Aspose.Words for Java YY.M.N" />`<br/>Bijvoorbeeld,<br/>`meta name="generator" content="Aspose.Words for Java 24.1.0" />` | Het bestand hernoemen als .zip. Pak de ZIP. Ga naar ~/OEBPS/<file_name>.html. |
|  `Odt`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | Het bestand hernoemen als .zip. Pak de ZIP. Controleer het in ~/content.xml |
|  `Ott`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | Het bestand hernoemen als .zip. Pak de ZIP. Controleer het in ~/content.xml |
|  `Text`  |  –  |  –  |
|  `XamlFlow`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` |  .xml bestand bevat dit commentaar. U kunt het openen in Notepad om dit commentaar te zien |
|  `XamlFlowPack`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>Bijvoorbeeld,<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` |  .xml bestand bevat dit commentaar. U kunt het openen in Notepad om dit commentaar te zien |
|  `Markdown`  |  –  |  –  |
|  `Tiff`  |  –  |  –  |
|  `Png`  |  –  |  –  |
|  `Bmp`  |  –  |  –  |
|  `Emf`  |  –  |  –  |
|  `Jpeg`  |  –  |  –  |
|  `Gif`  |  –  |  –  |

{{% alert color="primary" %}}

Ook is er een aanvulling op de varianten in de tabel. Het versienummer van Aspose.Words kan op meerdere plaatsen worden geschreven voor sommige formaten. Het hangt af van de exportinstellingen.

Deze bijkomende situaties worden in bovenstaande tabel niet beschreven.

{{% /alert %}}

