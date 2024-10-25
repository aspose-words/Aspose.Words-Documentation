---
title: Örnekler Nasıl Çalıştırılır
second_title: Aspose.Words için C++
articleTitle: Örnekler Nasıl Çalıştırılır
linktitle: Örnekler Nasıl Çalıştırılır
description: "İndirmek Aspose.Words için C++ GitHub depomuzdan örnekler ve Aspose.Words olasılıklara ve özelliklere daha aşina olmak için bunları nasıl çalıştıracağınızı öğrenin."
type: docs
weight: 110
url: /tr/cpp/how-to-run-the-examples/
---

Aspose.Words olanaklarını ve özelliklerini daha yakından tanımak için GitHub depomuzdan indirilebilen, çalıştırılabilen ve ayrıntılı olarak öğrenilebilen örnekler sunuyoruz.

Bu makalede, örneklerin nasıl çalıştırılacağına ilişkin bilgilerin yanı sıra sistem gereksinimlerini de bulabilirsiniz.

## Windows Nuget Paketi ile

### Yazılım Gereksinimleri ve Önkoşulları

Örnekleri indirip çalıştırmadan önce lütfen aşağıdaki gereksinimleri karşıladığınızdan emin olun:

1. Visual Studio Kod, Visual Studio 2022.
2. NuGet Paket Yöneticisi ve Visual Studio için en son NuGet API sürümü yüklendi. (isteğe bağlı)
3. "NuGet Paket Yöneticisi → Paket Kaynakları" altındaki "Araçlar → Seçenekler" iletişim kutusunda **nuget.org** seçeneği seçildi.
4. Örnekler projesinde `NuGet` Otomatik Paket Geri Yükleme özelliğini kullanmak için etkin bir Internet bağlantısı. Örneklerin yürütüleceği makinede etkin bir internet bağlantınız yoksa, Windows ile Cmake Paketindeki yönergeleri izleyin.

### Örnekleri indirin ve Çalıştırın

Tüm Aspose.Words için C++ örnekler şu adreste barındırılmaktadır [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Depoyu favori GitHub istemcinizi kullanarak klonlayabilir veya indirebilirsiniz [ZIP dosyası](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Deponun bir kopyasını aldıktan sonra şunları bulabilirsiniz:

- Tüm örnekler **Examples** klasöründe bulunur.
- Visual Studio 2022 'de oluşturulan C++ için Visual Studio çözüm dosyası vardır.

Örnekleri çalıştırmak için çözüm dosyasını Visual Studio içinde açın ve projeyi oluşturun:

- **API Reference** örnekler için yapı, sınıf adlarına dayanır, **Docs** örnekler için ise çoğunlukla [Geliştirici Guiled](/words/cpp/developer-guide/) dokümantasyon bölümü.
- İlk çalıştırmada, bağımlılıklar NuGet aracılığıyla otomatik olarak indirilecektir.
- **Examples** kök klasöründeki **Data** klasörü, örneklerde kullanılan girdi dosyalarını içerir.
- Tüm örnekler birim testleri olarak çalıştırılabilir.

## Windows CMake Paketi ile

### Yazılım Gereksinimleri ve Önkoşulları

Örnekleri indirip çalıştırmadan önce lütfen aşağıdaki gereksinimleri karşıladığınızdan emin olun:

1. Visual Studio Kod, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. En son CMake Paketini şuradan indirin: https://downloads.aspose.com/words/cpp

### Örnekleri indirin ve Çalıştırın

Tüm Aspose.Words için C++ örnekler şu adreste barındırılmaktadır [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Depoyu favori GitHub istemcinizi kullanarak klonlayabilir veya indirebilirsiniz [ZIP dosyası](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

`Aspose.Words.Cpp` ve `CodePorting.Native.Cs2Cpp_*` klasörlerini depo kopyasının kök dizinine yerleştirin.

Tüm örnekler **Examples** klasöründe bulunur.

Örnekleri çalıştırmak için deponun bir kopyasının kökünden aşağıdaki komutları çalıştırın:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

Visual Studio için çözüm `Examples\DocsExamples\build` içinde oluşturulacaktır

Örnekleri çalıştırmak için çözüm dosyasını Visual Studio içinde açın ve projeyi oluşturun:

- **API Reference** örnekler için yapı, sınıf adlarına dayanır, **Docs** örnekler için ise çoğunlukla [Geliştirici Guiled](/words/cpp/developer-guide/) dokümantasyon bölümü.
- **Examples** kök klasöründeki **Data** klasörü, örneklerde kullanılan girdi dosyalarını içerir.
- Tüm örnekler birim testleri olarak çalıştırılabilir.

## Linux

### Yazılım Gereksinimleri ve Önkoşulları

Örnekleri indirip çalıştırmadan önce lütfen aşağıdaki gereksinimleri karşıladığınızdan emin olun:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. En son CMake Paketini şuradan indirin: https://downloads.aspose.com/words/cpp

### Örnekleri indirin ve Çalıştırın

Tüm Aspose.Words için C++ örnekler şu adreste barındırılmaktadır [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Depoyu favori GitHub istemcinizi kullanarak klonlayabilir veya indirebilirsiniz [ZIP dosyası](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

`Aspose.Words.Cpp` ve `CodePorting.Native.Cs2Cpp_*` klasörlerini depo kopyasının kök dizinine yerleştirin.

Tüm örnekler **Examples** klasöründe bulunur.

Örnekleri çalıştırmak için deponun bir kopyasının kökünden aşağıdaki komutları çalıştırın:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- **API Reference** örnekler için yapı, sınıf adlarına dayanır, **Docs** örnekler için ise çoğunlukla [Geliştirici Guiled](/words/cpp/developer-guide/) dokümantasyon bölümü.
- **Examples** kök klasöründeki **Data** klasörü, örneklerde kullanılan girdi dosyalarını içerir.
- Tüm örnekler birim testleri olarak çalıştırılabilir.

{{% alert color="primary" %}}

Lütfen bizimle iletişime geçmekten çekinmeyin. [Aspose.Words Ürün Ailesi Forumu](https://forum.aspose.com/c/words/8) örnekleri ayarlarken veya çalıştırırken herhangi bir sorun yaşarsanız.

{{% /alert %}}

## Örneklerin Geliştirilmesine Katkıda Bulunmak

Bir örnek eklemek veya geliştirmek isterseniz, projeye katkıda bulunmanızı öneririz. Bu depodaki tüm örnekler ve vitrin projeleri açık kaynaktır ve uygulamalarınızda serbestçe kullanılabilir.

Depoyu çatallayabilir, kaynak kodunu düzenleyebilir ve katkıda bulunmak için bir çekme isteği oluşturabilirsiniz. Değişiklikleri gözden geçireceğiz ve yararlı bulunursa bunları depoya dahil edeceğiz.

## Ayrıca bakınız

- [NuGet Paket Yöneticisinin nasıl kurulacağına ilişkin ayrıntılar](https://docs.microsoft.com/nuget/guides/install-nuget)
