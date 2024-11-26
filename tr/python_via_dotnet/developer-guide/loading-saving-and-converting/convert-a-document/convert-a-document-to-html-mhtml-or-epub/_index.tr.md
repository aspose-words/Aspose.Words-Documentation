---
title: Belgeyi HTML'ye Dönüştür
second_title: Python via .NET için Aspose.Words
articleTitle: Bir Belgeyi HTML, MHTML veya EPUB'a Dönüştürme
linktitle: Bir Belgeyi HTML, MHTML veya EPUB'a Dönüştürme
description: "Python'i kullanarak bir belgeyi hemen hemen her formattan HTML veya MHTML'ye ve ayrıca EPUB formatına dönüştürün. Çıktı belgesini yönetmek için kaydetme seçeneklerini de belirleyebilirsiniz."
type: docs
weight: 20
url: /tr/python-net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-01-27-14-07-04
---

HTML ve MHTML akış düzeni formatlarındaki belgeler de oldukça popülerdir ve herhangi bir web platformunda kullanılabilir. Bu nedenle belgeleri HTML ve MHTML'ye dönüştürmek Aspose.Words'in önemli bir özelliğidir.

EPUB ("Elektronik Yayın"ın kısaltması), elektronik kitap dağıtımı için yaygın olarak kullanılan HTML tabanlı bir formattır. Bu format, çoğu okuma cihazıyla uyumlu elektronik kitapların dışa aktarımı için Aspose.Words'te tam olarak desteklenir.

## Belgeyi Dönüştür

HTML, MHTML veya EPUB'a basit dönüşüm için [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) yöntemi aşırı yüklemelerinden biri kullanılır. Belgeyi bir dosyaya veya akışa kaydedebilir ve çıktı belgesi kaydetme biçimini açıkça ayarlayabilir veya bunu dosya adı uzantısından tanımlayabilirsiniz.

Aşağıdaki örnek, bir kaydetme formatı belirterek DOCX'in HTML'ye nasıl dönüştürüleceğini gösterir:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Bir belgeyi MHTML veya EPUB'a dönüştürmek için sırasıyla [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) veya [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub)'yi kullanın.

## Gidiş Dönüş Bilgilerini İçeren Bir Belgeyi Dönüştürme

HTML formatı pek çok Microsoft Word özelliğini desteklemez ve bir belge modelini orijinaline mümkün olduğunca yakın bir şekilde geri yüklememiz gerekirse, HTML dosyasına bazı ekstra bilgiler kaydetmemiz gerekir. Bu tür bilgilere "gidiş-dönüş bilgileri" de denir. Bu amaçla Aspose.Words, **Export_roundtrip_information** özelliğini kullanarak HTML, MHTML veya EPUB'a kaydederken gidiş-dönüş bilgilerini dışa aktarma olanağı sağlar. Gidiş dönüş bilgilerinin kaydedilmesi, listelenen biçimlerdeki belgelerin bir [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) nesnesine geri yüklenmesi sırasında sekmeler, yorumlar, üstbilgiler ve altbilgiler gibi belge özelliklerinin geri yüklenmesine olanak tanır.

Varsayılan değer HTML için *True*, MHTML ve EPUB için *False*'dir:

- *True* olduğunda, gidiş-dönüş bilgileri ilgili HTML öğelerinin - aw - * CSS özellikleri olarak dışa aktarılır
- *False* olduğunda, üretilen dosyalara çıkacak gidiş-dönüş bilgisi yoktur

Aşağıdaki kod örneği, bir belgeyi DOCX'ten HTML'ye dönüştürürken gidiş-dönüş bilgilerinin nasıl dışarı aktarılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

{{% /alert %}}

## HTML'ye Dönüştürme Sırasında Kaydetme Seçeneklerini Belirleyin

Aspose.Words, varsayılan veya özel kaydetme seçeneklerini kullanarak bir Word belgesini HTML'ye dönüştürmenize olanak tanır. Aşağıda özel kaydetme seçeneklerine ilişkin birkaç örnek açıklanmaktadır.

