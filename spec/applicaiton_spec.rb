require "spec_helper"

RSpec.describe 'The HelloWorld App' do
  def app
    Rulers::Application.new
  end

  it "says hello" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello from Ruby on Rulers')
  end
end
