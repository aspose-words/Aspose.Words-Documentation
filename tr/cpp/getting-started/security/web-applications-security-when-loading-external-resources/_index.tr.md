---
title: Kaynakları Yüklerken Web Uygulaması Güvenliği
second_title: Aspose.Words için C++
articleTitle: Dış Kaynakları Yüklerken Web Uygulamaları Güvenliği
linktitle: Dış Kaynakları Yüklerken Web Uygulamaları Güvenliği
type: docs
description: "Uzak kaynakları yükleyin, bu güvenlik risklerinin bir nedeni olabilir. Genel güvenlik sorunlarına ve çözümlerine C++ içinde bir göz atın."
weight: 50
url: /tr/cpp/web-applications-security-when-loading-external-resources/
---

Varsayılan olarak, Aspose.Words için C++ belgeleri içe aktarırken veya DocumentBuilder kullanarak resim eklerken resimler, CSS stiller veya harici HTML belgeler gibi uzak kaynakları yükleyebilir. Bu davranış, belgelerinizi tüm ayrıntılarıyla işlemenize olanak tanır, ancak kitaplık bir web uygulamasının parçasıysa bazı güvenlik risklerinin nedeni olabilir.

Bu makalede, dış kaynakları yüklerken ortaya çıkabilecek yaygın güvenlik sorunlarına bir göz atıyoruz ve bu tür sorunların nasıl önleneceği konusunda önerilerde bulunuyoruz.

{{% alert color="primary" %}}

Aspose.Words virüsten koruma yazılımı olarak çalışmaz. Bu nedenle, belgedeki kötü amaçlı bileşenlerin varlığı hakkında bilgi sağlamaz. Verilerinizin güvenliğini sağlamak için harici bir kaynaktan alınan belgeleri kendiniz kontrol edin. Buna karşılık Aspose.Words, harici kaynaklar yüklenirken ortaya çıkabilecek sorunlarla nasıl başa çıkılacağına dair öneriler sunar.

{{% /alert %}}

## Güvenlik Sorunları

Dış kaynakları yüklerken bir dizi tipik güvenlik sorunu vardır.

### Bağlantılı Görseller Aracılığıyla Kimlik Bilgilerinin Açıklanması

Windows tabanlı ana bilgisayarlarda, *‘\\example.com\a\b*’ gibi UNC yollarını kullanan kaynaklara başvurular içeren belgeler varsayılan olarak işlenir. Bir etki alanı ortamında, bu, ana bilgisayarın etki alanı kimlik bilgilerini karma biçimde belirtilen sunucuya göndermesine neden olur.

Saldırgan, bir kullanıcıyı veya sunucuyu, denetlediği bir ana bilgisayara işaret eden böyle bir kaynak bağlantısına sahip bir belgeyi işlemeye ikna edebiliyorsa, saldırgan kullanıcı veya hizmet hesabı kimlik bilgilerini NTLM karma biçiminde alır. Bu tür veriler daha sonra klasik bir karma geçiş saldırısında yeniden kullanılabilir ve saldırganın mağdur kullanıcı veya hizmet hesabı olarak herhangi bir kaynağa erişmesine izin verir.

Söz konusu hesap zayıf veya tahmin edilebilir bir şifre kullanıyorsa, saldırgan ayrıca hesap şifresini daha fazla kötü amaçlı kullanım için kurtarmak için bir şifre kırma saldırısı gerçekleştirebilir.

### Bağlantılı Görüntüler Aracılığıyla Yerel Görüntü Açıklaması

Önceki duruma benzer şekilde, bir belgeyi yerel bir görüntü dosyasına referansla işlemek, o dosyanın son belgeye dahil edilmesine neden olur. Bu, hassas bilgilerin ifşa edilmesine yol açabilir.

### Hizmet Reddi

Bir saldırgan, "dekompresyon bombaları" olarak adlandırılan son derece büyük görüntülere atıfta bulunan veya içeren bir belge yükleyebilir. Bu görüntüleri işlerken, kitaplık çok miktarda bellek ve CPU zaman tüketir.

### Bağlantılı içerik Üzerinden Sunucu Tarafı İstek Sahteciliği

Saldırgan, dahili IP adres ve bağlantı noktasının ortak kombinasyonlarına katıştırılmış bağlantılar içeren bir dizi belge oluşturabilir, ardından belgeleri işlemek için Aspose.Words kitaplığını kullanarak bunları bir web hizmetine gönderebilir.

Hizmetin belgeyi işlemek için kullandığı süreye bağlı olarak, saldırgan belirli bir IP / Bağlantı Noktası kombinasyonunun bir güvenlik duvarı tarafından filtrelenip filtrelenmediğini belirleyebilir:

- daha uzun işlem süresi, sunucu tarafından gönderilen TCP SYN paketinin bir güvenlik duvarı tarafından düşürüldüğünü gösterir
- hızlı işlem süresi, başarılı bir bağlantının yapıldığını gösterir

## Güvenlik Sorunlarının Çözümleri

Yukarıda açıklanan sorunları çözmek ve web uygulamalarının güvenliğini artırmak için [IResourceLoadingCallback](https://reference.aspose.com/words/cpp/aspose.words.loading/iresourceloadingcallback/) kullanarak harici kaynakların yüklenmesini kontrol edebilir veya devre dışı bırakabilirsiniz.

Aşağıdaki kod örneği, harici görüntülerin yüklenmesini nasıl devre dışı bırakacağınızı gösterir:

**C++**
{{< highlight cpp >}}
class DisableExternalImagesHandler : public IResourceLoadingCallback
{
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		// Skip external images loading.
		return args->get_ResourceType() == ResourceType::Image
			? ResourceLoadingAction::Skip
			: ResourceLoadingAction::Default;
		}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableExternalImagesHandler = System::MakeObject<LoadOptions>();

disableExternalImagesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableExternalImagesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableExternalImagesHandler);
}
{{< /highlight >}}

Aşağıdaki kod örneği, uzak kaynakların nasıl devre dışı bırakılacağını gösterir:

**C++**
{{< highlight cpp >}}
class DisableRemoteResourcesHandler : public IResourceLoadingCallback
{
	static bool IsLocalResource(const System::String& originalUri)
	{
		// CodePorting.CsToCpp.Native.API can handle only absolute uri
		auto uri = System::MakeObject<System::Uri>(originalUri);
		if (uri->get_IsAbsoluteUri())
		{
			return uri->get_Scheme().Equals(u"file", System::StringComparison::OrdinalIgnoreCase);
		}

		return false;
	}
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		return IsLocalResource(args->get_OriginalUri())
			? ResourceLoadingAction::Default
			: ResourceLoadingAction::Skip;
	}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableRemoteResourcesHandler = System::MakeObject<LoadOptions>();

disableRemoteResourcesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableRemoteResourcesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableRemoteResourcesHandler);
}
{{< /highlight >}}

{{% alert color="primary" %}}

Bu makale danışmanlık firması Independent Security Evaluators'a dayanmaktadır [rapor](ise-aspose-report.pdf).

{{% /alert %}}
