class ProdutosController < ApplicationController
  def index
    @produtos = Produto.order(nome: :desc)
    @produto_discount = Produto.order(:preco).limit 1
  end

  def create
    produto = params.require(:produto).permit(:nome, :descricao, :quantidade, :preco)
    Produto.create produto
    redirect_to root_path
  end
end
