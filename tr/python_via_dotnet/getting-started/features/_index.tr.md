---
title: Özellikler
second_title: Python via .NET için Aspose.Words
articleTitle: Desteklenen Özellikler
linktitle: Desteklenen Özellikler
description: "Python via .NET için Aspose.Words, kullanıcılara belgeleri basitçe dönüştürmek ve değiştirmekten yapılandırılmış ve görsel olarak çekici belgeler oluşturmaya veya raporlamayı otomatikleştirmeye kadar çok çeşitli özellikler sağlar."
type: docs
weight: 30
url: /tr/python-net/features/
---

Aspose.Words kullanıcılara çok çeşitli özellikler sunar. Kullanıcılar, belgeleri desteklenen bir formattan diğerine dönüştürmek ve dönüştürme süreci sırasında bu belgeleri değiştirmekten, yapılandırılmış ve görsel olarak çekici belgeler oluşturmak veya raporlamayı otomatikleştirmek gibi iş görevlerine kadar belgeyle ilgili çok sayıda görevi gerçekleştirebilir.

Modern belge formatları ve standartları karmaşıktır ve projenizde belge dönüştürmeye veya diğer belge işleme özelliklerine ihtiyaç duyduğunuzda genellikle tek pratik çözüm, istenen işlevselliği uygulayan bir üçüncü taraf bileşene güvenmektir. Ancak üçüncü taraf bir bileşenin kullanılması her zaman bir miktar risk taşır. Belge işlemedeki benzersiz risklerden biri, kütüphanenin belirli bir belge formatını veya standardını ne kadar eksiksiz ve doğru bir şekilde uyguladığı sorusudur.

Aspose, belge formatları ve standartlarının en eksiksiz ve doğru uygulamalarını sunmaya kendini adamıştır. Aspose.Words ekibi, birden fazla platformda desteklenen belge formatları için ayrıntılı uygulama notları sağlayarak birlikte çalışabilirlik konusundaki kararlılığını göstermektedir.

Aşağıdaki tablolar, Python via .NET özellikleri için Aspose.Words'in kullanılabilirliğini özetlemekte ve karşılaştırmaktadır ve ayrıntılı özellik açıklamalarına bağlantılar sağlamaktadır.

## Desteklenen Platformlar

Python via .NET için Aspose.Words platformları, Windows x64 veya x86, macOS x86_x64 veya arm64'te ve Python 3.5 veya üzeri yüklü çok çeşitli Linux dağıtımlarında kullanılabilir. Hedef Linux ve macOS platformlarının ek gereksinimleri vardır:
- GCC-6 çalışma zamanı kitaplıkları (veya üstü)
- .NET Core Runtime'in bağımlılıkları. .NET Core Runtime'in kendisinin kurulması `NOT` gerektirir
- Python 3.5-3.7 için: Python'in `pymalloc` yapısı gereklidir. `--with-pymalloc` Python oluşturma seçeneği varsayılan olarak etkindir. Genellikle Python'in `pymalloc` yapısı, dosya adında `m` son ekiyle işaretlenir.
- `libpython` paylaşılan Python kütüphanesi. `--enable-shared` Python oluşturma seçeneği varsayılan olarak devre dışıdır; bazı Python dağıtımları `libpython` paylaşılan kitaplığını içermez. Bazı linux platformları için `libpython` paylaşımlı kütüphanesi paket yöneticisi kullanılarak kurulabilir, örneğin: `sudo apt-get install libpython3.7`. Yaygın sorun, `libpython` kitaplığının, paylaşılan kitaplıklar için standart sistem konumundan farklı bir konuma kurulmasıdır. Sorun, Python derlenirken alternatif kitaplık yolları ayarlamak için Python oluşturma seçenekleri kullanılarak veya paylaşılan kitaplıklar için sistem standart konumunda `libpython` kitaplık dosyasına sembolik bir bağlantı oluşturularak çözülebilir. Genellikle `libpython` paylaşılan kitaplık dosyasının adı, Python 3.5-3.7 için `libpythonX.Ym.so.1.0` veya Python 3.8 veya üzeri için libpythonX.Y.so.1.0'dır (örneğin: `libpython3.7m.so.1.0`, `libpython3.9.so.1.0`).

