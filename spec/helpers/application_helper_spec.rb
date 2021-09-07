require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '#toast_class_for' do
    it { expect(helper.toast_class_for('success')).to eq('success') }
    it { expect(helper.toast_class_for('error')).to eq('error') }
    it { expect(helper.toast_class_for('alert')).to eq('warning') }
    it { expect(helper.toast_class_for('notice')).to eq('info') }
  end

  describe '#custom_flash_messages' do
    context 'when flash message is present' do
      before { controller.flash[:success] = 'Success!' }
      message = <<~EOF
        $('body').toast({
          position: 'top center',
          class: "success",
          message: "Success!",
          displayTime: 5000
        });
        EOF
        
      it { expect(helper.custom_flash_messages).to eq("<script>#{message}</script>")}
      it { expect(flash.to_h).not_to have_key(:success) }
    end

    context 'when flash message is not present' do
      it { expect(helper.custom_flash_messages).to be_blank }
    end
  end
end