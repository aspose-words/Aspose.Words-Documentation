---
title: FAQ
second_title: Aspose.Words para Java
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words para Java responde às perguntas mais frequentes. Aprenda esta página para resolver rapidamente o seu problema em questões gerais ou tópicos específicos."
weight: 75
url: /pt/java/faq/
timestamp: 2024-01-31-14-23-37
---

Esta página contém respostas às perguntas mais frequentes. Por favor, Aprenda a página atual – talvez isso permita que você resolva seu problema rapidamente.

Se você não encontrou a resposta para sua pergunta, pode perguntar no fórum de suporte. Para obter informações sobre como comunicar adequadamente a sua pergunta ou problema, consulte o [Suporte T7cnico](/words/java/technical-support/) página.

{{% alert color="primary" %}}

As perguntas frequentes são agrupadas por tópico para sua conveniência.

{{% /alert %}}

## Geral

**P: o que é Aspose.Words?**

Aspose.Words for Java é uma biblioteca de classes que permite que seus aplicativos executem uma ampla variedade de tarefas de processamento de documentos. Com Aspose.Words para Java, você pode gerar, modificar, converter, renderizar e imprimir documentos sem aplicativos de terceiros.

Os detalhes podem ser encontrados em nossa documentação.

------

**P: O que significa "Aspose.Words não requer aplicações de terceiros"?**

Aspose.Words para Java não é necessário instalar quaisquer aplicações de terceiros ou pacotes de software adicionais para funcionar. Basta baixar e instalar Aspose.Words conforme descrito no [Instalaa](/words/java/installation/) artigo e começar.

------

**P: Quais plataformas Aspose.Words suportam?**

Aspose.Words para Java abrange a maioria dos ambientes de desenvolvimento populares e plataformas de implantação. Its API pode ser usado para desenvolver aplicativos para uma ampla gama de sistemas operacionais, como Windows, Linux e Mac OS, e várias plataformas.

Para mais informações, ver o [Vis Zhejo Geral Do Produto](/words/java/product-overview/) page e o [Plataformas e InteropCapacidade de execução](/words/java/platforms-and-interoperability/) secção.

------

**P: Que formatos de Documento Aspose.Words suporta?**

Aspose.Words para Java suporta a maioria dos formatos de documentos populares, tais como DOC, DOCX, HTML, Markdown, PDF, XML, e outros.

Você pode ver a lista completa de formatos suportados no [Formatos De Documentos Suportados](/words/java/supported-document-formats/) página.

------

**P: Como posso experimentar Aspose.Words grátis?**

Você pode fazer isso de duas maneiras – usando a versão de avaliação ou uma licença temporária de 30 dias. A versão de teste é a mesma que a adquirida, fornece funcionalidade completa do produto, mas adiciona uma marca d'água avaliativa na parte superior do documento ao carregar e salvar e limita o tamanho máximo do documento a algumas centenas de parágrafos. Uma licença temporária permite que você teste Aspose.Words sem restrições de Avaliação por 30 dias.

Ver o [Licenciamento e subscri](/words/java/licensing/) página para mais informações.

{{% alert color="primary" %}}