Daha fazla platform için desteğe ihtiyacınız varsa, .NET için Aspose.Words veya Java için Aspose.Words "ikiz kardeş" ürünlerini arayın.

## Dosya Formatları ve Dönüşümler

Dünya çapında pek çok müşteri, Aspose.Words'in sağladığı eksiksiz belge içe ve dışa aktarma özelliklerine güveniyor.

|  Özellik | Tanım | Python via .NET |
|  :-  |  :-  |  :-  |
| `Microsoft Word - DOC` | Bulabileceğiniz en hızlı ve en eksiksiz DOC formatı uygulaması. | {{< emoticons/tick >}} |
| `WordprocessingML - DOCX and XML` | Aspose.Words, OOXML, Flat OPC ve ayrıca Word 2003 XML için kapsamlı destek sağlar. | {{< emoticons/tick >}} |
| `Rich Text Format - RTF` | Çeşitli uygulamalarla etkileşim kurmak için kapsamlı RTF formatı desteği. | {{< emoticons/tick >}} |
| `HTML, XHTML and MHTML` | Daha da fazla birlikte çalışabilirlik için HTML/XHTML'yi yükleyin ve kaydedin. MHTML olarak kaydetme seçeneği de mevcuttur. | {{< emoticons/tick >}} |
| `OpenDocument - ODT` | Aspose.Words, belgeleri `OpenDocument` Metin (.odt) biçiminde yükleyebilir ve kaydedebilir. | {{< emoticons/tick >}} |
| `Adobe Portable Document Format - PDF` | Herhangi bir belgeyi yüksek kalitede PDF'ye dönüştürün. PDF/A desteklenmektedir. | {{< emoticons/tick >}} |
| `XML Paper Specification - XPS` | Herhangi bir belgeyi yüksek doğrulukla XPS'ye dönüştürün. | {{< emoticons/tick >}} |
| `Plain Text - TXT` | Düz metin biçiminde kaydederek metni kolayca çıkarın. | {{< emoticons/tick >}} |
| `Digital Publishing EPUB` | EPUB, e-Kitaplar için popüler bir formattır. Herhangi bir belgeyi Aspose.Words'ten IDPF EPUB formatına dönüştürebilirsiniz. | {{< emoticons/tick >}} |
| `Printer Command Language (PCL)` | .NET için Aspose.Words, belgeyi PCL formatında kaydetme desteği sağlar. | {{< emoticons/tick >}} |

## İşleme ve Yazdırma

Aspose.Words artık belge sayfalarının yüksek kalitede oluşturulmasını sağlıyor.

