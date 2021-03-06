class GuestList < ActiveRecord::Base
	validates_presence_of :name,
						  :length => {:maximum => 30}
	validates_presence_of :email,
						  :length => {:maximum => 30},
 						  :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
 	validates_presence_of :adults, in: 0..10, allow_blank: false
 	validates_presence_of :children, in: 0..10, allow_blank: false
end
