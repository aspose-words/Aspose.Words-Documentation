---
title: Sokmak Checkboxes, Metin Girişi veya Görüntüler sırasında Mail Merge
second_title: Aspose.Words için C++
articleTitle: Sokmak Checkboxes, Metin Girişi veya Resimler
linktitle: Sokmak Checkboxes, Metin Girişi veya Resimler
description: "Sırasında onay kutuları veya metin giriş alanları ekleyin Mail Merge kullanım C++. Ayrıca sırasında bir Veritabanından görüntüler ekleyin Mail Merge içinde C++."
type: docs
weight: 40
url: /tr/cpp/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Birleştirme motoru bir belgeyi girdi olarak alır, arar `MERGEFIELD` içindeki alanları ve bunları veri kaynağından elde edilen verilerle değiştirir. Genellikle düz metin ve HTML eklenir, ancak Aspose.Words kullanıcılar ayrıca aşağıdakiler için daha sıra dışı senaryoları işleyen bir belge oluşturabilir mail merge alanlar.

Güçlü Aspose.Words işlevsellik genişletmenizi sağlar mail merge süreç:

- belgeye onay kutuları ve metin giriş formu alanları ekleme mail merge
- herhangi bir özel depolama alanından (dosyalar) resim ekleme, BLOB alanlar vb.)

## Sokmak Checkboxsırasında es ve Metin Girişi Mail Merge

Bazen bir işlem yapmak gerekir mail merge birleştirme alanında metnin yerine geçmeyecek şekilde değil, bir onay kutusu veya metin giriş alanı olacak şekilde işlem yapın. Bu en yaygın senaryo olmasa da, bazı görevler için çok kullanışlıdır.

Word belgesinin aşağıdaki ekran görüntüsünde birleştirme alanlarına sahip bir şablon gösterilmektedir:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Aşağıdaki Word belgesinin bu ekran görüntüsü, önceden oluşturulmuş belgeyi gösterir:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Bazı alanların düz metinle değiştirildiğini, bazı alanların onay kutusu form alanlarıyla değiştirildiğini ve `Subject` alan bir metin giriş alanı ile değiştirildi.

{{% /alert %}}

Aşağıdaki kod örneği, bir belgeye onay kutularının nasıl ekleneceğini ve metin alanlarının nasıl girileceğini gösterir. mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-HandleMergeField.cpp" >}}

## Sırasında Resim ekleme Mail Merge

Bir performans gösterirken mail merge işlem, özel görüntü kullanarak veritabanından görüntüleri belgeye ekleyebilirsiniz mail merge alanlar. Görüntü mail merge alan, Resim adlı bir birleştirme alanıdır:MyFieldName.

### Veritabanından Resim Ekleme

Bir sırasında mail merge, bir görüntü olduğunda mail merge bir belgede alanla karşılaşıldığında, [FieldMergingCallback](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_fieldmergingcallback/) olay kovuldu. Bir dosya adı, akış veya görüntü nesnesi döndürmek için bu olaya yanıt verebilirsiniz. mail merge motor, böylece belgeye eklenebilir.

Aşağıdaki kod örneği, bir veritabanında depolanan görüntülerin nasıl ekleneceğini gösterir BLOB rapora alan ekleme:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageInsert.cpp" >}}

### Sırasında Görüntü Özelliklerini Ayarlama Mail Merge

Bir görüntü birleştirme alanını birleştirirken, bazen aşağıdakiler gibi çeşitli görüntü özelliklerini kontrol etmeniz gerekebilir [WrapType](https://reference.aspose.com/words/cpp/aspose.words.drawing/wraptype/).

Şu anda, kullanarak [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args) sırasıyla yalnızca görüntü genişliği veya yükseklik özelliklerini ayarlayabilirsiniz. Bu sorunun üstesinden gelmek için, Aspose.Words sağlar [Shape](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/get_shape/) eklenen görüntü veya başka herhangi bir şekil üzerinde tam kontrol sahibi olmayı kolaylaştıran özellik.

Aşağıdaki kod örneği, çeşitli görüntü özelliklerinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}
