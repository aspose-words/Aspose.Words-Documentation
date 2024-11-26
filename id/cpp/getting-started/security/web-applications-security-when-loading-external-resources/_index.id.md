---
title: Keamanan Aplikasi Web Saat Memuat Sumber Daya
second_title: Aspose.Words untuk C++
articleTitle: Keamanan Aplikasi Web Saat Memuat Sumber Daya eksternal
linktitle: Keamanan Aplikasi Web Saat Memuat Sumber Daya eksternal
type: docs
description: "Memuat sumber daya jarak jauh, yang dapat menjadi alasan risiko keamanan. Lihat masalah keamanan umum dan solusinya di C++."
weight: 50
url: /id/cpp/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-30-16-22-34
---

Secara default, Aspose.Words untuk C++ dapat memuat sumber daya jarak jauh seperti gambar, gaya CSS, atau dokumen HTML eksternal saat mengimpor dokumen atau menyisipkan gambar menggunakan DocumentBuilder. Perilaku ini memungkinkan Anda untuk memproses dokumen Anda secara mendetail, tetapi dapat menjadi alasan beberapa risiko keamanan jika pustaka merupakan bagian dari aplikasi web.

Pada artikel ini, kami melihat masalah keamanan umum yang dapat muncul saat memuat sumber daya eksternal dan memberikan rekomendasi tentang cara menghindari masalah tersebut.

{{% alert color="primary" %}}

Aspose.Words tidak berfungsi sebagai perangkat lunak antivirus. Oleh karena itu, tidak memberikan informasi tentang keberadaan komponen berbahaya dalam dokumen. Untuk memastikan keamanan data Anda, periksa sendiri dokumen yang diperoleh dari sumber eksternal. Pada gilirannya, Aspose.Words memberikan rekomendasi tentang cara mengatasi masalah yang dapat muncul saat memuat sumber daya eksternal.

{{% /alert %}}

## Masalah Keamanan

Ada sejumlah masalah keamanan umum saat memuat sumber daya eksternal.

### Pengungkapan Kredensial Melalui Gambar Tertaut

Pada host berbasis Windows, dokumen yang berisi referensi ke sumber daya yang menggunakan jalur UNC seperti * ' \\example.com\a\b*’ akan diproses secara default. Dalam lingkungan domain, ini akan menyebabkan host mengirimkan kredensial domainnya dalam format hash ke server yang ditentukan.

Jika penyerang dapat meyakinkan pengguna atau server untuk memproses dokumen dengan tautan sumber daya yang mengarah ke host yang mereka kendalikan, penyerang akan menerima kredensial akun pengguna atau layanan dalam format hash NTLM. Data tersebut kemudian dapat digunakan kembali dalam serangan pass-the-hash klasik, memungkinkan penyerang mendapatkan akses ke sumber daya apa pun sebagai pengguna korban atau akun layanan.

Jika akun yang dimaksud menggunakan kata sandi yang lemah atau dapat ditebak, penyerang juga dapat melakukan serangan peretasan kata sandi untuk memulihkan kata sandi akun untuk penggunaan jahat lebih lanjut.

### Pengungkapan Gambar Lokal Melalui Gambar Tertaut

Mirip dengan kasus sebelumnya, memproses dokumen dengan referensi ke file gambar lokal akan mengakibatkan file tersebut disertakan dalam dokumen akhir. Hal ini dapat menyebabkan pengungkapan informasi yang sensitif.

### Penolakan Layanan

Penyerang dapat mengunggah dokumen yang mereferensikan atau menyertakan gambar yang sangat besar-yang disebut "bom dekompresi". Saat memproses gambar-gambar ini, perpustakaan akan menghabiskan banyak memori dan waktu CPU.

### Pemalsuan Permintaan Sisi Server Melalui Konten Tertaut

Penyerang dapat membuat serangkaian dokumen yang berisi tautan tersemat ke kombinasi umum alamat dan port internal IP, lalu mengirimkannya ke layanan web menggunakan pustaka Aspose.Words untuk memproses dokumen.

Berdasarkan lamanya waktu yang digunakan layanan untuk memproses dokumen, penyerang dapat menentukan apakah kombinasi IP / Port yang diberikan difilter oleh firewall:

- waktu pemrosesan yang lebih lama menunjukkan bahwa paket TCP SYN yang dikirim oleh server dibatalkan oleh firewall
- waktu pemrosesan yang cepat menunjukkan koneksi yang berhasil telah dibuat

## Solusi Masalah Keamanan

Untuk mengatasi masalah yang dijelaskan di atas dan untuk meningkatkan keamanan aplikasi web, Anda dapat mengontrol atau menonaktifkan pemuatan sumber daya eksternal menggunakan [IResourceLoadingCallback](https://reference.aspose.com/words/cpp/aspose.words.loading/iresourceloadingcallback/).

Contoh kode berikut menunjukkan cara menonaktifkan pemuatan gambar eksternal:

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

Contoh kode berikut menunjukkan cara menonaktifkan sumber daya jarak jauh:

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

Artikel ini didasarkan pada perusahaan konsultan Independent Security Evaluators [laporan](ise-aspose-report.pdf).

{{% /alert %}}
