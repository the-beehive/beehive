require 'test_helper'

class SessionsControllerTest < ActionController::TestCase

    test '#signup_success' do
        OmniAuth.config.test_mode = true
        OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new({
            'provider' => 'facebook',
            'uid' => '123451234512345',
            'info' => {'email' => 'testuser@testmail.com', 'name' => 'test', 'image' => ''}
        })
        request.env['omniauth.env'] = OmniAuth.config.mock_auth[:facebook]

        get :auth
    end




end
