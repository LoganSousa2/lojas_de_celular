class Relatorio2Pdf < Prawn::Document
    def initialize(dados, view)
      super(top_margin: 10)
      @dados = dados
      @view = view
      printPdf
    end

    def printPdf 
      horaAtual = Time.now
      text "#{horaAtual.strftime("%d/%m/%Y - %H:%M " )}", :align=> :right, :cell_style => { :font => "Courier"},:size => 7
      move_down 5
      text "Relatório de Produto", :align=> :center,:style => :bold, :font => "Courier", :size => 10
      table tabelacabecalho , :cell_style => { :font =>"Courier", :size => 10, } do
        column(0).width = 60
        column(0).font_style = :bold
        column(1).width = 90
        column(0).font_style = :bold
        column(2).width = 50
        column(0).font_style = :bold
        column(3).width = 50
        column(0).font_style = :bold
        column(4).width = 70
        column(0).font_style = :bold
        column(5).width = 70
        column(0).font_style = :bold
        column(6).width = 60
        column(0).font_style = :bold
        column(7).width = 70
        column(0).font_style = :bold
      end
      @dados.each do |dado|
        table tabeladados(dado) , :cell_style => { :font =>"Courier", :size => 10, } do
          column(0).width = 60
          column(0).font_style = :bold
          column(1).width = 90
          column(2).width = 50
          column(3).width = 60
          column(4).width = 70
          column(5).width = 70
          column(6).width = 70
          column(7).width = 70
         
        end
      end
    end


  def tabelacabecalho
      [["cod", "Nome", "Cpf_cnpj", "Email", "Telefone",  "Endereco", "Cidade", "Estado", "Fornrcedor"]]
  end 

  def tabeladados(dado)
    [[dado.id.to_s, dado.nome, dado.cpf_cnpj, dado.email, dado.telefone, dado.endereco, dado.cidade, dado.estado]]
  end 

  def floatMoney(valor)
    valor = sprintf('%.2f', valor).to_s
    valor = valor.gsub('.',',')
    return valor
  end
       
end