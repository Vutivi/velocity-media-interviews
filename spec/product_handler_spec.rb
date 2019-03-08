require './lib/products/product'
require './lib/products/line_product'
require './lib/products/trunk_product'
require './lib/product_handler'

describe ProductHandler do
  let(:handler)       { ProductHandler.new }

  describe 'increase_product_fee' do
    context 'when it is a line product' do
      let(:line_product)  { Products::LineProduct.new  }

      it 'returns correct results' do
        line_product.service_fee = 200
        expect(handler.increase_product_fee(line_product, 20)).to eq 240
      end
    end

    context 'when it is a trunk product' do
      let(:trunk_product) { Products::TrunkProduct.new }

      it 'returns correct results' do
        trunk_product.service_fee = 200
        expect(handler.increase_product_fee(trunk_product, 10)).to eq 220
      end
    end
  end
end
