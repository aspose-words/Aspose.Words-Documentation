---
title: Perguntas frequentes
second_title: Aspose.Words para .NET
articleTitle: Perguntas frequentes – Aspose.Words para .NET
linktitle: Perguntas frequentes – Aspose.Words para .NET
articleTitle: Perguntas frequentes
linktitle: Perguntas frequentes
type: docs
description: "Aspose.Words para .NET responde às perguntas mais frequentes. Aprenda esta página para resolver rapidamente seu problema em questões gerais ou tópicos específicos."
weight: 75
url: /pt/net/faq/
timestamp: 2024-11-18-12-56-02
---

Esta página contém respostas às perguntas mais frequentes. Por favor, leia a página atual – talvez isso permita que você resolva seu problema rapidamente.

Se você não encontrou a resposta para sua pergunta, pergunte no fórum de suporte. Para obter informações sobre como relatar adequadamente sua dúvida ou problema, consulte a página [Suporte técnico](/words/pt/net/technical-support/).

{{% alert color="primary" %}}

As perguntas mais frequentes estão agrupadas por tópico para sua conveniência.

{{% /alert %}}

## Em geral

**P: O que é Aspose.Words?**

Aspose.Words for .NET é uma biblioteca de classes que permite que seus aplicativos executem uma ampla variedade de tarefas de processamento de documentos. Com Aspose.Words para .NET, você pode gerar, modificar, converter, renderizar e imprimir documentos sem aplicativos de terceiros.

Detalhes podem ser encontrados em nossa documentação.

------

**P: O que significa "Aspose.Words não requer aplicativos de terceiros"?**

Aspose.Words for .NET não precisa instalar nenhum aplicativo de terceiros ou pacotes de software adicionais para funcionar. Basta baixar e instalar o Aspose.Words conforme descrito no artigo [Instalação](/words/pt/net/installation/) e começar.

------

**P: Quais plataformas o Aspose.Words suporta?**

Aspose.Words para .NET cobre a maioria dos ambientes de desenvolvimento e plataformas de implantação populares. Seu API pode ser usado para desenvolver aplicativos para uma ampla variedade de sistemas operacionais, como Windows, Linux e Mac OS, e diversas plataformas.

Para obter detalhes, consulte a página [Resumo do Produto](/words/pt/net/product-overview/) e a seção [Plataformas e capacidade de Interop](/words/net/platforms-and-interoperability/).

------

**P: Quais formatos de documento o Aspose.Words suporta?**

Aspose.Words para .NET suporta a maioria dos formatos de documentos populares, como DOC, DOCX, HTML, Markdown, PDF, XML e outros.

Você pode ver a lista completa de formatos suportados na página [Formatos de documentos suportados](/words/pt/net/supported-document-formats/).

------

**P: Como posso experimentar o Aspose.Words gratuitamente?**

Você pode fazer isso de duas maneiras – usando a versão de teste ou uma licença temporária de 30 dias. A versão de teste é igual à comprada, oferece funcionalidade completa do produto, mas adiciona uma marca d’água avaliativa na parte superior do documento ao carregar e salvar e limita o tamanho máximo do documento a algumas centenas de parágrafos. Uma licença temporária permite testar Aspose.Words sem restrições de avaliação por 30 dias.

Consulte a página [Licenciamento e Assinatura](/words/pt/net/licensing/) para obter mais informações.

{{% alert color="primary" %}}