|  Özellik | Python via .NET |
|  :-  |  :-  |
| Aşağıdaki tüm formatlara göre belgeyi yüksek kalitede (tıpkı Microsoft Word®'in yapacağı gibi) sayfalar halinde düzenleyin. | {{< emoticons/tick >}} |
| Tek tek sayfaları veya tüm belgeleri PDF veya XPS'ye dönüştürün. | {{< emoticons/tick >}} |
| Belge sayfalarını BMP görüntülerine dönüştürün | {{< emoticons/tick >}} |
| Belge sayfalarını resimlere (PNG, EMF, JPEG, GIF) dönüştürün. | {{< emoticons/tick >}} |
| Belgedeki tek tek şekilleri taramalı veya vektör görüntülere dönüştürün. | {{< emoticons/tick >}} |
| Görüntü çözünürlüğünü, kalitesini, sıkıştırmasını ve diğer seçenekleri belirtin. | {{< emoticons/tick >}} |
| Sayfaları veya şekilleri, dönüşümlerle bir .NET Graphics nesnesine belirli bir boyuta göre işleyin. | {{< emoticons/tick >}} |
| .NET yazdırma altyapısını kullanarak belge sayfalarını yazdırın. | {{< emoticons/cross >}} |
| Oluşturmadan veya yazdırmadan önce `TOC`'i, sayfa numaralarını ve diğer alanları güncelleyin. | {{< emoticons/tick >}} |

## Belge İçeriği Özellikleri

Aspose.Words, yüklü belgeleri programlı bir şekilde oluşturmanıza, birleştirmenize, değiştirmenize, ayrıştırmanıza veya başka şekilde incelemenize olanak tanıyan 100'den fazla genel sınıftan oluşan zengin bir nesne modeli sağlar.

|  Özellik | Python via .NET |
|  :-  |  :-  |
| Paragraflara ve metne erişin, bunları oluşturun ve değiştirin. | {{< emoticons/tick >}} |
| Resimlere, metin kutularına ve şekillere erişin, bunları oluşturun ve değiştirin. | {{< emoticons/tick >}} |
| Tablolara, satırlara ve hücrelere erişin, bunları oluşturun ve değiştirin. | {{< emoticons/tick >}} |
| Alanlara, form alanlarına, köprülere ve yer imlerine erişin, bunları oluşturun ve değiştirin. | {{< emoticons/tick >}} |
| Belge bölümlerine, üstbilgilere ve altbilgilere erişin, bunları oluşturun ve değiştirin. | {{< emoticons/tick >}} |
| Dipnotlara, son notlara ve yorumlara erişin, bunları oluşturun ve değiştirin. | {{< emoticons/tick >}} |
| Özel XML'e, Akıllı Etiketlere ve Yapılandırılmış Belge Etiketlerine (İçerik Kontrolleri) erişin, bunları oluşturun ve değiştirin. | {{< emoticons/tick >}} |
| **XmlDocument** benzeri sınıfları ve yöntemleri kullanarak tüm belge öğelerine erişin ve bunları değiştirin. | {{< emoticons/tick >}} |
| Alan sonuçlarını `IF`, formül ve diğer popüler alan türlerini güncelleyin. | {{< emoticons/tick >}} |
| İçindekiler Tablosu (TOC) alanlarını tam olarak Microsoft Word'in yaptığı gibi yeniden oluşturun ve güncelleyin. | {{< emoticons/tick >}} |
| Belge öğelerini belgeler arasında kopyalayın ve taşıyın. | {{< emoticons/tick >}} |
| Belgeleri birleştirin ve bölün. | {{< emoticons/tick >}} |
| Yerleşik ve özel belge özelliklerini edinin ve ayarlayın. | {{< emoticons/tick >}} |
| Belge korumasını belirtin, korumalı ve şifrelenmiş belgeleri açın. | {{< emoticons/tick >}} |
| Metni bulun ve değiştirin, belge içeriği üzerinde numaralandırın. | {{< emoticons/tick >}} |
| Bir belgedeki tüm düzeltmeleri kabul edin. | {{< emoticons/tick >}} |
| OLE nesnelerini ve ActiveX denetimlerini belgeden koruyun veya çıkarın. | {{< emoticons/tick >}} |
| VBA makrolarını belgeden koruyun veya kaldırın. VBA makrolarının dijital imzasını koruyun. | {{< emoticons/tick >}} |
| Belgelerdeki dijital imzaları tespit edin ve doğrulayın. | {{< emoticons/tick >}} |
| HTML metni ekleyin. | {{< emoticons/tick >}} |
| VBA Makrolarını Word Belgesinden çıkarın. | {{< emoticons/tick >}} |

## Belge Biçimlendirme Özellikleri

Aspose.Words, tüm belge öğelerinin biçimlendirme özelliklerine ayrıntılı programlı erişim sağlar.

|  Özellik | Python via .NET |
|  :-  |  :-  |
| Yazı tipleri, renkler, efektler, kenarlıklar ve gölgeleme dahil tüm karakter formatlarına erişin ve bunları değiştirin. | {{< emoticons/tick >}} |
| Girintiler, aralıklar, kenarlıklar ve gölgeleme, sekme durakları dahil tüm paragraf biçimlendirmelerine erişin ve bunları değiştirin. | {{< emoticons/tick >}} |
| Numaralandırma ve düzeyler de dahil olmak üzere tüm madde işaretli ve numaralı liste formatlarına erişin ve bunları değiştirin. | {{< emoticons/tick >}} |
| Hizalama, yönlendirme, kenarlıklar ve gölgelendirme dahil olmak üzere tablo formatına erişin ve değiştirin. | {{< emoticons/tick >}} |
| Kağıt boyutu, kenar boşlukları ve yön dahil tüm bölüm özelliklerine erişin ve bunları değiştirin. | {{< emoticons/tick >}} |
| Belge stillerine erişin, oluşturun ve değiştirin. | {{< emoticons/tick >}} |
| Konum, boyut, çizgi ve dolgu özellikleri, görüntü baytları dahil olmak üzere çizim nesnelerine erişin ve bunları değiştirin. | {{< emoticons/tick >}} |

## Mail Merge Özellikleri

Aspose.Words'i başlı başına bir raporlama çözümü olarak kullanabilirsiniz. Raporlarınızı Microsoft Word'de tasarlayın ve ardından Aspose.Words'in belgeleri çeşitli veri kaynaklarından gelen verilerle doldurmasını sağlayın.

|  Özellik | Python via .NET |
|  :-  |  :-  |
| Raporlarınızda `MERGEFIELD`, `NEXT`, `NEXTIF`, `ADDRESSBLOCK`, GREETINGLINE dahil tüm standart Microsoft Word mail merge alanlarını kullanın. | {{< emoticons/tick >}} |
| En karmaşık ve iç içe geçmiş `IF` alanlarını ve formüllerini bile içeren belgeler için mail merge'i yürütün. | {{< emoticons/tick >}} |
| mail merge bölgelerini kullanarak belgedeki tabloları veya parçaları veri kaynağınızdan doldurun ve dinamik olarak büyütün. | {{< emoticons/cross >}} |
| Order/OrderDetails gibi ana detay (üst-alt) verilerini içeren raporları kolayca oluşturun. | {{< emoticons/cross >}} |
| Belgeleri DataSet, DataTable, DataView, DataReader veya ADO Recordset gibi herhangi bir .NET veri kaynağından gelen verilerle doldurun. | {{< emoticons/cross >}} |
| [IMailMergeDataSource](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/imailmergedatasource/) arayüzünü uygulayarak LINQ sorgusu, XML dosyası veya iş nesneleri gibi herhangi bir veri kaynağından belgeleri doldurun. | {{< emoticons/cross >}} |
| Verilerinizin olaylar kullanılarak nasıl birleştirileceği konusunda sayı biçimlendirmesi gibi hassas kontrolü elinize alın. | {{< emoticons/cross >}} |
| mail merge sırasında görüntüleri ekleyin. | {{< emoticons/tick >}} |
| Bir belge için Microsoft Word mail merge veri kaynağını programlı olarak oluşturun veya değiştirin. mail merge ayarlarını ve veri kaynaklarını koruyun. | {{< emoticons/tick >}} |
| mail merge alan adlarını alın. | {{< emoticons/tick >}} |

## Raporlama Özellikleri

LINQ Raporlama Motoru, şablon belgelere ve veritabanları, XML, JSON, OData, özel CLR türlerindeki nesneler, harici belgeler ve daha fazlasını içeren çeşitli kaynaklardan elde edilen verilere dayalı belgeler oluşturmanıza olanak tanıyan gelişmiş bir raporlama aracıdır.

| Ana Özellikler | Python via .NET |
|  :-  |  :-  |
| C# sözdizimi ve LINQ uzantısı yöntemlerinin doğrudan şablonlarda desteklenmesi (`ADO.NET` veri kaynakları için bile) | {{< emoticons/tick >}} |
| Tablolar, listeler ve ortak içerik için tekrarlanabilir ve koşullu belge bloklarının (döngüler ve koşullar) desteklenmesi | {{< emoticons/tick >}} |
| Dinamik olarak oluşturulan grafik ve görsellerin desteği | {{< emoticons/tick >}} |
| Dış belgelerin ve HTML bloklarının bir belgeye eklenmesi desteği | {{< emoticons/tick >}} |
| Tek bir belgenin oluşturulması için birden fazla veri kaynağının (farklı türler dahil) desteklenmesi | {{< emoticons/tick >}} |
| Veri ilişkilerinin yerleşik desteği (ana-detay) | {{< emoticons/tick >}} |
| Doğrudan şablonlarda gruplama, sıralama, filtreleme ve diğerleri gibi çeşitli veri manipülasyonlarının kapsamlı desteği | {{< emoticons/tick >}} |
| WYSIWYG: Oluşturulan bir belge, ilgili şablonun sahip olduğu öğelerin aynı formatını korur | {{< emoticons/tick >}} |
