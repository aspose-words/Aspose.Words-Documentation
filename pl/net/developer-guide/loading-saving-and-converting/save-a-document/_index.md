---
title: Zapisz dokument w C#
second_title: Aspose.Words dla .NET
articleTitle: Zapisz dokument
linktitle: Zapisz dokument
type: docs
description: "Zapisz dokument w dowolnym obsługiwanym formacie za pomocą C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /pl/net/save-a-document/
---

Większość zadań, które należy wykonać w Aspose.Words, obejmuje zapisanie dokumentu. Do zapisania dokumentu Aspose.Words udostępnia metodę [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) klasy [Document](https://reference.aspose.com/words/net/aspose.words/document/). Istnieją przeciążenia, które umożliwiają zapisanie dokumentu w pliku, strumieniu lub obiekcie ASP.NET HttpResponse w celu wysłania do przeglądarki klienta. Dokument można zapisać w dowolnym formacie zapisu obsługiwanym przez Aspose.Words. Listę wszystkich obsługiwanych formatów zapisu można znaleźć w wyliczeniu [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## Zapisz w pliku {#save-a-document-to-a-file}

Po prostu użyj metody [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) z nazwą pliku. Aspose.Words określi format zapisu na podstawie określonego rozszerzenia pliku.

Poniższy przykład kodu pokazuje, jak załadować i zapisać dokument do pliku:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Zapisz w strumieniu {#save-a-document-to-a-stream}

Przekaż obiekt strumieniowy do metody [Save](https://reference.aspose.com/words/net/aspose.words/document/save/). Podczas zapisywania do strumienia konieczne jest wyraźne określenie formatu zapisu.

Poniższy przykład kodu pokazuje, jak załadować i zapisać dokument w strumieniu:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Wyślij dokument do przeglądarki klienta {#sending-a-document-to-a-client-browser}

Aby wysłać dokument do przeglądarki klienta, należy użyć specjalnego przeciążenia, które przyjmuje cztery parametry: nazwę pliku, format zapisu, typ zapisu oraz obiekt ASP.NET HttpResponse. Sposób, w jaki dokument zostanie zaprezentowany użytkownikowi, reprezentuje wyliczenie [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/), które określa, czy dokument przesłany do przeglądarki będzie posiadał opcję samodzielnego otwarcia bezpośrednio w przeglądarce, czy w aplikacji powiązanej z rozszerzeniem pliku.

Poniższy przykład kodu pokazuje, jak wysłać dokument do przeglądarki klienta z kodu ASP.NET:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

To przeciążenie metody `Save` nie jest dostępne w przypadku korzystania z biblioteki DLL profilu klienta .NET. Ta biblioteka DLL znajduje się w folderze **net3.5_ClientProfile**. Profil klienta .NET wyklucza zestawy takie jak **System.Web**, dlatego **HttpResponse** nie jest dostępny. Jest to całkowicie zgodne z projektem.

Może to objawiać się błędem:

**"Żadne przeciążenie metody "Zapisz" nie przyjmuje parametrów "4"."**

Jeśli chcesz używać Aspose.Words w aplikacji ASP.NET, zaleca się użycie biblioteki DLL .NET 2.0, jeśli dostępne jest odpowiednie przeciążenie, jak opisano w tym artykule.

## Zapisz w formacie PCL {#save-a-document-to-pcl}

Aspose.Words obsługuje zapisywanie dokumentów w języku PCL (język poleceń drukarki). Aspose.Words może zapisywać dokumenty w formacie PCL 6 (PCL 6 Enhanced lub PCL XL). Klasę `PclSaveOptions` można wykorzystać do określenia dodatkowych opcji podczas zapisywania dokumentu w formacie PCL.

Poniższy przykład kodu pokazuje, jak zapisać dokument w formacie PCL przy użyciu opcji zapisywania:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## Zobacz też

- Informacje o obiekcie ASP.NET [HttpResponse](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8)
