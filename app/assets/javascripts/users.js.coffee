# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/



current_card = ''
last_card = ''

$.open_user_card = (id) ->
	current_card = id
	cls = $(id + ' .user-card').attr('class')

	if last_card == id && cls == 'user-card user-card-open'
		$(id + ' .user-card').hide('fast')
		$(id + ' .user-card').attr({'class':'user-card user-card-closed'})
	else
		$(last_card + ' .user-card').hide('fast')
		$(last_card + ' .user-card').attr({'class':'user-card user-card-closed'})

		$('.user-card-open').hide('fast')
		$('.user-card-open').attr({'class':'user-card user-card-closed'})

		$(id + ' .user-card').show('fast')
		$(id + ' .user-card').attr({'class':'user-card user-card-open'})

	last_card = current_card

#	#alert('id: ' + id + '\r\nlast_card: ' + last_card + '\r\nclass: ' + cls)


#current_card = ''
#last_card = ''

#$.open_user_card = (id) ->
#	current_card = id
	#cls = $(id + ' .user-card').attr('class')


	#$('.user-card-open').attr({'class':'user-card user-card-open-previous'})
	#$(id + ' .user-card').attr({'class':'user-card user-card-open-current'})

#	if last_card == id #&& cls == 'user-card user-card-open-current'
#		$(id + ' .user-card').hide('fast')
#		$(id + ' .user-card').attr({'class':'user-card user-card-closed'})
#	else
#		$(id + ' .user-card').show('fast')
#		$(id + ' .user-card').attr({'class':'user-card user-card-open'})
#		setTimeout ->
#			$(last_card + ' .user-card').hide('fast')
#			$(last_card + ' .user-card').attr({'class':'user-card user-card-closed'})
#			last_card = current_card
			#alert('id: ' + id + '\r\nlast_card: ' + last_card)
			#$('.user-card-open-previous').hide('fast')
			#$('.user-card-open-previous').attr({'class':'user-card user-card-closed'})
#		,1000
#	#alert('id: ' + id + '\r\nlast_card: ' + last_card + '\r\nclass: ' + cls)