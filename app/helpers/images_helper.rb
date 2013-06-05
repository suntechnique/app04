module ImagesHelper
	def show_avatar(user)
		#image = Image.find(avatar_id)
		#image.path
		#image_tag(user_avatar_url, alt: user.name)
		image_tag image_path(user.image.path)
	rescue
		''
	end
end
