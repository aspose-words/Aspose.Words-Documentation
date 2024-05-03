---
title: Licenciamento
second_title: Aspose.Words para Java
articleTitle: Licenciamento
linktitle: Licenciamento
description: "Licenciamento Aspose.Words para Android via via via via Java."
type: docs
weight: 60
url: /pt/java/licensing-android/
---

Às vezes, para estudar melhor o sistema, você quer mergulhar no código o mais rápido possível. Tornar isto mais fácil, Aspose.Words fornece diferentes planos para compra ou oferece uma avaliação gratuita e uma licença temporária de 30 dias para avaliação.

{{% alert color="primary" %}}

Note que existem várias políticas e práticas gerais que orientam você sobre como avaliar, licenciar corretamente e comprar nossos produtos. Você pode encontrá-los no [Políticas de compra e FAQ](https://purchase.aspose.com/policies/) Secção.

{{% /alert %}}

## Avaliação gratuita ou Licença Temporária

Aspose.Words é um software incrível que os desenvolvedores podem tentar antes de comprar. Você pode facilmente baixar / instalar Aspose.Words para Java e Aspose.Words para Android via via via via Java [da página de download](https://releases.aspose.com/words/androidjava/) para avaliação.

A versão de avaliação é a mesma que a comprada – a versão Trial simplesmente fica licenciada quando você adiciona algumas linhas de código para aplicar a licença.

{{% alert color="primary" %}}

Saiba mais detalhes sobre a Licença de Avaliação Gratuita ou Temporária Aspose.Words para Android via via via via Java sobre [Licenciamento e Subscrição](/words/pt/java/licensing/).

{{% /alert %}}

## Licença comprada

Após a compra, você precisa aplicar o arquivo de licença ou incluir o arquivo de licença como um recurso incorporado. Esta seção descreve opções de como isso pode ser feito, e também comentários sobre algumas perguntas comuns.

{{% alert color="primary" %}}

Uma licença é um arquivo XML texto simples que contém detalhes como nome do produto, número de desenvolvedores licenciados, data de validade da assinatura, e assim por diante.

O arquivo é assinado digitalmente, então não modifique o arquivo. Mesmo a adição inadvertida de uma quebra de linha extra no arquivo irá invalidá-lo.

{{% /alert %}}

{{% alert color="primary" %}}

Você precisa definir a licença:

* somente uma vez por domínio de aplicação
* antes de usar qualquer outro Aspose.Words aulas

{{% /alert %}}

{{% alert color="primary" %}}

Você pode encontrar informações de preços sobre o [InformaÃ§Ãμes sobre Pricing](https://purchase.aspose.com/pricing/words/family/) página.

{{% /alert %}}

### Protegendo sua licença adquirida

Depois de comprar uma licença, você precisa ler cuidadosamente as informações na página [Protegendo sua licença adquirida](https://purchase.aspose.com/orders/protecting-your-license-file) para proteger seu arquivo de licença. Por favor, note que esta página está disponível apenas para visualização se tiver uma licença paga.

### Opções de aplicação de licença

As licenças podem ser aplicadas a partir de vários locais:

* Caminho explícito
* Um recurso incorporado
* Como uma Licença Medida – um novo mecanismo de licenciamento

#### Carregando o arquivo Licença

Em Aspose.Words para Android via via via via Java, a licença pode ser [Licenciamento e Subscrição](/words/pt/java/licensing/), ou carregado de um fluxo:

1. Coloque o arquivo de licença em qualquer local **/mnt/sdcard/**.
1. Criar um fluxo que refere o arquivo.
1. Passe o fluxo (contendo o arquivo de licença) para o `SetLicense` método.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

Aplicando uma licença de um recurso incorporado. Para acessar a licença como um recurso por nome de um Android arquivo de pacote:

1. Adicione o arquivo de licença como um recurso ao aplicativo **res/raw** pasta.
   O arquivo de licença deve ser visível no **res/raw** pasta.
1. Acesse/carregue a licença do recurso com a seguinte amostra de código.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Aplicar Licença Medida

Aspose.Words permite que os desenvolvedores para aplicar a chave de medição. É um novo mecanismo de licenciamento. O novo mecanismo de licenciamento será usado juntamente com o método de licenciamento existente. Aqueles clientes que querem ser cobrados com base no uso do API recursos podem usar o licenciamento de medição.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### Alterar o nome do arquivo de licença

O nome do arquivo de licença não precisa ser 'Aspose.Words.Android.Java.lic'. Você pode renomeá-lo para qualquer coisa que você gosta e usar esse nome ao chamar `License.SetLicense`.

### Exceção - Não é possível encontrar nome de arquivo de licença

Quando você baixar uma licença que você comprou, o arquivo de licença é nomeado **Aspose.Words.Android.Java** por padrão. O arquivo de licença é baixado através do seu navegador e alguns navegadores reconhecem o arquivo de licença como XML e anexam uma extensão .xml ao nome. O arquivo baixado torna-se **Aspose.Words.Android.Java.lic.XML**.

Quando Microsoft Windows está configurado para ocultar extensões de tipos de arquivos conhecidos (infelizmente, isso é padrão na maioria dos Windows instalações), o arquivo de licença está listado como **Aspose.Words.Android.Java** em Windows Explorador. Parece o nome de arquivo esperado. Se ligares `License.SetLicense` e passarAspose.Words.Android.Java.lic', você verá e exceção porque não há tal arquivo

Para resolver o problema, renomeie o arquivo para remover a extensão .xml invisível. Recomendamos que você desative a opção "hide extensions" em Microsoft Windows.

## Usando vários produtos de aspose

Se você usar vários produtos Aspose em uma aplicação, por exemplo Aspose.Words e `Aspose.Cells`, aqui estão algumas dicas úteis.

- Defina a licença para cada produto Aspose separadamente.
  Mesmo que você tenha um único arquivo de licença para todos os componentes, por exemplo 'Aspose. Total.Android.Java.lic', você ainda precisa ligar para o `License.SetLicense` método separadamente para cada produto Aspose.
- Use o nome de classe de licença totalmente qualificado.
  Cada um Aspose product has a `License` classe em seu namespace. Por exemplo, Aspose.Words tem com.aspose.words. Licença e `Aspose.Cells` tem com.aspose.cells. Classe de licença. Usar o nome de classe totalmente qualificado permite evitar qualquer confusão sobre qual licença é aplicada a qual produto.
