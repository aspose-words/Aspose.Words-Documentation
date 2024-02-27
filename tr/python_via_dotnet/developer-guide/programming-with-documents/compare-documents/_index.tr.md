---
title: Python'teki Belgeleri Karşılaştırın
second_title: Python via .NET için Aspose.Words
articleTitle: Belgeleri Karşılaştır
linktitle: Belgeleri Karşılaştır
description: "Desteklenen herhangi bir formattaki iki belgeyi karşılaştırın ve Python kullanarak içerik değişikliklerini gösterin. Karşılaştırma yaparken gelişmiş seçenekleri uygulayabilirsiniz."
type: docs
weight: 60
url: /tr/python-net/compare-documents/
---

Dokümanların karşılaştırılması, iki doküman arasındaki değişiklikleri tespit eden ve değişiklikleri revizyon olarak içeren bir işlemdir. Bu işlem, belirli bir belgenin sürümleri de dahil olmak üzere herhangi iki belgeyi karşılaştırır ve ardından her iki belge arasındaki değişiklikler, ilk belgede revizyonlar olarak gösterilir.

Karşılaştırma yöntemi, kelimelerin karakter düzeyinde veya kelime düzeyinde karşılaştırılmasıyla elde edilir. Bir kelimede en az bir karakter değişikliği varsa, sonuçta fark bir karakterde değil, kelimenin tamamında değişiklik olarak görüntülenecektir. Bu karşılaştırma süreci hukuk ve finans sektörlerinde olağan bir görevdir.

Belgeler arasındaki veya farklı sürümleri arasındaki farkları manuel olarak aramak yerine, belgeleri karşılaştırmak ve biçimlendirme, üstbilgi/altbilgi, tablolar ve daha fazlasında içerik değişiklikleri almak için Aspose.Words'i kullanabilirsiniz.

Bu makalede belgelerin nasıl karşılaştırılacağı ve gelişmiş karşılaştırma özelliklerinin nasıl belirleneceği açıklanmaktadır.

{{% alert color="primary" %}}

**Çevrimiçi deneyin**

