module Spree
  class Gateway::PayuLatamGateway < Gateway
    preference :merchant_id, :string # ID
    preference :account_id, :string # ID
    preference :api_login, :string # ID
    preference :api_key, :string # KEY

    def provider_class
      ActiveMerchant::Billing::PayuLatamGateway
    end

    def auto_capture?
      true
    end
  end
end