Você também pode experimentar alguns dos recursos Aspose.Words mais populares por meio do [Aplicativos online gratuitos Aspose.Words](https://products.aspose.app/words).

{{% /alert %}}

------

**P: Como posso comprar Aspose.Words?**

Para comprar uma licença Aspose.Words, você precisa ir até a página [Comprar](https://purchase.aspose.com/buy), selecionar o produto "Aspose.Words" e o tipo de licença que mais lhe convier. Em seguida, adicione a licença ao seu carrinho e siga as instruções do carrinho de compras.

Após a compra, solicite a licença conforme descrito na seção [Licença adquirida](/words/net/licensing/#purchased-license).

Detalhes sobre como instalar o Aspose.Words podem ser lidos na página [Instalação](/words/pt/net/installation/).

------

**P: Como posso obter suporte?**

Use o fórum de suporte técnico gratuito. Para obter detalhes sobre como relatar um problema corretamente e o que precisa ser feito antes de entrar em contato com o fórum, consulte a página [Suporte técnico](/words/pt/net/technical-support/).

## Renderizando um documento

{{% alert color="primary" %}}

Você pode encontrar informações mais detalhadas sobre renderização na seção de documentação [Renderização](/words/pt/net/rendering/).

{{% /alert %}}

**P: Por que o layout e as fontes do documento de saída são diferentes do original?**

A fonte pode não estar disponível ou o formato da fonte é compatível com Microsoft Word, mas não é compatível com Aspose.Words. Aspose.Words executará [Manipular e substituir fontes TrueType](/words/pt/net/manipulating-and-substitution-truetype-fonts/).

Para verificar se a fonte está faltando:

* No Aspose.Words use os avisos de substituição de fonte (para obter detalhes, consulte a seção "Como reconhecer que a fonte foi substituída" do artigo [Manipular e substituir fontes TrueType](/words/pt/net/manipulating-and-substitution-truetype-fonts/)).
* No Microsoft Word, abra a caixa de diálogo "Substituição de fonte" (Arquivo → Opções → Avançado → Substituição de fonte).

------

**P: Onde devo armazenar fontes para aplicativos ASP.NET?**

No `APS.NET`, não há acesso à pasta de fontes do sistema em confiança média. Os usuários precisam armazenar as fontes em sua própria pasta.

------

**P: Por que o substituto de fonte não funciona em plataformas não Windows e os caracteres Unicode são substituídos pelo .notdef glyph?**

Muitas vezes podemos ver o `.notdef` glyph em vez de algum caractere Unicode. Geralmente é uma caixa ou uma pergunta glyph.

Isso ocorre porque as configurações de fallback do Microsoft Office são selecionadas por padrão e as fontes Microsoft Office não estão disponíveis. Os usuários precisam instalar fontes Microsoft Office ou alterar as configurações substitutas.

------

**P: Por que um texto de escrita complexo, como tailandês ou hebraico, pode ser exibido incorretamente por algum motivo, como posição errada para diacríticos ou ligaduras imprecisas?**

Algumas fontes de script complexas exigem que os recursos de Tipografia Avançada sejam processados para serem exibidas corretamente. A tipografia avançada está desabilitada em Aspose.Words por padrão. Os usuários devem ativar a Tipografia Avançada com [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/).

------

**P: Preciso de arquivos de licença para as fontes que uso?**

Sim, você quer. Portanto, ao copiar fontes, lembre-se de que a maioria das fontes possui direitos autorais. Localize previamente as licenças de fontes e verifique se elas podem ser transferidas gratuitamente para outra máquina.

## Mail Merge aninhado

{{% alert color="primary" %}}

Você pode encontrar informações mais detalhadas sobre Mail Merge na seção de documentação [Mail Merge e relatórios](/words/net/mail-merge-and-reporting/).

{{% /alert %}}

**P: Por que não há campos mesclados na saída gerada?**

O nome original do campo de mesclagem permanece o mesmo sem ser substituído pelos dados necessários da fonte de dados, então:

* Verifique se os dados estão sendo carregados corretamente nas tabelas: configure o [TableName](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/tablename/) corretamente com todas as chaves primárias e relacionamentos necessários.
* Verifique se os campos de mesclagem estão nomeados corretamente. Use o método [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) para obter todos os nomes de campos de mesclagem e garantir que o nome dos campos de mesclagem em seu modelo corresponda ao nome em sua fonte de dados.

------

**P: Por que a saída da mesclagem aninhada não exibe dados da tabela filho para a primeira entrada na tabela pai, mas exibe todos os itens da última entrada na tabela pai, mesmo aqueles que não estão realmente vinculados a ela?**

Isso ocorre porque as regiões de mesclagem no modelo não estão formadas corretamente, o que pode fazer com que todas as regiões Mail Merge aninhadas parem de exibir qualquer coisa. A tag de abertura [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) e a tag de fechamento [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) devem corresponder e estar na mesma linha ou célula. Por exemplo, se você começar a aninhar regiões de mesclagem em uma célula de uma tabela, deverá encerrar a região de mesclagem na mesma linha da primeira célula.

------

**P: Por que cada entrada da tabela pai exibe todos os itens da tabela filha, mesmo aqueles que não estão realmente vinculados a ela?**

Isso ocorre porque o relacionamento entre as tabelas pai e filho não está configurado ou está configurado incorretamente. É necessário:

* Garanta a integridade dos dados em seu **DataSet** e use o objeto **DataRelation** para representar o relacionamento pai-filho entre tabelas de dados relacionadas.
* Confira a seção "Como configurar relações de dados em Mail Merge aninhado com regiões" no artigo [Mail Merge aninhado com regiões](/words/net/nested-mail-merge-with-regions/).

------

**P: Por que há uma exceção: "System.ArgumentException: Esta restrição não pode ser habilitada porque nem todos os valores têm valores pai correspondentes" durante a execução de Mail Merge aninhado?**

Isso acontece porque nem todo registro pai tem um registro filho, então sua fonte de dados não atende aos seguintes critérios: *cada linha na tabela pai deve ter um relacionamento um-para-um com as linhas da tabela filho com base no primário e chaves estrangeiras*.

Desative restrições de chave estrangeira ao criar um **DataRelation**.

## Anexar ou inserir um documento

{{% alert color="primary" %}}

Você pode encontrar informações mais detalhadas sobre programação com documentos na seção de documentação [Programando com Documentos](/words/pt/net/programming-with-documents/).

{{% /alert %}}

**P: Por que o conteúdo anexado a um documento não aparece na mesma página?**

O resultado do acréscimo aparece em uma página separada devido a uma diferença nas configurações [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) para as seções onde os documentos são anexados. Faça configurações **PageSetup** idênticas para as seções onde os documentos são anexados.

## Converter um documento

{{% alert color="primary" %}}

Você pode encontrar informações mais detalhadas sobre a conversão de um documento na seção de documentação [Converter um documento](/words/pt/net/convert-a-document/).

{{% /alert %}}

**P: Como converter PDF para Word?**

É muito fácil, basta carregar um documento no modelo e salvá-lo em qualquer formato suportado.

O exemplo de código a seguir mostra o processo de conversão de um arquivo PDF em DOC:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

// Save the file into MS document format
pdfDocument.Save(_dataDir + "PDFToDOC_out.doc", SaveFormat.Doc); // .Docx, .Rtf, .WordML, etc.
{{< /highlight >}}

------

**P: Como converter DOCX para PDF?**

Também é muito fácil, basta carregar um documento no modelo e salvá-lo em qualquer formato compatível.

O exemplo de código a seguir mostra o processo de conversão de um arquivo DOCX em PDF:

{{< highlight csharp >}}
// Open the source DOCX document.
Document doc = new Document(_dataDir + "input.docx");

// Save the file to PDF format.
doc.Save(_dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipular com um documento

{{% alert color="primary" %}}

Você pode encontrar informações mais detalhadas sobre programação com documentos na seção de documentação [Programando com Documentos](/words/pt/net/programming-with-documents/).

{{% /alert %}}

**P: Como dividir um documento página por página?**

Aspose.Words permite dividir um documento de várias páginas página por página.

O exemplo de código a seguir mostra como dividir um documento e salvar cada página como um documento separado:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Big document.docx");

int pageCount = doc.PageCount;

for (int page = 0; page < pageCount; page++)
{
	// Save each page as a separate document.
	Document extractedPage = doc.ExtractPages(page, 1);
	extractedPage.Save(ArtifactsDir + $"SplitDocument.PageByPage_{page + 1}.docx");
}
{{< /highlight >}}

------

**P: Como abrir um arquivo criptografado** **documento?**

Você pode tentar abrir um documento criptografado sem senha, o que deve levar a uma exceção.

O exemplo de código a seguir mostra como abrir um documento criptografado com uma senha:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.Password = "MyPassword";
doc.Save(ArtifactsDir + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = new Document(ArtifactsDir + "OoxmlSaveOptions.Password.docx", new LoadOptions("MyPassword"));

Assert.AreEqual("Hello world!", doc.GetText().Trim());
{{< /highlight >}}

------

**P: Como imprimir um documento?**

Apenas duas linhas de código.

O exemplo de código a seguir mostra como imprimir um documento de duas maneiras:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "PrintMe.docx");

// Below are two ways of printing our document.
// 1 -  Print using the default printer:
doc.Print();

// 2 -  Specify a printer that we wish to print the document with by name:
string myPrinter = PrinterSettings.InstalledPrinters[4];

doc.Print(myPrinter);
{{< /highlight >}}

------

**P: Como editar um documento PDF?**

Basta carregar o PDF no modelo de documento Aspose.Words e fazer as alterações.

O exemplo de código a seguir mostra como editar um documento:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

DocumentBuilder builder = new DocumentBuilder(pdfDocument);
builder.MoveToDocumentEnd();
builder.Writeln("New paragraph with text");

pdfDocument.Save(_dataDir + "out.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Docker

**P: Como usar Aspose.Words em Docker?**

Para uma resposta detalhada, aprenda o artigo [Como executar Aspose.Words em Docker](/words/pt/net/how-to-run-aspose-words-in-docker/).
