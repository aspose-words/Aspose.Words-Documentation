---
title: FAQ
second_title: Aspose.Words Para C++
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words Para C++ responde às perguntas mais frequentes. Aprenda esta página para resolver rapidamente o seu problema em questões gerais ou tópicos específicos."
weight: 75
url: /pt/cpp/faq/
timestamp: 2024-01-31-14-23-37
---

Esta página contém respostas às perguntas mais frequentes. Por favor, Aprenda a página atual – talvez isso permita que você resolva seu problema rapidamente.

Se você não encontrou a resposta para sua pergunta, pode perguntar no fórum de suporte. Para obter informações sobre como comunicar adequadamente a sua pergunta ou problema, consulte o [Suporte Técnico](/words/cpp/technical-support/) página.

{{% alert color="primary" %}}

As perguntas frequentes são agrupadas por tópico para sua conveniência.

{{% /alert %}}

## Geral

**P: o que é Aspose.Words?**

Aspose.Words para C++ é uma biblioteca de classes que permite que seus aplicativos executem uma ampla variedade de tarefas de processamento de documentos. Com Aspose.Words para C++, você pode gerar, modificar, converter, renderizar e imprimir documentos sem aplicativos de terceiros.

Os detalhes podem ser encontrados em nossa documentação.

------

**P: O que significa "Aspose.Words não requer aplicações de terceiros"?**

Aspose.Words para C++ não necessita de instalar quaisquer aplicações de terceiros ou pacotes de software adicionais para funcionar. Basta baixar e instalar Aspose.Words conforme descrito no ["Instalação"](/words/cpp/installation/) artigo e começar.

------

**P: Quais plataformas Aspose.Words suportam?**

Aspose.Words Para C++ abrange a maioria dos ambientes de desenvolvimento populares e plataformas de implantação. Its API pode ser usado para desenvolver aplicativos para uma ampla gama de sistemas operacionais, como Windows, Linux e Mac OS, e várias plataformas.

Para mais informações, ver o [Visão Geral Do Produto](/words/cpp/product-overview/) página.

------

**P: Que formatos de Documento Aspose.Words suporta?**

Aspose.Words Para C++ suporta a maioria dos formatos de documentos populares, tais como DOC, DOCX, HTML, Markdown, PDF, XML, e outros.

Você pode ver a lista completa de formatos suportados no [Formatos De Documentos Suportados](/words/cpp/supported-document-formats/) página.

------

**P: Como posso experimentar Aspose.Words grátis?**

Você pode fazer isso de duas maneiras – usando a versão de avaliação ou uma licença temporária de 30 dias. A versão de teste é a mesma que a adquirida, fornece funcionalidade completa do produto, mas adiciona uma marca d'água avaliativa na parte superior do documento ao carregar e salvar e limita o tamanho máximo do documento a algumas centenas de parágrafos. Uma licença temporária permite que você teste Aspose.Words sem restrições de Avaliação por 30 dias.

Ver o [Licenciamento e subscrição](/words/cpp/licensing/) página para mais informações.

{{% alert color="primary" %}}