Você também pode experimentar alguns dos recursos Aspose.Words mais populares por meio do [Aspose.Words aplicação grátis online](https://products.aspose.app/words).

{{% /alert %}}

------

**P: Como posso comprar Aspose.Words?**

Para comprar uma licença Aspose.Words, você precisa ir ao [Compra](https://purchase.aspose.com/buy) página, selecione o produto "Aspose.Words " e o tipo de licença que mais lhe convier. Em seguida, adicione a licença ao seu carrinho e siga as instruções do carrinho de compras.

Após a compra, solicite a licença conforme descrito no [Licen3a Adquirida](/words/java/licensing/#purchased-license) secção.

Detalhes sobre como instalar Aspose.Words podem ser lidos no [Instalaa](/words/java/installation/) página.

------

**P: Como posso obter suporte?**

Use o Fórum de suporte técnico gratuito. Para obter detalhes sobre como relatar adequadamente um problema e o que precisa ser feito antes de entrar em contato com o fórum, consulte o [Suporte T7cnico](/words/java/technical-support/) página.

## Renderizar um documento

{{% alert color="primary" %}}

Você pode encontrar informações mais detalhadas sobre a renderização no [Renderiza3](/words/java/rendering/) secção de documentação.

{{% /alert %}}

**P: Por que o layout e as fontes no documento de saída são diferentes do original?**

A fonte pode não estar disponível ou o formato da fonte é suportado por Microsoft Word mas não por Aspose.Words. Aspose.Words irá realizar [substituição de fonte](/words/java/manipulate-and-substitute-truetype-fonts/).

Para verificar se a fonte está faltando:

- Em Aspose.Words use os avisos de substituição de fonte (para obter detalhes, consulte a seção " Como reconhecer que a fonte foi substituída [Manipular e substituir Fontes TrueType](/words/java/manipulate-and-substitute-truetype-fonts/) artigo).
- Em Microsoft Word abra a caixa de diálogo" substituição de fonte " (ficheiro de Opções de substituição de fonte avançada de Opções de substituição de fonte avançada).

------

**P: Por que o fallback da fonte não funciona em plataformas NãoWindows e os caracteres Unicode são substituídos pelo .notdef glifo?**

Muitas vezes podemos ver o glifo `.notdef` em vez de algum caractere Unicode. Geralmente é uma caixa ou um glifo de pergunta.

Isso ocorre porque as configurações de fallback Microsoft do Office são selecionadas por padrão e as fontes Microsoft do Office não estão disponíveis. Os utilizadores têm de instalar Microsoft tipos de letra do Office ou alterar as definições de reserva.

------

**P: Por que o texto complexo da escrita, como o tailandês ou o hebraico, pode ser exibido incorretamente por algum motivo, como a posição errada para diacríticos ou ligaduras imprecisas?**

Algumas fontes de script complexas exigem que os recursos avançados de tipografia sejam processados para exibi-los corretamente. A tipografia avançada está desactivada em Aspose.Words por predefinição. Os utilizadores têm de activar a tipografia avançada com [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory).

------

**P: preciso de arquivos de licença para as fontes que uso?**

Sim, tens. Portanto, ao copiar fontes, lembre-se de que a maioria das fontes é protegida por direitos autorais. Localize as licenças de fonte com antecedência e verifique se elas podem ser transferidas livremente para outra máquina.

## Aninhado Mail Merge

{{% alert color="primary" %}}

Você pode encontrar informações mais detalhadas sobre Mail Merge no [Mail Merge e relações](/words/java/mail-merge-and-reporting/) secção de documentação.

{{% /alert %}}

**P: Por que não há campos mesclados na saída gerada?**

O nome original do campo de mesclagem permanece o mesmo sem ser substituído pelos dados necessários da fonte de dados:

- Verifique se os dados estão sendo carregados corretamente nas tabelas: defina o [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) corretamente com todas as chaves primárias e relacionamentos necessários.
- Verifique se os campos de mesclagem estão nomeados corretamente. Use o método [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) para obter todos os nomes de campos de mesclagem e garantir que o nome dos campos de mesclagem em seu modelo corresponda ao da sua fonte de dados.

------

**P: Por que a saída da mesclagem aninhada não exibe dados da tabela filho para a primeira entrada na tabela pai, mas exibe todos os itens da última entrada na tabela pai, mesmo aqueles que não estão realmente vinculados a ela?**

Isso ocorre porque as regiões de mesclagem no modelo não estão formadas corretamente, o que pode fazer com que todas as regiões Mail Merge aninhadas parem de exibir qualquer coisa. A tag de abertura [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) e a tag de fechamento [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) devem corresponder e estar na mesma linha ou célula. Por exemplo, se você começar a aninhar regiões de mesclagem em uma célula de uma tabela, deverá encerrar a região de mesclagem na mesma linha da primeira célula.

------

**P: Por que cada entrada da tabela pai exibe todos os itens da tabela filho, mesmo aqueles que não estão realmente vinculados a ela?**

Isso ocorre porque a relação entre as tabelas pai e filho não está configurada ou está configurada incorretamente. É necessário:

- Assegure a integridade dos dados em seu **DataSet** e use o objeto **DataRelation** para representar a relação pai-filho entre tabelas de dados relacionadas.
- Verifique a seção "Como configurar relações de dados em Mail Merge aninhado com regiões" no artigo [Aninhado Mail Merge com regi](/words/java/nested-mail-merge-with-regions/).

------

**Q: Por que é uma exceção: "sistema.ArgumentException: Esta restrição não pode ser habilitada, pois nem todos os valores têm valores pai correspondentes " durante a execução aninhada mail merge?**

Isso acontece porque nem todo registro pai tem um registro filho, portanto, sua fonte de dados não corresponde aos seguintes critérios: *every row in the parent table should have a one-to-one relationship with the rows of the child table based on the primary and foreign keys*.

Desative as restrições de chave estrangeira ao criar um **DataRelation**.

## Acrescentar ou inserir um documento

{{% alert color="primary" %}}

Pode encontrar informações mais detalhadas sobre a programação com documentos no [Programa antidepressivo com documentos](/words/java/programming-with-documents/) secção de documentação.

{{% /alert %}}

**P: Por que o conteúdo anexado a um documento não aparece na mesma página?**

O resultado do anexo aparece numa página separada devido a uma diferença nas definições [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) para as secções em que os documentos são anexados em conjunto. Faça configurações idênticas de **PageSetup** para as seções em que os documentos são anexados.

## Converter um documento

{{% alert color="primary" %}}

Pode encontrar informações mais detalhadas sobre a conversão de um documento no [Conversor um documento](/words/java/convert-a-document/) secção de documentação.

{{% /alert %}}

**P: Como converter DOCX para PDF?**

Também é muito fácil, basta carregar um documento no modelo e guardá-lo em qualquer formato suportado.

O exemplo de código a seguir mostra o processo de conversão de um arquivo DOCX em PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipular com um documento

{{% alert color="primary" %}}

Pode encontrar informações mais detalhadas sobre a programação com documentos no [Programa antidepressivo com documentos](/words/java/programming-with-documents/) secção de documentação.

{{% /alert %}}

**P: Como dividir um documento página por página?**

Aspose.Words permite dividir um documento de várias páginas, página por página.

O exemplo de código a seguir mostra como dividir um documento e salvar cada página como um documento separado:

{{< highlight java >}}
Document doc = new Document(dataDir + "TestFile (Split).docx");

int pageCount = doc.getPageCount();

// Save each page as a separate document.
for (int page = 0; page <= pageCount; page++)
{
	Document extractedPage = doc.extractPages(page, 1);
	extractedPage.save(dataDir + "SplitDocumentPageByPageOut_" + (page + 1) + ".docx");
}
{{< /highlight >}}

------

**Q: Como abrir um criptografado**

Você pode tentar abrir um documento criptografado sem uma senha, o que deve levar a uma exceção.

O exemplo de código a seguir mostra como abrir um documento criptografado com uma senha:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// We will not be able to open this document with Microsoft Word or
// Aspose.Words without providing the correct password.
try
{
    doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx"));
}
catch (Exception e)
{
    Assert.assertTrue(e instanceof IncorrectPasswordException);
}
{{< /highlight >}}

------

**P: Como imprimir um documento?**

Para uma resposta detalhada, aprenda o artigo [Imprimir um documento programaticamente ou utilizar caixas de](/words/java/print-a-document-programmatically-or-using-dialogs/).
