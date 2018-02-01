FactoryBot.define do
  factory :integration_order do
    export_state { ['uninitiated', 'queued', 'exported', 'error'].sample }
  end
end
