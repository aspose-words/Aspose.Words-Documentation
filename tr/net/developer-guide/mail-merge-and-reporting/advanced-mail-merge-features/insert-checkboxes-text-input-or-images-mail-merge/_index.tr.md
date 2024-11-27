---
title: Mail Merge sırasında Checkbox es, Metin Girişi veya Resim ekleyin
second_title: Aspose.Words için .NET
articleTitle: Checkboxes, Metin Girişi veya Resim Ekleme
linktitle: Checkboxes, Metin Girişi veya Resim Ekleme
description: "C# kullanarak Mail Merge sırasında checkbox es veya metin giriş alanları ekleyin. Ayrıca Mail Merge sırasında C# içindeki bir Veritabanından görüntüler ekleyin."
type: docs
weight: 40
url: /tr/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

Birleştirme altyapısı bir belgeyi girdi olarak alır, içindeki `MERGEFIELD` alanları arar ve bunları veri kaynağından elde edilen verilerle değiştirir. Genellikle düz metin ve HTML eklenir, ancak Aspose.Words kullanıcıları Mail Merge alanlar için daha sıra dışı senaryoları işleyen bir belge de oluşturabilir.

Güçlü Aspose.Words işlevi, Mail Merge işlemini genişletmenize olanak tanır:

- mail merge sırasında belgeye checkboxes ve metin giriş formu alanları ekleyin
- herhangi bir özel depolama alanından (dosyalar, BLOB alanlar vb.) Görüntüler ekleyin.)

## Mail Merge sırasında Checkbox es ve Metin Girişi ekleyin

Bazen birleştirme alanında metnin yerine Mail Merge değil, checkbox veya metin giriş alanının geçmesi için bir checkbox işlemi gerçekleştirmek gerekir. Bu en yaygın senaryo olmasa da, bazı görevler için çok kullanışlıdır.

Word belgesinin aşağıdaki ekran görüntüsü, birleştirme alanlarına sahip bir şablonu gösterir:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Aşağıdaki Word belgesinin bu ekran görüntüsü, önceden oluşturulmuş belgeyi gösterir:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Bazı alanların düz metinle değiştirildiğini, bazı alanların checkbox form alanlarıyla değiştirildiğini ve `Subject` alanının bir metin giriş alanıyla değiştirildiğini unutmayın.

{{% /alert %}}

Aşağıdaki kod örneği, bir mail merge sırasında bir belgeye checkbox'lerin nasıl ekleneceğini ve metin alanlarının nasıl girileceğini gösterir.:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## Mail Merge sırasında Resim ekleme

Bir Mail Merge işlemi gerçekleştirirken, özel ımage Mail Merge alanlarını kullanarak veritabanından görüntüleri belgeye ekleyebilirsiniz. Image Mail Merge alanı, Image:MyFieldName adlı bir birleştirme alanıdır.

### Veritabanından Resim Ekleme

Bir mail merge sırasında, bir belgede bir görüntü Mail Merge alanıyla karşılaşıldığında, [FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/) olayı tetiklenir. Belgeye eklenebilmesi için Mail Merge altyapısına bir dosya adı, akış veya görüntü nesnesi döndürmek üzere bu olaya yanıt verebilirsiniz.

Aşağıdaki kod örneği, bir veritabanı BLOB alanında depolanan görüntülerin bir rapora nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### Mail Merge sırasında Görüntü Özelliklerini Ayarlama

Bir görüntü birleştirme alanını birleştirirken, bazen [WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/) gibi çeşitli görüntü özelliklerini kontrol etmeniz gerekebilir.

Şu anda [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/) kullanarak sırasıyla yalnızca görüntü genişliği veya yükseklik özelliklerini ayarlayabilirsiniz. Bu sorunun üstesinden gelmek için Aspose.Words, eklenen görüntü veya başka herhangi bir şekil üzerinde tam kontrol sahibi olmayı kolaylaştıran [Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/) özelliğini sağlar.

Aşağıdaki kod örneği, çeşitli görüntü özelliklerinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
