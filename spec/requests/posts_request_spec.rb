require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe '新規投稿' do
    context '新規投稿ページが表示される' do
      before do
        get posts_new_path
      end
      it 'リクエストは200' do
        expect(response.status).to eq 200
      end
      it 'タイトルの表示' do
        expect(response.body).to include("新規投稿")
      end
    end
  end
end