[Çevrimiçi belge karşılaştırması](https://products.aspose.app/words/comparison) aracını kullanarak iki belgeyi çevrimiçi olarak karşılaştırabilirsiniz.

Aşağıda açıklanan karşılaştırma yönteminin bu araçta eşit sonuçların alınmasını sağlamak için kullanıldığını unutmayın. Böylece çevrimiçi karşılaştırma aracını veya Aspose.Words'teki karşılaştırma yöntemini kullanarak bile aynı sonuçları elde edersiniz.

{{% /alert %}}

## Sınırlamalar ve Desteklenen Dosya Formatları {#limitations-and-supported-file-formats}

Belgeleri karşılaştırmak çok karmaşık bir özelliktir. Tüm farklılıkları tanımak için analiz edilmesi gereken içerik kombinasyonunun çeşitli parçaları vardır. Bu karmaşıklığın nedeni Aspose.Words'in Microsoft Word karşılaştırma algoritmasıyla aynı karşılaştırma sonuçlarını almayı hedeflemesinden kaynaklanmaktadır.

Karşılaştırılan iki belgenin genel sınırlaması, bu sınırlama Microsoft Word'te mevcut olduğundan, karşılaştırma yöntemini çağırmadan önce düzeltmelerin yapılmaması gerektiğidir.

{{% alert color="primary" %}}

[Desteklenen Belge Formatları](/words/tr/python-net/supported-document-formats/) içindeki herhangi iki belgeyi karşılaştırabileceğinizi unutmayın. Temel olarak, belge nesnelerini karşılaştırabilir ve hatta bu nesneleri belirli bir formata sahip olmadan sıfırdan oluşturabilirsiniz.

{{% /alert %}}

## İki Belgeyi Karşılaştırın {#compare-two-documents}

Belgeleri karşılaştırdığınızda, ikinci belgenin öncekinden farklılıkları, önceki belgenin revizyonları olarak ortaya çıkıyor. Bir belgede değişiklik yaptığınızda, karşılaştırma yöntemini çalıştırdıktan sonra her düzenlemenin kendi revizyonu olacaktır.

Aspose.Words, [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) yöntemini kullanarak belge farklılıklarını belirlemenize olanak tanır; bu, Microsoft Word belge karşılaştırma özelliğine benzer. Yazı tipi değişiklikleri, aralık değişiklikleri, sözcük ve paragraf eklenmesi gibi biçimlendirme değişiklikleri de dahil olmak üzere farklılıkları ve değişiklikleri bulmak için belgeleri veya belge sürümlerini kontrol etmenize olanak tanır.

Karşılaştırma sonucunda belgelerin eşit olup olmadığı belirlenebilir. "Eşit" belgeler terimi, karşılaştırma yönteminin değişiklikleri revizyon olarak temsil edemediği anlamına gelir. Bu, hem belge metninin hem de metin formatının aynı olduğu anlamına gelir. Ancak belgeler arasında başka farklılıklar da olabilir. Örneğin, Microsoft Word yalnızca stiller için format revizyonlarını destekler ve stil ekleme/silme işlemlerini temsil edemezsiniz. Dolayısıyla belgeler farklı stillere sahip olabilir ve [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) yöntemi yine de herhangi bir düzeltme üretmez.

Aşağıdaki kod örneği, iki belgenin eşit olup olmadığının nasıl kontrol edileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

Aşağıdaki kod örneği, `Compare` yönteminin iki belgeye nasıl kolayca uygulanacağını gösterir:

{{< highlight python >}}
# The source document doc1.
doc1 = aw.Document()
builder = aw.DocumentBuilder(doc1)
builder.writeln("This is the original document.")

# The target document doc2.
doc2 = aw.Document()
builder = aw.DocumentBuilder(doc2)
builder.writeln("This is the edited document.")

# If either document has a revision, an exception will be thrown.
if (doc1.revisions.count == 0 and doc2.revisions.count == 0) :
    doc1.compare(doc2, "authorName", datetime.today())

# If doc1 and doc2 are different, doc1 now has some revisions after the comparison, which can now be viewed and processed.
self.assertEqual(2, doc1.revisions.count)

for r in doc1.revisions :
    print(f"Revision type: {r.revision_type}, on a node of type \"{r.parent_node.node_type}\"")
    print(f"\tChanged text: \"{r.parent_node.get_text()}\"")

# All the revisions in doc1 are differences between doc1 and doc2, so accepting them on doc1 transforms doc1 into doc2.
doc1.revisions.accept_all()

# doc1, when saved, now resembles doc2.
doc1.save(docs_base.artifacts_dir + "Document.Compare.docx")
doc1 = aw.Document(docs_base.artifacts_dir + "Document.Compare.docx")
self.assertEqual(0, doc1.revisions.count)
self.assertEqual(doc2.get_text().strip(), doc1.get_text().strip())
{{< /highlight >}}

## Gelişmiş Karşılaştırma Özelliklerini Belirtin {#specify-advanced-comparing-properties}

Belgeleri karşılaştırmak istediğinizde uygulayabileceğiniz [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) sınıfının birçok farklı özelliği vardır.

Örneğin Aspose.Words, orijinal belgedeki belirli nesne türleri için karşılaştırma işlemi sırasında yapılan değişiklikleri göz ardı etmenize olanak tanır. Nesne türü için [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/) ve diğerleri gibi uygun özellikleri `True` olarak ayarlayarak seçebilirsiniz.

Ayrıca Aspose.Words, değişiklikleri karaktere göre mi yoksa kelimeye göre mi izleyeceğinizi belirleyebileceğiniz [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) özelliğini sağlar.

Diğer bir ortak özellik, karşılaştırma değişikliklerinin hangi belgede gösterileceğinin seçimidir. Örneğin, Microsoft Word'teki "Belgeleri karşılaştır iletişim kutusunda" "Değişiklikleri göster" seçeneği bulunur; bu aynı zamanda karşılaştırma sonuçlarını da etkiler. Aspose.Words bu amaca hizmet eden [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) özelliğini sağlar.

Aşağıdaki kod örneği, gelişmiş karşılaştırma özelliklerinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
