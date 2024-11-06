---
title: Conversia documentului în HTML
second_title: Aspose.Words pentru Python via .NET
articleTitle: Conversia unui Document în HTML, MHTML sau EPUB
linktitle: Conversia unui Document în HTML, MHTML sau EPUB
description: "Convertiți un document din aproape orice format în HTML sau MHTML, precum și în format EPUB folosind Python. De asemenea, puteți specifica opțiunile de salvare pentru gestionarea documentului de ieșire."
type: docs
weight: 20
url: /ro/python-net/convert-a-document-to-html-mhtml-or-epub/
---

Documentele în formatele de aspect de flux HTML și MHTML sunt, de asemenea, foarte populare și pot fi utilizate pe orice platformă web. Din acest motiv, conversia documentelor în HTML și MHTML este o caracteristică importantă a Aspose.Words.

EPUB (abreviere pentru "publicare electronică") este un format bazat pe HTML utilizat în mod obișnuit pentru distribuția de cărți electronice. Acest format este complet acceptat în Aspose.Words pentru exportul de cărți electronice care sunt compatibile cu majoritatea dispozitivelor de citire.

## Conversia unui Document

Pentru conversia simplă în HTML, MHTML sau EPUB, se utilizează una dintre supraîncărcările metodei [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Puteți salva documentul într-un fișier sau flux și puteți seta în mod explicit formatul de salvare a documentului de ieșire sau îl puteți defini din extensia Nume fișier.

Următorul exemplu arată cum să convertiți DOCX în HTML cu specificarea unui format de salvare:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Pentru a converti un document în MHTML sau EPUB, Utilizați [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) sau, respectiv, [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub).

## Convertiți un Document cu informații dus-întors

Formatul HTML nu acceptă multe caracteristici Microsoft Word și, dacă trebuie să restaurăm un model de document cât mai aproape de original, trebuie să salvăm câteva informații suplimentare în fișierul HTML. Astfel de informații se mai numesc și "informații dus-întors". În acest scop, Aspose.Words oferă posibilitatea de a exporta informații dus-întors atunci când salvați în HTML, MHTML sau EPUB folosind proprietatea **export_roundtrip_information**. Salvarea informațiilor dus-întors permite restaurarea proprietăților documentului, cum ar fi File, comentarii, anteturi și subsoluri în timpul încărcării documentelor formatelor listate înapoi într-un obiect [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Valoarea implicită este *True* pentru HTML și *False* pentru MHTML și EPUB:

- Când *True*, informațiile dus-întors sunt exportate ca - aw - * CSS proprietăți ale elementelor HTML corespunzătoare
- Când *False*, nu există informații dus-întors care să fie afișate în fișierele produse

Următorul exemplu de cod arată cum să exportați informații dus-întors atunci când convertiți un document din DOCX în HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Specificați opțiunile de salvare la conversia în HTML

Aspose.Words permite conversia unui document Word în HTML folosind opțiuni de salvare implicite sau personalizate. Câteva exemple de opțiuni de salvare personalizate sunt descrise mai jos.

### Specificați un Folder pentru economisirea resurselor

Folosind Aspose.Words putem specifica un folder fizic în care toate resursele, cum ar fi imaginile, fonturile și CSS extern, sunt salvate atunci când un document este convertit în HTML. În mod implicit, acesta este un șir gol.

Specificarea proprietății [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) este cel mai simplu mod de a seta folderul în care ar trebui scrise toate resursele. Putem folosi proprietăți individuale, cum ar fi [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) care salvează fonturile în folderul specificat și [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) care salvează imagini într-un folder specificat. Când este specificată o cale relativă, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) și [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) se referă la folderul în care se află ansamblul de cod, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) și [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) se referă la folderul de ieșire în care se află documentul HTML.

În acest exemplu, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) specifică calea relativă. Această cale se referă la folderul de ieșire în care este salvat documentul HTML. Valoarea proprietății [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) este utilizată pentru a crea URLs pentru toate resursele.

Următorul exemplu de cod arată cum să lucrați cu aceste proprietăți:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Folosind proprietatea [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/), putem specifica și numele folderului folosit pentru a construi URIs din toate resursele scrise într-un document HTML. Acesta este cel mai simplu mod de a specifica modul în care URIs ar trebui generat pentru toate fișierele de resurse. Aceleași informații pot fi specificate pentru imagini și fonturi separat prin proprietățile [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) și, respectiv, [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/).

Cu toate acestea, nu există proprietate individuală pentru CSS. Comportamentul [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) și proprietățile [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) nu sunt modificate. Rețineți că proprietatea [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) este utilizată atât pentru specificarea numelui folderului, cât și a numelui fișierului.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) are prioritate mai mică decât folderele specificate prin [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) și [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). Dacă folderul specificat în [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) nu există, acesta va fi creat automat.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) are o prioritate mai mică decât [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) și [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). Dacă [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) este gol, valoarea proprietății [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) va fi utilizată pentru a crea resursa URIs. Dacă [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) este setat la "." (punct), resursa URIs va conține doar nume de fișiere fără a specifica o cale.

### Export Base64 Codificare Fonturi Resurse

Aspose.Words oferă posibilitatea de a specifica dacă resursele de font ar trebui să fie încorporate în HTML în codificările Base64. Pentru a efectua acest lucru, utilizați proprietatea [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) – Aceasta este o extensie a proprietății [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/). În mod implicit, valoarea sa este *False*, iar fonturile sunt scrise în fișiere separate. Dar dacă această opțiune este setată la *True*, fonturile vor fi încorporate în documentul CSS în codificarea Base64. Proprietatea [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) afectează doar formatul HTML și nu afectează EPUB și MHTML.

Următorul exemplu de cod arată cum să exportați fonturile codificate Base64 în HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Specificați opțiunile de salvare la conversia în EPUB

Aspose.Words permite conversia unui document Word în format EPUB folosind opțiuni de salvare implicite sau personalizate. Puteți specifica un număr de opțiuni trecând o instanță de [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) la metoda [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/).

Următorul exemplu de cod arată cum se convertește un document Word în EPUB cu specificarea unor opțiuni de salvare personalizate:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

