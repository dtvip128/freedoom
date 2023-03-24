# frozen_string_literal: true

require 'rails_helper'

describe 'VideosController', type: :request do
  before(:all) do
    create_basic_data
  end

  let(:params) do
    { video: { url: url } }
  end
  let(:url) { 'https://www.youtube.com/watch?v=rR1_UqABjyE&list=PL_5v27ZDPN8jqndiv2NExIZqxnUDm2e_d&index=53' }

  describe 'POST #create' do
    before do
      post '/videos', params: params
    end

    context 'when share a video' do
      it 'there is a video created' do
        expect(Video.count).to eq 1
      end
    end

    context 'when the video url is invalid' do
      let(:url) { 'dat123' }

      it 'there is no video created' do
        expect(Video.count).to eq 0
      end
    end
  end
end