### Kaynakları Kaydetmek İçin Bir Klasör Belirtin

Aspose.Words'i kullanarak, bir belge HTML'ye dönüştürüldüğünde resimler, yazı tipleri ve harici CSS gibi tüm kaynakların kaydedildiği fiziksel bir klasör belirtebiliriz. Varsayılan olarak bu boş bir dizedir.

[resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) özelliğini belirtmek, tüm kaynakların yazılması gereken klasörü ayarlamanın en basit yoludur. Yazı tiplerini belirtilen klasöre kaydeden [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) ve görüntüleri belirli bir klasöre kaydeden [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) gibi bireysel özellikleri kullanabiliriz. Göreli bir yol belirtildiğinde, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) ve [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) kod derlemesinin bulunduğu klasörü, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) ve [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) ise HTML belgesinin bulunduğu çıktı klasörünü belirtir.

Bu örnekte [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) göreceli yolu belirtir. Bu yol, HTML belgesinin kaydedildiği çıktı klasörünü ifade eder. [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) özelliğinin değeri, tüm kaynaklara yönelik URL'ler oluşturmak için kullanılır.

Aşağıdaki kod örneği bu özelliklerle nasıl çalışılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

[resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) özelliğini kullanarak, bir HTML belgesine yazılan tüm kaynakların URI'lerini oluşturmak için kullanılan klasörün adını da belirtebiliriz. Bu, tüm kaynak dosyaları için URI'lerin nasıl oluşturulması gerektiğini belirtmenin en basit yoludur. Aynı bilgiler resimler ve yazı tipleri için sırasıyla [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) ve [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) özellikleri aracılığıyla ayrı ayrı belirtilebilir.

Ancak CSS'nin bireysel bir özelliği yoktur. [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) ve [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) özelliklerinin davranışı değişmedi. [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) özelliğinin hem klasör adını hem de dosya adını belirtmek için kullanıldığını unutmayın.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/), [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) ve [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) yoluyla belirtilen klasörlerden daha düşük önceliğe sahiptir. [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/)'te belirtilen klasör mevcut değilse otomatik olarak oluşturulacaktır.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/)'in önceliği [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) ve [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/)'den daha düşüktür. [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) boşsa kaynak URI'leri oluşturmak için [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) özelliğinin değeri kullanılacaktır. [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) "." olarak ayarlanmışsa. (nokta), kaynak URI'leri bir yol belirtmeden yalnızca dosya adlarını içerecektir.

### Base64 Kodlama Yazı Tipleri Kaynaklarını Dışa Aktarma

Aspose.Words, yazı tipi kaynaklarının Base64 kodlamalarında HTML'ye gömülüp gömülmeyeceğini belirtme yeteneği sağlar. Bunu gerçekleştirmek için [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) özelliğini kullanın; bu, [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/) özelliğinin bir uzantısıdır. Varsayılan olarak değeri *False*'tir ve yazı tipleri ayrı dosyalara yazılır. Ancak bu seçenek *True* olarak ayarlanırsa yazı tipleri, Base64 kodlamasında belgenin CSS'sine eklenecektir. [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) özelliği yalnızca HTML biçimini etkiler ve EPUB ve MHTML'yi etkilemez.

Aşağıdaki kod örneği, Base64 kodlu yazı tiplerinin HTML'ye nasıl aktarılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## EPUB'a Dönüştürme Sırasında Kaydetme Seçeneklerini Belirleyin

Aspose.Words, varsayılan veya özel kaydetme seçeneklerini kullanarak bir Word belgesini EPUB formatına dönüştürmenize olanak tanır. Bir [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) örneğini [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) yöntemine ileterek bir dizi seçeneği belirleyebilirsiniz.

Aşağıdaki kod örneği, bazı özel kaydetme seçeneklerini belirterek bir Word belgesinin EPUB'a nasıl dönüştürüleceğini gösterir:

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

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

{{% /alert %}}

