require 'rails_helper'

RSpec.describe 'Services API', type: :request do
  let!(:services) { create_list(:service, 10) }
  let(:service_id) { services.first.id }
  let(:service_name) { services.first.name }
  let(:service_version) { services.first.version }

  # GET tests
  describe 'GET /services' do
    before { get '/services' }

    it 'returns services' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'return status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /services/:id' do
    before { get '/services/#{service_id}' }

    it 'returns the service' do
      expect(json).not_to be_empty
      expect(json['id']).to eq(service_id)
    end

    it 'return status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /services?name=:name' do
    before { get '/services?name=#{service_name}' }

    it 'returns the service' do
      expect(json).not_to be_empty
      expect(json['name']).to eq(service_name)
    end

    it 'return status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /services?name=:name&version=:version' do
    before { get '/services?name=#{service_name}&version=#{service_version}' }

    it 'returns the service' do
      expect(json).not_to be_empty
      expect(json['name']).to eq(service_name)
    end

    it 'return status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'when service does not exist' do
    let(:service_id) { 100 }

    it 'returns status code 404' do
      expect(response).to have_http_status(404)
    end

    it 'returns a not found message' do
      expect(response.body).to match(/Service not found/)
    end
  end
  # end of GET tests

  # testing POST methods
end