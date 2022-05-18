describe MyClass do
  before { allow_any_instance_of(MyClass).to receive(:foo) }

  setup do
    3.times { create :user }
    FactoryBot.build(:whatever)
    head 200
  end

  context 'no when here' do
    it 'fails rubocop' do
      allow(foo).to receive(:bar) { |&block| block.call(1) }
    end
  end
end