Você também pode experimentar alguns dos recursos Aspose.Words mais populares por meio do [Aspose.Words aplicações online gratuitas](https://products.aspose.app/words).

{{% /alert %}}

------

**P: Como posso comprar Aspose.Words?**

Para comprar uma licença Aspose.Words, você precisa ir ao [Compra](https://purchase.aspose.com/buy) página, selecione o produto "Aspose.Words " e o tipo de licença que mais lhe convier. Em seguida, adicione a licença ao seu carrinho e siga as instruções do carrinho de compras.

Após a compra, solicite a licença conforme descrito no [Licença Adquirida](/words/cpp/licensing/#purchased-license) secção.

Detalhes sobre como instalar Aspose.Words podem ser lidos no [Instalação](/words/cpp/installation/) página.

------

**P: Como posso obter suporte?**

Use o Fórum de suporte técnico gratuito. Para obter detalhes sobre como relatar adequadamente um problema e o que precisa ser feito antes de entrar em contato com o fórum, consulte o [Suporte Técnico](/words/cpp/technical-support/) página.

## Renderizar um documento

{{% alert color="primary" %}}

Você pode encontrar informações mais detalhadas sobre a renderização no [Renderização](/words/cpp/rendering/) secção de documentação.

{{% /alert %}}

**P: Por que o layout e as fontes no documento de saída são diferentes do original?**

A fonte pode não estar disponível ou o formato da fonte é suportado por Microsoft Word mas não por Aspose.Words. Aspose.Words irá realizar [substituição de fonte](/words/cpp/manipulate-and-substitute-truetype-fonts/).

Para verificar se a fonte está faltando:

- Em Aspose.Words use os avisos de substituição de fonte (para obter detalhes, consulte a seção " Como reconhecer que a fonte foi substituída [Manipular e substituir fontes TrueType ](/words/cpp/manipulate-and-substitute-truetype-fonts/) artigo).
- Em Microsoft Word abra a caixa de diálogo" substituição de fonte " (ficheiro de Opções de substituição de fonte avançada de Opções de substituição de fonte avançada).

------

**P: Por que o fallback da fonte não funciona em plataformas NãoWindows e os caracteres Unicode são substituídos pelo .notdef glifo?**

Muitas vezes podemos ver o glifo `.notdef` em vez de algum caractere Unicode. Geralmente é uma caixa ou um glifo de pergunta.

Isso ocorre porque as configurações de fallback Microsoft do Office são selecionadas por padrão e as fontes Microsoft do Office não estão disponíveis. Os utilizadores têm de instalar Microsoft tipos de letra do Office ou alterar as definições de reserva.

------

**P: Por que o texto complexo da escrita, como o tailandês ou o hebraico, pode ser exibido incorretamente por algum motivo, como a posição errada para diacríticos ou ligaduras imprecisas?**

Algumas fontes de script complexas exigem que os recursos avançados de tipografia sejam processados para exibi-los corretamente. A tipografia avançada está desactivada em Aspose.Words por predefinição. Os utilizadores têm de activar a tipografia avançada com [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/).

------

**P: preciso de arquivos de licença para as fontes que uso?**

Sim, tens. Portanto, ao copiar fontes, lembre-se de que a maioria das fontes é protegida por direitos autorais. Localize as licenças de fonte com antecedência e verifique se elas podem ser transferidas livremente para outra máquina.

## Acrescentar ou inserir um documento

{{% alert color="primary" %}}

Pode encontrar informações mais detalhadas sobre a programação com documentos no [Programação com documentos](/words/cpp/programming-with-documents/) secção de documentação.

{{% /alert %}}

**P: Por que o conteúdo anexado a um documento não aparece na mesma página?**

O resultado do anexo aparece numa página separada devido a uma diferença nas definições [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) para as secções em que os documentos são anexados em conjunto. Faça configurações idênticas de **PageSetup** para as seções em que os documentos são anexados.

## Converter um documento

{{% alert color="primary" %}}

Pode encontrar informações mais detalhadas sobre a conversão de um documento no [Converter um documento](/words/cpp/convert-a-document/) secção de documentação.

{{% /alert %}}

**P: Como converter DOCX para PDF?**

Também é muito fácil, basta carregar um documento no modelo e guardá-lo em qualquer formato suportado.

O exemplo de código a seguir mostra o processo de conversão de um arquivo DOCX em PDF:

{{< highlight csharp >}}
// Load the document from disk.
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Rendering.doc");

System::String outputPath = outputDataDir + u"Doc2Pdf.SaveDoc2Pdf.pdf";
// Save the document in PDF format.
doc->Save(outputPath);
{{< /highlight >}}

## Manipular com um documento

{{% alert color="primary" %}}

Pode encontrar informações mais detalhadas sobre a programação com documentos no [Programação com documentos](/words/cpp/programming-with-documents/) secção de documentação.

{{% /alert %}}

**P: Como dividir um documento página por página?**

Aspose.Words permite dividir um documento de várias páginas, página por página.

O exemplo de código a seguir mostra como dividir um documento e salvar cada página como um documento separado:

{{< highlight csharp >}}
auto doc = MakeObject<Document>(MyDir + u"Big document.docx");

int pageCount = doc->get_PageCount();

for (int page = 0; page < pageCount; page++)
{
    // Save each page as a separate document.
    SharedPtr<Document> extractedPage = doc->ExtractPages(page, 1);
    extractedPage->Save(ArtifactsDir + String::Format(u"SplitDocument.PageByPage_{0}.docx", page + 1));
}
{{< /highlight >}}

------

**Q: Como abrir um criptografado**

Você pode tentar abrir um documento criptografado sem uma senha, o que deve levar a uma exceção.

O exemplo de código a seguir mostra como abrir um documento criptografado com uma senha:

{{< highlight csharp >}}
// Create a document.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Write(u"Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
auto options = System::MakeObject<OoxmlSaveOptions>(SaveFormat::Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options->set_Password(u"MyPassword");
doc->Save(u"OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = System::MakeObject<Document>(u"OoxmlSaveOptions.Password.docx", System::MakeObject<LoadOptions>(u"MyPassword"));

ASSERT_EQ(doc->GetText().Trim(), u"Hello world!");
{{< /highlight >}}
