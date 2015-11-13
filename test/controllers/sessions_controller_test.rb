require 'test_helper'

class SessionsControllerTest < ActionController::TestCase

  test '#signup_success' do
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new({
        'provider' => 'facebook',
        'uid' => '123451234512345',
        'name' => 'testname'
    })
    request.env['omniauth.env'] = OmniAuth.config.mock_auth[:facebook]

    assert_routing "/auth/provider/callback",
      :controller => "sessions",
      :action => "create",
      :provider => "provider"
  end
end
