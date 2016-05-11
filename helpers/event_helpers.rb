module EventHelpers
  def event_title_for(event)
    "#{event.title} — #{event.date.strftime('%d/%m/%Y')}"
  end

  def event_details_for(event)
    [talks_details_for(event), participants_count_for(event)].join('<br>')
  end

  private

  def talks_details_for(event)
    if event.data[:talks].present?
      "#{talks_count_for(event)} par #{speakers_for(event)}."
    else
      '1 apéro.'
    end
  end

  def talks_count_for(event)
    pluralize(event.data[:talks].size, 'présentation')
  end

  def speakers_for(event)
    event.data[:talks].map(&:speaker).to_sentence(two_words_connector: ' et ', last_word_connector: ', et ')
  end

  def participants_count_for(event)
    "#{event.data[:participants_count]} participants."
  end
end
