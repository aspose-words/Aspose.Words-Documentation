---
title: Metin Belgesiyle Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Metin Belgesiyle Çalışmak
linktitle: Metin Belgesiyle Çalışmak
description: "Python'i kullanarak bir metin belgesiyle çalışın ve nesnelerini değiştirin."
type: docs
weight: 430
url: /tr/python-net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

Bu yazıda Aspose.Words aracılığıyla bir metin belgesiyle çalışmak için hangi seçeneklerin yararlı olabileceğini öğreneceğiz. Lütfen bunun mevcut seçeneklerin tam bir listesi olmadığını, yalnızca bazılarıyla çalışmanın bir örneği olduğunu unutmayın.

## Çift Yönlü İşaretler Ekle

Düz metin biçiminde dışa aktarırken her Çift Yönlü çalıştırmadan önce çift yönlü işaretlerin eklenip eklenmeyeceğini belirlemek için [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) özelliğini kullanabilirsiniz. Aspose.Words, metindeki her iki yönlü [Run](https://reference.aspose.com/words/python-net/aspose.words/run/)'in önüne 'SAĞDAN SOL İŞARETİ' (U+200F) Unicode Karakterini ekler. Bu seçenek, Düz Metin formatına dışa aktardığınızda MS Word Dosya Dönüştürme iletişim kutusundaki "Çift yönlü işaretler ekle" seçeneğine karşılık gelir. Yalnızca MS Word'e Arapça veya İbranice düzenleme dillerinden herhangi birinin eklenmesi durumunda diyalogda görüneceğini unutmayın.

Aşağıdaki kod örneği [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) özelliğinin nasıl kullanılacağını gösterir. Bu özelliğin varsayılan değeri `False`'dir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## TXT Yükleme Sırasında Liste Öğelerini Tanı

Aspose.Words, bir metin dosyasının liste öğesini, belge nesne modelinde liste numaraları veya düz metin olarak içe aktarabilir. [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) özelliği, bir belge düz metin formatından içe aktarıldığında numaralı liste öğelerinin nasıl tanınacağını belirtmenize olanak tanır:

* Bu seçenek `True` olarak ayarlanırsa boşluklar aynı zamanda liste numarası sınırlayıcıları olarak da kullanılır: Arapça stil numaralandırma için liste tanıma algoritması (1., 1.1.2.) hem boşlukları hem de nokta (".") sembollerini kullanır.
* Bu seçenek `False` olarak ayarlanırsa, liste numaraları nokta, sağ köşeli parantez veya madde işareti sembolleriyle ("•", "*", "-" veya "o" gibi) bittiği zaman, liste tanıma algoritması liste paragraflarını algılar.

Aşağıdaki kod örneği bu özelliğin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## TXT Yükleme Sırasında Öndeki ve Sondaki Boşlukları İşleyin

TXT dosyası yüklenirken baştaki ve sondaki boşlukların işlenme şeklini kontrol edebilirsiniz. Öndeki boşluklar kesilebilir, korunabilir veya girintiye dönüştürülebilir ve arkadaki boşluklar kesilebilir veya korunabilir.

Aşağıdaki kod örneği, TXT dosyasını içe aktarırken öndeki ve sondaki boşlukların nasıl kırpılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Belge Metin Yönünü Algıla

Aspose.Words, belgedeki metin yönünü (RTL/LTR) algılamak için [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) sınıfında [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) özelliğini sağlar. Bu özellik, [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/) numaralandırmasında sağlanan belge metni yönlerini ayarlar veya alır. Varsayılan değer soldan sağadır.

Aşağıdaki kod örneği, TXT dosyasını içe aktarırken belgenin metin yönünün nasıl algılanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## TXT Çıkışında Üstbilgi ve Altbilgiyi Dışa Aktarma

Çıkış TXT belgesinde üstbilgi ve altbilgiyi dışa aktarmak istiyorsanız [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/) özelliğini kullanabilirsiniz. Bu özellik, üstbilgilerin ve altbilgilerin düz metin biçimine nasıl aktarılacağını belirtir.

Aşağıdaki kod örneği, üstbilgilerin ve altbilgilerin düz metin biçimine nasıl aktarılacağını gösterir:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## Çıkış TXT'sinde Liste Girintisini Dışa Aktarma

Aspose.Words, düz metin biçimine dışa aktarırken liste düzeylerinin nasıl girintili olacağını belirtmeye olanak tanıyan [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) sınıfını tanıttı. [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/) ile çalışırken, liste düzeylerini girintilemek için kullanılacak karakteri belirtmek ve bir liste düzeyi başına girinti olarak kaç karakter kullanılacağını belirten sayıyı belirtmek için [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) özelliği sağlanır. Karakter özelliğinin varsayılan değeri '\0' olup girinti olmadığını gösterir. Count özelliği için varsayılan değer 0'dır, bu da girinti olmadığı anlamına gelir.

### Sekme Karakterini Kullanma

Aşağıdaki kod örneği, sekme karakterlerini kullanarak liste düzeylerinin nasıl dışarı aktarılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Boşluk Karakterini Kullanma

Aşağıdaki kod örneği, boşluk karakterlerini kullanarak liste düzeylerinin nasıl dışarı aktarılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

