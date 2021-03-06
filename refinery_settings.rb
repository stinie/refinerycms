[{:name => "site_name", :value => "Company Name"},
  {:name => "new_page_parts", :value => false},
  {:name => "activity_show_limit", :value => 25},
  {:name => "preferred_image_view", :value => :grid},
  {:name => "analytics_page_code", :value => "UA-xxxxxx-x"},
  {:name => "image_thumbnails", :value => {
    :dialog_thumb => 'c106x106',
    :grid => 'c135x135',
    :thumb => '50x50',
    :medium => '225x255',
    :side_body => '300x500',
    :preview => 'c96x96'
    }
  }].each do |setting|
  RefinerySetting[setting[:name].to_sym] = setting[:value]
  RefinerySetting.find_by_name(setting[:name].to_s).update_attributes({:destroyable => false})
end
