
class ActiveRecord::Base  
  attr_reader :reflection
  alias old_respond_to? respond_to?

  def self.has_config(association_ref)
    # Subst the module simbol to dash and if this is string
    if association_ref.kind_of?(String)
      class_name = association_ref
      association_ref = association_ref.to_s.gsub(/::/, '_').downcase.to_sym
    else
      class_name = association_ref.to_s.classify
    end
    association_equal = (association_ref.to_s+"=").to_sym
    association_ref_id = (association_ref.to_s+"_ref").to_sym
    association_ref_id_equal = (association_ref_id.to_s+"=").to_sym
    
    attr_accessible association_ref, (association_ref.to_s+"_ref").to_sym
    
    
    define_method association_ref do |*args, &blk|
      return nil unless send(association_ref_id)
      return @association if @association
      eval "#{class_name}.#{send(association_ref_id).downcase}"
    end
    
    define_method association_equal do |meth, *args, &blk|
      send(association_ref_id_equal, meth.send(:code))
      @association = meth
    end
  end
end
