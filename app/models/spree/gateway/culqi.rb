module Spree
  class Gateway::CulqiGateway < Gateway
    preference :merchant_id, :string # ID
    preference :terminal_id, :string # ID
    preference :secret_key, :string # KEY

    def provider_class
      ActiveMerchant::Billing::CulqiGateway
    end

    def auto_capture?
      true
    end
  end
end
