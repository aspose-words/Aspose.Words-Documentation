---
title: Keamanan Aplikasi Web Ketika Memuat Sumber Daya
second_title: Aspose.Words Sitemap Java
articleTitle: Keamanan Aplikasi Web Saat Memuat Sumber Daya Eksternal
linktitle: Keamanan Aplikasi Web Saat Memuat Sumber Daya Eksternal
type: docs
description: "Sumber daya jarak jauh beban, yang dapat menjadi alasan risiko keamanan. Lihat masalah keamanan umum dan solusi mereka dalam JavaSitemap"
weight: 120
url: /id/java/web-applications-security-when-loading-external-resources/
---

Login Aspose.Words Sitemap Java dapat memuat sumber daya jarak jauh seperti gambar, gaya CSS, atau dokumen HTML eksternal ketika mengimpor dokumen atau memasukkan gambar menggunakan DocumentBuilder. Perilaku ini memungkinkan Anda untuk memproses dokumen Anda secara rinci tetapi dapat menjadi alasan beberapa risiko keamanan jika perpustakaan adalah bagian dari aplikasi web.

Dalam artikel ini, kami melihat masalah keamanan umum yang dapat timbul ketika memuat sumber daya eksternal dan memberikan rekomendasi tentang cara menghindari masalah tersebut.

{{% alert color="primary" %}}

Aspose.Words tidak berfungsi sebagai perangkat lunak antivirus. Oleh karena itu, tidak memberikan informasi tentang adanya komponen jahat dalam dokumen. Untuk memastikan keamanan data, periksa dokumen yang diperoleh dari sumber eksternal sendiri. Pada gilirannya, Aspose.Words memberikan rekomendasi tentang bagaimana menghadapi masalah yang dapat timbul ketika memuat sumber daya eksternal.

{{% /alert %}}

## Masalah Keamanan

Ada sejumlah masalah keamanan khas ketika memuat sumber daya eksternal.

### Pengungkapan rahasia Via Gambar Bertautan

Sitemap Windows- host berbasis, dokumen yang berisi referensi ke sumber daya yang menggunakan jalur UNC seperti * '\example.com\a\b* akan diproses secara default. Dalam lingkungan domain, ini akan menyebabkan host untuk mengirim kredensial domain dalam format hashed ke server yang ditentukan.

Jika penyerang dapat meyakinkan pengguna atau server untuk memproses dokumen dengan tautan sumber daya yang menunjuk ke host yang mereka kendalikan, penyerang akan menerima kredensial akun pengguna atau layanan dalam format hash NTLM. Data tersebut kemudian dapat digunakan kembali dalam serangan pass-the-hash klasik, memungkinkan penyerang untuk mendapatkan akses ke sumber daya apa pun sebagai pengguna korban atau akun layanan.

Jika akun yang dimaksud menggunakan kata sandi yang lemah atau menebak, penyerang juga dapat melakukan serangan retak kata sandi untuk memulihkan kata sandi akun untuk penggunaan berbahaya lebih lanjut.

### Pengungkapan Gambar Lokal Via Gambar Bertautan

Mirip dengan kasus sebelumnya, memproses dokumen dengan referensi ke file gambar lokal akan menghasilkan file yang dimasukkan dalam dokumen akhir. Ini dapat menyebabkan pengungkapan informasi sensitif.

### Sitemap

Penyerang dapat mengunggah dokumen yang baik direferensikan atau memasukkan gambar yang sangat besar - yang disebut "bom pendekompresi". Saat memproses gambar ini, perpustakaan akan mengonsumsi sejumlah besar memori dan waktu CPU.

### Server-Side Request Forgery Via Konten Bertautan

Penyerang dapat membuat serangkaian dokumen yang mengandung tautan tertanam untuk kombinasi umum alamat IP internal dan port, kemudian kirimkan ke layanan web menggunakan Aspose.Words perpustakaan untuk memproses dokumen.

Berdasarkan panjang waktu penggunaan layanan untuk memproses dokumen, penyerang dapat menentukan apakah kombinasi IP / port yang diberikan disaring oleh firewall:

- waktu pemrosesan yang lebih lama menunjukkan bahwa paket TCP SYN dikirim oleh server dijatuhkan oleh firewall
- waktu pemrosesan cepat menunjukkan koneksi yang sukses telah dibuat

## Solusi Masalah Keamanan

Untuk memecahkan masalah yang dijelaskan di atas dan untuk meningkatkan keamanan aplikasi web, Anda dapat mengontrol atau menonaktifkan pemuatan sumber daya eksternal menggunakan [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/)Sitemap

Contoh kode berikut menunjukkan cara menonaktifkan pemuatan gambar eksternal:

**Java**
{{< highlight csharp >}}
public void loadDocument(String documentFilename) throws Exception
{
	LoadOptions disableExternalImagesOptions = new LoadOptions();
	disableExternalImagesOptions.setResourceLoadingCallback(new DisableExternalImagesHandler());

	Document doc = new Document(documentFilename, disableExternalImagesOptions);
}

public static class DisableExternalImagesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args)
	{
		// Skip external images loading.
		return (args.getResourceType() == ResourceType.IMAGE)
			? ResourceLoadingAction.SKIP
			: ResourceLoadingAction.DEFAULT;
	}
}
{{< /highlight >}}

Contoh kode berikut menunjukkan cara menonaktifkan sumber daya jarak jauh:

**Java**
{{< highlight csharp >}}
public void loadDocument2(String documentFilename) throws Exception
{
	LoadOptions disableRemoteResourcesOptions = new LoadOptions();
	disableRemoteResourcesOptions.setResourceLoadingCallback(new DisableRemoteResourcesHandler());
	
	Document doc = new Document(documentFilename, disableRemoteResourcesOptions);
}	

private static class DisableRemoteResourcesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args) throws Exception
	{
		return isLocalResource(args.getOriginalUri())
			? ResourceLoadingAction.DEFAULT
			: ResourceLoadingAction.SKIP;
	}

	// Simplified code.
	private static boolean isLocalResource(String fileName) throws Exception
	{
		String protocol = null;
	
		URI uri = new URI(fileName);
		if (uri.isAbsolute())
		{
			protocol = uri.getScheme();
		}
		else
		{
			URL url = new URL(fileName);
			protocol = url.getProtocol();
		}
	
		return "file".equalsIgnoreCase(protocol);
	}
}
{{< /highlight >}}

{{% alert color="primary" %}}

Artikel ini didasarkan pada perusahaan konsultan Evaluator Keamanan Independen [Login](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf)Sitemap

{{% /alert %}}

