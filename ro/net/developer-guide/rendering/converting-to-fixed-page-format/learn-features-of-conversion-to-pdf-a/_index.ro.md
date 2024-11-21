---
title: Conversia la PDF/A și PDF/UA
second_title: Aspose.Words pentru .NET
articleTitle: Învaţă caracteristicile conversiei în PDF/A şi PDF/UA
linktitle: Învaţă caracteristicile conversiei în PDF/A şi PDF/UA
description: "Conversie în PDF/A-1, PDF/A-2, PDF/A-4 și PDF/UA folosind C#. Alege cel mai bun standard PDF pentru convertirea unui document folosind C#."
type: docs
weight: 25
url: /ro/net/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDF este un format de pagină fix care este foarte popular printre utilizatori și este larg susținut de diverse aplicații, deoarece un document PDF arată același pe orice dispozitiv. Din acest motiv, convertirea în format PDF este o caracteristică importantă a Aspose.Words.

PDF este un format complex în sine, deoarece are o structură de fișier specifică, un model grafic, inserare font și unele funcționalități complexe de ieșire, cum ar fi etichete de structură a documentului, criptare, semnături digitale și formulare editabile. În plus, convertirea unui document într-un fișier PDF necesită mai multe etape de calcul, care sunt complexe și consumatoare de timp.

În articolele următoare vom lua în considerare principalele probleme care pot apărea atunci când lucrăm cu documente în diverse standarde PDF și vom descrie opțiuni pentru rezolvarea lor.

## Care standard PDF Aspose.Words suportă

Aspose.Words permite acum utilizatorilor să lucreze cu formate PDF/A-1, PDF/A-2 și PDF/A-4, precum și cu PDF/UA-1:

* PDF/A-1 are limitări serioase, cum ar fi transparența și unele opțiuni de compresie sunt interzise
* PDF/A-2 elimină unele dintre limitările PDF/A-1, cum ar fi suportul pentru transparență și efecte de strat sau inserarea fonturilor OpenType
* PDF/A-4 presupune niveluri de conformitate revizuite: conformitatea regulată PDF/A-4 este echivalentă cu nivelul U de conformitate al versiunilor anterioare și nivelul A de conformitate este eliminat
* Conținutul PDF/UA-1 trebuie etichetat și standardizat conform ISO 32000-1: 2008

PDF/A este o versiune ISO standardizată a formatului PDF, destinată utilizării în arhivare și stocare pe termen lung a documentelor electronice. În același timp, PDF/UA este o altă ISO versiune standardizată a PDF-ului concepută pentru a asigura accesibilitatea pentru persoanele cu dizabilități care utilizează tehnologii asistive. Pentru a specifica nivelul de respectare a standardelor PDF, folosiți proprietatea [Compliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/compliance/). Din cauza condițiilor de depozitare, documentul PDF/A trebuie să încorporeze toate fonturile și să dezactiveze criptarea, în timp ce PDF/UA trebuie să încorporeze doar toate fonturile.

În această secțiune, vom arunca o privire mai atentă asupra lucrului cu documentele PDF/A sau PDF/UA-1.

## Relevant ISO pentru standardele PDF-ului

Pentru a afla mai multe despre diferitele standarde PDF, verificați următoarele ISO-uri:

* PDF 1.7 = ISO-32000-1: 2008
* PDF 2.0 = ISO-32000-2: 2020
* PDF/A-1 = ISO-19005-1: 2005
* PDF/A-2 = ISO-19005-2: 2011
* PDF/A-4 = ISO-19005-4: 2020
* PDF/UA-1 = ISO-14289: 2014

## Vezi și

* [Convert a Document to PDF](/words/net/convert-a-document-to-pdf/)
* [How to edit document structure tags in Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [How to check or edit text language in Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [How to change text language in Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [How to add alternative text to a shape, picture, chart, SmartArt graphic, or other object in Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [How to add alternate text and supplementary information to tags](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (sau citiți aceleași informații în [Adobe Acrobat User Guide](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [How to set up ActualText entry for text](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) secțiunea "Add Actual Text for an Abbreviated Term, Formula, or Non-Unicode Symbol"
* [Unicode mapping for common Windows symbolic fonts](http://www.alanwood.net/demos/webdings.html)
