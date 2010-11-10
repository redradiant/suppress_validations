require 'active_support/concern'

module SuppressValidations
  extend ActiveSupport::Concern

  included do
    attr_accessor :validations_disabled
    after_initialize :"enable_validations!"
    alias :without_validations :suppress_validations
  end

  module InstanceMethods

    def valid?
      if self.validations_disabled?
        true
      else
        super
      end
    end

    def disable_validations!
      @validations_disabled = true
    end
    
    def enable_validations!
      @validations_disabled = false
    end

    def validations_disabled?
      @validations_disabled ||= false
    end

    def suppress_validations(&block)
      disable_validations!
      ret = self.instance_eval(&block) if block_given?
      enable_validations!
      ret
    end

    protected
      def run_validations!
        self.validations_disabled? ? true : super
      end

  end
  
end